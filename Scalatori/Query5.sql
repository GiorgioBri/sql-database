/*Per ogni continente, calcolare numero scalate
da scalatori nati in una nazione di quel continente.*/

select continente, count(*)
from Scalata join Scalatore on CF = Scalatore
    join Nazione on Nome = NazioneNascita
group by Continente

union

select Continente, 0
from Nazione
where Continente not in
    (select Continente
    from Nazione join Scalatore on Nome = NazioneNascita
        join Scalata on CF = Scalatore)