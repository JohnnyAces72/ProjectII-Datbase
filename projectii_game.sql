-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: projectii
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `game_id` int NOT NULL AUTO_INCREMENT,
  `win_or_loss` binary(1) NOT NULL,
  `dmg_delt` double NOT NULL,
  `kills` int NOT NULL,
  `deaths` int NOT NULL,
  `assists` int NOT NULL,
  `cs` int NOT NULL,
  PRIMARY KEY (`game_id`),
  UNIQUE KEY `game_id_UNIQUE` (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,_binary '1',23130,5,5,11,223),(2,_binary '1',26574,14,5,17,164),(3,_binary '0',33082,6,5,9,256),(4,_binary '1',19060,6,5,17,231),(5,_binary '1',22351,9,4,16,213),(6,_binary '1',19449,5,3,11,201),(7,_binary '1',4391,3,0,4,97),(8,_binary '1',6857,4,0,8,153),(9,_binary '1',18818,13,4,7,184),(10,_binary '1',26574,14,5,17,164),(11,_binary '0',33082,6,5,9,256),(12,_binary '1',19060,5,6,17,231),(13,_binary '1',22351,9,4,16,213),(14,_binary '1',9392,7,5,7,149),(15,_binary '0',7674,1,6,2,131),(16,_binary '1',31419,8,7,14,298),(17,_binary '1',31468,8,6,11,274),(18,_binary '0',2142,1,2,1,118),(19,_binary '0',6013,0,7,5,71),(20,_binary '1',13463,7,4,5,136),(21,_binary '0',6848,2,9,5,20),(22,_binary '0',7666,1,6,10,33),(23,_binary '0',5945,2,10,5,29),(24,_binary '1',7235,1,5,19,33),(25,_binary '1',16884,5,7,22,36),(26,_binary '0',2820,0,8,22,41),(27,_binary '1',3542,2,0,11,43),(28,_binary '1',8471,3,2,23,47),(29,_binary '0',11161,1,10,12,27),(30,_binary '1',4500,0,2,14,51),(31,_binary '1',9548,0,6,20,26),(32,_binary '0',5105,1,4,7,19),(33,_binary '0',5481,2,4,11,50),(34,_binary '1',9685,1,3,22,39),(35,_binary '0',5437,0,5,7,33),(36,_binary '0',2141,0,1,1,34),(37,_binary '1',7932,3,4,13,38),(38,_binary '0',2897,0,5,0,15);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-25 18:17:13
