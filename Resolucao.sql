SELECT Nome, Ano FROM Filmes

SELECT Nome, Ano FROM Filmes
ORDER BY Ano

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De volta para o futuro'

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

SELECT Nome, Ano, Duracao FROM Filmes
WHERE ANO LIKE '200%'

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

SELECT Ano, COUNT(*) AS Quantidade_de_Filmes FROM Filmes
GROUP BY Ano 
ORDER BY Quantidade_de_Filmes DESC

SELECT * FROM Atores
WHERE Genero = 'M'

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

SELECT F.Nome, G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
INNER JOIN Generos AS G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

SELECT F.Nome AS Nome_do_Filme, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS EF ON F.Id = EF.IdFilme
INNER JOIN Atores AS A ON EF.IdAtor = A.Id;

