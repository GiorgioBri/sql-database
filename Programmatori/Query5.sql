/*Codice e nome programmatori che hanno scritto
 programmi solo in Java*/

/*
select Programmatore.Nome, Programmatore.Codice
from Programmatore join Autore on Programmatore.Codice = Autore.Codice
        join Programma on Programma.ID = Autore.ID
where Programma.linguaggio = 'Java'
*/

select Programmatore.Codice, Programmatore.Nome
from Autore join Programmatore on Autore.Codice = Programmatore.Codice
    join Programma  on Autore.ID = Programma.ID
where Programma.Linguaggio in
        (select Programma.Linguaggio
        from Programma 
        where Programma.Linguaggio = 'Java')
group by programma.Linguaggio