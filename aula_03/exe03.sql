CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

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
    marca VARCHAR(100),
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Cosmeticos','Beleza'),
('Medicamentos','Remedios'),
('Higiene','Limpeza pessoal'),
('Vitaminas','Suplementos'),
('Infantil','Produtos infantis');

INSERT INTO tb_produtos (nome, preco, estoque, marca, categoria_id) VALUES
('Creme Dental',10.00,50,'Colgate',3),
('Shampoo',25.00,30,'Elseve',1),
('Vitamina C',55.00,40,'NeoQuimica',4),
('Paracetamol',15.00,100,'EMS',2),
('Sabonete',5.00,80,'Lux',3),
('Protetor Solar',70.00,20,'Nivea',1),
('Pomada',18.00,60,'Medley',2),
('Fralda',65.00,35,'Pampers',5);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.nome, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.nome, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Cosmeticos';