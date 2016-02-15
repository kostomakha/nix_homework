CREATE DATABASE  IF NOT EXISTS `book_shop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `book_shop`;
-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (i686)
--
-- Host: 127.0.0.1    Database: book_shop
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(4,2) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Book title 1','1955-05-23 00:00:00','255-23-23-23','Book description 1',10.00,'2016-01-21 10:39:32','0000-00-00 00:00:00'),(2,'Book title 2','1923-10-24 00:00:00','255-23-23-22','Book description 2',11.00,'2016-01-21 10:39:32','0000-00-00 00:00:00'),(3,'Book title 3','1945-08-05 00:00:00','255-23-23-21','Book description 3',12.00,'2016-01-21 10:39:32','0000-00-00 00:00:00'),(4,'Book title 4','1955-05-26 00:00:00','255-23-23-20','Book description 4',13.00,'2016-01-21 10:39:32','0000-00-00 00:00:00'),(5,'Book title 5','1955-05-27 00:00:00','255-23-23-19','Book description 5',14.00,'2016-01-21 10:39:32','0000-00-00 00:00:00'),(6,'Book title 6','1955-05-28 00:00:00','255-23-23-18','Book description 6',15.00,'2016-01-21 10:39:32','0000-00-00 00:00:00'),(7,'Book title 7','1955-05-29 00:00:00','255-23-23-17','Book description 7',16.00,'2016-01-21 10:39:32','0000-00-00 00:00:00'),(8,'Book title 8','1955-05-30 00:00:00','255-23-23-16','Book description 8',17.00,'2016-01-21 10:39:32','0000-00-00 00:00:00'),(9,'Book title 9','1955-05-31 00:00:00','255-23-23-15','Book description 9',18.00,'2016-01-21 10:39:32','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-21 14:08:38
