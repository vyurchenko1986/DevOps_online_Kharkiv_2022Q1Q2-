-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: aws-training-epam-database-1.cwmspy0tftmn.us-east-1.rds.amazonaws.com    Database: TrainingEpam
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Current Database: `TrainingEpam`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `TrainingEpam` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `TrainingEpam`;

--
-- Table structure for table `Cources`
--

DROP TABLE IF EXISTS `Cources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cources` (
  `Cource_id` int NOT NULL,
  `Cource_name` varchar(100) NOT NULL,
  `Cource_Duration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cources`
--

LOCK TABLES `Cources` WRITE;
/*!40000 ALTER TABLE `Cources` DISABLE KEYS */;
INSERT INTO `Cources` VALUES (1,'DevOps',120),(2,'Java',60),(3,'JavaScript',90),(4,'Web',60);
/*!40000 ALTER TABLE `Cources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students` (
  `Student_id` int NOT NULL,
  `Student_name` varchar(100) NOT NULL,
  `Student_phone` bigint NOT NULL,
  `Student_email` varchar(100) NOT NULL,
  `Cource_id` int NOT NULL,
  `Cource_status` enum('on the go','completed') DEFAULT NULL,
  `Teacher_id` int NOT NULL,
  `Average_score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES (1,'Valery Yurchenko',380633753653,'vyurchenko1986@gmail.com',1,'completed',1,99),(2,'Veronika Krasilia',380633753002,'vkrasilia@gmail.com',1,'completed',3,64),(3,'Viacheslav Chudnov',380633753003,'v.goodinov@gmail.com',2,'on the go',3,77),(4,'Vitaliy Burbela',380633753004,'vitaliybravo@gmail.com',1,'completed',2,91),(5,'Vitaliy Belyh',380633753005,'v.bh@ukr.net',1,'completed',2,44),(6,'Vitaly Morozov',380633753006,'morozv.vitaly@gmail.com',2,'on the go',3,80);
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teachers`
--

DROP TABLE IF EXISTS `Teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teachers` (
  `Teacher_id` int NOT NULL,
  `Teacher_name` varchar(100) NOT NULL,
  `Teacher_phone` bigint NOT NULL,
  `Teacher_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teachers`
--

LOCK TABLES `Teachers` WRITE;
/*!40000 ALTER TABLE `Teachers` DISABLE KEYS */;
INSERT INTO `Teachers` VALUES (2,'Oleksandr Klykov',380503786453,'klykovaleksandr@ukr.net'),(3,'Richard Handrix',380735853653,'0evel00@gmail.com'),(1,'Aleksandr Pokatilov',380667865653,'sasha.pokatilov@gmail.com');
/*!40000 ALTER TABLE `Teachers` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-08  0:00:23
