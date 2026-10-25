# Librerías
import json
import re
import torch
from pathlib import Path
from transformers import AutoTokenizer, AutoModelForCausalLM
from peft import PeftModel


# Raíz
ROOT = Path(__file__).resolve().parent

# Configueación
with open(ROOT / 'config.json', 'r', encoding='utf-8') as archivo:
    config = json.load(archivo)

# Semilla de aleatoriedad.
torch.manual_seed(config['semilla'])

# Configuración de dispositivo
dispositivo = 'cuda' if torch.cuda.is_available() else 'cpu'
dtype = torch.float16 if dispositivo == "cuda" else torch.float32

# Cargar del tokenizer
tokenizer = AutoTokenizer.from_pretrained(config['modelo_base'])

# Cargar modelo base.
modelo = AutoModelForCausalLM.from_pretrained(config['modelo_base'], torch_dtype=dtype).to(dispositivo)

# Se incorpora el Adapter si está en la configuración
if config['usar_adapter']:
    modelo = PeftModel.from_pretrained(modelo, str(ROOT / config['adapter']),is_trainable=False)

# Modo de evaluación
modelo.eval()

# Generación de consulta SQL
def generar_sql(esquema: str, pregunta: str, max_tokens=1050, ejecutar=None):

    # Construir los mensajes
    mensajes = [{'role': 'system',
                 'content': ('Eres un experto en MySQL 8.4.10. '
                             'Genera únicamente una consulta SELECT válida. '
                             'No incluyas explicaciones ni Markdown.')
                },
                {'role': 'user',
                 'content': f'Esquema:\n{esquema}\n\nPregunta:\n{pregunta}'
                }]

    # Tokeniza la entrada
    entradas = tokenizer.apply_chat_template(mensajes, tokenize=True, add_generation_prompt=True,
                                             return_dict=True, return_tensors='pt').to(modelo.device)

    # Generar SQL.
    with torch.inference_mode():
        salida = modelo.generate(**entradas, max_new_tokens=max_tokens, do_sample=False,
                                 num_beams=1, pad_token_id=tokenizer.eos_token_id)

    # Decodificar únicamente los tokens generados.
    tokens_generados = salida[0, entradas['input_ids'].shape[1]:]

    # Predicción de sql
    sql_predicho = tokenizer.decode(tokens_generados, skip_special_tokens=True).strip()

    # Limpieza de la predicción
    sql_predicho = re.sub(r'```(?:sql)?', '', sql_predicho, flags=re.IGNORECASE)
    sql_predicho = sql_predicho.replace('```', '').strip()

    return sql_predicho