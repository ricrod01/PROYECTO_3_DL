# Proyecto 3 — Text-to-SQL con LoRA

**Universidad del Valle de Guatemala · Deep Learning 2026**

Este proyecto busca generar consultas SQL a partir de preguntas escritas en español. El sistema recibe la estructura de una base de datos y una pregunta, y utiliza un modelo de lenguaje de la familia Qwen para producir una consulta compatible con MySQL 8.4.10.

El trabajo se centra en ajustar el modelo mediante LoRA y comprobar si ese ajuste realmente mejora sus respuestas. Para ello, se compara el modelo original con el modelo ajustado y se evalúan las consultas por el resultado que devuelven al ejecutarse, no por qué tanto se parecen al SQL de referencia.

## Cómo funciona

El punto de entrada es la función `generar_sql`, definida en `solucion.py`:

```python
def generar_sql(esquema: str, pregunta: str, ejecutar=None) -> str:
    ...
```

- `esquema`: sentencias `CREATE TABLE` obtenidas de MySQL, incluidos los comentarios de las tablas y columnas.
- `pregunta`: solicitud en español que indica qué información se necesita.
- `ejecutar`: función opcional que permite probar una consulta en la base de datos y consultar su resultado o el error recibido.

La función devuelve una única consulta de lectura (`SELECT` o `WITH ... SELECT`). No utiliza servicios externos para generar SQL. Cuando el evaluador proporciona `ejecutar`, pueden hacerse hasta tres llamadas por pregunta. La generación debe ser determinista y respetar los límites de 30 segundos por pregunta y 5 minutos para cargar el modelo.

## Archivos del proyecto

Los archivos principales que contempla la entrega son:

| Archivo o carpeta | Contenido |
| --- | --- |
| `solucion.py` | Carga del modelo y función `generar_sql`. |
| `config.json` | Identificador del modelo base, ruta del adapter, semilla y opción para activarlo. |
| `adapter/` | Pesos del ajuste LoRA o QLoRA. |
| `requirements.txt` | Dependencias de Python. |
| `datos/` | Datos de entrenamiento, validación y registros de ejemplos descartados. |
| `notebooks/` | Preparación de datos, entrenamiento y pruebas. |
| `resultados/` | Resultados de validación y análisis de errores. |
| `Dockerfile` y `compose.yml` | Configuración del entorno de trabajo con Docker. |
| `BITACORA.md` y `CONTRIBUCIONES.md` | Seguimiento de actividades y aportes de los integrantes. |
| `historial_git.txt` y `presentacion.pdf` | Historial de trabajo y resumen de la entrega. |

## Requisitos

- Python y las bibliotecas indicadas en `requirements.txt`.
- Acceso a una GPU compatible para cargar y evaluar el modelo; el entorno de evaluación previsto es Google Colab con una NVIDIA T4.
- MySQL 8.4.10 para ejecutar las consultas y realizar las pruebas de exactitud.
- Docker y Docker Compose, con acceso a GPU configurado, si se utiliza el entorno de contenedores.

### Preparar el entorno

Primero se clona el repositorio (se necesitan permisos de acceso si sigue siendo privado):

```bash
git clone https://github.com/ricrod01/PROYECTO_3_DL.git
cd PROYECTO_3_DL
```

Para trabajar con el entorno Docker del proyecto:

```bash
docker compose up -d --build
docker compose exec ml bash
```

El servicio `ml` proporciona el entorno de Python y monta el código del proyecto dentro del contenedor. La base MySQL debe estar disponible para las pruebas que requieran ejecutar consultas; generar SQL sin usar el argumento `ejecutar` no requiere una conexión activa a la base.

También se puede preparar un entorno de Python directamente, por ejemplo en Google Colab, e instalar las dependencias:

```bash
pip install -r requirements.txt
```

Antes de ejecutar el modelo debe comprobarse que las rutas indicadas en `config.json` correspondan a los archivos disponibles.

### Generar una consulta

Desde el directorio donde se encuentra `solucion.py`, se puede probar la interfaz con un ejemplo sencillo:

```python
from solucion import generar_sql

esquema = """
CREATE TABLE productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    precio DECIMAL(10, 2)
);
"""

pregunta = "¿Cuántos productos hay registrados?"
consulta = generar_sql(esquema, pregunta)
print(consulta)
```

El ejemplo solo ilustra el uso de la función. En la evaluación, los esquemas se proporcionan como los devuelve `SHOW CREATE TABLE` de MySQL.

### Comparar el modelo base con el modelo ajustado

El archivo `config.json` permite elegir qué versión se utiliza sin cambiar el prompt:

- `"usar_adapter": false`: carga únicamente el modelo base.
- `"usar_adapter": true`: carga el modelo base junto con el adapter indicado en `"adapter"`.

Los campos `"modelo_base"` y `"semilla"` determinan, respectivamente, qué modelo se carga y la semilla configurada para la ejecución.

## Entrenamiento y evaluación

El trabajo contempla un conjunto de entrenamiento de al menos 2,000 pares de pregunta y consulta SQL, revisados para que las consultas se ejecuten sin errores en MySQL 8.4.10. La validación se realiza con esquemas distintos de los utilizados para entrenar, de modo que las pruebas no dependan de haber visto antes las mismas bases de datos.

Para evaluar el ajuste se consideran un baseline sin adapter, dos configuraciones de LoRA que difieren en un solo factor y un experimento adicional de inferencia. También se analizan los errores por tipo: sintaxis, referencias a tablas o columnas inexistentes, uniones, agregaciones, filtros y diferencias en el resultado.

La métrica principal es la **exactitud por ejecución ponderada (EX)**. Cada consulta se compara con una consulta de referencia según las filas que devuelve. Las preguntas fáciles tienen peso 1; las intermedias, peso 2; y las difíciles, peso 3. El orden de las filas solo se considera cuando la pregunta lo pide y los valores numéricos se comparan redondeados a dos decimales.

Los resultados detallados de las pruebas se documentan en los archivos de validación y en la presentación del proyecto.

## Licencias y fuentes externas

El repositorio corresponde a un trabajo académico. Los modelos preentrenados, las bibliotecas y los conjuntos de datos externos conservan las licencias y condiciones de uso de sus respectivos autores. Antes de distribuir pesos o datos derivados, deben revisarse las condiciones de las fuentes utilizadas.

Las condiciones del modelo base pueden consultarse en su ficha correspondiente de [Hugging Face](https://huggingface.co/Qwen). Si se incorporaron conjuntos públicos como Spider o BIRD, su atribución y sus restricciones de uso deben respetarse de acuerdo con la fuente original.

El código del proyecto no debe considerarse publicado bajo una licencia de código abierto a menos que se incluya un archivo `LICENSE` que lo indique expresamente.

## Uso de herramientas de inteligencia artificial

Durante el desarrollo se han utilizado herramientas de IA como apoyo para resolver dudas técnicas, revisar fragmentos de código y preparar documentación. Estas herramientas son un apoyo al trabajo del equipo, no sustituyen las pruebas del sistema ni la revisión de las consultas generadas.

En particular, los ejemplos destinados al entrenamiento deben comprobarse mediante su ejecución en MySQL antes de incorporarlos al conjunto de datos. La evaluación del modelo se realiza sobre los resultados de las consultas, independientemente de que el SQL haya sido escrito o sugerido con ayuda de IA.
