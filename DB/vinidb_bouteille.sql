CREATE DATABASE  IF NOT EXISTS `vinidb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `vinidb`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: vinidb
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `bouteille`
--

DROP TABLE IF EXISTS `bouteille`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bouteille` (
  `RefBout` int(11) NOT NULL AUTO_INCREMENT,
  `AnBout` varchar(4) DEFAULT NULL,
  `Degre` int(11) DEFAULT NULL,
  `Achat` varchar(10) DEFAULT NULL,
  `Garde` varchar(4) DEFAULT NULL,
  `CmtBout` varchar(350) DEFAULT NULL,
  `OuvBout` varchar(350) DEFAULT NULL,
  `EmplBout` varchar(45) DEFAULT NULL,
  `RefMarque` int(11) DEFAULT NULL,
  `Prix` decimal(8,2) DEFAULT NULL,
  `DateBu` varchar(10) DEFAULT NULL,
  `NoteBu` decimal(9,1) DEFAULT NULL,
  `CmtBu` varchar(350) DEFAULT NULL,
  PRIMARY KEY (`RefBout`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bouteille`
--

LOCK TABLES `bouteille` WRITE;
/*!40000 ALTER TABLE `bouteille` DISABLE KEYS */;
INSERT INTO `bouteille` VALUES (1,'2012',9,'2014-03-15','2014',NULL,NULL,'Bu',1,22.00,'2014-03-22',7.0,'Bon, un peu trop sucré'),(2,'2011',10,'2013-12-01','2015',NULL,NULL,'Haut',2,19.95,NULL,NULL,NULL),(3,'2012',8,'2014-04-04','2014',NULL,NULL,'Haut',3,16.40,NULL,NULL,NULL),(4,'2013',10,'2014-01-10','2016',NULL,NULL,'Cave',4,20.95,NULL,NULL,NULL),(5,'2012',9,'2014-03-15','2014',NULL,NULL,'Haut',1,22.00,NULL,NULL,NULL),(6,'2012',10,'2013-12-01','2014',NULL,NULL,'Bu',5,14.75,'2014-02-15',7.5,'Bon avec sushi'),(7,'2013',10,'2013-12-10','2014',NULL,NULL,'Bu',6,15.75,'2014-03-28',7.5,'Bon doux'),(8,'2012',10,'2013-12-10','2014',NULL,NULL,'Bu',7,14.35,'2014-01-18',7.0,'Bon'),(9,'2012',10,'2014-01-01','2014',NULL,NULL,'Bu',8,13.30,'2014-04-04',7.5,'Bon doux'),(10,'2011',16,'2013-12-31','2016','Acheté par Mathieu','','Bu',21,17.95,'2014-01-12',8.0,'Bon pas trop fort'),(11,'2010',16,'2014-02-22','2020','','Mettre en carafe 30 min','Cave',22,25.40,NULL,NULL,NULL),(15,'2012',16,'2014-03-28','2020','','Mettre en carafe 30 min','Cave',26,29.95,NULL,NULL,NULL),(16,'2012',16,'2014-03-28','2020','','Mettre en carafe 30 min','Cave',26,29.95,NULL,NULL,NULL),(17,'2012',16,'2014-03-28','2016','','','Bu',27,18.95,'2014-01-17',7.5,'Bon sucré meilleur froid'),(18,'2010',16,'2014-02-08','2017','','','Haut',31,23.30,NULL,NULL,NULL),(19,'2011',17,'2014-02-22','2017','','Mettre en carafe','Haut',32,20.00,NULL,NULL,NULL),(20,'2010',17,'2014-01-01','2015','','','Bu',33,22.95,'2014-01-31',7.5,'Bon');
/*!40000 ALTER TABLE `bouteille` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-28 22:10:19
