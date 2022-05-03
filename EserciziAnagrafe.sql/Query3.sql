/*Città in cui è nato almeno un genitore di oltre 50 anni*/
select distinct Persona.CittàNascita
from Persona join Città
where Età >= 50 and Persona.CittàNascita = Città.Nome