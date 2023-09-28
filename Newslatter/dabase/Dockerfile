# Use a imagem oficial do Postgres como base
FROM postgres

# Defina as variáveis de ambiente para criar o banco de dados e usuário
ENV POSTGRES_USER=user
ENV POSTGRES_PASSWORD=password
ENV POSTGRES_DB=mydb

# Copie o arquivo init.sql para um diretório temporário dentro do contêiner
COPY init.sql /tmp/init.sql

# Execute o init.sql durante a construção da imagem
RUN cat /tmp/init.sql | psql -U "$POSTGRES_USER" -d "$POSTGRES_DB"

# Limpe o arquivo temporário
RUN rm /tmp/init.sql
