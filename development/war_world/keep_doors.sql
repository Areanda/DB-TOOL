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
-- Table structure for table `keep_doors`
--

DROP TABLE IF EXISTS `keep_doors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keep_doors` (
  `KeepId` int(11) NOT NULL,
  `Number` tinyint(3) unsigned NOT NULL,
  `ZoneId` smallint(5) unsigned NOT NULL,
  `GameObjectId` smallint(5) unsigned NOT NULL,
  `DoorId` int(10) unsigned NOT NULL,
  `X` int(11) NOT NULL,
  `Y` int(11) NOT NULL,
  `Z` int(11) NOT NULL,
  `O` int(11) NOT NULL,
  `TeleportX1` int(11) NOT NULL,
  `TeleportY1` int(11) NOT NULL,
  `TeleportZ1` int(11) NOT NULL,
  `TeleportO1` int(11) NOT NULL,
  `TeleportX2` int(11) NOT NULL,
  `TeleportY2` int(11) NOT NULL,
  `TeleportZ2` int(11) NOT NULL,
  `TeleportO2` int(11) NOT NULL,
  PRIMARY KEY (`DoorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keep_doors`
--

LOCK TABLES `keep_doors` WRITE;
/*!40000 ALTER TABLE `keep_doors` DISABLE KEYS */;
INSERT INTO `keep_doors` VALUES (2,1,1,100,1165352,1064369,892909,2789,2514,1064515,892756,2815,2562,1064260,893061,2784,452),
(2,2,1,72,1165353,1065665,891857,2827,448,1065851,891646,2800,2516,1065461,892106,2826,434),
(4,1,2,100,2885736,1257331,935159,4176,2060,1257310,935208,4176,4090,1257328,934852,4212,2024),
(4,5,2,72,2885737,1257643,933483,4219,2150,1257652,933890,4218,26,1257646,933102,4171,2150),
(4,2,2,100,2885800,1257347,937062,3995,408,1257360,937211,3984,32,1257357,936917,4012,2022),
(4,3,2,72,2901544,1256018,931741,3984,3822,1256118,932158,3984,3904,1255863,931451,3950,1848),
(4,4,2,72,2901608,1253978,936980,3995,732,1253617,937155,3954,782,1254317,936901,3970,2744),
(9,1,3,100,3169384,1394967,978147,7768,1552,1395029,978211,7777,3562,1394888,978075,7768,1520),
(9,3,3,72,3169385,1395944,979466,7808,222,1396147,979644,7777,3564,1395734,979269,7808,1552),
(10,1,3,100,3238312,1413497,1012031,6044,1034,1413574,1012030,6044,3110,1413378,1012030,6044,1052),
(10,3,3,72,3238313,1415107,1012349,6072,62,1415366,1012349,6044,3074,1414830,1012349,6072,1042),
(9,4,3,72,3259368,1397170,972530,7093,1788,1397068,972295,7029,1700,1397307,972775,7020,3774),
(10,4,3,72,3348904,1412028,1007560,5605,3360,1412288,1007679,5565,3342,1411793,1007471,5584,1322),
(10,3,3,72,3349032,1412637,1017154,5621,132,1412571,1017461,5576,160,1412687,1016937,5586,2232),
(10,2,3,100,3753000,1410809,1011933,5542,1012,1410907,1011927,5552,3122,1410675,1011932,5539,1068),
(9,5,3,72,3774632,1395403,983098,8485,480,1395210,983320,8407,476,1395583,982932,8417,2490),
(9,2,3,100,3777064,1393541,977075,7785,1560,1393606,977132,7793,3556,1393443,976983,7768,1534),
(7,2,5,100,5252072,1401171,928206,11454,1074,1401257,928206,11462,3128,1401013,928194,11448,1040),
(7,1,5,100,5262440,1404952,928171,12063,1058,1405039,928177,12070,3100,1404825,928163,12056,1032),
(7,3,5,72,5262441,1406537,928549,12103,50,1406823,928559,12075,3062,1406264,928536,12102,1064),
(7,4,5,72,5273576,1400160,924173,11519,1276,1399861,924137,11451,1066,1400407,924197,11449,3176),
(7,5,5,72,5274600,1400072,932197,11515,3000,1400385,932159,11451,2736,1399842,932255,11448,946),
(8,4,5,72,5552168,1373302,923689,12023,1630,1373138,923799,11978,614,1373453,923546,11974,2646),
(8,5,5,72,5582248,1374556,931432,12013,3400,1374373,931326,11968,1384,1374731,931535,11969,3506),
(8,1,5,100,5836008,1371295,928070,11993,3010,1371247,928073,11992,958,1371407,928062,11984,3052),
(8,3,5,72,5836009,1369721,927845,12017,300,1369467,927991,11960,1010,1370010,927698,12023,3086),
(8,2,5,100,5850664,1374234,927654,12004,3020,1374165,927658,12005,948,1374349,927647,12000,3062),
(1,1,7,100,8005608,1063222,831284,6168,2358,1063319,831126,6177,2402,1063153,831492,6168,278),
(1,2,7,72,8005609,1064300,830100,6170,334,1064267,830399,6193,334,1064334,829777,6125,2432),
(3,1,8,100,8497192,1240676,843631,9746,960,1240692,843625,9746,3054,1240443,843654,9752,1032),
(3,5,8,72,8497193,1239008,843399,9745,958,1238716,843572,9722,992,1239372,843250,9778,3176),
(3,4,8,72,8497256,1245704,839300,8454,2046,1245699,839046,8420,2112,1245700,839592,8430,4046),
(3,3,8,72,8497320,1247570,845405,8488,3092,1247814,845412,8505,2940,1247321,845399,8476,1040),
(3,2,8,100,8497576,1246318,842796,8428,928,1246336,842818,8428,2968,1246124,842853,8428,950),
(6,1,9,100,10170792,1401708,874403,9383,738,1401765,874373,9383,2776,1401611,874455,9376,750),
(6,3,9,72,10170793,1403226,874009,9403,1262,1403407,873766,9350,2732,1403024,874244,9414,768),
(6,2,9,100,10170856,1399437,875726,9240,914,1399498,875722,9240,2946,1399322,875748,9240,914),
(5,1,9,100,10170920,1412895,846004,10038,1032,1412961,846007,10038,3094,1412778,846008,10032,1044),
(5,3,9,72,10170921,1414449,846361,10072,1658,1414142,846459,10068,1080,1414702,846214,10000,3110),
(5,2,9,100,10170984,1410329,846113,9880,890,1410398,846102,9880,2964,1410232,846140,9880,910),
(6,5,9,72,10172840,1399616,879645,9300,1406,1399494,879802,9240,428,1399715,879449,9240,2470),
(6,4,9,72,10173096,1400555,871375,9300,2170,1400542,871588,9240,92,1400586,871169,9239,2236),
(6,6,9,72,10173160,1403388,872046,9300,1462,1403223,872188,9240,584,1403522,871892,9239,2642),
(5,4,9,72,10184424,1412519,848997,9894,238,1412524,849236,9874,4074,1412512,848810,9872,2068),
(5,5,9,72,10184488,1410040,842862,9944,1000,1410014,843080,9865,10,1409997,842653,9880,2030),
(12,1,101,100,106114280,1018941,875831,6968,248,1018721,875827,6998,248,1019160,875833,6968,3010),
(12,0,101,72,106114281,1017464,875317,6969,0,1017801,875214,6998,3010,1017178,875203,6994,836),
(14,2,102,100,107672744,1217050,878347,14866,3913,1217095,878526,14856,3976,1217026,878261,14866,1950),
(14,1,102,100,107672936,1216582,876300,14968,2241,1216533,876466,14968,222,1216658,876077,15001,2310),
(14,5,102,72,107672937,1217600,875080,14995,2264,1217745,874763,14986,2120,1217522,875402,15001,276),
(14,3,102,72,107673640,1214990,880253,14892,1865,1215058,880533,14866,3914,1214985,879924,14888,2758),
(14,4,102,72,107793576,1218850,878489,14898,2901,1219217,878400,14864,2884,1218601,878547,14864,914),
(19,1,103,100,108647656,1440939,763558,13332,3788,1440905,763496,13332,1764,1441026,763697,13328,3842),
(19,3,103,72,108647657,1440776,762026,13437,1602,1440636,761794,13397,1614,1440911,762269,13387,3900),
(20,1,103,100,108647720,1447515,797258,14096,62,1447516,797160,14096,2074,1447500,797412,14096,16),
(20,3,103,72,108647721,1448141,795817,14186,62,1448110,795547,14143,2014,1448111,796117,14143,54),
(20,2,103,100,108647784,1446551,800570,13549,4082,1446553,800481,13549,1994,1446563,800728,13552,26),
(19,2,103,100,108651496,1441078,767553,12741,8,1441075,767482,12741,2084,1441077,767710,12741,62),
(19,4,103,72,108828392,1438132,763412,12804,536,1438293,763589,12753,3684,1437965,763237,12751,1532),
(19,5,103,72,108828456,1443397,768939,12799,48,1443398,769154,12734,8,1443395,768700,12741,2084),
(20,5,103,72,108828520,1442808,798921,13619,1530,1442644,798745,13554,1598,1442965,799073,13553,3612),
(20,4,103,72,108828584,1449314,797617,13591,1530,1449152,797785,13552,486,1449484,797448,13551,2618),
(18,6,105,72,110102568,1446711,834733,14446,1048,1446702,834979,14402,54,1446706,834481,14417,2086),
(18,4,105,72,110102632,1447430,829441,14451,3096,1447708,829450,14387,3120,1447166,829448,14379,1030),
(18,5,105,72,110102696,1440774,830824,14443,2622,1440604,830662,14399,1590,1440951,831018,14397,3638),
(18,1,105,100,110110312,1444240,831571,14408,106,1444250,831508,14408,2092,1444239,831729,14408,24),
(18,3,105,72,110110313,1444916,830176,14497,1004,1444894,830515,14438,770,1444929,829869,14438,2170),
(18,2,105,100,110110376,1444169,833355,14409,12,1444173,833274,14409,2054,1444170,833500,14409,46),
(17,4,105,72,110112040,1449578,883693,15861,3068,1449364,883691,15787,1000,1449814,883682,15800,3066),
(17,2,105,100,110113128,1448254,881273,15791,3016,1448214,881271,15786,960,1448379,881263,15784,3010),
(17,1,105,100,110113192,1446611,881930,15728,2654,1446572,881951,15728,626,1446718,881843,15728,2630),
(17,3,105,72,110113193,1445195,882484,15822,1830,1444969,882603,15764,572,1445441,882358,15760,2646),
(17,5,105,72,110398184,1445812,878611,15867,3992,1445742,878390,15777,1930,1445861,878856,15776,3946),
(11,1,107,100,112258728,1055270,889239,4745,2048,1055262,889362,4736,184,1055281,889064,4774,2170),
(11,0,107,72,112258729,1055729,887762,4834,2062,1055771,887502,4786,2042,1055670,888020,4775,107),
(13,4,108,72,113300008,1244293,892011,11696,1820,1244191,891684,11648,1904,1244349,892245,11696,3986),
(13,1,108,100,114071976,1249722,892500,12189,2580,1249622,892517,12185,836,1249922,892315,12235,2606),
(13,5,108,72,114071977,1251204,891779,12192,632,1250895,891977,12235,1804,1251439,891626,12191,2612),
(13,2,108,100,114072040,1246393,892395,11671,534,1246380,892297,11662,1870,1246434,892521,11656,3942),
(16,1,109,100,114322344,1432038,943515,16230,349,1432035,943390,16216,2026,1432039,943565,16230,20),
(16,3,109,72,114322345,1431658,944984,16289,1274,1431626,945243,16269,8,1431702,944719,16263,2030),
(16,2,109,100,114353448,1430608,941201,15904,1602,1430585,941157,15904,1626,1430677,941281,15904,3670),
(15,2,109,100,114437800,1439237,908951,17751,2122,1439229,908987,17752,114,1439255,908823,17736,2168),
(15,1,109,100,114448680,1439521,912422,18772,351,1439494,912529,18752,224,1439554,912358,18757,2256),
(15,3,109,72,114448681,1440385,911162,18845,0,1440515,910931,18797,2256,1440260,911402,18787,176),
(15,5,109,72,114726504,1436038,909785,17829,2086,1435811,909771,17770,1050,1436243,909787,17784,3118),
(15,4,109,72,114750696,1442485,910983,17838,1882,1442700,910996,17752,3122,1442265,910955,17769,1106),
(16,5,109,72,114852840,1434321,940393,15966,1600,1434146,940538,15917,602,1434479,940260,15928,2648),
(16,4,109,72,114852904,1428306,943534,15974,516,1428149,943676,15913,582,1428490,943389,15928,2832),
(22,1,201,100,211759848,852559,1261658,6054,3926,852616,1261834,6048,3844,852462,1261488,6069,1814),
(22,2,201,72,211759849,852180,1259900,6083,4014,852142,1259660,6048,2010,852202,1260362,6089,4004),
(24,2,202,100,211827880,1438072,1465806,4236,3986,1438066,1465930,4224,4086,1438058,1465660,4232,2078),
(24,1,202,100,211838056,1438185,1463960,4180,4061,1438180,1464045,4168,50,1438190,1463875,4215,2102),
(24,5,202,72,211838057,1438520,1462315,4202,2208,1438593,1461991,4188,2248,1438383,1462606,4215,4177),
(24,4,202,72,211979240,1434942,1464753,4149,3048,1435202,1464801,4176,3250,1434752,1464716,4168,1196),
(24,6,202,72,211979560,1441250,1464680,4176,1008,1441026,1464694,4176,1008,1441496,1464660,4190,3068),
(24,3,202,72,212231464,1438498,1461250,4183,4061,1438519,1461468,4239,40,1438496,1461029,4238,2042),
(30,4,203,72,212861288,931748,1634527,8022,580,931866,1634713,7961,3674,931602,1634393,7964,1624),
(29,4,203,72,212861608,888573,1633779,6106,3096,888564,1633597,6063,2054,888566,1633992,6062,20),
(29,5,203,72,212861672,889127,1640039,5987,1168,889099,1640236,5940,136,889162,1639835,5942,2144),
(29,2,203,100,212861736,889605,1637025,5926,3012,889517,1637015,5920,1070,889703,1637028,5920,3094),
(30,5,203,72,212861800,933810,1640375,8008,3186,933836,1640180,7957,2102,933810,1640594,7960,80),
(29,1,203,100,212862184,887604,1637426,6297,3120,887534,1637429,6299,1036,887705,1637428,6280,3064),
(29,3,203,72,212862185,886040,1637165,6320,1186,886280,1637256,6324,3264,885681,1637072,6311,1318),
(30,2,203,100,212862440,933753,1637228,7934,3030,933662,1637234,7928,964,933864,1637217,7928,3030),
(30,1,203,100,212862632,930408,1637645,8474,3016,930334,1637654,8478,950,930501,1637624,8456,3000),
(30,3,203,72,212862633,928764,1637639,8495,1154,929087,1637679,8501,3186,928437,1637587,8476,1146),
(27,4,205,72,214958185,989274,1640224,11476,2722,989433,1640494,11448,3760,989153,1639983,11434,1730),
(27,2,205,100,214958248,986036,1638350,11393,408,986087,1638288,11392,2458,985969,1638449,11392,408),
(28,2,205,100,214958440,967319,1639362,8121,150,967343,1639279,8104,2200,967297,1639466,8104,144),
(28,1,205,100,214958504,968476,1637471,8225,396,968512,1637415,8228,2460,968407,1637566,8208,436),
(28,3,205,72,214958505,969659,1636256,8232,570,969357,1636499,8252,612,969873,1636095,8232,2640),
(28,4,205,72,214958568,965196,1639729,8139,2858,965375,1639595,8113,2136,965033,1639880,8125,588),
(27,3,205,72,214958633,983699,1635858,11392,192,984006,1635953,11392,3288,983451,1635790,11402,1200),
(28,5,205,72,214958760,970021,1640746,8148,2736,970035,1640533,8123,2052,970031,1640960,8126,20),
(27,1,205,100,214959528,987436,1636571,11633,608,987473,1636512,11639,2464,987382,1636649,11632,393),
(27,5,205,72,214959529,988367,1635199,11623,1510,988212,1635418,11661,402,988501,1634991,11653,2438),
(21,1,207,100,217538728,853774,1311325,5848,2078,853735,1311512,5859,82,853767,1311182,5824,2124),
(21,2,207,72,217538729,853579,1312971,5840,68,853606,1312730,5849,2116,853551,1313262,5843,112),
(23,2,208,100,218152936,1428163,1488117,4216,2528,1428217,1488057,4216,2458,1428109,1488177,4216,416),
(23,4,208,72,218432809,1426478,1485851,4219,1820,1426607,1485522,4212,3012,1426338,1486153,4216,266),
(23,5,208,72,218478441,1430802,1489088,4210,2605,1431054,1488895,4214,2600,1430504,1489319,4216,530),
(23,1,208,100,218738728,1426814,1489763,4579,2508,1426922,1489592,4552,2454,1426706,1489894,4584,478),
(23,3,208,72,218738729,1425790,1491112,4552,2690,1425642,1491329,4568,216,1425996,1490851,4584,2484),
(25,2,209,100,219152936,1066427,1639786,5172,1000,1066496,1639795,5168,3124,1066325,1639782,5168,1102),
(25,4,209,72,219155113,1068721,1644257,5186,3525,1068768,1643944,5181,2210,1068670,1644525,5168,128),
(25,1,209,100,219155240,1069659,1639859,5738,1046,1069745,1639861,5740,3100,1069583,1639861,5728,1044),
(25,3,209,72,219155241,1071342,1639858,5777,2066,1071058,1639830,5765,1024,1071606,1639830,5760,3088),
(25,5,209,72,219155369,1067369,1636560,5186,1156,1067355,1636854,5181,108,1067426,1636272,5158,2138),
(26,1,209,100,219350504,1032813,1643098,7304,1892,1032830,1643170,7312,3920,1032785,1643007,7296,1880),
(26,3,209,72,219350505,1033310,1644689,7338,2872,1033238,1644407,7332,1870,1033404,1644921,7327,3916),
(26,2,209,100,219350568,1029971,1642042,6536,1000,1030042,1642043,6536,3106,1029869,1642040,6536,1062),
(26,5,209,72,219366633,1030443,1645966,6536,3292,1030518,1645673,6538,2062,1030374,1646249,6533,144),
(26,4,209,72,219366697,1031843,1639130,6536,3470,1031682,1639368,6536,434,1032002,1638874,6536,2442),
(13,3,108,72,1187031976,1248615,889254,11676,1820,1248521,888982,11660,1848,1248727,889527,11648,3860);
/*!40000 ALTER TABLE `keep_doors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-27 12:40:11
