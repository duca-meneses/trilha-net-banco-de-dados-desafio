--1
Select Nome, Ano From Filmes;

--2
Select Nome, Ano From Filmes Order By Ano ASC;

--3
Select Nome, Ano, Duracao From Filmes Where Nome = 'De Volta para o Futuro';

--4
Select Nome, Ano, Duracao From Filmes Where Ano = 1997;

--5
Select Nome, Ano, Duracao From Filmes Where Ano > 2000;

--6
Select Nome, Ano, Duracao From Filmes Where Duracao > 100 And Duracao < 150 Order By Duracao ASC;

--7
SELECT Ano, COUNT(*) AS QuantidadeDeFilmes 
FROM Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) DESC;

--8
Select Id, PrimeiroNome, UltimoNome, Genero From Atores Where Genero = 'M';

--9
Select Id, PrimeiroNome, UltimoNome, Genero From Atores Where Genero = 'F' Order By PrimeiroNome;

--10
SELECT Nome, Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

--11
SELECT Nome, Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';

--12
SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;