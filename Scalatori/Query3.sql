/*Nazioni (con continente) nelle quali è stata effettuata
almeno una scalata da uno scalatore minorenne*/

select Nazione.Nome, Nazione.Continente
from Scalatore join Scalata on Scalatore.CF = Scalata.Scalatore
    join Nazione on Nazione.Nome = Scalata.Nazione
where (Scalata.Anno - Scalatore.AnnoNascita) < 18