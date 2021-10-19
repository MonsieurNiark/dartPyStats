-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: localhost    Database: dart
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `dart_case`
--

DROP TABLE IF EXISTS `dart_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dart_case` (
  `id_dart_case` int NOT NULL AUTO_INCREMENT,
  `label` varchar(45) NOT NULL,
  `value` int NOT NULL,
  `input_x` int NOT NULL,
  `input_y` int NOT NULL,
  PRIMARY KEY (`id_dart_case`),
  UNIQUE KEY `id_case_UNIQUE` (`id_dart_case`),
  UNIQUE KEY `label_UNIQUE` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dart_case`
--

LOCK TABLES `dart_case` WRITE;
/*!40000 ALTER TABLE `dart_case` DISABLE KEYS */;
INSERT INTO `dart_case` VALUES (64,'S1',1,5,9),(65,'S2',2,2,3),(66,'S3',3,2,1),(67,'S4',4,5,1),(68,'S5',5,5,4),(69,'S6',6,5,3),(70,'S7',7,2,9),(71,'S8',8,2,4),(72,'S9',9,5,8),(73,'S10',10,5,5),(74,'S11',11,2,6),(75,'S12',12,5,6),(76,'S13',13,5,2),(77,'S14',14,2,8),(78,'S15',15,2,5),(79,'S16',16,2,7),(80,'S17',17,2,2),(81,'S18',18,5,0),(82,'S19',19,2,0),(83,'S20',20,5,7),(84,'D1',1,4,9),(85,'D2',2,1,3),(86,'D3',3,1,1),(87,'D4',4,4,1),(88,'D5',5,4,4),(89,'D6',6,4,3),(90,'D7',7,1,9),(91,'D8',8,1,4),(92,'D9',9,4,8),(93,'D10',10,4,5),(94,'D11',11,1,6),(95,'D12',12,4,6),(96,'D13',13,4,2),(97,'D14',14,1,8),(98,'D15',15,1,5),(99,'D16',16,1,7),(100,'D17',17,1,2),(101,'D18',18,4,0),(102,'D19',19,1,0),(103,'D20',20,4,7),(104,'T1',1,6,9),(105,'T2',2,0,3),(106,'T3',3,0,1),(107,'T4',4,6,1),(108,'T5',5,6,4),(109,'T6',6,6,3),(110,'T7',7,0,9),(111,'T8',8,0,4),(112,'T9',9,6,8),(113,'T10',10,6,5),(114,'T11',11,0,6),(115,'T12',12,6,6),(116,'T13',13,6,2),(117,'T14',14,0,8),(118,'T15',15,0,5),(119,'T16',16,0,7),(120,'T17',17,0,2),(121,'T18',18,6,0),(122,'T19',19,0,0),(123,'T20',20,6,7),(124,'SBULL',25,3,6),(125,'DBULL',50,3,8);
/*!40000 ALTER TABLE `dart_case` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-19 13:51:54
