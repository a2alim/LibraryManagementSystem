CREATE DATABASE  IF NOT EXISTS `librarymanagement` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `librarymanagement`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: librarymanagement
-- ------------------------------------------------------
-- Server version	5.7.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `issuebook`
--

DROP TABLE IF EXISTS `issuebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `issuebook` (
  `Book_ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Publisher` varchar(45) DEFAULT NULL,
  `Edition` varchar(45) DEFAULT NULL,
  `Price` varchar(45) DEFAULT NULL,
  `Pages` varchar(45) DEFAULT NULL,
  `Student_ID` int(11) DEFAULT NULL,
  `St_Name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Issue_Date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuebook`
--

LOCK TABLES `issuebook` WRITE;
/*!40000 ALTER TABLE `issuebook` DISABLE KEYS */;
INSERT INTO `issuebook` VALUES (12,'Java','adfk','2','231','132',15,'Abdul Alim','adoralim121@gmail.com','Male','Bangladeshi','01705768898','2019-06-11'),(13,'sdafds','adsf','3','31432','132413',16,'Ismail Hossain','dskflakjf@kfj','Male','bangladeshi','132124234','2019-06-11');
/*!40000 ALTER TABLE `issuebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newbook`
--

DROP TABLE IF EXISTS `newbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `newbook` (
  `book_Id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `edition` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `page` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`book_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newbook`
--

LOCK TABLES `newbook` WRITE;
/*!40000 ALTER TABLE `newbook` DISABLE KEYS */;
INSERT INTO `newbook` VALUES (12,'Java','adfk','2','231','132'),(13,'sdafds','adsf','3','31432','132413'),(23,'adsf','adsfa','4','3241','14321');
/*!40000 ALTER TABLE `newbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_book`
--

DROP TABLE IF EXISTS `return_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `return_book` (
  `st_id` int(11) NOT NULL,
  `st_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `issue_date` varchar(45) DEFAULT NULL,
  `book_id` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `edition` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `pages` varchar(45) DEFAULT NULL,
  `return_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_book`
--

LOCK TABLES `return_book` WRITE;
/*!40000 ALTER TABLE `return_book` DISABLE KEYS */;
INSERT INTO `return_book` VALUES (15,'Abdul Alim','adoralim121@gmail.com','Male','Bangladeshi',1705768898,'2019-06-11','12','Java','adfk','2','231','132','2019-06-162');
/*!40000 ALTER TABLE `return_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `userdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fulName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `rpassword` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `question` varchar(45) DEFAULT NULL,
  `answer` varchar(45) DEFAULT NULL,
  `dateOfBirth` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `institute` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetails`
--

LOCK TABLES `userdetails` WRITE;
/*!40000 ALTER TABLE `userdetails` DISABLE KEYS */;
INSERT INTO `userdetails` VALUES (15,'Abdul Alim','ador','123','123','01705768898','adoralim121@gmail.com','What is your school name.','123','11/12/1994','Male','Bangladeshi','Bangladeshi','Bangladeshi'),(16,'Ismail Hossain','ismail','123','123','132124234','dskflakjf@kfj','What is your nick name.','is','2019-06-02','Male','bangladeshi','bangladeshi','bangladeshi'),(17,'adsfad','ads','321','321','23134','sdfasdf@','What is your nick name.','fgsdfg','2019-06-10','Male','sfg','sfg','sfg'),(18,'adsfa','sdfasdf','12','12','134','sdfdsf@','What is your mother toung.','agdfasdg','2019-06-11','Male','adsf','adsf','adsf'),(19,'Admin','admin','123','123','01700000000','admin@gmail.com','What is your nick name.','admin','2019-06-11','Male','Bangladeshi','Bangladeshi','Bangladeshi');
/*!40000 ALTER TABLE `userdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'librarymanagement'
--

--
-- Dumping routines for database 'librarymanagement'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-12 10:10:28
