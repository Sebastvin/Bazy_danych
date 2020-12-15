# Bazy_danych_event

***
 ### Zad.1


    DELIMITER //
    CREATE TRIGGER kreatura_before_insert
    BEFORE INSERT ON kreatura
    FOR EACH ROW
    BEGIN
    IF NEW.waga > 0
    THEN
    SET NEW.waga = 0;
    END IF;
    END
    //
    DELIMITER;



  ***
  ### Zad.2


    DELIMITER //
    CREATE TRIGGER wyprawa_before_delete
    BEFORE DELETE ON wyprawa
    FOR EACH ROW
    BEGIN
      INSERT INTO archiwum_wypraw
        SELECT w.id_wyprawy, w.nazwa, w.data_rozpoczecia, w.data_zakonczenia, k.nazwa
        FROM WYPRAWA AS w JOIN kreatura AS k
        ON w.kierownik=k.idKreatury
      WHERE
        w.id_wyprawy=old.id_wyprawy;
    END
    //
    DELIMITER;
 

  ***
  ### Zad.3

  a)
  
     DELIMITER //
     CREATE PROCEDURE eliksir_sily(IN id int)
     BEGIN 
     UPDATE kreatura SET udzwig = 1.2 * udzwig WHERE idKreatury = id;
     END
     //
     DELIMITER;
 
    
 b)

    DELIMITER //
    CREATE FUNCTION litery(tekst varchar(1000))
        RETURNS varchar(1000)
    BEGIN
        DECLARE duze varchar(100);
        SELECT UPPER(tekst) INTO duze;
        RETURN duze;
    END //
    DELIMITER;


  ***
  ### Zad.4

  a)

    CREATE TABLE system_alarmowy (
    id_alarmu INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    wiadomosc VARCHAR(50) ,
    );


 b)



     DELIMITER //
    CREATE TRIGGER sprawdz_tesciowa
    AFTER INSERT ON wyprawa
    FOR EACH ROW
    BEGIN
    DECLARE zmienna INT;
    SELECT count(*) INTO zmienna
    FROM etapy_wyprawy AS e, kreatura AS k, wyprawa AS w, uczestnicy AS u
    WHERE e.idWyprawy=w.id_wyprawy AND k.idKreatury=u.id_uczestnika
    AND u.id_wyprawy=w.id_wyprawy
    AND k.nazwa='Tesciowa' AND e.sektor=7
    AND w.id_wyprawy=NEW.id_wyprawy;
    IF zmienna > 0
    THEN
    INSERT INTO system_alarmowy VALUES(DEFAULT, 'Tesciowa nadchodzi !!!');
    END IF;
    END
    //
    DELIMITER; 




   ### Zad.5

  a)

    DELIMITER //
    CREATE PROCEDURE srednia_itp(
    OUT srednia FLOAT,
    OUT suma FLOAT,
    OUT maks FLOAT)
    BEGIN
    SELECT avg(udzwig), sum(udzwig), max(udzwig)
    INTO srednia, suma, maks FROM kreatura;
    END
    //
    
   
   b) 
   
    -----
