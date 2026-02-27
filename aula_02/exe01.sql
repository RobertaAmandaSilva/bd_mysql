CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100),
    salario DECIMAL(10,2),
    data_admissao DATE,
    PRIMARY KEY (id)
);

INSERT INTO colaboradores (nome, cargo, salario, data_admissao) VALUES
('João Silva', 'Analista', 2500.00, '2022-05-10'),
('Maria Souza', 'Assistente', 1800.00, '2023-01-15'),
('Carlos Lima', 'Gerente', 5000.00, '2021-03-20'),
('Ana Costa', 'Auxiliar', 1500.00, '2024-02-01'),
('Pedro Santos', 'Desenvolvedor', 3000.00, '2022-09-12');

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores
SET salario = 2200.00
WHERE id = 2;
SELECT * FROM colaboradores;