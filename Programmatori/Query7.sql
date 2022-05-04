/*Per ogni linguaggio:
quanti sono in media gli autori dei programmi scritti in quel linguaggio*/

select Programma.Linguaggio, count(Autore.Codice) / count(distinct Programma.ID) as Media
from Autore right join Programma on Autore.ID = Programma.ID
group by Programma.Linguaggio