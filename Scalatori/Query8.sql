/*Per ogni nazione N, calcola numero medio di scalate effettuate
all'anno in N da scalatori nati in nazioni diverse da N*/

select Scalata.nazione, count(*)/count(Scalata.Anno) as Media
from Scalatore join Scalata on Scalatore.CF = Scalata.Scalatore
where Scalatore.NazioneNascita != Scalata.Nazione
group by Scalata.Nazione