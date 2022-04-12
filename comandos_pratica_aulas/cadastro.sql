CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
default collate utf8_general_ci;

USE cadastro;

CREATE TABLE pessoas (
	id_pessoa INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
    nascimento DATE,
    sexo ENUM('M','F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
	PRIMARY KEY (id_pessoa)
    ) DEFAULT CHARSET = utf8;
    
INSERT INTO pessoas (nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES ('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

INSERT INTO pessoas(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES ('Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal');

INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES 
('Ana', '1990-12-30', 'F', '59.2', '1.70', 'EUA'),
('Creuza', '1980-12-30', 'F', '59.2', '1.75', 'Irlanda'),
('Pedro', '1970-12-30', 'F', '59.2', '1.80', 'Portugal');

INSERT INTO pessoas (id_pessoa, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES (DEFAULT, 'Ana', '1990-12-30', 'F', '59.2', '1.70', DEFAULT);

SELECT * FROM pessoas;
    
