# Bazy_danych_event

***
 ### Zad.1
a)

     use wikingowie; // CREATE TABLE AS XYZ SELECT * FROM wikingowie.XYZ



 b)


    select kreatura.nazwa, uczestnicy.id_uczestnika from kreatura LEFT JOIN uczestnicy ON uczestnicy.id_uczestnika=kreatura.iDkreatury where uczestnicy.id_uczestnika IS NULL;


 c)

    select w.nazwa, SUM(ilosc) FROM wyprawa as w 
    inner join uczestnicy AS u on u.id_wyprawy=w.id_wyprawy 
    INNER JOIN kreatura AS k On u.id_uczestnika=k.idKreatury 
    INNER JOIN ekwipunek AS e on e.idKreatury=k.idKreatury 
    group by w.nazwa;



  ***
  ### Zad.2

  a)

    SELECT w.nazwa, COUNT(u.id_uczestnika), GROUP_CONCAT(k.nazwa) FROM wyprawa AS w 
    JOIN uczestnicy AS u On u.id_wyprawy=w.id_wyprawy 
    JOIN kreatura AS k ON u.id_uczestnika=k.idKreatury GROUP BY w.nazwa;
  


 b)


    SELECT ew.idEtapu, w.nazwa, s.nazwa, w.data_rozpoczecia, w.kierownik, k.nazwa FROM etapy_wyprawy AS ew
    JOIN sektor AS s ON s.id_sektora=ew.sektor
    JOIN wyprawa AS w ON w.id_wyprawy=ew.idWyprawy
    INNER JOIN kreatura AS k ON w.kierownik=k.idKreatury
    ORDER BY w.data_rozpoczecia, ew.idEtapu;




  ***
  ### Zad.3

  a)

    SELECT sektor.nazwa,COUNT(etapy_wyprawy.sektor) AS ilosc_odwiedzin FROM sektor LEFT JOIN etapy_wyprawy ON sektor.id_sektora=etapy_wyprawy.sektor GROUP BY sektor.nazwa;



 b)


    SELECT DISTINCT(kreatura.nazwa),IF(uczestnicy.id_wyprawy IS NULL,"Nie bral udzialu w wyprawie","bral udzialu w wyprawie") 
    FROM kreatura LEFT JOIN uczestnicy ON kreatura.Idkreatury=uczestnicy.id_uczestnika   
    ORDER BY kreatura.nazwa;




  ***
  ### Zad.4

  a)

    SELECT w.nazwa, SUM(LENGTh(e.dziennik)) FROM etapy_wyprawy AS e
    JOIN wyprawa AS w ON e.idWyprawy = w.id_wyprawy
    GROUP BY w.nazwa HAVING SUM(LENGTh(e.dziennik)) < 400;



 b)


    SELECT w.nazwa,COUNT(DISTINCT(u.id_uczestnika)),
    SUM(e.ilosc*z.waga)/COUNT(DISTINCT(u.id_uczestnika)) AS "średnia waga"
    FROM wyprawa AS w
    LEFT JOIN uczestnicy AS u ON w.id_wyprawy = u.id_wyprawy
    LEFT JOIN kreatura AS k ON u.id_uczestnika = k.idKreatury   
    LEFT JOIN ekwipunek AS e ON k.idKreatury= e.idKreatury
    LEFT JOIN zasob AS z ON e.idZasobu = z.idZasobu
    GROUP BY w.nazwa;




   ### Zad.5

  a)

    SELECT k.nazwa, DATEDIFF(w.data_rozpoczecia, k.dataUr) AS wiek FROM wyprawa AS w
    JOIN uczestnicy AS u ON w.id_wyprawy = u.id_wyprawy
    JOIN kreatura AS k ON u.id_uczestnika = k.idKreatury
    JOIN etapy_wyprawy AS ew ON w.id_wyprawy=ew.idWyprawy
    WHERE ew.sektor = 7;



