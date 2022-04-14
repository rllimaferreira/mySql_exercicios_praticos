USE cadastro2;

SELECT totaulas FROM cursos
ORDER BY totaulas;

SELECT DISTINCT totaulas FROM cursos
ORDER BY totaulas;

SELECT totaulas FROM cursos
GROUP BY totaulas
ORDER BY totaulas;

-- QUANTOS REGISTROS TENHO DENTRO DE CADA AGRUPAMENTO
SELECT totaulas, count(*) FROM cursos
GROUP BY totaulas
ORDER BY totaulas;

SELECT * FROM cursos WHERE totaulas = 30;

SELECT * FROM cursos WHERE totaulas = 12;

SELECT * FROM cursos WHERE totaulas > 30;

SELECT * FROM cursos WHERE totaulas > 20;

SELECT carga FROM cursos WHERE totaulas = 30
GROUP BY carga;

SELECT carga, count(*) FROM cursos WHERE totaulas = 30
GROUP BY carga;

SELECT carga, count(nome) FROM cursos WHERE totaulas = 30
GROUP BY carga;

SELECT * FROM cursos WHERE totaulas = 30;

-- E AGORA EU QUERO MOSTRAR SOMENTE QUEM TEM MAIS DE 3 vezes cargas iguais

SELECT carga, count(nome) FROM cursos
GROUP BY carga
HAVING count(nome) > 3;

SELECT ano, count(*) FROM cursos
GROUP BY ano
HAVING count(ano) >= 5
ORDER BY count(*) DESC;

-- O HAVING SÓ FUNCIONA SE COLOCAR O CAMPO USADO NO GROUP BY, POR EXEMPLO ANO E ANO

SELECT ano, count(*) FROM cursos
WHERE totaulas > 30
GROUP BY ano
HAVING ano > 2013
ORDER BY count(*) DESC;

SELECT AVG(carga) FROM cursos; -- Mostra a média de horas de todos os cursos (ele soma todas as cargas, divide pelo número de cursos e mostra o valor)

SELECT * FROM cursos
WHERE ano > 2015;

SELECT carga, count(*) FROM cursos
WHERE ano > 2015
GROUP BY carga;

SELECT carga, count(8) FROM cursos -- SELECIONEI
WHERE ano > 2015 -- FILTREI
GROUP BY carga -- AGRUPEI
HAVING carga > (SELECT AVG(carga) FROM cursos); -- E MOSTREI, DESSE AGRUPAMENTO, SOMENTE QUEM ESTÁ ACIMA DESTE RESULTADO DO SELECT
 