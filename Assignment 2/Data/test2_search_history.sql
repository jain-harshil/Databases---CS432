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
-- Table structure for table `search_history`
--

DROP TABLE IF EXISTS `search_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_history` (
  `Ind` int(11) NOT NULL,
  `User_I` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Time_stamp` date NOT NULL,
  PRIMARY KEY (`Ind`),
  KEY `User_I` (`User_I`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `search_history_ibfk_1` FOREIGN KEY (`User_I`) REFERENCES `registered_users` (`User_I`),
  CONSTRAINT `search_history_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_history`
--

LOCK TABLES `search_history` WRITE;
/*!40000 ALTER TABLE `search_history` DISABLE KEYS */;
INSERT INTO `search_history` VALUES (1,101,126,'2019-04-15'),(2,967,107,'2018-06-09'),(3,487,115,'2018-05-19'),(5,687,122,'2014-07-19'),(6,967,118,'2020-01-15'),(7,101,119,'2019-12-31'),(8,687,124,'2019-11-20'),(10,101,130,'2020-01-01'),(11,967,130,'2020-01-15'),(12,51,130,'2020-02-01'),(14,687,130,'2020-02-01'),(15,55,130,'2020-01-15'),(16,987,130,'2020-01-28'),(17,657,130,'2020-02-01'),(18,365,130,'2020-01-15'),(19,489,130,'2020-02-01'),(20,101,51,'2019-01-31'),(21,101,108,'2017-06-20'),(22,101,107,'2016-06-17'),(23,101,118,'2020-01-15'),(24,101,120,'2020-01-28'),(25,101,121,'2020-02-01'),(26,101,122,'2020-01-15'),(27,101,123,'2020-02-01'),(28,101,124,'2019-01-31'),(29,101,125,'2017-06-20'),(30,101,127,'2016-06-17');
/*!40000 ALTER TABLE `search_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-28 18:48:09
