/*Per ogni linguaggio:
quanti sono in media gli autori dei programmi scritti in quel linguaggio*/

select Programma.Linguaggio, count(Autore.Codice)
from Autore join Programmatore on Autore.Codice = Programmatore.Codice
    join Programma on Autore.ID = Programma.ID
group by Programma.Linguaggio