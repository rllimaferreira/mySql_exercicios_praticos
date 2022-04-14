USE cadastro2;
SELECT * FROM gafanhotos;

-- 1) Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos.
SELECT profissao, count(profissao)
FROM gafanhotos
WHERE sexo = 'M';

SELECT count(profissao) 
FROM cursos
GROUP BY profissao;
-- HAVING count(ano) >= 5
-- ORDER BY count(*) DESC;

-- 2) Quantos gafanhotos homens e quantas mulheres nasceram após 01/Jan/2005?

SELECT count(sexo) FROM gafanhotos
WHERE sexo = 'M' and sexo = 'F' 
GROUP BY sexo
HAVING nascimento > '2005-01-01';


-- 3) Uma lista com os gafanhotos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá. 
-- Só nos interessam os países que tiveram mais de 3 gafanhotos com essa nacionalidade.

-- 4) Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100 kg e que estão acima da média de altura de todos os cadastrados.

-- I. media de altura de todos
-- II. pegar em outro select todas as pessoas que pesam mais de 100 kg, agrupar por altura e mostrar somente quem está acima desta média de altura calculada no início

