/*Per ogni programmatore e per ogni anno:
numero di programmi scritti da quel programmatore in quell'anno,
con codice programmatore, anno e numero programmi*/

select Autore.Codice, Programma.Anno, count(Programma.ID)
from Autore join Programmatore on Autore.Codice = Programmatore.Codice
    join Programma on Autore.ID = Programma.ID
group by Autore.Codice, Programma.Anno
