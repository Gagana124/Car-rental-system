-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: car_rental
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CAR`
--

DROP TABLE IF EXISTS `CAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAR` (
  `REGISTRATION_NUMBER` char(7) NOT NULL,
  `MODEL_NAME` varchar(25) NOT NULL,
  `MAKE` varchar(25) NOT NULL,
  `MODEL_YEAR` int(4) NOT NULL,
  `MILEAGE` int(11) NOT NULL,
  `CAR_CATEGORY_NAME` varchar(25) NOT NULL,
  `LOC_ID` char(4) NOT NULL,
  `AVAILABILITY_FLAG` char(1) NOT NULL,
  PRIMARY KEY (`REGISTRATION_NUMBER`),
  KEY `CARFK1` (`CAR_CATEGORY_NAME`),
  KEY `CARFK2` (`LOC_ID`),
  CONSTRAINT `CARFK1` FOREIGN KEY (`CAR_CATEGORY_NAME`) REFERENCES `CAR_CATEGORY` (`CATEGORY_NAME`),
  CONSTRAINT `CARFK2` FOREIGN KEY (`LOC_ID`) REFERENCES `LOCATION_DETAILS` (`LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAR`
--

LOCK TABLES `CAR` WRITE;
/*!40000 ALTER TABLE `CAR` DISABLE KEYS */;
INSERT INTO `CAR` VALUES ('ABX1234','CIVIC','HONDA',2014,10000,'ECONOMY','L101','A'),('AHK7325','RAV4','TOYOTA',2016,3400,'MID SIZE SUV','L103','A'),('ASD9090','ACCORD','HONDA',2016,200,'MID SIZE','L103','A'),('CFT1908','328I','BMW',2015,10800,'LUXURY CAR','L104','A'),('CXZ2356','AVENGER','DODGE',2015,5000,'MID SIZE','L102','A'),('EDM8610','GLA','MERCEDEZ BENZ',2015,12900,'MID SIZE SUV','L102','A'),('EFB5427','WAYFARER','FORD',2014,14350,'FULL SIZE','L105','A'),('FKD8202','GOLF','VOLKSWAGAN',2016,9000,'COMPACT','L106','A'),('GLS7625','FOCUS','FORD',2014,12000,'COMPACT','L107','A'),('GLZ2376','COROLLA','TOYOTA',2016,5000,'ECONOMY','L104','A'),('HGF5628','TAURUS','FORD',2013,15540,'STANDARD','L106','A'),('HJK1234','CIVIC','HONDA',2015,20145,'ECONOMY','L102','N'),('HNX1890','PRIUS','TOYOTA',2015,15690,'COMPACT','L105','N'),('JLS1097','SUBURBAN','CHEVROLET',2014,13290,'FULL SIZE SUV','L104','A'),('JSL7920','ODYSSEY','HONDA',2013,19320,'MINI VAN','L106','A'),('KJS1983','PRIUS','TOYOTA',2014,20900,'COMPACT','L104','A'),('LDJ7719','EDGE','FORD',2016,5690,'STANDARD SUV','L101','A'),('LKJ7253','200','CHRYSTLER',2014,16300,'STANDARD','L107','A'),('MKU0172','TLX','ACURA',2014,12345,'LUXURY CAR','L103','A'),('MNB8654','FALCON','FORD',2012,10900,'FULL SIZE','L103','A'),('MWO9296','ODYSSEY','HONDA',2016,2300,'MINI VAN','L103','A'),('OHZ0976','EDGE','FORD',2012,27890,'STANDARD SUV','L104','A'),('OTY7293','CRUZE','CHEVROLET',2016,17800,'MID SIZE','L102','A'),('PAJ5289','GRAND CARAVAN','DODGE',2014,23478,'MINI VAN','L105','A'),('PLM9873','IMPALA','CHEVROLET',2015,18900,'FULL SIZE','L106','A'),('POI7281','200','CHRYSTLER',2016,18830,'STANDARD','L102','N'),('QIO7621','EQUINOX','CHEVROLET',2013,17560,'MID SIZE SUV','L107','A'),('QSC8709','MKZ','LINCOLN',2012,18700,'LUXURY CAR','L101','A'),('QWE4562','LEGACY','SUBARU',2012,13420,'MID SIZE','L101','A'),('RKS9862','TAHOE','CHEVROLET',2013,20390,'STANDARD SUV','L105','A'),('SDF4567','FIESTA','FORD',2015,15000,'ECONOMY','L102','N'),('SDL9356','FOCUS','FORD',2016,10009,'COMPACT','L103','A'),('SHK7767','QUEST','NISSAN',2012,23478,'MINI VAN','L107','A'),('TGB8961','GENESIS','HYUNDAI',2013,17620,'LUXURY CAR','L102','A'),('TRE9726','200','CHRYSTLER',2012,14320,'STANDARD','L105','A'),('TSJ6290','QUEST','NISSAN',2015,13200,'MINI VAN','L104','A'),('UHJ6782','EXPEDITION','FORD',2015,11750,'FULL SIZE SUV','L105','A'),('UHV9786','IMPALA','CHEVROLET',2013,11500,'FULL SIZE','L104','A'),('UIA8709','EXPEDITION','FORD',2012,19870,'FULL SIZE SUV','L102','A'),('UYT3981','LEGACY','SUBARU',2013,16750,'MID SIZE','L104','A'),('VBN6283','TAURUS','FORD',2015,17500,'STANDARD','L101','A'),('WDV2458','FALCON','FORD',2016,5600,'FULL SIZE','L107','A'),('WER3245','ACCENT','HYUNDAI',2014,12356,'ECONOMY','L103','A'),('WHM7619','AVALON','TOYOTA',2016,7800,'LUXURY CAR','L105','A'),('WIJ6190','EDGE','FORD',2014,18700,'STANDARD SUV','L106','A'),('WKJ7972','SEQUOIA','TOYOTA',2013,14500,'FULL SIZE SUV','L103','A'),('WLZ8955','ESCAPE','FORD',2012,19800,'MID SIZE SUV','L106','A'),('XBM6822','SUBURBAN','CHEVROLET',2016,3400,'FULL SIZE SUV','L106','A'),('YSN1927','PATHFINDER','NISSAN',2014,14390,'MID SIZE SUV','L101','A'),('ZDT8612','TAHOE','CHEVROLET',2015,14300,'STANDARD SUV','L107','A');
/*!40000 ALTER TABLE `CAR` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-08 19:09:18