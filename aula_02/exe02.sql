CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT,
    PRIMARY KEY (id)
);

INSERT INTO produtos (nome, categoria, preco, estoque) VALUES
('Notebook', 'Eletrônicos', 3500.00, 10),
('Mouse', 'Eletrônicos', 80.00, 50),
('Teclado', 'Eletrônicos', 150.00, 30),
('Celular', 'Eletrônicos', 2000.00, 20),
('Cadeira Gamer', 'Móveis', 900.00, 5),
('Mesa', 'Móveis', 400.00, 8),
('Monitor', 'Eletrônicos', 1200.00, 15),
('Headset', 'Eletrônicos', 300.00, 25);

SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos
SET preco = 1000.00
WHERE id = 5;