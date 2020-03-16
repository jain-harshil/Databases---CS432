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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `Product_ID` int(11) NOT NULL,
  `Product_Type` varchar(11) DEFAULT NULL,
  `Retailer_Name` varchar(6) DEFAULT NULL,
  `Quantity_left` int(11) DEFAULT NULL,
  `Date_when_added` date DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Product_Description` varchar(4) DEFAULT NULL,
  `Product_Name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (51,'Electronics','lkea',15,'2017-03-24',54900,NULL,'Dell Inspiron Laptop'),(101,'Book','lkea',10,'2018-03-02',5200,NULL,'The Lost Symbol'),(102,'Book','ram',12,'2020-02-06',1500,NULL,'Harry Porter'),(103,'Book','ram',5,'2019-09-19',3050,NULL,'The Book Thief'),(104,'Book','ramesh',15,'2016-07-18',7500,NULL,'The Ends of World'),(105,'Book','abhay',34,'2020-02-03',500,NULL,'Living with a Seal'),(107,'Electronics','lkea',2,'2020-01-01',26100,NULL,'Oracle Smartphone'),(108,'Electronics','yash',12,'2018-03-02',46800,NULL,'HP Pavilion Laptop'),(109,'Electronics','ramesh',50,'2018-08-04',16000,NULL,'Vivo Z1 Pro'),(110,'Electronics','abhay',14,'2019-06-30',90000,NULL,'Apple Macbook Air'),(111,'Furniture','yash',16,'2020-02-01',120000,NULL,'Sofa'),(112,'Furniture','ram',18,'2019-12-31',10000,NULL,'Armchair'),(113,'Furniture','ramesh',16,'2019-04-01',28000,NULL,'Bed'),(114,'Furniture','lkea',24,'2018-11-09',15600,NULL,'Cradle'),(115,'Furniture','abhay',1,'2019-10-01',13050,NULL,'Table'),(116,'Book','abhay',5,'2018-11-05',1200,NULL,'Start Again'),(117,'Book','ram',4,'2005-02-01',5412,NULL,'Lost in Battle'),(118,'Book','ramesh',6,'2016-08-04',2450,NULL,'Perfect Fake'),(119,'Book','ram',15,'2018-03-05',1456,NULL,'Elegantly Wasted'),(120,'Book','yash',25,'2017-09-16',1987,NULL,'Hate Burns'),(121,'Electronics','abhay',15,'2019-06-30',2000,NULL,'Redmi Note 7'),(122,'Electronics','ram',14,'2020-02-01',5000,NULL,'Asus Predator'),(123,'Electronics','ramesh',12,'2019-12-31',18000,NULL,'Asus Laptop'),(124,'Electronics','ram',9,'2019-04-01',48600,NULL,'HP Omen Laptop'),(125,'Electronics','yash',11,'2018-11-09',21870,NULL,'Motorola Z5'),(126,'Furniture','abhay',17,'2018-11-05',1000,NULL,'Cabinet'),(127,'Furniture','ram',16,'2005-02-01',2000,NULL,'Game Table'),(128,'Furniture','ramesh',18,'2016-08-04',3000,NULL,'Deck Chair'),(129,'Furniture','ram',15,'2018-03-05',4500,NULL,'Hall Tree'),(130,'Furniture','yash',20,'2017-09-16',5850,NULL,'Big Bed');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
