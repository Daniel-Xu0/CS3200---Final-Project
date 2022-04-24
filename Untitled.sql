-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: anime
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `anime`
--

DROP TABLE IF EXISTS `anime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anime` (
  `anime_id` int NOT NULL,
  `anime_name` varchar(100) NOT NULL,
  `num_episodes` int NOT NULL,
  `studios` text,
  `release_season` varchar(20) DEFAULT NULL,
  `rating` float NOT NULL,
  `release_year` float NOT NULL,
  `end_year` float NOT NULL,
  PRIMARY KEY (`anime_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anime`
--

LOCK TABLES `anime` WRITE;
/*!40000 ALTER TABLE `anime` DISABLE KEYS */;
INSERT INTO `anime` VALUES (1,'Demon Slayer: Kimetsu no Yaiba - Entertainment District Arc',0,'ufotable','Fall ',4.6,2021,0),(2,'Fruits Basket the Final Season',13,'TMS Entertainment','Spring',4.6,2021,0),(3,'Mo Dao Zu Shi 3',12,'B.C MAY PICTURES','',4.58,2021,0),(4,'Fullmetal Alchemist: Brotherhood',64,'Bones','Spring',4.58,2009,2010),(5,'Attack on Titan 3rd Season: Part II',10,'WIT Studio','Spring',4.57,2019,0),(6,'Jujutsu Kaisen',24,'MAPPA','Fall ',4.56,2020,2021),(7,'Attack on Titan The Final Season: Part II',0,'MAPPA','Winter',4.56,2022,0),(8,'Attack on Titan The Final Season',16,'MAPPA','Winter',4.55,2020,2021),(9,'Demon Slayer: Kimetsu no Yaiba Movie - Mugen Train',0,'ufotable','',4.54,2020,0),(10,'Haikyuu!! Karasuno High School vs Shiratorizawa Academy',10,'Production I.G','Fall ',4.53,2016,0),(11,'your name.',0,'CoMix Wave Films','',4.51,2016,0),(12,'Haikyuu!! Second Season',25,'Production I.G','Fall ',4.51,2015,2016),(13,'Demon Slayer: Kimetsu no Yaiba',26,'ufotable','Spring',4.51,2019,0),(14,'Hunter x Hunter (2011)',148,'MADHOUSE','Fall ',4.51,2011,2014),(15,'A Silent Voice',0,'Kyoto Animation','',4.51,2016,0),(16,'Violet Evergarden Movie',0,'Kyoto Animation','',4.5,2020,0),(17,'Haikyuu!! To the Top: Part II',12,'Production I.G','Fall ',4.5,2020,0),(18,'Heaven Official\'s Blessing Special',1,'Haoliners Animation League','',4.5,2021,0),(19,'That Time I Got Reincarnated as a Slime Season 2',12,'8-Bit','Winter',4.48,2021,0),(20,'Given',11,'Lerche','Summer',4.48,2019,0),(21,'Code Geass: Lelouch of the Rebellion R2',25,'Sunrise','Spring',4.47,2008,0),(22,'Mo Dao Zu Shi 2',8,'B.C MAY PICTURES','',4.46,2019,0),(23,'Gintama: The Very Final',0,'BN Pictures','',4.46,2021,0),(24,'Link Click',11,'Studio LAN','',4.46,2021,0),(25,'Mob Psycho 100 II',13,'Bones','Winter',4.46,2019,0),(26,'Haikyuu!! To the Top',13,'Production I.G','Winter',4.46,2020,0),(27,'Fruits Basket 2nd Season',25,'8 Pan','Spring',4.45,2020,0),(28,'The Promised Neverland',12,'CloverWorks','Winter',4.45,2019,0),(29,'Spirited Away',0,'Studio Ghibli','',4.45,2001,0),(30,'That Time I Got Reincarnated as a Slime Season 2: Part II',12,'8-Bit','Summer',4.45,2021,0),(31,'Heaven Official\'s Blessing',11,'Haoliners Animation League','',4.45,2020,2021),(32,'Ranking of Kings',0,'WIT Studio','Fall ',4.45,2021,0),(33,'Mushoku Tensei: Jobless Reincarnation - Part II',12,'Studio Bind','Fall ',4.45,2021,0),(34,'Gintama.: Shirogane no Tamashii-hen 2',14,'BN Pictures','Summer',4.44,2018,0),(35,'Clannad After Story',24,'Kyoto Animation','Fall ',4.44,2008,2009),(36,'Mo Dao Zu Shi',15,'B.C MAY PICTURES','',4.44,2018,0),(37,'Gintama\': Enchousen',13,'Sunrise','Fall ',4.44,2012,2013),(38,'Banana Fish',24,'MAPPA','Summer',4.44,2018,0),(39,'Douluo Dalu 2',16,'Sparkly Key Animation Studio','',4.44,2018,0),(40,'Gintama Kanketsu-hen: Yorozuya yo Eien Nare',0,'Sunrise','',4.44,2013,0),(41,'Gintama.',12,'BN Pictures','Winter',4.44,2017,0),(42,'Gintama.: Shirogane no Tamashii-hen',12,'BN Pictures','Winter',4.44,2018,0),(43,'Attack on Titan 3rd Season',12,'WIT Studio','Summer',4.44,2018,0),(44,'Steins;Gate',24,'WHITE FOX','Spring',4.44,2011,0),(45,'Haikyuu!!',25,'Production I.G','Spring',4.43,2014,0),(46,'Gintama\'',51,'Sunrise','Spring',4.43,2011,2012),(47,'One-Punch Man',12,'MADHOUSE','Fall ',4.43,2015,0),(48,'Demon Slayer: Kimetsu no Yaiba - Mugen Train',0,'ufotable','Fall ',4.43,2021,0),(50,'Howl\'s Moving Castle',0,'Studio Ghibli','',4.43,2004,0),(51,'Natsume\'s Book of Friends Season 6',11,'Shuka','Spring',4.43,2017,0),(52,'JoJo\'s Bizarre Adventure: Golden Wind',39,'David Production','Fall ',4.43,2018,2019),(53,'JoJo\'s Bizarre Adventure: Stone Ocean',12,'David Production','Fall ',4.42,2021,0),(54,'Vinland Saga',24,'WIT Studio','Summer',4.42,2019,0),(55,'Natsume\'s Book of Friends Season 4',13,'Brain\'s Base','Winter',4.4,2012,0),(56,'Assassination Classroom 2nd Season',25,'Lerche','Winter',4.4,2016,0),(57,'Natsume\'s Book of Friends Season 5',11,'Shuka','Fall ',4.4,2016,0),(58,'My Hero Academia 3',25,'Bones','Spring',4.4,2018,0),(59,'Violet Evergarden',13,'Kyoto Animation','Winter',4.39,2018,0),(60,'That Time I Got Reincarnated as a Slime',24,'8-Bit','Fall ',4.39,2018,2019),(61,'My Hero Academia 2',25,'Bones','Spring',4.39,2017,0),(62,'Wolf Children',0,'Studio Chizu','',4.39,2012,0),(63,'SK8 the Infinity',12,'Bones','Winter',4.38,2021,0),(64,'Hajime no Ippo: The Fighting!',75,'MADHOUSE','Fall ',4.38,2000,2002),(65,'Code Geass: Lelouch of the Rebellion',25,'Sunrise','Fall ',4.38,2006,2007),(67,'Yona of the Dawn: Zeno Arc',2,'Pierrot','',4.37,2016,0),(68,'JoJo\'s Bizarre Adventure: Diamond is Unbreakable',39,'David Production','Spring',4.37,2016,0),(69,'Kamisama Kiss: Kako-hen',4,'TMS Entertainment','',4.37,2015,2016),(70,'Hajime no Ippo: New Challenger',26,'MADHOUSE','Winter',4.37,2009,0),(71,'Mushishi Zoku Shou 2nd Season',10,'Artland','Fall ',4.37,2014,0),(72,'Attack on Titan',25,'WIT Studio','Spring',4.37,2013,0),(73,'Haikyuu!! Tokushuu! Harukou Volley ni Kaketa Seishun',1,'Production I.G','',4.37,2017,0),(74,'Kaguya-sama: Love Is War?',12,'A-1 Pictures','Spring',4.37,2020,0),(75,'Gintama: Porori-hen',13,'BN Pictures','Fall ',4.36,2017,0),(76,'March Comes in like a Lion 2nd Season',22,'SHAFT','Fall ',4.36,2017,2018),(77,'Natsume\'s Book of Friends Season 3',13,'Brain\'s Base','Summer',4.36,2011,0),(78,'Attack on Titan 2nd Season',12,'WIT Studio','Spring',4.36,2017,0),(79,'I Want to Eat Your Pancreas',0,'Studio VOLN','',4.36,2018,0),(80,'Rascal Does Not Dream of a Dreaming Girl',0,'CloverWorks','',4.36,2019,0),(81,'Given Movie',0,'Lerche','',4.36,2020,0),(82,'Mushishi Zoku Shou',10,'Artland','Spring',4.36,2014,0),(83,'Princess Mononoke',0,'Studio Ghibli','',4.36,1997,0),(84,'Kuroko\'s Basketball 3',25,'Production I.G','Winter',4.36,2015,0),(85,'BTS: We are Bulletproof - the Eternal',0,'Studio Pivote','',4.36,2020,0),(86,'Haikyuu!! Movie 4: Battle of Concepts',0,'Production I.G','',4.36,2017,0),(87,'Dr. Stone',24,'8 Pan','Summer',4.36,2019,0),(88,'Attack on Titan: No Regrets',2,'WIT Studio','',4.36,2014,2015),(89,'Horimiya',13,'CloverWorks','Winter',4.36,2021,0),(90,'Cowboy Bebop',26,'Sunrise','Spring',4.36,1998,1999),(91,'Hotarubi no Mori e',0,'Brain\'s Base','',4.36,2011,0),(92,'The Disastrous Life of Saiki K. 2nd Season',24,'J.C.Staff','Winter',4.36,2018,0),(93,'Monogatari Series: Second Season',26,'SHAFT','Summer',4.36,2013,0),(94,'Castlevania Season 4',10,'Tiger Animation','Spring',4.35,2021,0),(95,'Doukyuusei',0,'A-1 Pictures','',4.35,2016,0),(96,'ERASED',12,'A-1 Pictures','Winter',4.35,2016,0),(97,'The Rising of the Shield Hero',25,'Kinema Citrus','Winter',4.35,2019,0),(98,'To Your Eternity',20,'Brain\'s Base','Spring',4.35,2021,0),(99,'Hajime no Ippo: Rising',25,'MADHOUSE','Fall ',4.35,2013,2014),(100,'Josee, the Tiger and the Fish',0,'Bones','',4.35,2020,0),(101,'Made in Abyss',13,'Kinema Citrus','Summer',4.35,2017,0),(102,'Rurouni Kenshin: Tsuiokuhen',4,'Studio DEEN','',4.35,1999,0),(103,'Descending Stories: Shouwa Genroku Rakugo Shinjuu',12,'Studio DEEN','Winter',4.35,2017,0),(104,'Haikyuu!! Movie 3: Talent and Sense',0,'Production I.G','',4.35,2017,0),(105,'Mo Dao Zu Shi Q',30,'B.C MAY PICTURES','',4.34,2020,2021),(106,'Natsume\'s Book of Friends Season 2',13,'Brain\'s Base','Winter',4.34,2009,0),(107,'Made in Abyss Movie: Dawn of the Deep Soul',0,'Kinema Citrus','',4.34,2020,0),(108,'Fruits Basket 1st Season',25,'TMS Entertainment','Spring',4.34,2019,0),(109,'Kizumonogatari Part 3: Reiketsu',0,'SHAFT','',4.34,2017,0),(110,'Dr. Stone: Stone Wars',11,'8 Pan','Winter',4.34,2021,0),(111,'My Hero Academia 4',25,'Bones','Fall ',4.34,2019,2020),(112,'Owarimonogatari II',0,'SHAFT','',4.34,2017,0),(113,'Great Teacher Onizuka',43,'Pierrot','Summer',4.33,1999,2000),(114,'Your lie in April',22,'A-1 Pictures','Fall ',4.33,2014,2015),(115,'Bungo Stray Dogs 3rd Season',12,'Bones','Spring',4.33,2019,0),(116,'Kamisama Kiss 2nd Season',12,'TMS Entertainment','Winter',4.33,2015,0),(117,'Violet Evergarden: Eternity and the Auto Memory Doll',0,'Kyoto Animation','',4.33,2019,0),(118,'Mob Psycho 100',12,'Bones','Summer',4.33,2016,0),(119,'Natsume\'s Book of Friends Season 6 Specials',0,'Shuka','',4.33,2017,0),(120,'Kuroko\'s Basketball 2',25,'Production I.G','Fall ',4.33,2013,2014),(121,'Natsume\'s Book of Friends Movie: Ephemeral Bond',0,'Shuka','',4.33,2018,0),(122,'Odd Taxi',13,'P.I.C.S.','Spring',4.32,2021,0),(123,'The Legend of Hei',0,'','',4.32,2019,0),(124,'Death Note',37,'MADHOUSE','Fall ',4.32,2006,2007),(125,'Moriarty the Patriot 2nd Season',13,'Production I.G','Spring',4.32,2021,0),(126,'Fate/stay night: Heaven\'s Feel III. spring song',0,'ufotable','',4.32,2020,0),(127,'One Piece Movie 14: Stampede',0,'Toei Animation','',4.32,2019,0),(128,'Kingdom 3',26,'St. Signpost','Spring',4.32,2020,2021),(129,'One Piece',100,'Toei Animation','Fall ',4.32,1999,0),(130,'Mushishi: Hihamukage',0,'Artland','',4.32,2014,0),(131,'Tokyo Revengers',24,'LIDEN FILMS','Spring',4.31,2021,0),(132,'My Hero Academia Movie 2: Heroes:Rising',0,'Bones','',4.31,2019,0),(133,'Fate/Zero 2',12,'ufotable','Spring',4.31,2012,0),(134,'My Hero Academia',13,'Bones','Spring',4.31,2016,0),(135,'Steins;Gate Movie: Load Region of Deja Vu',0,'WHITE FOX','',4.31,2013,0),(137,'Yuri!!! on Ice',12,'MAPPA','Fall ',4.31,2016,0),(138,'Dou Po Cangqiong: San Nian Zhi Yao',12,'Motion Magic','',4.31,2021,0),(139,'Dororo (2019)',24,'MAPPA','Winter',4.3,2019,0),(140,'Bunny Drop',11,'Production I.G','Summer',4.3,2011,0),(141,'Gintama: Shinyaku Benizakura-hen',0,'Sunrise','',4.3,2010,0),(142,'The Garden of Sinners Movie 5: Paradox Paradigm',0,'ufotable','',4.3,2008,0),(143,'Bakuman. 3',25,'J.C.Staff','Fall ',4.3,2012,2013),(144,'The Disastrous Life of Saiki K.',120,'J.C.Staff','Summer',4.3,2016,0),(145,'Given: Uragawa no Sonzai',1,'Lerche','',4.3,2021,0),(146,'Black Butler: Book of the Atlantic',0,'A-1 Pictures','',4.3,2017,0),(147,'The Boy and the Beast',0,'Studio Chizu','',4.3,2015,0),(148,'Miss Kobayashi\'s Dragon Maid S',12,'Kyoto Animation','Summer',4.3,2021,0),(149,'Kono Oto Tomare! 2nd Season',13,'Platinum Vision','Fall ',4.3,2019,0),(150,'The Disappearance of Haruhi Suzumiya',0,'Kyoto Animation','',4.3,2010,0),(151,'Kizumonogatari Part 2: Nekketsu',0,'SHAFT','',4.29,2016,0),(152,'Mushishi Zoku Shou: Suzu no Shizuku',0,'Artland','',4.29,2015,0),(153,'Overlord III',13,'MADHOUSE','Summer',4.29,2018,0),(154,'Re:ZERO -Starting Life in Another World- Season 2: Part II',12,'WHITE FOX','Winter',4.29,2021,0),(155,'Laid-Back Camp 2nd Season',13,'C-Station','Winter',4.29,2021,0),(156,'Saga of Tanya the Evil Movie',0,'NUT','',4.29,2019,0),(157,'Mushishi Zoku Shou: Odoro no Michi',0,'Artland','',4.29,2014,0),(158,'The Disastrous Life of Saiki K. 3',0,'J.C.Staff','',4.29,2018,0),(159,'Hellsing Ultimate',10,'Graphinica','',4.29,2006,2012),(160,'Natsume\'s Book of Friends Season 5 Specials',0,'Shuka','',4.29,2017,0),(161,'JoJo\'s Bizarre Adventure Re-Edited',0,'David Production','',4.28,2014,0),(162,'Parasyte -the maxim-',24,'MADHOUSE','Fall ',4.28,2014,2015),(163,'Hikari: Be My Light',0,'','',4.28,2020,0),(164,'Ouran High School Host Club',26,'Bones','Spring',4.28,2006,0),(165,'Food Wars! The Second Plate',13,'J.C.Staff','Summer',4.28,2016,0),(166,'Ghost in the Shell: Stand Alone Complex 2nd Gig',26,'Production I.G','Winter',4.28,2004,2005),(167,'Barakamon',12,'Kinema Citrus','Summer',4.28,2014,0),(168,'Noragami Aragoto',13,'Bones','Fall ',4.28,2015,0),(169,'Ace of the Diamond: Act II',52,'MADHOUSE','Spring',4.28,2019,2020),(170,'Re:ZERO -Starting Life in Another World- Season 2',13,'WHITE FOX','Summer',4.28,2020,0),(171,'Ascendance of a Bookworm: Part II',12,'Ajia-do','Spring',4.28,2020,0),(172,'Kamisama Kiss: Kamisama, Shiawase ni Naru',1,'TMS Entertainment','',4.28,2016,0),(173,'Quanzhi Gaoshou: Tebie Pian',3,'Colored Pencil Animation','',4.28,2018,0),(174,'Steins;Gate 0',23,'WHITE FOX','Spring',4.28,2018,0),(175,'Golden Kamuy Season 3',12,'Geno Studio','Fall ',4.28,2020,0),(176,'Weathering With You',0,'CoMix Wave Films','',4.27,2019,0),(177,'Semantic Error',0,'','',4.27,2021,0),(178,'86: Eighty-Six - Part II',0,'A-1 Pictures','Fall ',4.27,2021,0),(179,'Dou Po Cangqiong 4th Season',24,'Motion Magic','',4.27,2021,0),(180,'School Babysitters',12,'Brain\'s Base','Winter',4.27,2018,0),(181,'Douluo Dalu',26,'Sparkly Key Animation Studio','',4.27,2018,0),(182,'The Garden of Sinners Movie 7: ......Not Nothing Heart. (Murder Speculation Part B)',0,'ufotable','',4.27,2009,0),(183,'Major Season 5',25,'Synergy SP','Winter',4.27,2009,0),(184,'Bungo Stray Dogs 2nd Season',12,'Bones','Fall ',4.27,2016,0),(185,'Maquia: When the Promised Flower Blooms',0,'P.A. WORKS','',4.27,2018,0),(186,'Steins;Gate: Egoistic Poriomania',0,'WHITE FOX','',4.27,2012,0),(187,'Mushishi',26,'Artland','Fall ',4.27,2005,2006),(188,'The Stranger by the Shore',0,'Studio Hibari','',4.27,2020,0),(189,'One Piece Movie 10: Strong World',0,'Toei Animation','',4.27,2009,0),(190,'Food Wars! The Third Plate',12,'J.C.Staff','Fall ',4.27,2017,0),(191,'Kuroko\'s Basketball: Last Game',0,'Production I.G','',4.26,2017,0),(192,'Tengen Toppa Gurren Lagann',27,'GAINAX','Spring',4.26,2007,0),(193,'Kamisama Kiss',13,'TMS Entertainment','Fall ',4.26,2012,0),(194,'Moriarty the Patriot',11,'Production I.G','Fall ',4.26,2020,0),(195,'Kuroko\'s Basketball: The Greatest Present',0,'Production I.G','',4.26,2015,0),(196,'Kaguya-sama: Love Is War',12,'A-1 Pictures','Winter',4.26,2019,0),(197,'Food Wars! Shokugeki no Souma',24,'J.C.Staff','Spring',4.26,2015,0),(198,'Mushoku Tensei: Jobless Reincarnation',11,'Studio Bind','Winter',4.26,2021,0),(199,'Snow White with the Red Hair 2nd Season',12,'Bones','Winter',4.26,2016,0),(200,'JoJo\'s Bizarre Adventure: Stardust Crusaders',24,'David Production','Spring',4.26,2014,0),(201,'Natsume Yuujinchou: Itsuka Yuki no Hi ni',1,'Brain\'s Base','',4.26,2014,0),(202,'Detective Conan: Episode One - The Great Detective Turned Small',0,'TMS Entertainment','',4.26,2016,0),(203,'No Game No Life',12,'MADHOUSE','Spring',4.26,2014,0),(204,'Chihayafuru 2',25,'MADHOUSE','Winter',4.25,2013,0),(205,'Gintama: Yorinuki Gintama-san on Theater 2D',0,'Sunrise','',4.25,2012,0),(206,'Legend of the Galactic Heroes',11,'Magic Bus','',4.25,1988,1997),(207,'The Quintessential Quintuplets 2',12,'Bibury Animation Studios','Winter',4.25,2021,0),(208,'Black Butler: Book of Murder',2,'A-1 Pictures','',4.25,2014,0),(209,'Yuri!!! on Ice: Welcome to The Madness',0,'MAPPA','',4.25,2017,0),(210,'My Neighbor Totoro',0,'Studio Ghibli','',4.25,1988,0),(211,'Food Wars! The Third Plate: Totsuki Train Arc',12,'J.C.Staff','Spring',4.25,2018,0),(212,'Anohana: The Flower We Saw That Day',11,'A-1 Pictures','Spring',4.25,2011,0),(213,'Gintama: Aizome Kaori-hen',2,'BN Pictures','',4.25,2016,0),(214,'Fate/stay night: Unlimited Blade Works 2',13,'ufotable','Spring',4.25,2015,0),(215,'Fate/stay night: Heaven\'s Feel II. lost butterfly',0,'ufotable','',4.25,2019,0),(216,'Hunter x Hunter OVA 3: Greed Island Final',14,'Nippon Animation','',4.25,2004,0),(217,'Kuroko\'s Basketball',25,'Production I.G','Spring',4.25,2012,0),(218,'Naruto Shippuden',500,'Pierrot','Winter',4.25,2007,2017),(219,'Maid-sama!',26,'J.C.Staff','Spring',4.25,2010,0),(220,'Fairy Tail: Final Season',51,'A-1 Pictures','Fall ',4.25,2018,2019),(221,'Scissor Seven 3rd Season',10,'Sharefun Studio','',4.25,2021,0),(222,'Fairy Tail 2',102,'A-1 Pictures','Spring',4.25,2014,2016),(223,'Hajime no Ippo: Champion Road',0,'MADHOUSE','',4.25,2003,0),(224,'Chihayafuru 3',24,'MADHOUSE','Fall ',4.25,2019,2020),(225,'Haikyuu!! Riku vs Kuu',2,'Production I.G','',4.24,2020,0),(226,'Violet Evergarden Special',0,'Kyoto Animation','',4.24,2018,0),(227,'Bakuman. 2',25,'J.C.Staff','Fall ',4.24,2011,2012),(228,'Spice and Wolf II',12,'Brain\'s Base','Summer',4.24,2009,0),(229,'Magi: The Kingdom of Magic',25,'A-1 Pictures','Fall ',4.24,2013,2014),(230,'Black Butler: Book of Circus',10,'A-1 Pictures','Summer',4.24,2014,0),(231,'Gintama: Shinyaku Benizakura-hen Special',0,'Sunrise','',4.24,2010,0),(232,'Yona of the Dawn',24,'Pierrot','Fall ',4.24,2014,2015),(233,'Evangelion: 3.0+1.0 Thrice Upon a Time',0,'Khara','',4.24,2021,0),(234,'Haikyuu!! Movie 2: Shousha to Haisha',0,'Production I.G','',4.24,2015,0),(235,'School Babysitters Special',0,'Brain\'s Base','',4.24,2018,0),(236,'Toilet-Bound Hanako-kun',12,'Lerche','Winter',4.24,2020,0),(237,'Shelter',0,'A-1 Pictures','',4.24,2016,0),(238,'Scissor Seven 2nd Season',10,'Sharefun Studio','',4.24,2019,2020),(239,'Non Non Biyori Nonstop',12,'SILVER LINK.','Winter',4.24,2021,0),(240,'Samurai Champloo',26,'Manglobe','Spring',4.24,2004,2005),(241,'Run with the Wind',23,'Production I.G','Fall ',4.24,2018,2019),(242,'My Dress-Up Darling',0,'CloverWorks','Winter',4.24,2022,0),(243,'Grave of the Fireflies',0,'Studio Ghibli','',4.23,1988,0),(244,'JoJo\'s Bizarre Adventure: Phantom Blood',0,'A.P.P.P.','',4.23,2007,0),(245,'Tengen Toppa Gurren Lagann: Lagann-hen',0,'GAINAX','',4.23,2009,0),(246,'Haikyuu!! Movie 1: Owari to Hajimari',0,'Production I.G','',4.23,2015,0),(247,'No Game No Life: Zero',0,'MADHOUSE','',4.23,2017,0),(248,'Shouwa Genroku Rakugo Shinjuu',13,'Studio DEEN','Winter',4.23,2016,0),(249,'Dragon Ball Super Movie: Broly',0,'Toei Animation','',4.23,2018,0),(250,'Detective Conan Movie 20: The Darkest Nightmare',0,'TMS Entertainment','',4.23,2016,0),(251,'Sasaki and Miyano',0,'Studio DEEN','Winter',4.23,2022,0),(252,'Black Lagoon: The Second Barrage',12,'MADHOUSE','Fall ',4.23,2006,0),(253,'Ace of the Diamond: Second Season',51,'MADHOUSE','Spring',4.23,2015,2016),(254,'My Teen Romantic Comedy SNAFU Climax',12,'feel.','Summer',4.23,2020,0),(255,'Evangelion: 2.0 You Can (Not) Advance',0,'Khara','',4.23,2009,0);
/*!40000 ALTER TABLE `anime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anime_character`
--

DROP TABLE IF EXISTS `anime_character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anime_character` (
  `character_name` varchar(50) NOT NULL,
  `anime_id` int NOT NULL,
  `va_id` int NOT NULL,
  PRIMARY KEY (`character_name`,`anime_id`,`va_id`),
  KEY `character_from` (`anime_id`),
  KEY `voiced_by` (`va_id`),
  CONSTRAINT `character_from` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`),
  CONSTRAINT `voiced_by` FOREIGN KEY (`va_id`) REFERENCES `voice_actor` (`va_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anime_character`
--

LOCK TABLES `anime_character` WRITE;
/*!40000 ALTER TABLE `anime_character` DISABLE KEYS */;
/*!40000 ALTER TABLE `anime_character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_name` varchar(20) NOT NULL,
  PRIMARY KEY (`genre_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_genre`
--

DROP TABLE IF EXISTS `has_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `has_genre` (
  `genre_name` varchar(20) NOT NULL,
  `anime_id` int NOT NULL,
  PRIMARY KEY (`genre_name`,`anime_id`),
  KEY `anime_genre` (`anime_id`),
  CONSTRAINT `anime_genre` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`),
  CONSTRAINT `genre_fk` FOREIGN KEY (`genre_name`) REFERENCES `genre` (`genre_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_genre`
--

LOCK TABLES `has_genre` WRITE;
/*!40000 ALTER TABLE `has_genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `has_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `anime_id` int DEFAULT NULL,
  `rating` float NOT NULL,
  `review_text` text,
  PRIMARY KEY (`review_id`),
  KEY `reviewed_by` (`username`),
  KEY `anime_reviewing` (`anime_id`),
  CONSTRAINT `anime_reviewing` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`),
  CONSTRAINT `reviewed_by` FOREIGN KEY (`username`) REFERENCES `user_profile` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_watch_list`
--

DROP TABLE IF EXISTS `to_watch_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `to_watch_list` (
  `username` varchar(20) NOT NULL,
  `anime_id` int NOT NULL,
  PRIMARY KEY (`username`,`anime_id`),
  KEY `anime_to_watch` (`anime_id`),
  CONSTRAINT `anime_to_watch` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`),
  CONSTRAINT `watch_list_account` FOREIGN KEY (`username`) REFERENCES `user_profile` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_watch_list`
--

LOCK TABLES `to_watch_list` WRITE;
/*!40000 ALTER TABLE `to_watch_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `to_watch_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `status` text,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voice_actor`
--

DROP TABLE IF EXISTS `voice_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voice_actor` (
  `va_id` int NOT NULL AUTO_INCREMENT,
  `va_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`va_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voice_actor`
--

LOCK TABLES `voice_actor` WRITE;
/*!40000 ALTER TABLE `voice_actor` DISABLE KEYS */;
/*!40000 ALTER TABLE `voice_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watched_list`
--

DROP TABLE IF EXISTS `watched_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watched_list` (
  `username` varchar(20) NOT NULL,
  `anime_id` int NOT NULL,
  PRIMARY KEY (`username`,`anime_id`),
  KEY `anime_watched` (`anime_id`),
  CONSTRAINT `anime_watched` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`),
  CONSTRAINT `watched_list_account` FOREIGN KEY (`username`) REFERENCES `user_profile` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watched_list`
--

LOCK TABLES `watched_list` WRITE;
/*!40000 ALTER TABLE `watched_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `watched_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-24 17:19:13
