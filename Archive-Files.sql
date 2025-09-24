-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: 127.0.0.1    Database: archive_files
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `artifact`
--

DROP TABLE IF EXISTS `artifact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artifact` (
  `artifact_id` bigint NOT NULL AUTO_INCREMENT,
  `artifact_type` varchar(255) DEFAULT NULL,
  `artifact` varchar(200) DEFAULT NULL,
  `description` varchar(900) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`artifact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artifact`
--

LOCK TABLES `artifact` WRITE;
/*!40000 ALTER TABLE `artifact` DISABLE KEYS */;
INSERT INTO `artifact` VALUES (1,'photo','/Users/sarahruana/Documents/ScreenShots/School/ADV Prog/Ruana Archive/Artifacts/artifact1.pdf','Dorathea Marie Rehm was born in 1857 in Drackenburg, Hanover, Germany. She died in 1942 in Jersey City, NJ. She married Carl Hashagan and together they had three children. This picture frame dates back to 1882- obtained from Ellen Shears, Carmel NY. The raised decorations are most likely some sort of plaster.','1882'),(2,'object','/Users/sarahruana/Documents/ScreenShots/School/ADV Prog/Ruana Archive/Artifacts/artifact2.pdf','This is an old Trautwine\'s Engineers Pocket Book dated to around 1882. Used by civil engineers, it provided a fundamental guide to civil engineering principles. Most likely used by Carl Rudolf Hashagen.','1882'),(3,'object','/Users/sarahruana/Documents/ScreenShots/School/ADV Prog/Ruana Archive/Artifacts/artifact3.pdf','This is an old German prayer pocket book that is dated back to 1888. There isn\'t much information other than what is located in the inside cover: Friedrich Rehm in Drackenburg, the same place where Dorathea. This book mostly likely belongs to her father, Friedrich. In addition, this book is completely in German.','1888'),(4,'object','/Users/sarahruana/Documents/ScreenShots/School/ADV Prog/Ruana Archive/Artifacts/artifact4.pdf','This book of Practical Formulae most likely belonged at one point to John Hashagen, and it dates back to 1905. Inside this book are recipes to different beverages. In addition, (not pictured), there was a letter to John from Dorothy (daughter) about how to make xylitol.','1905'),(5,'object','/Users/sarahruana/Documents/ScreenShots/School/ADV Prog/Ruana Archive/Artifacts/artifact5.pdf','From Germany, this is an old, pictured, German children\'s book from Wilhelm Busch. From what I can gather, the title translates to Max and Moritz: A Story in Seven Tricks. It was originally published in 1865, this book dates back to 1900. I believe that it belonged to Carl, Rudolph, and John when they were little.  A copy of the book can be found here: https://www.google.com/books/edition/Max_and_Moritz/AjMPAAAAQAAJ?hl=en&gbpv=1&pg=PP5&printsec=frontcover','1900'),(6,'object','/Users/sarahruana/Documents/ScreenShots/School/ADV Prog/Ruana Archive/Artifacts/artifact6.pdf','This is another old, pictured, German children\'s book from Wilhelm Busch. Titled Maler (Painter) Klecksel and dates back to 1903. Evidently, the author Busch riddled the other picture books with tragic endings and depressing self commentary on his life as a failed artist but successful children\'s book maker. However, this story ends not in tragedy, but simply in a change of profession.','1903'),(7,'object','/Users/sarahruana/Documents/ScreenShots/School/ADV Prog/Ruana Archive/Artifacts/artifact7.pdf','The book title of this German children\'s book–yet again from Wilhelm Busch– most directly translates to Adventures of a Bachelor, dated back to 1908. However, this story was originally published in 1875. I believe this belonged to the Hashagen kids, when they were little. ','1908'),(8,'object','/Users/sarahruana/Documents/ScreenShots/School/ADV Prog/Ruana Archive/Artifacts/artifact8.pdf','Translating to Balduin Bählamm the Prevented Poet by Wilhelm Busch and dating back to 1902, this book was an addition to the Painter Klecksel book in which they were intended to be a mockery of the kitsch artists during that time. His intended target was most likely the Munich poets’ circle. Essentially, this book is about a poet wishing to escape his life, who was then pulled back thankfully into reality after a series of misfortunes.','1902'),(9,'object','/Users/sarahruana/Documents/ScreenShots/School/ADV Prog/Ruana Archive/Artifacts/artifact9.pdf','This copy of Pictures of the Jobsiade by Wilhelm Busch was owned in 1900 by the Hashagen kids mostly likely. The basis of this book is the Jobsiade, a text that describes the life of Hieronymus Jobs, a person who consistently fails in all situations in life. Wilhelm Busch has been referred to as the great-grandfather of comics and cartoons, in which his mastery can be seen in individual scenes within this book.','1900');
/*!40000 ALTER TABLE `artifact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_connector`
--

DROP TABLE IF EXISTS `family_connector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family_connector` (
  `entry_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL DEFAULT '0',
  `artifact_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_connector`
--

LOCK TABLES `family_connector` WRITE;
/*!40000 ALTER TABLE `family_connector` DISABLE KEYS */;
INSERT INTO `family_connector` VALUES (1,1,1),(2,2,2),(3,1,3),(4,6,4),(5,4,5),(6,5,5),(7,6,5),(8,4,6),(9,5,6),(10,6,6),(11,4,7),(12,5,7),(13,6,7),(14,4,8),(15,5,8),(16,6,8),(17,4,9),(18,5,9),(19,6,9),(20,8,4);
/*!40000 ALTER TABLE `family_connector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'doratheaH'),(2,'rudolphH_SR'),(3,'roseH'),(4,'carlH'),(5,'rudolph_JR'),(6,'johnH'),(7,'nancyH'),(8,'daliceB'),(9,'fredB'),(10,'kathyB'),(11,'ashleyB'),(12,'ericB'),(13,'christineR'),(14,'rudyR'),(15,'drewR'),(16,'jonoR'),(17,'sarahR'),(18,'misc');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-24 11:08:48
