from datetime import datetime
from airflow.models import DAG, Variable
from airflow.operators.bash_operator import BashOperator

default_args = {
    'owner': 'Remediate',
    'start_date': datetime(2021, 8, 13),
    'depends_on_past': False,
}

with DAG(
        dag_id='SampleTest',
        default_args=default_args,
        schedule_interval=None,
        tags=['Sample']) as dag:

    Current_Date_Time = BashOperator(
        task_id = 'Current_Date_Time',
        bash_command = 'date',
        do_xcom_push = True
    )

    Current_Date_Time
    