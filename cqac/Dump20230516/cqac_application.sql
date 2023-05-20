-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: cqac
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
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application` (
  `ApplicationID` int NOT NULL AUTO_INCREMENT,
  `SubmittedDate` date NOT NULL,
  `ProcessedDate` date NOT NULL,
  `Comments` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CareNeeds` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ResidentId` int DEFAULT NULL,
  `RoomID` int DEFAULT NULL,
  PRIMARY KEY (`ApplicationID`),
  KEY `IX_APPLICATION_ResidentId` (`ResidentId`),
  KEY `IX_APPLICATION_RoomID` (`RoomID`),
  CONSTRAINT `FK_APPLICATION_RESIDENT_ResidentId` FOREIGN KEY (`ResidentId`) REFERENCES `resident` (`ResidentId`),
  CONSTRAINT `FK_APPLICATION_ROOM_RoomID` FOREIGN KEY (`RoomID`) REFERENCES `room` (`RoomID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (1,'2023-05-16','2023-05-17','Application received','Pending','Assistance with daily activities',1,1),(2,'2023-05-17','2023-05-18','Application under review','Approved','Medication management',2,2),(3,'2023-05-18','2023-05-19','Waiting for documentation','Approved','Memory care',3,3),(4,'2023-05-19','2023-05-20','Further information required','Pending','Assistance with mobility',4,4),(5,'2023-05-20','2023-05-21','Application approved','Approved','Assistance with daily activities',5,5),(6,'2023-05-21','2023-05-22','Application under review','Pending','Memory care',6,6),(7,'2023-05-22','2023-05-23','Waiting for caregiver reference','Approved','Assistance with medication',7,7),(8,'2023-05-23','2023-05-24','Application received','Pending','Assistance with daily activities',8,8),(9,'2023-05-24','2023-05-25','Medical history required','Approved','Memory care',9,9),(10,'2023-05-25','2023-05-26','Application under review','Approved','Assistance with mobility',10,10),(11,'2023-05-26','2023-05-27','Waiting for financial assessment','Pending','Assistance with daily activities',1,11),(12,'2023-05-27','2023-05-28','Application received','Approved','Medication management',2,12),(13,'2023-05-28','2023-05-29','Waiting for caregiver reference','Approved','Memory care',3,13),(14,'2023-05-29','2023-05-30','Further information required','Pending','Assistance with mobility',4,14),(15,'2023-05-30','2023-05-31','Application approved','Approved','Assistance with daily activities',5,15),(16,'2023-05-31','2023-06-01','Application under review','Pending','Memory care',6,16),(17,'2023-06-01','2023-06-02','Waiting for caregiver reference','Approved','Assistance with medication',7,17),(18,'2023-06-02','2023-06-03','Application received','Pending','Assistance with daily activities',8,18),(19,'2023-06-03','2023-06-04','Medical history required','Approved','Memory care',9,19),(20,'2023-06-04','2023-06-05','Application under review','Approved','Assistance with mobility',10,20),(21,'2023-06-05','2023-06-06','Waiting for financial assessment','Pending','Assistance with daily activities',1,2),(22,'2023-06-06','2023-06-07','Application received','Approved','Medication management',2,3),(23,'2023-06-07','2023-06-08','Waiting for caregiver reference','Approved','Memory care',3,4),(24,'2023-06-08','2023-06-09','Further information required','Pending','Assistance with mobility',4,5),(25,'2023-06-09','2023-06-10','Application approved','Approved','Assistance with daily activities',5,6),(26,'2023-06-10','2023-06-11','Application under review','Pending','Memory care',6,7),(27,'2023-06-11','2023-06-12','Waiting for caregiver reference','Approved','Assistance with medication',7,8),(28,'2023-06-12','2023-06-13','Application received','Pending','Assistance with daily activities',8,9),(29,'2023-06-13','2023-06-14','Medical history required','Approved','Memory care',9,10),(30,'2023-06-14','2023-06-15','Application under review','Approved','Assistance with mobility',10,11),(31,'2023-06-15','2023-06-16','Waiting for financial assessment','Pending','Assistance with daily activities',1,12),(32,'2023-06-16','2023-06-17','Application received','Approved','Medication management',2,13),(33,'2023-06-17','2023-06-18','Waiting for caregiver reference','Approved','Memory care',3,14),(34,'2023-06-18','2023-06-19','Further information required','Pending','Assistance with mobility',4,15),(35,'2023-06-19','2023-06-20','Application approved','Approved','Assistance with daily activities',5,16);
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16 19:51:27
