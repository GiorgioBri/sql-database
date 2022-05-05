/*Massimo redditi per gruppi di persone maggiorenni con stessa età*/
select Età, max(reddito)
from Persona
where Età > 17
group by Età