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
-- Table structure for table `groups_`
--

DROP TABLE IF EXISTS `groups_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_` (
  `key_id` int NOT NULL,
  `tournament_id` varchar(45) DEFAULT NULL,
  `tournament_name` varchar(45) DEFAULT NULL,
  `stage_number` int DEFAULT NULL,
  `stage_name` varchar(45) DEFAULT NULL,
  `group_name` varchar(45) DEFAULT NULL,
  `count_teams` int DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `key_id_UNIQUE` (`key_id`),
  KEY `tournament_id_idx` (`tournament_id`),
  CONSTRAINT `tournament_id` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`tournament_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_`
--

LOCK TABLES `groups_` WRITE;
/*!40000 ALTER TABLE `groups_` DISABLE KEYS */;
INSERT INTO `groups_` VALUES (1,'WC-1930','1930 FIFA World Cup',1,'group stage','Group 1',4),(2,'WC-1930','1930 FIFA World Cup',1,'group stage','Group 2',3),(3,'WC-1930','1930 FIFA World Cup',1,'group stage','Group 3',3),(4,'WC-1930','1930 FIFA World Cup',1,'group stage','Group 4',3),(5,'WC-1950','1950 FIFA World Cup',1,'first round','Group 1',4),(6,'WC-1950','1950 FIFA World Cup',1,'first round','Group 2',4),(7,'WC-1950','1950 FIFA World Cup',1,'first round','Group 3',3),(8,'WC-1950','1950 FIFA World Cup',1,'first round','Group 4',2),(9,'WC-1950','1950 FIFA World Cup',2,'final round','Group 1',4),(10,'WC-1954','1954 FIFA World Cup',1,'group stage','Group 1',4),(11,'WC-1954','1954 FIFA World Cup',1,'group stage','Group 2',4),(12,'WC-1954','1954 FIFA World Cup',1,'group stage','Group 3',4),(13,'WC-1954','1954 FIFA World Cup',1,'group stage','Group 4',4),(14,'WC-1958','1958 FIFA World Cup',1,'group stage','Group 1',4),(15,'WC-1958','1958 FIFA World Cup',1,'group stage','Group 2',4),(16,'WC-1958','1958 FIFA World Cup',1,'group stage','Group 3',4),(17,'WC-1958','1958 FIFA World Cup',1,'group stage','Group 4',4),(18,'WC-1962','1962 FIFA World Cup',1,'group stage','Group 1',4),(19,'WC-1962','1962 FIFA World Cup',1,'group stage','Group 2',4),(20,'WC-1962','1962 FIFA World Cup',1,'group stage','Group 3',4),(21,'WC-1962','1962 FIFA World Cup',1,'group stage','Group 4',4),(22,'WC-1966','1966 FIFA World Cup',1,'group stage','Group 1',4),(23,'WC-1966','1966 FIFA World Cup',1,'group stage','Group 2',4),(24,'WC-1966','1966 FIFA World Cup',1,'group stage','Group 3',4),(25,'WC-1966','1966 FIFA World Cup',1,'group stage','Group 4',4),(26,'WC-1970','1970 FIFA World Cup',1,'group stage','Group 1',4),(27,'WC-1970','1970 FIFA World Cup',1,'group stage','Group 2',4),(28,'WC-1970','1970 FIFA World Cup',1,'group stage','Group 3',4),(29,'WC-1970','1970 FIFA World Cup',1,'group stage','Group 4',4),(30,'WC-1974','1974 FIFA World Cup',1,'first group stage','Group 1',4),(31,'WC-1974','1974 FIFA World Cup',1,'first group stage','Group 2',4),(32,'WC-1974','1974 FIFA World Cup',1,'first group stage','Group 3',4),(33,'WC-1974','1974 FIFA World Cup',1,'first group stage','Group 4',4),(34,'WC-1974','1974 FIFA World Cup',2,'second group stage','Group A',4),(35,'WC-1974','1974 FIFA World Cup',2,'second group stage','Group B',4),(36,'WC-1978','1978 FIFA World Cup',1,'first group stage','Group 1',4),(37,'WC-1978','1978 FIFA World Cup',1,'first group stage','Group 2',4),(38,'WC-1978','1978 FIFA World Cup',1,'first group stage','Group 3',4),(39,'WC-1978','1978 FIFA World Cup',1,'first group stage','Group 4',4),(40,'WC-1978','1978 FIFA World Cup',2,'second group stage','Group A',4),(41,'WC-1978','1978 FIFA World Cup',2,'second group stage','Group B',4),(42,'WC-1982','1982 FIFA World Cup',1,'first group stage','Group 1',4),(43,'WC-1982','1982 FIFA World Cup',1,'first group stage','Group 2',4),(44,'WC-1982','1982 FIFA World Cup',1,'first group stage','Group 3',4),(45,'WC-1982','1982 FIFA World Cup',1,'first group stage','Group 4',4),(46,'WC-1982','1982 FIFA World Cup',1,'first group stage','Group 5',4),(47,'WC-1982','1982 FIFA World Cup',1,'first group stage','Group 6',4),(48,'WC-1982','1982 FIFA World Cup',2,'second group stage','Group A',3),(49,'WC-1982','1982 FIFA World Cup',2,'second group stage','Group B',3),(50,'WC-1982','1982 FIFA World Cup',2,'second group stage','Group C',3),(51,'WC-1982','1982 FIFA World Cup',2,'second group stage','Group D',3),(52,'WC-1986','1986 FIFA World Cup',1,'group stage','Group A',4),(53,'WC-1986','1986 FIFA World Cup',1,'group stage','Group B',4),(54,'WC-1986','1986 FIFA World Cup',1,'group stage','Group C',4),(55,'WC-1986','1986 FIFA World Cup',1,'group stage','Group D',4),(56,'WC-1986','1986 FIFA World Cup',1,'group stage','Group E',4),(57,'WC-1986','1986 FIFA World Cup',1,'group stage','Group F',4),(58,'WC-1990','1990 FIFA World Cup',1,'group stage','Group A',4),(59,'WC-1990','1990 FIFA World Cup',1,'group stage','Group B',4),(60,'WC-1990','1990 FIFA World Cup',1,'group stage','Group C',4),(61,'WC-1990','1990 FIFA World Cup',1,'group stage','Group D',4),(62,'WC-1990','1990 FIFA World Cup',1,'group stage','Group E',4),(63,'WC-1990','1990 FIFA World Cup',1,'group stage','Group F',4),(64,'WC-1994','1994 FIFA World Cup',1,'group stage','Group A',4),(65,'WC-1994','1994 FIFA World Cup',1,'group stage','Group B',4),(66,'WC-1994','1994 FIFA World Cup',1,'group stage','Group C',4),(67,'WC-1994','1994 FIFA World Cup',1,'group stage','Group D',4),(68,'WC-1994','1994 FIFA World Cup',1,'group stage','Group E',4),(69,'WC-1994','1994 FIFA World Cup',1,'group stage','Group F',4),(70,'WC-1998','1998 FIFA World Cup',1,'group stage','Group A',4),(71,'WC-1998','1998 FIFA World Cup',1,'group stage','Group B',4),(72,'WC-1998','1998 FIFA World Cup',1,'group stage','Group C',4),(73,'WC-1998','1998 FIFA World Cup',1,'group stage','Group D',4),(74,'WC-1998','1998 FIFA World Cup',1,'group stage','Group E',4),(75,'WC-1998','1998 FIFA World Cup',1,'group stage','Group F',4),(76,'WC-1998','1998 FIFA World Cup',1,'group stage','Group G',4),(77,'WC-1998','1998 FIFA World Cup',1,'group stage','Group H',4),(78,'WC-2002','2002 FIFA World Cup',1,'group stage','Group A',4),(79,'WC-2002','2002 FIFA World Cup',1,'group stage','Group B',4),(80,'WC-2002','2002 FIFA World Cup',1,'group stage','Group C',4),(81,'WC-2002','2002 FIFA World Cup',1,'group stage','Group D',4),(82,'WC-2002','2002 FIFA World Cup',1,'group stage','Group E',4),(83,'WC-2002','2002 FIFA World Cup',1,'group stage','Group F',4),(84,'WC-2002','2002 FIFA World Cup',1,'group stage','Group G',4),(85,'WC-2002','2002 FIFA World Cup',1,'group stage','Group H',4),(86,'WC-2006','2006 FIFA World Cup',1,'group stage','Group A',4),(87,'WC-2006','2006 FIFA World Cup',1,'group stage','Group B',4),(88,'WC-2006','2006 FIFA World Cup',1,'group stage','Group C',4),(89,'WC-2006','2006 FIFA World Cup',1,'group stage','Group D',4),(90,'WC-2006','2006 FIFA World Cup',1,'group stage','Group E',4),(91,'WC-2006','2006 FIFA World Cup',1,'group stage','Group F',4),(92,'WC-2006','2006 FIFA World Cup',1,'group stage','Group G',4),(93,'WC-2006','2006 FIFA World Cup',1,'group stage','Group H',4),(94,'WC-2010','2010 FIFA World Cup',1,'group stage','Group A',4),(95,'WC-2010','2010 FIFA World Cup',1,'group stage','Group B',4),(96,'WC-2010','2010 FIFA World Cup',1,'group stage','Group C',4),(97,'WC-2010','2010 FIFA World Cup',1,'group stage','Group D',4),(98,'WC-2010','2010 FIFA World Cup',1,'group stage','Group E',4),(99,'WC-2010','2010 FIFA World Cup',1,'group stage','Group F',4),(100,'WC-2010','2010 FIFA World Cup',1,'group stage','Group G',4),(101,'WC-2010','2010 FIFA World Cup',1,'group stage','Group H',4),(102,'WC-2014','2014 FIFA World Cup',1,'group stage','Group A',4),(103,'WC-2014','2014 FIFA World Cup',1,'group stage','Group B',4),(104,'WC-2014','2014 FIFA World Cup',1,'group stage','Group C',4),(105,'WC-2014','2014 FIFA World Cup',1,'group stage','Group D',4),(106,'WC-2014','2014 FIFA World Cup',1,'group stage','Group E',4),(107,'WC-2014','2014 FIFA World Cup',1,'group stage','Group F',4),(108,'WC-2014','2014 FIFA World Cup',1,'group stage','Group G',4),(109,'WC-2014','2014 FIFA World Cup',1,'group stage','Group H',4),(110,'WC-2018','2018 FIFA World Cup',1,'group stage','Group A',4),(111,'WC-2018','2018 FIFA World Cup',1,'group stage','Group B',4),(112,'WC-2018','2018 FIFA World Cup',1,'group stage','Group C',4),(113,'WC-2018','2018 FIFA World Cup',1,'group stage','Group D',4),(114,'WC-2018','2018 FIFA World Cup',1,'group stage','Group E',4),(115,'WC-2018','2018 FIFA World Cup',1,'group stage','Group F',4),(116,'WC-2018','2018 FIFA World Cup',1,'group stage','Group G',4),(117,'WC-2018','2018 FIFA World Cup',1,'group stage','Group H',4);
/*!40000 ALTER TABLE `groups_` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-25  6:36:59
