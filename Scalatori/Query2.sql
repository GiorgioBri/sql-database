/*Per ogni scalatore nato prima del 1980, calcolare
tutti i continenti in cui ha effettuato una scalata,
ordinando per CF e, a parità di CF, per nome continente*/

select Nazione.Continente, Scalatore.CF
from Scalatore join Scalata on Scalatore.CF = Scalata.Scalatore
    join Nazione on Nazione.Nome = Scalata.Nazione
where Scalatore.AnnoNascita < 1980
order by Scalatore.CF, Nazione.Continente