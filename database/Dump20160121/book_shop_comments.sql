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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `text` text NOT NULL,
  `book_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `fk_comments_book_id` (`book_id`),
  KEY `fk_comments_user_id` (`user_id`),
  CONSTRAINT `fk_comments_book_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  CONSTRAINT `fk_comments_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (3,'Title comment 1','Commnet text 1',1,1,'2016-01-21 10:41:19','0000-00-00 00:00:00'),(4,'Title comment 2','Commnet text 2',1,2,'2016-01-21 10:41:19','0000-00-00 00:00:00'),(5,'Title comment 3','Commnet text 3',2,1,'2016-01-21 10:41:19','0000-00-00 00:00:00'),(6,'Title comment 4','Commnet text 4',2,2,'2016-01-21 10:41:19','0000-00-00 00:00:00'),(7,'Title comment 5','Commnet text 5',3,2,'2016-01-21 10:41:19','0000-00-00 00:00:00'),(8,'Title comment 6','Commnet text 6',3,3,'2016-01-21 10:41:19','0000-00-00 00:00:00'),(9,'Title comment 7','Commnet text 7',2,2,'2016-01-21 10:41:19','0000-00-00 00:00:00'),(10,'Title comment 8','Commnet text 8',2,3,'2016-01-21 10:41:19','0000-00-00 00:00:00'),(11,'Title comment 9','Commnet text 9',3,3,'2016-01-21 10:41:19','0000-00-00 00:00:00'),(12,'Title comment 10','Commnet text 10',3,4,'2016-01-21 10:41:19','0000-00-00 00:00:00'),(13,'Title comment 11','Commnet text 11',4,3,'2016-01-21 10:41:19','0000-00-00 00:00:00'),(14,'Title comment 12','Commnet text 12',4,4,'2016-01-21 10:41:19','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-21 14:08:37
