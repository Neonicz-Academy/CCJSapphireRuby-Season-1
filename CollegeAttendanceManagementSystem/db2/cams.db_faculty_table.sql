-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cams.db
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `faculty_table`
--

DROP TABLE IF EXISTS `faculty_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty_table` (
  `faculty_id` int NOT NULL,
  `faculty_name` varchar(45) NOT NULL,
  `faculty_dept` varchar(45) NOT NULL,
  `faculty_email` varchar(45) NOT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  UNIQUE KEY `faculty_id_UNIQUE` (`faculty_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_table`
--

LOCK TABLES `faculty_table` WRITE;
/*!40000 ALTER TABLE `faculty_table` DISABLE KEYS */;
INSERT INTO `faculty_table` VALUES (201,'Atul Raj','CSE','atul@gmail.com','Admin','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000'),(202,'Varsha Gupta','ME','varsha@gmail.com','Admin','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000'),(203,'Aman Hadi','CE','aman@gmail.com','Admin','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000'),(204,'Jacob Mathew','EC','jacob@gmail.com','Admin','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000'),(205,'Daya Manu','EEE','daya@gmail.com','Admin','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000'),(207,'Vishnu','EEE','vishnu@gmail.com',NULL,NULL,NULL),(456,'Sinta','CSE','sinta@gmail.com',NULL,NULL,NULL);
/*!40000 ALTER TABLE `faculty_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-15 19:29:21
