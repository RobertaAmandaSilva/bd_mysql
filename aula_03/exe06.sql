CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_cursos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100),
    carga_horaria INT,
    preco DECIMAL(8,2),
    nivel VARCHAR(50),
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Java','Programacao Java'),
('Front-end','HTML CSS JS'),
('Back-end','Servidor'),
('Banco de Dados','MySQL'),
('DevOps','Infraestrutura');

INSERT INTO tb_cursos (nome, carga_horaria, preco, nivel, categoria_id) VALUES
('Java Basico',80,600.00,'Iniciante',1),
('Java Avancado',120,900.00,'Avancado',1),
('HTML e CSS',60,550.00,'Iniciante',2),
('JavaScript Completo',100,750.00,'Intermediario',2),
('MySQL do Zero',70,650.00,'Iniciante',4),
('Spring Boot',110,1000.00,'Avancado',3),
('Docker',90,800.00,'Intermediario',5),
('Logica de Programacao',50,500.00,'Iniciante',1);

SELECT * FROM tb_cursos WHERE preco > 500.00;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT c.nome, c.preco, cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.categoria_id = cat.id;

SELECT c.nome, cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.categoria_id = cat.id
WHERE cat.nome = 'Java';