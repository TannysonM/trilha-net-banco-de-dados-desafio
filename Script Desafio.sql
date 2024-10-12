-- Questão 1 --
-- Selecionando colunas especificas da tabela Filmes
SELECT 
	Nome,
	Ano
FROM Filmes

-- Questão 2 --
-- Selecionando dados especificos da tabela Filmes e ordenando
-- a coluna Ano por ordem crescente
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC

-- Questão 3 --
-- Buscando os dados do cliente 'De Volta para o Futuro'
--Obs.: A questão não especifica se será apenas um cliente com esse nome ou se será todos que tenham esse nome.
-- Porém, eu especifiquei para ficar igual a imagem colocada pelo orientador do curso.
SELECT 
	Nome = 'De Volta para o Futuro',
	Ano = '1985',
	Duracao = '116'
FROM Filmes

-- Questão 4 --
--Buscando os dados de todos os filmes lançados em 1997
SELECT * FROM Filmes 
WHERE Ano = '1997'

--Questão 05--
--Buscando todos os filmes lançados depois do ano 2000
SELECT * FROM Filmes
WHERE Ano > '2000'

-- Questão 06 --
--Buscando todos os filmes com duração maior que 100 e menor que 150
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao ASC

-- Questão 07 --
-- Buscando Quantidade da Duração total de Filmes de cada Ano em ordem Decrescente
SELECT 
 Ano,
 COUNT(Duracao) Quantidade 
FROM Filmes
GROUP BY Ano 
ORDER BY Quantidade DESC

-- Questão 08 --
-- Retornando os dados dos atores masculinos
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero = 'M'
FROM Atores

-- Questão 09 ---
-- Buscando todas as atrizes por ordem do primeiro nome
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero = 'F'
FROM Atores Where Genero = 'F'
ORDER BY PrimeiroNome

-- Questão 10 --
-- Retornando a junção de Nome(Filmes) e Genero(Genero) de tabelas diferentes através de um
-- Relacionamento de chaves pela tabela intermediaria entre FILMESGENEROS
SELECT 
	F.Nome,
	G.Genero
FROM FilmesGenero FG
INNER JOIN Filmes F ON FG.IdFilme  = F.Id
INNER JOIN Generos G ON G.Id = FG.IdGenero 

-- Questão 11 --
-- Retornando Filmes com um Genero especifico
SELECT 
	F.Nome,
	G.Genero
FROM FilmesGenero FG
INNER JOIN Filmes F ON FG.IdFilme  = F.Id
INNER JOIN Generos G ON G.Id = FG.IdGenero 
WHERE G.Genero = 'Mistério'
 
-- Questão 12 --
-- Retorno de dados de cada filme com seus Atores e seus Papeis no filme
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	E.Papel
FROM ElencoFilme E
INNER JOIN Filmes F ON E.IdFilme = F.Id
INNER JOIN Atores A ON A.Id = E.IdAtor








