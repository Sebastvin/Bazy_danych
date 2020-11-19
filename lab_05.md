## LAB 05


### Zad.1
***
a)

    CREATE TABLE kreatura SELECT * FROM wikingowie.kreatura;


 
 b)
 
 
    SELECT * FROM zasob;
    
    
 c)
 
    SELECT * FROM zasob where rodzaj='jedzenie';
    
 
 d)
 
    SELECT idZasobu, ilosc FROM ekwipunek WHERE idKreatury=1 or idKreatury=2 or idKreatury =5;
    
    //lub
    
    SELECT idZasobu, ilosc from ekwipunek WHERE idKreatury IN(1, 3, 5);
   
  ***
  ### Zad.2
  
  a)

    SELECT * FROM kreatura where rodzaj!='wiedzma' and udzwig >= 50;


 
 b)
 
 
    select * from zasob where waga>=2 and waga<=5;
    
    
 c)
 
    select * from kreatura where udzwig>=30 and udzwig<=70 and nazwa like '%or%';
    
    
  ***
  ### Zad.3
  
  a)

    SELECT * FROM zasob WHERE month(dataPozyskania) BETWEEN 7 AND 8;


 
 b)
 
 
    SELECT * FROM zasob WHERE rodzaj != ' ' ORDER BY waga ASC;
    
    
 c)
 
    select * from kreatura order by dataUr limit 5;
    
  
  ***
  ### Zad.4
  
  a)

    select distinct rodzaj from zasob;


 
 b)
 
 
    select concat(nazwa,' - ', rodzaj) from kreatura where rodzaj like 'wi%';
    
    
 c)
 
    SELECT nazwa, ilosc*waga as waga FROM zasob WHERE YEAR(dataPozyskania) BETWEEN 2000 AND 2007;
    
    
   ### Zad.5
  
  a)

    SELECT nazwa, 0.3*waga AS odpad, 0.7*waga AS jedzenie FROM zasob WHERE rodzaj="jedzenie";


 
 b)
 
 
    SELECT * FROM zasob WHERE rodzaj IS NULL;
    
    
 c)
 
    select distinct rodzaj, nazwa from zasob where nazwa like 'Ba%' or nazwa like '%os' order BY nazwa ASC;
    
    
 
   
    
 
 
 
   
