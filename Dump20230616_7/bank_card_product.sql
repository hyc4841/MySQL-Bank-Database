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
-- Table structure for table `card_product`
--

DROP TABLE IF EXISTS `card_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_product` (
  `card_product_code` int NOT NULL,
  `card_product_name` varchar(20) NOT NULL,
  `postpaid_transportaton_card` int NOT NULL DEFAULT '1' COMMENT '후불 교통 여부',
  `card_grade` int NOT NULL DEFAULT '0' COMMENT '카드 등급 - 0 일반 1 골드 2 플래티넘',
  `annual_fee` int NOT NULL DEFAULT '0',
  `book` int DEFAULT '0',
  `fueling` int DEFAULT '0',
  `shopping` int DEFAULT '0',
  `cafe` int DEFAULT '0',
  `movie` int DEFAULT '0',
  `dining_out` int DEFAULT '0',
  `medicine` int DEFAULT '0',
  `amusement_park` int DEFAULT '0',
  `point` int DEFAULT '0',
  `communication` int DEFAULT '0',
  `traffic` int DEFAULT '0',
  `aviation` int DEFAULT '0',
  PRIMARY KEY (`card_product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_product`
--

LOCK TABLES `card_product` WRITE;
/*!40000 ALTER TABLE `card_product` DISABLE KEYS */;
INSERT INTO `card_product` VALUES (1,'zgm_the_pay',1,0,12000,0,0,1,0,0,0,0,0,0,0,0,0),(2,'zgm_streaming',1,0,12000,0,0,1,1,0,0,0,0,0,0,0,0),(3,'올바른NEW_HAVE+',1,1,23000,0,0,0,0,0,0,0,0,1,1,0,0),(4,'올바른NEW_HAVE',1,0,12000,0,0,0,0,0,0,0,0,1,1,0,1),(5,'올바른BAZIC+',1,1,23000,0,1,1,0,0,0,1,0,0,0,0,0),(6,'올바른BAZIC',1,0,12000,0,0,0,0,0,0,0,0,0,0,0,1),(7,'올바른HOMETOWN',1,0,12000,0,0,1,0,0,0,1,0,0,0,1,0),(8,'올바른OIL&PASS',1,0,12000,0,1,0,1,0,0,0,0,0,1,1,0),(9,'별다줄',1,0,12000,0,0,1,1,0,0,0,1,0,1,1,1),(10,'NH1916',1,0,12000,0,0,0,0,0,0,0,0,1,0,0,1),(11,'ON_PLATINUM',1,2,118000,0,0,0,0,0,0,0,0,1,0,0,1),(12,'위(ü)',1,2,200000,0,1,1,0,0,1,0,0,1,0,0,1),(13,'위(ü)_테라',1,2,495000,0,0,0,1,0,0,0,0,1,0,0,1),(14,'국민행복카드',1,0,0,0,0,1,1,0,0,1,1,0,1,1,0),(15,'어피치스윗체크',1,0,0,0,0,1,1,0,0,0,0,0,0,0,1),(16,'라이언치즈체크',1,0,0,0,0,0,0,0,0,0,0,1,0,0,1),(17,'적립조아',1,0,10000,0,0,0,0,0,0,0,0,1,0,0,0),(18,'할인조아',1,0,13000,0,1,1,1,1,0,0,1,0,0,1,0),(19,'쇼핑조아',1,0,13000,0,0,1,0,0,0,0,0,0,0,0,0),(20,'쏠쏠투플러스',1,1,50000,0,1,1,1,1,0,0,0,0,1,1,1);
/*!40000 ALTER TABLE `card_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-16 23:15:49
