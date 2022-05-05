/*Per ogni nazione, calcola numero di scalate effettuate da 
scalatore nati in quella nazione*/

select Nazione.Nome, count(*) as N°Scalate
from Scalatore join Scalata on Scalatore.CF = Scalata.Scalatore
    join Nazione on Nazione.Nome = Scalata.Nazione
where Scalatore.NazioneNascita = Scalata.Nazione
group by Nazione.Nome