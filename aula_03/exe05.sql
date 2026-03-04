CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100),
    preco DECIMAL(8,2),
    estoque INT,
    marca VARCHAR(100),
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Hidraulica','Tubos e conexoes'),
('Eletrica','Fios e cabos'),
('Ferramentas','Uso manual'),
('Tintas','Pintura'),
('Construcao','Cimento e areia');

INSERT INTO tb_produtos (nome, preco, estoque, marca, categoria_id) VALUES
('Cimento',120.00,50,'Votoran',5),
('Tubo PVC',80.00,40,'Tigre',1),
('Fio 2mm',150.00,30,'Sil',2),
('Martelo',60.00,25,'Tramontina',3),
('Tinta Branca',200.00,20,'Suvinil',4),
('Chuveiro',110.00,15,'Lorenzetti',1),
('Serra',90.00,18,'Bosch',3),
('Conector',75.00,60,'Tigre',1);

SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.nome, p.preco, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.nome, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Hidraulica';