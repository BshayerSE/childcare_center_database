CREATE DATABASE  IF NOT EXISTS `childcarecenter` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `childcarecenter`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: childcarecenter
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `ActivityID` int NOT NULL,
  `ActivityName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ActivityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1001,'Arts and Crafts'),(2001,'Sports and Games'),(3001,'Cook and Eat'),(4001,'Storytelling'),(5001,'Science Experiments');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `child`
--

DROP TABLE IF EXISTS `child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `child` (
  `ChildID` int NOT NULL,
  `ChildName` varchar(20) DEFAULT NULL,
  `admissionDate` date DEFAULT NULL,
  `paymentMethod` varchar(20) DEFAULT NULL,
  `Nno` int DEFAULT NULL,
  PRIMARY KEY (`ChildID`),
  UNIQUE KEY `ChildID` (`ChildID`),
  KEY `Child_FK1` (`Nno`),
  CONSTRAINT `Child_FK1` FOREIGN KEY (`Nno`) REFERENCES `nanny` (`NannyID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `child`
--

LOCK TABLES `child` WRITE;
/*!40000 ALTER TABLE `child` DISABLE KEYS */;
INSERT INTO `child` VALUES (23011,'Mona','2023-01-01','Credit Card',45002),(23012,'Hitham','2023-01-01','Bank Transfer',45005),(23013,'Eithar','2023-03-01','Cash',45004),(23014,'Suha','2023-01-01','Credit Card',45001),(23015,'Mohammed','2023-05-01','Bank Transfer',45003);
/*!40000 ALTER TABLE `child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `DeptID` int NOT NULL,
  `DeptName` varchar(20) DEFAULT NULL,
  `DeptFloor` varchar(20) DEFAULT NULL,
  `deptPhoneNumber` int DEFAULT NULL,
  PRIMARY KEY (`DeptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'1st Department','2nd Floor',504460234),(2,'2nd Department','3rd Floor',566754009),(3,'3rd Department','1st Floor',554426806),(4,'4th Department','4th Floor',555434332),(5,'5th Department','5th Floor',506943556);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nanny`
--

DROP TABLE IF EXISTS `nanny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nanny` (
  `NannyID` int NOT NULL,
  `NannyName` varchar(20) DEFAULT NULL,
  `NannyPhoneNumber` int DEFAULT NULL,
  `NannyAddress` varchar(20) DEFAULT NULL,
  `NannyEmail` varchar(20) DEFAULT NULL,
  `NannySalary` decimal(7,2) DEFAULT NULL,
  `Dno` int DEFAULT NULL,
  PRIMARY KEY (`NannyID`),
  UNIQUE KEY `NannyID` (`NannyID`),
  KEY `Nanny_FK1` (`Dno`),
  CONSTRAINT `Nanny_FK1` FOREIGN KEY (`Dno`) REFERENCES `department` (`DeptID`) ON DELETE SET NULL,
  CONSTRAINT `nanny_chk_1` CHECK ((`NannySalary` > 100.00))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nanny`
--

LOCK TABLES `nanny` WRITE;
/*!40000 ALTER TABLE `nanny` DISABLE KEYS */;
INSERT INTO `nanny` VALUES (45001,'Hamida',556776980,'123 Main St','hmoo5599@gmail.com',2000.00,1),(45002,'Noor',509833456,'456 Elm St','Noor@gmail.com',1800.00,2),(45003,'Lila',577322658,'789 Oak St','Lila@gmail.com',2200.00,3),(45004,'Huda',504388620,'321 Pine St','Huda@gmail.com',1900.00,4),(45005,'Weaam',577438774,'654 Maple St','Weaam@gmail.com',2100.00,5);
/*!40000 ALTER TABLE `nanny` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent` (
  `ParentName` varchar(20) NOT NULL,
  `ChildID` int DEFAULT NULL,
  `PhoneNo` int DEFAULT NULL,
  PRIMARY KEY (`ParentName`),
  UNIQUE KEY `PhoneNo` (`PhoneNo`),
  KEY `Parent_FK1` (`ChildID`),
  CONSTRAINT `Parent_FK1` FOREIGN KEY (`ChildID`) REFERENCES `child` (`ChildID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
INSERT INTO `parent` VALUES ('Hamed',23011,554344300),('Majed',23012,556021123),('Norah',23013,563389221),('Saad',23014,569954439);
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provides`
--

DROP TABLE IF EXISTS `provides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provides` (
  `NannyID` int DEFAULT NULL,
  `ServiceID` int DEFAULT NULL,
  KEY `PROVIDES_FK1` (`NannyID`),
  KEY `PROVIDES_FK2` (`ServiceID`),
  CONSTRAINT `PROVIDES_FK1` FOREIGN KEY (`NannyID`) REFERENCES `nanny` (`NannyID`) ON DELETE SET NULL,
  CONSTRAINT `PROVIDES_FK2` FOREIGN KEY (`ServiceID`) REFERENCES `service` (`ServiceID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provides`
--

LOCK TABLES `provides` WRITE;
/*!40000 ALTER TABLE `provides` DISABLE KEYS */;
INSERT INTO `provides` VALUES (45001,101),(45004,301),(45002,401),(45003,201),(45005,501);
/*!40000 ALTER TABLE `provides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receive`
--

DROP TABLE IF EXISTS `receive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receive` (
  `ChildID` int DEFAULT NULL,
  `ServiceID` int DEFAULT NULL,
  KEY `RECEIVE_FK1` (`ChildID`),
  KEY `RECEIVE_FK2` (`ServiceID`),
  CONSTRAINT `RECEIVE_FK1` FOREIGN KEY (`ChildID`) REFERENCES `child` (`ChildID`) ON DELETE SET NULL,
  CONSTRAINT `RECEIVE_FK2` FOREIGN KEY (`ServiceID`) REFERENCES `service` (`ServiceID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receive`
--

LOCK TABLES `receive` WRITE;
/*!40000 ALTER TABLE `receive` DISABLE KEYS */;
INSERT INTO `receive` VALUES (23015,201),(23011,101),(23012,501),(23013,301),(23014,401);
/*!40000 ALTER TABLE `receive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_in`
--

DROP TABLE IF EXISTS `register_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_in` (
  `ChildID` int DEFAULT NULL,
  `ActivityID` int DEFAULT NULL,
  KEY `REGISTER_IN_FK1` (`ChildID`),
  KEY `REGISTER_IN_FK2` (`ActivityID`),
  CONSTRAINT `REGISTER_IN_FK1` FOREIGN KEY (`ChildID`) REFERENCES `child` (`ChildID`) ON DELETE SET NULL,
  CONSTRAINT `REGISTER_IN_FK2` FOREIGN KEY (`ActivityID`) REFERENCES `activity` (`ActivityID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_in`
--

LOCK TABLES `register_in` WRITE;
/*!40000 ALTER TABLE `register_in` DISABLE KEYS */;
INSERT INTO `register_in` VALUES (23014,2001),(23011,1001),(23012,4001),(23015,5001),(23013,3001);
/*!40000 ALTER TABLE `register_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `ServiceID` int NOT NULL,
  `ServiceName` varchar(30) DEFAULT NULL,
  `ServiceDescription` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ServiceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (101,'Meal Preparation','Providing nutritious meals for children'),(201,'Transportation','Transporting children to and from the center'),(301,'Tutoring','Providing educational support and tutoring services'),(401,'Playtime','Organizing fun and engaging activities for children'),(501,'Healthcare','Providing medical care and monitoring children health');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-10 21:10:57
