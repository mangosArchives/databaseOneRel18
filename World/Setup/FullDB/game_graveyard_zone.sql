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
-- Table structure for table `game_graveyard_zone`
--

DROP TABLE IF EXISTS `game_graveyard_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_graveyard_zone` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ghost_zone` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`ghost_zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Trigger System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_graveyard_zone`
--

LOCK TABLES `game_graveyard_zone` WRITE;
/*!40000 ALTER TABLE `game_graveyard_zone` DISABLE KEYS */;
INSERT INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES (3,10,469),
(4,40,0),
(4,1581,0),
(6,38,469),
(7,1,67),
(7,11,0),
(7,38,67),
(8,3,0),
(8,38,67),
(8,1337,0),
(10,718,0),
(10,17,67),
(31,405,0),
(31,2100,0),
(32,14,0),
(34,215,67),
(35,148,469),
(36,41,0),
(36,3457,0),
(39,722,0),
(39,400,0),
(39,491,0),
(70,1377,0),
(89,215,67),
(90,1657,469),
(90,141,469),
(91,141,469),
(92,719,0),
(92,331,0),
(93,141,469),
(94,85,67),
(96,85,67),
(97,209,0),
(97,130,67),
(98,267,67),
(98,36,67),
(99,45,0),
(100,1,469),
(101,1,469),
(101,721,0),
(103,3,67),
(104,10,67),
(104,44,0),
(105,12,469),
(106,12,469),
(106,717,0),
(107,1519,469),
(107,2918,0),
(108,8,67),
(108,1417,0),
(108,1477,0),
(109,33,0),
(149,130,469),
(149,267,469),
(149,36,469),
(149,209,0),
(169,2597,0),
(189,15,469),
(189,2159,469),
(209,440,0),
(209,1941,0),
(209,1176,0),
(229,17,0),
(249,1638,469),
(249,17,67),
(249,215,469),
(289,85,67),
(309,357,469),
(309,1477,0),
(310,357,67),
(329,400,0),
(349,47,469),
(369,16,0),
(370,4,0),
(370,8,469),
(389,33,0),
(389,1581,0),
(389,1977,0),
(409,406,0),
(429,796,0),
(429,2057,0),
(449,361,0),
(450,490,0),
(469,141,67),
(469,148,469),
(469,1657,67),
(489,11,0),
(509,28,469),
(510,139,0),
(511,618,0),
(512,719,0),
(512,148,67),
(512,17,469),
(512,331,0),
(529,22,0),
(569,28,67),
(569,85,67),
(609,16,0),
(610,2597,67),
(611,2597,469),
(629,85,469),
(629,2057,0),
(630,16,0),
(631,15,67),
(631,2159,67),
(632,46,0),
(632,1584,0),
(632,1583,0),
(632,2717,0),
(632,2677,0),
(633,493,0),
(634,139,0),
(635,361,0),
(636,51,0),
(649,14,67),
(669,22,0),
(670,22,0),
(671,22,0),
(689,2597,0),
(709,14,67),
(729,2597,469),
(749,2597,67),
(750,2597,67),
(751,2597,469),
(769,3277,469),
(770,3277,67),
(771,3277,469),
(772,3277,67),
(789,47,67),
(809,3277,0),
(810,3277,0),
(829,28,0),
(829,2597,0),
(830,2597,0),
(849,357,0),
(849,2557,0),
(850,2917,67),
(850,2437,0),
(850,1637,67),
(850,14,67),
(851,1638,67),
(851,215,67),
(852,1,469),
(854,1519,67),
(854,12,0),
(869,2057,0),
(889,3358,67),
(890,3358,469),
(891,3358,0),
(892,3358,0),
(893,3358,67),
(894,3358,0),
(895,3358,469),
(896,3358,0),
(897,3358,0),
(898,3358,469),
(899,3358,67),
(909,3456,0),
(909,139,0),
(909,2017,0),
(910,3429,0),
(910,1377,0),
(911,10,0),
(912,3430,0),
(913,3478,0),
(913,3429,0),
(913,3428,0),
(914,3430,0),
(915,3433,0),
(916,3433,0),
(917,3433,0),
(917,3805,0),
(918,3524,0),
(918,3557,0),
(919,3483,67),
(919,3713,67),
(919,3562,67),
(919,3535,67),
(919,3836,67),
(919,3714,67),
(920,3483,469),
(920,3713,469),
(920,3562,469),
(920,3535,469),
(920,3836,469),
(920,3714,469),
(921,3487,0),
(921,3430,0),
(922,3430,0),
(923,3524,0),
(924,3524,0),
(924,3557,0),
(925,3525,0),
(926,3525,0),
(926,3557,0),
(927,139,0),
(928,3521,469),
(928,3717,67),
(928,3716,67),
(928,3715,67),
(928,3607,67),
(930,3518,0),
(933,3483,469),
(934,3483,67),
(939,3702,0),
(940,3702,0),
(942,3540,0),
(943,3540,0),
(944,3540,0),
(945,3540,0),
(946,3540,0),
(947,3540,0),
(948,3540,0),
(949,3540,0),
(950,3540,0),
(951,3540,0),
(952,3540,0),
(953,3540,0),
(954,3540,0),
(955,3540,0),
(956,3540,0),
(957,3540,0),
(958,3540,0),
(959,3540,0),
(960,3540,0),
(961,3540,0),
(962,3540,0),
(963,3540,0),
(964,3540,0),
(965,3540,0),
(966,3540,0),
(967,3540,0),
(968,3540,0),
(969,3521,0),
(969,3459,0),
(970,3521,67),
(970,3717,469),
(970,3716,469),
(970,3715,469),
(970,3607,469),
(971,3702,0),
(972,3540,0),
(973,3521,0),
(974,3540,0),
(975,3540,0),
(976,3540,0),
(977,3540,0),
(978,3540,0),
(979,3540,0),
(980,3540,0),
(981,3540,0),
(982,3540,0),
(983,3540,0),
(984,3540,0),
(985,3540,0),
(986,3540,0),
(987,3540,0),
(988,3540,0),
(989,3540,0),
(990,3540,0),
(991,3540,0),
(992,3518,0),
(993,3518,0),
(994,3703,0),
(994,3519,0),
(995,3519,0),
(998,3698,67),
(999,3540,0),
(1000,3540,0),
(1001,3540,0),
(1002,3540,0),
(1003,3540,0),
(1004,3540,0),
(1005,3540,0),
(1006,3540,0),
(1007,3540,0),
(1008,3540,0),
(1009,3540,0),
(1010,3540,0),
(1011,3540,0),
(1012,3540,0),
(1013,3540,0),
(1014,3540,0),
(1015,3540,0),
(1016,3540,0),
(1017,3540,0),
(1018,3540,0),
(1019,3540,0),
(1020,3540,0),
(1021,3540,0),
(1022,3540,0),
(1023,3540,0),
(1024,3540,0),
(1025,3540,0),
(1026,3540,0),
(1027,3540,0),
(1028,3540,0),
(1029,3540,0),
(1030,3540,0),
(1031,3540,0),
(1032,3540,0),
(1033,3540,0),
(1034,3540,0),
(1035,3540,0),
(1037,3518,0),
(1038,3518,0),
(1039,3518,0),
(1040,3483,0),
(1041,3483,0),
(1042,3519,0),
(1042,3789,0),
(1042,3791,0),
(1042,3792,0),
(1042,3790,0),
(1043,3521,469),
(1044,3521,0),
(1045,3523,0),
(1046,3523,0),
(1047,3520,67),
(1048,3520,469),
(1049,3522,469),
(1049,3923,0),
(1050,3522,67),
(1050,3923,0),
(1051,3519,0),
(1052,3540,0),
(1053,3540,0),
(1054,3540,0),
(1055,3540,0),
(1056,3540,0),
(1057,3540,0),
(1058,3540,0),
(1059,3540,0),
(1060,3540,0),
(1061,3540,0),
(1062,3540,0),
(1063,3540,0),
(1064,3540,0),
(1065,3540,0),
(1066,3540,0),
(1067,3540,0),
(1068,3540,0),
(1069,3540,0),
(1070,3540,0),
(1072,3540,0),
(1073,3540,0),
(1074,3540,0),
(1075,3540,0),
(1076,3540,0),
(1077,3540,0),
(1078,3540,0),
(1079,3540,0),
(1080,3540,0),
(1081,3540,0),
(1082,3540,0),
(1083,3540,0),
(1084,3540,0),
(1085,3540,0),
(1086,3540,0),
(1087,3540,0),
(1088,3540,0),
(1089,3540,0),
(1090,3540,0),
(1091,3540,0),
(1092,3540,0),
(1093,3540,0),
(1094,3540,0),
(1095,3540,0),
(1096,3540,0),
(1097,3540,0),
(1098,3540,0),
(1099,3540,0),
(1100,3540,0),
(1101,3540,0),
(1102,3540,0),
(1134,3540,0),
(1135,3540,0),
(1136,3540,0),
(1137,3540,0),
(1138,3540,0),
(1139,3540,0),
(1140,3540,0),
(1141,3540,0),
(1142,3540,0),
(1143,3540,0),
(1144,3540,0),
(1145,3540,0),
(1146,3540,0),
(1147,3540,0),
(1148,3540,0),
(1149,3540,0),
(1150,3540,0),
(1151,3540,0),
(1152,3540,0),
(1153,3540,0),
(1154,3540,0),
(1155,3540,0),
(1156,3540,0),
(1157,3540,0),
(1158,3540,0),
(1159,3540,0),
(1160,3540,0),
(1161,3540,0),
(1162,3540,0),
(1163,3540,0),
(1164,3540,0),
(1165,3540,0),
(1166,3540,0),
(1167,3540,0),
(1168,3540,0),
(1169,3540,0),
(1170,3540,0),
(1171,3540,0),
(1172,3540,0),
(1173,3540,0),
(1174,3540,0),
(1175,3540,0),
(1176,3540,0),
(1177,3540,0),
(1178,3540,0),
(1179,3540,0),
(1180,3540,0),
(1181,3540,0),
(1182,3540,0),
(1183,3540,0),
(1184,3540,0),
(1185,3540,0),
(1186,3540,0),
(1187,3540,0),
(1188,3540,0),
(1189,3540,0),
(1190,3540,0),
(1191,3540,0),
(1192,3540,0),
(1193,3540,0),
(1194,3540,0),
(1195,3540,0),
(1196,3540,0),
(1197,3540,0),
(1198,3540,0),
(1199,3540,0),
(1200,3540,0),
(1201,3540,0),
(1202,3540,0),
(1203,3540,0),
(1204,3540,0),
(1205,3540,0),
(1206,3540,0),
(1207,3540,0),
(1208,3540,0),
(1209,3540,0),
(1210,3540,0),
(1211,3540,0),
(1212,3540,0),
(1213,3540,0),
(1214,3540,0),
(1215,3540,0),
(1216,3540,0),
(1217,3540,0),
(1218,3540,0),
(1219,3540,0),
(1220,3540,0),
(1221,3540,0),
(1222,3540,0),
(1223,3540,0),
(1224,3540,0),
(1225,3540,0),
(1226,3540,0),
(1227,3540,0),
(1228,3540,0),
(1229,3540,0),
(1230,3540,0),
(1231,3540,0),
(1232,3540,0),
(1233,3540,0),
(1234,3540,0),
(1235,3540,0),
(1236,3540,0),
(1237,3540,0),
(1238,3540,0),
(1239,3540,0),
(1240,3483,469),
(1241,3522,0),
(1242,3522,0),
(1243,3522,0),
(1244,3522,0),
(1247,3523,0),
(1247,3847,0),
(1247,3848,0),
(1247,3845,0),
(1247,3849,0),
(1248,3483,67),
(1249,3606,0),
(1249,2366,0),
(1249,2367,0),
(1250,3520,0),
(1251,3520,0),
(1252,3523,0),
(1253,3522,469),
(1254,3522,0),
(1255,3522,0),
(1258,3968,0),
(1259,3968,0),
(1260,3968,0),
(1261,3959,469),
(1262,3959,67),
(1264,15,0),
(1265,15,0),
(1277,490,0),
(1278,490,0),
(1279,406,0),
(1280,406,0),
(1281,440,0),
(1282,440,0),
(1283,618,0),
(1284,618,0),
(1285,36,0),
(1286,28,0),
(1287,51,0),
(1288,3,0),
(1289,17,67),
(1291,3519,0),
(1292,4080,0),
(1293,4131,0),
(1293,4075,0),
(1298,3519,0);
/*!40000 ALTER TABLE `game_graveyard_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

