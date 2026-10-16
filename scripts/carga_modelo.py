import torch
from transformers import AutoModelForCausalLM, AutoTokenizer, BitsAndBytesConfig
from peft import LoraConfig, get_peft_model, prepare_model_for_kbit_training

modelo_id = 'Qwen/Qwen2.5-Coder-1.5B-Instruct'

# Cuantización a 4 bits.
config_cuantizacion = BitsAndBytesConfig(load_in_8bit=True, llm_int8_threshold=6.0)

# Tokenizador.
tokenizer = AutoTokenizer.from_pretrained(modelo_id)

# Modelo base cuantizado.
modelo = AutoModelForCausalLM.from_pretrained(modelo_id, quantization_config=config_cuantizacion, device_map='auto', torch_dtype=torch.float16)
modelo = prepare_model_for_kbit_training(modelo)

# Configuración LoRA.
config_lora = LoraConfig(r=16, lora_alpha=32, lora_dropout=0.05, bias="none", task_type="CAUSAL_LM",
                         target_modules=['q_proj', 'k_proj', 'v_proj', 'o_proj'])

# Incorporar adapter LoRA.
modelo = get_peft_model(modelo, config_lora)

# Mostrar parámetros entrenables.
modelo.print_trainable_parameters()