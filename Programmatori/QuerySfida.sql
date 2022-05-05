/*Nome del programmatore che ha programmato di più*/

/*
select Programmatore.Nome
from Programmatore
where Programmatore.Codice in (
    select Ris2.Codice
    from (
        select Autore.Codice, count(*) as Apps
        from Autore
            join Programmatore on Autore.Codice = Programmatore.Codice
        group by Autore.Codice
    ) Ris2
    where Ris2.Apps = (
        select max(Ris.Apps)
        from (
            select Autore.Codice, count(*) as Apps
            from Autore
                join Programmatore on Autore.Codice = Programmatore.Codice
            group by Autore.Codice
        ) Ris
    )
);
*/

select Programmatore.nome
from Autore join Programmatore on Autore.codice = Programmatore.codice
group by Autore.codice
order by count(*) desc
limit 5;