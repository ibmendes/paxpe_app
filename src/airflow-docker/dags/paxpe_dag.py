from airflow import DAG
from airflow.operators.python_operator import PythonOperator
from datetime import datetime, timedelta
from pyspark.sql import SparkSession
import os

# Caminho para o seu script Python na pasta utils
SCRIPT_PATH = os.path.join(os.path.dirname(__file__), 'utils', 'paxpe.py')

def run_script():
    # Inicializa o Spark
    spark = SparkSession.builder \
        .appName("PaxpeDAG") \
        .config("spark.master", "local") \
        .config("spark.sql.session.timeZone", "America/Sao_Paulo") \
        .getOrCreate()
    
    exec(open(SCRIPT_PATH).read())

default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'start_date': datetime(2024, 8, 26, 0, 0, 0),
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

dag = DAG(
    'paxpe_dag',
    default_args=default_args,
    description='A DAG to run the PAXPE script daily at midnight UTC-3',
    schedule_interval='0 3 * * *',  # 0h UTC-3 é 3h UTC
    catchup=False,
)

run_script_task = PythonOperator(
    task_id='run_paxpe_script',
    python_callable=run_script,
    dag=dag,
)

run_script_task
