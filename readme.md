# Paxpe App

O projeto Paxpe App é um projeto aplicado voltado para conclusão do curso de engenharia e arquitetura de dados da XP Educação. é uma aplicação de processamento e análise de dados financeiros que utiliza Docker para orquestrar serviços como Apache Airflow, PostgreSQL, pgAdmin e Spark. Este README fornece um guia sobre como replicar o projeto, o que é criado pelo Docker e como acessar cada recurso.

## Visão Geral

O projeto é composto por:
- **Apache Airflow**: Orquestra workflows de ETL e executa notebooks e scripts Python.
- **PostgreSQL**: Banco de dados relacional para armazenamento de dados financeiros.
- **pgAdmin**: Interface gráfica para gerenciamento do PostgreSQL.
- **Apache Spark**: Ferramenta para processamento distribuído de grandes volumes de dados.

## Pré-requisitos

- [Docker](https://www.docker.com/get-started) e [Docker Compose](https://docs.docker.com/compose/install/)

## Clonando o Repositório

Clone o repositório para sua máquina local:

```bash
git clone https://github.com/ibmendes/paxpe_app.git
cd paxpe_app


O Docker Compose configura e inicia vários serviços. Aqui estão as instruções para acessar cada recurso:

### 1. Apache Airflow

- **Descrição**: Plataforma para criar, agendar e monitorar workflows de dados.
- **URL de Acesso**: [http://localhost:8080](http://localhost:8080)

### 2. pgAdmin

- **Descrição**: Ferramenta para administração e gerenciamento de bancos de dados PostgreSQL.
- **URL de Acesso**: [http://localhost:8081](http://localhost:8081)
- **Credenciais**:
- **Configurações do Servidor PostgreSQL no pgAdmin**:
  - **Host**: `postgres`
  - **Porta**: `5432`

### 3. PostgreSQL

- **Descrição**: Sistema de gerenciamento de banco de dados relacional.
- **Host**: `localhost`
- **Porta**: `5432`
  - **Banco de Dados**: `paxpedb`

### 4. Apache Spark

- **Descrição**: Plataforma para processamento de dados distribuídos.
- **URL de Acesso**: [http://localhost:4040](http://localhost:4040)

## Comandos Úteis
- **Iniciar Serviços**:
  ```bash
  docker-compose up --build
docker-compose up -d 
   docker compose down #derruba o projeto