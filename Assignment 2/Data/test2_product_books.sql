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
-- Table structure for table `product_books`
--

DROP TABLE IF EXISTS `product_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_books` (
  `Book_Name` varchar(18) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Year_Published` int(11) NOT NULL,
  `Author` varchar(25) NOT NULL,
  PRIMARY KEY (`Book_Name`),
  KEY `Product_ID` (`Product_ID`),
  CONSTRAINT `product_books_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_books`
--

LOCK TABLES `product_books` WRITE;
/*!40000 ALTER TABLE `product_books` DISABLE KEYS */;
INSERT INTO `product_books` VALUES ('Elegently Wasted',119,1978,'George Eliot'),('Harry Porter',102,2010,'Stephen King'),('Hate Burns',120,1999,'Philip Roth'),('Living with a Seal',105,1999,'Leo Tolstoy'),('Lost in Battle',117,2007,'Mark Twain'),('Perfectly Fake',118,2000,'William Shakespeare'),('Start Again',116,1998,'James Joyce'),('The Book Thief',103,2005,'Franz Kafka'),('The Ends of World',104,2009,'Jane Austen'),('The Lost Symbol',101,1993,'Charles Dickens');
/*!40000 ALTER TABLE `product_books` ENABLE KEYS */;
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
