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
-- Table structure for table `login_table`
--

DROP TABLE IF EXISTS `login_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_table` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_table`
--

LOCK TABLES `login_table` WRITE;
/*!40000 ALTER TABLE `login_table` DISABLE KEYS */;
INSERT INTO `login_table` VALUES ('1001','stu001','Student','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin'),('1002','stu002','Student','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin'),('1003','stu003','Student','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin'),('1004','stu004','Student','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin'),('1005','stu005','Student','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin'),('1006','stu006','Student','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin'),('1007','stu007','Student','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin'),('1008','stu008','Student','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin'),('1009','stu009','Student','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin'),('1010','stu010','Student','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin'),('201','fac001','Faculty','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin'),('202','fac002','Faculty','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin'),('203','fac003','Faculty','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin'),('204','fac004','Faculty','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin'),('205','fac005','Faculty','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin'),('A001','ad001','Admin','0001-08-20 00:00:00.000000','0001-08-20 00:00:00.000000','Admin','Admin');
/*!40000 ALTER TABLE `login_table` ENABLE KEYS */;
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
