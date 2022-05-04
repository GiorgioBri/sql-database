/*Insieme delle coppie (A, B), dove A è uno scalatore,
B è un continente in cui A ha effettuato una scalata*/

select Scalata.Scalatore as A, Nazione.Continente as B
from Scalata join Nazione on Scalata.Nazione = Nazione.Nome
order by Scalata.Scalatore