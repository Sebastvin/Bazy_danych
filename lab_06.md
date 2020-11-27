# Bazy_danych_event

***
 ### Zad.1
a)

    select avg(wiek) from postac where rodzaj='wiking';



 b)


    select rodzaj, avg(waga) from kreatura group by rodzaj;


 c)

    select rodzaj, avg(year(dataUr)) from kreatura group by rodzaj;



  ***
  ### Zad.2

  a)

    select rodzaj, sum(waga) from zasob group by rodzaj;



 b)


    select nazwa, avg(waga) from zasob group by nazwa having sum(waga) > 10 and sum(ilosc) >=4;


 c)

    SELECT COUNT(DISTINCT(nazwa)),rodzaj FROM zasob where ilosc>1 GROUP BY rodzaj;


  ***
  ### Zad.3

  a)

    select nazwa,sum(ilosc) from kreatura k, ekwipunek e where e.idKreatury=k.idkreatury group by nazwa;



 b)


    SELECT k.nazwa, e.ilosc, z.nazwa FROM kreatura AS k, ekwipunek AS e, zasob AS z
    WHERE k.idKreatury = e.idKreatury
    AND e.idZasobu = z.idZasobu;


 c)

    select k.nazwa, k.idKreatury from kreatura k LEFT JOIN ekwipunek e ON k.idKreatury=e.idKreatury where e.idKreatury IS NULL;
    
    
    select idKreatury from kreatura where idKreatury not in(select idKreatury from ekwipunek where idKreatury IS NOT NULL);


  ***
  ### Zad.4

  a)

    select kreatura.nazwa, zasob.nazwa FROM kreatura NATURAL JOIN ekwipunek INNER JOIN zasob ON zasob.idzasobu = ekwipunek.idzasobu WHERE year(kreatura.dataUr)
    BETWEEN 1670 AND 1679 AND kreatura.rodzaj='wiking';



 b)


    SELECT k.nazwa, e.idZasobu, z.nazwa, k.dataUr FROM kreatura AS k NATURAL JOIN ekwipunek AS e JOIN zasob as z ON e.idZasobu=z.idZasobu WHERE z.rodzaj='jedzenie' 
    ORDER BY dataUr DESC limit 5;


 c)

    SELECT CONCAT(tabk1.nazwa, '-', tabk2.nazwa) FROM kreatura AS tabk1, kreatura AS tabk2 where tabk1.idKreatury-tabk2.idKreatury=5;


   ### Zad.5

  a)

    SELECT k.rodzaj, AVG(e.ilosc *z.waga) FROM kreatura AS k, ekwipunek AS e, zasob AS z where k.idKreatury=e.idKreatury AND e.idZasobu=z.idZasobu AND k.rodzaj NOT IN('malpa','waz')GROUP BY rodzaj 
    HAVING SUM(e.ilosc) < 30;



 b)


    *DO ZROBIENIA*

