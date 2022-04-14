USE cadastro2;

SELECT * FROM gafanhotos;

-- 1) Seleciona uma lista com o nome de todas as gafanhotas
SELECT nome FROM gafanhotos
WHERE sexo = 'F';

-- 2) Selecione uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/Dez/2015

SELECT * FROM gafanhotos
WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31'
ORDER BY nascimento;

-- select * from teste where datas between '2011-08-10' and '2011-16-10';

-- 3) Uma lista com o nome de todos os homens que trabalham como Programadores

SELECT nome FROM gafanhotos
WHERE sexo = 'M' 
	AND profissao = 'Programador'
ORDER BY nome;

-- 4) Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J

SELECT * FROM gafanhotos
WHERE sexo = 'F' 
	AND nacionalidade = 'Brasil' 
    AND nome LIKE 'J%';

-- 5) Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 kg

SELECT nome, sexo, peso, nacionalidade
FROM gafanhotos
WHERE sexo = 'M' 
	AND nacionalidade <> 'Brasil'
    AND peso < 100
    AND nome LIKE '%Silva%';

-- 6) Qual é a maior altura entre gafanhotos homens que moram no Brasil?

SELECT nome, max(altura), nacionalidade
FROM gafanhotos
WHERE sexo = 'M' 
	AND nacionalidade = 'Brasil';

-- 7) Qual é a média de peso dos gafanhotos cadastrados?

SELECT avg(peso)
FROM gafanhotos
WHERE sexo = 'M';

-- 8) Qual é o menor peso entre as gafanhotas mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?
-- Resposta: Talita Nascionamento (35.90 kg)

SELECT nome, min(peso)
FROM gafanhotos
WHERE nascimento BETWEEN '1990-01-01' AND '2000-12-31' 
AND sexo = 'F' AND nacionalidade <> 'Brasil';

-- 9) Quantas gafanhotas mulheres têm mais de 1.90m de altura?

SELECT count(altura)
FROM gafanhotos
WHERE altura > 1.90;
