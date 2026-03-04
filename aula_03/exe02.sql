CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100),
    tamanho VARCHAR(50),
    preco DECIMAL(6,2),
    borda_recheada BOOLEAN,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Salgada','Tradicional'),
('Doce','Sobremesa'),
('Vegetariana','Sem carne'),
('Especial','Premium'),
('Promocional','Desconto');

INSERT INTO tb_pizzas (nome, tamanho, preco, borda_recheada, categoria_id) VALUES
('Mussarela','Grande',50.00,true,1),
('Calabresa','Grande',55.00,false,1),
('Chocolate','Media',60.00,true,2),
('Morango','Grande',65.00,false,2),
('Marguerita','Media',48.00,false,3),
('Frango Catupiry','Grande',70.00,true,4),
('Moda da Casa','Grande',90.00,true,4),
('Milho','Media',46.00,false,3);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT p.nome, p.preco, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.nome, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Doce';