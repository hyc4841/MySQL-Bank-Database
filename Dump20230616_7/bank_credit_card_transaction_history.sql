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
-- Table structure for table `credit_card_transaction_history`
--

DROP TABLE IF EXISTS `credit_card_transaction_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_card_transaction_history` (
  `payment_code` int NOT NULL AUTO_INCREMENT,
  `card_number` char(16) NOT NULL,
  `transaction_date` datetime NOT NULL COMMENT '카드 결제일',
  `installment_months` int DEFAULT NULL COMMENT '할부 개월수',
  `payment_location` char(60) NOT NULL COMMENT '결제 장소',
  `payment_amount` int NOT NULL COMMENT '사용된 금액',
  PRIMARY KEY (`payment_code`),
  KEY `fk_credit_card_transaction_history_card_info1_idx` (`card_number`),
  CONSTRAINT `fk_credit_card_transaction_history_card_info1` FOREIGN KEY (`card_number`) REFERENCES `card_info` (`card_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card_transaction_history`
--

LOCK TABLES `credit_card_transaction_history` WRITE;
/*!40000 ALTER TABLE `credit_card_transaction_history` DISABLE KEYS */;
INSERT INTO `credit_card_transaction_history` VALUES (1,'5402547469722642','2023-06-07 02:11:10',0,'학생회관 CU',1000),(2,'5402547469722642','2023-06-07 02:11:40',0,'학생회관 CU',102200),(3,'5402547469722642','2023-06-07 02:27:26',0,'학생회관 CU',5500),(4,'5402547469722642','2023-06-07 02:30:57',6,'학생회관 CU',56500),(5,'5402547469722642','2023-06-07 02:30:57',5,'학생회관 CU',56500),(6,'5402547469722642','2023-06-07 02:36:40',6,'학생회관 CU',56500),(7,'5402547469722642','2023-06-07 13:27:54',0,'학생회관 CU',9800),(8,'5402547469722642','2023-06-07 02:30:57',5,'학생회관 CU',56500),(9,'5402547469722642','2023-06-07 02:30:57',4,'학생회관 CU',56500),(10,'5402547469722642','2023-06-07 02:36:40',5,'학생회관 CU',56500);
/*!40000 ALTER TABLE `credit_card_transaction_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-16 23:15:48
