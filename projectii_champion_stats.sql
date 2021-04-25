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
-- Table structure for table `champion_stats`
--

DROP TABLE IF EXISTS `champion_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `champion_stats` (
  `champion_stats_id` int NOT NULL AUTO_INCREMENT,
  `champion_name` varchar(100) NOT NULL,
  `player_champion_id` double DEFAULT NULL,
  `Game_game_id` int NOT NULL,
  PRIMARY KEY (`champion_stats_id`),
  UNIQUE KEY `champion_id_UNIQUE` (`champion_stats_id`),
  KEY `fk_Champion_stats_Game1_idx` (`Game_game_id`),
  CONSTRAINT `fk_Champion_stats_Game1` FOREIGN KEY (`Game_game_id`) REFERENCES `game` (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `champion_stats`
--

LOCK TABLES `champion_stats` WRITE;
/*!40000 ALTER TABLE `champion_stats` DISABLE KEYS */;
INSERT INTO `champion_stats` VALUES (1,'Lillia',1,1),(2,'Nidalee',1,2),(3,'Kha\'Zix',1,6),(4,'Taliyah',1,7),(5,'Graves ',1,8),(6,'Evelynn ',1,9),(7,'Nidalee',1,10),(8,'Lillia',1,11),(9,'Lillia',1,12),(10,'Hecarim',1,13),(11,'Nidalee',1,14),(12,'Kha\'Zix',1,15),(13,'Lillia',1,16),(14,'Graves',1,17),(15,'Ivern',1,18),(16,'Taliyah',1,19),(17,'Evelynn',1,20),(18,'Nautilus',2,21),(19,'Nautilus',2,22),(20,'Alistar',2,23),(21,'Alistar',2,24),(22,'Nautilus',2,25),(23,'Lulu',2,26),(24,'Lulu',2,27),(25,'Thresh',2,28),(26,'Nautilus',2,29),(27,'Lulu',2,30),(28,'Thresh',2,31),(29,'Blitzcrank',2,32),(30,'Rakan',2,33),(31,'Nautilus',2,34),(32,'Rell',2,35),(33,'Rell',2,36),(34,'Rell',2,37),(35,'Leona',2,38);
/*!40000 ALTER TABLE `champion_stats` ENABLE KEYS */;
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
