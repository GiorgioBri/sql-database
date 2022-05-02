/*Persone maggiorenni con nome e regione*/
select Persona.nome, Persona.Età, Città.Regione
from Persona, Città
where età >= 18