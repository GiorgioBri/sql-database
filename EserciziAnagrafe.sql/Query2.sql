/*Coppie (genitori - figli) nati nella stessa città*/
select PF.Nome, PG.Nome
from Persona PF join Genia G on PF.Nome = G.Figlio
    join Persona PG on PG.Nome = G.Genitore
where PF.CittàNascita = PG.CittàNascita