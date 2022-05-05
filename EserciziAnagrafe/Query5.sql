/*Numero maschi nati nel Lazio*/
select Persona.Nome, Reddito, Età, Sesso, CittàNascita, Regione
from Persona join Città on Persona.CittàNascita = Città.Nome
where Sesso = "M" and Regione = "Lazio"