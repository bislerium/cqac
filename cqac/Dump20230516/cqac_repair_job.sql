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
-- Table structure for table `repair_job`
--

DROP TABLE IF EXISTS `repair_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repair_job` (
  `JobID` int NOT NULL AUTO_INCREMENT,
  `JobDetails` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CompletionDate` date NOT NULL,
  `TotalRepairCost` decimal(10,2) NOT NULL,
  `ExternalStaffID` int DEFAULT NULL,
  `RoomID` int DEFAULT NULL,
  PRIMARY KEY (`JobID`),
  KEY `IX_REPAIR_JOB_ExternalStaffID` (`ExternalStaffID`),
  KEY `IX_REPAIR_JOB_RoomID` (`RoomID`),
  CONSTRAINT `FK_REPAIR_JOB_EXTERNAL_STAFF_ExternalStaffID` FOREIGN KEY (`ExternalStaffID`) REFERENCES `external_staff` (`ExternalStaffID`),
  CONSTRAINT `FK_REPAIR_JOB_ROOM_RoomID` FOREIGN KEY (`RoomID`) REFERENCES `room` (`RoomID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_job`
--

LOCK TABLES `repair_job` WRITE;
/*!40000 ALTER TABLE `repair_job` DISABLE KEYS */;
INSERT INTO `repair_job` VALUES (1,'Fix leaking faucet','2023-05-16',50.00,1,1),(2,'Repair broken window','2023-05-17',80.00,2,2),(3,'Replace door lock','2023-05-18',60.00,3,3),(4,'Paint walls','2023-05-19',100.00,4,4),(5,'Unclog drain','2023-05-20',70.00,5,5),(6,'Install new light fixtures','2023-05-21',120.00,6,6),(7,'Repair water heater','2023-05-22',90.00,7,7),(8,'Fix electrical wiring','2023-05-23',150.00,8,8),(9,'Replace broken tiles','2023-05-24',50.00,9,9),(10,'Repair HVAC system','2023-05-25',100.00,10,10),(11,'Fix plumbing issue','2023-05-26',70.00,1,11),(12,'Paint ceiling','2023-05-27',80.00,2,12),(13,'Replace faucet','2023-05-28',60.00,3,13),(14,'Repair broken furniture','2023-05-29',120.00,4,14),(15,'Unclog toilet','2023-05-30',70.00,5,15),(16,'Install new carpet','2023-05-31',100.00,6,16),(17,'Fix electrical outlet','2023-06-01',90.00,7,17),(18,'Replace broken appliances','2023-06-02',150.00,8,18),(19,'Repair plumbing leak','2023-06-03',50.00,9,19),(20,'Fix HVAC ventilation','2023-06-04',100.00,10,20),(21,'Repair broken furniture','2023-06-05',80.00,1,1),(22,'Replace light bulbs','2023-06-06',60.00,2,2),(23,'Unclog drain','2023-06-07',120.00,3,3),(24,'Paint walls','2023-06-08',70.00,4,4),(25,'Fix electrical wiring','2023-06-09',100.00,5,5),(26,'Repair water heater','2023-06-10',90.00,6,6),(27,'Replace broken tiles','2023-06-11',150.00,7,7),(28,'Fix plumbing issue','2023-06-12',50.00,8,8),(29,'Paint ceiling','2023-06-13',100.00,9,9),(30,'Replace faucet','2023-06-14',70.00,10,10);
/*!40000 ALTER TABLE `repair_job` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16 19:51:28
