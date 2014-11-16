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
-- Table structure for table `pool_creature`
--

DROP TABLE IF EXISTS `pool_creature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool_creature` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `chance` float unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `pool_idx` (`pool_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool_creature`
--

LOCK TABLES `pool_creature` WRITE;
/*!40000 ALTER TABLE `pool_creature` DISABLE KEYS */;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (80582,12265,40,'Kobold Tunneler (Fargodeep Mine)'),
(80584,12265,25,'Kobold Tunneler (Fargodeep Mine)'),
(80585,12265,9,'Kobold Tunneler (Fargodeep Mine)'),
(80586,12265,12,'Kobold Tunneler (Fargodeep Mine)'),
(80588,12265,12,'Kobold Tunneler (Fargodeep Mine)'),
(80591,12265,34,'Kobold Tunneler (Fargodeep Mine)'),
(80601,12265,10,'Kobold Tunneler (Fargodeep Mine)'),
(80604,12265,29,'Kobold Tunneler (Fargodeep Mine)'),
(80605,12265,30,'Kobold Tunneler (Fargodeep Mine)'),
(80607,12265,35,'Kobold Tunneler (Fargodeep Mine)'),
(80608,12265,12,'Kobold Tunneler (Fargodeep Mine)'),
(80609,12265,19,'Kobold Tunneler (Fargodeep Mine)'),
(80610,12265,25,'Kobold Tunneler (Fargodeep Mine)'),
(80611,12265,19,'Kobold Tunneler (Fargodeep Mine)'),
(80614,12265,34,'Kobold Tunneler (Fargodeep Mine)'),
(80616,12265,12,'Kobold Tunneler (Fargodeep Mine)'),
(80617,12265,25,'Kobold Tunneler (Fargodeep Mine)'),
(80618,12265,19,'Kobold Tunneler (Fargodeep Mine)'),
(80620,12265,22,'Kobold Tunneler (Fargodeep Mine)'),
(80621,12265,45,'Kobold Tunneler (Fargodeep Mine)'),
(80622,12265,12,'Kobold Tunneler (Fargodeep Mine)'),
(80626,12265,45,'Kobold Tunneler (Fargodeep Mine)'),
(80627,12265,10,'Kobold Tunneler (Fargodeep Mine)'),
(80628,12265,30,'Kobold Tunneler (Fargodeep Mine)'),
(80629,12265,9,'Kobold Tunneler (Fargodeep Mine)'),
(80631,12265,12,'Kobold Tunneler (Fargodeep Mine)'),
(80632,12265,15,'Kobold Tunneler (Fargodeep Mine)'),
(80633,12265,12,'Kobold Tunneler (Fargodeep Mine)'),
(80634,12265,33,'Kobold Tunneler (Fargodeep Mine)'),
(80636,12265,35,'Kobold Tunneler (Fargodeep Mine)'),
(80638,12265,40,'Kobold Tunneler (Fargodeep Mine)'),
(80639,12265,12,'Kobold Tunneler (Fargodeep Mine)'),
(80640,12265,11,'Kobold Tunneler (Fargodeep Mine)'),
(80645,12265,12,'Kobold Tunneler (Fargodeep Mine)'),
(80649,12265,32,'Kobold Tunneler (Fargodeep Mine)'),
(80650,12265,34,'Kobold Tunneler (Fargodeep Mine)');
/*!40000 ALTER TABLE `pool_creature` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

