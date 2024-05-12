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
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `branch_code` int NOT NULL COMMENT '영업점 번호가 지점 번호',
  `branch_name` char(20) NOT NULL,
  `branch_address` char(60) NOT NULL,
  `branch_phone_number` char(14) NOT NULL,
  PRIMARY KEY (`branch_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (165,'대구동구지점','대구광역시 동구 신천동 321번지','053-1098-0537'),(212,'울산지점','울산광역시 남구 신정동 333번지','051-3933-3294'),(231,'충북지점','충청북도 청주시 상당구 남문로 666번지','043-2208-4086'),(380,'수원영통지점','경기도 수원시 영통구 매탄동 789번지','031-6759-2385'),(454,'창원의창지점','경상남도 창원시 의창구 팔용동 321번지','055-3659-4652'),(467,'경기지점','경기도 성남시 분당구 정자동 444번지','031-3494-3442'),(547,'광주지점','광주광역시 서구 농성동 1111번지','062-2627-6726'),(574,'대전지점','대전광역시 유성구 봉명동 222번지','032-8561-5561'),(576,'서울지점','서울특별시 강남구 역삼동 123번지','02-0106-3248'),(592,'부산지점','부산광역시 해운대구 우동 456번지','051-9866-1565'),(672,'광주서구지점','광주광역시 서구 화정동 987번지','062-7974-9694'),(673,'강원지점','강원도 원주시 반곡동 555번지','052-3331-6463'),(821,'인천지점','인천광역시 남동구 구월동 1010번지','032-8580-8242'),(822,'대구지점','대구광역시 동구 신천동 789번지','053-6437-7506'),(939,'인천구월지점','인천광역시 남동구 구월동 654번지','032-5345-8552');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
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
