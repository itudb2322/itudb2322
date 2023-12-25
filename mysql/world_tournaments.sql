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
-- Table structure for table `tournaments`
--

DROP TABLE IF EXISTS `tournaments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournaments` (
  `key_id` int NOT NULL,
  `tournament_id` varchar(45) DEFAULT NULL,
  `tournament_name` varchar(45) DEFAULT NULL,
  `year_` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `host_country` varchar(45) DEFAULT NULL,
  `winner` varchar(45) DEFAULT NULL,
  `host_won` tinyint DEFAULT NULL,
  `count_teams` int DEFAULT NULL,
  `group_stage` tinyint DEFAULT NULL,
  `second_group_stage` tinyint DEFAULT NULL,
  `final_round` tinyint DEFAULT NULL,
  `round_of_16` tinyint DEFAULT NULL,
  `quarter_finals` tinyint DEFAULT NULL,
  `semi_finals` tinyint DEFAULT NULL,
  `third_place_match` tinyint DEFAULT NULL,
  `final` tinyint DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `key_id_UNIQUE` (`key_id`),
  UNIQUE KEY `tournament_id_UNIQUE` (`tournament_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments`
--

LOCK TABLES `tournaments` WRITE;
/*!40000 ALTER TABLE `tournaments` DISABLE KEYS */;
INSERT INTO `tournaments` VALUES (1,'WC-1930','1930 FIFA World Cup','1930','1930-07-13','1930-07-30','Uruguay','Uruguay',1,13,1,0,0,0,0,1,0,1),(2,'WC-1934','1934 FIFA World Cup','1934','1934-05-27','1934-06-10','Italy','Italy',1,16,0,0,0,1,1,1,1,1),(3,'WC-1938','1938 FIFA World Cup','1938','1938-06-04','1938-06-19','France','Italy',0,15,0,0,0,1,1,1,1,1),(4,'WC-1950','1950 FIFA World Cup','1950','1950-06-24','1950-07-16','Brazil','Uruguay',0,13,1,0,1,0,0,0,0,0),(5,'WC-1954','1954 FIFA World Cup','1954','1954-06-16','1954-07-04','Switzerland','West Germany',0,16,1,0,0,0,1,1,1,1),(6,'WC-1958','1958 FIFA World Cup','1958','1958-06-08','1958-06-29','Sweden','Brazil',0,16,1,0,0,0,1,1,1,1),(7,'WC-1962','1962 FIFA World Cup','1962','1962-05-30','1962-07-17','Chile','Brazil',0,16,1,0,0,0,1,1,1,1),(8,'WC-1966','1966 FIFA World Cup','1966','1966-07-11','1966-07-30','England','England',1,16,1,0,0,0,1,1,1,1),(9,'WC-1970','1970 FIFA World Cup','1970','1970-05-31','1970-06-21','Mexico','Brazil',0,16,1,0,0,0,1,1,1,1),(10,'WC-1974','1974 FIFA World Cup','1974','1974-06-13','1974-07-07','West Germany','West Germany',1,16,1,1,0,0,0,0,1,1),(11,'WC-1978','1978 FIFA World Cup','1978','1978-06-01','1978-06-25','Argentina','Argentina',1,16,1,1,0,0,0,0,1,1),(12,'WC-1982','1982 FIFA World Cup','1982','1982-06-13','1982-07-11','Spain','Italy',0,24,1,1,0,0,0,1,1,1),(13,'WC-1986','1986 FIFA World Cup','1986','1986-05-31','1986-06-29','Mexico','Argentina',0,24,1,0,0,1,1,1,1,1),(14,'WC-1990','1990 FIFA World Cup','1990','1990-06-08','1990-07-08','Italy','West Germany',0,24,1,0,0,1,1,1,1,1),(15,'WC-1994','1994 FIFA World Cup','1994','1994-06-17','1994-07-17','United States','Brazil',0,24,1,0,0,1,1,1,1,1),(16,'WC-1998','1998 FIFA World Cup','1998','1998-06-10','1998-07-12','France','France',1,32,1,0,0,1,1,1,1,1),(17,'WC-2002','2002 FIFA World Cup','2002','2002-05-31','2002-06-30','Korea','Brazil',0,32,1,0,0,1,1,1,1,1),(18,'WC-2006','2006 FIFA World Cup','2006','2006-06-09','2006-07-09','Germany','Italy',0,32,1,0,0,1,1,1,1,1),(19,'WC-2010','2010 FIFA World Cup','2010','2010-06-11','2010-07-11','South Africa','Spain',0,32,1,0,0,1,1,1,1,1),(20,'WC-2014','2014 FIFA World Cup','2014','2014-06-12','2014-07-13','Brazil','Germany',0,32,1,0,0,1,1,1,1,1),(21,'WC-2018','2018 FIFA World Cup','2018','2018-06-14','2018-07-15','Russia','France',0,32,1,0,0,1,1,1,1,1);
/*!40000 ALTER TABLE `tournaments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-25  6:36:58
