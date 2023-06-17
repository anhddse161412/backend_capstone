-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: freelancer
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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `accountID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `roleID` int NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`accountID`),
  KEY `FK_account_role_idx` (`roleID`),
  CONSTRAINT `FK_account_role` FOREIGN KEY (`roleID`) REFERENCES `role` (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (3,'admin1','adada`','1232131','adada','adad','$2b$10$Yt9N8e9drtGM5AH5o34RrOY9VbJsWHflDlvtQiQAJfQ03Uf5LnTei','1231231',2,'true'),(5,'user 12','asd','adads','dajsdiwj ','djqidjw ','$2b$10$TiytWaespaHYYm7FK0eYNe0XiwwDv.gnIVRlb6soOL1T4FAeH2X.6','1099',2,'true');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `jobID` int NOT NULL,
  PRIMARY KEY (`categoryID`),
  KEY `FK_category_job_idx` (`jobID`),
  CONSTRAINT `FK_category_job` FOREIGN KEY (`jobID`) REFERENCES `job` (`jobID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_job`
--

DROP TABLE IF EXISTS `category_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_job` (
  `category_job_ID` int NOT NULL AUTO_INCREMENT,
  `categoryID` int NOT NULL,
  `jobID` int NOT NULL,
  PRIMARY KEY (`category_job_ID`),
  KEY `FK_category_job_job_idx` (`jobID`),
  KEY `FK_category_job_category_idx` (`categoryID`),
  CONSTRAINT `FK_category_job_category` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`),
  CONSTRAINT `FK_category_job_job` FOREIGN KEY (`jobID`) REFERENCES `job` (`jobID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_job`
--

LOCK TABLES `category_job` WRITE;
/*!40000 ALTER TABLE `category_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certification`
--

DROP TABLE IF EXISTS `certification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certification` (
  `certificationID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `issueDate` varchar(50) NOT NULL,
  `organization` varchar(50) NOT NULL,
  `certID` varchar(50) NOT NULL,
  `expiredDate` varchar(50) NOT NULL,
  `skillID` int NOT NULL,
  PRIMARY KEY (`certificationID`),
  KEY `FK_certification_skill_idx` (`skillID`),
  CONSTRAINT `FK_certification_skill` FOREIGN KEY (`skillID`) REFERENCES `skill` (`skillID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certification`
--

LOCK TABLES `certification` WRITE;
/*!40000 ALTER TABLE `certification` DISABLE KEYS */;
/*!40000 ALTER TABLE `certification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `clientID` int NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  `accountID` int NOT NULL,
  PRIMARY KEY (`clientID`),
  KEY `FK_client_account_idx` (`accountID`),
  CONSTRAINT `FK_client_account` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commitment`
--

DROP TABLE IF EXISTS `commitment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commitment` (
  `commitmentID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `fileAttach` varchar(50) NOT NULL,
  `freelancerID` int NOT NULL,
  `jobID` int NOT NULL,
  `signID` int NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`commitmentID`),
  UNIQUE KEY `signID_UNIQUE` (`signID`),
  KEY `FK_commitment_freelancer_idx` (`freelancerID`),
  KEY `FK_commitment_job_idx` (`jobID`),
  CONSTRAINT `FK_commitment__sign` FOREIGN KEY (`signID`) REFERENCES `sign` (`signID`),
  CONSTRAINT `FK_commitment_freelancer` FOREIGN KEY (`freelancerID`) REFERENCES `freelancer` (`freelancerID`),
  CONSTRAINT `FK_commitment_job` FOREIGN KEY (`jobID`) REFERENCES `job` (`jobID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commitment`
--

LOCK TABLES `commitment` WRITE;
/*!40000 ALTER TABLE `commitment` DISABLE KEYS */;
/*!40000 ALTER TABLE `commitment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedbackID` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `createDate` varchar(50) NOT NULL,
  `lastUpdateDate` varchar(50) NOT NULL,
  `clientID` int NOT NULL,
  `freelancerID` int NOT NULL,
  `jobApplyID` int NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`feedbackID`),
  KEY `FK_feedback_freelancer_idx` (`freelancerID`),
  KEY `FK_feedback_client_idx` (`clientID`),
  KEY `FK_feedback_jobapply_idx` (`jobApplyID`),
  CONSTRAINT `FK_feedback_client` FOREIGN KEY (`clientID`) REFERENCES `client` (`clientID`),
  CONSTRAINT `FK_feedback_freelancer` FOREIGN KEY (`freelancerID`) REFERENCES `freelancer` (`freelancerID`),
  CONSTRAINT `FK_feedback_jobapply` FOREIGN KEY (`jobApplyID`) REFERENCES `jobapply` (`jobApplyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freelancer`
--

DROP TABLE IF EXISTS `freelancer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `freelancer` (
  `freelancerID` int NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  `accountID` int NOT NULL,
  PRIMARY KEY (`freelancerID`),
  KEY `FK_freelancer_account_idx` (`accountID`),
  CONSTRAINT `FK_freelancer_account` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freelancer`
--

LOCK TABLES `freelancer` WRITE;
/*!40000 ALTER TABLE `freelancer` DISABLE KEYS */;
/*!40000 ALTER TABLE `freelancer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `jobID` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `scope` varchar(50) NOT NULL,
  `createDate` varchar(50) NOT NULL,
  `updateDate` varchar(50) NOT NULL,
  `endDate` varchar(50) NOT NULL,
  `fee` varchar(50) NOT NULL,
  `clientID` int NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`jobID`),
  KEY `FK_job_clients_idx` (`clientID`),
  CONSTRAINT `FK_job_client` FOREIGN KEY (`clientID`) REFERENCES `client` (`clientID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobapply`
--

DROP TABLE IF EXISTS `jobapply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobapply` (
  `jobApplyID` int NOT NULL AUTO_INCREMENT,
  `timeApply` varchar(50) NOT NULL,
  `proposalID` int NOT NULL,
  `jobID` int NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`jobApplyID`),
  KEY `FK_jobapply_job_idx` (`jobID`),
  KEY `FK_jobapply_proposal_idx` (`proposalID`),
  CONSTRAINT `FK_jobapply_job` FOREIGN KEY (`jobID`) REFERENCES `job` (`jobID`),
  CONSTRAINT `FK_jobapply_proposal` FOREIGN KEY (`proposalID`) REFERENCES `proposal` (`proposalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobapply`
--

LOCK TABLES `jobapply` WRITE;
/*!40000 ALTER TABLE `jobapply` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobapply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major` (
  `majorID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `freelancerID` int NOT NULL,
  PRIMARY KEY (`majorID`),
  KEY `FK_major_freelancer_idx` (`freelancerID`),
  CONSTRAINT `FK_major_freelancer` FOREIGN KEY (`freelancerID`) REFERENCES `freelancer` (`freelancerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `paymentID` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `fee` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `clientID` int NOT NULL,
  `freelancerID` int NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`paymentID`),
  KEY `FK_payment_freelancer_idx` (`freelancerID`),
  KEY `FK_payment_client_idx` (`clientID`),
  CONSTRAINT `FK_payment_client` FOREIGN KEY (`clientID`) REFERENCES `client` (`clientID`),
  CONSTRAINT `FK_payment_freelancer` FOREIGN KEY (`freelancerID`) REFERENCES `freelancer` (`freelancerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposal`
--

DROP TABLE IF EXISTS `proposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proposal` (
  `proposalID` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) NOT NULL,
  `fileAttach` varchar(50) NOT NULL,
  `sendDate` varchar(50) NOT NULL,
  `freelancerID` int NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`proposalID`),
  KEY `FK_proposal_freelancer_idx` (`freelancerID`),
  CONSTRAINT `FK_proposal_freelancer` FOREIGN KEY (`freelancerID`) REFERENCES `freelancer` (`freelancerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposal`
--

LOCK TABLES `proposal` WRITE;
/*!40000 ALTER TABLE `proposal` DISABLE KEYS */;
/*!40000 ALTER TABLE `proposal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `roleID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (2,'user','true'),(3,'freelancer','true');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sign`
--

DROP TABLE IF EXISTS `sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sign` (
  `signID` int NOT NULL AUTO_INCREMENT,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`signID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sign`
--

LOCK TABLES `sign` WRITE;
/*!40000 ALTER TABLE `sign` DISABLE KEYS */;
/*!40000 ALTER TABLE `sign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `skillID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `majorID` int NOT NULL,
  PRIMARY KEY (`skillID`),
  KEY `FK_skill_major_idx` (`majorID`),
  CONSTRAINT `FK_skill_major` FOREIGN KEY (`majorID`) REFERENCES `major` (`majorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `subCategoryID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `categoryID` int NOT NULL,
  PRIMARY KEY (`subCategoryID`),
  KEY `FK_subCategory_category_idx` (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-17 19:12:11
