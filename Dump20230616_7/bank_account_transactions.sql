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
-- Table structure for table `account_transactions`
--

DROP TABLE IF EXISTS `account_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_transactions` (
  `transaction_code` int NOT NULL AUTO_INCREMENT,
  `deposit_account_number` char(20) NOT NULL,
  `outlet_code` int NOT NULL,
  `transaction_date` datetime NOT NULL,
  `withdrawal_amount` int NOT NULL COMMENT '출금금액',
  `deposit_amount` int NOT NULL COMMENT '입금금액',
  `transaction_description` varchar(60) NOT NULL COMMENT '거래내용',
  `transaction_records` varchar(60) NOT NULL COMMENT '거래 기록 사항\\n입금을 하잖아 입금자 명을 넣잖아',
  `pre_transaction_account_balance` int NOT NULL COMMENT '거래 전 통장 잔액',
  PRIMARY KEY (`transaction_code`),
  KEY `fk_거래 내역_거래점1_idx` (`outlet_code`),
  KEY `fk_account_transactions_outlet1_idx` (`outlet_code`),
  KEY `fk_account_transactions_bank_account1_idx` (`deposit_account_number`),
  CONSTRAINT `fk_account_transactions_bank_account1` FOREIGN KEY (`deposit_account_number`) REFERENCES `bank_account` (`account_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_account_transactions_outlet1` FOREIGN KEY (`outlet_code`) REFERENCES `outlet` (`outlet_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_transactions`
--

LOCK TABLES `account_transactions` WRITE;
/*!40000 ALTER TABLE `account_transactions` DISABLE KEYS */;
INSERT INTO `account_transactions` VALUES (1,'354-1234-5678-38',5,'2023-06-07 02:01:44',1000,0,'체크카드 결제','남자기숙사 CU',500000),(2,'354-1234-5678-38',5,'2023-06-07 02:29:11',15000,0,'체크카드 결제','남자기숙사 CU',499000),(3,'354-1234-5678-38',5,'2023-06-07 13:30:01',66000,0,'체크카드 결제','학생회관 CU',484000);
/*!40000 ALTER TABLE `account_transactions` ENABLE KEYS */;
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
