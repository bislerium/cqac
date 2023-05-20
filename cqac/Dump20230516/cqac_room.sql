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
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `RoomID` int NOT NULL AUTO_INCREMENT,
  `CareManagerID` int NOT NULL,
  `Type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DailyRental` int NOT NULL,
  `RoomSize` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DateAvailable` date NOT NULL,
  `RoomPhoto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`RoomID`),
  KEY `IX_ROOM_CareManagerID` (`CareManagerID`),
  CONSTRAINT `FK_ROOM_CARE_MANAGER_CareManagerID` FOREIGN KEY (`CareManagerID`) REFERENCES `care_manager` (`StaffID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,62,'Single',100,'Small','2023-05-16','https://example.com/room1.jpg'),(2,62,'Double',150,'Medium','2023-05-17','https://example.com/room2.jpg'),(3,65,'Single',110,'Small','2023-05-18','https://example.com/room3.jpg'),(4,68,'Suite',200,'Large','2023-05-19','https://example.com/room4.jpg'),(5,73,'Double',140,'Medium','2023-05-20','https://example.com/room5.jpg'),(6,76,'Single',120,'Small','2023-05-21','https://example.com/room6.jpg'),(7,79,'Double',160,'Medium','2023-05-22','https://example.com/room7.jpg'),(8,62,'Suite',220,'Large','2023-05-23','https://example.com/room8.jpg'),(9,65,'Single',100,'Small','2023-05-24','https://example.com/room9.jpg'),(10,68,'Double',150,'Medium','2023-05-25','https://example.com/room10.jpg'),(11,73,'Single',110,'Small','2023-05-26','https://example.com/room11.jpg'),(12,76,'Suite',190,'Large','2023-05-27','https://example.com/room12.jpg'),(13,79,'Double',140,'Medium','2023-05-28','https://example.com/room13.jpg'),(14,62,'Single',120,'Small','2023-05-29','https://example.com/room14.jpg'),(15,65,'Double',160,'Medium','2023-05-30','https://example.com/room15.jpg'),(16,68,'Suite',210,'Large','2023-05-31','https://example.com/room16.jpg'),(17,73,'Single',100,'Small','2023-06-01','https://example.com/room17.jpg'),(18,76,'Double',150,'Medium','2023-06-02','https://example.com/room18.jpg'),(19,79,'Single',110,'Small','2023-06-03','https://example.com/room19.jpg'),(20,62,'Suite',200,'Large','2023-06-04','https://example.com/room20.jpg');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
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
