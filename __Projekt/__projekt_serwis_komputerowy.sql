CREATE DATABASE  IF NOT EXISTS `malons` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `malons`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: malons
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `projekt_adres_klienta`
--

DROP TABLE IF EXISTS `projekt_adres_klienta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_adres_klienta` (
  `id_adres` int NOT NULL,
  `miasto` varchar(50) DEFAULT NULL,
  `kod_pocztowy` varchar(6) DEFAULT NULL,
  `ulica` varchar(45) DEFAULT NULL,
  `nr_domu` int DEFAULT NULL,
  `typ_adresu` int NOT NULL,
  `klient_id` int NOT NULL,
  PRIMARY KEY (`id_adres`),
  KEY `fk_Projekt_adres_klienta_Projekt_typ_adresu1_idx` (`typ_adresu`),
  KEY `fk_Projekt_adres_klienta_Projekt_klient1_idx` (`klient_id`),
  CONSTRAINT `fk_Projekt_adres_klienta_Projekt_klient1` FOREIGN KEY (`klient_id`) REFERENCES `projekt_klient` (`id_klient`),
  CONSTRAINT `fk_Projekt_adres_klienta_Projekt_typ_adresu1` FOREIGN KEY (`typ_adresu`) REFERENCES `projekt_typ_adresu` (`id_typu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_adres_klienta`
--

LOCK TABLES `projekt_adres_klienta` WRITE;
/*!40000 ALTER TABLE `projekt_adres_klienta` DISABLE KEYS */;
INSERT INTO `projekt_adres_klienta` (`id_adres`, `miasto`, `kod_pocztowy`, `ulica`, `nr_domu`, `typ_adresu`, `klient_id`) VALUES (1,'Wojciki','03-150','Słonecza',55,1,1),(2,'Osiniki','22-320','Pomidorowa',12,2,2),(3,'Brzemowo','53-020','Sportowa',5,2,3),(4,'Koszalin','05-420','Ogórkowa',43,1,4),(5,'Ostrołęka','12-260','Krzywa',5,2,5),(6,'Łomża','23-444','Wojenna',91,2,6);
/*!40000 ALTER TABLE `projekt_adres_klienta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekt_dzial`
--

DROP TABLE IF EXISTS `projekt_dzial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_dzial` (
  `id_dzial` int NOT NULL,
  `nazwa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_dzial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_dzial`
--

LOCK TABLES `projekt_dzial` WRITE;
/*!40000 ALTER TABLE `projekt_dzial` DISABLE KEYS */;
INSERT INTO `projekt_dzial` (`id_dzial`, `nazwa`) VALUES (1,'Hardware'),(2,'Software');
/*!40000 ALTER TABLE `projekt_dzial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekt_klient`
--

DROP TABLE IF EXISTS `projekt_klient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_klient` (
  `id_klient` int NOT NULL,
  `imie` varchar(45) DEFAULT NULL,
  `nazwisko` varchar(45) DEFAULT NULL,
  `klient_indywidualny` tinyint DEFAULT NULL,
  `nazwa_firmy` varchar(45) DEFAULT NULL,
  `regon` int DEFAULT NULL,
  `telefon` int DEFAULT NULL,
  PRIMARY KEY (`id_klient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_klient`
--

LOCK TABLES `projekt_klient` WRITE;
/*!40000 ALTER TABLE `projekt_klient` DISABLE KEYS */;
INSERT INTO `projekt_klient` (`id_klient`, `imie`, `nazwisko`, `klient_indywidualny`, `nazwa_firmy`, `regon`, `telefon`) VALUES (1,'Łukasz','Kozik',1,NULL,NULL,123456789),(2,'Tomasz','Gright',0,'Rob-bud',373293237,345123543),(3,'Ewelina','Smolin',1,NULL,NULL,462345123),(4,'Robert','Otczyk',1,NULL,NULL,234123453),(5,'Dominika','Lopes',0,'Optipliex',195933944,456789012),(6,'Władysław','Miska',0,'Nestle',497639257,664632188);
/*!40000 ALTER TABLE `projekt_klient` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`malons`@`localhost`*/ /*!50003 TRIGGER `jaki_klient` BEFORE INSERT ON `projekt_klient` FOR EACH ROW BEGIN 
	IF NEW.klient_indywidualny = 1
    THEN
		SET NEW.nazwa_firmy = NULL;
        SET NEW.regon = NULL;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `projekt_koszt`
--

DROP TABLE IF EXISTS `projekt_koszt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_koszt` (
  `id_koszt` int NOT NULL,
  `cena` float DEFAULT NULL,
  PRIMARY KEY (`id_koszt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_koszt`
--

LOCK TABLES `projekt_koszt` WRITE;
/*!40000 ALTER TABLE `projekt_koszt` DISABLE KEYS */;
INSERT INTO `projekt_koszt` (`id_koszt`, `cena`) VALUES (1,480),(2,1187.5),(3,80),(4,712.5),(5,2280),(6,5225);
/*!40000 ALTER TABLE `projekt_koszt` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`malons`@`localhost`*/ /*!50003 TRIGGER `rabat` BEFORE INSERT ON `projekt_koszt` FOR EACH ROW BEGIN
  IF NEW.cena > 500
  THEN
    SET NEW.cena = NEW.cena * 0.95;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `projekt_podzespoly`
--

DROP TABLE IF EXISTS `projekt_podzespoly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_podzespoly` (
  `id_podzespol` int NOT NULL,
  `nazwa_podzespol` varchar(45) DEFAULT NULL,
  `marka_podzespol` varchar(45) DEFAULT NULL,
  `cena_podzespol` float DEFAULT NULL,
  `id_podzespol_zamowienie` int NOT NULL,
  PRIMARY KEY (`id_podzespol`),
  KEY `fk_Projekt_podzespoly_Projekt_zamowienia1_idx` (`id_podzespol_zamowienie`),
  CONSTRAINT `fk_Projekt_podzespoly_Projekt_zamowienia1` FOREIGN KEY (`id_podzespol_zamowienie`) REFERENCES `projekt_zamowienia` (`id_zamowienie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_podzespoly`
--

LOCK TABLES `projekt_podzespoly` WRITE;
/*!40000 ALTER TABLE `projekt_podzespoly` DISABLE KEYS */;
INSERT INTO `projekt_podzespoly` (`id_podzespol`, `nazwa_podzespol`, `marka_podzespol`, `cena_podzespol`, `id_podzespol_zamowienie`) VALUES (1,'płyta główna','ASRock',430,1),(2,'serwer','DELL PowerEdge',950,2),(3,'system operacyjny','Windows 10',50,3),(4,'serwer','Synolgy 10',670,4),(5,'kamera','Hikvision',2120,5),(6,'szafa rack','U27 Dell',4300,6);
/*!40000 ALTER TABLE `projekt_podzespoly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekt_pracownik`
--

DROP TABLE IF EXISTS `projekt_pracownik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_pracownik` (
  `id_pracownik` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(45) DEFAULT NULL,
  `nazwisko` varchar(45) DEFAULT NULL,
  `stanowisko` varchar(45) DEFAULT NULL,
  `data_zatrudnienia` date DEFAULT NULL,
  `data_zwolnienia` date DEFAULT NULL,
  `id_dzial` int NOT NULL,
  PRIMARY KEY (`id_pracownik`),
  KEY `fk_Projekt_pracownik_Projekt_dzial1_idx` (`id_dzial`),
  CONSTRAINT `fk_Projekt_pracownik_Projekt_dzial1` FOREIGN KEY (`id_dzial`) REFERENCES `projekt_dzial` (`id_dzial`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_pracownik`
--

LOCK TABLES `projekt_pracownik` WRITE;
/*!40000 ALTER TABLE `projekt_pracownik` DISABLE KEYS */;
INSERT INTO `projekt_pracownik` (`id_pracownik`, `imie`, `nazwisko`, `stanowisko`, `data_zatrudnienia`, `data_zwolnienia`, `id_dzial`) VALUES (1,'Artur','Sutuła','specjalista','2010-01-27',NULL,2),(2,'Damian','Tomczak','specjalista','2012-02-21',NULL,2),(3,'Matthew','Siatka','specjalista','2010-03-17',NULL,1),(4,'Dominika','Sasko','praktykant','2011-04-07',NULL,1);
/*!40000 ALTER TABLE `projekt_pracownik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekt_status_zamowienia`
--

DROP TABLE IF EXISTS `projekt_status_zamowienia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_status_zamowienia` (
  `id_statusu_zamowienia` int NOT NULL,
  `nazwa_statusu_zamowienia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_statusu_zamowienia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_status_zamowienia`
--

LOCK TABLES `projekt_status_zamowienia` WRITE;
/*!40000 ALTER TABLE `projekt_status_zamowienia` DISABLE KEYS */;
INSERT INTO `projekt_status_zamowienia` (`id_statusu_zamowienia`, `nazwa_statusu_zamowienia`) VALUES (1,'w realizacji'),(2,'zrealizowane');
/*!40000 ALTER TABLE `projekt_status_zamowienia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekt_typ_adresu`
--

DROP TABLE IF EXISTS `projekt_typ_adresu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_typ_adresu` (
  `id_typu` int NOT NULL,
  `nazwa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_typu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_typ_adresu`
--

LOCK TABLES `projekt_typ_adresu` WRITE;
/*!40000 ALTER TABLE `projekt_typ_adresu` DISABLE KEYS */;
INSERT INTO `projekt_typ_adresu` (`id_typu`, `nazwa`) VALUES (1,'Prywatny'),(2,'Firmowy');
/*!40000 ALTER TABLE `projekt_typ_adresu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projekt_zamowienia`
--

DROP TABLE IF EXISTS `projekt_zamowienia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projekt_zamowienia` (
  `id_zamowienie` int NOT NULL AUTO_INCREMENT,
  `nazwa_uslugi` varchar(45) DEFAULT NULL,
  `typ` varchar(45) DEFAULT NULL,
  `opis_problemu` varchar(45) DEFAULT NULL,
  `data_przyjecia` date DEFAULT NULL,
  `data_zwrotu` date DEFAULT NULL,
  `id_statusu` int NOT NULL,
  `id_klient` int NOT NULL,
  `id_koszt` int NOT NULL,
  `id_pracownik` int NOT NULL,
  PRIMARY KEY (`id_zamowienie`),
  KEY `fk_Projekt_zamowienia_Projekt_status_zamowienia1_idx` (`id_statusu`),
  KEY `fk_Projekt_zamowienia_Projekt_klient1_idx` (`id_klient`),
  KEY `fk_Projekt_zamowienia_Projekt_koszt1_idx` (`id_koszt`),
  KEY `fk_Projekt_zamowienia_Projekt_pracownik1_idx` (`id_pracownik`),
  CONSTRAINT `fk_Projekt_zamowienia_Projekt_klient1` FOREIGN KEY (`id_klient`) REFERENCES `projekt_klient` (`id_klient`),
  CONSTRAINT `fk_Projekt_zamowienia_Projekt_koszt1` FOREIGN KEY (`id_koszt`) REFERENCES `projekt_koszt` (`id_koszt`),
  CONSTRAINT `fk_Projekt_zamowienia_Projekt_pracownik1` FOREIGN KEY (`id_pracownik`) REFERENCES `projekt_pracownik` (`id_pracownik`),
  CONSTRAINT `fk_Projekt_zamowienia_Projekt_status_zamowienia1` FOREIGN KEY (`id_statusu`) REFERENCES `projekt_status_zamowienia` (`id_statusu_zamowienia`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projekt_zamowienia`
--

LOCK TABLES `projekt_zamowienia` WRITE;
/*!40000 ALTER TABLE `projekt_zamowienia` DISABLE KEYS */;
INSERT INTO `projekt_zamowienia` (`id_zamowienie`, `nazwa_uslugi`, `typ`, `opis_problemu`, `data_przyjecia`, `data_zwrotu`, `id_statusu`, `id_klient`, `id_koszt`, `id_pracownik`) VALUES (1,'wymiana płyty','hardware','uszkodzony kondensator','2020-12-19','2020-12-21',2,1,1,3),(2,'instalacja SERWERA','hardware','brak','2020-12-22',NULL,1,2,2,3),(3,'instalacja systemu','software','brak systemu na dysku','2020-12-22',NULL,1,3,3,1),(4,'sprzedaż SERWERA','hardware','brak','2020-12-15','2020-12-15',2,4,4,4),(5,'Montaż kamer','hardware','brak','2020-12-22',NULL,1,5,5,3),(6,'Budowa sieci','software','brak','2020-12-15',NULL,1,6,6,2);
/*!40000 ALTER TABLE `projekt_zamowienia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'malons'
--

--
-- Dumping routines for database 'malons'
--
/*!50003 DROP FUNCTION IF EXISTS `duze_litery` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`malons`@`localhost` FUNCTION `duze_litery`(some varchar(1000)) RETURNS varchar(1000) CHARSET utf8mb4
BEGIN
    DECLARE duze varchar(100);
    SELECT UPPER(tekst) INTO duze;
    RETURN duze;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `jak_dlugo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`malons`@`localhost` FUNCTION `jak_dlugo`(id int) RETURNS int
BEGIN
    DECLARE ile INT;
    SELECT datediff(data_zwrotu, data_przyjecia) INTO @ile FROM projekt_zamowienia WHERE id_zamowienie=id;
    RETURN @ile;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `tekst` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`malons`@`localhost` FUNCTION `tekst`() RETURNS varchar(40) CHARSET utf8mb4
BEGIN
    DECLARE tekst varchar(40);
    SELECT UPPER(nazwa) INTO @tekst FROM marynarz;
    RETURN @tekst;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `upper_tekst` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`malons`@`localhost` FUNCTION `upper_tekst`() RETURNS varchar(40) CHARSET utf8mb4
BEGIN
    DECLARE tekst varchar(40);
    SELECT nazwa INTO @tekst FROM marynarz;
    RETURN UPPER(@tekst);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `upper_text` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`malons`@`localhost` FUNCTION `upper_text`() RETURNS int
BEGIN
    DECLARE tekst text;
    SELECT COUNT(*) INTO @tekst FROM kreatura;
    RETURN UPPER(tekst);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliksir_sily` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`malons`@`localhost` PROCEDURE `eliksir_sily`(IN id int)
BEGIN 
UPDATE kreatura SET udzwig = 1.2 * udzwig WHERE idKreatury = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usun_zam_po_gwarancji` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`malons`@`localhost` PROCEDURE `usun_zam_po_gwarancji`()
BEGIN
DELETE FROM Projekt_zamowienia where current_date() - data_zwrotu > 30; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-21 19:58:01
