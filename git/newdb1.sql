-- Active: 1694564491354@@127.0.0.1@3306
USE cadastro;
-- DEPRECATEDS --------------------
-- default character set utf8;
-- DEFAULT COLLATE utf8_general_ci;
-----------------------------------

CREATE TABLE pessoas (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
nascimento DATE,
sexo ENUM('M', 'F'),
peso DECIMAL(5,2),
altura DECIMAL(3,2),
nacionalidade VARCHAR(20) DEFAULT 'Brasil',
PRIMARY KEY (id)
) DEFAULT CHARSET = utf8;
DROP Table pessoas;
DESCRIBE pessoas;
DELETE FROM pessoas WHERE nome = 'Godofredo';
SELECT * FROM pessoas;
INSERT INTO pessoas (nome, nascimento, sexo, peso, altura, nacionalidade) VALUES ('Frida', '1985/06/15', 'F', '62.50', '1.75', 'Brasil');
INSERT INTO pessoas VALUES ('1', 'Godofredo', '1984/01/02', 'M', '78.50', '1.83', 'Brasil');
INSERT INTO pessoas VALUES (DEFAULT, 'Joaquina', '1937/05/09', 'F', '50.75', '1.62', DEFAULT);
INSERT INTO pessoas VALUES 
(DEFAULT, 'Ana', '1975/08/14', 'F', '64', '1.70', 'EUA'),
(DEFAULT, 'Pedro', '2000/07/15', 'M', '52.3', '1.45', DEFAULT),
(DEFAULT, 'Márcia', '1999/05/30', 'F', '70.9', '1.71', 'Portugal');

ALTER TABLE pessoas DROP COLUMN day;

SELECT
  *,
  CASE
    WHEN mes = 1 AND dia BETWEEN 21 AND 31 THEN 'Aquário'
        WHEN mes = 2 AND dia BETWEEN 1 AND 19 THEN 'Aquário'
    WHEN mes = 2 AND dia BETWEEN 20 AND 31 THEN 'Peixes'
        WHEN mes = 3 AND dia BETWEEN 1 AND 20 THEN 'Peixes'
    WHEN mes = 3 AND dia BETWEEN 20 AND 31 THEN 'Áries'
        WHEN mes = 4 AND dia BETWEEN 1 AND 20 THEN 'Áries'
    WHEN mes = 4 AND dia BETWEEN 21 AND 31 THEN 'Touro'
        WHEN mes = 5 AND dia BETWEEN 1 AND 20 THEN 'Touro'
    WHEN mes = 5 AND dia BETWEEN 21 AND 31 THEN 'Gêmeos'
        WHEN mes = 6 AND dia BETWEEN 1 AND 20 THEN 'Gêmeos'
    WHEN mes = 6 AND dia BETWEEN 21 AND 31 THEN 'Câncer'
        WHEN mes = 7 AND dia BETWEEN 1 AND 21 THEN 'Câncer'
    WHEN mes = 7 AND dia BETWEEN 22 AND 31 THEN 'Leão'
        WHEN mes = 8 AND dia BETWEEN 1 AND 22 THEN 'Leão'
    WHEN mes = 8 AND dia BETWEEN 23 AND 31 THEN 'Virgem'
        WHEN mes = 9 AND dia BETWEEN 1 AND 22 THEN 'Virgem'
    WHEN mes = 9 AND dia BETWEEN 23 AND 31 THEN 'Libra'
        WHEN mes = 10 AND dia BETWEEN 1 AND 22 THEN 'Libra'
    WHEN mes = 10 AND dia BETWEEN 23 AND 31 THEN 'Escorpião'
        WHEN mes = 11 AND dia BETWEEN 1 AND 21 THEN 'Escorpião'
    WHEN mes = 11 AND dia BETWEEN 22 AND 31 THEN 'Sagitário'
        WHEN mes = 12 AND dia BETWEEN 1 AND 21 THEN 'Sagitário'
    WHEN mes = 12 AND dia BETWEEN 22 AND 31 THEN 'Capricórnio'
        WHEN mes = 1 AND dia BETWEEN 1 AND 21 THEN 'Capricórnio'
  END AS signo
FROM
  pessoas;

  SELECT * FROM pessoas;

ALTER TABLE pessoas ADD signo VARCHAR(10);

ALTER TABLE pessoas ADD signo CHAR(30);

SELECT * FROM pessoas;

INSERT INTO pessoas (id, nome, nascimento, sexo, peso, altura, nacionalidade) VALUES (DEFAULT, 'Jonathas', '1985/11/25', 'M', '58', '1.70', 'Brasil');

UPDATE pessoas
set mes = EXTRACT(MONTH FROM nascimento);

UPDATE pessoas
set dia = EXTRACT(DAY FROM nascimento);

UPDATE pessoas
SET signo = CASE
    WHEN mes = 1 AND dia BETWEEN 21 AND 31 THEN 'Aquário'
        WHEN mes = 2 AND dia BETWEEN 1 AND 19 THEN 'Aquário'
    WHEN mes = 2 AND dia BETWEEN 20 AND 31 THEN 'Peixes'
        WHEN mes = 3 AND dia BETWEEN 1 AND 20 THEN 'Peixes'
    WHEN mes = 3 AND dia BETWEEN 20 AND 31 THEN 'Áries'
        WHEN mes = 4 AND dia BETWEEN 1 AND 20 THEN 'Áries'
    WHEN mes = 4 AND dia BETWEEN 21 AND 31 THEN 'Touro'
        WHEN mes = 5 AND dia BETWEEN 1 AND 20 THEN 'Touro'
    WHEN mes = 5 AND dia BETWEEN 21 AND 31 THEN 'Gêmeos'
        WHEN mes = 6 AND dia BETWEEN 1 AND 20 THEN 'Gêmeos'
    WHEN mes = 6 AND dia BETWEEN 21 AND 31 THEN 'Câncer'
        WHEN mes = 7 AND dia BETWEEN 1 AND 21 THEN 'Câncer'
    WHEN mes = 7 AND dia BETWEEN 22 AND 31 THEN 'Leão'
        WHEN mes = 8 AND dia BETWEEN 1 AND 22 THEN 'Leão'
    WHEN mes = 8 AND dia BETWEEN 23 AND 31 THEN 'Virgem'
        WHEN mes = 9 AND dia BETWEEN 1 AND 22 THEN 'Virgem'
    WHEN mes = 9 AND dia BETWEEN 23 AND 31 THEN 'Libra'
        WHEN mes = 10 AND dia BETWEEN 1 AND 22 THEN 'Libra'
    WHEN mes = 10 AND dia BETWEEN 23 AND 31 THEN 'Escorpião'
        WHEN mes = 11 AND dia BETWEEN 1 AND 21 THEN 'Escorpião'
    WHEN mes = 11 AND dia BETWEEN 22 AND 31 THEN 'Sagitário'
        WHEN mes = 12 AND dia BETWEEN 1 AND 21 THEN 'Sagitário'
    WHEN mes = 12 AND dia BETWEEN 22 AND 31 THEN 'Capricórnio'
        WHEN mes = 1 AND dia BETWEEN 1 AND 21 THEN 'Capricórnio'
END;