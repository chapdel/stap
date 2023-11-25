-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: school_stat_db2
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

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
-- Table structure for table `t_account`
--

DROP TABLE IF EXISTS `t_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_account` (
  `id` varchar(255) NOT NULL,
  `status` smallint DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `disable` bit(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_otp` varchar(255) DEFAULT NULL,
  `is_email_validated` bit(1) NOT NULL,
  `is_phone_validated` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone_otp` varchar(255) DEFAULT NULL,
  `pseudo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3rtvu0jks0sopn5ub30o86h2p` (`email`),
  UNIQUE KEY `UK_6sg9vm37ne63aeinbgvsbtq23` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_account`
--

LOCK TABLES `t_account` WRITE;
/*!40000 ALTER TABLE `t_account` DISABLE KEYS */;
INSERT INTO `t_account` VALUES ('24da6351889e215f01889e28614d0000',4,NULL,_binary '\0','admin@gmail.com','784005',_binary '',_binary '\0','$2a$10$vzRCjZpBYww6fjszXBBRM.TWO5qPcYM/RNsMhNwQZ07fphlrKhUxi','77777777','180413','admin');
/*!40000 ALTER TABLE `t_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_exam_center`
--

DROP TABLE IF EXISTS `t_exam_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_exam_center` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `label` varchar(51) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_g1skvein5v5tuh2cwnk94e8u4` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_exam_center`
--

LOCK TABLES `t_exam_center` WRITE;
/*!40000 ALTER TABLE `t_exam_center` DISABLE KEYS */;
INSERT INTO `t_exam_center` VALUES (4,'Yaoundé 1');
/*!40000 ALTER TABLE `t_exam_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_exam_classroom`
--

DROP TABLE IF EXISTS `t_exam_classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_exam_classroom` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `label` varchar(51) NOT NULL,
  `exam_sub_center_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd45pym1kulpvh5g88vdnidqe7` (`exam_sub_center_id`),
  CONSTRAINT `FKd45pym1kulpvh5g88vdnidqe7` FOREIGN KEY (`exam_sub_center_id`) REFERENCES `t_exam_sub_center` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_exam_classroom`
--

LOCK TABLES `t_exam_classroom` WRITE;
/*!40000 ALTER TABLE `t_exam_classroom` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_exam_classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_exam_sub_center`
--

DROP TABLE IF EXISTS `t_exam_sub_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_exam_sub_center` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `label` varchar(127) NOT NULL,
  `exam_center_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_q90w2s78emjeno3mt026udvo1` (`label`),
  KEY `FKg9m0xu59gjy57demle2p9hvxt` (`exam_center_id`),
  CONSTRAINT `FKg9m0xu59gjy57demle2p9hvxt` FOREIGN KEY (`exam_center_id`) REFERENCES `t_exam_center` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_exam_sub_center`
--

LOCK TABLES `t_exam_sub_center` WRITE;
/*!40000 ALTER TABLE `t_exam_sub_center` DISABLE KEYS */;
INSERT INTO `t_exam_sub_center` VALUES (1,'BASTOS',4),(2,'BILICK CITY SPECIAL',4),(3,'COCCINELLES',4),(4,'DEO GRATIAS',4),(5,'DJOUNGOLO',4),(6,'EMANA EP',4),(7,'ETOUDI EC',4),(8,'ETOUDI JAPONAIS',4),(9,'ESPERANCE',4),(10,'GOCKERVILLE',4),(11,'LES MERVEILLES D’OKOLO',4),(12,'MBALLA 2',4),(13,'MBALLA 4',4),(14,'NKOLONDOM',4),(15,'NLONGKAK ADV',4),(16,'NLONGKAK SIC',4),(17,'OLEMBE CAT',4),(18,'OLEMBE EP',4),(19,'PI AND JU',4),(20,'RETRAITE',4),(21,'SANTA BARBARA',4),(23,'LA GRACE',4);
/*!40000 ALTER TABLE `t_exam_sub_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_matiere`
--

DROP TABLE IF EXISTS `t_matiere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_matiere` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `coefficient` int NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_matiere`
--

LOCK TABLES `t_matiere` WRITE;
/*!40000 ALTER TABLE `t_matiere` DISABLE KEYS */;
INSERT INTO `t_matiere` VALUES (1,0,'Dictée questions'),(2,0,'Production d\'Ecrits'),(3,0,'Ecriture '),(4,0,'Calcul rapide '),(5,0,'Problème '),(6,0,'Connaissance générale '),(7,0,'Sciences '),(8,0,'EPS'),(9,0,'TIC'),(10,0,'Gram. And Vocab '),(11,0,'Reading Comp'),(12,0,'Dictation'),(13,0,'Reading'),(14,0,'Lecture '),(15,0,'Chant '),(16,0,'Récit');
/*!40000 ALTER TABLE `t_matiere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_note`
--

DROP TABLE IF EXISTS `t_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_note` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appreciation` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `note` float NOT NULL,
  `matiere_id` bigint DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9twhnjfc6dw0f2ppi1149ojyv` (`matiere_id`),
  KEY `FKp5skcg1jbqv0c281iicgmny91` (`student_id`),
  CONSTRAINT `FK9twhnjfc6dw0f2ppi1149ojyv` FOREIGN KEY (`matiere_id`) REFERENCES `t_matiere` (`id`),
  CONSTRAINT `FKp5skcg1jbqv0c281iicgmny91` FOREIGN KEY (`student_id`) REFERENCES `t_student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_note`
--

LOCK TABLES `t_note` WRITE;
/*!40000 ALTER TABLE `t_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_role` (
  `id` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_bkpm7njy2ort1yoiddc7jg8gj` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_school`
--

DROP TABLE IF EXISTS `t_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_school` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `label` varchar(127) NOT NULL,
  `teaching_order` varchar(255) DEFAULT NULL,
  `exam_sub_center_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbqtcidsev68dbanq0t1gclean` (`exam_sub_center_id`),
  CONSTRAINT `FKbqtcidsev68dbanq0t1gclean` FOREIGN KEY (`exam_sub_center_id`) REFERENCES `t_exam_sub_center` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_school`
--

LOCK TABLES `t_school` WRITE;
/*!40000 ALTER TABLE `t_school` DISABLE KEYS */;
INSERT INTO `t_school` VALUES (1,'CENTRE EDUCATIF BASTOS','PRIVE_LAIC',1),(2,'LES CLASSIQUES AFRICAINS','PRIVE_LAIC',1),(3,'TASIKO','PRIVE_LAIC',4),(4,'SAINT EMMANUEL','PRIVE_LAIC',2),(5,'ADEKA','PRIVE_LAIC',4),(6,'YALE JUNIOR INTER','PRIVE_LAIC',4),(7,'METENOU ET FILS','PRIVE_LAIC',4),(8,'LA BENEDICTION','PRIVE_LAIC',4),(9,'AMBASSADORS','PRIVE_LAIC',4),(10,'LA RISETTE','PRIVE_LAIC',4),(11,'LA PEPINIERE','PRIVE_LAIC',5),(12,'LE SUCCES DE BOND','PRIVE_LAIC',5),(13,'PAUL ET LES ANGES','PRIVE_LAIC',5),(14,'FAMILY BIL SCHOOL','PRIVE_LAIC',5),(15,'MONICA INTERNATIONAL','PRIVE_LAIC',6),(16,'LA MANICHE','PRIVE_LAIC',6),(17,'ILE EDUCATIVE','PRIVE_LAIC',6),(18,'DORCAS','PRIVE_LAIC',1),(19,'GLOIRE DIVINE','PRIVE_LAIC',1),(20,'MAFFODONG','PRIVE_LAIC',1),(21,'MARIANE ET PAUL','PRIVE_LAIC',1),(22,'LA GRACE','PRIVE_LAIC',1),(23,'DANSAB','PRIVE_LAIC',1),(24,'SIPOWA','PRIVE_LAIC',1),(25,'LES INNOCENTS','PRIVE_LAIC',1),(26,'LES FUTURS DIRIGEANTS','PRIVE_LAIC',1),(27,'LES FUTURS SAVANTS','PRIVE_LAIC',1),(28,'MARFEE','PRIVE_LAIC',1),(29,'HONOR','PRIVE_LAIC',1),(30,'LA POUSSINIERE','PRIVE_LAIC',1),(31,'LE PHOENIX','PRIVE_LAIC',1),(32,'FONDATION MBALA','PRIVE_LAIC',1),(33,'LES PIERRES PRECIEUSES','PRIVE_LAIC',1),(34,'ROSA PEACE','PRIVE_LAIC',8),(35,'APPEF','PRIVE_LAIC',8),(36,'LA CENTRALE','PRIVE_LAIC',8),(37,'MONTAIGNE','PRIVE_LAIC',8),(38,'LA PEPITE','PRIVE_LAIC',8),(39,'LES BATISSEURS','PRIVE_LAIC',8),(40,'MARTI ET SAM','PRIVE_LAIC',1),(41,'LES MARTINETS','PRIVE_LAIC',1),(42,'NIL','PRIVE_LAIC',2),(43,'PRINCESSE JOYCE','PRIVE_LAIC',1),(44,'MICHEL LE GRAND','PRIVE_LAIC',1),(45,'BOUSSI','PRIVE_LAIC',13),(46,'ARCHE DE BILOK','PRIVE_LAIC',1),(47,'LES ECOLIERS NOIRS','PRIVE_LAIC',13),(48,'LE BON SEMEUR','PRIVE_LAIC',1),(49,'LES MANGUIERS','PRIVE_LAIC',13),(50,'LES TRAVAILLEURS','PRIVE_LAIC',1),(51,'LES DAUPHINS','PRIVE_LAIC',1),(52,'LES PERLES PRECIEUSES','PRIVE_LAIC',13),(53,'NFANDJA','PRIVE_LAIC',13),(54,'LEMA','PRIVE_LAIC',13),(55,'DIVINE GRACE','PRIVE_LAIC',13),(56,'GOPAL','PRIVE_LAIC',13),(57,'CLEOPATRE','PRIVE_LAIC',13),(58,'TREEE STONES','PRIVE_LAIC',13),(59,'LES LUTTINS','PRIVE_LAIC',13),(60,'SAINTE MARTHE','PRIVE_LAIC',14),(61,'CENTRE SCOLAIRE NKOLONDOM','PRIVE_LAIC',14),(62,'LA BANDE A PAILLOU','PRIVE_LAIC',14),(63,'LES ROIS MAGES','PRIVE_LAIC',14),(64,'MANDELA','PRIVE_LAIC',14),(65,'VICTORY BIL. SCHOOL','PRIVE_LAIC',14),(66,'AU CŒUR DU SUCCES','PRIVE_LAIC',14),(67,'LES PETITS LAPINS','PRIVE_LAIC',14),(68,'WILLIAM BOOTH','PRIVE_LAIC',14),(69,'SINAI','PRIVE_LAIC',14),(70,'LES PETITS ANGES','PRIVE_LAIC',15),(71,'SAINT PATRICK CHRISTIAN','PRIVE_LAIC',15),(72,'ABOMO EWONDO','PRIVE_LAIC',15),(73,'LES SALOMONS','PRIVE_LAIC',15),(74,'LES BERTILLETS','PRIVE_LAIC',17),(75,'ILE DES ANGES','PRIVE_LAIC',17),(76,'MEDOU','PRIVE_LAIC',17),(77,'CHANT\'LIS','PRIVE_LAIC',17),(78,'ESPOIR ET PERSEVERANCE','PRIVE_LAIC',17),(79,'LES VAUPRES','PRIVE_LAIC',17),(80,'BELARIS','PRIVE_LAIC',17),(81,'FANKEBY','PRIVE_LAIC',17),(82,'ANMERVIC','PRIVE_LAIC',17),(83,'LA BONNE GRAINE','PRIVE_LAIC',17),(84,'JEAN JACQUES ROUSSEAU','PRIVE_LAIC',17),(85,'MA\'A PO\'O','PRIVE_LAIC',17),(86,'GADDIEL','PRIVE_LAIC',17),(87,'SALVATION','PRIVE_LAIC',17),(88,'LES GENIES','PRIVE_LAIC',17),(89,'BERNARD ET APPOLO','PRIVE_LAIC',17),(90,'LA GRATITUDE DE NYOM','PRIVE_LAIC',17),(91,'SAINT LAURENT','PRIVE_LAIC',17),(92,'GRACELAND','PRIVE_LAIC',17),(93,'ZUDOM','PRIVE_LAIC',17),(94,'DE L\'EXCELLENCE DE NYOM','PRIVE_LAIC',17),(95,'GRAIN DE SENEVE','PRIVE_LAIC',17),(96,'CHEMIN DE LA VIE','PRIVE_LAIC',18),(97,'SANTA MARIA','PRIVE_LAIC',18),(98,'LES MERVEILLES DE NYOM','PRIVE_LAIC',18),(99,'VERONIQUE','PRIVE_LAIC',18),(100,'LA FONTAINE DES SAVOIRS','PRIVE_LAIC',18),(101,'LES CHRYSANTHEMES BLANCHES','PRIVE_LAIC',18),(102,'LA VICTOIRE','PRIVE_LAIC',18),(104,'CHILY','PRIVE_LAIC',18),(105,'TRINITY','PRIVE_LAIC',18),(106,'FOUO\'O LAAP','PRIVE_LAIC',18),(107,'ANAELLE PRINCESSE','PRIVE_LAIC',18),(108,'AMAEEBA','PRIVE_LAIC',18),(109,'GSB DE NYOM','PRIVE_LAIC',18),(110,'LA MATURITE','PRIVE_LAIC',18),(111,'MUNA MBOA','PRIVE_LAIC',18),(112,'MAGNY','PRIVE_LAIC',18),(113,'LA REVELATION','PRIVE_LAIC',18),(114,'KIMBO\'O','PRIVE_LAIC',18),(115,'CTRE EDUCATIF MARIE EMMANUEL','PRIVE_LAIC',18),(116,'NGIEGOM','PRIVE_LAIC',18),(117,'BEROTHER','PRIVE_LAIC',19),(118,'EMERGENCE DE NTEDE','PRIVE_LAIC',19),(119,'MIVAL','PRIVE_LAIC',19),(120,'LESLY','PRIVE_LAIC',19),(121,'ORNEL BILINGUAL','PRIVE_LAIC',19),(122,'NEW GENERATION','PRIVE_LAIC',19),(123,'GERMAINE BANGOU','PRIVE_LAIC',19),(124,'HOLYLAND','PRIVE_LAIC',19),(125,'PI AND JU','PRIVE_LAIC',19),(126,'LA BOUSSOLE','PRIVE_LAIC',19),(127,'MUBA BIL. SCHOOL','PRIVE_LAIC',19),(128,'TATSAFOUO','PRIVE_LAIC',19),(129,'LA GLOIRE DE NKOLMBONG','PRIVE_LAIC',19),(130,'LA GAIETE','PRIVE_LAIC',20),(131,'LES CHERUBINS','PRIVE_LAIC',20),(132,'LE BOSQUET','PRIVE_LAIC',21),(133,'SAINT LYDIA','PRIVE_LAIC',21),(134,'LE PAVILLON','PRIVE_LAIC',21),(135,'MACMILLAN','PRIVE_LAIC',21),(136,'BRIBEAU','PRIVE_LAIC',21),(137,'LES CHARLOTTINS','PRIVE_LAIC',1),(138,'MALOUM AND AYENA','PRIVE_LAIC',1),(139,'LE CLASSIQUE','PRIVE_LAIC',4),(140,'FONDATION TSOUNGUI','PRIVE_LAIC',21),(141,'ESPERANCE','PRIVE_LAIC',9),(142,'LES PETITS GEDEONS','PRIVE_LAIC',9),(143,'LES FLEURETTES','PRIVE_LAIC',9),(144,'ACADEMIC SCHOOL OF EXCELLENCE','PRIVE_LAIC',1),(145,'MICHEL ANGE','PRIVE_LAIC',1),(146,'LES LIBELLULES','PRIVE_LAIC',9),(147,'LES MAXIMES','PRIVE_LAIC',9),(148,'4 ETOILES','PRIVE_LAIC',9),(149,'LES MERVEILLES D’OKOLO','PRIVE_LAIC',11),(150,'SOCA','PRIVE_LAIC',1),(151,'STE NAOMI','PRIVE_LAIC',1),(152,'LE REPERE','PRIVE_LAIC',1),(153,'MBASSI','PRIVE_LAIC',17),(154,'MVOGO ET MBIDA','PRIVE_LAIC',17),(155,'JEANNE D\'ARC','PRIVE_LAIC',17),(156,'ANDRE FONTAINE','PRIVE_LAIC',2),(157,'BILIK CITY','PRIVE_LAIC',2),(158,'STELLA & GLORIA','PRIVE_LAIC',2),(159,'CLEMENT','PRIVE_LAIC',2),(160,'FLAMBEAU','PRIVE_LAIC',2),(161,'JEANNIS','PRIVE_LAIC',2),(162,'LES MAMOURS','PRIVE_LAIC',2),(163,'UNITED NATIONS','PRIVE_LAIC',2),(164,'LA PASSION','PRIVE_LAIC',2),(165,'SA\'AH DJIO','PRIVE_LAIC',2),(166,'THE CHAMPIONS','PRIVE_LAIC',2),(167,'ST EMMANUEL ET PHILO','PRIVE_LAIC',4),(168,'LE TEMPS DES CERISES','PRIVE_LAIC',2),(169,'LE REVEIL','PRIVE_LAIC',2),(170,'LES CANDIDES','PRIVE_LAIC',2),(171,'LES BOURGEOIS','PRIVE_LAIC',2),(172,'ANGE STELLA','PRIVE_LAIC',2),(173,'BRIGHT STAR D\'EMANA','PRIVE_LAIC',2),(174,'LE CHANCELIER','PRIVE_LAIC',2),(175,'BASTOS I A','PUBLIC',1),(176,'BASTOS I B','PUBLIC',1),(177,'BASTOS  II B','PUBLIC',1),(178,'BASTOS  II A','PUBLIC',1),(179,'LES COCCINELLES DU PALAIS DE L’UNITE','PUBLIC',3),(180,'ETOA MEKI 1','PUBLIC',5),(181,'ETOA MEKI 2B','PUBLIC',5),(182,'ETOA MEKI 2A','PUBLIC',5),(183,'EMANA 1A','PUBLIC',6),(184,'EMANA  GR 2','PUBLIC',6),(185,'EMANA GR 3','PUBLIC',6),(186,'EMANA I B','PUBLIC',6),(187,'MFANDENA 1 GR 1','PUBLIC',8),(188,'ETOUDI 2 A','PUBLIC',8),(189,'ETOUDI 1 B','PUBLIC',8),(190,'ETOUDI II B','PUBLIC',8),(191,'ETOUDI 1 A','PUBLIC',8),(192,'MBALLA 2 GR4','PUBLIC',12),(193,'MBALLA 2 GR 3','PUBLIC',12),(194,'MBALLA 2 GR 1','PUBLIC',12),(195,'MBALLA 2 GR 2','PUBLIC',12),(196,'MBALLA IV G 3','PUBLIC',13),(197,'MFANDENA 1 GR 2','PUBLIC',13),(198,'MBALLA IV GR 2A','PUBLIC',13),(199,'MBALLA 4 GR 3','PUBLIC',13),(200,'MBALLA IV GR 2B','PUBLIC',13),(201,'MBALLA IV GR 4','PUBLIC',13),(202,'MBALLA IV GR 1','PUBLIC',13),(203,'NKOLONDOM','PUBLIC',14),(204,'NLONGKAK G 2B','PUBLIC',16),(205,'NLONGKAK G 2A','PUBLIC',16),(206,'NLONGKAK G 1A','PUBLIC',16),(207,'NLONGKAK I B','PUBLIC',16),(208,'NYOM 2B','PUBLIC',18),(209,'OLEMBE G 2B','PUBLIC',18),(210,'NYOM II A','PUBLIC',18),(211,'OLEMBE G 1 B','PUBLIC',18),(212,'OLEMBE I A','PUBLIC',18),(213,'OLEMBE GR II A','PUBLIC',18),(214,'CAMP SIC OLEMBE','PUBLIC',18),(215,'TSINGA VILLAGE','PUBLIC',19),(216,'DEO GRATIAS','PRIVE_CATHOLIQUE',4),(217,'STE CATHERINE ETOUDI','PRIVE_CATHOLIQUE',1),(218,'STE THERESE MBALLA IV','PRIVE_CATHOLIQUE',1),(219,'ST MICHEL ARCHANGE','PRIVE_CATHOLIQUE',13),(220,'MGR HENRI VIETER','PRIVE_CATHOLIQUE',1),(221,'ST CHRISTOPHE OLEMBE','PRIVE_CATHOLIQUE',17),(222,'CENTRE COMMUNAUTAIRE DE L\'ENFANCE','PRIVE_CATHOLIQUE',20),(223,'LA RETRAITE','PRIVE_CATHOLIQUE',20),(224,'MAER','PRIVE_CATHOLIQUE',1),(225,'ST VINCENT PALOTTI','PRIVE_CATHOLIQUE',9),(226,'EPC DJOUNGOLO','PRIVE_PROTESTANT',5),(227,'EPC MARIE GOCKER','PRIVE_PROTESTANT',10),(228,'CEBEC MBALLA 5','PRIVE_PROTESTANT',13),(229,'ADVENTISTE MARANATHA','PRIVE_PROTESTANT',15),(230,'AL HADANATOU AL ISL.','PRIVE_FRANCO_ARABE',1),(231,'SAMIRA & AHMED','PRIVE_FRANCO_ARABE',18),(232,'FONDATION NANA BOUBA','PRIVE_FRANCO_ARABE',19);
/*!40000 ALTER TABLE `t_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_session`
--

DROP TABLE IF EXISTS `t_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_session` (
  `id` varchar(255) NOT NULL,
  `last_connection_at` datetime(6) DEFAULT NULL,
  `last_disconnection_at` datetime(6) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `account_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8n1e80p1o1x7m5k7pl6tc98nj` (`account_id`),
  CONSTRAINT `FK8n1e80p1o1x7m5k7pl6tc98nj` FOREIGN KEY (`account_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_session`
--

LOCK TABLES `t_session` WRITE;
/*!40000 ALTER TABLE `t_session` DISABLE KEYS */;
INSERT INTO `t_session` VALUES ('24da6351889e215f01889e2cb2cc0002','2023-06-09 03:21:49.513185',NULL,NULL,NULL),('24da6351889e215f01889ec2599f0003','2023-06-09 06:05:17.085063',NULL,NULL,NULL),('24da6351889e215f01889f198fdc0004','2023-06-09 07:40:32.602106',NULL,NULL,NULL),('24da6351889e215f0188a07a969e0005','2023-06-09 14:06:08.540888',NULL,NULL,NULL),('24da6351889e215f0188a64a35410006','2023-06-10 17:11:01.183044',NULL,NULL,NULL),('24da6351889e215f0188a6528e510007','2023-06-10 17:20:08.272663',NULL,NULL,NULL),('24da6351889e215f0188a652fac20008','2023-06-10 17:20:36.033100',NULL,NULL,NULL),('24da6351889e215f0188b85bbdda0009','2023-06-14 05:23:20.152463',NULL,NULL,NULL),('24da6351889e215f0188c470d588000a','2023-06-16 13:41:49.062813',NULL,NULL,NULL),('24da6351892074ae01892074ff130000','2023-07-04 10:31:25.695395',NULL,NULL,NULL),('24da6351892074ae0189208378af0001','2023-07-04 10:47:14.349824',NULL,NULL,NULL),('24da63518922e0310189400ebd3f0000','2023-07-10 13:47:35.097161',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_student`
--

DROP TABLE IF EXISTS `t_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_student` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `birthday` datetime(6) DEFAULT NULL,
  `c_birth_place` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) NOT NULL,
  `is_present` bit(1) NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tutor_phone` varchar(255) DEFAULT NULL,
  `school_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc5xxpa2de3v5jut032rvnhwq3` (`school_id`),
  CONSTRAINT `FKc5xxpa2de3v5jut032rvnhwq3` FOREIGN KEY (`school_id`) REFERENCES `t_school` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_student`
--

LOCK TABLES `t_student` WRITE;
/*!40000 ALTER TABLE `t_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `id` varchar(255) NOT NULL,
  `born_at` datetime(6) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `id_cart_recto` varchar(255) DEFAULT NULL,
  `id_cart_verso` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `account_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5aviawdfo4t0o22qosg68ntav` (`account_id`),
  CONSTRAINT `FK5aviawdfo4t0o22qosg68ntav` FOREIGN KEY (`account_id`) REFERENCES `t_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES ('24da6351889e215f01889e2861670001',NULL,NULL,NULL,'admin','M',NULL,NULL,'admin',NULL,NULL,'24da6351889e215f01889e28614d0000');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_users_roles`
--

DROP TABLE IF EXISTS `t_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_users_roles` (
  `role_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  KEY `FKpe8ow3bufylke4uf16hc7b9ur` (`user_id`),
  KEY `FK8jvv7u7wlgct5m50pc74bh594` (`role_id`),
  CONSTRAINT `FK8jvv7u7wlgct5m50pc74bh594` FOREIGN KEY (`role_id`) REFERENCES `t_account` (`id`),
  CONSTRAINT `FKpe8ow3bufylke4uf16hc7b9ur` FOREIGN KEY (`user_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_users_roles`
--

LOCK TABLES `t_users_roles` WRITE;
/*!40000 ALTER TABLE `t_users_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-14 15:11:45
