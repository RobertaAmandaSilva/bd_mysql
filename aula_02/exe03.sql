CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    turma VARCHAR(50),
    nota DECIMAL(3,1),
    PRIMARY KEY (id)
);

INSERT INTO estudantes (nome, idade, turma, nota) VALUES
('Lucas', 15, '1A', 8.5),
('Mariana', 16, '2B', 6.5),
('Rafael', 15, '1A', 9.0),
('Beatriz', 17, '3C', 7.5),
('Fernanda', 16, '2B', 5.5),
('Gabriel', 15, '1A', 8.0),
('Juliana', 17, '3C', 6.0),
('Mateus', 16, '2B', 7.8);

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

UPDATE estudantes
SET nota = 7.2
WHERE id = 2;