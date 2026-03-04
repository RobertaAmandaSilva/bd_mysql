CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    poder_ataque INT,
    poder_defesa INT,
    nivel INT,
    classe_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao) VALUES
('Arqueiro', 'Ataque a distancia'),
('Guerreiro', 'Combate corpo a corpo'),
('Mago', 'Usa magia'),
('Assassino', 'Ataque furtivo'),
('Paladino', 'Defensor sagrado');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
('Carlos', 2500, 1500, 10, 1),
('Cecilia', 1800, 1200, 8, 2),
('Bruno', 3000, 2000, 15, 3),
('Camila', 2200, 1100, 12, 4),
('Rafael', 1900, 900, 7, 1),
('Claudio', 2700, 1700, 13, 2),
('Marcos', 1500, 1300, 6, 5),
('Cristina', 2100, 1600, 9, 3);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.nome, p.poder_ataque, c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

SELECT p.nome, c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';