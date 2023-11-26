-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: world
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `confederations`
--

DROP TABLE IF EXISTS `confederations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `confederations` (
  `key_id` int NOT NULL,
  `confederation_id` varchar(10) DEFAULT NULL,
  `confederation_name` varchar(100) DEFAULT NULL,
  `confederation_code` varchar(45) DEFAULT NULL,
  `confederation_wikipedia_link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `key_id_UNIQUE` (`key_id`),
  UNIQUE KEY `confederation_id_UNIQUE` (`confederation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confederations`
--

LOCK TABLES `confederations` WRITE;
/*!40000 ALTER TABLE `confederations` DISABLE KEYS */;
INSERT INTO `confederations` VALUES (1,'CF-1','Asian Football Confederation','AFC','https://en.wikipedia.org/wiki/Asian_Football_Confederation'),(2,'CF-2','Confederation of African Football','CAF','https://en.wikipedia.org/wiki/Confederation_of_African_Football'),(3,'CF-3','Confederation of North, Central American and Caribbean Association Football','CONCACAF','https://en.wikipedia.org/wiki/CONCACAF'),(4,'CF-4','South American Football Confederation','CONMEBOL','https://en.wikipedia.org/wiki/CONMEBOL'),(5,'CF-5','Oceania Football Confederation','OFC','https://en.wikipedia.org/wiki/Oceania_Football_Confederation'),(6,'CF-6','Union of European Football Associations','UEFA','https://en.wikipedia.org/wiki/UEFA');
/*!40000 ALTER TABLE `confederations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-27  0:18:46
