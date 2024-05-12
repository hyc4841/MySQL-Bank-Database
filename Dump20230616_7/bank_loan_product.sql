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
-- Table structure for table `loan_product`
--

DROP TABLE IF EXISTS `loan_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_product` (
  `loan_product_code` int NOT NULL,
  `loan_product_name` varchar(20) NOT NULL,
  `loan_limit` int NOT NULL COMMENT '대출 한도',
  `minimum_rate` float NOT NULL COMMENT '최저 금리',
  `maximum_loan_term` int NOT NULL COMMENT '최대 대출 기간',
  PRIMARY KEY (`loan_product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_product`
--

LOCK TABLES `loan_product` WRITE;
/*!40000 ALTER TABLE `loan_product` DISABLE KEYS */;
INSERT INTO `loan_product` VALUES (1,'NH직장인대출V',200000000,6.02,5),(2,'올원 직장인대출',150000000,6.12,5),(3,'NH금융리더론',250000000,6.33,5),(4,'NH씬파일러대출',20000000,7.44,5),(5,'NH새희망홀씨 긴급생계자금대출',5000000,7.13,5),(6,'NH새내기직장인대출',30000000,6.13,5),(7,'NH모바일새희망홀씨II',35000000,8.26,5),(8,'샐러리맨우대대출',150000000,6.45,7),(9,'WON플러스 직장인대출',51000000,5.91,1),(10,'WON하는 직장인대출',300000000,6.11,5);
/*!40000 ALTER TABLE `loan_product` ENABLE KEYS */;
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
