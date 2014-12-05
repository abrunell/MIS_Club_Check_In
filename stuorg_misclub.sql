CREATE DATABASE  IF NOT EXISTS `stuorg_misclub` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `stuorg_misclub`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: db01.stuorg.iastate.edu    Database: stuorg_misclub
-- ------------------------------------------------------
-- Server version	5.5.37-log

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(15) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('David','sudo!'),('Exec','isumisclub');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `idRegister` int(11) NOT NULL AUTO_INCREMENT,
  `EventId` varchar(45) DEFAULT NULL,
  `MemberId` varchar(45) DEFAULT NULL,
  `EventName` varchar(45) DEFAULT NULL,
  `MemberName` varchar(25) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`idRegister`)
) ENGINE=InnoDB AUTO_INCREMENT=1454 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (1211,'25','827401575','Principal','David','2014-09-03'),(1212,'25','760427668','Principal','Johnathon','2014-09-03'),(1213,'25','158414256','Principal','Zachary','2014-09-03'),(1214,'25','247250003','Principal','Jonathon','2014-09-03'),(1215,'25','520391872','Principal','Samuel','2014-09-03'),(1216,'25','656924268','Principal','Kaitlin','2014-09-03'),(1217,'25','14532518','Principal','Emma','2014-09-03'),(1218,'25','510022526','Principal','Kelsi','2014-09-03'),(1219,'25','298988690','Principal','Mirza','2014-09-03'),(1220,'25','298835537','Principal','Mirza','2014-09-03'),(1221,'25','362127766','Principal','Tyler','2014-09-03'),(1222,'25','718722004','Principal','Jacob','2014-09-03'),(1223,'25','613427815','Principal','Kimberly','2014-09-03'),(1224,'25','752289538','Principal','Max','2014-09-03'),(1225,'25','701612912','Principal','Sam','2014-09-03'),(1226,'25','377858481','Principal','Miranda','2014-09-03'),(1227,'25','135039905','Principal','Andrew','2014-09-03'),(1228,'25','989623635','Principal','Nick','2014-09-03'),(1230,'25','220252032','Principal','Matthew','2014-09-03'),(1231,'25','165039875','Principal','Seth','2014-09-03'),(1232,'25','342855513','Principal','Kathleen','2014-09-03'),(1233,'25','792763972','Principal','Michael','2014-09-03'),(1234,'25','859627769','Principal','Mcdaniel','2014-09-03'),(1235,'25','155838683','Principal','Peter','2014-09-03'),(1236,'25','984684701','Principal','Joseph','2014-09-03'),(1237,'25','688634975','Principal','Thien','2014-09-03'),(1238,'25','835253419','Principal','Omar','2014-09-03'),(1239,'25','576812236','Principal','Joseph','2014-09-03'),(1240,'25','449295847','Principal','Sean','2014-09-03'),(1242,'25','181645464','Principal','David','2014-09-03'),(1243,'25','339382043','Principal','Nicholas','2014-09-03'),(1244,'25','885818934','Principal','Anthony','2014-09-03'),(1245,'25','432426995','Principal','Nickolaus','2014-09-03'),(1246,'25','985674690','Principal','Joshua','2014-09-03'),(1247,'25','835587753','Principal','Ahmed','2014-09-03'),(1248,'25','213130958','Principal','Nemisha','2014-09-03'),(1249,'25','864092229','Principal','Blake','2014-09-03'),(1250,'25','115964849','Principal','Tyler','2014-09-03'),(1251,'25','707643937','Principal','Tyler','2014-09-03'),(1252,'25','162417255','Principal','Lance','2014-09-03'),(1253,'25','749061313','Principal','Quan','2014-09-03'),(1254,'25','188794606','Principal','Thao','2014-09-03'),(1255,'25','294811517','Principal','Trevor','2014-09-03'),(1256,'25','184048865','Principal','Ruonan','2014-09-03'),(1257,'25','74772698','Principal','Jie','2014-09-03'),(1258,'25','894687794','Principal','Rebecca','2014-09-03'),(1259,'25','785065281','Principal','Nicholas','2014-09-03'),(1260,'25','287122836','Principal','Austin','2014-09-03'),(1261,'25','119077959','Principal','Lauren','2014-09-03'),(1262,'25','650205556','Principal','Mikalen','2014-09-03'),(1263,'25','216849633','Principal','Jason','2014-09-03'),(1264,'25','292083792','Principal','Andrew','2014-09-03'),(1265,'25','542074533','Principal','Raymond','2014-09-03'),(1266,'25','811127317','Principal','Zachary','2014-09-03'),(1267,'25','626502877','Principal','Shuyang','2014-09-03'),(1268,'25','248456208','Principal','Hai','2014-09-03'),(1269,'25','587364778','Principal','Zachary','2014-09-03'),(1270,'25','843768926','Principal','Timothy','2014-09-03'),(1271,'25','764132369','Principal','Ryan','2014-09-03'),(1272,'25','710169460','Principal','Kim','2014-09-03'),(1273,'25','770835097','Principal','Apoorva','2014-09-03'),(1274,'25','554856302','Principal','John','2014-09-03'),(1275,'25','710552870','Principal','Michael','2014-09-03'),(1276,'25','903395493','Principal','Keshava','2014-09-03'),(1277,'25','408824416','Principal','Beier','2014-09-03'),(1278,'25','888540653','Principal','Nathan','2014-09-03'),(1279,'25','752168417','Principal','Ashwin','2014-09-03'),(1280,'25','326451125','Principal','Akhilesh','2014-09-03'),(1281,'25','623038416','Principal','Jyoti','2014-09-03'),(1282,'25','490346873','Principal','Nisha','2014-09-03'),(1292,'26','408824416','Ernst and Young','Beier','2014-09-10'),(1296,'26','859627769','Ernst and Young','Mcdaniel','2014-09-10'),(1297,'26','764132369','Ernst and Young','Ryan','2014-09-10'),(1298,'26','273153881','Ernst and Young','Tyler','2014-09-10'),(1299,'26','247250003','Ernst and Young','Jonathon','2014-09-10'),(1301,'26','520391872','Ernst and Young','Samuel','2014-09-10'),(1302,'26','710169460','Ernst and Young','Kim','2014-09-10'),(1303,'26','707643937','Ernst and Young','Tyler','2014-09-10'),(1304,'26','162417255','Ernst and Young','Lance','2014-09-10'),(1305,'26','907320438','Ernst and Young','Nirav','2014-09-10'),(1306,'26','749308560','Ernst and Young','Jace','2014-09-10'),(1307,'26','298988690','Ernst and Young','Mirza','2014-09-10'),(1308,'26','718722004','Ernst and Young','Jacob','2014-09-10'),(1309,'26','748032285','Ernst and Young','Austin','2014-09-10'),(1310,'26','576812236','Ernst and Young','Joseph','2014-09-10'),(1311,'26','554856302','Ernst and Young','John','2014-09-10'),(1312,'26','432426995','Ernst and Young','Nickolaus','2014-09-10'),(1313,'26','865510646','Ernst and Young','Meridith','2014-09-10'),(1314,'26','934104171','Ernst and Young','David','2014-09-10'),(1315,'26','901390514','Ernst and Young','Wyatt','2014-09-10'),(1316,'26','294811517','Ernst and Young','Trevor','2014-09-10'),(1317,'26','510022526','Ernst and Young','Kelsi','2014-09-10'),(1318,'26','662933271','Ernst and Young','Daniel','2014-09-10'),(1319,'26','542074533','Ernst and Young','Raymond','2014-09-10'),(1320,'26','115964849','Ernst and Young','Tyler','2014-09-10'),(1321,'26','538018481','Ernst and Young','Cole','2014-09-10'),(1322,'26','805889084','Ernst and Young','Zach','2014-09-10'),(1323,'26','135039905','Ernst and Young','Andrew','2014-09-10'),(1324,'26','989623635','Ernst and Young','Nick','2014-09-10'),(1325,'26','961705745','Ernst and Young','Richard','2014-09-10'),(1326,'26','785065281','Ernst and Young','Nicholas','2014-09-10'),(1327,'26','903395493','Ernst and Young','Keshava','2014-09-10'),(1328,'26','729119422','Ernst and Young','Sri','2014-09-10'),(1329,'26','793961168','Ernst and Young','Mohit','2014-09-10'),(1367,'26','323157835','Ernst and Young','Deli','2014-09-10'),(1368,'26','184048865','Ernst and Young','Ruonan','2014-09-10'),(1370,'26','74772698','Ernst and Young','Jie','2014-09-10'),(1371,'26','220252032','Ernst and Young','Matthew','2014-09-10'),(1372,'26','613427815','Ernst and Young','Kimberly','2014-09-10'),(1373,'26','119077959','Ernst and Young','Lauren','2014-09-10'),(1374,'26','377858481','Ernst and Young','Miranda','2014-09-10'),(1375,'26','984684701','Ernst and Young','Joseph','2014-09-10'),(1376,'26','688634975','Ernst and Young','Thien','2014-09-10'),(1377,'26','952819868','Ernst and Young','Rachel','2014-09-10'),(1378,'26','701612912','Ernst and Young','Sam','2014-09-10'),(1380,'26','623038416','Ernst and Young','Jyoti','2014-09-10'),(1381,'26','229779582','Ernst and Young','Thomas','2014-09-10'),(1382,'26','224136913','Ernst and Young','Daniel','2014-09-10'),(1383,'26','569114546','Ernst and Young','Brian','2014-09-10'),(1384,'26','587364778','Ernst and Young','Zachary','2014-09-10'),(1385,'26','985674690','Ernst and Young','Joshua','2014-09-10'),(1386,'26','361240880','Ernst and Young','Han','2014-09-10'),(1387,'26','46371325','Ernst and Young','Marshall','2014-09-10'),(1388,'26','292700427','Ernst and Young','Abishek','2014-09-10'),(1389,'26','287122836','Ernst and Young','Austin','2014-09-10'),(1390,'26','165039875','Ernst and Young','Seth','2014-09-10'),(1391,'26','237896659','Ernst and Young','Reinaldy','2014-09-10'),(1397,'26','827401575','Ernst and Young','David','2014-09-17'),(1398,'27','997182186','John Deere','Michael','2014-09-17'),(1399,'27','997182186','John Deere','Michael','2014-09-17'),(1400,'27','726688963','John Deere','Vince','2014-09-17'),(1401,'27','710169460','John Deere','Kim','2014-09-17'),(1402,'27','362127766','John Deere','Tyler','2014-09-17'),(1403,'27','68986963','John Deere','Dinesh','2014-09-17'),(1404,'27','907320438','John Deere','Nirav','2014-09-17'),(1405,'27','224136913','John Deere','Daniel','2014-09-17'),(1406,'27','749061313','John Deere','Quan','2014-09-17'),(1407,'27','224136913','John Deere','Daniel','2014-09-17'),(1408,'27','749061313','John Deere','Quan','2014-09-17'),(1409,'27','74772698','John Deere','Jie','2014-09-17'),(1410,'27','707643937','John Deere','Tyler','2014-09-17'),(1411,'27','952819868','John Deere','Rachel','2014-09-17'),(1412,'27','974639666','John Deere','Phan','2014-09-17'),(1413,'27','172582410','John Deere','Clark','2014-09-17'),(1414,'27','685056372','John Deere','Adam','2014-09-17'),(1415,'27','220252032','John Deere','Matthew','2014-09-17'),(1416,'27','679864185','John Deere','Mason','2014-09-17'),(1417,'27','901390514','John Deere','Wyatt','2014-09-17'),(1418,'27','865510646','John Deere','Meridith','2014-09-17'),(1419,'27','701612912','John Deere','Sam','2014-09-17'),(1420,'27','623038416','John Deere','Jyoti','2014-09-17'),(1421,'27','785065281','John Deere','Nicholas','2014-09-17'),(1422,'27','752168417','John Deere','Ashwin','2014-09-17'),(1423,'27','326451125','John Deere','Akhilesh','2014-09-17'),(1424,'27','339382043','John Deere','Nicholas','2014-09-17'),(1425,'27','362127766','John Deere','Tyler','2014-09-17'),(1426,'27','362127766','John Deere','Tyler','2014-09-17'),(1427,'27','94453359','John Deere','Miranda','2014-09-17'),(1428,'27','729119422','John Deere','Sri','2014-09-17'),(1429,'27','787520794','John Deere','Kelly','2014-09-17'),(1430,'27','273153881','John Deere','Tyler','2014-09-17'),(1431,'27','613427815','John Deere','Kimberly','2014-09-17'),(1432,'27','718722004','John Deere','Jacob','2014-09-17'),(1433,'27','252696444','John Deere','Austin','2014-09-17'),(1434,'27','764132369','John Deere','Ryan','2014-09-17'),(1435,'27','859627769','John Deere','Mcdaniel','2014-09-17'),(1436,'27','411702291','John Deere','Derek','2014-09-17'),(1437,'27','432426995','John Deere','Nickolaus','2014-09-17'),(1438,'27','298988690','John Deere','Mirza','2014-09-17'),(1439,'27','710552870','John Deere','Michael','2014-09-17'),(1440,'27','542074533','John Deere','Raymond','2014-09-17'),(1441,'27','576812236','John Deere','Joseph','2014-09-17'),(1442,'27','538018481','John Deere','Cole','2014-09-17'),(1443,'27','805889084','John Deere','Zach','2014-09-17'),(1444,'27','985674690','John Deere','Joshua','2014-09-17'),(1445,'27','264625361','John Deere','Evan','2014-09-17'),(1446,'27','835253419','John Deere','Omar','2014-09-17'),(1447,'27','748032285','John Deere','Austin','2014-09-17'),(1448,'27','749061313','John Deere','Quan','2014-09-17'),(1449,'27','707643937','John Deere','Tyler','2014-09-17'),(1450,'27','901390514','John Deere','Wyatt','2014-09-17'),(1451,'27','865510646','John Deere','Meridith','2014-09-17'),(1452,'27','246153908','John Deere','Jewel','2014-09-18'),(1453,'27','903395493','John Deere','Keshava','2014-09-18');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `DuesPaid` varchar(3) DEFAULT NULL,
  `paidDate` date DEFAULT NULL,
  `Amount` int(11) unsigned zerofill DEFAULT NULL,
  `Major` varchar(45) DEFAULT NULL,
  `Classification` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Members of the club';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (14532518,'Emma','Rinehart','rinehe@iastate.edu','0','0000-00-00',00000000000,'Elementary Education','Senior'),(46371325,'Marshall','Bricker','mbricker@iastate.edu','1','2014-09-17',00000000015,'Management Information Systems','Senior'),(68986963,'Dinesh','Poddaturi','dinesh@iastate.edu','1','2014-09-17',00000000020,'Supply Chain and Information Systems','Graduate'),(74772698,'Jie','Chang','janessac@iastate.edu','1','2014-09-17',00000000020,'Management Information Systems','Junior'),(94453359,'Miranda','Fisher','mfisher@iastate.edu','1','2014-09-17',00000000020,'Management Information Systems','Junior'),(115964849,'Tyler','Schaul','tschaul@iastate.edu','0','0000-00-00',00000000000,'Management','Junior'),(119077959,'Lauren','Fasching','lmf@iastate.edu','1','2014-09-17',00000000020,'Marketing','Junior'),(135039905,'Andrew','Larsen','larsen@iastate.edu','0','0000-00-00',00000000000,'Pre-Business','Junior'),(155838683,'Peter','Gensler','pgensler@iastate.edu','0','0000-00-00',00000000000,'Supply Chain Management','Senior'),(158414256,'Zachary','Lutz','ztlutz@iastate.edu','0','0000-00-00',00000000000,'Management Information Systems','Senior'),(162417255,'Lance','Durand','ladurand@iastate.edu','0','0000-00-00',00000000000,'Marketing','Sophomore'),(165039875,'Seth','Johnson','sjjohn@iastate.edu','1','0000-00-00',00000000020,'Management Information Systems','Senior'),(172582410,'Clark','Yentzer','yentzer@iastate.edu','1','2014-09-17',00000000020,'Management Information Systems','Sophomore'),(181645464,'David','Leo','daveleo@iastate.edu','0','0000-00-00',00000000000,'Open Option (LAS)','Freshman'),(184048865,'Ruonan','Sun','ruonan@iastate.edu','1','2014-09-17',00000000020,'Finance','Junior'),(188794606,'Thao','Pham','ttppham2@iastate.edu','0','0000-00-00',00000000000,'Management Information Systems','Senior'),(213130958,'Nemisha','Khosa','nkhosa@iastate.edu','0','0000-00-00',00000000000,'Supply Chain and Information Systems','Graduate'),(216849633,'Jason','Stewart','stewartj@iastate.edu','0','0000-00-00',00000000000,'Management Information Systems','Sophomore'),(220252032,'Matthew','Squires','msquires@iastate.edu','1','0000-00-00',00000000020,'Pre-Business','Sophomore'),(224136913,'Daniel','Bodtke','djbodtke@iastate.edu','1','2014-09-17',00000000020,'Management Information Systems','Senior'),(229779582,'Thomas','Brix','tcbrix@iastate.edu','0','2014-09-17',00000000000,'Management Information Systems','Senior'),(237896659,'Reinaldy','Lamdjani','lamdjani@iastate.edu','0','2014-09-17',00000000000,'Pre-Business','Junior'),(246153908,'Jewel','Nuehring','nuehring@iastate.edu','1','2014-09-18',00000000020,'Management Information Systems','Senior'),(247250003,'Jonathon','Laudner','jlaudner@iastate.edu','0','0000-00-00',00000000000,'Management Information Systems','Senior'),(248456208,'Hai','Yu','yuhair@iastate.edu','0','0000-00-00',00000000000,'Computer Science','Graduate'),(252696444,'Austin','Watts','awatts@iastate.edu','1','2014-09-17',00000000020,'Management Information Systems','Senior'),(264625361,'Evan','Schluetter','evans1@iastate.edu','0','2014-09-17',00000000000,'Pre-Business','Sophomore'),(273153881,'Tyler','Devos','tdevos@iastate.edu','1','2014-09-17',00000000020,'Pre-Business','Freshman'),(287122836,'Austin','Dillinger','dilaus11@iastate.edu','1','2014-09-17',00000000020,'Management Information Systems','Junior'),(292083792,'Andrew','Muhs','ajmuhs@iastate.edu','0','0000-00-00',00000000000,'Pre-Business','Junior'),(292700427,'Abishek','Mannemala','abireddy@iastate.edu','0','2014-09-17',00000000000,'Supply Chain and Information Systems','Graduate'),(294811517,'Trevor','Chalstrom','trevorc@iastate.edu','0','0000-00-00',00000000000,'Management Information Systems','Senior'),(298835537,'Mirza','Alibasic','mirzaa@iastate.edu','0','0000-00-00',00000000000,'Pre-Business','Freshman'),(298988690,'Mirza','Alibasic','mirzaa@iastate.edu','1','2014-09-17',00000000020,'Pre-Business','Freshman'),(323157835,'Deli','Zhang','deliz@iastate.edu','1','2014-09-17',00000000020,'Management Information Systems','Junior'),(326451125,'Akhilesh','Mishra','akhilesh@iastate.edu','1','0000-00-00',00000000020,'Supply Chain and Information Systems','Graduate'),(339382043,'Nicholas','Kringle','nkringle@iastate.edu','1','0000-00-00',00000000020,'Management Information Systems','Sophomore'),(342855513,'Kathleen','Adams','kmadams1@iastate.edu','1','0000-00-00',00000000015,'Accounting','Senior'),(361240880,'Han','Oon','hanxian@iastate.edu','1','2014-09-17',00000000015,'Management Information Systems','Senior'),(362127766,'Tyler','Holmes','tgholmes@iastate.edu','1','2014-09-17',00000000020,'Management Information Systems','Senior'),(377858481,'Miranda','Mason','masonm@iastate.edu','1','2014-09-17',00000000020,'Finance','Junior'),(408824416,'Beier','Zhang','beierz@iastate.edu','1','2014-09-17',00000000020,'Management Information Systems','Junior'),(411702291,'Derek','Camp','dacamp@iastate.edu','0','2014-09-17',00000000000,'Supply Chain Management','Junior'),(432426995,'Nickolaus','Wilz','nwilz@iastate.edu','1','0000-00-00',00000000015,'Management Information Systems','Senior'),(449295847,'Sean','Hickey','sehickey@iastate.edu','0','0000-00-00',00000000000,'Architecture-Professional Degree','Senior'),(490346873,'Nisha','Kothari','nkothari@iastate.edu','0','0000-00-00',00000000000,'Supply Chain and Information Systems','Graduate'),(510022526,'Kelsi','Cejka','kcejka@iastate.edu','0','0000-00-00',00000000000,'Pre-Business','Sophomore'),(520391872,'Samuel','Haakenstad','samhaak@iastate.edu','0','0000-00-00',00000000000,'Management Information Systems','Senior'),(538018481,'Cole','Schlitzer','cschlitz@iastate.edu','1','2014-09-10',00000000020,'Supply Chain Management','Junior'),(542074533,'Raymond','Wolt','rwolt@iastate.edu','1','0000-00-00',00000000020,'Management Information Systems','Sophomore'),(554856302,'John','Reynolds','johnrey@iastate.edu','0','0000-00-00',00000000000,'Pre-Business','Junior'),(569114546,'Brian','Bengtson','bbengt@iastate.edu','1','2014-09-17',00000000020,'Management Information Systems','Junior'),(576812236,'Joseph','Bitz','jrbitz@iastate.edu','1','0000-00-00',00000000020,'Management Information Systems','Junior'),(587364778,'Zachary','Hanson','zrhanson@iastate.edu','1','2014-09-17',00000000020,'Supply Chain Management','Junior'),(613427815,'Kimberly','Martinez','kmart711@iastate.edu','0','0000-00-00',00000000000,'Management Information Systems','Junior'),(623038416,'Jyoti','Woli','jwoli@iastate.edu','1','2014-09-17',00000000020,'Management Information Systems','Junior'),(626502877,'Shuyang','Zheng','szheng@iastate.edu','0','0000-00-00',00000000000,'Supply Chain Management','Senior'),(650205556,'Mikalen','Prince','mprince@iastate.edu','0','0000-00-00',00000000000,'Marketing','Junior'),(656924268,'Kaitlin','Borchert','kaitlinb@iastate.edu','0','0000-00-00',00000000000,'Accounting','Sophomore'),(662933271,'Daniel','Rodriguez','dhr@iastate.edu','1','2014-09-10',00000000020,'Management Information Systems','Junior'),(679864185,'Mason','Muntz',' muntzm@iastate.edu','1','2014-09-17',00000000020,'Management Information Systems','Sophomore'),(685056372,'Adam','Westphal','westphal@iastate.edu','1','2014-09-17',00000000015,'Pre-Business','Junior'),(688634975,'Thien','Nguyen','tpnguyen@iastate.edu','1','2014-09-17',00000000020,'Pre-Business','Junior'),(701612912,'Sam','Miller','sqmiller@iastate.edu','1','2014-09-17',00000000020,'Management Information Systems','Junior'),(707643937,'Tyler','Graves','tlgraves@iastate.edu','1','2014-09-17',00000000020,'Marketing','Junior'),(710169460,'Kim','Larson','kdlars@iastate.edu','1','0000-00-00',00000000020,'MIS','Junior'),(710552870,'Michael','Furlan','mcfurlan@iastate.edu','0','2014-09-17',00000000000,'Pre-Business','Sophomore'),(718722004,'Jacob','Sawyer','jisawyer@iastate.edu','1','0000-00-00',00000000020,'Management Information Systems','Senior'),(726688963,'Vince','','vhartgoh@iastate.edu','0','2014-09-17',00000000000,'',''),(729119422,'Sri','Mallipudi','msri@iastate.edu','1','2014-09-10',00000000020,'Supply Chain and Information Systems','Graduate'),(748032285,'Austin','Wheatley','austinw@iastate.edu','1','2014-09-10',00000000015,'Marketing','Senior'),(749061313,'Quan','Truong','qhtruong@iastate.edu','1','2014-09-17',00000000020,'Management Information Systems','Senior'),(749308560,'Jace','Vaninger','vaninger@iastate.edu','1','2014-09-10',00000000015,'Pre-Business','Junior'),(752168417,'Ashwin','Kher','kherash@iastate.edu','1','0000-00-00',00000000020,'Supply Chain and Information Systems','Graduate'),(752289538,'Max','Edfors','medfors@iastate.edu','0','0000-00-00',00000000000,'Pre-Business','Junior'),(760427668,'Johnathon','Rolf','jmrolf@iastate.edu','0','0000-00-00',00000000000,'Management Information Systems','Senior'),(764132369,'Ryan','Lohse','rslohse@iastate.edu','1','0000-00-00',00000000020,'Management Information Systems','Senior'),(770835097,'Apoorva','Acharya','apoorva@iastate.edu','0','0000-00-00',00000000000,'Supply Chain and Information Systems','Graduate'),(785065281,'Nicholas','Nelson','ngnelson@iastate.edu','1','0000-00-00',00000000020,'Management Information Systems','Senior'),(787520794,'Kelly','De Souza','kdesouza@iastate.edu','1','2014-09-17',00000000015,'Management Information Systems','Junior'),(792763972,'Michael','Shepard','mshepard@iastate.edu','0','0000-00-00',00000000000,'Management Information Systems','Senior'),(793961168,'Mohit','Sharma','sharmam@iastate.edu','1','2014-09-10',00000000020,'Business Administration','Graduate'),(805889084,'Zach','Oberbroeckling','zjo@iastate.edu','1','2014-09-10',00000000020,'Finance','Sophomore'),(811127317,'Zachary','Nelson','zrnelson@iastate.edu','1','0000-00-00',00000000020,'Management Information Systems','Senior'),(827401575,'David','Irvine','dirvine@iastate.edu','0','2014-09-17',00000000000,'Management Information Systems','Senior'),(835253419,'Omar','Farris','ofarris@iastate.edu','1','0000-00-00',00000000020,'Finance','Sophomore'),(835587753,'Ahmed','Alhammadi','hammadi@iastate.edu','0','0000-00-00',00000000000,'Management Information Systems','Junior'),(843768926,'Timothy','Van Dyke','tvandyke@iastate.edu','1','0000-00-00',00000000020,'Management Information Systems','Senior'),(859627769,'Mcdaniel','Foley','mdfoley@iastate.edu','1','0000-00-00',00000000020,'Pre-Business','Sophomore'),(864092229,'Blake','Young','byoung@iastate.edu','0','0000-00-00',00000000000,'Management Information Systems','Junior'),(865510646,'Meridith','Junk','mjunk@iastate.edu','1','2014-09-17',00000000020,'Pre-Business','Sophomore'),(885818934,'Anthony','Sax','arsax@iastate.edu','0','0000-00-00',00000000000,'Finance','Junior'),(888540653,'Nathan','Nolan','nnolan@iastate.edu','1','0000-00-00',00000000020,'Management Information Systems','Junior'),(894687794,'Rebecca','Schmid','raschmid@iastate.edu','1','0000-00-00',00000000020,'Management Information Systems','Senior'),(901390514,'Wyatt','Meyer','wmeyer@iastate.edu','1','2014-09-17',00000000020,'Pre-Business','Freshman'),(903395493,'Keshava','Dugnoor','keshav@iastate.edu','1','2014-09-18',00000000020,'Business Administration','Graduate'),(907320438,'Nirav','Kamdar','nkamdar@iastate.edu','1','2014-09-17',00000000020,'Supply Chain and Information Systems','Graduate'),(934104171,'David','Fan','dfan@iastate.edu','0','2014-09-10',00000000000,'Management Information Systems','Junior'),(952819868,'Rachel','Reinke','rmreinke@iastate.edu','1','2014-09-17',00000000020,'Pre-Business','Freshman'),(961705745,'Richard','Wang','rwang18@iastate.edu','0','2014-09-10',00000000000,'Pre-Business','Sophomore'),(974639666,'Phan','Trinh','ptrinh@iastate.edu','0','2014-09-17',00000000000,'Management Information Systems','Sophomore'),(984684701,'Joseph','Hage','jmhage@iastate.edu','1','0000-00-00',00000000020,'Pre-Business','Sophomore'),(985674690,'Joshua','Daudt','jdaudt@iastate.edu','1','2014-09-17',00000000020,'Pre-Business','Junior'),(989623635,'Nick','Harrington','nickh@iastate.edu','1','0000-00-00',00000000020,'Management Information Systems','Junior'),(997182186,'Michael','Heger','mheger61@iastate.edu','1','2014-09-17',00000000020,'Management Information Systems','Senior');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `idEvents` int(11) NOT NULL AUTO_INCREMENT,
  `EventName` varchar(45) DEFAULT NULL,
  `EventDate` datetime DEFAULT NULL,
  `Venue` varchar(45) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idEvents`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (25,'Principal','2014-09-03 00:00:00','Bergstrom Commons','Employer Presentation'),(26,'Ernst and Young','2014-09-10 00:00:00','2118 Gerdin','Employer Presentation'),(27,'John Deere','2014-09-17 00:00:00','Bergstrom Commons','Employer Presentation');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-18 19:46:35