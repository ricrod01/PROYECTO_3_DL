import os
from pathlib import Path
import pandas as pd
import mysql.connector
from dotenv import load_dotenv

# Ruta de contraseña
contrasenia = '../.env'
ruta_env = Path(__file__).resolve().parent.parent / contrasenia
load_dotenv(ruta_env, override=True)


def ejecutar_consulta(nombre_db, consulta_sql, ordenar = True):

    conexion = None
    cursor = None

    try:
        # Conexión y cursor
        conexion = mysql.connector.connect(host=os.getenv('MYSQL_HOST', 'mysql'),
                                           port=int(os.getenv('MYSQL_PORT', '3306')),
                                           user=os.getenv('MYSQL_USER', 'root'),
                                           password=os.getenv('MYSQL_ROOT_PASSWORD'),
                                           database=nombre_db)
        cursor = conexion.cursor()

        # Ejecuta la consulta SQL
        cursor.execute(consulta_sql)

        # Obtener los nombres de las columnas
        columnas = [col[0] for col in cursor.description]

        # DataFrame de la consulta
        df = pd.DataFrame(cursor.fetchall(), columns=columnas)
        df.columns = df.columns.str.upper()

        # Se Ordenan las columnas alfabéticamente
        df = df.reindex(sorted(df.columns), axis=1)

        return df

    # Se cierra la conexión.
    finally:
        if cursor is not None:
            cursor.close()
        if conexion is not None and conexion.is_connected():
            conexion.close()