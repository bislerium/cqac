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

-- Dump completed on 2023-05-16 19:51:27
