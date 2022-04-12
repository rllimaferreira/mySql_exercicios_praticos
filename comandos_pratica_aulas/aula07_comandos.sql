USE cadastro;

ALTER TABLE pessoas
RENAME TO gafanhotos;

ALTER TABLE cursos
CHANGE COLUMN ANO ano YEAR DEFAULT '2022';

INSERT INTO cursos VALUES
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Bancos de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 	'Youtuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

SELECT *FROM cursos;

UPDATE cursos
SET nome = 'HTML5'
WHERE idCurso = '1';

UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idCurso = '4';

UPDATE cursos
SET nome = 'Java', carga = '40', ano = '2015'
WHERE idCurso = '5';

-- Modificar todas as linhas sem a possibilidade mesmo de afetar outras

-- UPDATE cursos
-- SET nome = 'Java', carga = '40', ano = '2015'
-- WHERE idCurso = '5'
-- LIMIT 1;

DELETE FROM cursos
WHERE ano = '2018'
LIMIT 3;

TRUNCATE cursos;

