/*Nome nonni*/
select distinct F.Genitore as Nonni
from Genia F join Genia G on G.Genitore = F.Figlio