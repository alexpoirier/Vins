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
-- Table structure for table `marque`
--

DROP TABLE IF EXISTS `marque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marque` (
  `RefMarque` int(11) NOT NULL AUTO_INCREMENT,
  `NomMarque` varchar(100) DEFAULT NULL,
  `RegionMarque` varchar(100) DEFAULT NULL,
  `Cepage` varchar(100) DEFAULT NULL,
  `Couleur` varchar(10) DEFAULT NULL,
  `Pastille` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RefMarque`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marque`
--

LOCK TABLES `marque` WRITE;
/*!40000 ALTER TABLE `marque` DISABLE KEYS */;
INSERT INTO `marque` VALUES (1,'Coppola Diamond','Californie','Chardonnay','Blanc',''),(2,'Liberty school chardonnay','Californie','Chardonnay','Blanc','Arromatique-Rond'),(3,'Willm reserve pinot blanc','Alsace','Pinot blanc','Blanc','Fruité-vif'),(4,'Kim Crawford','Nouvelle=Zélande','Sauvignon-Blanc','Blanc','Fruité-vif'),(5,'Fumée Blanche','Cotes-de-Gascogne','Sauvignon-Blanc','Blanc','Fruité-Vif'),(6,'Folonari pinot grigio','Vénétie-Italie','Pinot gris','Blanc','Délica-Léger'),(7,'Si Soave','Vénétie-Italie',NULL,'Blanc','Délica-Léger'),(8,'Les jamelles - Sauvignon blanc','Pays d\'Oc','Sauvignon-Blanc','Blanc','Délica-Léger'),(21,'Clos du Bois','Californie','Carbernet-Savignon','Rouge','Arromatique-Souple'),(22,'Chateau Laffitte Laujac','Bordeaux','Carbernet-Savignon','Rouge',''),(26,'Coppola Directors cut','Californie','Carbernet-Savignon','Rouge',''),(27,'Wyndham Estate Bin 555','Autralie','Shiraz','Rouge','Aromatique-Charnu'),(31,'Le bonheur','Afrique du sud','Cabernet-Sauvignon','Rouge',''),(32,'Chateau St-Jean','Californie','Cabernet-Sauvignon','Rouge','Aromatique-Charnue'),(33,'Greg Norman Limestone','Australie','Cabernet-Merlot','Rouge','Aromatique-Charnu');
/*!40000 ALTER TABLE `marque` ENABLE KEYS */;
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
