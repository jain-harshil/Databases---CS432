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
-- Table structure for table `registered_users`
--

DROP TABLE IF EXISTS `registered_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registered_users` (
  `User_I` int(11) NOT NULL,
  `Cust_Name` varchar(15) DEFAULT NULL,
  `Mail_ID` varchar(25) DEFAULT NULL,
  `Pass` varchar(10) DEFAULT NULL,
  `Reg_Date` date DEFAULT NULL,
  PRIMARY KEY (`User_I`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registered_users`
--

LOCK TABLES `registered_users` WRITE;
/*!40000 ALTER TABLE `registered_users` DISABLE KEYS */;
INSERT INTO `registered_users` VALUES (51,'Rakesh','cust3@gmail.com','klmno','2019-06-08'),(55,'Raman','cust6@gmail.com','kuhjy','2015-06-07'),(101,'Harshil','cust@gmail.com','abcde','2001-02-01'),(365,'Rohit','cust9@gmail.com','kuhjy','2016-06-14'),(384,'Anonymous',NULL,NULL,'2014-06-04'),(487,'Sangeeta','cust11@gmail.com','kiujhy','2019-04-18'),(489,'Kartik','cust10@gmail.com','kuhjy','2018-04-17'),(657,'Abhay','cust8@gmail.com','kuhjy','2019-11-15'),(687,'Komal','cust5@gmail.com','uvwxy','2017-11-15'),(967,'Sam','cust2@gmail.com','fghij','2008-08-06'),(987,'Kaushal','cust7@gmail.com','kuhjy','2014-03-08');
/*!40000 ALTER TABLE `registered_users` ENABLE KEYS */;
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
