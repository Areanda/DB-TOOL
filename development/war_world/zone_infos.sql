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
-- Table structure for table `zone_infos`
--

DROP TABLE IF EXISTS `zone_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone_infos` (
  `ZoneId` smallint(5) unsigned NOT NULL,
  `Name` varchar(255) NOT NULL,
  `MinLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL,
  `Tier` int(11) NOT NULL,
  `Price` smallint(5) unsigned NOT NULL,
  `Region` smallint(5) unsigned NOT NULL,
  `OffX` int(11) NOT NULL,
  `OffY` int(11) NOT NULL,
  `Pairing` tinyint(3) unsigned DEFAULT NULL,
  `Collision` tinyint(3) unsigned NOT NULL,
  `Illegal` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`ZoneId`),
  UNIQUE KEY `UNIQUE` (`ZoneId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_infos`
--

LOCK TABLES `zone_infos` WRITE;
/*!40000 ALTER TABLE `zone_infos` DISABLE KEYS */;
INSERT INTO `zone_infos` VALUES (1,'Marshes of Madness',11,20,0,2,500,12,252,210,1,1,0),
(2,'The Badlands',21,30,0,3,2000,10,302,218,1,1,0),
(3,'Black Crag',21,30,0,4,4000,2,334,234,1,1,0),
(4,'Butcher\'s Pass',31,40,0,4,0,2,334,250,0,1,1),
(5,'Thunder Mountain',31,40,0,4,4000,2,334,218,1,1,0),
(6,'Ekrund',1,10,0,1,50,1,180,206,1,1,0),
(7,'Barak Varr',11,20,0,2,500,12,252,194,1,1,0),
(8,'Black Fire Pass',21,30,0,3,2000,10,302,202,1,0,0),
(9,'Kadrin Valley',31,40,0,4,4000,2,334,202,1,1,0),
(10,'Stonewatch',31,40,0,4,0,2,334,186,0,1,1),
(11,'Mount Bloodhorn',1,10,0,1,50,1,196,206,1,1,0),
(26,'Cinderfall',31,40,0,0,4000,2,318,218,1,1,0),
(27,'Death Peak',31,40,0,0,4000,2,350,218,1,1,0),
(30,'Gates of Ekrund',1,10,1,4,0,30,40,40,0,1,0),
(31,'Mourkain Temple',11,20,1,2,0,31,72,40,0,1,0),
(33,'Doomfist Crater',21,30,1,0,0,33,136,40,0,0,0),
(34,'Thunder Valley',31,40,1,4,4000,34,168,40,0,0,0),
(36,'Kadrin Valley Pass',31,40,1,4,4000,36,40,80,0,0,0),
(37,'Black Crag Keep',31,40,1,0,0,37,72,80,0,0,0),
(38,'Black Fire Basin',21,30,1,0,0,38,104,80,0,0,0),
(39,'Logrin\'s Forge',31,40,1,0,0,39,136,80,0,0,0),
(43,'Gromril Crossing',31,40,1,0,0,43,72,120,0,0,0),
(44,'Howling Gorge',31,40,1,0,0,44,104,120,0,0,0),
(60,'Mount Gunbad',22,40,0,3,0,60,200,200,0,0,1),
(100,'Norsca',1,10,0,1,50,8,200,200,2,1,0),
(101,'Troll Country',11,20,0,2,500,14,248,200,2,1,0),
(102,'High Pass',21,30,0,3,2000,6,296,200,2,1,0),
(103,'Chaos Wastes',31,40,0,4,4000,11,344,184,2,1,0),
(104,'The Maw',31,40,0,4,0,11,344,168,0,1,1),
(105,'Praag',31,40,0,4,4000,11,344,200,2,1,0),
(106,'Nordland',1,10,0,1,50,8,200,216,2,1,0),
(107,'Ostland',11,20,0,2,500,14,248,216,2,1,0),
(108,'Talabecland',21,30,0,3,2000,6,296,216,2,1,0),
(109,'Reikland',31,40,0,4,4000,11,344,216,2,1,0),
(110,'Reikwald',31,40,0,4,0,11,344,232,2,1,1),
(117,'Outer Dark',31,40,0,4,0,11,360,184,0,0,0),
(118,'The Kraken Sea',0,0,0,4,0,11,328,184,0,0,1),
(120,'West Praag',31,40,0,0,4000,11,328,200,2,1,0),
(130,'Nordenwatch',1,10,1,0,0,130,80,80,0,1,0),
(131,'Stonetroll Crossing',11,20,1,2,0,131,96,80,0,0,0),
(132,'Talabec Dam',21,30,1,0,50,132,112,80,0,0,0),
(133,'Maw of Madness',21,30,1,0,0,133,128,80,0,0,0),
(134,'Reikland Hills',21,30,1,0,0,134,144,80,0,0,0),
(135,'Twisting Tower',0,0,1,0,0,135,160,80,0,0,0),
(136,'Battle for Praag',31,40,1,0,0,136,176,80,0,1,0),
(137,'Grovod Caverns',31,40,0,4,0,137,192,80,0,0,0),
(138,'Reikland Factory',31,40,1,0,0,138,80,96,0,1,0),
(139,'High Pass Cemetery',21,30,1,0,0,139,96,96,0,1,0),
(144,'Outer Dark',31,40,0,4,0,11,328,232,0,0,0),
(152,'The Sewers of Altdorf: Wing 1',31,40,0,2,0,152,40,40,0,0,1),
(153,'The Sewers of Altdorf: Wing 2',31,40,0,2,0,153,40,40,0,0,1),
(155,'Sacellum Dungeons: West Wing',12,18,0,2,0,155,40,40,0,0,1),
(156,'Sacellum Dungeons: East Wing',12,18,0,2,0,156,40,40,0,0,1),
(160,'Bastion Stair',34,40,0,4,0,160,240,240,0,0,1),
(161,'The Inevitable City',1,40,0,4,50,17,100,24,2,0,0),
(162,'Altdorf',1,40,0,4,50,7,24,24,2,0,0),
(169,'The Sewers of Altdorf: Wing 3',31,40,0,2,0,169,24,120,0,0,1),
(171,'The Screaming Cat',31,40,0,4,0,171,80,340,0,0,0),
(173,'Sacellum Dungeons: South Wing',12,18,0,2,0,173,160,340,0,0,0),
(176,'Sigmar Crypts',40,40,0,4,0,176,360,48,0,0,0),
(177,'Warpblade Tunnels',40,40,0,4,0,177,376,48,0,0,0),
(179,'Tomb of the Vulture Lord',31,40,0,4,0,179,72,60,0,0,0),
(191,'Necropolis of Zandri',31,40,0,4,0,9,48,364,100,0,1),
(195,'Bloodwrought Enclave',40,10,0,4,0,195,376,248,0,0,0),
(196,'Bilerot Burrow',40,20,0,4,0,196,360,248,0,0,0),
(200,'The Blighted Isle',1,30,0,1,50,3,248,248,3,1,0),
(201,'The Shadowlands',11,40,0,2,500,15,200,296,3,1,0),
(202,'Avelorn',21,40,0,3,2000,16,344,344,3,1,0),
(203,'Caledor',31,40,0,4,4000,4,216,392,3,1,0),
(204,'Fell Landing',31,10,0,4,0,4,200,392,0,1,1),
(205,'Dragonwake',31,20,0,4,4000,4,232,392,3,1,0),
(206,'Chrace',1,30,0,1,50,3,248,264,3,1,0),
(207,'Ellyrion',11,40,0,2,500,15,200,312,3,1,0),
(208,'Saphery',21,40,0,3,2000,16,344,360,3,1,0),
(209,'Eataine',31,10,0,4,4000,4,248,392,3,1,0),
(210,'Shining Way',31,0,0,4,0,4,264,392,0,1,1),
(220,'Isle of the Dead',1,0,0,0,4000,4,232,360,0,0,1),
(230,'Khaine\'s Embrace',0,0,1,0,0,230,80,80,0,0,0),
(231,'Phoenix Gate',0,0,1,0,0,231,96,80,0,0,0),
(232,'Tor Anroc',0,0,1,0,0,232,112,80,0,1,0),
(234,'Serpent\'s Passage',0,0,1,0,0,234,144,80,0,0,0),
(235,'Dragon\'s Bane',0,0,1,0,0,235,160,80,0,0,0),
(236,'Temple of Isha',0,0,1,0,0,236,176,80,0,1,0),
(237,'Caledor Woods',0,0,1,0,0,237,192,80,0,0,0),
(242,'Tomb of the Moon',0,0,0,4,0,242,72,60,0,0,0),
(243,'Tomb of the Sky',0,0,0,4,0,243,72,60,0,0,0),
(244,'Tomb of the Sun',0,0,0,4,0,244,72,60,0,0,0),
(260,'The Lost Vale',40,40,0,4,0,260,336,376,0,0,1),
(238,'Blood of the Black Cairn',0,0,1,0,0,238,80,96,0,0,0),
(241,'Tomb of the Stars',0,0,0,4,0,241,72,60,0,0,0),
(168,'Altdorf (contested)',32,40,0,4,0,168,24,88,0,0,0),
(111,'Dangerous Territory - Troll Country East',1,40,0,0,0,14,232,200,0,0,1),
(112,'Dangerous Territory - Troll Country West',1,40,0,0,0,14,264,200,0,0,1),
(113,'Dangerous Territory - Troll Country Nord',1,40,0,0,0,14,248,184,0,0,1),
(114,'Dangerous Territory - Troll Country East',1,40,0,0,0,14,264,184,0,0,1),
(115,'Dangerous Territory - Troll Country West',1,40,0,0,0,14,232,184,0,0,1),
(150,'Dangerous Territory - Ostland West',1,40,0,0,0,14,232,232,0,0,1),
(151,'Dangerous Territory - Ostland South',1,40,0,0,0,14,264,232,0,0,1),
(192,'Dangerous Territory - Ostland West',1,40,0,0,0,14,232,216,0,0,1),
(193,'Dangerous Territory - Ostland East',1,40,0,0,0,14,264,216,0,0,0),
(194,'Dangerous Territory - Ostland South',1,40,0,0,0,14,248,232,0,0,1),
(12,'Dangerous Territory - Mount Bloodhorn South',1,40,0,0,0,1,196,222,0,0,1),
(28,'Dangerous Territory - Ekrund North',1,40,0,0,0,1,184,190,0,0,1),
(72,'Dangerous Territory - Mount Bloodhorn East',1,40,0,0,0,1,212,206,0,0,1),
(73,'Dangerous Territory - Mount Bloodhorn North',1,40,0,0,0,1,200,190,0,0,1),
(85,'Dangerous Territory - Ekrund South',1,40,0,0,0,1,180,222,0,0,1),
(86,'Zone 0 - Ekrund West',1,40,0,0,0,1,164,206,0,0,1),
(164,'Bastion Stair: Lord Slaurith',32,40,0,4,0,164,240,240,2,0,0),
(166,'Bastion Stair: Skull Lord Var\'lthrok',32,40,0,4,0,166,240,240,2,0,0),
(197,'The Sacellum',1,40,0,2,0,197,40,40,0,0,0),
(199,'Unknown',1,40,0,0,0,199,320,376,0,0,1),
(172,'The Eternal Citadel',1,40,1,0,0,172,128,340,0,0,0),
(295,'Pigwank Hills',0,40,0,0,0,5,248,248,0,0,0),
(294,'Item Test Zone',0,40,0,0,0,5,248,232,0,0,0),
(296,'The Bog of Pigwank',0,40,0,0,0,5,248,264,0,0,0),
(297,'Mount Pigwank',0,40,0,0,0,5,248,280,0,0,0),
(298,'The Tomb of Pigwank',0,40,0,0,0,5,64,64,0,0,0),
(299,'Pigwank Barrows',0,40,0,0,0,5,64,80,0,0,0),
(18,'Dangerous Territory - Karaz-a-Karak West',31,40,0,0,0,2,318,186,1,0,1),
(19,'Dangerous Territory - Karaz-a-Karak East',31,40,0,4,0,2,350,186,1,0,1),
(165,'Bastion Stair: Kaarn the Vanquisher',32,40,0,4,0,165,240,240,2,0,0),
(163,'Bastion Stair: Thar\'Ignan',32,40,0,4,0,163,240,240,2,0,0),
(174,'The Elysium',1,40,0,4,0,174,192,340,2,0,0),
(175,'The Winds of Chaos',1,40,0,4,0,17,360,16,2,0,0),
(51,'Bloodborn Keep',0,40,0,0,0,51,72,120,0,0,0),
(178,'The Viper Pit',1,40,0,4,50,17,80,56,2,0,0),
(198,'Sigmar\'s Hammer',1,40,0,4,50,7,320,376,2,0,0),
(410,'Thanquuol\'s Incursion',1,40,0,4,0,410,16,16,0,0,1),
(50,'Hunter\'s Vale',1,15,0,0,0,50,72,120,0,0,0),
(63,'Gunbad Nursery',21,30,0,3,0,63,216,216,0,0,0),
(64,'Gunbad Lab',21,30,0,3,0,64,232,232,0,0,0),
(65,'Squig Boss',21,30,0,3,0,65,300,300,0,0,0),
(66,'Gunbad Barracks',21,30,0,3,0,66,264,264,0,0,0),
(13,'Marshes West Dangerous Territory',1,10,0,0,0,12,236,210,0,0,1),
(14,'Barak Varr East Dangerous Territory',1,10,0,0,0,12,268,194,0,0,1),
(15,'Marshes South Dangerous Territory',1,10,0,0,0,12,252,226,0,0,1),
(16,'Dangerous Territory',1,10,0,0,0,2,318,202,0,0,1),
(17,'Dangerous Territory',1,10,0,0,0,2,350,202,0,0,1),
(20,'Dangerous Territory',1,10,0,0,0,2,350,250,0,0,1);
/*!40000 ALTER TABLE `zone_infos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-27 12:40:15
