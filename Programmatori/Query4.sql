/*Coppie dei codici di programmatori che sono stati coautori 
di almeno un programma scritto in Python*/

select distinct Autore.Codice as Autore, A1.Codice as Coautore
from Autore join Programma on Programma.ID = Autore.ID
    join Autore as A1 on A1.ID = Programma.ID
where Programma.Linguaggio = "Python" and Autore.Codice != A1.Codice 
    and Autore.Codice < A1.Codice