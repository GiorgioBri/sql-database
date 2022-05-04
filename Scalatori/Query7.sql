/*Per ogni nazione e per ogni anno, calcolare numero di scalate
effettuate in quella nazione e in quell'anno, ma solo se tale
numero è maggiore di 1.
Nel risultato le nazioni dello stesso continente devono essere
mostrati in tuple contigue, e le tuple relative allo stesso
continente devono essere ordinate per anno*/

select Scalata.Nazione, Scalata.Anno, count(*) as N°Scalata
from Scalatore join Scalata on Scalatore.CF = Scalata.Scalatore
    join Nazione on Nazione.Nome = Scalata.Nazione
group by Scalata.Nazione, Scalata.Anno
having count(*) > 1
order by Scalata.Anno