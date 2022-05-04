/*Per ogni nazione N, calcola numero medio di scalate effettuate
all'anno in N da scalatori nati in nazioni diverse da N*/

select avg(Scalata.Anno)
from Scalatore join Scalata on Scalatore.CF = Scalata.Scalatore
    join Nazione on Nazione.Nome = Scalata.Nazione
where
group by Scalata.Nazione
having Scalatore.NAzioneNascita != Scalata.Nazione