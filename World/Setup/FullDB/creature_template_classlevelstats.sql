--
-- Copyright (C) 2005-2014 MaNGOS <http://getmangos.eu/>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

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
-- Table structure for table `creature_template_classlevelstats`
--

DROP TABLE IF EXISTS `creature_template_classlevelstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_template_classlevelstats` (
  `Level` tinyint(4) NOT NULL,
  `Class` tinyint(4) NOT NULL,
  `BaseHealthExp0` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `BaseMana` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BaseDamageExp0` float NOT NULL DEFAULT '0',
  `BaseMeleeAttackPower` float NOT NULL DEFAULT '0',
  `BaseRangedAttackPower` float NOT NULL DEFAULT '0',
  `BaseArmor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Level`,`Class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_template_classlevelstats`
--

LOCK TABLES `creature_template_classlevelstats` WRITE;
/*!40000 ALTER TABLE `creature_template_classlevelstats` DISABLE KEYS */;
INSERT INTO `creature_template_classlevelstats` (`Level`, `Class`, `BaseHealthExp0`, `BaseMana`, `BaseDamageExp0`, `BaseMeleeAttackPower`, `BaseRangedAttackPower`, `BaseArmor`) VALUES (1,1,42,0,0.0607,10,1,8),(2,1,55,0,0.3603,10,1,20),(3,1,71,0,0.6976,11,1,33),(4,1,86,0,1.0863,13,1,68),(5,1,102,0,1.4422,17,1,111),(6,1,120,0,2.1375,19,1,165),(7,1,137,0,2.9811,21,1,230),(8,1,156,0,3.485,24,1,306),(9,1,176,0,3.0304,28,1,387),(10,1,198,0,3.2707,32,1,463),(11,1,222,0,4.8425,36,1,528),(12,1,247,0,5.603,40,1,562),(13,1,273,0,6.0787,44,1,596),(14,1,300,0,6.6101,50,1,630),(15,1,328,0,7.1981,54,2,665),(16,1,356,0,7.7861,56,2,700),(17,1,386,0,8.3741,60,2,734),(18,1,417,0,8.9621,64,3,768),(19,1,449,0,9.5501,68,3,802),(20,1,484,0,10.1381,70,4,836),(21,1,521,0,10.7261,74,4,872),(22,1,562,0,11.3141,78,4,906),(23,1,605,0,11.9021,80,5,940),(24,1,651,0,12.4901,84,6,975),(25,1,699,0,13.0781,86,6,1008),(26,1,750,0,13.6661,90,7,1043),(27,1,800,0,14.2541,92,7,1078),(28,1,853,0,14.8421,96,8,1111),(29,1,905,0,15.4301,100,8,1145),(30,1,955,0,16.0181,102,9,1179),(31,1,1006,0,16.6061,106,9,1213),(32,1,1057,0,17.1941,108,10,1249),(33,1,1110,0,17.7821,112,10,1281),(34,1,1163,0,18.3701,114,11,1317),(35,1,1220,0,18.9581,118,11,1349),(36,1,1277,0,19.5461,120,12,1456),(37,1,1336,0,20.1341,124,12,1568),(38,1,1395,0,20.7221,128,13,1684),(39,1,1459,0,21.3101,132,13,1808),(40,1,1524,0,21.8981,136,14,1938),(41,1,1585,0,22.4861,142,15,2074),(42,1,1651,0,23.0741,152,15,2218),(43,1,1716,0,23.6621,162,16,2369),(44,1,1782,0,24.2501,174,16,2528),(45,1,1848,0,24.8381,184,17,2695),(46,1,1919,0,25.4261,188,17,2750),(47,1,1990,0,26.0141,192,18,2804),(48,1,2062,0,26.6021,196,19,2857),(49,1,2138,0,27.1901,200,19,2912),(50,1,2215,0,27.7781,206,20,2966),(51,1,2292,0,28.3661,210,20,3018),(52,1,2371,0,28.9541,214,21,3060),(53,1,2453,0,29.5421,218,22,3128),(54,1,2533,0,30.1301,224,22,3180),(55,1,2614,0,30.7177,228,23,3234),(56,1,2699,0,31.3057,234,23,3289),(57,1,2784,0,31.8937,238,24,3342),(58,1,2871,0,32.4817,242,25,3396),(59,1,2961,0,33.0697,248,25,3449),(60,1,3052,0,33.6577,252,26,3750),(61,1,3144,0,34.2457,258,28,4047),(62,1,3237,0,34.8337,262,30,4344),(63,1,3331,0,35.4217,268,32,4641),(1,2,41,60,0.746,1,1,7),(2,2,54,69,0.7365,3,1,19),(3,2,69,79,0.6984,7,1,33),(4,2,83,104,1.2138,18,1,66),(5,2,98,115,1.8471,19,1,109),(6,2,115,126,2.6006,24,1,163),(7,2,131,138,3.5412,28,1,208),(8,2,148,165,4.1435,32,1,303),(9,2,166,178,4.7933,36,1,369),(10,2,186,191,5.066,38,1,460),(11,2,208,205,5.3387,40,1,526),(12,2,230,249,5.6114,42,1,560),(13,2,253,264,5.8841,44,1,596),(14,2,276,295,6.1568,46,1,630),(15,2,301,326,6.8211,48,2,665),(16,2,325,357,7.1374,52,2,700),(17,2,350,390,7.6355,56,2,734),(18,2,377,408,8.1353,58,3,768),(19,2,404,456,8.6351,60,3,802),(20,2,433,490,9.0674,64,4,836),(21,2,464,510,9.3169,68,4,872),(22,2,498,545,9.7231,72,5,906),(23,2,533,581,10.0761,74,5,940),(24,2,571,618,10.4619,78,6,975),(25,2,610,655,10.8234,80,6,1008),(26,2,651,693,11.185,84,6,1042),(27,2,690,732,11.7126,86,7,1078),(28,2,732,756,11.9663,90,7,1110),(29,2,773,811,12.352,94,8,1145),(30,2,811,852,13.0007,94,8,1178),(31,2,850,878,13.2348,98,9,1213),(32,2,888,935,13.6924,100,9,1248),(33,2,928,963,13.9511,104,10,1281),(34,2,967,1007,14.4142,106,10,1316),(35,2,1009,1067,14.7365,110,11,1349),(36,2,1050,1097,15.1346,112,11,1455),(37,2,1093,1142,15.5816,116,11,1567),(38,2,1135,1189,15.9286,120,12,1683),(39,2,1180,1236,16.4168,124,12,1807),(40,2,1226,1283,16.9294,128,13,1937),(41,2,1268,1332,17.8592,132,13,2072),(42,2,1321,1381,18.8825,142,15,2216),(43,2,1373,1432,20.1126,152,14,2367),(44,2,1426,1483,21.6981,166,15,2527),(45,2,1478,1534,22.9018,172,15,2692),(46,2,1535,1587,23.345,176,16,2749),(47,2,1592,1640,23.9542,180,16,2802),(48,2,1650,1695,24.401,184,17,2855),(49,2,1710,1750,24.9975,188,17,2910),(50,2,1772,1807,25.5204,194,18,2964),(51,2,1834,1864,26.0047,198,19,3017),(52,2,1897,1923,26.6877,202,19,3072),(53,2,1962,1982,27.1912,206,20,3126),(54,2,2026,2041,27.8506,210,20,3178),(55,2,2091,2117,28.3834,214,21,3232),(56,2,2159,2163,28.9161,220,21,3287),(57,2,2227,2241,29.5702,224,22,3340),(58,2,2297,2289,30.1469,228,23,3394),(59,2,2369,2369,30.7656,234,23,3447),(60,2,2442,2434,31.3842,238,24,3748),(61,2,2515,2486,31.9807,244,25,4044),(62,2,2590,2568,32.5772,246,26,4340),(63,2,2665,2620,33.1737,252,26,4637),(1,4,42,0,0.25,24,1,6),(2,4,55,0,0.54,26,1,18),(3,4,71,0,0.74,28,1,31),(4,4,86,0,0.9435,30,1,63),(5,4,102,0,1.5,32,1,102),(6,4,120,0,2.2,34,1,152),(7,4,137,0,3,36,1,212),(8,4,156,0,4.3597,38,1,286),(9,4,176,0,4.6993,40,1,363),(10,4,198,0,4.8281,42,1,443),(11,4,222,0,5.1609,44,1,488),(12,4,247,0,5.6558,46,1,519),(13,4,273,0,6.0221,48,1,553),(14,4,300,0,6.6101,50,1,577),(15,4,328,0,7.1981,54,2,612),(16,4,356,0,7.7861,56,2,645),(17,4,386,0,8.3741,60,2,676),(18,4,417,0,8.9621,64,3,706),(19,4,449,0,9.5501,68,3,738),(20,4,484,0,10.1381,70,4,769),(21,4,521,0,10.7261,74,4,801),(22,4,562,0,11.3141,78,4,833),(23,4,605,0,11.9021,80,5,863),(24,4,651,0,12.4901,84,6,895),(25,4,699,0,13.0781,86,6,926),(26,4,750,0,13.6661,90,7,957),(27,4,800,0,14.2541,92,7,989),(28,4,853,0,14.8421,96,8,1020),(29,4,905,0,15.4301,100,8,1051),(30,4,955,0,16.0181,102,9,1082),(31,4,1006,0,16.6061,106,9,1113),(32,4,1057,0,17.1941,108,10,1146),(33,4,1110,0,17.7821,112,10,1173),(34,4,1163,0,18.3701,114,11,1208),(35,4,1220,0,18.9581,118,11,1237),(36,4,1277,0,19.5461,120,12,1349),(37,4,1336,0,20.1341,124,12,1434),(38,4,1395,0,20.7221,128,13,1538),(39,4,1459,0,21.3101,132,13,1649),(40,4,1524,0,21.8981,136,14,1764),(41,4,1585,0,22.4861,142,15,1886),(42,4,1651,0,23.0741,152,15,2015),(43,4,1716,0,23.6621,162,16,2148),(44,4,1782,0,24.2501,174,16,2303),(45,4,1848,0,24.8381,184,17,2436),(46,4,1919,0,25.4261,188,17,2485),(47,4,1990,0,26.0141,192,18,2535),(48,4,2062,0,26.6021,196,19,2582),(49,4,2138,0,27.1901,200,19,2631),(50,4,2215,0,27.7781,206,20,2680),(51,4,2292,0,28.3661,210,20,2728),(52,4,2371,0,28.9541,214,21,2778),(53,4,2453,0,29.5421,218,22,2826),(54,4,2533,0,30.1301,224,22,2874),(55,4,2614,0,30.7177,228,23,2922),(56,4,2699,0,31.3057,234,23,2972),(57,4,2784,0,31.8937,238,24,3020),(58,4,2871,0,32.4817,242,25,3068),(59,4,2961,0,33.0697,248,25,3117),(60,4,3052,0,33.6577,252,26,3388),(61,4,3144,0,34.2457,258,28,3655),(62,4,3237,0,34.8337,262,30,3922),(63,4,3331,0,35.4217,268,32,4189),(1,8,40,120,0.4564,1,10,5),(2,8,52,147,0.4564,3,10,16),(3,8,67,174,0.7334,7,10,28),(4,8,81,202,1.1235,8,11,57),(5,8,95,230,1.3456,9,11,93),(6,8,111,259,1.9557,10,11,139),(7,8,126,289,2.7876,13,11,194),(8,8,143,319,3.2334,15,11,265),(9,8,160,350,3.7654,16,11,339),(10,8,178,382,4.2456,17,12,423),(11,8,199,459,4.7654,17,12,447),(12,8,219,537,5.0345,18,12,475),(13,8,241,601,5.199,19,12,509),(14,8,263,710,5.7241,21,12,523),(15,8,285,790,6.3298,22,13,559),(16,8,307,856,6.6051,24,13,589),(17,8,330,938,7.0485,26,13,617),(18,8,354,1020,7.4083,27,13,643),(19,8,379,1118,7.9334,28,13,674),(20,8,405,1202,8.3382,30,14,701),(21,8,432,1272,8.5517,32,14,729),(22,8,463,1357,8.9102,34,14,759),(23,8,494,1443,9.228,35,14,786),(24,8,528,1545,9.6818,36,15,815),(25,8,562,1633,10.1014,37,15,843),(26,8,598,1707,10.3246,39,15,871),(27,8,633,1812,10.804,40,15,900),(28,8,669,1977,11.0214,42,15,928),(29,8,704,2068,11.3608,44,16,957),(30,8,737,2175,11.9607,44,16,984),(31,8,770,2253,12.16,46,16,1012),(32,8,802,2362,12.5746,47,16,1042),(33,8,835,2457,12.7966,49,17,1065),(34,8,867,2553,13.2162,50,17,1098),(35,8,902,2680,13.497,52,17,1124),(36,8,935,2763,13.8566,53,18,1241),(37,8,970,2861,14.367,54,18,1300),(38,8,1004,2975,14.6707,56,18,1391),(39,8,1040,3075,15.1049,58,18,1489),(40,8,1077,3191,15.5617,60,19,1590),(41,8,1110,3293,16.4044,62,19,1697),(42,8,1156,3471,17.3076,67,19,1811),(43,8,1201,3575,18.5165,71,19,1926),(44,8,1247,3680,19.9224,78,20,2078),(45,8,1294,3801,21.0097,81,20,2177),(46,8,1343,3923,21.4023,83,20,2220),(47,8,1393,4031,21.9484,85,21,2265),(48,8,1443,4140,22.3444,87,21,2307),(49,8,1497,4281,22.8788,89,21,2349),(50,8,1551,4393,23.4508,91,22,2393),(51,8,1604,4506,23.8815,93,22,2437),(52,8,1660,4650,24.4958,95,22,2481),(53,8,1717,4765,24.9442,97,23,2524),(54,8,1773,4896,25.5368,99,23,2567),(55,8,1830,5013,26.079,101,23,2609),(56,8,1889,5206,26.4791,104,24,2654),(57,8,1949,5340,27.0667,106,24,2698),(58,8,2010,5461,27.6972,107,24,2740),(59,8,2073,5598,28.1686,110,25,2784),(60,8,2136,5751,28.7983,112,25,3025),(61,8,2201,5875,29.2976,115,25,3263),(62,8,2266,6015,29.7969,116,25,3500),(63,8,2332,6156,30.2962,119,26,3736);
/*!40000 ALTER TABLE `creature_template_classlevelstats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
