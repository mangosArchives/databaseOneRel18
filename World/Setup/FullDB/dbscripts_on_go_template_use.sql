--
-- Copyright (C) 2005-2013 MaNGOS <http://getmangos.com/>
-- Copyright (C) 2009-2013 MaNGOSZero <https://github.com/mangosone>
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
-- Table structure for table `dbscripts_on_go_template_use`
--

DROP TABLE IF EXISTS `dbscripts_on_go_template_use`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbscripts_on_go_template_use` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `buddy_entry` int(10) unsigned NOT NULL DEFAULT '0',
  `search_radius` int(10) unsigned NOT NULL DEFAULT '0',
  `data_flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `dataint2` int(11) NOT NULL DEFAULT '0',
  `dataint3` int(11) NOT NULL DEFAULT '0',
  `dataint4` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0',
  `comments` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbscripts_on_go_template_use`
--

LOCK TABLES `dbscripts_on_go_template_use` WRITE;
/*!40000 ALTER TABLE `dbscripts_on_go_template_use` DISABLE KEYS */;
INSERT INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(179804,1,10,14605,60000,0,0,2,0,0,0,0,0,0,0,0,'Drakonid Bones - Summon Bone Construct'),
(179985,1,10,15041,60000,0,0,2,0,0,0,0,0,0,0,0,'Spider Egg - Summon Spawn of Mar\'li'),
(182267,0,17,24538,10,0,0,0,0,0,0,0,0,0,0,0,'Add 10 Fire Bombs to inventory'),
(182267,0,30,520,0,0,0,0,0,0,0,0,0,0,0,0,'Send Taxi path 520'),
(182280,0,17,24538,10,0,0,0,0,0,0,0,0,0,0,0,'Add 10 Fire Bombs to inventory'),
(182280,0,30,523,0,0,0,0,0,0,0,0,0,0,0,0,'Send Taxi path 523'),
(182281,0,17,24538,10,0,0,0,0,0,0,0,0,0,0,0,'Add 10 Fire Bombs to inventory'),
(182281,0,30,522,0,0,0,0,0,0,0,0,0,0,0,0,'Send Taxi path 522'),
(182282,0,17,24538,10,0,0,0,0,0,0,0,0,0,0,0,'Add 10 Fire Bombs to inventory'),
(182282,0,30,524,0,0,0,0,0,0,0,0,0,0,0,0,'Send Taxi path 524'),
(182301,0,17,24538,10,0,0,0,0,0,0,0,0,0,0,0,'Add 10 Fire Bombs to inventory'),
(182301,0,30,520,0,0,0,0,0,0,0,0,0,0,0,0,'Send Taxi path 520'),
(182302,0,17,24538,10,0,0,0,0,0,0,0,0,0,0,0,'Add 10 Fire Bombs to inventory'),
(182302,0,30,523,0,0,0,0,0,0,0,0,0,0,0,0,'Send Taxi path 523'),
(182303,0,17,24538,10,0,0,0,0,0,0,0,0,0,0,0,'Add 10 Fire Bombs to inventory'),
(182303,0,30,522,0,0,0,0,0,0,0,0,0,0,0,0,'Send Taxi path 522'),
(182304,0,17,24538,10,0,0,0,0,0,0,0,0,0,0,0,'Add 10 Fire Bombs to inventory'),
(182304,0,30,524,0,0,0,0,0,0,0,0,0,0,0,0,'Send Taxi path 524');
/*!40000 ALTER TABLE `dbscripts_on_go_template_use` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

