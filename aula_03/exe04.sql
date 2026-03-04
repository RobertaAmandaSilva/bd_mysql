CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100),
    preco DECIMAL(6,2),
    estoque INT,
    peso_kg DECIMAL(5,2),
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Frutas','Naturais'),
('Verduras','Folhas'),
('Legumes','Raizes'),
('Organicos','Sem agrotoxico'),
('Importados','De fora');

INSERT INTO tb_produtos (nome, preco, estoque, peso_kg, categoria_id) VALUES
('Banana',6.00,100,1.00,1),
('Cenoura',8.00,80,1.00,3),
('Brocolis',12.00,50,1.00,2),
('Maca',15.00,70,1.00,1),
('Morango',20.00,40,1.00,1),
('Couve',5.00,60,1.00,2),
('Abacate',18.00,30,1.00,1),
('Cebola',7.00,90,1.00,3);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.nome, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.nome, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Frutas';