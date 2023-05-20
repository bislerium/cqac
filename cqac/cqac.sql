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

--
-- Table structure for table `care`
--

DROP TABLE IF EXISTS `care`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `care` (
  `CareID` int NOT NULL AUTO_INCREMENT,
  `ContractStartDate` date NOT NULL,
  `ContractEndDate` date NOT NULL,
  `TypeOfCare` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ResidentId` int DEFAULT NULL,
  `RoomID` int DEFAULT NULL,
  PRIMARY KEY (`CareID`),
  KEY `IX_CARE_ResidentId` (`ResidentId`),
  KEY `IX_CARE_RoomID` (`RoomID`),
  CONSTRAINT `FK_CARE_RESIDENT_ResidentId` FOREIGN KEY (`ResidentId`) REFERENCES `resident` (`ResidentId`),
  CONSTRAINT `FK_CARE_ROOM_RoomID` FOREIGN KEY (`RoomID`) REFERENCES `room` (`RoomID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `care`
--

LOCK TABLES `care` WRITE;
/*!40000 ALTER TABLE `care` DISABLE KEYS */;
INSERT INTO `care` VALUES (1,'2023-05-16','2023-06-15','Daily',1,1),(2,'2023-05-17','2023-06-16','Weekly',2,2),(3,'2023-05-18','2023-06-17','Daily',3,3),(4,'2023-05-19','2023-06-18','Monthly',4,4),(5,'2023-05-20','2023-06-19','Daily',5,5),(6,'2023-05-21','2023-06-20','Weekly',6,6),(7,'2023-05-22','2023-06-21','Daily',7,7),(8,'2023-05-23','2023-06-22','Monthly',8,8),(9,'2023-05-24','2023-06-23','Daily',9,9),(10,'2023-05-25','2023-06-24','Weekly',10,10),(11,'2023-05-26','2023-06-25','Daily',1,11),(12,'2023-05-27','2023-06-26','Monthly',2,12),(13,'2023-05-28','2023-06-27','Daily',3,13),(14,'2023-05-29','2023-06-28','Weekly',4,14),(15,'2023-05-30','2023-06-29','Daily',5,15),(16,'2023-05-31','2023-06-30','Monthly',6,16),(17,'2023-06-01','2023-07-01','Daily',7,17),(18,'2023-06-02','2023-07-02','Weekly',8,18),(19,'2023-06-03','2023-07-03','Daily',9,19),(20,'2023-06-04','2023-07-04','Monthly',10,20);
/*!40000 ALTER TABLE `care` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `care_manager`
--

DROP TABLE IF EXISTS `care_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `care_manager` (
  `StaffID` int NOT NULL,
  `Bonus` decimal(8,2) DEFAULT NULL,
  `YearsOfExperience` int NOT NULL,
  PRIMARY KEY (`StaffID`),
  CONSTRAINT `FK_CARE_MANAGER_STAFF_StaffID` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `care_manager`
--

LOCK TABLES `care_manager` WRITE;
/*!40000 ALTER TABLE `care_manager` DISABLE KEYS */;
INSERT INTO `care_manager` VALUES (62,1000.00,5),(65,800.00,8),(68,1200.00,3),(73,900.00,6),(76,1100.00,4),(79,1000.00,7);
/*!40000 ALTER TABLE `care_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_staff`
--

DROP TABLE IF EXISTS `external_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_staff` (
  `ExternalStaffID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TradeLicenceNo` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TypeOfTrade` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `HourlyRate` decimal(6,2) NOT NULL,
  PRIMARY KEY (`ExternalStaffID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_staff`
--

LOCK TABLES `external_staff` WRITE;
/*!40000 ALTER TABLE `external_staff` DISABLE KEYS */;
INSERT INTO `external_staff` VALUES (1,'John Doe','789 Elm St, City, State','555-1234','TL123456','Plumber',45.00),(2,'Jane Smith','456 Oak St, City, State','555-5678','TL789012','Electrician',50.00),(3,'Michael Johnson','321 Maple St, City, State','555-2468','TL345678','Carpenter',40.00),(4,'Emily Williams','654 Pine St, City, State','555-1357','TL901234','Painter',35.00),(5,'David Brown','987 Cedar St, City, State','555-8642','TL567890','Plumber',45.00),(6,'Sarah Davis','135 Birch St, City, State','555-9753','TL234567','Electrician',50.00),(7,'Robert Wilson','864 Walnut St, City, State','555-6428','TL890123','Carpenter',40.00),(8,'Jennifer Taylor','246 Cherry St, City, State','555-7539','TL456789','Painter',35.00),(9,'Daniel Anderson','579 Spruce St, City, State','555-4816','TL012345','Plumber',45.00),(10,'Olivia Thompson','246 Pine St, City, State','555-3698','TL678901','Electrician',50.00);
/*!40000 ALTER TABLE `external_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nurse` (
  `StaffID` int NOT NULL,
  `EducationLevel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `SpecializedIn` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CareManagerID` int NOT NULL,
  PRIMARY KEY (`StaffID`),
  KEY `IX_NURSE_CareManagerID` (`CareManagerID`),
  CONSTRAINT `FK_NURSE_CARE_MANAGER_CareManagerID` FOREIGN KEY (`CareManagerID`) REFERENCES `care_manager` (`StaffID`) ON DELETE CASCADE,
  CONSTRAINT `FK_NURSE_STAFF_StaffID` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nurse`
--

LOCK TABLES `nurse` WRITE;
/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` VALUES (63,'Bachelor of Science in Nursing','Pediatrics',62),(66,'Associate Degree in Nursing','Critical Care',65),(69,'Master of Science in Nursing','Psychiatric Nursing',68),(71,'Bachelor of Science in Nursing','Geriatrics',68),(74,'Associate Degree in Nursing','Emergency Nursing',68),(77,'Bachelor of Science in Nursing','Obstetrics',68),(80,'Master of Science in Nursing','Cardiology',68);
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_carer`
--

DROP TABLE IF EXISTS `personal_carer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_carer` (
  `StaffID` int NOT NULL,
  `EducationLevel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ShiftHours` int NOT NULL,
  `CareManagerID` int NOT NULL,
  PRIMARY KEY (`StaffID`),
  KEY `IX_PERSONAL_CARER_CareManagerID` (`CareManagerID`),
  CONSTRAINT `FK_PERSONAL_CARER_CARE_MANAGER_CareManagerID` FOREIGN KEY (`CareManagerID`) REFERENCES `care_manager` (`StaffID`) ON DELETE CASCADE,
  CONSTRAINT `FK_PERSONAL_CARER_STAFF_StaffID` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_carer`
--

LOCK TABLES `personal_carer` WRITE;
/*!40000 ALTER TABLE `personal_carer` DISABLE KEYS */;
INSERT INTO `personal_carer` VALUES (61,'High School Diploma',8,62),(64,'Bachelors Degree',10,65),(67,'Associates Degree',6,68),(70,'High School Diploma',8,68),(72,'Masters Degree',12,68),(75,'Associates Degree',6,68),(78,'Bachelors Degree',10,68);
/*!40000 ALTER TABLE `personal_carer` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `resident`
--

DROP TABLE IF EXISTS `resident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resident` (
  `ResidentId` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DOB` date NOT NULL,
  PRIMARY KEY (`ResidentId`),
  KEY `IX_RESIDENT_FullName_Phone` (`FullName`,`Phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resident`
--

LOCK TABLES `resident` WRITE;
/*!40000 ALTER TABLE `resident` DISABLE KEYS */;
INSERT INTO `resident` VALUES (1,'John Doe','123 Elm St, City, State','555-1234','1990-05-16'),(2,'Jane Smith','456 Oak St, City, State','555-5678','1985-09-23'),(3,'Michael Johnson','789 Maple St, City, State','555-2468','1992-02-10'),(4,'Emily Williams','321 Pine St, City, State','555-1357','1988-11-30'),(5,'David Brown','654 Cedar St, City, State','555-8642','1995-07-19'),(6,'Sarah Davis','987 Birch St, City, State','555-9753','1991-04-05'),(7,'Robert Wilson','135 Walnut St, City, State','555-6428','1987-12-14'),(8,'Jennifer Taylor','864 Cherry St, City, State','555-7539','1993-08-03'),(9,'Daniel Anderson','579 Spruce St, City, State','555-4816','1989-03-22'),(10,'Olivia Thompson','246 Pine St, City, State','555-3698','1994-10-11');
/*!40000 ALTER TABLE `resident` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `StaffID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DOB` date NOT NULL,
  `Phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Salary` decimal(8,2) NOT NULL,
  `StaffType` enum('PC','CM','N') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`StaffID`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (61,'John Smith','123 Main St, City, State','1990-05-01','555-1234',5000.00,'PC'),(62,'Jane Doe','456 Elm St, City, State','1985-08-15','555-5678',6000.00,'CM'),(63,'Michael Johnson','789 Oak St, City, State','1992-12-10','555-9876',4500.00,'N'),(64,'Emily Williams','321 Maple St, City, State','1993-04-25','555-2468',5500.00,'PC'),(65,'David Brown','654 Pine St, City, State','1988-11-05','555-1357',5200.00,'CM'),(66,'Sarah Davis','987 Cedar St, City, State','1991-09-20','555-8642',4700.00,'N'),(67,'Robert Wilson','135 Birch St, City, State','1987-07-08','555-9753',5800.00,'PC'),(68,'Jennifer Taylor','864 Walnut St, City, State','1994-02-15','555-6428',5200.00,'CM'),(69,'Daniel Anderson','246 Cherry St, City, State','1990-06-30','555-7539',5000.00,'N'),(70,'Olivia Thompson','579 Spruce St, City, State','1989-03-12','555-4816',5300.00,'PC'),(71,'Jessica Wilson','246 Pine St, City, State','1995-07-12','555-3698',4800.00,'N'),(72,'Andrew Thompson','789 Cedar St, City, State','1986-09-25','555-2468',5700.00,'PC'),(73,'Michelle Davis','357 Elm St, City, State','1992-04-10','555-7539',5100.00,'CM'),(74,'Christopher White','963 Oak St, City, State','1987-11-18','555-8642',5400.00,'N'),(75,'Stephanie Brown','258 Maple St, City, State','1991-01-05','555-9753',4900.00,'PC'),(76,'Matthew Johnson','741 Walnut St, City, State','1993-06-20','555-6428',5900.00,'CM'),(77,'Amanda Smith','852 Birch St, City, State','1989-03-15','555-4816',5300.00,'N'),(78,'Ryan Anderson','963 Cherry St, City, State','1990-08-30','555-1234',5500.00,'PC'),(79,'Laura Taylor','456 Spruce St, City, State','1988-05-07','555-5678',5100.00,'CM'),(80,'Kevin Williams','789 Pine St, City, State','1994-02-28','555-9876',4700.00,'N');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16 19:51:53
