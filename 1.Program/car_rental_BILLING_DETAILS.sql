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
-- Table structure for table `BILLING_DETAILS`
--

DROP TABLE IF EXISTS `BILLING_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BILLING_DETAILS` (
  `BILL_ID` char(6) NOT NULL,
  `BILL_DATE` date NOT NULL,
  `BILL_STATUS` char(1) NOT NULL,
  `DISCOUNT_AMOUNT` int(11) NOT NULL,
  `TOTAL_AMOUNT` int(11) NOT NULL,
  `TAX_AMOUNT` int(11) NOT NULL,
  `BOOKING_ID` char(5) NOT NULL,
  `TOTAL_LATE_FEE` int(11) NOT NULL,
  PRIMARY KEY (`BILL_ID`),
  KEY `BILLINGFK1` (`BOOKING_ID`),
  CONSTRAINT `BILLINGFK1` FOREIGN KEY (`BOOKING_ID`) REFERENCES `BOOKING_DETAILS` (`BOOKING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BILLING_DETAILS`
--

LOCK TABLES `BILLING_DETAILS` WRITE;
/*!40000 ALTER TABLE `BILLING_DETAILS` DISABLE KEYS */;
INSERT INTO `BILLING_DETAILS` VALUES ('BL1001','2016-01-25','P',24,138,12,'B1001',0),('BL1002','2016-01-15','P',0,487,12,'B1003',0),('BL1003','2016-04-24','P',10,42,4,'B1004',0);
/*!40000 ALTER TABLE `BILLING_DETAILS` ENABLE KEYS */;
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