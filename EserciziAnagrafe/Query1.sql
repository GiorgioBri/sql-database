/*Persone maggiorenni con nome e regione*/
select Persona.nome, Città.Regione
from Persona join Città on Persona.CittàNascita = Città.Nome
where età >= 18