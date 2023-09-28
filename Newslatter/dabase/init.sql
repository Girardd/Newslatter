CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255),
  email VARCHAR(255)
);


-- Insira alguns dados de exemplo (opcional)
INSERT INTO users (nome, email) VALUES
  ('Exemplo 1', 'exemplo1@email.com'),
  ('Exemplo 2', 'exemplo2@email.com');
