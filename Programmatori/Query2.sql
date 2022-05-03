/*Nome e categoria programmatori autori di almeno un programma 
diverso da Python, ordinato rispetto nome dei programmatori*/

select distinct Programmatore.Nome, Programmatore.Categoria
from Programmatore join Autore on Programmatore.Codice = Autore.Codice
    join Programma on Programma.ID = Autore.ID
where Programma.Linguaggio != "Python"
order by Programmatore.Nome