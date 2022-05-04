/*Calcola CF, nazione nascita, continente nascita di ogni scalatore
nato in un continente diverso dall'America e, se ha effettuato
almeno una scalata, affiancare queste informazioni alle nazioni
in cui ha effettuato le scalate.*/

select Scalatore.CF, Scalatore.NazioneNascita as NazioneNascita, N.Continente as ContinenteNascita, Scalata.Nazione
from Scalatore join Scalata on Scalatore.CF = Scalata.Scalatore
    left join Nazione on Nazione.Nome = Scalata.Nazione
        join Nazione N on N.Nome = Scalatore.NazioneNascita
where N.Continente != 'America'