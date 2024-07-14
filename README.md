# Newslatter
Este repositório contém o código para um serviço de newsletter, que inclui um banco de dados PostgreSQL e dois componentes principais da aplicação: myapp e mygateway.

Estrutura do Docker Compose
mydb: Serviço de banco de dados PostgreSQL.

Imagem: postgres:latest
Variáveis de ambiente: POSTGRES_USER, POSTGRES_PASSWORD, POSTGRES_DB
Volume: postgres_data para persistência dos dados
Rede: internal_network
myapp: Aplicação principal da newsletter.

Contexto de build: ./app
Porta: 1000:1000
Dependências: mydb
Variáveis de ambiente: DB_HOST, DB_PORT, DB_USER, DB_PASSWORD, DB_NAME
Rede: internal_network
mygateway: Gateway para a aplicação da newsletter.

Contexto de build: ./gateway
Porta: 2000:2000
Dependências: mydb
Variáveis de ambiente: DB_HOST, DB_PORT, DB_USER, DB_PASSWORD, DB_NAME
Rede: internal_network
Redes
internal_network: Rede interna para comunicação entre os serviços.
Volumes
postgres_data: Volume para armazenamento persistente dos dados do banco de dados PostgreSQL.
Instruções
Clone este repositório.
Certifique-se de ter o Docker e Docker Compose instalados.
Execute docker-compose up para iniciar os serviços.
Este setup permite a execução de uma aplicação de newsletter com um banco de dados PostgreSQL, e pode ser expandido conforme necessário.
