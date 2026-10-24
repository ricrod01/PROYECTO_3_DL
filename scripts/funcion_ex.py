import pandas as pd
from scripts.consulta_sql import ejecutar_consulta
import torch
from collections import Counter
from decimal import Decimal, ROUND_HALF_UP
from numbers import Number
import pandas as pd


def comparar_resultados(df_real, df_predicho, orden_importa=False):

    # Verificar que tengan la misma cantidad de filas.
    if len(df_real) != len(df_predicho):
        return False

    # La predicción debe contener al menos tantas
    # columnas como la consulta de referencia.
    n_real = df_real.shape[1]
    n_pred = df_predicho.shape[1]

    if n_pred < n_real:
        return False

    # Normalizar valores.
    def normalizar(valor):

        if pd.isna(valor):
            return None

        if isinstance(valor, (Number, Decimal)):
            return Decimal(str(valor)).quantize(Decimal("0.01"), rounding=ROUND_HALF_UP)
        return valor

    # Convertir los DataFrames en listas de tuplas.
    filas_real = [tuple(normalizar(v) for v in fila) for fila in df_real.itertuples(index=False, name=None)]
    filas_pred = [tuple(normalizar(v) for v in fila) for fila in df_predicho.itertuples(index=False, name=None)]

    # Buscar columnas con el mismo contenido.
    candidatos = {}

    for i in range(n_real):

        valores_real = Counter(fila[i] for fila in filas_real)
        candidatos[i] = [j for j in range(n_pred) if Counter(fila[j] for fila in filas_pred) == valores_real]

        if not candidatos[i]:
            return False

    # Priorizar columnas con menos correspondencias.
    indices = sorted(range(n_real), key=lambda i: len(candidatos[i]))

    asignacion = {}
    utilizadas = set()

    # Buscar una correspondencia válida entre columnas.
    def buscar(posicion):

        if posicion == n_real:
            filas_ajustadas = [tuple(fila[asignacion[i]] for i in range(n_real)) for fila in filas_pred]

            if orden_importa:
                return filas_real == filas_ajustadas

            return Counter(filas_real) == Counter(filas_ajustadas)

        i = indices[posicion]

        for j in candidatos[i]:

            if j in utilizadas:
                continue

            asignacion[i] = j
            utilizadas.add(j)

            if buscar(posicion + 1):
                return True

            utilizadas.remove(j)
            del asignacion[i]

        return False

    return buscar(0)

def clasificar_error(error):

    codigo = getattr(error, "errno", None)

    if codigo in [1064, 1149]:
        return 'Sintaxis'

    elif codigo in [1054, 1146]:
        return 'Columna o tabla inexistente'

    elif codigo in [1055, 1111, 1140]:
        return 'Agregación'

    return 'Revisión manual'


def ex(modelo, tokenizer, datos, max_new_tokens = 1500, orden_importa=False, funcion_inferencia=None):

    numerador = 0
    denominador = 0
    resultados = []

    # Configurar el modelo en modo evaluación.
    modelo.eval()

    for indice, fila in datos.iterrows():

        # Extraer información.
        esquema = fila['esquema']
        prompt = fila['prompt']
        nombre_db = fila['id_esquema']
        ponderacion = fila['ponderacion']
        sql_real = fila['sql']

        # Acumular ponderación.
        denominador += ponderacion

        sql_predicho = None
        categoria = None
        mensaje_error = None
        etapa = "generacion"

        try:


            if funcion_inferencia is None:
                # Construir los mensajes con el esquema y la pregunta.
                mensajes = [{
                            'role': 'system',
                            'content': ('Eres un experto en MySQL 8.4.10. '
                                        'Genera únicamente una consulta SELECT válida. '
                                        'No incluyas explicaciones ni Markdown.')},
                            {
                            'role': 'user',
                            'content': f'Esquema:\n{esquema}\n\nPregunta:\n{prompt}'}]
                
                # Tokenizar la entrada.
                entradas = tokenizer.apply_chat_template(mensajes, tokenize=True, add_generation_prompt=True, return_tensors='pt').to(modelo.device)
                                
                
                # Generar la consulta SQL.
                with torch.inference_mode():
                    salida = modelo.generate(entradas, max_new_tokens=max_new_tokens, do_sample=False, num_beams=1, pad_token_id=tokenizer.eos_token_id)
                
                # Decodificar únicamente los tokens generados.
                tokens_generados = salida[0, entradas.shape[1]:]

                sql_predicho = tokenizer.decode(tokens_generados,skip_special_tokens=True).strip()
                
                # Eliminar posibles delimitadores Markdown.
                sql_predicho = sql_predicho.replace("```sql", "")
                sql_predicho = sql_predicho.replace("```", "").strip()
            else:
                sql_predicho = funcion_inferencia(modelo=modelo, tokenizer=tokenizer, esquema=esquema, pregunta=prompt, max_new_tokens=max_new_tokens)

            # Ejecutar consulta predicha.
            etapa = "consulta_predicha"
            df_predicho = ejecutar_consulta(nombre_db, sql_predicho)
            columnas_predicho = df_predicho.columns

            # Ejecutar consulta de referencia.
            etapa = "consulta_referencia"
            df_real = ejecutar_consulta(nombre_db, sql_real, columnas_predicho)

            # Comparar resultados.
            etapa = "comparacion"
            acierto = int(comparar_resultados(df_real, df_predicho, orden_importa=orden_importa))

            # Si se ejecutó, pero no coincide.
            if acierto == 0:
                categoria = "Resultado distinto"

        except Exception as error:
            # Si falla la consulta de referencia,
            # no debe contabilizarse como error del modelo.
            if etapa == "consulta_referencia":
                raise RuntimeError(
                    f"Error en SQL de referencia. Fila: {indice}"
                ) from error

            acierto = 0
            mensaje_error = str(error)
            categoria = clasificar_error(error)

        # Acumular puntuación ponderada.
        numerador += acierto * ponderacion

        resultados.append({"indice": indice,
                           "nombre_db": nombre_db,
                           "prompt": prompt,
                           "sql_real": sql_real,
                           "sql_predicho": sql_predicho,
                           "ponderacion": ponderacion,
                           "acierto": acierto,
                           "categoria": categoria,
                           "mensaje_error": mensaje_error
                        })

    # Exactitud ponderada.
    ex = numerador / denominador

    return ex, pd.DataFrame(resultados)