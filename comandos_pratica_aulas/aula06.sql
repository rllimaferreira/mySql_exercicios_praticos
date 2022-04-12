USE cadastro;

SELECT * FROM pessoas;

INSERT INTO pessoas VALUES
(DEFAULT, 'Sophia', '1993-05-2', 'F', '65.3', '1.75', 'Irlanda');

DESCRIBE pessoas;
DESC pessoas;

ALTER TABLE pessoas
ADD COLUMN profisao VARCHAR(50);

SELECT * FROM pessoas;

ALTER TABLE	pessoas
	CHANGE profisao profissão VARCHAR(50);
    
ALTER TABLE pessoas
DROP COLUMN profissão;

ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;

ALTER TABLE pessoas
ADD codigo INT FIRST;

ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20); -- O MODIFY modifica tipos e constricts

ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20) NOT NULL DEFAULT '';

ALTER TABLE pessoas
CHANGE COLUMN profissao prof VARCHAR(20); -- O CHANGE modifica tipos, constricsts e colunas

ALTER TABLE pessoas
RENAME TO gafanhotos;

DESC gafanhotos;

-- Criação de mais uma tabela

CREATE TABLE IF NOT EXISTS cursos (
	nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT,
    carga INT UNSIGNED, -- Signifca sem sinal, vai economizar 1 byte para cada registro que tem carga registrada
    totalAulas INT,
    ANO YEAR DEFAULT '2022'
) DEFAULT CHARSET = UTF8;

DESC cursos;

ALTER TABLE cursos
ADD COLUMN idCurso INT FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY (idCurso);

-- PARA APAGAR

-- DROP TABLE cursos; vai apagar a tabela
-- DROP DATABASE cadastro; -- apagará o banco todo

CREATE TABLE IF NOT EXISTS teste(
id INT,
nome INT
);

ALTER TABLE teste
ADD COLUMN idade INT;

INSERT INTO teste VALUE
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

SELECT * FROM teste;

DROP TABLE IF EXISTS teste;