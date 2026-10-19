
# Bitácora de actividades

## 1. Información general

- **Proyecto:** [CONSULTAS SQL]
- **Responsable:** [Castellanos, Ian. y Rodríguez, Ricardo.]
- **Fecha de inicio:** [16/10/2026]
- **Objetivo general:** [Generar un modelo que realice consultas SQL a partir de un Prompt]

---

## 2. Registro de actividades

### Actividad 1: [Contenedor]

**Fecha de creación:** 16/10/2026

#### Objetivo
Crear los archivos que permitirán asegurar un comportamiento homgéneo en la ejecución del proyecto.

#### Actividades a realizar
1. Creación de un Dockerfile 
2. Creación de compose.yml
3. Creación de requeriments.txt

#### Herramientas utilizadas
- Docker

#### Procedimiento
Con ayuda de inteligencia artificial, se creó un contenedor e imagen para cumplir con los requerimientos del proyecto.

#### Observaciones
Estos no son definitivos, pueden existir cambios según cambien los requerimientos.

#### Próximos pasos
- Datos para entrenamiento del modelo
- Ejecutable que cargue el modelo
- Crear la estructura del proyecto

---

### Actividad 2: [Arquitectura]

**Fecha de creación:** 16/10/2026

#### Objetivo
Crear la arquitectura del proyecto.

#### Actividades a realizar
1. Se crearon las carpetas en las cuales se subirán ciertos archivos.

#### Herramientas utilizadas
- Carpetas

#### Procedimiento
Generar las carpetas según la estructura más conveniente para el proyecto.

---

### Actividad 3: [Datos]

**Fecha de creación:** 16/10/2026

#### Objetivo
- Conseguir los datos que ayudarán a entrenar el modelo.

#### Actividades a realizar
1. Solicitud de datos a ChatGPT.
2. Descarga de datos en multi-spider.
3. Unión de datos de distintas fuentes.
4. Crear las bases de datos.

#### Herramientas utilizadas
- ChatGPT
- JupyterNotebook
- Archivos .sql
- Archivos .csv

#### Procedimiento
Con ayuda de inteligencia artificial, se creó un conjunto con 500 prompts y sus consultas SQL. Además se generaron 10 distintos esquemas. Después se crean las bases de datos a partir de los esquemas.

---

### Actividad 4: [Carga Modelo]

**Fecha de creación:** 16/10/2026

#### Objetivo
- Crear un ejecutable que cargue el modelo original.

#### Actividades a realizar
1. Hacer un ejecutable con la carga del modelo.
2. Incorporar el Adapter para LoRA.

#### Herramientas utilizadas
- JupyterNotebook
- ChatGPT

#### Procedimiento
Con ayuda de inteligencia artificial, se creó un ejecutable que permite cargar el modelo original con un Adapter para LoRA.

---

### Actividad 5: [Prueba de datos]

**Fecha de creación:** 19/10/2026

#### Objetivo
- Crear un cuaderno que corrobore que los datos funcionan con MySQL 8.4.10.

#### Actividades a realizar
1. Crear el cuaderno con la funciones corroboradoras.
2. Filtrar los datos que cumplen con el requerimiento.

#### Herramientas utilizadas
- JupyterNotebook
- ChatGPT
- Docker
- MySQL 8.4.10

#### Procedimiento
Con ayuda de inteligencia artificial, se creará un cuaderno que permita corroborar que una consulta SQL puede ejecutarse en MySQL 8.4.10 y filtrar los datos que cumplan.

---

### Actividad 6: [Entrenamiento modelo]

**Fecha de creación:** 19/10/2026

#### Objetivo
- Crear un cuaderno que corrobore que los datos funcionan con MySQL 8.4.10.

#### Actividades a realizar
1. Crear el cuaderno que reciba el modelo mediante el ejecutable de carga_modelo.py
2. Cargar los datos válidos para entrenar.
3. Separar el conjunto de datos en entrenamiento y validación.
4. Entrenar el Adapter de LoRA con los nuevos datos.
5. Almacenar la nueva parte del modelo.

#### Herramientas utilizadas
- JupyterNotebook
- ChatGPT
- pytorch

#### Procedimiento
Usando pytorch, su documentación e inteligencia artificial, se realizará el entreno de la nueva parte del modelo.

---


## 3. Resumen de avances

| Fecha | Responsable | Actividad | Estado | Comentario |
|-------|-------------|-----------|--------|------------|
| 16/10/2026 | Ian | Actividad 1 | [Preliminar] | Estos no son definitivos, pueden existir cambios según cambien los requerimientos. |
| 16/10/2026 | Ricardo | Actividad 2 | [Preliminar] | Estos no son definitivos, pueden existir cambios según cambien los requerimientos. |
| 16/10/2026 | Ricardo | Actividad 3 | [Avance] | Se ha descargado el conjunto de datos proporcionado por el LLM |
| 16/10/2026 | Ricardo | Actividad 4 | [Preliminar] | El ejecutable está listo, pero no se ha probado |
| 19/10/2026 | Ricardo | Actividad 3 | [Finalizada] | Se han cargado los datos de las fuentes y se han unido |
| 19/10/2026 | Ian | Actividad 5 | [No iniciada] | No se ha iniciado. |
| 19/10/2026 | Ricardo | Actividad 6 | [No iniciada] | No se ha iniciado. |

---

## 4. Conclusiones



## 5. Referencias y recursos
- [Repositorio del proyecto](https://github.com/ricrod01/PROYECTO_3_DL.git)
