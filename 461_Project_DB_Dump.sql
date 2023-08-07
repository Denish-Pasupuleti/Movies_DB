CREATE DATABASE  IF NOT EXISTS `movies` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `movies`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: movies
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_id` int NOT NULL,
  `genre_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (101,'Animation'),(102,'Mystery'),(103,'Adventure'),(104,'Science Fiction'),(105,'Thriller'),(106,'Fantasy'),(107,'TV Movie'),(108,'Romance'),(109,'Horror'),(110,'Drama'),(111,'Foreign'),(112,'Crime'),(113,'War'),(114,'History'),(115,'Music'),(116,'Family'),(117,'Action'),(118,'Documentary'),(119,'Comedy');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `language_id` int NOT NULL AUTO_INCREMENT,
  `language_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'English'),(2,'French'),(3,'Telugu'),(4,'Korean'),(5,'Japanese'),(6,'Chinese'),(7,'Hindi');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `budget` int DEFAULT NULL,
  `imdb_score` decimal(12,2) DEFAULT NULL,
  `release_date` int DEFAULT NULL,
  `revenue` bigint DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'The ShawShank Redemption',142,25000000,9.30,1994,28884504),(2,'The Godfather',175,6000000,9.20,1972,250341816),(3,'The Dark Knight',152,185000000,9.00,2008,1006234167),(4,'The Godfather Part 2',202,13000000,9.00,1974,47961919),(5,'12 Angry Men',96,350000,9.00,1957,955),(6,'Schindlers List',195,22000000,9.00,1994,322161245),(7,'The Lord of the Rings: The Return of the King',201,94000000,9.00,2003,1147633833),(8,'Pulp Ficton',154,8000000,8.90,1994,213928762),(9,'The Lord of the Rings: The Fellowship of the Ring',178,93000000,8.80,2001,898204420),(10,'The Good, the Bad, and the Ugly',178,1200000,8.80,1967,25100000),(11,'Forrest Gump',142,55000000,8.80,1964,678226465),(12,'Fight Club',139,63000000,8.80,1999,101209702),(13,'The Lord of the Rings: The Two Towers',179,94000000,8.80,2002,947944270),(14,'Inception',148,160000000,8.80,2010,870110523),(15,'Star Wars: Episode V - The Empire Strikes Back',124,18000000,8.70,1980,538375067),(16,'The Matrix',136,63000000,8.70,1999,467222728),(17,'Goodfellas',145,25000000,8.70,1990,47036784),(18,'One Flew Over the Cuckoos Nest',133,3000000,8.60,1975,108981275),(19,'Se7en',127,33000000,8.60,1995,327333559),(20,'Its a Wonderful Life',130,1180000,8.60,1946,8574081),(21,'Seven Samurai',207,931712,8.60,1956,346258),(22,'The Silence of the Lambs',118,19000000,8.60,1991,272742922),(23,'Saving Private Ryan',170,70000000,8.60,1998,482349603),(24,'City of God',130,3000000,8.60,2004,30680793),(25,'Interstellar',169,165000000,8.60,2014,773430538),(26,'Life is Beautiful',116,20000000,8.60,1997,230099013),(27,'The Green Mile',189,60000000,8.60,1999,286801374),(28,'Star Wars: Episdoe 5 - A New Hope',121,11000000,8.60,1977,775398007),(29,'Terminator 2: Judgement Day',137,102000000,8.60,1991,520881154),(30,'Back to the Future',116,19000000,8.50,1985,383336762),(31,'Spirited Away',125,19000000,8.60,2003,357048900),(32,'The Pianist',150,35000000,8.50,2003,120072577),(33,'Psycho',109,806947,8.50,1960,32000000),(34,'Les trois mousquetaires: D Artagnan',121,45271980,7.10,2023,25242078),(35,'Close',104,1100113,7.80,2022,5094934),(36,'Blue is the Warmest Color',180,5290500,7.70,2013,19465835),(37,'The Intouchables',112,11945442,8.50,2011,426588510),(38,'Parasite',132,11400000,8.50,2019,262676096),(39,'Baahubali: The Beginning',159,18026148,8.00,2015,24548038),(40,'Baahubali: The Conclusion',167,30586750,8.20,2017,254158390),(41,'Demon Slayer the Movie: Mugen Train',117,16000000,8.20,2021,453210959),(42,'Alien',117,11000000,8.50,1979,106268522),(43,'Crouching Tiger, Hidden Dragon',120,17000000,7.90,2001,213976973),(44,'Ip Man',106,11715578,8.00,2008,22108789),(45,'Kung Fu Hustle',99,20000000,7.70,2005,104882445),(46,'Rang De Basanti',167,2197694,8.10,2006,10800778),(47,'Idiots',170,6730119,8.40,2009,60262836);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_cast`
--

DROP TABLE IF EXISTS `movie_cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_cast` (
  `movie_id` int DEFAULT NULL,
  `person_id` int DEFAULT NULL,
  `character_name` varchar(100) DEFAULT NULL,
  KEY `FKey_mcast_movie` (`movie_id`),
  KEY `FKey_mcast_per` (`person_id`),
  CONSTRAINT `FKey_mcast_movie` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  CONSTRAINT `FKey_mcast_per` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_cast`
--

LOCK TABLES `movie_cast` WRITE;
/*!40000 ALTER TABLE `movie_cast` DISABLE KEYS */;
INSERT INTO `movie_cast` VALUES (1,1,'Andy Dufresne'),(1,2,'Ellis Boyd Red Redding'),(1,3,'Warden Norton'),(1,4,'Heywood'),(1,5,'Captain Hadley'),(1,6,'Tommy'),(2,7,'Don Vito Corleone'),(2,8,'Michael Corleone'),(2,9,'Sonny Corleone'),(2,10,'Tom Hagen'),(3,11,'Bruce Wayne'),(3,12,'Joker'),(3,13,'Harvey Dent'),(4,14,'Vito Corleone'),(4,8,'Michael'),(4,10,'Tom Hagen'),(5,15,'Juror 8'),(5,16,'Juror 3'),(6,17,'Oskar Schindler'),(6,18,'Amon Goeth'),(7,19,'Frodo'),(7,20,'Aragorn'),(7,21,'Legolas'),(8,22,'Vincent Vega'),(8,23,'Jules Winnfield'),(9,19,'Frodo'),(9,21,'Legolas'),(10,24,'Blondie'),(10,25,'Tuco'),(11,26,'Forrest Gump'),(11,27,'Jenny Curran'),(12,28,'Tyler Durden'),(13,19,'Frodo'),(14,29,'Cobb'),(15,30,'Luke Skywalker'),(15,31,'Han Solo'),(16,32,'Neo'),(16,33,'Morpheus'),(17,14,'James Conway'),(18,34,'R.P. McMurphy'),(19,2,'Somerset'),(19,28,'Mills'),(20,35,'George Bailey'),(21,36,'Kikuchiyo'),(22,37,'Clarice Starling'),(23,38,'Captain Miller'),(23,39,'Private Ryan'),(24,40,'Buscape - Rocket'),(25,41,'Cooper'),(26,42,'Guido'),(27,38,'Paul Edgecomb'),(27,43,'John Coffey'),(28,30,'Luke Skywalker'),(28,44,'Princess Leia Organa'),(29,45,'The Terminator'),(30,46,'Marty McFly'),(31,47,'Chihiro'),(32,48,'Wladyslaw Szpilman'),(33,49,'Norman Bates'),(34,50,'D Artagnan'),(35,51,'Leo'),(36,52,'Emma'),(37,53,'Philippe'),(38,54,'Ki Taek'),(39,55,'Shivudu'),(40,55,'Amarendra Baahubali'),(42,56,'Ripley'),(42,57,'Master Li Mu Bai'),(44,58,'Ip Man'),(45,59,'Sing'),(46,60,'Daljeet'),(47,60,'Rancho');
/*!40000 ALTER TABLE `movie_cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_company`
--

DROP TABLE IF EXISTS `movie_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_company` (
  `movie_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  KEY `FKey_mcompany_comp` (`company_id`),
  KEY `FKey_mcompany_movie` (`movie_id`),
  CONSTRAINT `FKey_mcompany_comp` FOREIGN KEY (`company_id`) REFERENCES `production_company` (`company_id`),
  CONSTRAINT `FKey_mcompany_movie` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_company`
--

LOCK TABLES `movie_company` WRITE;
/*!40000 ALTER TABLE `movie_company` DISABLE KEYS */;
INSERT INTO `movie_company` VALUES (1,1),(2,2),(2,3),(2,4),(3,5),(3,6),(3,7),(4,2),(4,8),(4,9),(5,10),(6,11),(6,12),(7,13),(7,14),(7,15),(8,16),(8,17),(8,18),(9,13),(9,14),(9,15),(10,19),(11,2),(12,20),(13,13),(13,14),(13,15),(14,5),(15,21),(16,5),(17,5),(18,22),(19,13),(20,23),(21,24),(22,25),(23,2),(24,26),(25,2),(26,27),(27,1),(28,21),(29,28),(30,12),(31,29),(32,30),(33,31),(34,32),(35,33),(36,34),(37,35),(38,36),(39,37),(40,37),(41,38),(42,39),(43,40),(44,41),(45,42),(46,43),(47,44);
/*!40000 ALTER TABLE `movie_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genres`
--

DROP TABLE IF EXISTS `movie_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_genres` (
  `movie_id` int DEFAULT NULL,
  `genre_id` int DEFAULT NULL,
  KEY `FKey_mg_genre` (`genre_id`),
  KEY `Fkey_mg_movie` (`movie_id`),
  CONSTRAINT `FKey_mg_genre` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`),
  CONSTRAINT `Fkey_mg_movie` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genres`
--

LOCK TABLES `movie_genres` WRITE;
/*!40000 ALTER TABLE `movie_genres` DISABLE KEYS */;
INSERT INTO `movie_genres` VALUES (1,110),(2,112),(3,117),(4,112),(5,110),(6,110),(7,103),(8,110),(9,103),(10,103),(11,108),(12,110),(13,103),(14,117),(15,106),(16,117),(17,110),(18,110),(19,112),(20,110),(21,117),(22,112),(23,113),(24,110),(25,103),(26,108),(27,110),(28,103),(29,117),(30,103),(31,101),(32,110),(33,109),(34,117),(35,110),(36,108),(37,110),(38,105),(39,117),(40,117),(41,103),(42,117),(43,117),(44,117),(45,117),(46,119),(47,119);
/*!40000 ALTER TABLE `movie_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_languages`
--

DROP TABLE IF EXISTS `movie_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_languages` (
  `movie_id` int DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  KEY `FKey_ml_lang` (`language_id`),
  KEY `FKey_ml_movie` (`movie_id`),
  CONSTRAINT `FKey_ml_lang` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`),
  CONSTRAINT `FKey_ml_movie` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_languages`
--

LOCK TABLES `movie_languages` WRITE;
/*!40000 ALTER TABLE `movie_languages` DISABLE KEYS */;
INSERT INTO `movie_languages` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,5),(32,1),(33,1),(34,2),(35,2),(36,2),(37,2),(38,4),(39,3),(40,3),(41,5),(42,1),(43,6),(44,6),(45,6),(46,7),(47,7);
/*!40000 ALTER TABLE `movie_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `person_id` int NOT NULL,
  `person_name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Tim Robbins'),(2,'Morgan Freeman'),(3,'Bob Gunton'),(4,'William Sadler'),(5,'Clancy Brown'),(6,'Gill Bellows'),(7,'Marlon Brando'),(8,'Al Pacino'),(9,'James Caan'),(10,'Robert Duvall'),(11,'Christian Bale'),(12,'Heath Ledger'),(13,'Aaron Eckhart'),(14,'Robert De Niro'),(15,'Henry Fonda'),(16,'Lee J. Cobb'),(17,'Liam Neeson'),(18,'Ralph Fiennes'),(19,'Elijah Wood'),(20,'Viggo Mortensen'),(21,'Orlando Bloom'),(22,'John Travolta'),(23,'Samuel L. Jackson'),(24,'Clint Eastwood'),(25,'Eli Wallach'),(26,'Tom Hanks'),(27,'Robin Wright'),(28,'Brad Pitt'),(29,'Leonardo Dicaprio'),(30,'Mark Hamill'),(31,'Harrison Ford'),(32,'Keanu Reeves'),(33,'Laurence Fishburne'),(34,'Jack Nicholson'),(35,'James Stewart'),(36,'Toshiro Mifune'),(37,'Jodie Foster'),(38,'Tom Hanks'),(39,'Matt Damon'),(40,'Alexandre Rodrigues'),(41,'Mathew McConaughey'),(42,'Roberto Benigni'),(43,'MIchael Clarke Duncan'),(44,'Carrie Fisher'),(45,'Arnold Schwarznegger'),(46,'Michael J. Fox'),(47,'Daveigh Chase'),(48,'Adrien Brody'),(49,'Anthony Perkins'),(50,'Francis Civil'),(51,'Eden Dambrine'),(52,'Lea Seydoux'),(53,'Francois Cluzet'),(54,'Song Kang-ho'),(55,'Prabhas'),(56,'Sigourney Weaver'),(57,'Chow Yun-Fat'),(58,'Donnie Yen'),(59,'Stephen Chow'),(60,'Amir Khan');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_company`
--

DROP TABLE IF EXISTS `production_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production_company` (
  `company_id` int NOT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_company`
--

LOCK TABLES `production_company` WRITE;
/*!40000 ALTER TABLE `production_company` DISABLE KEYS */;
INSERT INTO `production_company` VALUES (1,'Castle Rock Entertainment'),(2,'Paramount Pictures'),(3,'Albert S. Ruddy Productions'),(4,'Alfran Productions'),(5,'Warner Bros.'),(6,'Legendary Entertainment'),(7,'Syncopy'),(8,'The Coppola Compnay'),(9,'American Zoetrope'),(10,'Orion-Nova Productions'),(11,'Universal Pictures'),(12,'Amblin Entertainment'),(13,'New Line Cinema'),(14,'WingNut Films'),(15,'The Saul Zaentz Compnay'),(16,'Miramax'),(17,'A Band Apart'),(18,'Jersey Films'),(19,'Constantin Film'),(20,'Fox 2000 Pictures'),(21,'Lucas Film'),(22,'Fantasy Films'),(23,'Liberty Films'),(24,'Toho Compnay'),(25,'Orion Pictures'),(26,'O2 Filmes'),(27,'Melampo Cinematografica'),(28,'Carolco Pictures'),(29,'Studio Ghibli'),(30,'Heritage Films'),(31,'Shamley Productions'),(32,'M6 Films'),(33,'Menuet Producties'),(34,'Wild Bunch'),(35,'Quad'),(36,'CJ Entertainment'),(37,'Arka Mediaworks'),(38,'Ufotable'),(39,'Pinewood Studios'),(40,'Edko Films'),(41,'China Film'),(42,'Columbia Pictures Film Production Asia'),(43,'ROMP'),(44,'Vinod Chopra Productions');
/*!40000 ALTER TABLE `production_company` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06 15:34:39
