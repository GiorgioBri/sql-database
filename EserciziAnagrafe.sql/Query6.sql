/*Per ogni città, numero di mamme nate in quella città*/
select Persona.CittàNascita, count(Persona.Nome)
from Persona join Genia on Persona.Nome = Genia.Genitore
where Persona.Sesso = "F"
group by Persona.CittàNascita