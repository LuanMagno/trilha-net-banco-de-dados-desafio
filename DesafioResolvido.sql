--1
Select Nome,Ano from Filmes

--2
Select Nome,Ano from Filmes
Order by Ano

--3
Select * from Filmes
where Nome = 'De volta para o futuro'

--4
Select * from Filmes
Where Ano = 1997

--5
Select * from Filmes
Where Ano > 2000

--6
Select * from Filmes
Where Duracao > 100 and Duracao <150
Order by Duracao

--7
Select Ano, Count(Ano) Quantidade
from Filmes
Group by Ano
Order by Quantidade desc

--8
Select 
PrimeiroNome,UltimoNome,Genero
from Atores
where Genero = 'M'

--9
Select 
PrimeiroNome,UltimoNome,Genero
from Atores
where Genero = 'F'
Order by PrimeiroNome

--10
Select Filmes.Nome, Generos.Genero
From Filmes 
Inner Join FilmesGenero on Filmes.Id = FilmesGenero.Id
Inner Join Generos on FilmesGenero.IdGenero = Generos.Id

--11
Select Filmes.Nome, Generos.Genero
From Filmes 
Inner Join FilmesGenero on Filmes.Id = FilmesGenero.Id
Inner Join Generos on FilmesGenero.IdGenero = Generos.Id
Where Genero = 'Mistério'

--12
Select * from ElencoFilme
Select * from Filmes
Select * from Atores
Select Filmes.Nome, Atores.PrimeiroNome,Atores.UltimoNome,ElencoFilme.Papel
from Filmes
Inner Join ElencoFilme on ElencoFilme.IdFilme = Filmes.Id
Inner Join Atores on Atores.Id = ElencoFilme.IdAtor
