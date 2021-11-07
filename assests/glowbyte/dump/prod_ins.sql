-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: prod_ins
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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

--
-- Table structure for table `CLIENT`
--

DROP TABLE IF EXISTS `CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT` (
  `CLIENT_ID` bigint DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT`
--

LOCK TABLES `CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT` VALUES (100200300,'2018-07-20 21:00:00'),(100200302,'2016-05-16 21:00:00'),(100200306,'2017-11-10 21:00:00'),(100200304,'2014-09-20 20:00:00');
/*!40000 ALTER TABLE `CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_BIRTH_DT`
--

DROP TABLE IF EXISTS `CLIENT_BIRTH_DT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_BIRTH_DT` (
  `CLIENT_ID` bigint DEFAULT NULL,
  `CLIENT_BIRTH_DT` date DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_BIRTH_DT`
--

LOCK TABLES `CLIENT_BIRTH_DT` WRITE;
/*!40000 ALTER TABLE `CLIENT_BIRTH_DT` DISABLE KEYS */;
INSERT INTO `CLIENT_BIRTH_DT` VALUES (100200300,'1982-03-02','2018-07-20 21:00:00'),(100200302,'1966-09-04','2016-05-16 21:00:00'),(100200306,'1984-10-17','2017-11-10 21:00:00'),(100200304,'1968-10-16','2014-09-20 20:00:00');
/*!40000 ALTER TABLE `CLIENT_BIRTH_DT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_CITIZENSHIP`
--

DROP TABLE IF EXISTS `CLIENT_CITIZENSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_CITIZENSHIP` (
  `CLIENT_ID` bigint DEFAULT NULL,
  `CLIENT_CITIZENSHIP` char(20) DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_CITIZENSHIP`
--

LOCK TABLES `CLIENT_CITIZENSHIP` WRITE;
/*!40000 ALTER TABLE `CLIENT_CITIZENSHIP` DISABLE KEYS */;
INSERT INTO `CLIENT_CITIZENSHIP` VALUES (100200300,'РФ','2018-07-20 21:00:00'),(100200302,'РФ','2016-05-16 21:00:00'),(100200306,'Республика Беларусь','2017-11-10 21:00:00'),(100200304,'РФ','2014-09-20 20:00:00'),(100200304,'Латвия','2021-09-20 21:00:00');
/*!40000 ALTER TABLE `CLIENT_CITIZENSHIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_FIO`
--

DROP TABLE IF EXISTS `CLIENT_FIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_FIO` (
  `CLIENT_ID` bigint DEFAULT NULL,
  `CLIENT_FIO` char(100) DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_FIO`
--

LOCK TABLES `CLIENT_FIO` WRITE;
/*!40000 ALTER TABLE `CLIENT_FIO` DISABLE KEYS */;
INSERT INTO `CLIENT_FIO` VALUES (100200300,'Лопатин Иван Иванович','2018-07-20 21:00:00'),(100200302,'Захарова Людмила Айдаровна','2016-05-16 21:00:00'),(100200306,'Сорокин Павел Леонидович','2017-11-10 21:00:00'),(100200304,'Романова Валентина Александровна','2014-09-20 20:00:00');
/*!40000 ALTER TABLE `CLIENT_FIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CLIENT_INN`
--

DROP TABLE IF EXISTS `CLIENT_INN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_INN` (
  `CLIENT_ID` bigint DEFAULT NULL,
  `CLIENT_INN` char(20) DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_INN`
--

LOCK TABLES `CLIENT_INN` WRITE;
/*!40000 ALTER TABLE `CLIENT_INN` DISABLE KEYS */;
INSERT INTO `CLIENT_INN` VALUES (100200300,'589463240112','2018-07-20 21:00:00'),(100200302,'554567899997','2016-05-16 21:00:00'),(100200306,'345233350097','2017-11-10 21:00:00'),(100200304,'234568923474','2014-09-20 20:00:00');
/*!40000 ALTER TABLE `CLIENT_INN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CONTRACT_CLOSE_DT`
--

DROP TABLE IF EXISTS `CONTRACT_CLOSE_DT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CONTRACT_CLOSE_DT` (
  `CONTRACT_ID` bigint DEFAULT NULL,
  `CONTRACT_CLOSE_DT` date DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONTRACT_CLOSE_DT`
--

LOCK TABLES `CONTRACT_CLOSE_DT` WRITE;
/*!40000 ALTER TABLE `CONTRACT_CLOSE_DT` DISABLE KEYS */;
INSERT INTO `CONTRACT_CLOSE_DT` VALUES (800800100,'2022-03-30','2021-03-29 21:00:00'),(800800101,'2019-04-01','2016-03-29 21:00:00'),(800800103,'2025-09-01','2021-03-29 21:00:00'),(800800104,'2022-01-21','2021-01-19 21:00:00');
/*!40000 ALTER TABLE `CONTRACT_CLOSE_DT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CONTRACT_INSURANCE_AMT`
--

DROP TABLE IF EXISTS `CONTRACT_INSURANCE_AMT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CONTRACT_INSURANCE_AMT` (
  `CONTRACT_ID` bigint DEFAULT NULL,
  `CONTRACT_INSURANCE_AMT` decimal(18,2) DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONTRACT_INSURANCE_AMT`
--

LOCK TABLES `CONTRACT_INSURANCE_AMT` WRITE;
/*!40000 ALTER TABLE `CONTRACT_INSURANCE_AMT` DISABLE KEYS */;
INSERT INTO `CONTRACT_INSURANCE_AMT` VALUES (800800100,5800000.00,'2021-03-29 21:00:00'),(800800101,1050000.00,'2016-03-29 21:00:00'),(800800103,500000.00,'2021-03-29 21:00:00'),(800800104,2000000.00,'2021-08-19 21:00:00');
/*!40000 ALTER TABLE `CONTRACT_INSURANCE_AMT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CONTRACT_INSURANCE_RATE`
--

DROP TABLE IF EXISTS `CONTRACT_INSURANCE_RATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CONTRACT_INSURANCE_RATE` (
  `CONTRACT_ID` bigint DEFAULT NULL,
  `CONTRACT_INSURANCE_RATE` decimal(12,4) DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONTRACT_INSURANCE_RATE`
--

LOCK TABLES `CONTRACT_INSURANCE_RATE` WRITE;
/*!40000 ALTER TABLE `CONTRACT_INSURANCE_RATE` DISABLE KEYS */;
INSERT INTO `CONTRACT_INSURANCE_RATE` VALUES (800800100,6.4500,'2021-03-29 21:00:00'),(800800101,15.0000,'2016-03-29 21:00:00'),(800800103,9.8900,'2021-03-29 21:00:00'),(800800104,13.0000,'2021-08-19 21:00:00');
/*!40000 ALTER TABLE `CONTRACT_INSURANCE_RATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CONTRACT_NUM`
--

DROP TABLE IF EXISTS `CONTRACT_NUM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CONTRACT_NUM` (
  `CONTRACT_ID` bigint DEFAULT NULL,
  `CONTRACT_NUM` char(20) DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONTRACT_NUM`
--

LOCK TABLES `CONTRACT_NUM` WRITE;
/*!40000 ALTER TABLE `CONTRACT_NUM` DISABLE KEYS */;
INSERT INTO `CONTRACT_NUM` VALUES (800800100,'345-5675NM','2021-03-29 21:00:00'),(800800101,'456-4264RT','2016-03-29 21:00:00'),(800800103,'902-4442PL','2021-03-29 21:00:00'),(800800104,'554-7006NM','2021-01-19 21:00:00');
/*!40000 ALTER TABLE `CONTRACT_NUM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CONTRACT_OPEN_DT`
--

DROP TABLE IF EXISTS `CONTRACT_OPEN_DT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CONTRACT_OPEN_DT` (
  `CONTRACT_ID` bigint DEFAULT NULL,
  `CONTRACT_OPEN_DT` date DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONTRACT_OPEN_DT`
--

LOCK TABLES `CONTRACT_OPEN_DT` WRITE;
/*!40000 ALTER TABLE `CONTRACT_OPEN_DT` DISABLE KEYS */;
INSERT INTO `CONTRACT_OPEN_DT` VALUES (800800100,'2021-03-30','2021-03-29 21:00:00'),(800800101,'2016-03-31','2016-03-29 21:00:00'),(800800103,'2021-08-31','2021-03-29 21:00:00'),(800800104,'2021-01-20','2021-01-19 21:00:00');
/*!40000 ALTER TABLE `CONTRACT_OPEN_DT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INSURANCE_PRODUCT`
--

DROP TABLE IF EXISTS `INSURANCE_PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INSURANCE_PRODUCT` (
  `INSURANCE_PRODUCT_ID` bigint DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INSURANCE_PRODUCT`
--

LOCK TABLES `INSURANCE_PRODUCT` WRITE;
/*!40000 ALTER TABLE `INSURANCE_PRODUCT` DISABLE KEYS */;
INSERT INTO `INSURANCE_PRODUCT` VALUES (111123,'1998-12-31 21:00:00'),(111124,'1998-12-31 21:00:00'),(111125,'1998-12-31 21:00:00'),(111126,'1998-12-31 21:00:00');
/*!40000 ALTER TABLE `INSURANCE_PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INSURANCE_PRODUCT_2_GROUP`
--

DROP TABLE IF EXISTS `INSURANCE_PRODUCT_2_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INSURANCE_PRODUCT_2_GROUP` (
  `INSURANCE_PRODUCT_ID` bigint DEFAULT NULL,
  `INSURANCE_PRODUCT_2_GROUP` char(50) DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INSURANCE_PRODUCT_2_GROUP`
--

LOCK TABLES `INSURANCE_PRODUCT_2_GROUP` WRITE;
/*!40000 ALTER TABLE `INSURANCE_PRODUCT_2_GROUP` DISABLE KEYS */;
INSERT INTO `INSURANCE_PRODUCT_2_GROUP` VALUES (111123,'Ипотечное страхование','1998-12-31 21:00:00'),(111124,'Ипотечное страхование','1998-12-31 21:00:00'),(111125,'Автострахование','1998-12-31 21:00:00'),(111126,'Страхование жизни и здоровья','1998-12-31 21:00:00');
/*!40000 ALTER TABLE `INSURANCE_PRODUCT_2_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INSURANCE_PRODUCT_3_GROUP`
--

DROP TABLE IF EXISTS `INSURANCE_PRODUCT_3_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INSURANCE_PRODUCT_3_GROUP` (
  `INSURANCE_PRODUCT_ID` bigint DEFAULT NULL,
  `INSURANCE_PRODUCT_3_GROUP` char(100) DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INSURANCE_PRODUCT_3_GROUP`
--

LOCK TABLES `INSURANCE_PRODUCT_3_GROUP` WRITE;
/*!40000 ALTER TABLE `INSURANCE_PRODUCT_3_GROUP` DISABLE KEYS */;
INSERT INTO `INSURANCE_PRODUCT_3_GROUP` VALUES (111123,'Ипотечное страхование городской недвижимости','1998-12-31 21:00:00'),(111124,'Ипотечное страхование загородной недвижимости','1998-12-31 21:00:00'),(111125,'Страховка \"\"Тёплая трасса\"\"','1998-12-31 21:00:00'),(111126,'Страхование жизни и здоровья','1998-12-31 21:00:00');
/*!40000 ALTER TABLE `INSURANCE_PRODUCT_3_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INSURANCE_PRODUCT_NET_RATE`
--

DROP TABLE IF EXISTS `INSURANCE_PRODUCT_NET_RATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INSURANCE_PRODUCT_NET_RATE` (
  `INSURANCE_PRODUCT_ID` bigint DEFAULT NULL,
  `INSURANCE_PRODUCT_NET_RATE` decimal(12,4) DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INSURANCE_PRODUCT_NET_RATE`
--

LOCK TABLES `INSURANCE_PRODUCT_NET_RATE` WRITE;
/*!40000 ALTER TABLE `INSURANCE_PRODUCT_NET_RATE` DISABLE KEYS */;
INSERT INTO `INSURANCE_PRODUCT_NET_RATE` VALUES (111123,12.0000,'1998-12-31 21:00:00'),(111124,8.0000,'1998-12-31 21:00:00'),(111125,5.0000,'1998-12-31 21:00:00'),(111126,9.5500,'1998-12-31 21:00:00');
/*!40000 ALTER TABLE `INSURANCE_PRODUCT_NET_RATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INSURANCE_PRODUCT_RISK`
--

DROP TABLE IF EXISTS `INSURANCE_PRODUCT_RISK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INSURANCE_PRODUCT_RISK` (
  `INSURANCE_PRODUCT_ID` bigint DEFAULT NULL,
  `INSURANCE_PRODUCT_RISK` decimal(12,4) DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INSURANCE_PRODUCT_RISK`
--

LOCK TABLES `INSURANCE_PRODUCT_RISK` WRITE;
/*!40000 ALTER TABLE `INSURANCE_PRODUCT_RISK` DISABLE KEYS */;
INSERT INTO `INSURANCE_PRODUCT_RISK` VALUES (111123,0.0002,'1998-12-31 21:00:00'),(111124,0.0005,'1998-12-31 21:00:00'),(111125,0.0016,'1998-12-31 21:00:00'),(111125,0.0014,'2010-12-31 21:00:00'),(111125,0.0012,'2016-12-31 21:00:00'),(111126,0.0008,'1998-12-31 21:00:00');
/*!40000 ALTER TABLE `INSURANCE_PRODUCT_RISK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ISUTANCE_CONTRACT`
--

DROP TABLE IF EXISTS `ISUTANCE_CONTRACT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ISUTANCE_CONTRACT` (
  `CONTRACT_ID` bigint DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ISUTANCE_CONTRACT`
--

LOCK TABLES `ISUTANCE_CONTRACT` WRITE;
/*!40000 ALTER TABLE `ISUTANCE_CONTRACT` DISABLE KEYS */;
INSERT INTO `ISUTANCE_CONTRACT` VALUES (800800100,'2021-03-29 21:00:00'),(800800101,'2016-03-29 21:00:00'),(800800103,'2021-03-29 21:00:00'),(800800104,'2021-01-19 21:00:00');
/*!40000 ALTER TABLE `ISUTANCE_CONTRACT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ISUTANCE_CONTRACT_X_CLIENT`
--

DROP TABLE IF EXISTS `ISUTANCE_CONTRACT_X_CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ISUTANCE_CONTRACT_X_CLIENT` (
  `CONTRACT_ID` bigint DEFAULT NULL,
  `CLIENT_ID` bigint DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ISUTANCE_CONTRACT_X_CLIENT`
--

LOCK TABLES `ISUTANCE_CONTRACT_X_CLIENT` WRITE;
/*!40000 ALTER TABLE `ISUTANCE_CONTRACT_X_CLIENT` DISABLE KEYS */;
INSERT INTO `ISUTANCE_CONTRACT_X_CLIENT` VALUES (800800100,100200300,'2021-03-29 21:00:00'),(800800101,100200302,'2016-03-29 21:00:00'),(800800103,100200306,'2021-03-29 21:00:00'),(800800104,100200304,'2021-01-19 21:00:00');
/*!40000 ALTER TABLE `ISUTANCE_CONTRACT_X_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ISUTANCE_CONTRACT_X_PLEDGE`
--

DROP TABLE IF EXISTS `ISUTANCE_CONTRACT_X_PLEDGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ISUTANCE_CONTRACT_X_PLEDGE` (
  `CONTRACT_ID` bigint DEFAULT NULL,
  `PLEDGE_ID` bigint DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ISUTANCE_CONTRACT_X_PLEDGE`
--

LOCK TABLES `ISUTANCE_CONTRACT_X_PLEDGE` WRITE;
/*!40000 ALTER TABLE `ISUTANCE_CONTRACT_X_PLEDGE` DISABLE KEYS */;
INSERT INTO `ISUTANCE_CONTRACT_X_PLEDGE` VALUES (800800100,70070000,'2021-03-29 21:00:00'),(800800101,70070001,'2016-03-29 21:00:00'),(800800103,70070003,'2021-03-29 21:00:00');
/*!40000 ALTER TABLE `ISUTANCE_CONTRACT_X_PLEDGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ISUTANCE_CONTRACT_X_PRODUCT`
--

DROP TABLE IF EXISTS `ISUTANCE_CONTRACT_X_PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ISUTANCE_CONTRACT_X_PRODUCT` (
  `CONTRACT_ID` bigint DEFAULT NULL,
  `INSURANCE_PRODUCT_ID` bigint DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ISUTANCE_CONTRACT_X_PRODUCT`
--

LOCK TABLES `ISUTANCE_CONTRACT_X_PRODUCT` WRITE;
/*!40000 ALTER TABLE `ISUTANCE_CONTRACT_X_PRODUCT` DISABLE KEYS */;
INSERT INTO `ISUTANCE_CONTRACT_X_PRODUCT` VALUES (800800100,111125,'2021-03-29 21:00:00'),(800800101,111123,'2016-03-29 21:00:00'),(800800103,111124,'2021-03-29 21:00:00'),(800800104,111126,'2021-01-19 21:00:00');
/*!40000 ALTER TABLE `ISUTANCE_CONTRACT_X_PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLEDGE`
--

DROP TABLE IF EXISTS `PLEDGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PLEDGE` (
  `PLEDGE_ID` bigint DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLEDGE`
--

LOCK TABLES `PLEDGE` WRITE;
/*!40000 ALTER TABLE `PLEDGE` DISABLE KEYS */;
INSERT INTO `PLEDGE` VALUES (70070000,'2019-03-29 21:00:00'),(70070001,'2016-03-29 21:00:00'),(70070003,'2021-03-29 21:00:00'),(70070004,'2021-01-19 21:00:00');
/*!40000 ALTER TABLE `PLEDGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLEDGE_DISCONT`
--

DROP TABLE IF EXISTS `PLEDGE_DISCONT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PLEDGE_DISCONT` (
  `PLEDGE_ID` bigint DEFAULT NULL,
  `PLEDGE_DISCONT` decimal(12,4) DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLEDGE_DISCONT`
--

LOCK TABLES `PLEDGE_DISCONT` WRITE;
/*!40000 ALTER TABLE `PLEDGE_DISCONT` DISABLE KEYS */;
INSERT INTO `PLEDGE_DISCONT` VALUES (70070000,100.0000,'2019-03-29 21:00:00'),(70070000,90.0000,'2019-10-29 21:00:00'),(70070001,100.0000,'2016-03-29 21:00:00'),(70070003,100.0000,'2021-03-29 21:00:00'),(70070004,85.0000,'2021-01-19 21:00:00'),(70070004,85.0000,'2021-09-20 21:00:00');
/*!40000 ALTER TABLE `PLEDGE_DISCONT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLEDGE_INIT_VALUE_AMT`
--

DROP TABLE IF EXISTS `PLEDGE_INIT_VALUE_AMT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PLEDGE_INIT_VALUE_AMT` (
  `PLEDGE_ID` bigint DEFAULT NULL,
  `PLEDGE_INIT_VALUE_AMT` decimal(18,2) DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLEDGE_INIT_VALUE_AMT`
--

LOCK TABLES `PLEDGE_INIT_VALUE_AMT` WRITE;
/*!40000 ALTER TABLE `PLEDGE_INIT_VALUE_AMT` DISABLE KEYS */;
INSERT INTO `PLEDGE_INIT_VALUE_AMT` VALUES (70070000,5790000.00,'2019-03-29 21:00:00'),(70070001,9076000.00,'2016-03-29 21:00:00'),(70070003,67000.00,'2021-03-29 21:00:00'),(70070004,500000.00,'2021-01-19 21:00:00');
/*!40000 ALTER TABLE `PLEDGE_INIT_VALUE_AMT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLEDGE_TYPE`
--

DROP TABLE IF EXISTS `PLEDGE_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PLEDGE_TYPE` (
  `PLEDGE_ID` bigint DEFAULT NULL,
  `PLEDGE_TYPE` char(20) DEFAULT NULL,
  `EFFECTIVE_FROM_DTTM` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLEDGE_TYPE`
--

LOCK TABLES `PLEDGE_TYPE` WRITE;
/*!40000 ALTER TABLE `PLEDGE_TYPE` DISABLE KEYS */;
INSERT INTO `PLEDGE_TYPE` VALUES (70070000,'Авто','2019-03-29 21:00:00'),(70070001,'Квартира 3 кмнт','2016-03-29 21:00:00'),(70070003,'Ценные бумаги','2021-03-29 21:00:00'),(70070004,'Загородный дом','2021-01-19 21:00:00');
/*!40000 ALTER TABLE `PLEDGE_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_version`
--

DROP TABLE IF EXISTS `mp_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_version` (
  `version` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_version`
--

LOCK TABLES `mp_version` WRITE;
/*!40000 ALTER TABLE `mp_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-07 12:54:40