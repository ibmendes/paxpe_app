# Use a imagem base do Apache Airflow
FROM apache/airflow:2.7.3-python3.8

# Instale o Java OpenJDK
USER root
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    apt-get clean

# Defina o diretório de trabalho
WORKDIR /opt/airflow

# Copie o arquivo de requisitos para dentro do container
COPY requirements.txt /requirements.txt

# Instale os pacotes Python como o usuário 'airflow'
USER airflow
RUN pip install --no-cache-dir -r /requirements.txt

# Defina o diretório de trabalho
WORKDIR /opt/airflow

# Adicione o entrypoint padrão do Airflow
ENTRYPOINT ["/entrypoint"]

# Use o comando padrão do Airflow
CMD ["webserver"]
