/*Calcolare scalatori che hanno effettuato nella nazione di nascita
quando erano maggiorenni*/

select distinct Scalatore.*
from Scalatore join Scalata on Scalatore.CF = Scalata.Scalatore
where Scalatore.NazioneNascita in
    (select Scalata.Nazione
    from Scalata
    where (Scalata.Anno - Scalatore.AnnoNascita) > 18
    )