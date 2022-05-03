/*Programmatore categoria 10: calcolare codice e anno in cui ha
scritto il primo programma in linguaggio diverso da Java*/

select Programmatore.Codice, Programma.Anno
from Programmatore join Autore on Programmatore.Codice = Autore.Codice
    join Programma on Programma.ID = Autore.ID
where Programmatore.Categoria = 10 and Programma.Linguaggio != "Java"
group by Programmatore.Codice