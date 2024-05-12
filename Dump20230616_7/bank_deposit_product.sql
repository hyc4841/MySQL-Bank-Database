-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: bank
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
-- Table structure for table `deposit_product`
--

DROP TABLE IF EXISTS `deposit_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit_product` (
  `deposit_product_code` int NOT NULL,
  `deposit_product_name` varchar(20) NOT NULL,
  `interest_rate_reference_date` date NOT NULL COMMENT '금리 기준일',
  `min_subscription_period` int DEFAULT NULL,
  `max_subscription_period` int DEFAULT NULL,
  `deposit_type` int NOT NULL COMMENT '1.정기예탁금 2 정기적금 3 자유적립적금 4 자유저축 5 기업자유저축',
  `discontinuation_of_sales` int NOT NULL DEFAULT '0' COMMENT '판매 중단 여부 - 0 판매중 1 판매중단',
  PRIMARY KEY (`deposit_product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_product`
--

LOCK TABLES `deposit_product` WRITE;
/*!40000 ALTER TABLE `deposit_product` DISABLE KEYS */;
INSERT INTO `deposit_product` VALUES (1,'NH매일적금','2023-05-30',6,6,3,0),(2,'주머니(money)적금','2023-05-30',NULL,12,3,0),(3,'다 같이 동행 예금(정기예탁금)','2023-05-30',3,3,1,0),(4,'콕!BASIC 예금','2023-05-30',6,36,1,0),(5,'NH군인연금 평생안심통장','2023-05-30',6,36,4,0),(6,'NH여행적금[정기]','2023-05-30',NULL,60,2,0),(7,'도담도담적금(자유적립)','2023-05-30',12,36,3,0),(8,'장기주택마련저축','2023-01-31',84,120,2,1);
/*!40000 ALTER TABLE `deposit_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-16 23:15:47
