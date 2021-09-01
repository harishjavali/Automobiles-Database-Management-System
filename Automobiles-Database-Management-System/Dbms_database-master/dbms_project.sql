-- MySQL dump 10.13  Distrib 5.7.29, for Win64 (x86_64)
--
-- Host: localhost    Database: dbms_lab_project
-- ------------------------------------------------------
-- Server version	5.7.29-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `addr_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `address1` varchar(20) DEFAULT NULL,
  `address2` varchar(20) DEFAULT NULL,
  `address3` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  PRIMARY KEY (`addr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (211,111,'HouseNo_54','5thCross','5thStage','Bangalore','Karanataka','India',560064),(212,112,'HouseNo_33','3rdCross','7thStage','Howrah','West_Bengal','India',560432),(213,113,'HouseNo_32','6thCross','9thStage','Lunkaransar','Rajasthan','India',432064),(214,114,'HouseNo_37','7thCross','8thStage','Mysuru','Karanataka','India',453321),(215,115,'HouseNo_23','5thCross','7thStage','Bogibil','Assam','India',321115),(216,116,'HouseNo_44','2ndCross','7thStage','Tezpur','Assam','India',784154),(217,117,'HouseNo_42','5thCross','6thStage','Bangalore','Karanataka','India',560062),(218,118,'HouseNo_43','4thCross','8thStage','Bangalore','Karanataka','India',560062),(219,119,'HouseNo_44','6thCross','9thStage','Vellore','Chennai','India',665421),(220,120,'HouseNo_24','7thCross','7thStage','Bikaner','Rajasthan','India',887776),(221,121,'HouseNo_32','8thCross','7thStage','Guwahati','Assam','India',784156),(222,122,'HouseNo_34','9thCross','4thStage','Biswanath','Assam','India',784176),(223,123,'HouseNo_33','1stCross','5thStage','Guwahati','Assam','India',784156),(224,124,'HouseNo_09','1stCross','7thStage','Biswanath','Assam','India',784176),(225,125,'HouseNo_32','8thCross','5thStage','Kanpur','UP','India',234156),(226,126,'HouseNo_12','9thCross','6thStage','Lucknow','UP','India',423176),(227,127,'HouseNo_12','1stCross','5thStage','Dehli','Dehli','India',500001),(228,128,'HouseNo_22','1stCross','2ndStage','Kanpur','UP','India',234156);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_features`
--

DROP TABLE IF EXISTS `car_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_features` (
  `car_feature_id` int(11) NOT NULL AUTO_INCREMENT,
  `fuel_type` varchar(10) DEFAULT NULL,
  `audio_company` varchar(20) DEFAULT NULL,
  `transmission_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`car_feature_id`)
) ENGINE=InnoDB AUTO_INCREMENT=624 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_features`
--

LOCK TABLES `car_features` WRITE;
/*!40000 ALTER TABLE `car_features` DISABLE KEYS */;
INSERT INTO `car_features` VALUES (611,'Petrol','Standard','Manual'),(612,'Petrol','Harmen','Manual'),(613,'Petrol','Bose','Manual'),(614,'Petrol','Standard','Automatic'),(615,'Petrol','Harmen','Automatic'),(616,'Petrol','Bose','Automatic'),(617,'Diesel','Standard','Manual'),(619,'Diesel','Harmen','Manual'),(620,'Diesel','Bose','Manual'),(621,'Diesel','Standard','Automatic'),(622,'Diesel','Harmen','Automatic'),(623,'Diesel','Bose','Automatic');
/*!40000 ALTER TABLE `car_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_loans`
--

DROP TABLE IF EXISTS `car_loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_loans` (
  `loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_sold_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `monthly_amt` int(11) DEFAULT NULL,
  `finance_company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1123 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_loans`
--

LOCK TABLES `car_loans` WRITE;
/*!40000 ALTER TABLE `car_loans` DISABLE KEYS */;
INSERT INTO `car_loans` VALUES (1101,711,NULL,NULL,NULL,NULL),(1103,713,'2020-06-03','2020-10-03',202500,1008),(1104,714,'2020-02-01','2020-07-01',304800,1008),(1105,715,NULL,NULL,NULL,NULL),(1106,716,'2020-05-20','2020-10-20',319000,1008),(1107,717,NULL,NULL,NULL,NULL),(1108,718,'2020-04-15','2020-07-15',222000,1002),(1109,719,'2020-05-17','2020-08-17',170000,1002),(1120,720,'2020-06-08','2020-10-08',241750,1003),(1121,721,'2020-05-08','2020-09-08',216750,1004),(1122,722,'2020-06-25','2020-09-25',193000,1005);
/*!40000 ALTER TABLE `car_loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_manufactures`
--

DROP TABLE IF EXISTS `car_manufactures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_manufactures` (
  `manufacture_name` varchar(10) NOT NULL,
  `country_of_origin` varchar(15) DEFAULT NULL,
  `manufactue_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`manufacture_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_manufactures`
--

LOCK TABLES `car_manufactures` WRITE;
/*!40000 ALTER TABLE `car_manufactures` DISABLE KEYS */;
INSERT INTO `car_manufactures` VALUES ('Honada','Japan',3),('Hyundai','South Korea',2),('Kia','South Korea',4),('Suzuki','Japan',5),('Toyota','Japan',1);
/*!40000 ALTER TABLE `car_manufactures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_models`
--

DROP TABLE IF EXISTS `car_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car_models` (
  `model_code` int(11) NOT NULL AUTO_INCREMENT,
  `manufactue_code` int(11) DEFAULT NULL,
  `model_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`model_code`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_models`
--

LOCK TABLES `car_models` WRITE;
/*!40000 ALTER TABLE `car_models` DISABLE KEYS */;
INSERT INTO `car_models` VALUES (311,1,'Corolla'),(312,1,'Etios'),(313,2,'Verna'),(314,2,'i20'),(315,2,'Venue'),(316,3,'Civic'),(317,4,'Swift'),(318,4,'Baleno'),(319,5,'Celtos'),(320,1,'Innova'),(321,3,'City'),(322,2,'i10'),(323,4,'Alto'),(324,4,'Sx4'),(325,5,'Carnival');
/*!40000 ALTER TABLE `car_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars_for_sale`
--

DROP TABLE IF EXISTS `cars_for_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars_for_sale` (
  `cars_for_sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacture_name` varchar(20) DEFAULT NULL,
  `model_code` int(11) DEFAULT NULL,
  `vehicle_category_code` varchar(20) DEFAULT NULL,
  `asking_price` int(11) DEFAULT NULL,
  `current_mileage` float DEFAULT NULL,
  `date_aquired` date DEFAULT NULL,
  `registration_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`cars_for_sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=526 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars_for_sale`
--

LOCK TABLES `cars_for_sale` WRITE;
/*!40000 ALTER TABLE `cars_for_sale` DISABLE KEYS */;
INSERT INTO `cars_for_sale` VALUES (511,'Toyota',311,'412',1600000,14.28,'2019-08-09',2019),(512,'Toyota',312,'414',680000,16.78,'2019-09-07',2019),(513,'Hyundai',313,'412',818000,17,'2019-12-25',2020),(514,'Hyundai',314,'411',569000,17,'2019-07-31',2019),(515,'Hyundai',315,'415',670000,17,'2019-08-20',2019),(516,'Honada',316,'412',2050000,16,'2020-02-29',2020),(517,'Suzuki',317,'411',519000,22,'2020-01-09',2020),(518,'Suzuki',318,'411',690000,21,'2020-01-10',2020),(519,'Kia',319,'413',969000,16,'2020-01-10',2020),(520,'Toyota',320,'415',1536000,10,'2019-07-31',2019),(521,'Honada',321,'412',991000,17,'2020-02-29',2020),(522,'Hyundai',322,'411',590000,18,'2019-12-26',2020),(523,'Suzuki',323,'411',295000,24,'2020-01-11',2020),(524,'Suzuki',324,'412',716000,16.51,'2020-01-11',2020),(525,'Kia',325,'413',2495000,13.9,'2020-01-15',2020);
/*!40000 ALTER TABLE `cars_for_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars_sold`
--

DROP TABLE IF EXISTS `cars_sold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars_sold` (
  `car_sold_id` int(11) NOT NULL AUTO_INCREMENT,
  `cars_for_sale_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `agreed_price` int(11) DEFAULT NULL,
  `date_sold` date DEFAULT NULL,
  PRIMARY KEY (`car_sold_id`)
) ENGINE=InnoDB AUTO_INCREMENT=723 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars_sold`
--

LOCK TABLES `cars_sold` WRITE;
/*!40000 ALTER TABLE `cars_sold` DISABLE KEYS */;
INSERT INTO `cars_sold` VALUES (711,513,111,810000,'2020-02-10'),(712,513,112,812000,'2020-01-11'),(713,513,113,816000,'2020-02-21'),(714,520,114,1524000,'2019-11-21'),(715,520,115,1526000,'2019-01-11'),(716,511,116,1595000,'2020-02-10'),(717,514,117,567000,'2020-03-10'),(718,515,118,666000,'2020-01-05'),(719,517,119,510000,'2020-01-06'),(720,519,120,967000,'2020-02-29'),(721,521,121,867000,'2020-02-27'),(722,522,122,578000,'2020-02-15');
/*!40000 ALTER TABLE `cars_sold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_payments`
--

DROP TABLE IF EXISTS `customer_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_payments` (
  `customer_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `cars_sold_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_status_code` int(11) DEFAULT NULL,
  `customer_payment_due` date DEFAULT NULL,
  `customer_payment_made` date DEFAULT NULL,
  `payment_amt` int(11) DEFAULT NULL,
  PRIMARY KEY (`customer_payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=923 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_payments`
--

LOCK TABLES `customer_payments` WRITE;
/*!40000 ALTER TABLE `customer_payments` DISABLE KEYS */;
INSERT INTO `customer_payments` VALUES (911,711,111,811,NULL,NULL,NULL),(912,712,112,812,NULL,NULL,NULL),(913,713,113,813,'2020-03-03','2020-03-03',272000),(914,714,114,814,'2019-12-01','2019-12-01',508000),(915,715,115,815,NULL,NULL,NULL),(916,716,116,816,'2020-02-20','2020-02-20',532000),(917,717,117,817,NULL,NULL,NULL),(918,718,118,818,'2020-01-15','2020-01-15',222000),(919,719,119,819,'2020-01-16','2020-01-17',170000),(920,720,120,820,'2020-03-10','2020-03-18',323000),(921,721,121,821,'2020-03-08','2020-03-08',433500),(922,722,122,822,'2020-02-25','2020-02-26',193000);
/*!40000 ALTER TABLE `customer_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_preferences`
--

DROP TABLE IF EXISTS `customer_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_preferences` (
  `customer_preferences_id` int(11) NOT NULL AUTO_INCREMENT,
  `car_feature_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`customer_preferences_id`)
) ENGINE=InnoDB AUTO_INCREMENT=817 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_preferences`
--

LOCK TABLES `customer_preferences` WRITE;
/*!40000 ALTER TABLE `customer_preferences` DISABLE KEYS */;
INSERT INTO `customer_preferences` VALUES (811,614,123),(812,616,124),(813,616,125),(814,614,126),(815,615,127),(816,616,128);
/*!40000 ALTER TABLE `customer_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile_no` int(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (111,8097756,'partha08@db.in',21),(112,8098890,'janan@db.in',21),(113,8099887,'nitesh13@db.in',22),(114,8097756,'holiram05@db.in',24),(115,8097277,'kritagya09@db.in',29),(116,8097788,'debasish14@db.in',31),(117,8095432,'anirban04@db.in',21),(118,8000098,'fahim21@db.in',35),(119,8079887,'jishu07@db.in',37),(120,8067868,'atonu07@db.in',37),(121,8998980,'jagdish08@db.in',42),(122,9134977,'jintu08@db.in',42),(123,9134676,'saqlein05@db.in',30),(124,9178789,'himanghsu03@db.in',30),(125,8997878,'anwar08@db.in',45),(126,9176777,'abhik08@db.in',25),(127,9138990,'siddharth05@db.in',25),(128,9177677,'sumon03@db.in',23);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features_on_cars_for_sale`
--

DROP TABLE IF EXISTS `features_on_cars_for_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features_on_cars_for_sale` (
  `cars_for_sale_id` int(11) NOT NULL,
  `car_feature_id` int(11) NOT NULL,
  PRIMARY KEY (`cars_for_sale_id`,`car_feature_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features_on_cars_for_sale`
--

LOCK TABLES `features_on_cars_for_sale` WRITE;
/*!40000 ALTER TABLE `features_on_cars_for_sale` DISABLE KEYS */;
INSERT INTO `features_on_cars_for_sale` VALUES (511,612),(512,619),(513,616),(514,611),(515,611),(516,620),(517,617),(518,615),(519,615),(520,617),(521,615),(522,612),(523,612),(524,612),(525,623);
/*!40000 ALTER TABLE `features_on_cars_for_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_companies`
--

DROP TABLE IF EXISTS `finance_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_companies` (
  `finance_company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`finance_company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_companies`
--

LOCK TABLES `finance_companies` WRITE;
/*!40000 ALTER TABLE `finance_companies` DISABLE KEYS */;
INSERT INTO `finance_companies` VALUES (1001,'Bank of Baroda'),(1002,'SBI'),(1003,'HDFC'),(1004,'AXIS'),(1005,'ICICI'),(1006,'YES'),(1007,'PNB'),(1008,'Canara Bank'),(1009,'Central Bank'),(1010,'Kotak Bank');
/*!40000 ALTER TABLE `finance_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_status`
--

DROP TABLE IF EXISTS `payment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_status` (
  `payment_status_code` int(11) NOT NULL AUTO_INCREMENT,
  `status_description` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`payment_status_code`)
) ENGINE=InnoDB AUTO_INCREMENT=823 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_status`
--

LOCK TABLES `payment_status` WRITE;
/*!40000 ALTER TABLE `payment_status` DISABLE KEYS */;
INSERT INTO `payment_status` VALUES (811,'Paid'),(812,'Paid'),(813,'2 installments'),(814,'1 installment'),(815,'Paid'),(816,'2 installments'),(817,'Paid'),(818,'2 installments'),(819,'3 installments'),(820,'2 installments'),(821,'1 installment'),(822,'3 installments');
/*!40000 ALTER TABLE `payment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_categories`
--

DROP TABLE IF EXISTS `vehicle_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_categories` (
  `vehicle_category_code` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`vehicle_category_code`)
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_categories`
--

LOCK TABLES `vehicle_categories` WRITE;
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
INSERT INTO `vehicle_categories` VALUES (411,'Hatchback'),(412,'Sedan'),(413,'MVP'),(414,'Estate'),(415,'SUV');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-08 22:37:46
