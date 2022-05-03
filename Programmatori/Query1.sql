/*Codice programmatori autori almeno un programma Java dopo il 2000*/

select distinct Autore.Codice
from Autore join Programmatore on Autore.Codice = Programmatore.Codice
    join Programma on Programma.ID = Autore.ID
where Programma.Linguaggio = "Java" and Programma.anno >= 2000