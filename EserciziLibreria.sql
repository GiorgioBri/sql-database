/*Romanzi pubblicati nel 2009*/
select *
from Romanzo
where AnnoPubblicazione = 2009

/*Romanzi pubblicati dal 1990*/.
select Titolo
from Romanzo
where AnnoPubblicazione > 1990

/*Romanzi del XX secolo*/
select *
from Romanzo
where AnnoPubblicazione >= 1900 and AnnoPubblicazione <= 2000

/*Autore e Titolo di tutti i romanzi*/
select autore.Nome, autore.Cognome, Romanzo.Titolo
from Romanzo, Autore
where Romanzo.Autore = Autore.ID

/*Autore e Titolo in ordine alfabetico*/
select autore.Cognome, autore.nome, Romanzo.Titolo
from Romanzo, Autore
where Romanzo.Autore = Autore.ID
order by Autore.Cognome

/*Autore di origine russa in ordine alfabetico*/
select autore.nome, autore.cognome, romanzo.Titolo
from romanzo, autore
where romanzo.autore = autore.ID and autore.Nazionalità = "russo"
order by autore.cognome

/*Autore del XX secolo, ordine alfabetico (a parità di autore in ordine cronoligico)*/
select romanzo.Titolo
from romanzo, autore
where romanzo.autore = autore.id and (autore.DataNascita > 1809 and autore.DataNascita < 2000)
order by autore.cognome

/*Titolo e anno pubblicazione autori viventi*/
select romanzo.titolo, romanzo.AnnoPubblicazione
from romanzo, autore
where romanzo.autore = autore.id and autore.DataMorte is null

/*Romanzi di scrittori viventi o morti, ma non a Torino*/
select *
from romanzo, autore
where romanzo.autore = autore.id and (autore.DataMorte is null or autore.LuogoMorte != "Torino")

/*Titolo e anno pubblicazione di scrittori nati a Roma*/
select romanzo.titolo, romanzo.AnnoPubblicazione
from romanzo, autore
where romanzo.autore = autore.id and autore.LuogoNascita = "Roma"

/*Romanzi con titolo che inizia per "Tokyo"*/
select *
from romanzo
where romanzo.titolo like "Tokyo%"

/*Romanzi con "Sposi" nel titolo*/
select *
from romanzo
where romanzo.titolo like "%Sposi%"

/*Romanzi con "i" come penultima lettera del titolo*/
select *
from romanzo
where romanzo.titolo like "%i_"

/*Romanzi con "Blues" come ultima parola del titolo*/
select *
from romanzo
where romanzo.titolo like "%blues"

/*Romanzi del XX secolo con "Zeno" nel titolo*/
select *
from romanzo
where romanzo.titolo like "%Zeno%"

/*Romanzi pubblicati prima del 1900, la parola "Sposi" nel titolo (iniziale maiuscola o minuscola)*/
select*
from romanzo
where romanzo.AnnoPubblicazione < 1900 and romanzo.titolo like "%Sposi%" 

/*Romanzi di Alessandro Manzoni*/
select * 
from romanzo, autore
where romanzo.autore = autore.id and autore.nome = "Alessandro" and autore.cognome = "Manzoni"

/*Romanzi di Don DeLillo, non duplicati*/
select distinct *
from romanzo, autore
where romanzo.autore = autore.id and autore.cognome = "Don DeLillo"

/*Romanzi con personaggio Harry Potter*/
select *
from romanzo, Personaggio, PersonaggioRomanzo
where personaggio.nome = "Harry" and ((personaggio.id = PersonaggioRomanzo.personaggio) and (romanzo.id = PersonaggioRomanzo.romanzo))

