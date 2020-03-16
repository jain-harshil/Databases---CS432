-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: test2
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `past_orders`
--

DROP TABLE IF EXISTS `past_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `past_orders` (
  `Ind` int(11) NOT NULL,
  `Order_ID` int(11) DEFAULT NULL,
  `User_I` int(11) DEFAULT NULL,
  `Product_ID` int(11) DEFAULT NULL,
  `Total_Amount` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Review` varchar(4) DEFAULT NULL,
  `Purchase_Date` date DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Views` int(11) DEFAULT NULL,
  PRIMARY KEY (`Ind`),
  KEY `User_I` (`User_I`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `past_orders_ibfk_1` FOREIGN KEY (`User_I`) REFERENCES `registered_users` (`User_I`),
  CONSTRAINT `past_orders_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `past_orders`
--

LOCK TABLES `past_orders` WRITE;
/*!40000 ALTER TABLE `past_orders` DISABLE KEYS */;
INSERT INTO `past_orders` VALUES (1,1000,101,51,61000,1,NULL,'2019-02-01',1,10),(2,1001,687,107,25000,4,NULL,'2018-08-06',2,12),(3,1005,51,114,4600,5,NULL,'2017-06-04',5,5),(4,1004,384,103,3000,NULL,NULL,'2001-07-15',4,9),(5,1002,967,115,14500,2,NULL,'2018-06-19',3,14),(6,1000,101,108,51000,4,NULL,'2017-06-24',5,13),(7,1009,101,107,29000,5,NULL,'2016-06-19',4,19),(8,1010,55,104,7500,5,NULL,'2014-05-26',2,3),(9,1015,55,107,25000,5,NULL,'2017-05-26',1,8),(10,1016,384,114,4600,NULL,NULL,'2010-07-15',1,7);
/*!40000 ALTER TABLE `past_orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-28 18:48:08
