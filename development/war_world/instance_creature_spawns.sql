-- MySQL dump 10.13  Distrib 5.5.37, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: war_world
-- ------------------------------------------------------
-- Server version	5.5.52

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
-- Table structure for table `instance_creature_spawns`
--

DROP TABLE IF EXISTS `instance_creature_spawns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_creature_spawns` (
  `Instance_spawns_ID` varchar(255) NOT NULL,
  `Entry` int(10) unsigned DEFAULT NULL,
  `Realm` tinyint(3) unsigned DEFAULT NULL,
  `Level` tinyint(3) unsigned DEFAULT NULL,
  `Emote` tinyint(3) unsigned DEFAULT NULL,
  `ZoneID` smallint(5) unsigned DEFAULT NULL,
  `ConnectedBossID` int(10) unsigned DEFAULT NULL,
  `SpawnGroupID` int(10) unsigned DEFAULT NULL,
  `WorldX` int(11) DEFAULT NULL,
  `WorldY` int(11) DEFAULT NULL,
  `WorldZ` int(11) DEFAULT NULL,
  `WorldO` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`Instance_spawns_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_creature_spawns`
--

LOCK TABLES `instance_creature_spawns` WRITE;
/*!40000 ALTER TABLE `instance_creature_spawns` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_creature_spawns` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-27 12:40:09
