import torch


def generar_sql_inferencia(modelo, tokenizer, esquema, pregunta, ejemplos, max_new_tokens = 256):

    # Mantener las instrucciones originales del modelo.
    mensajes = [{"role": "system",
                 "content": ("Eres un experto en MySQL 8.4.10. "
                             "Genera únicamente una consulta SELECT válida. "
                             "No incluyas explicaciones ni Markdown.")
                }]

    # Agregar ejemplos de entrenamiento.
    for ejemplo in ejemplos:

        mensajes.append({"role": "user",
                         "content": (f"Esquema:\n{ejemplo['esquema']}\n\n"
                                     f"Pregunta:\n{ejemplo['pregunta']}")
                        })

        mensajes.append({"role": "assistant", "content": ejemplo["sql"] })

    # Agregar la pregunta que deseamos predecir.
    mensajes.append({"role": "user", "content": f"Esquema:\n{esquema}\n\nPregunta:\n{pregunta}"})

    # Tokenizar.
    entradas = tokenizer.apply_chat_template(mensajes, tokenize=True, add_generation_prompt=True, return_dict=True,
                                             return_tensors="pt").to(modelo.device)

    # Generación determinista.
    modelo.eval()

    with torch.inference_mode():
        salida = modelo.generate(**entradas, max_new_tokens=max_new_tokens, do_sample=False,
                                 num_beams=1, pad_token_id=tokenizer.eos_token_id)

    # Obtener únicamente los tokens generados.
    tokens_generados = salida[0, entradas["input_ids"].shape[1]:]

    sql_predicho = tokenizer.decode(tokens_generados, skip_special_tokens=True).strip()

    # Eliminar Markdown.
    sql_predicho = sql_predicho.replace("```sql", "")
    sql_predicho = sql_predicho.replace("```", "").strip()

    return sql_predicho