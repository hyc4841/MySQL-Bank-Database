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
-- Table structure for table `loan_account`
--

DROP TABLE IF EXISTS `loan_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_account` (
  `loan_application_code` int NOT NULL AUTO_INCREMENT,
  `automatic_transfer_account_number` char(20) NOT NULL,
  `customer_number` int NOT NULL,
  `loan_product_code` int NOT NULL,
  `application_date` date NOT NULL COMMENT '대출 신청 접수일',
  `loan_desired_date` date NOT NULL COMMENT '대출 희망일',
  `application_amount` int NOT NULL COMMENT '신청 금액',
  `repayment` varchar(20) NOT NULL COMMENT '상환',
  `funds` varchar(20) DEFAULT NULL,
  `grace_period` varchar(20) DEFAULT NULL,
  `loan_Period` varchar(20) DEFAULT NULL,
  `application_approve` int NOT NULL DEFAULT '1' COMMENT '승인여부 - 0 미승인 1 승인',
  `rejection_reason` varchar(60) DEFAULT NULL COMMENT '부결사유',
  `loan_account_number` int DEFAULT NULL,
  `loan_date` date DEFAULT NULL COMMENT '대출일',
  `credit_and_collateral` int DEFAULT NULL COMMENT '1. 신용이냐 2 담보냐?',
  `contract_amount` int DEFAULT NULL COMMENT '약정 금액 - 대출금액',
  `principal_repayment_date` date DEFAULT NULL COMMENT '원금 상환 날짜',
  `maturity_repayment _amount` int DEFAULT NULL COMMENT '만기 상환금액 - 만기일에 상환해야 하는 금액(원금)',
  `account_issuance` int DEFAULT '1' COMMENT '통장 발행 유무 0: 안함 1 함',
  `loan_handling_fee` float DEFAULT '0.03' COMMENT '대출 수수료 대출 때 발생하는 수수료 선이자',
  `automatic_transfer_date` char(2) DEFAULT NULL COMMENT '자동 이자 납체일 - 매월 자동이체되는 일자(이자납부일)',
  `loan_interest_rate` float DEFAULT NULL COMMENT '대출금리',
  PRIMARY KEY (`loan_application_code`),
  UNIQUE KEY `loan_account_number_UNIQUE` (`loan_account_number`),
  KEY `fk_loan_account_customer1_idx` (`customer_number`),
  KEY `fk_loan_account_loan_product1_idx` (`loan_product_code`),
  KEY `fk_loan_account_bank_account1_idx` (`automatic_transfer_account_number`),
  CONSTRAINT `fk_loan_account_bank_account1` FOREIGN KEY (`automatic_transfer_account_number`) REFERENCES `bank_account` (`account_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_loan_account_customer1` FOREIGN KEY (`customer_number`) REFERENCES `customer` (`customer_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_loan_account_loan_product1` FOREIGN KEY (`loan_product_code`) REFERENCES `loan_product` (`loan_product_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_account`
--

LOCK TABLES `loan_account` WRITE;
/*!40000 ALTER TABLE `loan_account` DISABLE KEYS */;
INSERT INTO `loan_account` VALUES (1,'874-3887-2911-73',20673148,9,'2022-03-22','2022-03-22',2900000,'1',NULL,'2025-11-10','2025-11-10',1,NULL,74571989,'2022-03-22',1,2900000,'2025-11-10',2900000,1,0.03,'3',0.04),(2,'675-7836-7357-33',71650923,5,'2021-08-31','2021-08-31',563700000,'3',NULL,'2032-12-28','2032-12-28',1,NULL,84616808,'2021-08-31',1,563700000,'2032-12-28',563700000,1,0.03,'28',0.04),(3,'498-7002-8611-91',60459372,5,'2016-05-01','2016-05-01',987900000,'1',NULL,'2028-11-04','2028-11-04',1,NULL,26179086,'2016-05-01',0,987900000,'2028-11-04',987900000,0,0.03,'12',0.065),(4,'543-9423-2142-46',49861730,1,'2021-10-04','2021-10-04',360100000,'4',NULL,'2028-09-15','2028-09-15',1,NULL,82229303,'2021-10-04',0,360100000,'2028-09-15',360100000,0,0.03,'18',0.038),(5,'125-6952-4355-12',69057138,2,'2022-07-07','2022-07-07',680500000,'1',NULL,'2033-12-29','2033-12-29',1,NULL,50257474,'2022-07-07',0,680500000,'2033-12-29',680500000,0,0.03,'24',0.064),(6,'254-6777-5292-59',2967381,4,'2019-05-13','2019-05-13',216600000,'4',NULL,'2027-03-27','2027-03-27',1,NULL,77149977,'2019-05-13',0,216600000,'2027-03-27',216600000,0,0.03,'4',0.044),(7,'929-6572-9182-37',95827041,6,'2021-03-26','2021-03-26',608500000,'1',NULL,'2030-12-12','2030-12-12',1,NULL,72825980,'2021-03-26',0,608500000,'2030-12-12',608500000,0,0.03,'27',0.037),(8,'546-7988-6549-12',31492578,8,'2022-04-13','2022-04-13',699800000,'1',NULL,'2023-12-05','2023-12-05',1,NULL,62967619,'2022-04-13',0,699800000,'2023-12-05',699800000,0,0.03,'28',0.042),(9,'391-3505-8982-34',20968574,1,'2022-09-24','2022-09-24',875000000,'4',NULL,'2030-03-07','2030-03-07',1,NULL,64698356,'2022-09-24',0,875000000,'2030-03-07',875000000,0,0.03,'29',0.061),(10,'766-7492-4654-70',89302671,8,'2015-08-23','2015-08-23',465600000,'2',NULL,'2026-07-04','2026-07-04',1,NULL,36591549,'2015-08-23',1,465600000,'2026-07-04',465600000,1,0.03,'15',0.034),(11,'128-3344-2673-50',51634702,7,'2015-07-05','2015-07-05',730600000,'4',NULL,'2025-06-11','2025-06-11',1,NULL,30339788,'2015-07-05',1,730600000,'2025-06-11',730600000,1,0.03,'28',0.038),(12,'491-9643-1547-52',42719605,7,'2022-04-05','2022-04-05',383400000,'3',NULL,'2026-05-16','2026-05-16',1,NULL,66179724,'2022-04-05',0,383400000,'2026-05-16',383400000,0,0.03,'19',0.059),(13,'726-4748-8853-93',92063518,1,'2016-03-02','2016-03-02',231600000,'4',NULL,'2027-10-18','2027-10-18',1,NULL,33803302,'2016-03-02',0,231600000,'2027-10-18',231600000,0,0.03,'2',0.037),(14,'526-7440-9606-33',82190475,9,'2015-11-22','2015-11-22',728400000,'4',NULL,'2027-11-06','2027-11-06',1,NULL,86651165,'2015-11-22',1,728400000,'2027-11-06',728400000,1,0.03,'18',0.068),(15,'137-2447-6428-87',50193726,4,'2016-04-14','2016-04-14',65900000,'4',NULL,'2025-12-07','2025-12-07',1,NULL,37643809,'2016-04-14',0,65900000,'2025-12-07',65900000,0,0.03,'2',0.042),(17,'223-7051-1096-87',91806352,2,'2019-08-02','2019-08-02',703500000,'2',NULL,'2030-03-10','2030-03-10',1,NULL,62702893,'2019-08-02',1,703500000,'2030-03-10',703500000,1,0.03,'21',0.04),(18,'539-2792-2194-65',31968724,10,'2016-10-20','2016-10-20',159600000,'1',NULL,'2028-11-12','2028-11-12',1,NULL,37771713,'2016-10-20',1,159600000,'2028-11-12',159600000,1,0.03,'25',0.062),(19,'138-8480-6317-21',10479356,6,'2017-06-30','2017-06-30',832100000,'3',NULL,'2028-02-05','2028-02-05',1,NULL,24911085,'2017-06-30',1,832100000,'2028-02-05',832100000,1,0.03,'11',0.035),(20,'257-9704-9368-10',3647958,8,'2018-06-13','2018-06-13',30300000,'4',NULL,'2034-09-13','2034-09-13',1,NULL,58941977,'2018-06-13',0,30300000,'2034-09-13',30300000,0,0.03,'3',0.069),(21,'372-9876-6250-69',43082167,4,'2022-11-12','2022-11-12',543600000,'2',NULL,'2035-07-13','2035-07-13',1,NULL,66620874,'2022-11-12',0,543600000,'2035-07-13',543600000,0,0.03,'9',0.051),(22,'427-1932-9811-83',43250871,2,'2018-04-20','2018-04-20',583400000,'1',NULL,'2030-10-04','2030-10-04',1,NULL,31324743,'2018-04-20',1,583400000,'2030-10-04',583400000,1,0.03,'30',0.055),(23,'139-9114-8874-24',89460527,9,'2017-08-28','2017-08-28',832300000,'4',NULL,'2033-08-29','2033-08-29',1,NULL,64401336,'2017-08-28',1,832300000,'2033-08-29',832300000,1,0.03,'13',0.064),(24,'569-6003-2551-53',1762389,9,'2018-10-11','2018-10-11',745600000,'2',NULL,'2030-06-20','2030-06-20',1,NULL,18813857,'2018-10-11',1,745600000,'2030-06-20',745600000,1,0.03,'30',0.04),(25,'413-4837-3292-60',41203867,10,'2019-05-17','2019-05-17',680500000,'4',NULL,'2034-11-03','2034-11-03',1,NULL,84978804,'2019-05-17',1,680500000,'2034-11-03',680500000,1,0.03,'23',0.049),(26,'233-4703-6602-32',20836947,3,'2022-05-23','2022-05-23',622400000,'3',NULL,'2026-03-20','2026-03-20',1,NULL,36903625,'2022-05-23',1,622400000,'2026-03-20',622400000,1,0.03,'25',0.03),(27,'771-7908-1716-25',9861753,5,'2020-08-22','2020-08-22',759200000,'2',NULL,'2027-07-17','2027-07-17',1,NULL,74430894,'2020-08-22',0,759200000,'2027-07-17',759200000,0,0.03,'22',0.047),(28,'893-2944-7510-10',3951268,10,'2019-06-16','2019-06-16',160900000,'4',NULL,'2026-05-10','2026-05-10',1,NULL,82308774,'2019-06-16',1,160900000,'2026-05-10',160900000,1,0.03,'29',0.069),(29,'733-4192-2597-58',37246810,7,'2018-06-26','2018-06-26',361600000,'2',NULL,'2027-11-18','2027-11-18',1,NULL,23342685,'2018-06-26',0,361600000,'2027-11-18',361600000,0,0.03,'7',0.065),(30,'537-5184-9761-90',60524193,2,'2019-03-04','2019-03-04',248600000,'1',NULL,'2026-06-16','2026-06-16',1,NULL,22431005,'2019-03-04',0,248600000,'2026-06-16',248600000,0,0.03,'21',0.058),(31,'778-2000-9334-59',46918702,3,'2017-10-23','2017-10-23',310400000,'1',NULL,'2034-11-04','2034-11-04',1,NULL,47375517,'2017-10-23',1,310400000,'2034-11-04',310400000,1,0.03,'24',0.049),(32,'986-4086-6259-71',25317806,1,'2015-05-15','2015-05-15',450200000,'3',NULL,'2027-10-03','2027-10-03',1,NULL,52570384,'2015-05-15',0,450200000,'2027-10-03',450200000,0,0.03,'27',0.048),(33,'622-3199-4467-31',56107348,4,'2018-06-25','2018-06-25',261700000,'4',NULL,'2033-03-19','2033-03-19',1,NULL,73421691,'2018-06-25',0,261700000,'2033-03-19',261700000,0,0.03,'9',0.061),(34,'832-6868-1540-63',38204679,6,'2020-07-19','2020-07-19',725800000,'1',NULL,'2029-01-31','2029-01-31',1,NULL,49988448,'2020-07-19',1,725800000,'2029-01-31',725800000,1,0.03,'15',0.068),(35,'547-5813-6206-80',67392180,5,'2016-10-21','2016-10-21',987400000,'4',NULL,'2028-11-08','2028-11-08',1,NULL,59576129,'2016-10-21',1,987400000,'2028-11-08',987400000,1,0.03,'4',0.066),(36,'507-2376-5126-18',6894725,9,'2015-02-07','2015-02-07',568900000,'1',NULL,'2028-01-25','2028-01-25',1,NULL,28296098,'2015-02-07',1,568900000,'2028-01-25',568900000,1,0.03,'9',0.041),(37,'486-9829-1761-67',98047123,9,'2016-03-15','2016-03-15',46100000,'2',NULL,'2030-06-18','2030-06-18',1,NULL,65502316,'2016-03-15',1,46100000,'2030-06-18',46100000,1,0.03,'13',0.041),(38,'820-7194-9428-57',74150692,6,'2015-12-11','2015-12-11',35300000,'1',NULL,'2033-03-18','2033-03-18',1,NULL,44865552,'2015-12-11',0,35300000,'2033-03-18',35300000,0,0.03,'30',0.045),(39,'386-9287-8113-64',69704325,1,'2021-10-31','2021-10-31',667600000,'1',NULL,'2032-01-19','2032-01-19',1,NULL,12985653,'2021-10-31',1,667600000,'2032-01-19',667600000,1,0.03,'20',0.037),(40,'801-9141-7230-11',5726491,9,'2020-01-09','2020-01-09',233000000,'2',NULL,'2027-07-19','2027-07-19',1,NULL,66392019,'2020-01-09',1,233000000,'2027-07-19',233000000,1,0.03,'6',0.055),(41,'523-7392-2525-67',93681742,6,'2019-08-24','2019-08-24',43000000,'1',NULL,'2035-04-10','2035-04-10',1,NULL,11901969,'2019-08-24',0,43000000,'2035-04-10',43000000,0,0.03,'10',0.045),(42,'851-3254-2483-69',43950872,5,'2021-03-22','2021-03-22',764600000,'4',NULL,'2028-07-02','2028-07-02',1,NULL,10403842,'2021-03-22',0,764600000,'2028-07-02',764600000,0,0.03,'28',0.037),(43,'906-8280-1275-17',8674235,9,'2021-07-15','2021-07-15',905400000,'3',NULL,'2032-12-17','2032-12-17',1,NULL,43843491,'2021-07-15',1,905400000,'2032-12-17',905400000,1,0.03,'17',0.049),(44,'609-6073-6536-33',48172306,1,'2020-07-27','2020-07-27',178100000,'4',NULL,'2027-07-07','2027-07-07',1,NULL,55932014,'2020-07-27',1,178100000,'2027-07-07',178100000,1,0.03,'15',0.066),(45,'574-3179-7082-84',4163789,2,'2022-06-02','2022-06-02',684300000,'3',NULL,'2027-12-02','2027-12-02',1,NULL,90908113,'2022-06-02',1,684300000,'2027-12-02',684300000,1,0.03,'14',0.037),(46,'515-7128-8129-43',87326915,1,'2022-05-17','2022-05-17',296600000,'1',NULL,'2028-10-09','2028-10-09',1,NULL,23490288,'2022-05-17',0,296600000,'2028-10-09',296600000,0,0.03,'28',0.054),(47,'108-6552-3931-42',15329087,6,'2021-10-26','2021-10-26',615600000,'2',NULL,'2027-06-11','2027-06-11',1,NULL,84632531,'2021-10-26',0,615600000,'2027-06-11',615600000,0,0.03,'13',0.062),(48,'102-7621-2657-69',81935460,4,'2016-09-19','2016-09-19',656600000,'2',NULL,'2031-03-06','2031-03-06',1,NULL,85155571,'2016-09-19',0,656600000,'2031-03-06',656600000,0,0.03,'25',0.044),(49,'427-6044-7561-25',9125873,2,'2020-08-25','2020-08-25',406700000,'2',NULL,'2024-10-15','2024-10-15',1,NULL,68715969,'2020-08-25',0,406700000,'2024-10-15',406700000,0,0.03,'19',0.04),(50,'226-2920-3542-95',61872549,4,'2020-08-04','2020-08-04',97900000,'1',NULL,'2024-11-20','2024-11-20',1,NULL,86807757,'2020-08-04',1,97900000,'2024-11-20',97900000,1,0.03,'27',0.069),(51,'327-6745-4944-35',73916452,3,'2015-01-28','2015-01-28',336200000,'3',NULL,'2025-01-23','2025-01-23',1,NULL,63601302,'2015-01-28',1,336200000,'2025-01-23',336200000,1,0.03,'3',0.053),(53,'395-8583-9984-25',12089376,3,'2015-02-02','2015-02-02',121200000,'1',NULL,'2035-09-16','2035-09-16',1,NULL,98378084,'2015-02-02',1,121200000,'2035-09-16',121200000,1,0.03,'30',0.062),(54,'699-2787-8097-15',61832450,5,'2019-08-03','2019-08-03',7000000,'3',NULL,'2026-11-04','2026-11-04',1,NULL,19399372,'2019-08-03',1,7000000,'2026-11-04',7000000,1,0.03,'23',0.056),(55,'496-7949-4883-64',28047956,10,'2022-03-31','2022-03-31',274900000,'3',NULL,'2030-04-03','2030-04-03',1,NULL,75483900,'2022-03-31',1,274900000,'2030-04-03',274900000,1,0.03,'27',0.061),(56,'146-3809-4814-54',31597248,2,'2015-08-30','2015-08-30',299500000,'2',NULL,'2024-02-22','2024-02-22',1,NULL,56259557,'2015-08-30',1,299500000,'2024-02-22',299500000,1,0.03,'24',0.052),(57,'108-3091-9257-54',49630251,8,'2018-03-22','2018-03-22',79900000,'1',NULL,'2029-05-15','2029-05-15',1,NULL,77622541,'2018-03-22',0,79900000,'2029-05-15',79900000,0,0.03,'30',0.044),(58,'518-6186-9537-59',74852109,6,'2017-10-09','2017-10-09',54700000,'1',NULL,'2032-02-28','2032-02-28',1,NULL,15041877,'2017-10-09',0,54700000,'2032-02-28',54700000,0,0.03,'21',0.035),(59,'981-8927-8204-46',9713284,1,'2020-09-21','2020-09-21',341800000,'1',NULL,'2030-11-20','2030-11-20',1,NULL,84107763,'2020-09-21',0,341800000,'2030-11-20',341800000,0,0.03,'16',0.057),(60,'476-8202-7978-33',92314765,10,'2020-03-12','2020-03-12',663900000,'2',NULL,'2029-06-01','2029-06-01',1,NULL,72337649,'2020-03-12',0,663900000,'2029-06-01',663900000,0,0.03,'24',0.038),(61,'821-8975-2810-92',56124730,4,'2017-07-20','2017-07-20',585500000,'4',NULL,'2025-01-03','2025-01-03',1,NULL,29719578,'2017-07-20',1,585500000,'2025-01-03',585500000,1,0.03,'6',0.055),(62,'518-3291-2773-67',79820145,9,'2019-09-23','2019-09-23',208900000,'3',NULL,'2029-05-04','2029-05-04',1,NULL,35443663,'2019-09-23',0,208900000,'2029-05-04',208900000,0,0.03,'9',0.044),(63,'476-3450-3650-90',43962817,3,'2021-08-21','2021-08-21',219100000,'3',NULL,'2024-10-27','2024-10-27',1,NULL,52211563,'2021-08-21',0,219100000,'2024-10-27',219100000,0,0.03,'4',0.068),(64,'145-7902-9766-91',3485719,5,'2017-04-27','2017-04-27',436100000,'2',NULL,'2026-10-02','2026-10-02',1,NULL,20916842,'2017-04-27',1,436100000,'2026-10-02',436100000,1,0.03,'13',0.036),(65,'530-7507-8101-26',69310754,1,'2021-01-01','2021-01-01',304400000,'3',NULL,'2025-05-30','2025-05-30',1,NULL,34549766,'2021-01-01',0,304400000,'2025-05-30',304400000,0,0.03,'13',0.06),(66,'130-9278-5870-73',29736854,10,'2020-09-22','2020-09-22',553600000,'3',NULL,'2035-08-18','2035-08-18',1,NULL,11969366,'2020-09-22',0,553600000,'2035-08-18',553600000,0,0.03,'13',0.052),(67,'743-3732-5230-44',78391046,4,'2015-06-10','2015-06-10',668400000,'4',NULL,'2028-04-14','2028-04-14',1,NULL,61212082,'2015-06-10',0,668400000,'2028-04-14',668400000,0,0.03,'5',0.048),(68,'496-1085-2275-94',78936520,9,'2018-10-12','2018-10-12',977600000,'2',NULL,'2030-12-10','2030-12-10',1,NULL,71972225,'2018-10-12',1,977600000,'2030-12-10',977600000,1,0.03,'21',0.063),(69,'785-1724-1199-74',50916387,1,'2017-12-22','2017-12-22',578300000,'4',NULL,'2035-05-29','2035-05-29',1,NULL,63463739,'2017-12-22',0,578300000,'2035-05-29',578300000,0,0.03,'2',0.063),(70,'803-8215-6836-51',84693250,1,'2022-02-18','2022-02-18',888800000,'1',NULL,'2026-04-19','2026-04-19',1,NULL,20989594,'2022-02-18',0,888800000,'2026-04-19',888800000,0,0.03,'8',0.032),(71,'793-3677-9566-27',86247503,2,'2019-04-18','2019-04-18',546600000,'3',NULL,'2034-08-30','2034-08-30',1,NULL,60728940,'2019-04-18',0,546600000,'2034-08-30',546600000,0,0.03,'22',0.042),(72,'401-1685-7141-70',37210684,3,'2020-11-17','2020-11-17',38500000,'3',NULL,'2023-01-03','2023-01-03',1,NULL,36871062,'2020-11-17',1,38500000,'2023-01-03',38500000,1,0.03,'19',0.067),(73,'120-5823-6847-62',45786290,5,'2019-02-10','2019-02-10',104400000,'4',NULL,'2025-07-21','2025-07-21',1,NULL,58570486,'2019-02-10',1,104400000,'2025-07-21',104400000,1,0.03,'29',0.049),(74,'926-7362-2159-68',69103572,2,'2019-04-03','2019-04-03',764600000,'2',NULL,'2030-05-05','2030-05-05',1,NULL,83303319,'2019-04-03',0,764600000,'2030-05-05',764600000,0,0.03,'18',0.054),(76,'682-3234-7854-81',48207396,2,'2015-09-09','2015-09-09',596000000,'3',NULL,'2025-02-04','2025-02-04',1,NULL,72629078,'2015-09-09',0,596000000,'2025-02-04',596000000,0,0.03,'27',0.048),(77,'227-3184-3329-40',45162093,10,'2022-04-20','2022-04-20',770500000,'2',NULL,'2034-02-08','2034-02-08',1,NULL,15795933,'2022-04-20',1,770500000,'2034-02-08',770500000,1,0.03,'10',0.043),(78,'966-7705-3321-56',98673245,4,'2022-07-25','2022-07-25',818000000,'3',NULL,'2029-04-09','2029-04-09',1,NULL,55726985,'2022-07-25',1,818000000,'2029-04-09',818000000,1,0.03,'1',0.039),(79,'976-8034-9487-38',10456278,7,'2015-12-16','2015-12-16',960600000,'3',NULL,'2028-09-11','2028-09-11',1,NULL,36478057,'2015-12-16',1,960600000,'2028-09-11',960600000,1,0.03,'27',0.061),(80,'331-6055-2093-60',68943521,6,'2019-03-10','2019-03-10',750600000,'2',NULL,'2033-01-19','2033-01-19',1,NULL,13472031,'2019-03-10',1,750600000,'2033-01-19',750600000,1,0.03,'7',0.062),(81,'416-8761-1562-74',76185309,3,'2017-05-11','2017-05-11',790500000,'3',NULL,'2023-08-11','2023-08-11',1,NULL,57767984,'2017-05-11',1,790500000,'2023-08-11',790500000,1,0.03,'3',0.061),(82,'915-1683-7779-52',4652937,7,'2019-12-11','2019-12-11',746000000,'3',NULL,'2024-04-24','2024-04-24',1,NULL,43151880,'2019-12-11',1,746000000,'2024-04-24',746000000,1,0.03,'29',0.051),(83,'280-1033-8521-48',16832590,3,'2019-08-22','2019-08-22',978100000,'4',NULL,'2028-02-16','2028-02-16',1,NULL,58165990,'2019-08-22',1,978100000,'2028-02-16',978100000,1,0.03,'19',0.047),(84,'109-3751-8522-76',57832096,8,'2015-04-21','2015-04-21',19100000,'4',NULL,'2023-03-12','2023-03-12',1,NULL,43372944,'2015-04-21',0,19100000,'2023-03-12',19100000,0,0.03,'29',0.065),(85,'852-9279-1323-38',35196208,4,'2016-03-18','2016-03-18',36700000,'2',NULL,'2029-07-30','2029-07-30',1,NULL,65233365,'2016-03-18',0,36700000,'2029-07-30',36700000,0,0.03,'17',0.042),(86,'986-5644-5879-79',87124960,10,'2018-09-21','2018-09-21',972900000,'4',NULL,'2029-01-06','2029-01-06',1,NULL,72222771,'2018-09-21',1,972900000,'2029-01-06',972900000,1,0.03,'16',0.053),(87,'558-4526-6045-61',58462917,9,'2017-10-19','2017-10-19',225800000,'1',NULL,'2029-06-02','2029-06-02',1,NULL,82029782,'2017-10-19',0,225800000,'2029-06-02',225800000,0,0.03,'26',0.04),(88,'408-9679-8498-70',59014836,2,'2018-04-18','2018-04-18',586700000,'4',NULL,'2025-09-29','2025-09-29',1,NULL,15800667,'2018-04-18',1,586700000,'2025-09-29',586700000,1,0.03,'20',0.044),(89,'904-6780-5247-74',36798140,3,'2019-05-20','2019-05-20',250200000,'1',NULL,'2025-05-29','2025-05-29',1,NULL,28406966,'2019-05-20',0,250200000,'2025-05-29',250200000,0,0.03,'22',0.056),(90,'682-5322-9440-78',28796143,1,'2019-07-04','2019-07-04',172900000,'1',NULL,'2024-04-05','2024-04-05',1,NULL,73893308,'2019-07-04',0,172900000,'2024-04-05',172900000,0,0.03,'9',0.065),(91,'695-6313-3791-55',71906354,10,'2019-04-26','2019-04-26',994800000,'3',NULL,'2031-09-26','2031-09-26',1,NULL,62370684,'2019-04-26',0,994800000,'2031-09-26',994800000,0,0.03,'12',0.051),(92,'573-4086-3419-18',93617085,10,'2020-03-20','2020-03-20',736900000,'2',NULL,'2028-04-08','2028-04-08',1,NULL,71856137,'2020-03-20',0,736900000,'2028-04-08',736900000,0,0.03,'24',0.036),(93,'740-1512-6443-72',28371064,2,'2018-02-08','2018-02-08',452900000,'1',NULL,'2025-02-06','2025-02-06',1,NULL,34076803,'2018-02-08',1,452900000,'2025-02-06',452900000,1,0.03,'2',0.057),(94,'661-5315-5853-90',62495170,1,'2021-07-10','2021-07-10',704300000,'3',NULL,'2030-08-03','2030-08-03',1,NULL,12428109,'2021-07-10',1,704300000,'2030-08-03',704300000,1,0.03,'28',0.048),(95,'335-1386-7290-22',28041597,2,'2016-09-13','2016-09-13',613400000,'1',NULL,'2031-10-21','2031-10-21',1,NULL,80173117,'2016-09-13',1,613400000,'2031-10-21',613400000,1,0.03,'17',0.067),(96,'759-3136-5189-94',69057432,3,'2017-10-28','2017-10-28',638500000,'4',NULL,'2028-06-16','2028-06-16',1,NULL,34539043,'2017-10-28',1,638500000,'2028-06-16',638500000,1,0.03,'18',0.048),(97,'115-2375-7673-24',83016972,9,'2018-12-21','2018-12-21',917100000,'2',NULL,'2025-02-14','2025-02-14',1,NULL,67218079,'2018-12-21',1,917100000,'2025-02-14',917100000,1,0.03,'21',0.067);
/*!40000 ALTER TABLE `loan_account` ENABLE KEYS */;
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
