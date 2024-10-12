-- Quest�o 1 --
-- Selecionando colunas especificas da tabela Filmes
SELECT 
	Nome,
	Ano
FROM Filmes

-- Quest�o 2 --
-- Selecionando dados especificos da tabela Filmes e ordenando
-- a coluna Ano por ordem crescente
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC

-- Quest�o 3 --
-- Buscando os dados do cliente 'De Volta para o Futuro'
--Obs.: A quest�o n�o especifica se ser� apenas um cliente com esse nome ou se ser� todos que tenham esse nome.
-- Por�m, eu especifiquei para ficar igual a imagem colocada pelo orientador do curso.
SELECT 
	Nome = 'De Volta para o Futuro',
	Ano = '1985',
	Duracao = '116'
FROM Filmes

-- Quest�o 4 --
--Buscando os dados de todos os filmes lan�ados em 1997
SELECT * FROM Filmes 
WHERE Ano = '1997'

--Quest�o 05--
--Buscando todos os filmes lan�ados depois do ano 2000
SELECT * FROM Filmes
WHERE Ano > '2000'

-- Quest�o 06 --
--Buscando todos os filmes com dura��o maior que 100 e menor que 150
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao ASC

-- Quest�o 07 --
-- Buscando Quantidade da Dura��o total de Filmes de cada Ano em ordem Decrescente
SELECT 
 Ano,
 COUNT(Duracao) Quantidade 
FROM Filmes
GROUP BY Ano 
ORDER BY Quantidade DESC

-- Quest�o 08 --
-- Retornando os dados dos atores masculinos
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero = 'M'
FROM Atores

-- Quest�o 09 ---
-- Buscando todas as atrizes por ordem do primeiro nome
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero = 'F'
FROM Atores Where Genero = 'F'
ORDER BY PrimeiroNome

-- Quest�o 10 --
-- Retornando a jun��o de Nome(Filmes) e Genero(Genero) de tabelas diferentes atrav�s de um
-- Relacionamento de chaves pela tabela intermediaria entre FILMESGENEROS
SELECT 
	F.Nome,
	G.Genero
FROM FilmesGenero FG
INNER JOIN Filmes F ON FG.IdFilme  = F.Id
INNER JOIN Generos G ON G.Id = FG.IdGenero 

-- Quest�o 11 --
-- Retornando Filmes com um Genero especifico
SELECT 
	F.Nome,
	G.Genero
FROM FilmesGenero FG
INNER JOIN Filmes F ON FG.IdFilme  = F.Id
INNER JOIN Generos G ON G.Id = FG.IdGenero 
WHERE G.Genero = 'Mist�rio'
 
-- Quest�o 12 --
-- Retorno de dados de cada filme com seus Atores e seus Papeis no filme
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	E.Papel
FROM ElencoFilme E
INNER JOIN Filmes F ON E.IdFilme = F.Id
INNER JOIN Atores A ON A.Id = E.IdAtor








