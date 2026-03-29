-- MySQL dump 10.13  Distrib 8.4.8, for Linux (x86_64)
--
-- Host: localhost    Database: ipl
-- ------------------------------------------------------
-- Server version	8.4.8-0ubuntu0.25.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `icons`
--

DROP TABLE IF EXISTS `icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `icons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icons`
--

LOCK TABLES `icons` WRITE;
/*!40000 ALTER TABLE `icons` DISABLE KEYS */;
INSERT INTO `icons` VALUES (1,'IPL Titles','Number of IPL trophies won by Chennai Super Kings','2026-03-19 05:54:56'),(2,'Champions League Titles','CLT20 titles won by CSK','2026-03-19 05:54:56'),(3,'Playoff Appearances','Number of times CSK qualified for playoffs','2026-03-19 05:54:56'),(4,'Final Appearances','Total IPL finals played by CSK','2026-03-19 05:54:56'),(5,'Win Percentage','Overall win percentage in IPL history','2026-03-19 05:54:56'),(6,'Fair Play Awards','Number of Fair Play awards won','2026-03-19 05:54:56'),(7,'Home Ground','M. A. Chidambaram Stadium, Chennai','2026-03-19 05:54:56'),(8,'Captain','MS Dhoni – Most successful CSK captain','2026-03-19 05:54:56');
/*!40000 ALTER TABLE `icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_achievements`
--

DROP TABLE IF EXISTS `player_achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_achievements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_name` varchar(100) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `achievement` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `explanation` text,
  `explaination` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_achievements`
--

LOCK TABLES `player_achievements` WRITE;
/*!40000 ALTER TABLE `player_achievements` DISABLE KEYS */;
INSERT INTO `player_achievements` VALUES (1,'MS Dhoni',2013,'Champions League T20 Winner (Captain)','2026-03-21 07:03:58','Led CSK to Champions League T20 victory with outstanding captaincy',NULL),(2,'MS Dhoni',2014,'Most successful IPL captain (at the time)','2026-03-21 07:03:58','Recognized as the most successful IPL captain with consistent playoff appearances',NULL),(3,'MS Dhoni',2019,'Highest capped IPL player','2026-03-21 07:03:58','Became the highest capped IPL player, showing remarkable longevity and consistency',NULL),(4,'Suresh Raina',2014,'One of the top run scorers of IPL season','2026-03-21 07:03:58','Delivered consistent performances and was among the top run scorers of the season',NULL),(5,'Suresh Raina',2020,'First IPL player to reach 5000 runs','2026-03-21 07:03:58','Became the first player in IPL history to cross 5000 runs milestone',NULL),(6,'Suresh Raina',2013,'Consistent top performer in IPL playoffs','2026-03-21 07:03:58','Known for his impactful performances in crucial playoff matches',NULL),(7,'Dwayne Bravo',2013,'Purple Cap Winner (32 wickets)','2026-03-21 07:03:58','Won the Purple Cap with a record-breaking 32 wickets in a single season',NULL),(8,'Dwayne Bravo',2015,'Purple Cap Winner','2026-03-21 07:03:58','Again emerged as the leading wicket-taker, proving his dominance as a bowler',NULL),(9,'Dwayne Bravo',2022,'Among highest wicket-takers in IPL history','2026-03-21 07:03:58','Ranked among the highest wicket-takers in IPL history with consistent performances',NULL),(10,'Faf du Plessis',2021,'Top scorer in IPL Final (86 runs)','2026-03-21 07:03:58','Played a crucial knock in the final, scoring 86 runs under pressure',NULL),(11,'Faf du Plessis',2023,'Orange Cap Runner-up','2026-03-21 07:03:58','Finished as one of the top run scorers, narrowly missing the Orange Cap',NULL),(12,'Faf du Plessis',2021,'One of the highest run scorers of season','2026-03-21 07:03:58','Consistently contributed as one of the leading run scorers of the season',NULL),(13,'Ravindra Jadeja',2013,'Key performer in IPL & CLT20 wins','2026-03-21 07:03:58','Played a key all-round role in both IPL and CLT20 victories',NULL),(14,'Ravindra Jadeja',2021,'All-round performance (runs + wickets)','2026-03-21 07:03:58','Delivered impactful all-round performances with both bat and ball',NULL),(15,'Ravindra Jadeja',2023,'Match-winning performance in IPL Final','2026-03-21 07:03:58','Scored the winning runs in the IPL final, sealing victory in dramatic fashion',NULL);
/*!40000 ALTER TABLE `player_achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `matches` int DEFAULT NULL,
  `runs` int DEFAULT NULL,
  `wickets` int DEFAULT NULL,
  `strike_rate` float DEFAULT NULL,
  `years_active` varchar(20) DEFAULT NULL,
  `image_url` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Ruturaj Gaikwad','Batsman (Captain)',66,2380,0,136.86,'2020-Present','rg.jpg'),(2,'Sanju Samson','Batsman',160,4000,0,138,'2013-Present','ss.jpeg'),(3,'Ayush Mhatre','Batsman',0,0,0,0,'2025-Present','am.jpg'),(4,'Dewald Brevis','Batsman',10,230,0,142,'2022-Present','db.jpg'),(5,'Sarfaraz Khan','Batsman',50,600,0,130,'2015-Present','sk.png'),(6,'Aman Khan','Batsman',20,200,5,135,'2022-Present','ak.png'),(7,'MS Dhoni','Wicketkeeper Batsman',250,5082,0,135.2,'2008-Present','msd.jpg'),(8,'Urvil Patel','Wicketkeeper',0,0,0,0,'2025-Present','up.jpg'),(9,'Kartik Sharma','Wicketkeeper',0,0,0,0,'2025-Present','ks.jpeg'),(10,'Shivam Dube','All-rounder',59,1106,4,145.32,'2019-Present','sd.jpg'),(11,'Jamie Overton','All-rounder',10,150,8,140,'2023-Present','jo.jpg'),(12,'Prashant Veer','All-rounder',0,0,0,0,'2025-Present','pv.png'),(13,'Matthew Short','All-rounder',15,300,6,135,'2023-Present','ms.jpeg'),(14,'Zakary Foulkes','All-rounder',5,50,4,125,'2024-Present','zf.png'),(15,'Ramakrishna Ghosh','All-rounder',0,0,0,0,'2025-Present','ragh .jpg'),(16,'Noor Ahmad','Bowler',20,10,25,100,'2023-Present','na.jpg'),(17,'Nathan Ellis','Bowler',18,15,22,120,'2022-Present','ne.jpeg'),(18,'Khaleel Ahmed','Bowler',60,50,70,110,'2018-Present','ka.jpeg'),(19,'Matt Henry','Bowler',25,20,30,105,'2017-Present','mh.png'),(20,'Rahul Chahar','Bowler',70,40,75,115,'2017-Present','rc.png'),(21,'Akeal Hosein','Bowler',30,25,35,125,'2021-Present','ah.jpeg'),(22,'Mukesh Choudhary','Bowler',13,5,18,100,'2022-Present','mc.jpeg'),(23,'Shreyas Gopal','Bowler',50,200,55,120,'2014-Present','sg.jpeg'),(24,'Anshul Kamboj','Bowler',5,5,6,110,'2024-Present','ak.jpeg'),(25,'Gurjapneet Singh','Bowler',0,0,0,0,'2025-Present','gs.jpeg');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeline`
--

DROP TABLE IF EXISTS `timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timeline` (
  `id` int NOT NULL AUTO_INCREMENT,
  `year` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `category` varchar(50) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeline`
--

LOCK TABLES `timeline` WRITE;
/*!40000 ALTER TABLE `timeline` DISABLE KEYS */;
INSERT INTO `timeline` VALUES (1,2008,'CSK Founded','Chennai Super Kings was established as one of the original IPL franchises, with MS Dhoni appointed as captain. The team made an immediate impact by reaching the finals in the inaugural IPL season, showcasing strong leadership and consistency from the very beginning.','Foundation','2008.png'),(2,2010,'The Double','CSK achieved a historic milestone by winning both the IPL and the Champions League T20 in the same year. This marked their first-ever IPL title and established them as a dominant force in franchise cricket globally.','Trophy','2010.jpeg'),(3,2011,'Title Defended','CSK became the first team in IPL history to successfully defend their title, winning back-to-back championships. Their consistency, strong core players, and Dhoni’s captaincy made them the benchmark team of the league.','Trophy','2011.jpg'),(4,2014,'CLT20 Kings Again','Chennai Super Kings lifted their second Champions League T20 trophy, defeating Kolkata Knight Riders in the final. This victory reaffirmed their dominance in international franchise tournaments.','Trophy','2014.jpeg'),(5,2015,'Suspension Verdict','The franchise faced a major setback as it was suspended for two years (2016–2017) due to involvement of officials in a betting scandal. This period marked the toughest phase in CSK’s history.','Ban','2015.jpg'),(6,2018,'The Daddy Army','CSK made a remarkable comeback after the suspension and won the IPL 2018 title. With a squad considered “experienced” or “aging,” they silenced critics and delivered one of the greatest comeback stories in sports history.','Trophy','2018.jpeg'),(7,2021,'The Revival','After finishing 7th in 2020 (their first-ever non-playoff finish), CSK bounced back strongly to win their fourth IPL title in 2021, proving their resilience and ability to rebuild quickly.','Trophy','2021.jpg'),(8,2023,'High Five','CSK defeated Gujarat Titans in a thrilling final to win their fifth IPL title, equaling the all-time record. The victory further cemented their legacy as one of the greatest teams in IPL history.','Trophy','2023.png'),(9,2024,'New Leadership','MS Dhoni handed over captaincy to Ruturaj Gaikwad, marking the beginning of a new era. The team finished 5th, narrowly missing playoffs based on Net Run Rate, showing promise under fresh leadership.','Transition','2024.jpeg'),(10,2025,'Historic Low','CSK experienced their worst season, finishing at the bottom of the table for the first time. Mid-season, Dhoni returned as captain due to Gaikwad’s injury, but the team struggled to regain form.','Low','2025.png'),(11,2026,'The Return?','CSK is currently competing with renewed energy and focus. With the possibility of the Champions League T20 returning, the team aims to bounce back strongly and re-establish its dominance on the global stage.','Legacy','2026.jpg');
/*!40000 ALTER TABLE `timeline` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-22 22:38:53
