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
-- Table structure for table `student_table`
--

DROP TABLE IF EXISTS `student_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_table` (
  `student_id` int NOT NULL,
  `student_name` varchar(45) DEFAULT NULL,
  `student_email` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_table`
--

LOCK TABLES `student_table` WRITE;
/*!40000 ALTER TABLE `student_table` DISABLE KEYS */;
INSERT INTO `student_table` VALUES (1001,'Adam John','adam@gmail.com','1/8/20','1/8/20'),(1002,'Nithya Jose','nithya@gmail.com','1/8/20','1/8/20'),(1003,'Radha Jain','radha@gmail.com','1/8/20','1/8/20'),(1004,'Vimala Raj','vimala@gmail.com','1/8/20','1/8/20'),(1005,'Nakul Mathai','nakul@gmail.com','1/8/20','1/8/20'),(1006,'Joshua Antony','joshua@gmail.com','1/8/20','1/8/20'),(1007,'Rohit DS','rohit@gmail.com','1/8/20','1/8/20'),(1008,'Riya Joseph','riya@gmail.com','1/8/20','1/8/20'),(1009,'Sara John','sara@gmail.com','1/8/20','1/8/20'),(1010,'Sibin Kurian','sibin@gmail.com','1/8/20','1/8/20');
/*!40000 ALTER TABLE `student_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-15 19:29:22
