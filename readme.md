# Paxpe App

## Descrição
O **Paxpe App** é um projeto aplicado da xp educação, o projeto tem como objetivo gerar uma série temporal de dados históricos da api do yahoo finance para atender usuários por meio da integração de serviços entre o postgres e o powerbi, contendo visões para usuários de negócio de um cenário ficticio onde uma casa de investmentos precisa estudar o mercado dos estaodos unidos. 

dentro do sgbd são fornecidas análises de outras óticas pelas empresas presentes no mercado de capital americano bem como a alimentação do banco de dados por meio de upsert. uma operação de inserção e atualização de dados presentes. 

## Estrutura do Projeto
- `src/`: Contém os arquivos de código-fonte em Python.
- `cfg/`: Configurações usadas pelo aplicativo.
- `.vs/`: Diretório de arquivos do Visual Studio.
- `readme.md`: Este arquivo, que fornece uma visão geral do projeto.

## Tecnologias Utilizadas
- **Python**: Linguagem de programação principal.
- **Jupyter Notebook**: Usado para análise e manipulação de dados.

## Como Executar
1. Clone o repositório:
   ```bash
   git clone https://github.com/ibmendes/paxpe_app.git

2. instalar o docker e abrir 

3. inciar o build do projeto: docker-compose build / docker-compose up