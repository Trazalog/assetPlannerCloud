-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: planner_assetcloudtest
-- ------------------------------------------------------
-- Server version	5.6.35

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
-- Table structure for table `abmdeposito`
--

DROP TABLE IF EXISTS `abmdeposito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abmdeposito` (
  `depositoId` int(11) NOT NULL AUTO_INCREMENT,
  `depositodescrip` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `id_provincial` varchar(255) DEFAULT NULL,
  `id_localidad` varchar(255) DEFAULT NULL,
  `id_pais` varchar(255) DEFAULT NULL,
  `GPS` varchar(255) DEFAULT NULL,
  `estado` varchar(5) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`depositoId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abmdeposito`
--

LOCK TABLES `abmdeposito` WRITE;
/*!40000 ALTER TABLE `abmdeposito` DISABLE KEYS */;
INSERT INTO `abmdeposito` VALUES (1,'deposito 1','I. de la Rosa 2345 Rivadavia',NULL,NULL,NULL,NULL,'AC',6),(2,'Depósito 2','Av. Libertador San Martín 2450 oeste',NULL,NULL,NULL,NULL,'AC',6),(4,'Conteiner Mina Chinchillas','MINA Chinchillas',NULL,NULL,NULL,NULL,'AC',7),(5,'Sucursal Gral. Guemes','Tte. Ibañes 42 Gral Guemes Salta',NULL,NULL,NULL,NULL,'AC',7),(6,'Taller Central ','San Juan',NULL,NULL,NULL,NULL,'AC',7);
/*!40000 ALTER TABLE `abmdeposito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abmproveedores`
--

DROP TABLE IF EXISTS `abmproveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abmproveedores` (
  `provid` int(10) NOT NULL AUTO_INCREMENT,
  `provnombre` varchar(255) DEFAULT NULL,
  `provcuit` varchar(50) DEFAULT NULL,
  `provdomicilio` varchar(255) DEFAULT NULL,
  `provtelefono` varchar(50) DEFAULT NULL,
  `provmail` varchar(100) DEFAULT NULL,
  `provestado` varchar(4) DEFAULT NULL,
  `estado` varchar(5) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`provid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abmproveedores`
--

LOCK TABLES `abmproveedores` WRITE;
/*!40000 ALTER TABLE `abmproveedores` DISABLE KEYS */;
INSERT INTO `abmproveedores` VALUES (1,'Juan Perez','2023339814','dsadasdasd','2645677','permauricio@gmail.com','8','AC',6),(2,'Trazalog','20-54545454-9','Lib. Gral S Martin 1890','15555555','soporte@trazalog.com','8','AC',6),(3,'Proveedor test','20-20202022-7','Calle proveedor','1777777777','info@proveedor.com','8','AC',7),(5,'Leonardo Pantano Tornero','xxxxxx','San Juan','2645053221','leonardo.pantano@gmail.com','8','AC',7);
/*!40000 ALTER TABLE `abmproveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admcustomers`
--

DROP TABLE IF EXISTS `admcustomers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admcustomers` (
  `cliId` int(11) NOT NULL AUTO_INCREMENT,
  `cliName` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliLastName` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliDni` varchar(8) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliDateOfBirth` date DEFAULT NULL,
  `cliNroCustomer` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliAddress` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliPhone` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliMovil` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliEmail` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliImagePath` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `zonaId` int(11) DEFAULT NULL,
  `cliDay` int(11) DEFAULT '30',
  `cliColor` varchar(7) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` varchar(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  `cliRazonSocial` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`cliId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admcustomers`
--

LOCK TABLES `admcustomers` WRITE;
/*!40000 ALTER TABLE `admcustomers` DISABLE KEYS */;
INSERT INTO `admcustomers` VALUES (13,'Daniel','Osvaldo','31324200','1984-05-01','1','Av La Humareda 12','','','','13.png',10,30,'#00a65a','AC',6,'Dani Osvaldo'),(14,'Mariana','Romero','31324205','2016-05-04','14','Av. Simpre Viva 123','','','','14.png',11,15,'#f39c12','AC',6,'MRomero'),(15,'Patricia','Moreno','45632145','2016-05-19','15','Rogelio Funes Mori y No Fue Corner','','','','15.png',10,10,'#dd4b39','AC',6,'Pato Moreno'),(16,'Homero','Perez','45888882','2000-05-10','16','Rivadavia 124s','','','','16.png',12,20,'#00a65a','AC',6,'Homero\'s'),(17,'Mauricio','perez','23339814','2016-06-01','17','dd','26465','026457070785','permaucirio@gmail.com','17.png',10,30,'#00a65a','AC',6,'Master of '),(18,'asAS','ASas','ss','2016-12-16','18','sASAs','sss','s333','permauricio23','18.png',10,30,'#00a65a','AN',6,'ASSAs'),(19,'eliana',NULL,'1234',NULL,NULL,'san lorenzo 1442 este, santa lucia','02644510131',NULL,'eli',NULL,NULL,30,NULL,'AN',6,'nose'),(20,'Mina Chinchilla','Mina chinchilla','02333981',NULL,NULL,'-','-',NULL,'-',NULL,NULL,30,NULL,'AC',7,'Mina Chinchilla');
/*!40000 ALTER TABLE `admcustomers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admstock`
--

DROP TABLE IF EXISTS `admstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admstock` (
  `stkId` int(11) NOT NULL AUTO_INCREMENT,
  `prodId` int(11) NOT NULL,
  `stkCant` int(11) NOT NULL,
  `usrId` int(11) NOT NULL,
  `stkDate` datetime NOT NULL,
  `stkMotive` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`stkId`),
  KEY `prodId` (`prodId`),
  KEY `usrId` (`usrId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admstock`
--

LOCK TABLES `admstock` WRITE;
/*!40000 ALTER TABLE `admstock` DISABLE KEYS */;
INSERT INTO `admstock` VALUES (27,8,10,1,'2016-05-13 15:59:17','Ajuste inicial'),(28,9,5,1,'2016-05-13 15:59:39','Ajuste inicial'),(29,10,20,1,'2016-05-13 15:59:57','Ajuste inicial'),(30,9,-2,1,'2016-05-17 18:15:03','Venta'),(31,10,1,1,'2017-01-19 12:13:25','Salida'),(32,10,5,1,'2017-01-19 12:15:11','entrada'),(33,10,5,1,'2017-01-19 12:15:26','salida'),(34,9,3,1,'2017-01-23 12:30:52','Salida'),(35,10,8,1,'2017-01-23 12:31:10','entrada'),(36,9,1,1,'2017-01-23 13:41:20','entrada'),(37,8,1,1,'2017-03-13 13:39:09','prestamo clorox'),(38,9,1,1,'2017-03-13 13:40:31','ingreso'),(39,10,12,1,'2017-03-13 13:41:09','salida'),(40,9,4,1,'2017-03-28 11:35:41','finning');
/*!40000 ALTER TABLE `admstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admvisits`
--

DROP TABLE IF EXISTS `admvisits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admvisits` (
  `vstId` int(11) NOT NULL AUTO_INCREMENT,
  `vstDate` datetime NOT NULL,
  `cliId` int(11) NOT NULL,
  `vstNote` text COLLATE utf8_spanish_ci NOT NULL,
  `vstStatus` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`vstId`),
  KEY `cliId` (`cliId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admvisits`
--

LOCK TABLES `admvisits` WRITE;
/*!40000 ALTER TABLE `admvisits` DISABLE KEYS */;
/*!40000 ALTER TABLE `admvisits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `estado` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id_area`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'proceso nuevo de area',6,'AC'),(2,'gemma area 1',0,'AC'),(3,'Industrial',6,'AC'),(4,'Area Nueva',6,'AC'),(5,'otra area 8',6,'AC'),(6,'area 9',4,'AC'),(7,'area 51',6,'AC'),(8,'Area Testing',6,'AC'),(9,'Area compras',6,'AC'),(10,'area 9',6,'AC'),(12,'MIna',7,'AC'),(13,'Operaciones',6,'AC'),(14,'Mina',7,'AC');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `artId` int(11) NOT NULL AUTO_INCREMENT,
  `artBarCode` varchar(50) NOT NULL,
  `artDescription` varchar(50) NOT NULL,
  `artCoste` decimal(14,2) NOT NULL,
  `artMargin` decimal(10,2) NOT NULL,
  `artIsByBox` int(2) NOT NULL,
  `artCantBox` int(11) DEFAULT NULL,
  `artMarginIsPorcent` bit(1) NOT NULL,
  `artEstado` varchar(2) NOT NULL DEFAULT 'AC',
  `famId` int(11) DEFAULT NULL,
  `unidadmedida` int(11) NOT NULL,
  `punto_pedido` int(11) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`artId`),
  UNIQUE KEY `artBarCode` (`artBarCode`) USING BTREE,
  UNIQUE KEY `artDescription` (`artDescription`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (2,'51574','FILTRO DE COMBUSTIBLE P/TAMROCK N°88',0.00,0.00,1,0,'\0','AC',3,1,0,6),(10,'123456','BUJE DE ROTACION P/TAMROCK 680',0.00,0.00,0,6,'\0','AN',9,2,0,6),(11,'50686','BULON NRO. 86321729 P/TAMROCK HL 500',0.00,0.00,1,1,'\0','AC',1,1,0,6),(12,'51258','DIAFRAGMA N:04114808 P/TAMROCK',0.00,0.00,1,3,'\0','AC',4,1,0,6),(13,'51265','DIAFRAGMA P/COMP. TAMROCK HL 680-2 A',0.00,0.00,1,0,'\0','AC',4,1,0,6),(14,'51315','EJE P/ TAMROCK N† 15178158',0.00,0.00,1,0,'\0','AC',5,1,0,6),(15,'51317','EJE P/TAMROCK 500 ART. 23313378',0.00,0.00,1,0,'\0','AC',5,1,0,6),(16,'51471','FILTRO  COMBUSTIBLE P 557440 TAMROCK',0.00,0.00,1,3,'\0','AC',3,1,0,6),(17,'51571','FILTRO TAMROCK ACEITE CAT 1R-0739',0.00,0.00,1,0,'\0','AC',3,1,0,6),(18,'51545','FILTRO TAMROCK AIRE †88546679',0.00,0.00,1,0,'\0','AC',3,1,0,6),(19,'51546','FILTRO TAMROCK AIRE/CABINA PRIMARIO',0.00,0.00,1,0,'\0','AC',3,1,0,6),(20,'51548','FILTRO TAMROCK AIRE/COMPRESOR 885467',0.00,0.00,1,1,'\0','AC',3,1,0,6),(21,'51550','FILTRO TAMROCK CIRC/HID.RETORNO 8672',0.00,0.00,1,0,'\0','AC',3,1,0,6),(22,'51551','FILTRO TAMROCK CIRC/HID.SANDVICK 815',0.00,0.00,1,0,'\0','AC',3,1,0,6),(23,'51552','FILTRO TAMROCK COMB,N† 1R-0751',0.00,0.00,1,0,'\0','AC',3,1,0,6),(24,'51553','FILTRO TAMROCK COMB,TRAMPA/AGUA 1466',0.00,0.00,1,0,'\0','AC',3,1,0,6),(25,'53605','TRAMPA DE AGUA PARA TAMROCK',0.00,0.00,1,2,'\0','AC',10,1,0,6),(26,'53701','TUERCA NRO.81125969 P/TAMROCK',0.00,0.00,1,1,'\0','AC',9,1,0,6),(27,'53947','KIT DE SELLOS NRO.879484449 TAMROCK',0.00,0.00,1,0,'\0','AC',7,1,0,6),(28,'53966','RETEN NRO 15074808 TAMROCK R -500',0.00,0.00,1,1,'\0','AC',8,1,0,6),(29,'53969','SELLOS NRO 81820039 TAMROCK R-500',0.00,0.00,1,3,'\0','AC',7,1,0,6),(30,'54022','BUJE P/TAMROCK N 15021838',0.00,0.00,1,4,'\0','AC',2,1,0,6),(31,'54469','VALVULA  ART 807 590 69 P/TAMROCK HL',0.00,0.00,1,2,'\0','AC',6,1,0,6),(32,'58076','FILTRO TAMROCK 500 AIRE COMPRESOR PR',0.00,0.00,1,1,'\0','AC',3,1,0,6),(33,'58077','FILTRO TAMROCK 500 AIRE SECUNDARIO M',0.00,0.00,1,0,'\0','AC',3,1,0,6),(34,'58078','FILTRO TAMROCK 500 AIRE  PRIMARIO MO',0.00,0.00,1,0,'\0','AC',3,1,0,6),(35,'58079','FILTRO TAMROCK 500 AIRE COMPRESOR SE',0.00,0.00,1,0,'\0','AC',3,1,0,6),(36,'58080','FILTRO TAMROCK 500 GASOIL ART8823923',0.00,0.00,1,3,'\0','AC',3,1,0,6),(37,'58081','FILTRO TAMROCK 500 GASOIL SEPARADOR',0.00,0.00,1,0,'\0','AC',3,1,0,6),(38,'58082','FILTRO TAMROCK 500 ACEITE MOTOR ART',0.00,0.00,1,3,'\0','AC',3,1,0,6),(39,'50190','ARANDELA DE BRONCE 7K-1840 P/CAT 966',0.00,0.00,1,0,'\0','AN',11,1,0,6),(40,'50236','ARANDELAS N  7K-1839 P/CATERPILLAR 9',0.00,0.00,1,0,'\0','AN',11,1,0,6),(41,'50465','BULON ART. NRO. 6729510 P/ BOB CATERPILLAR',0.00,0.00,0,0,'\0','AC',1,4,0,6),(42,'50712','BULON   P/ CAT- 966 DIENTE DE CARGAD',0.00,0.00,1,22,'\0','AC',1,1,0,6),(43,'50714','BULON  8T -6466 P/AIRE ACONDI CAT -',0.00,0.00,1,0,'\0','AC',1,1,0,6),(44,'50966','COMPRESOR DE AIRE N† 8N 6105 P / CAT',0.00,0.00,1,0,'\0','AC',19,1,0,6),(45,'51084','CORREA DE ALTERNAD. P/BOBCAT ART.710',0.00,0.00,1,5,'\0','AC',21,1,0,6),(46,'51188','CORTA CORRIENTE DE 24 VOLT. P/CAT 98',0.00,0.00,1,1,'\0','AC',20,1,0,6),(47,'51208','CUBIERTA 10 X 16.5 SOLIDEAL P/BOBCAT',0.00,0.00,1,1,'\0','AC',22,1,0,6),(48,'51259','DIAFRAGMA N† 5V 6125 P/ CAT 980',0.00,0.00,1,3,'\0','AC',4,1,0,6),(49,'51455','FILTRO BOBCAT ACEIT,HID.N†6661248',0.00,0.00,1,2,'\0','AC',3,1,0,6),(50,'51456','FILTRO BOBCAT ACEIT,MOTOR N†03974896',0.00,0.00,1,2,'\0','AC',3,1,0,6),(51,'51457','FILTRO BOBCAT AIRE PRIM.N†06598492',0.00,0.00,1,8,'\0','AC',3,1,0,6),(52,'51458','FILTRO BOBCAT AIRE SEC.N†06598362',0.00,0.00,1,9,'\0','AC',3,1,0,6),(53,'51459','FILTRO BOBCAT COMB.N†06667352',0.00,0.00,1,7,'\0','AC',3,1,0,6),(54,'51460','FILTRO CAT-966 ACEIT/CONV N†9740',0.00,0.00,1,0,'\0','AC',3,1,0,6),(55,'51461','FILTRO CAT-966 ACEIT/HID,N†156-0741-',0.00,0.00,1,1,'\0','AC',3,1,0,6),(56,'51462','FILTRO CAT-966 ACEITE N†1R-0739',0.00,0.00,1,0,'\0','AC',3,1,0,6),(57,'51463','FILTRO CAT-966 AIRE PRIMARIO 2453818',0.00,0.00,1,1,'\0','AC',3,1,0,6),(58,'51464','FILTRO CAT-966 AIRE SECUNDARIO 24538',0.00,0.00,1,1,'\0','AC',3,1,0,6),(59,'51465','FILTRO CAT-966 COMB,N†1P-2299-BOSCH',0.00,0.00,1,0,'\0','AC',3,1,0,6),(60,'51466','FILTRO CAT-980 ACEITE MOTOR',0.00,0.00,1,0,'\0','AC',3,1,0,6),(61,'51467','FILTRO CAT-980 ACEIT/HIDRAULICO',0.00,0.00,1,0,'\0','AC',3,1,0,6),(62,'51468','FILTRO CAT-980 TRASMISION',0.00,0.00,1,0,'\0','AC',3,1,0,6),(63,'51469','FILTRO CAT-980 FILTRO SEPARADOR DE A',0.00,0.00,1,0,'\0','AC',3,1,0,6),(64,'51470','FILTRO CAT-980 CABINA',0.00,0.00,1,0,'\0','AC',3,1,0,6),(66,'51685','GUIA N† 2 L-3650 P/CAT 966',0.00,0.00,1,1,'\0','AC',12,1,0,6),(67,'51825','JUNTA N† 8S-1605 P/CAT.966',0.00,0.00,1,0,'\0','AC',15,1,0,6),(68,'51826','JUNTA N† 9Y-1979 P/CAT.966',0.00,0.00,1,0,'\0','AC',15,1,0,6),(69,'51829','JUNTA NRO. 6684788 P/BOB CAT',0.00,0.00,1,0,'\0','AC',15,1,0,6),(70,'52317','PERNO DE BALDE  NRO. 8K- 5334 P/CAT.',0.00,0.00,1,2,'\0','AC',13,1,0,6),(71,'53371','SELLO  N: 2H-6368 P/CAT. 966',0.00,0.00,1,6,'\0','AC',7,1,0,6),(72,'53394','SELLO N† 6D 692 P/ CAT -980',0.00,0.00,1,4,'\0','AC',7,1,0,6),(73,'53703','TUERCA P/BOBCAT S150 N€ 6674202',0.00,0.00,1,0,'\0','AC',9,1,0,6),(74,'53706','TUERCA PARA BULON DE RUEDA, P/ CAT.',0.00,0.00,1,20,'\0','AC',9,1,0,6),(75,'53918','COJINETE  5M 578 CAT-966',0.00,0.00,1,4,'\0','AC',14,1,0,6),(76,'54023','BULON 1604 P/CAT 980',0.00,0.00,1,8,'\0','AC',1,1,0,6),(77,'54042','CABLE DE ACELERADOR P/CAT 980 ART 3V',0.00,0.00,1,1,'\0','AC',16,1,0,6),(78,'54210','JUNTA 5S-4629 P/CAT-966',0.00,0.00,1,2,'\0','AC',15,1,0,6),(79,'57873','FILTRO DE COMBUSTIBLE CAT 966H 1R-07',0.00,0.00,1,3,'\0','AC',3,1,0,6),(80,'57874','FILTRO  DE  ACEITE MOTOR CAT 966H 1R',0.00,0.00,1,0,'\0','AC',3,1,0,6),(81,'57876','FILTRO  DE  ACEITE  HIDRAULICO  CAT',0.00,0.00,1,7,'\0','AC',3,1,0,6),(82,'54012','BASE  PORTA FILTRO  ART 6N 1044 CAT',0.00,0.00,1,0,'\0','AC',3,1,0,6),(83,'54833','CAMISA CILINDRO DE MOTOR CAT-3306',0.00,0.00,1,0,'\0','AC',24,1,0,6),(84,'54834','JUEGO DE AROS DE MOTOR CAT-3306',0.00,0.00,1,0,'\0','AC',24,1,0,6),(85,'57913','RADIADOR AGUA P/CAT 966H',0.00,0.00,1,0,'\0','AC',23,1,0,6),(86,'58036','TERMOSTATO  NRO 281- 8744 P/CAT 924',0.00,0.00,1,0,'\0','AC',17,1,0,6),(87,'58038','TERMOSTATO  NRO 248 -5513 P/CAT 966',0.00,0.00,1,0,'\0','AC',17,1,0,6),(88,'58275','FILTRO CAT-980 MOTOR 1R-1808',0.00,0.00,1,3,'\0','AC',3,1,0,6),(89,'58276','FILTRO CAT-980 GASOIL 1R0749',0.00,0.00,1,4,'\0','AC',3,1,0,6),(90,'58277','FILTRO CAT-980 GASOIL SEP 326-1644',0.00,0.00,0,0,'\0','AC',3,1,0,6),(91,'58278','FILTRO CAT-980 AIRE PRIMARIO 151-773',0.00,0.00,1,3,'\0','AC',3,0,0,6),(92,'58279','FILTRO CAT-980 AIRE SECUNDARIO 18902',0.00,0.00,1,7,'\0','AN',3,1,0,6),(93,'50182','ARANDELA ART, 01643-32260 P/ KOMATSU',0.00,0.00,1,0,'\0','AN',11,1,88,6),(94,'50400','BRACKET P/KOMATSU P/KOMATSU 470',0.00,0.00,1,2,'\0','AN',1,1,0,6),(95,'50436','BUJE N† 17177-04530 P/KOMATSU WA 420',0.00,0.00,1,1,'\0','AN',2,1,0,6),(96,'50461','BUJIA NRO. 600-815-2770 P/KOMATSU 42',0.00,0.00,0,0,'\0','IN',2,1,4,6),(97,'50684','BULON NRO. 16202091-12050 P/ KOMATSU',0.00,0.00,1,22,'\0','AC',1,1,0,6),(98,'50685','BULON NRO. 419-70-13150 P/KOMATSU 25',0.00,0.00,1,12,'\0','AC',1,1,0,6),(99,'50689','BULON P/KOMATSU 470 N 2 ART. 09208-1',0.00,0.00,1,0,'\0','AC',1,1,0,6),(100,'50715','BULON  DE CARDAN P/ KOMATSU 420-3 N†',0.00,0.00,1,9,'\0','AC',1,1,0,6),(101,'50716','BULON  P/ KOMATSU N† 02090-11490',0.00,0.00,1,41,'\0','AC',1,1,0,6),(102,'50717','BULON   DE CARDAN P/ KOMATSU 420-3 N',0.00,0.00,1,23,'\0','AC',1,0,0,6),(103,'51179','CORREA NRO. 6732-81-6170 , P/KOMATSU',0.00,0.00,1,2,'\0','AC',21,0,0,6),(104,'51196','CRUCETA NRO. 418-20-34620 P/KOMATSU',0.00,0.00,1,1,'\0','AC',1,1,0,6),(105,'51197','CRUCETA NRO. 421-20-12620 P/KOMATSU',0.00,0.00,1,1,'\0','AC',25,1,0,6),(121,'51198','ESPEJO NRO. 421-54-25620 P/KOMATSU 4',0.00,0.00,0,NULL,'\0','AC',1,0,NULL,6),(130,'51195','CRUCETA NRO 418-20-32620 , P/KOMATSU',0.00,0.00,1,1,'\0','AC',25,1,0,6),(133,'51808','JUNTA ANULAR P/KOMATSU 470  ART.600-',0.00,0.00,1,0,'\0','AC',15,1,0,6),(134,'52304','PASADOR P/KOMATSU 470 ART, 092440251',0.00,0.00,1,3,'\0','AC',28,1,0,6),(135,'52408','PLATOS NRO. 421-70-22140  P/ KOMATSU',0.00,0.00,1,4,'\0','AC',29,1,0,6),(136,'53377','SELLO 421- 33 - 11480 P/ KOMATSU 420',0.00,0.00,1,0,'\0','AC',7,1,0,6),(137,'53637','TUERCA 09218 - 12219 P/ KOMATSU WA 4',0.00,0.00,1,2,'\0','AC',9,1,0,6),(138,'53693','TUERCA N† 02290 - 11422 P/KOMATSU WA',0.00,0.00,1,0,'\0','AC',9,1,0,6),(139,'53695','TUERCA NRO. 02290-11625, P/KOMATSU 4',0.00,0.00,1,9,'\0','AC',9,1,0,6),(140,'53696','TUERCA NRO. 091218-12523 P/KOMATSU 2',0.00,0.00,1,16,'\0','AC',9,1,0,6),(141,'53698','TUERCA NRO. 16202290-12031 P/KOMATSU',0.00,0.00,1,21,'\0','AC',9,1,0,6),(142,'53700','TUERCA NRO.02290-11422 P/KOMATSU',0.00,0.00,1,2,'\0','AC',9,1,0,6),(143,'53721','TUERCAS N º 09218-12219 P/ KOMATSU',0.00,0.00,1,6,'\0','AC',9,1,0,6),(144,'53820','VALVULA P/ FILTRO DE AIRE P/KOMATSU',0.00,0.00,1,2,'\0','AC',6,1,0,6),(145,'53991','ACOPLE NRO  09281-00041 P/KOMATSU 25',0.00,0.00,1,1,'\0','AC',18,1,0,6),(146,'54019','BUJE 421-70-11272 P/KOMATSU 470',0.00,0.00,1,0,'\0','AC',2,1,0,6),(147,'54045','CABLE  NRO 424-9916110  P/KOMATSU',0.00,0.00,1,1,'\0','AC',1,1,0,6),(148,'54150','FILT.KOMATSU 470 /2 COMBUSTIBLE 600-',0.00,0.00,1,0,'\0','AC',3,1,0,6),(149,'54411','SEGURO NRO. 09283-00000 P/KOMATSU 25',0.00,0.00,1,1,'\0','AC',30,1,0,6),(150,'54432','TAPA  NRO 09282-00017 P/KOMATSU 250',0.00,0.00,1,1,'\0','AC',31,1,0,6),(151,'54504','TUERCA DE ACERO / KOMATSU 420',0.00,0.00,1,8,'\0','AC',9,1,0,6),(152,'54505','BULON NRO 16201010-62075 P/KOMATSU',0.00,0.00,1,3,'\0','AC',1,1,0,6),(153,'54929','JUNTA ANULAR PARA KOMATSU 470 ART: 1',0.00,0.00,1,1,'\0','AC',15,1,0,6),(154,'55204','TUERCA P/ EJE DELANTERO P/ KOMATSU 4',0.00,0.00,1,9,'\0','AC',9,1,0,6),(155,'55242','ALTERNADOR DE 24V. P/KOMATSU',0.00,0.00,1,0,'\0','AC',32,1,0,6),(156,'51439','FAROS  TOYOTA 3.0',0.00,0.00,1,0,'\0','IN',33,1,0,6),(157,'51486','FILTRO COMBUSTIBLE  CLARK TOYOTA 233',0.00,0.00,1,0,'\0','AC',3,1,0,6),(158,'51488','FILTRO CLARK TOYOTA MOTOR 90915-2000',0.00,0.00,1,3,'\0','AC',3,1,0,6),(159,'51490','FILTRO CLARK TOYOTA CONVERTIDOR 3267',0.00,0.00,1,1,'\0','AC',3,1,0,6),(160,'51516','FILTRO CLARK TOYOTA HIDRAULICO 67502',0.00,0.00,1,4,'\0','AC',3,1,0,6),(161,'51517','FILTRO CLARK TOYOTA AIRE SECUNDARIO',0.00,0.00,1,4,'\0','AC',3,1,0,6),(162,'51518','FILTRO CLARK TOYOTA AIRE PRIMARIO P8',0.00,0.00,1,0,'\0','AC',3,1,0,6),(163,'50386','BOMBIN DE GASOIL P/BOBCAT ART.665773',0.00,0.00,1,100,'\0','AN',15,1,6,6),(165,'56174','LLANTA NRO. NRPB03535239 P/ BOBCAT S',0.00,0.00,1,0,'\0','AC',35,1,0,6),(166,'1234','nuevo articulo',0.00,0.00,1,6,'\0','AN',3,1,1203,6),(169,'9999','nuevo producto',0.00,0.00,1,23,'\0','AN',13,2,1200,6),(170,'9987','nuevo ver',0.00,0.00,1,23,'\0','AN',15,2,0,6),(171,'3115 23 23','nose',0.00,0.00,1,1,'\0','AC',6,0,0,7),(172,'xxxxxx','yyyyyyy',0.00,0.00,0,0,'\0','AN',3,1,2,7),(173,'12345678910','nueva descripcion',0.00,0.00,0,0,'\0','AC',15,0,0,6),(174,'123456789','descripcion de prueba',0.00,0.00,0,0,'\0','AC',17,0,0,6),(175,'12345678','nuevaaaaaa',0.00,0.00,1,33,'\0','AC',3,0,0,6),(176,'15151515','producto nuevo',0.00,0.00,0,0,'\0','AC',1,0,3,6),(177,'123','123descripcion',0.00,0.00,1,6,'\0','AN',1,2,2,6),(178,'1112','1112descrip',0.00,0.00,1,12,'\0','AN',5,2,1112,6),(185,'11asdf','11asdf',0.00,0.00,1,6,'\0','AN',3,3,11,6),(194,'1codigo-001','descripción de código 001',0.00,0.00,0,0,'\0','AN',22,1,1,6),(200,'2cod-002','descrip cod 002',0.00,0.00,1,12,'\0','AN',5,1,2,6),(201,'111','ghfhjgfhg',0.00,0.00,0,0,'\0','AN',3,1,2,6),(202,'111111111','nuevo',0.00,0.00,1,10,'\0','AN',21,3,5,6),(203,'123455678','eliiiii',0.00,0.00,1,11,'\0','AN',24,1,4,6),(210,'3cod-0003','descrip',0.00,0.00,0,0,'\0','AN',5,2,3,6),(211,'4cod0004a','Descrip 03',0.00,0.00,0,12,'\0','AN',15,1,3,6),(212,'222233','dsadsadsad',0.00,0.00,0,0,'\0','AN',17,1,3,6),(213,'333333','sdadasdsad',0.00,0.00,1,4,'\0','AN',22,1,4,6),(215,'124456897654324','hefdiujbwda',0.00,0.00,0,0,'\0','AN',20,1,4,6),(216,'1234556678','nuevoooooo',0.00,0.00,1,10,'\0','AN',26,1,5,6),(221,'aaa','aaa',0.00,0.00,1,6,'\0','AN',4,2,0,6),(227,'11187326487234623462783','assdasds',0.00,0.00,0,0,'\0','AN',13,3,0,6),(228,'122334455','nuevo test',0.00,0.00,1,60,'\0','AN',17,2,41,6),(229,'123456678','test',0.00,0.00,1,10,'\0','AN',12,1,55,6),(235,'000','nnnn',0.00,0.00,0,0,'\0','AN',5,1,3,6),(236,'00001','aaaa',0.00,0.00,0,0,'\0','AN',1,1,6,6),(238,'1','nuevo articulo 112233',0.00,0.00,1,30,'\0','AN',33,1,5,6),(239,'2','nuevo articulo 2',0.00,0.00,1,12,'\0','AN',22,1,4,6),(240,'12345','nuevo de 5',0.00,0.00,1,5,'\0','AN',1,1,4,6),(245,'8888888888','campo de 6 digitos',0.00,0.00,1,12,'\0','AN',20,3,4,6),(246,'1122334455','eliana',0.00,0.00,1,44,'\0','AN',1,1,5,6),(248,'22','asdasd',0.00,0.00,1,0,'\0','AC',1,-1,3,7),(249,'57653456','bulon de escalera ',0.00,0.00,1,0,'\0','AC',1,-1,1,7),(250,'1R-1825 ','filtro ',0.00,0.00,1,2,'\0','AN',3,1,4,7),(251,'sdsad','sdsd',0.00,0.00,1,0,'\0','AC',12,1,2,7);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignaherramientas`
--

DROP TABLE IF EXISTS `asignaherramientas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignaherramientas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `herrId` int(11) DEFAULT NULL,
  `id_orden` int(11) DEFAULT NULL,
  `fechahora` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `herrId` (`herrId`),
  KEY `id_orden` (`id_orden`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaherramientas`
--

LOCK TABLES `asignaherramientas` WRITE;
/*!40000 ALTER TABLE `asignaherramientas` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignaherramientas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignausuario`
--

DROP TABLE IF EXISTS `asignausuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignausuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usrId` int(11) DEFAULT NULL,
  `id_orden` int(11) DEFAULT NULL,
  `fechahora` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usrId` (`usrId`),
  KEY `id_orden` (`id_orden`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignausuario`
--

LOCK TABLES `asignausuario` WRITE;
/*!40000 ALTER TABLE `asignausuario` DISABLE KEYS */;
INSERT INTO `asignausuario` VALUES (1,16,4,'2018-09-19 11:50:17'),(2,17,4,'2018-09-19 11:50:17'),(3,17,10,'2018-10-18 04:41:14'),(4,17,12,'2018-10-18 04:47:13'),(5,17,19,'2018-10-20 22:28:33'),(6,1,19,'2018-10-20 22:28:33'),(7,17,20,'2018-10-20 23:51:41'),(8,18,22,'2018-10-20 23:56:41'),(9,18,23,'2018-10-20 23:58:00'),(10,17,24,'2018-10-21 00:23:50'),(11,18,25,'2018-10-21 00:27:42'),(12,17,33,'2018-10-21 18:22:05'),(13,17,1,'2018-10-23 19:38:25');
/*!40000 ALTER TABLE `asignausuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudades` (
  `idCiudades` int(11) NOT NULL AUTO_INCREMENT,
  `Paises_Codigo` varchar(2) NOT NULL,
  `Ciudad` varchar(100) NOT NULL,
  PRIMARY KEY (`idCiudades`),
  KEY `Paises_Codigo` (`Paises_Codigo`),
  KEY `Ciudad` (`Ciudad`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` VALUES (1,'AR','Buenos Aires'),(2,'AR','Santa Fe'),(3,'AR','Córdoba'),(4,'AR','Misiones'),(5,'AR','Entre Rios'),(6,'AR','Mendoza'),(7,'AR','San Juan'),(8,'AR','Tucumán'),(9,'AR','Tierra del Fuego'),(10,'AR','Chaco'),(11,'AR','La Pampa'),(12,'AR','Jujuy'),(13,'AR','Rio Negro'),(14,'AR','Chubut'),(15,'AR','Corrientes'),(16,'AR','Santa Cruz'),(17,'AR','Salta'),(18,'AR','San Luis'),(19,'AR','Neuquen'),(20,'AR','Catamarca'),(21,'AR','Santiago del Estero'),(22,'AR','La Rioja'),(23,'AR','Formosa');
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `clinteid` int(11) NOT NULL AUTO_INCREMENT,
  `clientrazonsocial` varchar(255) DEFAULT NULL,
  `clientdireccion` varchar(255) DEFAULT NULL,
  `clientmail` varchar(255) DEFAULT NULL,
  `clienttelefono` int(11) DEFAULT NULL,
  `clientetelefono1` varchar(255) DEFAULT NULL,
  `localidadid` varchar(50) DEFAULT NULL,
  `paisid` varchar(2) DEFAULT NULL,
  `provinciaid` int(11) DEFAULT NULL,
  `cuenta_cuentaid` int(11) NOT NULL,
  PRIMARY KEY (`clinteid`),
  KEY `fk_clientes_cuenta1_idx` (`cuenta_cuentaid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'TRazalog','av libertado 3890 oeste','ventas@trazalog.com',2147483647,NULL,'San Juan','1',1,1),(2,'MRS SERVICE SRL','-','-',NULL,NULL,NULL,'AR',1,0);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `componenteequipo`
--

DROP TABLE IF EXISTS `componenteequipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `componenteequipo` (
  `idcomponenteequipo` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) NOT NULL,
  `id_componente` int(11) NOT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `codigo` varchar(40) DEFAULT NULL,
  `estado` varchar(4) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `sistemaid` int(11) NOT NULL,
  PRIMARY KEY (`idcomponenteequipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `componenteequipo`
--

LOCK TABLES `componenteequipo` WRITE;
/*!40000 ALTER TABLE `componenteequipo` DISABLE KEYS */;
INSERT INTO `componenteequipo` VALUES (1,1,31,NULL,'mt666-cucharon-electrico','AC',6,1),(2,1,26,NULL,'mt666-corredera-mecanico','AC',6,3),(3,9,25,NULL,'bateria mt666','P',6,4),(4,1,1,NULL,'codigo003','AC',6,1),(5,9,57,NULL,'codigo666','AC',6,3);
/*!40000 ALTER TABLE `componenteequipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `componentes`
--

DROP TABLE IF EXISTS `componentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `componentes` (
  `id_componente` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) CHARACTER SET latin1 NOT NULL,
  `id_equipo` int(11) DEFAULT NULL,
  `fechahora` datetime DEFAULT NULL,
  `informacion` text COLLATE utf8_spanish_ci,
  `marcaid` int(11) DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_componente`),
  KEY `id_equipo` (`id_equipo`),
  KEY `marcaid` (`marcaid`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `componentes`
--

LOCK TABLES `componentes` WRITE;
/*!40000 ALTER TABLE `componentes` DISABLE KEYS */;
INSERT INTO `componentes` VALUES (1,'MOTOR DIESEL',1,'2018-07-03 10:55:57','',1,'comp1.pdf','AC',6),(2,'VALVULA DE PURGA',1,'2018-07-03 10:57:26','',1,'assets/filesequipos/2.pdf','AC',6),(3,'FILTRO DE COMBUSTIBLE ',1,'2018-07-03 10:57:44','',1,'assets/filesequipos/3.pdf','AC',6),(4,'RESPIRADOR DE TANQUE',1,'2018-07-03 10:57:56','',1,'assets/filesequipos/4.pdf','AC',6),(5,'RADIADOR',1,'2018-07-03 10:58:04','',1,'assets/filesequipos/5.pdf','AC',6),(6,'CORREA DE DISTRIBUCION DEL MOTOR',2,'2018-07-03 11:06:02','',7,'assets/filesequipos/6.pdf','AC',6),(7,'VALVULA MOTOR',2,'2018-07-03 11:06:23','',7,'assets/filesequipos/7.pdf','AC',6),(8,'FRENOS',2,'2018-07-03 11:06:28','',7,'assets/filesequipos/8.pdf','AC',6),(9,'CINTURON DE SEGURIDAD',2,'2018-07-03 11:06:41','',7,'assets/filesequipos/9.pdf','AC',6),(10,'DEPOSITO LIMPIAPARABRISAS',2,'2018-07-03 11:06:59','',7,'assets/filesequipos/10.pdf','AC',6),(11,'VALVULA DE ESCAPE',3,'2018-07-03 11:18:54','',8,'assets/filesequipos/11.pdf','AC',6),(12,'CARTER DEL MOTOR',3,'2018-07-03 11:19:06','',5,'comp12.pdf','AC',6),(13,'VALVULA DE ALIVIO',3,'2018-07-03 11:19:19','',5,'comp13.pdf','AC',6),(14,'REJILLA DE ACEITE DE DIRECCION ',3,'2018-07-03 11:19:48','',5,'comp14.pdf','AC',6),(15,'CILINDRO DE DIRECCIÓN',3,'2018-07-03 11:20:00','',5,'comp15.pdf','AC',6),(16,'LUCES',4,'2018-07-03 11:27:31','',6,'comp13.pdf','AC',6),(17,'MOTOR',4,'2018-07-03 11:28:05','',6,'comp13.pdf','AN',6),(18,'SOPORTE MOTOR',4,'2018-07-03 11:28:40','',6,'comp13.pdf','AN',6),(19,'CADENA',4,'2018-07-03 11:28:50','',6,'assets/filesequipos/19.pdf','AN',6),(20,'NEUMATICOS',4,'2018-07-03 11:28:59','',6,'assets/filesequipos/20.pdf','AN',6),(21,'MOTOR DIESEL',5,'2018-07-03 11:37:13','',1,'assets/filesequipos/21.pdf','AN',6),(22,'CORREDERA',5,'2018-07-03 11:37:40','',1,'assets/filesequipos/22.pdf','AN',6),(23,'BRAZO',5,'2018-07-03 11:37:54','',1,'assets/filesequipos/23.pdf','AN',6),(24,'SENSOR DE TEMPERATURA',5,'2018-07-03 11:39:00','',1,'comp13.pdf','AC',6),(25,'BATERIA',5,'2018-07-03 11:39:11','',1,'comp13.pdf','AC',6),(26,'CORREDERA',1,'2018-07-03 16:08:09','',1,'comp13.pdf','AC',6),(27,'BRAZO',1,'2018-07-03 16:50:47','',1,'comp14.pdf','AC',6),(28,'MARTILLO',1,'2018-07-03 21:50:00','',1,'comp14.pdf','AC',6),(29,'BASTIDOR',1,'2018-07-03 22:14:02','',1,'comp14.pdf','AC',6),(30,'BATERIA ',1,'2018-07-03 22:20:52','',1,'comp14.pdf','AC',6),(31,'CUCHARON',2,'2018-07-04 09:28:53','',7,'comp14.pdf','AC',6),(32,'TRANSMISION ',2,'2018-07-04 09:55:19','',7,'comp14.pdf','AC',6),(33,'TANQUE HIDRAULICO ',2,'2018-07-04 10:09:52','',7,'comp15.pdf','AC',6),(34,'COLUMNA DE DIRECCION',2,'2018-07-04 10:21:36','',7,'comp15.pdf','AC',6),(35,'BATERIA',2,'2018-07-04 10:32:04','',7,'comp15.pdf','AC',6),(36,'COJINETE',2,'2018-07-04 10:32:23','',7,'comp15.pdf','AC',6),(37,'CARROCERIA',2,'2018-07-04 10:32:54','',7,'comp15.pdf','AC',6),(38,'FILTRO DE ACEITE MOTOR',2,'2018-07-04 10:33:14','',7,'comp15.pdf','AC',6),(39,'MOTOR',2,'2018-07-04 10:33:25','',7,'comp15.pdf','AC',6),(40,'TANQUE DE COMBUSTIBLE',2,'2018-07-04 10:41:43','',7,'comp15.pdf','AC',6),(41,'CORREA DE DISTRIBUCIÓN DEL MOTOR',2,'2018-07-04 10:42:02','',7,'assets/filesequipos/41.pdf','AC',6),(42,'FILTRO DE AIRE PRIMARIO DEL MOTOR',2,'2018-07-04 10:42:26','',7,'assets/filesequipos/42.pdf','AC',6),(43,'FILTRO DE AIRE SECUNDARIO DEL MOTOR',2,'2018-07-04 10:42:47','',7,'assets/filesequipos/43.pdf','AC',6),(44,'FILTRO DE COMBUSTIBLE PRIMARIO DEL MOTOR',2,'2018-07-04 10:43:13','',7,'assets/filesequipos/44.pdf','AC',6),(45,'VÁLVULAS DE ADMISIÓN',3,'2018-07-04 11:40:18','',5,'comp45.pdf','AC',6),(46,'VÁLVULAS DE ADMISIÓN',3,'2018-07-04 11:47:26','CAJA DE TRANSMISIÓN',5,'assets/filesequipos/46.pdf','AC',6),(47,'FILTRO DE ACEITE DE TRANSMISIÓN',3,'2018-07-04 11:48:49','CAJA DE TRANSMISIÓN',5,'assets/filesequipos/47.pdf','AC',6),(48,'RESPIRADERO DE LA CAJA DE TRANSMISIÓN',3,'2018-07-04 11:49:05','CAJA DE TRANSMISIÓN',5,'assets/filesequipos/48.pdf','AC',6),(49,'EJE DELANTERO',3,'2018-07-04 11:49:21','CAJA DE TRANSMISIÓN',5,'assets/filesequipos/49.pdf','AC',6),(50,'EJE TRASERO',3,'2018-07-04 11:49:40','CAJA DE TRANSMISIÓN',5,'assets/filesequipos/50.pdf','AC',6),(51,'DIFERENCIAL',3,'2018-07-04 11:49:53','CAJA DE TRANSMISIÓN',5,'assets/filesequipos/51.pdf','AC',6),(52,'FILTRO DE ACONDICIONADOR DE AIRE DE CABINA',3,'2018-07-04 11:50:08','CAJA DE TRANSMISIÓN',5,'assets/filesequipos/52.pdf','AC',6),(53,'TANQUE HIDRÁULICO ',3,'2018-07-04 11:50:25','CAJA DE TRANSMISIÓN',5,'assets/filesequipos/53.pdf','AC',6),(54,'NEUMÁTICOS',3,'2018-07-04 11:50:47','CAJA DE TRANSMISIÓN',5,'assets/filesequipos/54.pdf','AC',6),(55,'MANDO FINAL',3,'2018-07-04 11:50:59','CAJA DE TRANSMISIÓN',5,'assets/filesequipos/55.pdf','AC',6),(56,'CHASIS',3,'2018-07-04 11:51:12','CAJA DE TRANSMISIÓN',5,'assets/filesequipos/56.pdf','AC',6),(57,'ALARMA DE RETROCESO',3,'2018-07-04 11:51:27','CAJA DE TRANSMISIÓN',5,'assets/filesequipos/57.pdf','AC',6),(58,'JAULA ANTIVUELCO',3,'2018-07-04 11:51:41','',5,'assets/filesequipos/58.pdf','AC',6),(59,'CAJA DE TRANSMISION',3,'2018-07-04 12:45:47','',5,'assets/filesequipos/59.pdf','AC',6),(60,'FILTRO DE ACEITE MOTOR',4,'2018-07-05 11:35:02','',6,'assets/filesequipos/60.pdf','AC',7),(61,'CORREA DE DISTRIBUCIÓN DEL MOTOR',4,'2018-07-05 11:35:29','',6,'assets/filesequipos/61.pdf','AC',7),(62,'FILTRO DE AIRE  DEL MOTOR',4,'2018-07-05 11:35:59','',6,'assets/filesequipos/62.pdf','AC',7),(63,'FILTRO DE COMBUSTIBLE  DEL MOTOR',4,'2018-07-05 11:36:18','',6,'assets/filesequipos/63.pdf','AC',7),(64,'RADIADOR DE MOTOR',4,'2018-07-05 11:36:36','',6,'assets/filesequipos/64.pdf','AC',7),(65,'FRENOS',4,'2018-07-05 11:36:55','',6,'assets/filesequipos/65.pdf','AC',7),(66,'FILTRO DE AIRE CABINA',4,'2018-07-05 11:37:10','',6,'assets/filesequipos/66.pdf','AC',7),(67,'BATERÍA',4,'2018-07-05 11:37:26','',6,'assets/filesequipos/67.pdf','AC',7),(68,'BOCINA',4,'2018-07-05 11:37:41','',6,'assets/filesequipos/68.pdf','AC',7),(69,'ARTICULACIONES DE LA TORRE ',4,'2018-07-05 11:38:01','',6,'assets/filesequipos/69.pdf','AC',7),(70,'CONVERTIDOR',4,'2018-07-05 11:38:20','',6,'assets/filesequipos/70.pdf','AC',7),(71,'MANGUERAS',4,'2018-07-05 11:38:40','',6,'assets/filesequipos/71.pdf','AC',7),(72,'AUTOELEVADOR TOYOTA',4,'2018-07-05 11:39:01','',6,'assets/filesequipos/72.pdf','AC',7),(73,'CHASIS',4,'2018-07-05 11:39:17','',6,'assets/filesequipos/73.pdf','AC',7),(74,'Motor Disel',11,'2018-09-16 23:46:30','-',1,'assets/filesequipos/74.pdf','AC',7),(75,'Motor Diesel C32',12,'2018-09-18 09:57:46','',5,'assets/filesequipos/75.pdf','AC',7),(76,'Motor Diesel C18',13,'2018-09-18 10:05:16','',4,'assets/filesequipos/76.pdf','AC',7),(77,'Cabezal',13,'2018-09-22 09:27:50','Cabezal de rotacion',11,'assets/filesequipos/77.pdf','AC',7),(78,'Cabezal',13,'2018-09-22 09:29:02','Cabezal de rotacion',11,'assets/filesequipos/78.pdf','AC',7),(79,'compresor',13,'2018-09-22 09:42:25','compresor  de aire de barrido 1070 HR2.5',11,'assets/filesequipos/79.pdf','AC',7),(80,'Filtros de aire ',13,'2018-09-22 10:25:39','Aire primario  52252061',12,'assets/filesequipos/80.pdf','AC',7),(81,'Filtros de aire ',13,'2018-09-22 10:28:32','Filtors primarios: 52252061\nFiltros de seguridad: 52146966',11,'assets/filesequipos/81.pdf','AC',7),(82,'Filtro de aceite de motor ',13,'2018-09-22 10:39:41','',11,'assets/filesequipos/82.pdf','AC',7),(83,'Filtros de combustible ',13,'2018-09-22 11:03:20','57294829 filtro secundario \n57886301 filtro primario ',12,'assets/filesequipos/83.pdf','AC',7),(84,'Filtros de aceite de compresor ',13,'2018-09-22 11:06:53','',12,'assets/filesequipos/84.pdf','AC',7),(85,'Filtro interior de cabina ',13,'2018-09-22 11:10:20','',12,'assets/filesequipos/85.pdf','AC',7),(86,'Filtro respiradero de tanque de combustible ',13,'2018-09-22 11:12:50','',12,'assets/filesequipos/86.pdf','AC',7),(87,'Filtro respiradero tanque de combustible ',13,'2018-09-22 11:15:43','',12,'assets/filesequipos/87.pdf','AC',7),(88,'Filtro respiradero de tanque hidráulico ',13,'2018-09-22 11:17:54','',12,'assets/filesequipos/88.pdf','AC',7),(89,'Filtro separador ',13,'2018-09-22 11:28:47','57569758 ',11,'assets/filesequipos/89.pdf','AC',7),(90,'Regulador UL-88',13,'2018-09-22 11:35:43','',11,'assets/filesequipos/90.pdf','AC',7),(91,'Kit de reparacion UL-88',13,'2018-09-22 11:41:33','36037471 KIT DE REPARACIÓN ',11,'assets/filesequipos/91.pdf','AC',7),(92,'FILTRO DE ACEITE MOTOR - CAT',16,'2018-09-22 12:01:39','',11,'assets/filesequipos/92.pdf','AC',7),(93,'Filtros colector de polvo ',13,'2018-09-22 12:02:01','',11,'assets/filesequipos/93.pdf','AC',7),(94,'Filtro de cabina exterior ',13,'2018-09-22 12:06:45','Items 11. ',11,'assets/filesequipos/94.pdf','AC',7),(95,'Filtro de Combustible Primario',16,'2018-09-22 12:07:54','Trampa de agua',11,'assets/filesequipos/95.pdf','AC',7),(96,'Filtro de cabina ',13,'2018-09-22 12:10:10','',11,'assets/filesequipos/96.pdf','AC',7),(97,'Filtro separador de compresor',13,'2018-09-22 12:16:13','',11,'assets/filesequipos/97.pdf','AC',7),(98,'Filtro hidraulico ',13,'2018-09-22 12:34:52','',11,'assets/filesequipos/98.pdf','AC',7),(99,'Filtros de retorno hidraulico',13,'2018-09-22 12:38:31','',11,'assets/filesequipos/99.pdf','AC',7),(100,'Filtro de compresor alta presion ',13,'2018-09-22 12:42:31','',12,'assets/filesequipos/100.pdf','AC',7),(101,'Filtro de refrigerante ',13,'2018-09-22 13:11:58','sin adjunto',12,'assets/filesequipos/101.pdf','AC',7),(102,'Separador de combustible CAT',13,'2018-09-22 13:15:40','sin adjunto ',11,'assets/filesequipos/102.pdf','AC',7),(103,'Bomba Principal',16,'2018-09-22 13:24:30','Caudal Variable',11,'assets/filesequipos/103.pdf','AC',7),(104,'Bomba Secundaria',16,'2018-09-22 13:25:46','Bomba Engranaje',11,'assets/filesequipos/104.pdf','AC',7),(105,'Motor Hidraulico de Traslacion',16,'2018-09-22 13:27:09','Motor variable',11,'assets/filesequipos/105.pdf','AC',7),(106,'Acople de goma',16,'2018-09-22 13:28:03','',12,'assets/filesequipos/106.pdf','AC',7),(107,'Guia de teflon cabezal',16,'2018-09-22 13:29:01','',12,'assets/filesequipos/107.pdf','AC',7),(108,'Cilindro Hidraulico',16,'2018-09-22 13:30:00','',12,'assets/filesequipos/108.pdf','AC',7),(109,'Filtro de aire secundario ',13,'2018-09-22 13:30:06','',11,'assets/filesequipos/109.pdf','AC',7),(110,'Motor HyD de colector de polvo',16,'2018-09-22 13:32:31','',11,'assets/filesequipos/110.pdf','AC',7),(111,'Cable de Avance',16,'2018-09-22 13:33:37','',12,'assets/filesequipos/111.pdf','AC',7),(112,'Cable de carro',16,'2018-09-22 13:34:30','',12,'assets/filesequipos/112.pdf','AC',7),(113,'Filtro de aire primario Cat',13,'2018-09-22 13:36:15','',11,'assets/filesequipos/113.pdf','AC',7),(114,'Filtro de aceite ',13,'2018-09-22 13:38:38','',4,'assets/filesequipos/114.pdf','AC',7),(115,'Cardan',13,'2018-09-22 16:12:22','',12,'assets/filesequipos/115.pdf','AC',7),(116,'Kit para reparacion de PTO',13,'2018-09-22 16:44:59','BEARING \n',11,'assets/filesequipos/116.pdf','AC',7),(117,'Bearing',13,'2018-09-22 17:07:18','item 10',11,'assets/filesequipos/117.pdf','AC',7),(118,'GEAR ',13,'2018-09-22 17:14:44','ITEMS 9 ',11,'assets/filesequipos/118.pdf','AC',7),(119,'Gear ',13,'2018-09-22 17:15:16','ITEMS 9 ',11,'assets/filesequipos/119.pdf','AC',7),(120,'Ring snap',13,'2018-09-22 17:20:11','items 17 para reparción de pto',11,'assets/filesequipos/120.pdf','AC',7),(121,'Ring retaining',14,'2018-09-22 17:23:07','items 18 ',11,'assets/filesequipos/121.pdf','AC',7),(122,'Shaft, imput ',13,'2018-09-22 17:29:04','items 7 para reparacion de pto ',12,'assets/filesequipos/122.pdf','AC',7),(123,'Adapter ',13,'2018-09-22 17:33:08','items 6 para reparacion de pto',11,'assets/filesequipos/123.pdf','AC',7),(124,'O´ring ',13,'2018-09-22 17:44:17','items 12 para reparacion de pto ',11,'assets/filesequipos/124.pdf','AC',7),(125,'Seal Oil ',13,'2018-09-22 17:50:43','items 16 para reparación de pto ',11,'assets/filesequipos/125.pdf','AC',7),(126,'PTO grupo completo ',13,'2018-09-22 17:52:41','PTO Completa ',11,'assets/filesequipos/126.pdf','AC',7),(127,'Bomba Principal ',13,'2018-09-22 18:03:14','Bomba principal Completa ',11,'assets/filesequipos/127.pdf','AC',7),(128,'Bomba doble',13,'2018-09-22 18:15:36','Sin adjunto, Bomba doble ',11,'assets/filesequipos/128.pdf','AC',7),(129,'Sello espejo eje de bomba principal ',13,'2018-09-22 18:21:15','Sello espejo. sin adjunto ',11,'assets/filesequipos/129.pdf','AC',7),(130,'Sello de  eje bomba principal ',13,'2018-09-22 18:26:08','items 5 ',11,'assets/filesequipos/130.pdf','AC',7),(131,'Cilindro Hidráulico de pull down ',13,'2018-09-22 18:34:12','Cilindro Hidráulico ',11,'assets/filesequipos/131.pdf','AC',7),(132,'Cilindro hidráulico capota de polvo ',13,'2018-09-22 18:46:59','',12,'assets/filesequipos/132.pdf','AC',7),(133,'Valvula Diverter ',13,'2018-09-22 18:54:40','sin adjunto ',12,'assets/filesequipos/133.pdf','AC',7),(134,'Motor Hidráulico bomba de agua ',13,'2018-09-22 19:12:15','',11,'assets/filesequipos/134.pdf','AC',7),(135,'Motor HCO Carrucel ',13,'2018-09-25 11:24:34','Item 36 ',11,'assets/filesequipos/135.pdf','AC',7),(136,'Motor HCO Fan Radiador ',13,'2018-09-25 11:39:41','Item 36 ',11,'assets/filesequipos/136.pdf','AC',7),(137,'Motor HCO Traslación ',13,'2018-09-25 11:57:56','',12,'assets/filesequipos/137.pdf','AC',7),(138,'Motor HCO Rotación ',13,'2018-09-25 12:02:03','Item 28 ',12,'assets/filesequipos/138.pdf','AC',7),(139,'Motor HCO Cable Winch ',13,'2018-09-25 12:06:09','Item 49 ',12,'assets/filesequipos/139.pdf','AC',7),(140,'Cables de Pull Down ',13,'2018-09-25 12:21:13','',12,'assets/filesequipos/140.pdf','AC',7),(141,'Cadenas De Holback ',13,'2018-09-25 12:26:54','Items 26 ',12,'assets/filesequipos/141.pdf','AC',7),(142,'Poleas de Cable de Pull Down  ',13,'2018-09-25 12:33:08','Item 5 ',11,'assets/filesequipos/142.pdf','AC',7),(143,'Sprocket deHoldback',13,'2018-09-25 12:37:08','Items 27 ',12,'assets/filesequipos/143.pdf','AC',7),(144,'Placa Porta Barras ',13,'2018-09-25 12:43:36','Items 6 ',12,'assets/filesequipos/144.pdf','AC',7),(145,'Guia de Barras ',13,'2018-09-25 12:50:59','Items 2 ',11,'assets/filesequipos/145.pdf','AC',7),(146,'Limit Switch ',13,'2018-09-25 12:55:23','Items 1 ',11,'assets/filesequipos/146.pdf','AC',7),(147,'Joystick Traslacion ',13,'2018-09-25 13:00:50','Items 26 ',12,'assets/filesequipos/147.pdf','AC',7),(148,'Joystick Rotación ',13,'2018-09-25 13:04:52','Item 25 ',12,'assets/filesequipos/148.pdf','AC',7),(149,'Joystick de Avance ',13,'2018-09-25 13:13:52','Item 66 ',12,'assets/filesequipos/149.pdf','AC',7),(150,'Burlete de Puerta Cabina ',13,'2018-09-25 13:18:37','',12,'assets/filesequipos/150.pdf','AC',7),(151,'Butaca de Operador ',13,'2018-09-25 13:23:45','Items 103 ',12,'assets/filesequipos/151.pdf','AC',7),(152,'Bocina',13,'2018-09-25 13:27:33','Items 1',12,'assets/filesequipos/152.pdf','AC',7),(153,'Motor Limpia Parabrisas ',13,'2018-09-25 13:32:50','Items 147 ',11,'assets/filesequipos/153.pdf','AC',7),(154,'Escobillas 20\'\' ',13,'2018-09-25 13:37:16','items 152 ',12,'assets/filesequipos/154.pdf','AC',7),(155,'Escobillas 28\'\' ',13,'2018-09-25 13:40:26','Items 153 ',12,'assets/filesequipos/155.pdf','AC',7),(156,'Switch 2 Posiciones DR/PR ',13,'2018-09-25 13:47:57','Items 27 ',12,'assets/filesequipos/156.pdf','AC',7),(157,'Acelerador de Motor ',13,'2018-09-25 16:39:00','Items 06 ',12,'assets/filesequipos/157.pdf','AC',7),(158,'Botón Pulsador (Arranque) ',13,'2018-09-25 16:42:58','Items 15 ',12,'assets/filesequipos/158.pdf','AC',7),(159,'Compresor Completo ',13,'2018-09-25 16:45:45','',11,'assets/filesequipos/159.pdf','AC',7),(160,'Valvula de Mínima ',13,'2018-09-25 16:51:08','Items 6',12,'assets/filesequipos/160.pdf','AC',7),(161,'Válvula de Alivio de Seguridad Tanque ',13,'2018-09-25 16:56:41','Items 31 ',11,'assets/filesequipos/161.pdf','AC',7),(162,'Mangon ',13,'2018-09-25 17:00:14','Items 3',12,'assets/filesequipos/162.pdf','AC',7),(163,'Cable de Seguridad ',13,'2018-09-25 17:05:19','Items 8 ',12,'assets/filesequipos/163.pdf','AC',7),(164,'Mangon de Descarga ',13,'2018-09-25 17:08:44','Items 8 ',11,'assets/filesequipos/164.pdf','AC',7),(165,'Bomba de Lubrican Compresor ',13,'2018-09-25 17:13:01','Items 2 ',11,'assets/filesequipos/165.pdf','AC',7),(166,'Cable Positivo ',13,'2018-09-25 17:18:04','Items 3 ',11,'assets/filesequipos/166.pdf','AC',7),(167,'Cable de Batería ',13,'2018-09-25 17:21:50','Items 2 ',11,'assets/filesequipos/167.pdf','AC',7),(168,'Cable negativo  ',13,'2018-09-25 17:25:04','Items 05 ',12,'assets/filesequipos/168.pdf','AC',7),(169,'Cable Switch Arranque ',13,'2018-09-25 17:32:06','Items 11 ',12,'assets/filesequipos/169.pdf','AC',7),(170,'kit Filtros de Aire Primarios ',16,'2018-09-25 17:48:33','Items 2 ',11,'assets/filesequipos/170.pdf','AC',7),(171,'kit Filtros de Aire Primarios ',16,'2018-09-25 17:49:11','Items 2 ',11,'assets/filesequipos/171.pdf','AC',7),(172,'Filtro Respiradero ',16,'2018-09-25 17:56:58','sin adjunto ',12,'assets/filesequipos/172.pdf','AC',7),(173,'Acople de Goma Bombas ',16,'2018-09-25 19:31:27','Items 1 ',11,'assets/filesequipos/173.pdf','AC',7),(174,'Guias de Teflon Cabezal ',16,'2018-09-25 19:40:06','Items 2 ',12,'assets/filesequipos/174.pdf','AC',7),(175,'Motor HCO Colector de Polvo ',16,'2018-09-25 19:58:28','',12,'assets/filesequipos/175.pdf','AC',7),(176,'Bomba de Agua Dynaset ',16,'2018-09-25 20:14:30','',12,'assets/filesequipos/176.pdf','AC',7),(177,'Bulon de Zapata ',16,'2018-09-25 20:17:23','items 13',12,'assets/filesequipos/177.pdf','AC',7),(178,'Tuerca de Zapata',16,'2018-09-25 20:19:03','Items 14 ',12,'assets/filesequipos/178.pdf','AC',7),(179,'Acople de Goma Copresor ',16,'2018-09-25 20:22:44','Items 1 ',12,'assets/filesequipos/179.pdf','AC',7),(180,'Válvula Control de Presión de Aire ',16,'2018-09-25 20:31:58','Oil Stop: kit de reparacion:2911 0118 00',11,'assets/filesequipos/180.pdf','AC',7),(181,'Luces de Trabajo ',16,'2018-09-25 20:35:23','Items 30',11,'assets/filesequipos/181.pdf','AC',7),(182,'Escobillas ',16,'2018-09-25 20:45:15','',12,'assets/filesequipos/182.pdf','AC',7),(183,'Espejo',16,'2018-09-25 21:28:01','',12,'assets/filesequipos/183.pdf','AC',7),(184,'Forzador F.C',16,'2018-09-25 21:31:40','Items 3 ',11,'assets/filesequipos/184.pdf','AC',7),(185,'Sensor Indutivo  ',16,'2018-09-25 21:35:40','B118, B178',11,'assets/filesequipos/185.pdf','AC',7),(186,'Cabezal SH',16,'2018-09-25 21:37:32','Sin adjunto',12,'assets/filesequipos/186.pdf','AC',7),(187,'Bomba de Lubricacion  ',16,'2018-09-25 21:40:35','',12,'assets/filesequipos/187.pdf','AC',7),(188,'Bomba de Grasa de Barras ',16,'2018-09-25 21:42:18','',11,'assets/filesequipos/188.pdf','AC',7),(189,'Rele K11 ',16,'2018-09-25 21:44:48','',12,'assets/filesequipos/189.pdf','AC',7),(190,'Relee K5 ',16,'2018-09-25 21:46:06','',11,'assets/filesequipos/190.pdf','AC',7),(191,'Sensores B336A-B336B-B147',16,'2018-09-25 21:49:40','',11,'assets/filesequipos/191.pdf','AC',7),(192,'Sensor B360',16,'2018-09-25 21:55:43','',12,'assets/filesequipos/192.pdf','AC',7),(193,'Sensor B336',16,'2018-09-25 21:57:28','',11,'assets/filesequipos/193.pdf','AC',7),(194,'Sensor B337',16,'2018-09-25 21:58:42','',12,'assets/filesequipos/194.pdf','AC',7),(195,'Sensor B134 ',16,'2018-09-25 22:03:34','',12,'assets/filesequipos/195.pdf','AC',7),(196,'Sensor B262',16,'2018-09-25 22:05:49','',12,'assets/filesequipos/196.pdf','AC',7),(197,'Sensor B361',16,'2018-09-25 22:07:11','',12,'assets/filesequipos/197.pdf','AC',7),(198,'Sensor B143 ',16,'2018-09-25 22:09:29','',12,'assets/filesequipos/198.pdf','AC',7),(199,'Valvulas Y115 e Y116',16,'2018-09-25 22:13:04','',12,'assets/filesequipos/199.pdf','AC',7);
/*!40000 ALTER TABLE `componentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conffamily`
--

DROP TABLE IF EXISTS `conffamily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conffamily` (
  `famId` int(11) NOT NULL AUTO_INCREMENT,
  `famName` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`famId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conffamily`
--

LOCK TABLES `conffamily` WRITE;
/*!40000 ALTER TABLE `conffamily` DISABLE KEYS */;
INSERT INTO `conffamily` VALUES (1,'Bulones','AC',6),(2,'Bujes','AC',6),(3,'Filtros','AC',6),(4,'Diafragmas','AC',6),(5,'Ejes','AC',6),(6,'Valvulas','AC',6),(7,'Sellos','AC',6),(8,'Retenes','AC',6),(9,'Tuercas','AC',6),(10,'Trampas de Agua','AC',6),(11,'Arandelas','AC',6),(12,'Guias','AC',6),(13,'Pernos','AC',6),(14,'Cojinetes','AC',6),(15,'Juntas','AC',6),(16,'Cables','AC',6),(17,'Termostatos','AC',6),(19,'Compresores','AC',6),(20,'Corta Corriente','AC',6),(21,'Correas','AC',6),(22,'Cubiertas','AC',6),(23,'Radiadores','AC',6),(24,'Motor','AC',6),(25,'Crucetas','AC',6),(26,'Espejos','AC',6),(28,'Pasador','AC',0),(29,'Platos','AC',0),(30,'Seguros','AC',0),(31,'Tapas','AC',0),(32,'Alternadores','AC',0),(33,'Faros','AC',0),(34,'Bombines','AC',0),(35,'Llantas','AC',0);
/*!40000 ALTER TABLE `conffamily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confsubfamily`
--

DROP TABLE IF EXISTS `confsubfamily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confsubfamily` (
  `sfamId` int(11) NOT NULL AUTO_INCREMENT,
  `sfamName` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `famId` int(11) DEFAULT NULL,
  PRIMARY KEY (`sfamId`),
  KEY `famId` (`famId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confsubfamily`
--

LOCK TABLES `confsubfamily` WRITE;
/*!40000 ALTER TABLE `confsubfamily` DISABLE KEYS */;
INSERT INTO `confsubfamily` VALUES (8,'Cocina',5),(9,'Heladera',5),(10,'Microondas',5),(11,'Futón',6),(12,'Alacena',6),(13,'Sillas',6),(14,'Taladro',7),(15,'Amoladora',7),(16,'LLaves',7),(17,'Afeitadora',8),(18,'Secador de Cabello',8),(19,'Masajeador',8);
/*!40000 ALTER TABLE `confsubfamily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confzone`
--

DROP TABLE IF EXISTS `confzone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confzone` (
  `zonaId` int(11) NOT NULL AUTO_INCREMENT,
  `zonaName` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`zonaId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confzone`
--

LOCK TABLES `confzone` WRITE;
/*!40000 ALTER TABLE `confzone` DISABLE KEYS */;
INSERT INTO `confzone` VALUES (10,'Caucete'),(11,'Zonda'),(12,'Rivadavia'),(13,'Sarmiento'),(14,'Los Berros'),(15,'El Encón');
/*!40000 ALTER TABLE `confzone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contratistaquipo`
--

DROP TABLE IF EXISTS `contratistaquipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contratistaquipo` (
  `id_equipo` int(1) NOT NULL,
  `id_contratista` int(11) NOT NULL,
  PRIMARY KEY (`id_contratista`,`id_equipo`),
  KEY `id_equipo` (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contratistaquipo`
--

LOCK TABLES `contratistaquipo` WRITE;
/*!40000 ALTER TABLE `contratistaquipo` DISABLE KEYS */;
INSERT INTO `contratistaquipo` VALUES (2,17),(4,17),(10,20);
/*!40000 ALTER TABLE `contratistaquipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contratistas`
--

DROP TABLE IF EXISTS `contratistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contratistas` (
  `id_contratista` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET latin1 NOT NULL,
  `contradireccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `contramail` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `contramail1` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `contracelular1` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `contracelular2` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `contratelefono` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `contracontacto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `estado` char(4) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_contratista`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contratistas`
--

LOCK TABLES `contratistas` WRITE;
/*!40000 ALTER TABLE `contratistas` DISABLE KEYS */;
INSERT INTO `contratistas` VALUES (17,'Clorox','Clorox','Clorox','Clorox','156565665','156565665','156565665','156565665','AC',6),(19,'Trazalog','Lib. Gral. S. Martin 1890','soporte@tazalog.com','soporte@tazalog.com','155555555','155555555','155555555','Soporte','AC',6),(20,'contratista emp 6','calle sin numero','contratista@gmail.com','','1555555','16666666','42555555','hugo','AC',2);
/*!40000 ALTER TABLE `contratistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `criticidad`
--

DROP TABLE IF EXISTS `criticidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `criticidad` (
  `id_criti` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET latin1 NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `estado` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_criti`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criticidad`
--

LOCK TABLES `criticidad` WRITE;
/*!40000 ALTER TABLE `criticidad` DISABLE KEYS */;
INSERT INTO `criticidad` VALUES (1,'Alta',6,'AC'),(2,'Media',6,'AC'),(3,'Baja',6,'AC'),(9,'muy alta',6,'AC'),(10,'666',6,'AN'),(11,'Alta',7,'AC'),(12,'Media',7,'AC'),(13,'Baja',7,'AC');
/*!40000 ALTER TABLE `criticidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deta_ordeninsumos`
--

DROP TABLE IF EXISTS `deta_ordeninsumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deta_ordeninsumos` (
  `id_detaordeninsumo` int(11) NOT NULL AUTO_INCREMENT,
  `id_ordeninsumo` int(11) DEFAULT NULL,
  `loteid` int(10) NOT NULL,
  `cantidad` double NOT NULL,
  `precio` double DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_detaordeninsumo`),
  KEY `loteid` (`loteid`),
  KEY `id_ordeninsumo` (`id_ordeninsumo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deta_ordeninsumos`
--

LOCK TABLES `deta_ordeninsumos` WRITE;
/*!40000 ALTER TABLE `deta_ordeninsumos` DISABLE KEYS */;
INSERT INTO `deta_ordeninsumos` VALUES (1,2,2,22,NULL,6),(2,5,1,1,NULL,6),(3,6,1,1,NULL,6),(4,6,2,6,NULL,6),(5,7,1,4,NULL,6),(6,7,1,5,NULL,6),(7,8,2,5,NULL,6),(8,8,4,10,NULL,6);
/*!40000 ALTER TABLE `deta_ordeninsumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deta_ordenservicio`
--

DROP TABLE IF EXISTS `deta_ordenservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deta_ordenservicio` (
  `id_detasercicio` int(11) NOT NULL AUTO_INCREMENT,
  `id_ordenservicio` int(11) NOT NULL,
  `id_tarea` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tiempo` varchar(100) CHARACTER SET latin1 NOT NULL,
  `observacion` text CHARACTER SET latin1,
  `monto` double NOT NULL,
  `id_componente` int(11) NOT NULL,
  `rh` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detasercicio`),
  KEY `id_ordenservicio` (`id_ordenservicio`),
  KEY `id_componente` (`id_componente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deta_ordenservicio`
--

LOCK TABLES `deta_ordenservicio` WRITE;
/*!40000 ALTER TABLE `deta_ordenservicio` DISABLE KEYS */;
INSERT INTO `deta_ordenservicio` VALUES (1,1,'tarea test 02','',NULL,0,0,NULL),(2,1,'tarea test 02 b','',NULL,0,0,NULL),(3,1,'tarea test 02 c','',NULL,0,0,NULL);
/*!40000 ALTER TABLE `deta_ordenservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deta_remito`
--

DROP TABLE IF EXISTS `deta_remito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deta_remito` (
  `detaremitoid` int(11) NOT NULL AUTO_INCREMENT,
  `id_remito` int(11) NOT NULL,
  `loteid` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `precio` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`detaremitoid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deta_remito`
--

LOCK TABLES `deta_remito` WRITE;
/*!40000 ALTER TABLE `deta_remito` DISABLE KEYS */;
INSERT INTO `deta_remito` VALUES (1,1,1,100,0,6),(2,2,7,50,0,6),(3,2,8,25,0,6);
/*!40000 ALTER TABLE `deta_remito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresas` (
  `id_empresa` int(50) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET latin1 NOT NULL,
  `empcuit` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `empdir` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `emptelefono` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `empemail` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `cliImagePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `localidadid` int(11) DEFAULT NULL,
  `provinciaid` int(11) DEFAULT NULL,
  `paisid` int(11) DEFAULT NULL,
  `gps` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `empcelular` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `zonaId` int(11) DEFAULT NULL,
  `emlogo` blob,
  `clienteid` int(11) NOT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (6,'DEMO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(7,'MINA CHINCHILLAS','20000000','2000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'�\��\�\0JFIF\0\0`\0`\0\0�\�\0C\0		\n\n\r\n\n	\r�\�\0C��\0\0�F\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0���5\�lσ�\�\�4\�O\�\�m;Rӧ{[�K�YC=��\�^7F�2�� �\0�5\�U�\�~\��{_�\�xֿ��z�x{%�cRp��yU�<�7��g�wmO\�o�n��_�X��\0\�Ya�\0\�h�\0�\��%�\0E�\�_���v��j+\�?\�J���\����ҿ��_{?���n��_�X��\0\�Ya�\0\�im�\0n�\�S�Q|_�]$�0DD�U�31\�\0<\�I5�\�\�b���C�~���u��\0>�\�\�\�tQ^�\0\���\�?b\���\�\�\�\Z͍��>�Kn�\�b6v�\0jD\��\0mE{�~s��*eF{ŵ�}F�jӍXm$���QX���e�6weD@K3\0rk\��\0\�>	\�b�W�\0�e��\0�5�\0���\�c�k���Sskq\�k~*_�Gtͧ\�XJ\�)\���`�2+�����efe^��U\�׹��\��\rXѧ&\�\��\0�I�\0�\��%�\0E�\�_���v��n��_�X��\0\�Ya�\0\�k�����\0����r<?�ҿ��_{?���n��_�X��\0\�Ya�\0\�j��?k7�����Q�u�\��ml��Igqqr碤i!fc\�k���w�\0�b�\�\�� ���\'�hR�:���S{.�\�\��}j��I\�K���\�\�D�\��L�\�\���\�b�\0�\�\�>�����?\�Z\�\�\�^^\��_�\�n�\�3�랢�����\0���\�J�\0\�s�\0q\��68\�d0\�vR����\���\�,&x���m=Z_��\��7G�/�,_\n�\0��\0\�\�t|�\0�\���\0\n\��;_͵�_\�%���\�|g�\�_�}���\�O�7G�/�,_\n�\0��\0\�\�t|�\0�\���\0\n\��;_͵��?\�\������\0\�\��\��$�\0\�t|�\0�\���\0\n\��;G�7G�/�,_\n�\0��\0\��\�QG��C�~���\�_�}���\�O�7G�/�,_\n�\0��\0\�n\��\��E�D$����\�\�6;CE\�[\'�dI_\�]&)>�ҫ��Q\�Z�֒�\��E�k\�\ZO�\�~գ\�v�l\�:\�\�\'�<�nBGP*\�\�.~�^�\�^-CFԵ\r&��\�l�	�>�Ђ?:���!�\0�\�|@�-�X\�\�nn�{\�u�K��ڽ�g�Yx�񜕔�=�t>^;�1\�熚��Z\�\�O�=<a\�\�B�\\/\��_=�~\�QX_\r~%h<���\�Z�\Z���ۭ՝\�$\��\�AHH �A�_(��+4}ri����\�e\�&\��\0R��\�\�mS̚\�\�U�(W�\�\�@\�ׇ�߿��\0��`���꺲j��V\���\�&\�/�q�ٰvD���\0k�\�����>$~\�~*{�\0\Zk\�\�b��\�\�Y�\�la9\�q�m�\�v<W\�\�5�ǯj\�,;��_�ǅ��\���\�t�}?3�?\�G���}�;q-�~*��}\�$��ömx�Q;���\0fC��\�\��\0�\��\Z��q�|+\�5(A�P\�b�fu	�w\�zW\�(��\��n]M{\�\�\�\�����7\�Z>��\0�\�\�i�\0\�\�}�s\�}#,v+k�3\�䌟|�I��ʚ\�W�\�	4\�\�\�w�> �\'<q�00\��O��\�LR��\��\0U�����\��\�O��2�\0���\��j�\���᫧_�z\�\�\�6Z\�W�pz�.��ϧ>\��\����>�D�Xo��BG\����\nO�kv�W\�\�:\�\�X�\�rV\�ܶk\�N>��\�uQ\�\�|�ԽW�X��~|U�\�\��\0.�\�Oh�$\�\��V�y\�A�����py��k���%��\�_���a��|E�xwU��\�k.u;%�\�$O�\\\�_���K\��*���rho\�\�Ei��H\�!�g���m�D1�\��A�ђJ\�H\�ߌ\��V�\n.�\'\��u\�\�\�}nQĔq��S\\�\�\��?\��>���+\��\n�m�n��=��_�<k_�_=I5�\�~\��{_�\�xֿ��z�\��=_E��Ɵ��\��\0#\�(���0��(��\0��\0�w?i?�D�3x�\��\�Y��\��WMV?v�\�O��=^X�\0׸�\�\n�d~\0�`\�?g��^�gR��S8*0/�\0e\�rf5�,�ƚw\�o\� \�\'ZV�g\r���`K��V�_`=�*8��&��_�-���p�7\�\�]	o�?�7�\rZ(�s\��\��7\�¿x�Xp�g��\����)u�\�\\�Y��\�޾6r��wg\�ɤ��? �\�\�\�K�O\�;�|?��~���\�uʫ�}r�#�\�!\�2s�o|U���|`�����X�\�\�<G�O�]0\'d�\\�\�8�\0V\r~�`�:�+_^����e�x�T뾯ON��QE\�p�{���R��\�?�xE{���R��\�?�q\�?\�\�/ɝ�o�\�/�G�G�K_�?�r\��\�_��\�:�S��\��]�\0�+�\0q\��\�W\�\'�\0#Z_����\�\�x��E�\�\��)�4QE~\�~J���\��\'��#\�_\�Oػ\�\��K��\�U׵�3ϼ�{\�i\�\�q��(Q�\0\�^Vm�\�\�骵�i�io^��U�\�\�\�T鴬����E@�\0�\�\�ٻ��~��\0�\��=G�9��n�\0�_��\0\�\���\0�W\��\0�8/\�ܿ\��\�\�W�\���\0#����\����\0J���qṬ��q᫷E�j�\"x�Y]\�o�!�+��\���5O\������uK��}\"Uk[\�M�{m\"��]�;IF�\'k8\�{O\�s	8Q��\�Ϸ��<�\�!\�\�b�Ti\�\�u��eI�ih�t�ѿ�7��ɻ�gŻσڽ\�}\�I-��$b~\�}\Zo�5\�X��މq˜��\�z����\�^]\����M4\�\�p�\"�Y��\0�W�?�6|@��Q�B�Ķ�c�C\�l�A��N��\�\0�=	�\��\n�\\x���uj�\\\�\�[�\��P�2=�\���\�8�-�\�)\�\Z{]�ҿ\�Ҹ[)`g\�\����\�����\�U��\��\0���|i�I(��cm�Z��(H� ;|͌e\�\�q^G�1\��]\Z0�MR����?:�Zuj:�\�waZ��}�|R�E��\�T\����D6Z}�\�\�&9$\"p$��Y�\��\0\�¦�؃\�_���l�\�?پT^N\��_�\�n\��m\��ן�f/��!G��i\�\�\�\�\�2��Ī�*�c\��\0��\0h\�\�Gr\�\n�\�\"�w \�u{X�Ǻ	\��0��j�����FxN�\�u{xyc�\�V\�R�\�	<\��\0��<W\�<Ѷ�>\\q�\�,m\�\��ϻ|�\�\�\�u�G�\�\�?\r\�^\�n��_O�ҵ;W6w�<۸ꮌ+{��_��U\��&,��o��=K\�M\�\�ǚ=ȅ�\rI��+\���x�v%_k&T��n�����7#\�\�?�x\�\�\�s\�y\�M�\��L������^�R�\�%\�+�\�e:Ν�ǣ\�~����\�|���|	����\�÷-i��v�;\�Y;��a\�r�:bZ�\��\0\�\�?Ϋ���K@�%�\�\�H�|\'�\�&O^8�\�Qa�\0\�\�F����WS6~S�\� �n�?�iW�2��\'R\��I��R\�\�IJ4\�ַ�\���)�Z\�\�\��\�K��6�o�D�\����1�?�I*}\�\�X�W\��\��=�{\����u�[xqf�+ۈ�RʲO$���\�\�1\�E��!SUd�;\�\�ޗ\��R���]EiY_ש\��\�~\��{_�\�xֿ��z��k����?\���1\��\�|��\�	�z���>7�?�O\��G�QE�a�\�wG�\�\�����˦\�ˀ�R ꅱ\�\�>�\'�5J���\0�6�;Ӿ/~ؓxWVC&�\�?\��m\�\��\�db3\�\�=��\�o�:�� ����sQ�M� \"��#\�\� �\Z\�*2\�K\�$�N\���NʘG41+i6�k��\0C�i�\0\r���\�n�ȓ�:�3W�q{�0\�k�Kn\�\�0�,K_�u���o���\0�{���K���\�k�\0\�\�\'\�Y%e6ώ��k�\�dz�����◽y|�\�\\��s�ltn����{~6?zk�\�����\0\�^~\�\Z/û����/<�\�W��\�Օ\�#�\�1���\�<\��<\��\��\0g��\�\�5�px�P��\Z\'�\\xJ(ې�n\�Ԏ��4\������pXǪ�^\�=\�O\�_��<O���\nQ[\�O��?3\�\�Q�Z�?\�/\�E\�\�7�Ix7���@<C�G\�\�2\�[/\�q(\�B�7��]�R4\�\�Od���e*r�5N�e�8�\�׾\�\����h!�\�˚$�6�\0�#��j�}	�\0Vѭ|=�\0���\�����ݽ��1�$1��\n��\0_=\�xZ\�ڄ*\�\�\�?�\\\�EQ�:K춾\�`�w�\0�b\�@~�\0\�����w�\0�b\�@~�\0\������Z�\�\�\�r\���_\�\�薿,\�\�\������\0\�u~�W\����\04W�\����\�xO�F��\�\��%���?��*�\0ۿ�R?,h������+��\0�S�׏¯��\0\�i+�\�\�\�&Ԭ�X�\�o��wU_��<�&y�\�S峾\�\�\�t{yn�%Qǚ\�\�\�����\�\��_�������\��\0	���\0A]K�\0_�k\�\�)\��\0���\0�>��u�����n���3ÿ\n<;6�\�msJ\�4�uf�\��\�-\�\0�X��v\�\����ҿk\�\�\�>*\�?�m��K\�\�x\�os+�8�ܻ(`VP@#����Ra%\�\��2�4�`=2{r:�nk\�ȸf�]Q\�s\�V\�\�~,�3�#�:��r\��\�\��Z(�������7\�{�|^�d�%汬ZY@����Y\�\�\��%|~�d�\Z~x\�\�b�跚Z��+MƯ\�\����k�\��Q�#]�o��\��\����\0\�/�䋿5�\�\�H��\�2f8\�<�\���\�~cƸ\��t\�Sz\�W�n\��_y�G\�\�p��5�\�\��\03�p��\�|%\��\'R��\�Q\�.d����v�\�\�v!�{U:�k�\0�\��\0�%u_��$����Mk�n\�Ck������c\�P/�I�\�9|nb��L^ZM�^Koq�O�\�E*�8*�� �\r}\�S�Q\�\�Ui�z���\0[w>+4\�*\�:sZt}\���#�?�\�Y�w\�;]c@յ-V�m���/o<\'\�]a�\Z̢�&�Vg�8��f}��S���\�\�E�����\�(@@5�,\\�\0�Иٛ��7�y\�}?��F�\��\0��~\�zY\\h��_>�9D%G�������\�\�xk-���$����=�?ftU.���^���\��\��?�<|M�5>7>�r\����J�d\�\�\���G�~,�W⭓\\�_ľ�%��L�V�\r\�\0ze�f�\�b�iZ�ޅ�Ewcuqeu	\�\�Hc�3\�ExX�\�\�Z}l�\0\���q�e�ji�6�\�����\\W\�/\���\0����\��\0\�.�\�\ZLL\�x��\����:�\�	08\���\�?�\'\��k��\0�LcE7��yo	�m\�P\�t�>w��\�Qԩ�\��\0�|�i\�\�]F������\��l��p�\�*q|�\��\0N���8��>�\�_8{\�\��m�t\�\�|b�\0�\�Z�\0\��\��I�\�\��\��\0�\��\��\0cƵ�\0��\�\�p\'�\��/\���4�?W�YEW\�\�\�_�A��\0\�\��\�\�?\�\�o\�\��2��4\�Y[��ψV!�ePo��G/N��06O,K�pk��\0�\r�\0\�C�_�\��&�H�\�����?a�Mkn&ּ\�\�v%T+\n��L\�804��\"zW\�\�8\��9=��o���\�r)�-Smz��WG\��Igw.�y\�<3�\�H\�F\�Ѱ9Ѓ\�j,�K_t|:g\�Ϗ�\0\�6��\0�%�\0\�r[]G���i�\�h��&\���\�˔I.8\�G�\�W\�;��\�1,\�rI9$\�]w�\�\�Wm>=\�Ykr\�\�m\�\�\�\�\�N\0\�#��\�W��d��*�?jM��/�\�g9��Λf*��XW\����9\rkǾ1��}m�\r�iNˑ��q%é\�\��~�\r_���\��	��8\�g�4�_�\�-�ϬKh5=\\\���\���#s\�0V/�B�\�1\�{��֣�\�w�_3���^\�\�^\�W��\��G\�/���R3�K�\�0�\0\�,5�}�\0o�\0���R�\0��?�K\r|\�^�W�\�G�1��\�\�ﵿ\�/ͅ{���R��\�?�xE{���R��\�?�Vc�\�W�2���\���_\�\�薿,\�\�\������\0\�u~�W\����\04W�\����\�xO�F��\�\��%���?��*�\0ۿ�R?,h������(\�����\0��~\�?��<m�^�\�-c\�Z\�n�\�Q�8���*�,@�כ�\�0\�J��v\�\\�rܮ�:nmt���EI�k�\��!\���\0A�_�5��\0�\��\�����\��\0b�\�_Z�l\�\�} ��藓��\�B|�$\0�\r\��6��͖�QҠ\�2W\�X\�\�rV\n��V\�^\�?\��(���\�-\�Z�\0�5H�t\�+�F�s�\�\�ai���*�$��G\�w�\0B���Akv׾3���o\�E`\�˩óS�^\��aտڔ(\�\r����\���\�]��>3h7�\��N��],\�\�Gr�$�LJH������\Z~\�\��\�o\�Ɓ\�\r\�\�\�z���P�2[H>Y!|ttp\�}׎1_%\�9�3�^+�Zsog鷦�O�ᬫ	���fܣ�z5������g\�\n�\�?\n�\��;MM;F\���\�\\\�~�ҿ\�s\�c\�\0\0\0;Z+;T񆓡܈/uM:\�b���\�R6 ��9\�~Q9N�ܤ\�\�\�鐌c�$h\�C���\0�t� ��\Z[�xFѵ�X�cg�pH��08P\�v\�~\�>��\�xE2U���pT����\Z��R�2Ҧ\�|E�%��7�_�F#\�N�\Z\���3S�\�\�]V�\Z�䪓]��ο��\0�m\��\�\�\�u�|�Y�\�:��\�_2�N�\0�%�\�\r\�g�\�6~&���\�h��3��Xܤ\���\�\�1����\"C�?\�\���X�_�H\��#�¨g$�\0\�k\��+\�\��ni���i�[�\�\�ጺ�n��/�\�2\��\0g_��e�W�|W\�Р�\�GJ�\�\�@#\�W���\�\n�\��7\��0H�#�m\�\�I\�97K�+����\�3\�\�ױ�\�ŵz?s���E~\n\�F�޿U�G�g�Z�N�\0���\0��#�\�\�\��\�C\�\ZKxj\�MGQ\�n.\Z\�\�KX\�\�^	��9\�)\�\�,k\�r\�\���\�h?&�\��<\�,���\�\�u٭��kO�\�0\�>x�O\�4K��/W\�n\�\�\�\�\�Ko*�)��h�A�ՙ��Ӻ\����`?ښ\��X�Ǎ�\��q	�\�\�aa��\���E\�dQ�\���\r��%\�\�\��\0�Jv&\�\�\�]D��ז\�U�\0HR��3:\�G\r��F\'��\��?hʱ\�a)֞\�k\�~�W�m�t\�\�|b�\0�\�Z�\0\��\��I�\�\��\��\0�\��\��\0cƵ�\0��\�\�p\'�\��/\���4�?W�YEW\�\�\��A��Hv��\0`}C�\0D\�\�]��\Z���\�1G=�\�m�ȡ�Da��wb�\r?\���\��������\�\Z����\�`�¿6~�\�?\����\��\��?\��Px\��ҫ�t=I\�͟���b[w\�y0�\�#�y�~��\0�Ɵ�����~*\�\�\�;�o\�Ϊ\0�魘��!�I\�\"A����_�d�\�\�\�{���џ�ྫ��%�\����QEz��}�\0���\�\�9�m�3B���F��\��\0mj\�FS\�\�HQ�ْO.#�\0]k�\Z\�+�w�\r\���φ>x�\�u��ۯ\�\r\'Lvins+/b�3m>�ߟ\�~E\��\0�c\�8\�o�_����\�`�\��\�\�\��\�\�>�V�\0�H\�\�/�\��\0��\�\�U�o���R3�K�\�0�\0\�,5�~���\0�Q�\0$~q��\��\0�6\��\0�LO�H\�� ��\�\��\0�LO�H\�� ��Y���_�\��b\�\�\��?�?�Z���\0��\��\0\�s�\0q\���_�?�r\��\�_��\�:�%\�?�\Z\��\0����~�\��\0�,��\0n�\0\�H����+�c�P�\�g�	M�\0(��U�\0`��%<\���\0�)�\�?\n�\��\0����\��:\���\\��S�?��|{�\0����᫿f9��\Z\�\��VMKO�d���7\��UC�䗍Tcy���1_�\�u0�\�^��\���}�\�CFTjm%c�c\���\��G�&�\0�J��\�5M\�`�W�\�MOK�#�� \�Z�8�(%@3�\�\�j�\�����\Z������\�\�\�,�եB��\�������\0�~ݿ�>2?\�\��\�i\�J\�f����1\�,\�,g����\�k\�Zt2��\�$n\�\���H\�{\Z�\�O���\��}ȼ�<%xק\��]Q�M��}�\0��~ϣ|~�7��:���S\�9{Y�\�{�R\�\0�q\�\�\�?�IOۡ?mٺծ�O�<G�\�\�\�sy�\0mU[w�4I8mu��R\�\�\�k�`ռ-���XjZ\rĸ+��\�1\�)h\�\�7��\�~M�U�U��\�4�\�~���\�\��C2�\�.n��\�\�\�t�\�{��xKT��/�Mj\�\�Kմ�\�\�\�\�\�3\��)\�#)\�k>�dM5t~I(�\��\'h$WFdt;��\��\�+�k�	��\0��G\�_i~����\�YB�\�ݝ�n�T\0%2�\�$8%�\�L�\�\��d�\�\�\�=�m\�\�n�O+ͫ\�f\�KT�OfQ�\�-o�=[L\�l�en,n�\�&�2*֯�\�h\Zlח�V\�V�\�t�\�\"\�c8\�f8\�_ˍ�\�\�4\����e\�\�{\Z�P\�\��m�j�����͐�\��\�zt�|�\�%ͥ}?\��\0\�R�\�[Z:�\0����\0l�\0��xÿ�I�\��\Z֟\�\�x�\�]*�\�O�n,t�YWd��r�J\�Y�;K\�\nߎT����\�r�9}eK[\�\�\�ϕ\�sZ�\�֢��It\n(�f��c�\��|+�$�\�Tnu�OnSL�?<�E�&=�1�\�7V��V��4(N�EJ��{��@?�3�<��%\�n\�1O\�]n\�Q����T�N=7\�)��lQ_gx�:g\�_\�>\�mR\�H\�\�ⰲ�O�1�D_�@\��\'1żV&x����]?��a��\�Hկ\�\��\�?��\�xֿ��z��k\\�,��\�u-3A�$\�5\�\�ͼJ�ݝ݇��^�\�K.�9�ss+ooў~u��\0hB0\�\�\�w\��\0�?�*+��\��4�f�Q�\�±\"}䶸��u\�+b�QY\�\'\�\��.��\�ʃ\�_\r#l����\�y8�\�\"��<w\�}�\�\�C\\\�	+|�\0�\�\nPN\��\��\0\��\��A���(v��\0`}C�\0D\�\�q<g�\�ǳ5ׂu_\�RD��m\�\�\�-	8�\�_�\�o��\��IY���s\�2l�`��\�K�V\�ko�g��\0�B�\0ga�R~\�\�6��0yڜ�&�K\n��\�6_B\����sLnU�VS�P}+��\�k�xyؓ�\�ē�M�G?�\�wd<J�\�r�(s&��~Gw\��\�\�5�ZV\��\�\�m���U\�\r\��.�\r���@�7��\�v�Р\�K,�{� W�\��\0\n\�ÿ�\0\��/�&�m��\0A���htM&)�`\�\�g\Z�092=\�\�|{iG�\0&�\0�x��uַ�K�\0\�\�\�\��N\��q�\�X\�\ri�Y��0.&3Kۗ���:�wTb����INnswoV}\� �\�\�\��\n\�\�c�\0\�#��\�_9\��\�}T�{��K��^^Im#ws\�H\��\0\�T_��;�\0@\r�\0\0b�\0\�k\�0�m\Z4!G\�ߕ%�vV\�|f+���i\��\�\�m�=\���\�\�{���\0\��~�\0\����\�3���\���\0\�_�MKg\�MN��{}J��#�$�\�4t>���U�\�ե*^\�\�ɯ������hU�\�\�i�=��\0�կ\��9t��W�\����\�\�pj��\�\�;\�&/�\�Y_y9��\�˳8\�7�\�~U�F=`�pĸ�r\�M�M~�\�\�x�a��������O˱��\�_\��+��\0\�E�\0����_�V��\0���\0�1�5��\�\�\�\��M�\0\0�/�%�\0\�\����\0�?�\���?\��\��5\�����\0�ZJ���W\���4_���\0��k+4\�T�\��\��mH\�P��\���>\�U�э%O�\��ߣ]�\�\�?��RUNk�moՒ\�HN)k\�O�<7�\n� \��\�߳�\�\"���n�\�\Z\rԃf����\� -p��@�\�{\\\�o<5�\�i���\�w�|\�mso*��	Q��0\�C��Iu���hW�RO>��\�4�Y\�\�6g\'�$��_S��4�\�r�(�E굵�^�s\�s��>q��\�%�\��_z?��+���\0�q\�\��\00\r�\0\0b�\0\�h�\0�o\�\��\0h���\0^������\0��<_�%�\0\�\����\0�?�/\�+��\��\0b\�?F񍘚\�K\'\�z݊7�X�b\���t\�\�s� �\0D�\r�~��\�Zf��\�è\�\Zͬw�WQc��E�=��y\��\0·�\�9��\��\n/�&�\�~\�\��Fl�C\�x[\�\�\��U���x\�Ո�b}�\�|\�w�C4�Ҥ\�5���\�\�\���-�]NP�^ho\�\�x_�O�	?\�ۖ\�\�SE\�O��l�V�\0\�\�*;�/���\�1���\�/\�c�	\��{�N��>+���i01�\�\�o4\�8o5ɜ	7+��\��\n��=X\�<O�[\�\�8&7�E?FT ��\��۟~#ΰ\�<p\�-\�[�Y\��\�6`\�r9Ȯܳ:\�2�(N��F��������O�\�\��\��Mk\���msI���~\'�\�>5K%ǈ�\Zx?P��\�Iy���2繚 ��꼃\��\0�C_\�\�\�.\�o\�SG.1���]�I\��8�:`p}9���\�I?��W\�|�^ħ��ů;�џ�ԙ�\�_�pO\��\0�\0>\�0�\0�\��\0aVt\�� �\��c34�W�\�T��Z���\�\�G�\�v�ܿ\�\��N\�4~��G\�qZ�\�}j7E\�5\rcQ�8�\�\�\�\�\'��* ,_�\��\0�F~\�~�$��]�\�2�\0�\�]_�>\�<�\�^\�\�/�~�W�5���9��nѱ�4�>+8\�:|���+��\�K�4�~m/\�\�]�\�\�%\��\�~3~ȿ�B_�?��5!�s\�!\�n�I�\�\'uH3��y��^��~�~\�?�\��\0d�����F��n�O+��7�\�4\�uw8�\0p�@\0z)7W\�\��/\�U\�=�\��~g\�\�6�r�\�\��!h���OT�/\��\0��\�?c��\Z\��\�7\�#��W	&�t�\0,P)\���\�;UY�v\�?j�\�k\�/\�\��O\�~ ���iK\�\�H\�i\�z\�\�X\�n@\�{e\���\�\��8\�\�P����4	3i�x�3u���\�\�\�FX\�`��w�i\�~��y}��\�W�m_�]�\�c\�}aaS�RO\��\�l�fԮ�xd��C��4.\�߀95g]�\�y\�-ON�ӥ~U.�xY��`3\�~u�7���\n��5��&�\�\�.\�N\�u\�Ě[Y����E\\Ȩ�9��_���\�\'�:�ۿo|-s\���L\�\�hZ\���(.��*$��Ȓ.r�*yߙq#	�pxy8/��+|���vACAN5қ�=����\�\�?�x�P���m�iW��f�f\�[{�I\�\�qёԆR=A�\��\0�#�Z��5	~�D����m\Z\�H\�\�]V���2/\���b\�2��4?�7?\��^�Ɵ�@\Z&����q\�ͻ\�<t\�\�^��8�\Z~~˟to�n�ƒ\�H֦�S��\�x�r�HH(\�\�9\�^.y�\�8\�<���[\�v\��\0�s\�\�rl\��S�Q꯺�\05\��O�@֯4��_\n\�\�\�\�\�>��Jɻ��u��\�?�Lu�\n\�_��\0\�_��r��O�?�\�?�l��_E\��_\�t�\��\0�3�\�Z�Y�D�o�%\Z?�\��\0�\��%�\0Ə�Lu�\n\�_��\0\�_�?�G�\0\�\�g\�o\�\�\rk\��|+�x������&9�JS`\���\�\��/�;��V�\0�\'�?��\�qb��\r��*�&\�\�_\�w\�xc^�kF�JI>�O��Lu�\n\�_��\0\�^\��\0\��F�w�}|)�]F�X�_�2�ò�\�&�^�\�\��\0���	>�\0�\��\0\�k��U��Ͼ\r�ņ�\�xN\rwD�\\\�\�\�\\4�ڸ\�\�y�\�W��\�-J��I]5�\�N\�/b�V�IUME�ף?=?\�\�r�J��|���V\�\�BV)Y?l�\�_�_�\��\0�Կ�%�\0ƾ��\0��\�\�|�\0b�\�e\�~y\�\��\�W�m:~���!�5�\�I�_�4\�2\��\0\�+��\0\�K�\0�\�Z��\0����\0�/�5��\0��\0�~�\Z�\���\�+��kz������ۃ\'�?��\�D�\�\�\"�N�_A]�\0�\'?g[\�v��\�\n�\�\�-\�m׳,��μ�O`\�V�S�\�\�{tv\�zx~\�֣\ZѪ�\�^�\�\�6��/\�~�[�kvW	��\�\�K�#X��W\�?�M\��-�>|GҼ-�S_��G��I�յ-E\�\�\�#1\0Lf9yb�\�\��*\�9�G~�O�s��|k\�\�\�<\�\�\'�A\�gk7x#�Ks!強f^I \0�׈W�[	�\�0\�Ԇ�WZj��xt�%�\�X�=tv����g�\�~�\�I\�\r*\�P��\�\�hM\�L\���aV\�1��YI{d\�\�p�|A�\0	���\0A]K�\0_�k�\�����.?m�#׃-�M{\�\r?�zG���\�Zi�#��\�!ܙ����\�RzW\�\�9�;�q��\�\�YS|�\���#\�\�<<�\�}�Q����U��\�\��#_\�<ߴ�\�M�G}p\'�����@�e\�bPm\�9\�\�\��\�����5���\0��?\�M~ׯ\�\���\�E�\�0[�\�n�ُ\�b��}+���\���\�e_ٗ\�:��3\�lb�\�\�^?\�\�\�#�VL\��w\���\0eR��:4��i\�\�\�\��c\Z\�Z�\�*\��u��?\"?ෟ��\�\�/\�6�úF�s��\�#�F�LȒ]\�uۜ�$\�G��\n�\��_�������\�m_U�׵[�\�ɤ����\�g9idbY��RI?�}�\0���G\�e�d�O��3�o\�G�wY\�\�YJBޢILhG]�\�t�\�iӡ�`R�\�N:�\��o�?8�j��o�\�\���_���\�/\�\�P��\��^(�P��?x�i�\�#\�\�X$�R��\�\�\�vB#R��0���U�\0	���\0A]K�\0_�k���X?\�Y_�\0\��\0�[:�\n��k\���^��\�\�\�\�{E:T\�IA/ş�\��n��{��\�>5K�˫�_\n9,�\��[sɯկ��5�:�0\�|a\�\�J-/B\�\��&��g$\�cE\�\�\�B��I5�7�\0\�\�\��\��\�7�\0\�\�j�����|_�\�G�Ygq\"h���Q\�!V���u܅�q6��\�W��\�^\�~���o\�/\�\�[�}O%Uޮ\�/[�Q�m�\0�d>\'�\�\Z\�j7��Ar�i\�l\�+���\�\\θv$uE\">\�ln?!\�+O#;�;�\�\�\�$�ܚLW\�w���	Oᯍ\�O��4\�\�7W��\�\�m\�&(�3˯����\�\�b��Z�\Z�pYF�G�+K-\��_��T)\�3lO+�\��{%�|�\��Gz��<7\�]��Ҵ�JҴ�����p@\�\�q�1���\nE�\0��w\�=�\�Q\�<\r\�\�#ßl��汍,\�\�\�90\\(0\�Y[n[nE|��(T��֦\��[\�\�\�i��\�\'�j�*�\�t��\�Y�E�\'�D~*~\�Zճx[\�wW\ZR6��;\\i�������V�\�����\�\����\��\�\�\�\�s�.��\�\�\�\�.�ђ>�C+`nV\0\�G\�ÿ�7�\�W�%\�5o�b3����[���\0�\�C�\0+\�_�&����	�x�\�O�3x�/\�EƟ��;h���IA2�f�s�\�~�W\�\�q�J3^\�v[��J\�3\�\�Y�	�W��o�Zz+\�\�~2~Ӟ,\�a���!\"jz����QEÀڤ\�p\�\�:��\0����\0�/�5\��\�?�r�\0?\�fԿ��J��eam�|H���\�i-�ƥm\��\0u��P��M}�F-���>&�\�,D�����ʿ�\��\0�Կ�%�\0Ə�Lu�\n\�_��\0\�_���	\��+c�D�\�q�\0㴿�\��\0\�[���\0�\0\�q�\0\��\��}K\�_\�}O����\0�\��?\�1\��\0\�+�\�K�\0�~��\0����֭�\�c]]\\\\�\�\��d.W�/\�&���\0�w�\�\��$��\0��\0�]���g?���օyÿ\�Z��H�`vx\�YAUl�9�$q^>y\�\�|fXzt䛶�.��\�O\'\�\�F�T��I\�\�QE|!�\��B��\�\�7�Z�O��Z\�F\�!�\�(@�\��ܓF\��#\0�\���A����\0�|g��\�O\�,|D�\�1h.��>\�\'h�ԟ3~:��\��\�_��\0�\��\�L���.Z�GQ�&��\��E�\�]C�Go��K\�U�!�l�\�q�\rx!�\0����\04�R�\0?��\�!�u��\�0���\�[6�\�k���Բ�D��*|���W��٣�\�\��\0\r�C�\�U{\�\Zׇ\�m�o�X\�i*�ج�?�b濣/\����7\���F\�Y\�\�K�y\�۫�z\�h\�\�$\�AIP��N2�Tc�_����y��\�MN�\0\�>𗇭\�y.5{M\�L\�$[�\�AW�4T\�:8�2N\�\��\0���\�σ�\�\�&��\�ߊ�\�~|\'���!|\n�Y�\�Oxp�3��,P\�\�\Z0v8\�fW\�w�{��~\�^:��k�<X�^\�\�kpF�멺)v�X�Yv�*ɵ[v�\�\�ȿYi�g�uKm\"\�MCJ���++�M�s�\�W�e\0\�k\�\���ח_�G\���\�\�\Zc�����Q����>ٯs9ʰ��4\�R+�&ӵ�\��\0�\��\��\�\��qm&�t����G\�\��r��O�?�\�?�l��_���r��O�?�\�?�l��Q\��\0�+�\��\0��>&�\0��_����\�)k�7�	�\��q�O\�\�\��o�r��\�hͯ\�ZGy䍛8��m\�\���)ػ�|��\0\�~��\0\�\�&/�aB���3|�\�KC�\r\��F5UX�d�\�~	W\�\��y�\0%�\�/����\0\�J\�\��b\�����\0���\0]���f߃�*a�\�P�I�\�Z\�c�G\�\�\�����G\�\�Q\�$b�lۉc��\�\Z3NKv�\�3\�ʸrX\\T+ʬZW\�\�4~t�\�?�u�	�\0�M?��\�<\��3�9�\0���O��i�\0��5�\�_Qß�-�\���\�8��F5}W䎫\�<s\�\r3G���:\�w�kg�\�A[��mDp�,I8�Oz�?\�3�\��_�6�)��\�L���/�\�_�?�K\��%\���\�+��?��e\�\�ko�e\��Ρo\�yZ�\�)�E:�\�q��8\�\�$\�\��X�\'��\�Q�\�\��¶3Z�>�d>f��4���\�0\�\�G%�P\�X�C���\�8\\\��\�\��i�֩Y������W\�q\�0q\��\�\r\'d\�\�{_Ky#M+\�L\�H\�$�K31\�by$�\�\����<e�p�Q�\�t��_\�N�\�Z\�\�V\�\��ʬxy�\�c$��(f_��\0�F�\�N\�����-4K\�ko\��\0G��[Ƣ?�Â �U\0\0++�hǀ\�W\�Y�#�up�K�\0-�ۯ�1?���\��:򵵷�wW�����<7e\�\�\r\��F��\���h\�\�a�Q�DQ�xP~	�^�e/�e�\�/\\�\�\�\��\Z�y:\�\Z\�\�΅q�˼\�8���_\Z�o�e�h�\��\�\�\Zu��\�O�.\�űD\�$��w�\�_\\ہ\�\�\�\\/��.9s�vz?W���\0Ͻ\�,�\�8)r�z:��\�\��\�\������&ӵ�6\�\�u*\�+\�Y\�ᡖ7�=\�\0\n�\���\0���~�$���\�E�ִ\��U��e`�!��؟X\�\\\�\�1�J��4��\�q}*\�\�\�\'�S��k�h�\��U�B�;N\������\��\0��\�\�\��u+S��$H���\�l�X�\"\�>��\�iǥ~L��?��\0�\�\�U\�O\�۫��\�Үsc\�1\����lS����]3L�\�t\�{;H\"����a��\"D�\0UP8\0\0\0ҾC�3.Jq�A\�-_�\��\�\�}We����[h�z�\Z|\���\0���Q��/�\��u�������\0�\�\�2�%�\0\�/�\0N�u�]\\\r�\�?��&\'\'�\��+���\0\�\�\��\��\�7�\0\�\�j�\��\n\�wy}�\0���\�.���ݻ�KKs�\0,\�}:`t���\�\�o�:\�ئ�\0�YmX��p\�\�y�\�����\�V\�to�1��/-�Xd��f%��=K7�MkF�a\�3���^�?\�Z2�A	G\�\�\�\�k�>�\�\��	\�ac�~\�\�#\�\�Kn\�\�ea\�\�{dy1�>��\�\Z�Y�\��_�R/E�\�\�\�׍uK=U\�\�q\�\�˹DP\�H\�ͱv\�J�ʹ7�*��\�q�\n�|gI_�ݯ+o�\�\�\�\�J��������Ԅ\�\�Y�\0���K<\'��.\�,4�b\��\0\�U����\�V\�Kc+.\�\�y	\Zd0W���`�_˰�J����v�\0�����B��U\�#\�S֌f�\n�5�\0\���t �j׼?�\�&�C�7q��$G�㿷�\����\nu�_�����i!�\��9�\�\�\��R\� ��\�\�,2i/�8\�6<c\�\�p�7JU�8�\�{?�H��\\I�\�\�Tiߙ�_\�s�c���\0�����\0c6��\0�RW	]\�\�C�\0\'/��\�mK�\0J��{\�6�t�5+u�`Fc2�\�\�\�n3���\�(;Q��_��ux�b%���E~��?�v?\�\�\�\'�\��\0�]/�)ػ�|��\0\�~��\0\�\�\��4�\0\�\��\�\��\0\�\n���\'\��B�\0�J^\��?\n�\0\��\0���W��\�]�\0>_\0�\0�?O�\0\�\�\�>��\�\��M\�ƫ\�+�\�ѤB\�A��\�=�E+���3�\�\r|�g���8Ҕl\�v�\�ߩ\�d,�5�9TR���y\�\�E�G\�!�\0�\\?\��S~ܟ	\�5\r�x�\�Y4䔄�T��2Z3��Ī�1;Cn\�/\�\�\�� �M⻝\��.��kgl\�w�\�\�\�v��\�$W��\��&��wƝ0Yx�¾�=��=SO�\�G�\�IS\�\"��#⪘\Z~¬y�Ӻ�\03泞������gת~�\�2zN�w�\�%Ս\�͕\�rh%h\�_��|Y�W�m�\rwľ ֡�#�\�f�E\�q�\�@\�O\�_�\�\��\��m�����\�0b-�;\�Q�1��u\0{t�\��\0�GOٳC \��\�\��\��\0\�5K��\�\�ǷJ�g\��\�:r���#\�\�cW��G�\��V?t]�Ě����gu}t\�8-��ie��EUPI\'\�\n�o�\0�4�)���^$O�\���x�`h�\r\ZR\�p�J�\�\�}\�JEN��\0\��¯\�\��c\�\�\��c\�,T�I�i�[\� =w:�f�I�ּ\�\�b�:#\��\�\�o/=\�k)\�jxZ��isIm\�/�?%�\�\���\0\�O����~fW��㿃~��=��&�<E%��۶��\�v\��`�E;A�\�:\�V�2G�&?��\0\�u�S\�԰xHa�M�\�6̳N�/,B�nkin\�.�G�K�+�Z�\0�H�S�\0D\�\�\����n��d��?�L~�\0\�9g�\0\�\�\��\0_(�\0ϧ��\��\0R��\0?W\��\0�ikԿa�=�������\0K\�\�#�#\�O����NY�\0񺱤~\�\��?�Z\�\�|;�-����qoqo�\�\�-����і0U��A �+*\�qFt\�d�Mn�(�l\�8\�ڭ\Z{�?*?\�\��\0[\���\��\0K.k�ҿ�O|�_\�\�J+\��C\��!��?&)�=*�#L��ZE$.I8d�\��\0�H�S�\0D\�\�\����n�r�0��\�\�*m��^\�\�̸Vx�L�\n�\\\�-\�n\��\0�\��\0�e�4�\0����o+\��\0o?\�7O��?f�{�wB�9\�5܃�<��\��쭖��ؑ�\�+\�<+\�\'��\ZV��\�\�6�k�ɳ��K{xw1fڈ��18�Ozѯ����\�KKF\�伮\�}5$c����EE�\�X�\\|S\�C�^&\�4mZ\�k\rSI��\��\�Q�-捊:0�?J�\�\�s��տb\�\�3D�%����˫Y#m�вr<ؽ7pI\�触EA^!�����Z�Եo\0x\'S\�o|�Wz��\�\�73�c\�MS�?�\04\�\�\����n�ާa\�\�t�Qm5g��4�B�*��*\�i\�i�\0\��\�+\�o���hW�j:6�i\�\�y\�4R(elG�\�\ri^\�éY\�osW�c�)2H�`��pA\�U</\�=/�\Z���\�\ZF�h�\�\�\�-\��,v�\0�,I\�u$օ~y&��&\���\�\�n9_�PO\�v\����W��R���n\�d�mc1-	���?މ�\�+�t�\���\0|N\�\��/�</\�\�\"G>��Aw,q�X i��bp8\�>���\0�����\�\��\',�\0�\�~��\�ƔcV�rKWu���؎\r\�)өdފ\�yn|_�\0�~\�c\���c▧m�T�\�LgR\Z->!�\�Y�\�\�\�\�_�UWDЬ�5�[i�u���ae\Z\�omm\��\n��\0U�\0��U�Y�:X\�L�\��\�\�}\�\�\�0q\�\�\�B\����>W�\0�\��\0\����\0p��:\�\�\�]Q~*���\�}+\\\��\�gK�\�\�Y\�[%ż\�X2\�GNT���q\��\�\n\��=�\0\�r\��\0�\�\�dKO.\�ʄ\�\�y7��_�\�g|=,}uYO�\�\�_�}�\�\��7�\0\�V�\��\�7�\0\�\�j�F���\0e�~\�\�5/x��-\�&����i�+�.x�\�\�$ѕ�O\�G\���c�Ky\�x_\�\�s\�\�\�>��Ai$��v3F��\���]>+\�ͳw�\��r�qj\�\�=<�,Xl\'\�*>e��\�\��\��g�6>&�\�:�\�\�4��	1k\�-:�\�e?w\�\�`��I1\�;K����_\�\��\�u\�\",�ȥ]eX �\�\�\���~,\�Is��.�\�%��\�B\�s��&ݣ$��k\�<uh�\�\�\���_��\03汜�����\��\0\����\0\�\�<k�hgL��mtһ~\��:A�M��\��^I\Ziݙ\�\�Y�\�b{����\0�)�̿�M?�\�\��&��\0�\0�,?g��ב\�i�\n�5,�}ө	u0=�r����\�\���\�ӕ�\"�S�p�6m*�#oV�\0D~~\�߱ď\�\�Qi���\�Ő�%ޯp��`;�&#\'b\�s��5���	�\�^��>Z�WGe�Ԯ\�ZΪ�\�S�#�\�\�\�|���@\�\�31�-7K�\�t�m,\�വ�P�Cb8\�Q\�*�\0�>+\�s�$��/gnXv\�\�Ϩ\�2\n}>i��\�\�\�\�B\�%�\"\�ͩ\�T�\�⿦\rC�W�a�_\�uu�\��wWWR4�M/�\�I]�Y��y$�I\'�j/�d��?�L~�\0\�9g�\0\�\�\�i�\��G\�=txx6s���Z�\��\0�ih�\�k�#\�O����NY�\0�?\�>�\0\�1�{�\0�\��\0��\0_(�\0ϧ��?�*��}\��O斿S\�\�/���\����\�\��d��?�L~�\0\�9g�\0\�\��\�?\n|,�W�#���>ݳ\�?\�zt6hٻf�\0-Wv\�͌�\�q\�י�qm<nxh\�i\�\�߳O�=��\�\�G\�_��[�k��\�\�E�\�\��\�',2);
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envios`
--

DROP TABLE IF EXISTS `envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envios` (
  `id_envio` int(10) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `ultimo_envio` varchar(10) NOT NULL,
  PRIMARY KEY (`id_envio`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envios`
--

LOCK TABLES `envios` WRITE;
/*!40000 ALTER TABLE `envios` DISABLE KEYS */;
INSERT INTO `envios` VALUES (1,'2014-08-20','2010-06-22');
/*!40000 ALTER TABLE `envios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipos`
--

DROP TABLE IF EXISTS `equipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipos` (
  `id_equipo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) CHARACTER SET latin1 NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_baja` date NOT NULL,
  `fecha_garantia` date NOT NULL,
  `marca` varchar(255) CHARACTER SET latin1 NOT NULL,
  `codigo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `ubicacion` varchar(100) CHARACTER SET latin1 NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_sector` int(11) NOT NULL,
  `id_hubicacion` double NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `id_criticidad` int(11) NOT NULL,
  `estado` varchar(2) CHARACTER SET latin1 NOT NULL,
  `fecha_ultimalectura` datetime NOT NULL,
  `ultima_lectura` double NOT NULL,
  `tipo_horas` varchar(10) CHARACTER SET latin1 NOT NULL,
  `id-centrodecosto` double NOT NULL,
  `valor_reposicion` double NOT NULL,
  `fecha_reposicion` date NOT NULL,
  `id_proveedor` double NOT NULL,
  `valor` double NOT NULL,
  `comprobante` varchar(255) CHARACTER SET latin1 NOT NULL,
  `descrip_tecnica` text COLLATE utf8_spanish_ci NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `id_area` int(11) DEFAULT NULL,
  `id_proceso` int(11) DEFAULT NULL,
  `numero_serie` double DEFAULT NULL,
  PRIMARY KEY (`id_equipo`),
  KEY `id_empresa` (`id_empresa`),
  KEY `id_sector` (`id_sector`),
  KEY `id_criticidad` (`id_criticidad`),
  KEY `id_grupo` (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'Perforadora Ranger 500','0000-00-00','0000-00-00','0000-00-00','TamRock','EMPER001','La Laja',6,10,0,2,13,1,'AC','0000-00-00 00:00:00',1000,'',0,0,'0000-00-00',0,0,'','',11,3,8,11111),(3,'Cargadora WA250','2018-09-02','0000-00-00','2018-09-29','Komatsu','EMCAR003','0',6,12,0,1,14,1,'AC','0000-00-00 00:00:00',0,'',0,0,'0000-00-00',0,0,'','',1,3,8,11111),(4,'Autoelevador 01','2018-09-02','0000-00-00','2018-09-29','Toyota','EMAUT001','La Laja',6,10,0,3,15,2,'AC','0000-00-00 00:00:00',0,'',0,0,'0000-00-00',0,0,'','',1,3,8,11111),(5,'Perforadora 680','0000-00-00','0000-00-00','0000-00-00','TamRock','EMPER002','La Laja',6,11,0,2,16,1,'RE','0000-00-00 00:00:00',0,'',0,0,'0000-00-00',0,0,'','',11,3,8,11111),(7,'este equipo es una pruba','2018-08-11','0000-00-00','2018-08-10','Black & Decker','AIR000507','4444',6,11,0,3,17,9,'AC','2018-08-17 00:00:00',0,'',0,0,'0000-00-00',0,0,'','dasdsadsadsa',2,10,9,2234444),(8,'este equipo es una pruebaaaaa','2018-08-11','0000-00-00','2018-08-10','Black & Decker','AIR000507','4444',6,13,0,1,18,9,'AC','2018-08-17 00:00:00',0,'',0,0,'0000-00-00',0,0,'','dasdsadsadsa',11,10,9,2234444),(9,'PERFONADORA TOYOTA','2018-09-16','0000-00-00','2018-09-22','Toyota','MT666','0',6,12,0,2,18,10,'AC','2018-09-14 00:00:00',1540,'',0,0,'0000-00-00',0,0,'','sdfgdfdfg',6,10,9,123),(10,'Descrip','2018-09-08','0000-00-00','2018-09-29','Toyota','Cod12-2018','13456,46123',6,12,0,2,15,3,'AN','2018-09-07 00:00:00',20,'',0,0,'0000-00-00',0,0,'','gfhfdgdhhfh',6,3,7,123),(12,'Perforadora Drilltech Tamrock 500','2018-09-17','0000-00-00','2018-09-17','DRILLTECH','EMPER11','0',6,14,0,5,20,11,'AN','2018-09-17 00:00:00',5,'',0,0,'0000-00-00',0,0,'','',7,12,11,23344),(13,'Perforadora DM45','2018-01-01','0000-00-00','2018-09-22','Atlas Copco','901','0',7,15,0,7,20,11,'AC','2018-09-18 00:00:00',1150,'',0,0,'0000-00-00',0,0,'','',7,14,13,8614),(14,'Perforadora DM 45','0000-00-00','0000-00-00','0000-00-00','Atlas Copco','903','0',7,15,0,7,20,11,'AC','0000-00-00 00:00:00',0,'',0,0,'0000-00-00',0,0,'','',7,14,13,6052),(15,'Pantera DP 1500','0000-00-00','0000-00-00','0000-00-00','Sandvik','905','0',7,15,0,8,20,11,'AC','0000-00-00 00:00:00',0,'',0,0,'0000-00-00',0,0,'','',7,14,11,12),(16,'Roc L8-30','0000-00-00','0000-00-00','0000-00-00','DRILLTECH','906','0',7,15,0,9,20,11,'AC','0000-00-00 00:00:00',0,'',0,0,'0000-00-00',0,0,'','',7,14,11,10),(17,'descrip','0000-00-00','0000-00-00','0000-00-00','Bahco','123456789','La Laja',6,10,0,1,13,10,'AN','0000-00-00 00:00:00',0,'',0,0,'0000-00-00',0,0,'','',6,3,4,2222222222),(18,'Equipo de prueba','2018-10-19','0000-00-00','2018-10-30','Toyota','123456789','0',6,16,0,11,19,9,'AN','2018-10-25 00:00:00',22,'',0,0,'0000-00-00',0,0,'','',6,10,4,123456789);
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fallas`
--

DROP TABLE IF EXISTS `fallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fallas` (
  `id_reparacion` int(100) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id_reparacion`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fallas`
--

LOCK TABLES `fallas` WRITE;
/*!40000 ALTER TABLE `fallas` DISABLE KEYS */;
INSERT INTO `fallas` VALUES (1,'Reparación por falla');
/*!40000 ALTER TABLE `fallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha_equipo`
--

DROP TABLE IF EXISTS `ficha_equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ficha_equipo` (
  `id_fichaequip` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) NOT NULL,
  `marca` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `modelo` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `numero_motor` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `numero_serie` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `dominio` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `fabricacion` int(11) NOT NULL,
  `peso` float NOT NULL,
  `bateria` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `hora_lectura` float NOT NULL,
  PRIMARY KEY (`id_fichaequip`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha_equipo`
--

LOCK TABLES `ficha_equipo` WRITE;
/*!40000 ALTER TABLE `ficha_equipo` DISABLE KEYS */;
INSERT INTO `ficha_equipo` VALUES (1,4,'1011','1012','1013','1010','2017-07-09','nose1010',0,10,'10',1),(2,242,'marca12','12m','120','1212','2017-07-10','fefe',1980,10,'10',1),(3,0,'nuevo modelo 5051','5051ng','5051','5051','2017-07-10','5051',1950,51,'510',1),(4,0,'marca pepe 14145','nuevo pepe 14145','14150','14145','2017-07-10','14',1914,14,'14',1),(5,242,'nuevo gm 6061','6061 mgpepe','60610','6061','2017-07-10','6061',1960,61,'60',1),(6,242,'8081p','80812','80813','8081','2017-07-10','80814',1983,80,'81',0),(7,339,'5252 marca','5252 marca','1212','5252','2017-07-12',' gemma',1989,12,'20',0),(8,11,'cat','3512','123345','0001','2018-01-30','lwo070',0,0,'',0);
/*!40000 ALTER TABLE `ficha_equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupo` (
  `id_grupo` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET latin1 NOT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,'Carguio','AC',6),(2,'Perforación ','AC',6),(3,'Auxiliares','AC',6),(4,'grupo test02','AN',6),(5,'Perforadoras','AC',7),(6,'Perforadora Rotary','AC',6),(7,'Perforadora Rotary','AC',7),(8,'Perforadora Top Hammer','AC',7),(9,'Perforadora DTH','AC',7),(10,'grupo test 2018/09','AN',6),(11,'NUEVO','AN',6),(12,'grupo test 003','AN',6);
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `herramientas`
--

DROP TABLE IF EXISTS `herramientas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `herramientas` (
  `herrId` int(11) NOT NULL AUTO_INCREMENT,
  `herrcodigo` varchar(255) NOT NULL DEFAULT '',
  `herrmarca` varchar(255) DEFAULT NULL,
  `modid` int(10) DEFAULT NULL,
  `tipoid` int(10) DEFAULT NULL,
  `equip_estad` varchar(4) DEFAULT NULL,
  `herrdescrip` varchar(255) DEFAULT NULL,
  `depositoId` int(11) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`herrId`),
  UNIQUE KEY `1` (`herrcodigo`) USING BTREE,
  KEY `depositoId` (`depositoId`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `herramientas`
--

LOCK TABLES `herramientas` WRITE;
/*!40000 ALTER TABLE `herramientas` DISABLE KEYS */;
INSERT INTO `herramientas` VALUES (1,'HR-OFA-Linterna','Linterna',1,NULL,'AC','HR-OFA-Linterna',1,6),(2,'SW80','Robust',1,NULL,'AC','Taladro',1,6),(4,'HR-TT-Organizador Tornillos','Organizador tornillos - Stanley',1,NULL,'AC','HR-TT-Organizador Tornillos',1,6),(5,'HR-TT-Escalera 7 peldaños','Escalera 7 peldaño - Ayinco',1,NULL,'AC','HR-TT-Escalera 7 peldaños',1,6),(6,'HR-TT-Mascara facial','Mascara facial',2,NULL,'AC','HR-TT-Mascara facial',1,6),(7,'HR-TT-Prot Audit-Vincha','Protector auditivo copa tipo vincha',1,NULL,'AC','HR-TT-Prot Audit-Vincha',1,6),(8,'HR-TT-Llave combinada 10mm','Llave combinada 10mm',3,NULL,'TR','HR-TT-Llave combinada 10mm',1,6),(9,'HR-TT-Llave combinada 13mm','Llave combinada 13mm',1,NULL,'AC','HR-TT-Llave combinada 13mm',1,6),(10,'HR-TT-Llave combinada 15mm','Llave combinada 13mm',1,NULL,'AC','HR-TT-Llave combinada 15mm',1,6),(11,'HR-TT-Llave combinada 17mm','Llave combinada 17mm',1,NULL,'AC','HR-TT-Llave combinada 17mm',1,6),(12,'HR-TT-Llave combinada 7/16\"','Llave combinada 7/16\"',1,NULL,'AC','HR-TT-Llave combinada 7/16\"',1,6),(13,'HR-TT-Llave combinada 9/16\"','Llave combinada 9/16\"',1,NULL,'AC','HR-TT-Llave combinada 9/16\"',1,6),(14,'HR-TT-Destornillador de puño philips','Destornillador de puño philips - Bulit',1,NULL,'AC','HR-TT-Destornillador de puño philips',1,6),(15,'HR-TT-Llave Francesa 30mm','Llave Francesa 30mm',1,NULL,'AC','HR-TT-Llave Francesa 30mm',1,6),(16,'HR-TT-Cinta métrica de 5 m ','Cinta métrica de 5 m ',1,NULL,'AC','HR-TT-Cinta métrica de 5 m ',1,6),(18,'HR-OFA-Arco de sierra','Arco de sierra',1,NULL,'AC','HR-OFA-Arco de sierra',1,6),(19,'HR-OFA-Extractor de poleas 150 mm','Extractor de poleas 150 mm',1,NULL,'AC','HR-OFA-Extractor de poleas 150 mm',1,6),(20,'HR-OFA-Alargues','Alargues',1,NULL,'AC','HR-OFA-Alargues',1,6),(21,'HR-OFE-Espatula chica','Espatula chica',1,NULL,'AC','HR-OFE-Espatula chica',1,6),(22,'HR-OFE-Espatulas medianas','Espatulas medianas',1,NULL,'AC','HR-OFE-Espatulas medianas',1,6),(23,'HR-OFE-Barretines de 0,80 y 0,90 negro, naranja','barretines de 0,80 y 0,90 negro, naranja',1,NULL,'AC','HR-OFE-Barretines de 0,80 y 0,90 negro, naranja',1,6),(24,'HR-OFE-Arnés','Arnés',1,NULL,'AC','HR-OFE-Arnés',1,6),(25,'HR-OFE-Llanas','Llanas',1,NULL,'AC','HR-OFE-Llanas',1,6),(26,'HR-OFE-Llana dentada','Llana dentada',1,NULL,'AC','HR-OFE-Llana dentada',1,6),(27,'HR-OFE-Balde de Albañil','Balde de Albañil',1,NULL,'AC','HR-OFE-Balde de Albañil',1,6),(28,'HR-OFE-Anchada','Anchada',1,NULL,'AC','HR-OFE-Anchada',1,6),(29,'HR-OFE-Bota de goma','Bota de goma',1,NULL,'AC','HR-OFE-Bota de goma',1,6),(30,'HR-ODE-Boquilla para termofusión 1\"','Boquilla para termofusión 1\"',1,NULL,'AC','HR-ODE-Boquilla para termofusión 1\"',1,6),(31,'HR-ODE-Boquilla para termofusión 4\"','Boquilla para termofusión 4\"',1,NULL,'AC','HR-ODE-Boquilla para termofusión 4\"',1,6),(32,'HR-ODE-Boquilla para termofusión 2,5\"','Boquilla para termofusión 2,5\"',1,NULL,'AC','HR-ODE-Boquilla para termofusión 2,5\"',1,6),(33,'HR-ODE-Boquilla para termofusión 80mm','Boquilla para termofusión 80mm',1,NULL,'AC','HR-ODE-Boquilla para termofusión 80mm',1,6),(34,'HR-ODE-Boquilla para termofusión 2\"','Boquilla para termofusión 2\"',1,NULL,'AC','HR-ODE-Boquilla para termofusión 2\"',1,6),(36,'HR-ODE-Boquilla para termofusión 1 1/4\"','Boquilla para termofusión 1 1/4\"',1,NULL,'AC','HR-ODE-Boquilla para termofusión 1 1/4\"',1,6),(37,'HR-ODE-Boquilla para termofusión 3/4\"','Boquilla para termofusión 3/4\"',1,NULL,'AC','HR-ODE-Boquilla para termofusión 3/4\"',1,6),(38,'HR-ODE-Boquilla para termofusión 1/2\"','Boquilla para termofusión 1/2\"',1,NULL,'AC','HR-ODE-Boquilla para termofusión 1/2\"',1,6),(39,'HR-ODE-Termofusora 1','Termofusora 1',1,NULL,'AC','HR-ODE-Termofusora 1',1,6),(40,'HR-ODE-Termofusora 1600w','Termofusora 1600w',1,NULL,'AC','HR-ODE-Termofusora 1600w',1,6),(41,'HR-ODE-Boquilla para termofusión 75mm','Boquilla para termofusión 75mm',1,NULL,'AC','HR-ODE-Boquilla para termofusión 75mm',1,6),(42,'HR-ODE-Boquilla para termofusión 90mm','Boquilla para termofusión 90mm',1,NULL,'AC','HR-ODE-Boquilla para termofusión 90mm',1,6),(43,'HR-ODE-Boquilla para termofusión 110mm','Boquilla para termofusión 110mm',1,NULL,'AC','HR-ODE-Boquilla para termofusión 110mm',1,6),(44,'HR-OVI-TermoAnemómetro ','TermoAnemómetro ',1,NULL,'AC','HR-OVI-TermoAnemómetro ',1,6),(45,'HR-OVI-Termometro infrarojo','Termometro infrarojo',1,NULL,'AC','HR-OVI-Termometro infrarojo',1,6),(46,'HR-OVI-Pinza extractora de fusible NH','Pinza extractora de fusible NH',1,NULL,'AC','HR-OVI-Pinza extractora de fusible NH',1,6),(47,'HR-OVI-Pinza amperometrica con puntas','Pinza amperometrica con puntas',1,NULL,'AC','HR-OVI-Pinza amperometrica con puntas',1,6),(48,'HR-OVI- Soldador Cautín 30w','Soldador Cautín 30w',1,NULL,'AC','HR-OVI- Soldador Cautín 30w',1,6),(49,'HR-OFE-Multimetro con puntas','Multimetro con puntas',1,NULL,'AC','HR-OFE-Multimetro con puntas',1,6),(50,'HR-TTA-Pértiga DPA 3 KV','Pértiga DPA 3 KV',1,NULL,'AC','HR-TTA-Pértiga DPA 3 KV',1,6),(51,'HR-OVI-Detector de metál ','Detector de metál ',1,NULL,'AC','HR-OVI-Detector de metál ',1,6),(52,'HR-OVI-Programador de variador vel.','Programador de variador vel.',1,NULL,'AC','HR-OVI-Programador de variador vel.',1,6),(53,'HR-OVI-Pinza amp con puntas','Pinza amp con puntas',1,NULL,'AC','HR-OVI-Pinza amp con puntas',1,6),(54,'HR-OFA-Caja de llaves tubos medidas chicas(completa)','Caja de llaves tubos medidas chicas(completa)',1,NULL,'AC','HR-OFA-Caja de llaves tubos medidas chicas(completa)',1,6),(55,'HR-OFA-Caja de llaves tubos medidas grandes(completa)','Caja de llaves tubos medidas grandes(completa)',1,NULL,'AC','HR-OFA-Caja de llaves tubos medidas grandes(completa)',1,6),(56,'HR-OFA-Caja de mechas(12,16,20mm y 1/2\")','Caja de mechas(12,16,20mm y 1/2\")',1,NULL,'AC','HR-OFA-Caja de mechas(12,16,20mm y 1/2\")',1,6),(57,'HR-OFA-Amoladora 4,5\" 840w 9557 HP','Amoladora 4,5\" 840w 9557 HP',1,NULL,'TR','HR-OFA-Amoladora 4,5\" 840w 9557 HP',1,6),(58,'HR-OFA-Llave Stillson 36\"','Llave Stillson 36\"',1,NULL,'AC','HR-OFA-Llave Stillson 36\"',1,6),(59,'HR-OFA-Pistola de calor','Pistola de calor',1,NULL,'AC','HR-OFA-Pistola de calor',1,6),(60,'HR-OFA-Serrucho 24\"','Serrucho 24\"',1,NULL,'AC','HR-OFA-Serrucho 24\"',1,6),(61,'HR-OFA-Atornillador ? 13 con bateria ','Atornillador ? 13 con bateria ',1,NULL,'AC','HR-OFA-Atornillador ? 13 con bateria ',1,6),(65,'HR-OFA-Rotomartillo con mandril y llave','Rotomartillo con mandril y llave',1,NULL,'AC','HR-OFA-Rotomartillo con mandril y llave',1,6),(66,'HR-ODE-Extractor de poleas 400 mm','Extractor de poleas 400 mm',1,NULL,'AC','HR-ODE-Extractor de poleas 400 mm',1,6),(67,'HR-OFE-Espatulas grandes','Espatulas grandes',1,NULL,'AC','HR-OFE-Espatulas grandes',1,6),(68,'HR-OFE-Soplete para colocar membrana','Soplete para colocar membrana',1,NULL,'AC','HR-OFE-Soplete para colocar membrana',1,6),(69,'HR-OFE-Cola de vida ','Cola de vida ',1,NULL,'AC','HR-OFE-Cola de vida ',1,6),(73,'HR-OFE-Serrucho para corte en durlock','Serrucho para corte en durlock',1,NULL,'AC','HR-OFE-Serrucho para corte en durlock',1,6),(74,'HR-OFE-Llana de durlock','Llana de durlock',1,NULL,'AC','HR-OFE-Llana de durlock',1,6),(75,'HR-OFE-Fratacho','Fratacho',1,NULL,'TR','HR-OFE-Fratacho',1,6),(76,'HR-OFE-Cortafierro','Cortafierro',1,NULL,'AC','HR-OFE-Cortafierro',1,6),(78,'HR-OFE-Cuchara mediana de albañil','Cuchara mediana de albañil',1,NULL,'AC','HR-OFE-Cuchara mediana de albañil',1,6),(79,'HR-OFE-Cuchara grande de albañil','Cuchara grande de albañil',1,NULL,'AC','HR-OFE-Cuchara grande de albañil',1,6),(80,'HR-OFE-Chocla','Chocla',1,NULL,'AC','HR-OFE-Chocla',1,6),(81,'HR-OFE-Martelina','Martelina',1,NULL,'AC','HR-OFE-Martelina',1,6),(82,'HR-OFE-Bomba de combustible','Bomba de combustible',1,NULL,'AC','HR-OFE-Bomba de combustible',1,6),(83,'HR-OFE-Grasera','Grasera',1,NULL,'AC','HR-OFE-Grasera',1,6),(86,'A-Hormigonera','azul',1,NULL,'AC','A-Hormigonera',NULL,6),(87,'w80','989',1,NULL,'AC','w80',NULL,6),(89,'HVLL-TT-MANIFOLD','',1,NULL,'AC','MANOMETRO DE GASES REFRIGERANTE',2,6),(90,'HVLL-TT','SSP',1,NULL,'AC','Agujereadora de mano eléctrica 13 mm con percutor',3,6),(91,'2334343242','ssss',0,NULL,'AC','Taladro',1,6),(93,'1001','IRIMO',-1,NULL,'AC','Caja de tubos 3/4´',0,7),(94,'','',-1,NULL,'AC','',-1,6),(95,'CJ 01 ','METALICA ',19,NULL,'AC','CAJA DE HERRAMIENTAS ',4,7),(96,'CJ 02 ','COMPLETA ',23,NULL,'AC','CAJA DE HERRAMIENTAS ',4,7),(97,'CJ 03','ENCASTRE 3/4 ',24,NULL,'AC','CAJA DE TUBOS ',4,7),(98,'CJ O4 ','PLASTICA CHICA ',33,NULL,'AC','CAJA DE HERRAMIENTAS ',4,7),(99,'CJ 05 ','ALTA Y BAJA ',32,NULL,'AC','CAJA CON MANOMETROS DE CARGA DE A/C',4,7),(100,'LLVF 01','450MM',35,NULL,'AC','LLAVE FRANCESA',4,7),(101,'LLST 01','PINZA ',35,NULL,'AC',' STILSON ',4,7),(102,'PNZ 01','PINNZA',30,NULL,'AC','PINZA PICO DE LORO ',4,7),(103,'LLIN 01','REGULABLE',20,NULL,'AC','LLAVE INGLESA',4,7),(105,'LLCO 01','COMBINADA 36MM',20,NULL,'AC','LLAVE ',4,7),(106,'MF 01 ','ENCASTRE 1/2 ',35,NULL,'AC','MANGO DE FUERZA ',1,7);
/*!40000 ALTER TABLE `herramientas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_lecturas`
--

DROP TABLE IF EXISTS `historial_lecturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial_lecturas` (
  `id_lectura` int(10) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(10) NOT NULL,
  `lectura` int(10) NOT NULL,
  `fecha` datetime NOT NULL,
  `usrId` int(11) NOT NULL,
  `observacion` text,
  `operario_nom` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `turno` varchar(11) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(4) NOT NULL,
  PRIMARY KEY (`id_lectura`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_lecturas`
--

LOCK TABLES `historial_lecturas` WRITE;
/*!40000 ALTER TABLE `historial_lecturas` DISABLE KEYS */;
INSERT INTO `historial_lecturas` VALUES (1,1,150,'2017-11-27 04:24:41',3,'too ok','pepe','tarde','AC'),(2,1,56,'2017-11-27 04:29:15',3,'todo normal','ruben','noche','AC'),(3,1,20,'2017-11-28 10:48:21',3,'normal','juan','mañana','AC'),(7,1,4545,'2017-11-30 06:08:35',3,'todo ok','pedrito','manana','RE'),(6,1,333,'2017-11-30 08:28:29',3,'bateria baja','roberto','manana','AC'),(8,1,999999,'2017-11-30 10:09:43',3,'rotura llanta','roberto','tarde','RE'),(9,1,454545,'2017-11-30 11:11:09',3,'reparado','juan','mañana','RE'),(10,1,23333,'2017-12-06 08:27:03',1,'dadasd','dsadad','333','AC'),(11,1,1000,'2017-12-18 07:41:04',1,'sdfdsfs','fsdf','fdsfds','RE'),(12,0,333,'2017-12-18 07:41:54',1,'dsfdsf','333','erwrw','AC'),(13,0,0,'2017-12-18 08:00:03',1,'','','','AC'),(14,1,0,'2017-12-26 02:05:21',1,'','','','AC'),(15,1,0,'2017-12-26 02:05:31',1,'','','','RE'),(16,0,0,'2017-12-26 02:05:39',1,'','','','AC'),(17,1,0,'2018-01-12 16:09:58',1,'','','','AC'),(18,2,200,'2018-01-15 16:12:57',3,'cambio estado test','juan perez','mañana','RE'),(19,2,300,'2018-01-15 16:13:35',3,'reparado','jose de los palotes','tarde','RE'),(20,2,400,'2018-01-15 16:14:15',3,'activado nuevamente','pepe ponce','noche','AC'),(21,5,0,'2018-01-17 12:01:37',1,'','','','RE'),(22,9,344,'2018-01-17 12:07:12',1,'weqeqwe','wewqe','qweqe','RE'),(23,11,2000,'2018-01-26 17:14:48',1,'no operativo','rs','mañana','AC'),(24,11,2010,'2018-01-26 17:19:56',1,'operarico','rs','mañana','AC'),(60,7,0,'2018-09-03 04:55:43',1,'','','','AC'),(59,7,0,'2018-09-03 04:46:40',1,'','','','RE'),(58,7,0,'2018-09-03 04:31:54',1,'','','','RE'),(57,2,666,'2018-09-01 08:57:16',1,'666','666','666','AC'),(56,8,555,'2018-09-01 08:54:45',1,'555','555','555','AC'),(33,10,0,'2018-03-06 13:10:52',1,'','','','RE'),(34,10,0,'2018-03-06 13:11:44',1,'','','','AC'),(35,10,0,'2018-03-09 12:57:53',1,'','','','RE'),(36,9,122,'2018-03-21 13:23:05',3,'se rompio','juan','mañana','RE'),(37,10,34,'2018-03-21 13:24:21',3,'agfgadf','ya','a','RE'),(38,4,0,'2018-03-22 11:04:05',3,'','','','RE'),(39,4,0,'2018-03-22 11:04:43',3,'','','','RE'),(40,4,150,'2018-05-24 12:58:46',3,'sarasa','Hugo','mañana','AC'),(41,4,500,'2018-06-19 15:42:25',3,'se rompio','yop','mañana','RE'),(42,4,486,'2018-06-19 15:55:46',3,'todo ok','hugo g','tarde','AC'),(43,4,0,'2018-07-03 15:38:49',1,'','','','RE'),(44,3,0,'2018-07-03 15:39:24',1,'','','','RE'),(45,2,0,'2018-07-03 21:15:48',1,'','','','RE'),(46,3,0,'2018-07-03 21:16:03',1,'','','','RE'),(47,4,0,'2018-07-05 09:47:32',1,'','','','AC'),(48,1,0,'2018-07-06 09:34:40',1,'','','','RE'),(49,1,23,'2018-07-27 03:05:45',1,'saddad','sadadsa','dsad','RE'),(50,1,234,'2018-08-11 05:50:38',1,'dsadas','445','444','RE'),(51,1,0,'2018-08-21 23:46:15',1,'','','','RE'),(52,1,0,'2018-09-01 03:29:28',1,'asdadas','sdaddasds','dddd','RE'),(53,1,3333,'2018-09-01 03:29:51',1,'dsadsa','33','333','RE'),(54,8,123,'2018-09-01 08:34:17',1,'123','123','123','RE'),(55,4,234,'2018-09-01 08:35:56',1,'234','234','234','RE'),(61,2,34,'2018-09-13 04:05:12',1,'wqeqwe','weqe','34','RE'),(62,10,12,'2018-09-16 04:40:29',1,'lalala','perez','noche',''),(63,13,5000,'2018-09-24 18:22:13',16,'rompio la maquina ese hdp','javier molina','dia',''),(64,3,2,'2018-09-24 18:55:36',1,'2','2','2','RE'),(65,3,3,'2018-09-24 18:56:42',1,'3','3','3','AC'),(66,3,12,'2018-09-24 19:03:49',1,'12','12','12','RE'),(67,3,32,'2018-09-24 19:06:54',1,'32','32','32','RE'),(68,3,12,'2018-09-24 19:10:02',1,'12','12','12','AC'),(69,3,23,'2018-09-24 19:10:13',1,'23','23','23','RE'),(70,3,0,'2018-09-24 19:10:17',1,'','','','RE'),(71,3,0,'2018-09-24 19:14:55',1,'','','','AC'),(72,3,0,'2018-09-24 19:15:02',1,'','','','RE'),(73,13,0,'2018-09-24 19:15:46',19,'','','','RE'),(74,3,0,'2018-09-25 09:43:34',1,'','','','AC'),(75,3,0,'2018-09-25 09:45:45',1,'','','','AC'),(76,3,0,'2018-09-25 09:45:52',1,'','','','AC'),(77,3,0,'2018-09-25 09:46:13',1,'nuevaaaaaaa','','','AC'),(78,3,122,'2018-09-25 09:53:57',1,'','Pablo Paz','','AC'),(79,3,0,'2018-09-25 17:43:04',1,'','','','AC'),(80,3,0,'2018-09-25 17:43:13',17,'','','','AC'),(81,9,2,'2018-10-01 09:26:48',1,'2','2','2','RE'),(82,9,3,'2018-10-01 09:32:32',1,'3','3','3','AC'),(83,18,3,'2018-10-03 23:09:32',1,'3','3','3','RE'),(84,5,1111111,'2018-10-05 10:46:36',1,'wwwwwwwwww','Pablo Paz','Mañana','AC'),(85,5,5670,'2018-10-05 16:12:14',19,'Fuga de aceite','R. Sánchez','Mañana','RE'),(86,15,11,'2018-10-08 08:59:36',18,'falta agua','dede','d','RE'),(87,15,0,'2018-10-08 09:01:27',18,'gg','ll','d','AC'),(88,5,11,'2018-10-08 11:44:54',1,'nueva lectura','Pablo Paz','Mañana','RE'),(89,5,45,'2018-10-08 11:47:04',1,'sdakdhka','juan perez','34','RE'),(90,5,12,'2018-10-08 11:48:11',1,'nuevo ','Pablo Paez','Tarde','RE'),(91,13,0,'2018-10-09 12:17:37',18,'Cambio de válvula de pilotaje, falta conector ','admin','b','');
/*!40000 ALTER TABLE `historial_lecturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infocomponentes`
--

DROP TABLE IF EXISTS `infocomponentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infocomponentes` (
  `infocompid` int(11) NOT NULL AUTO_INCREMENT,
  `infocompdescrip` varchar(255) DEFAULT NULL,
  `archivo` varchar(255) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_equipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`infocompid`),
  KEY `id_equipo` (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infocomponentes`
--

LOCK TABLES `infocomponentes` WRITE;
/*!40000 ALTER TABLE `infocomponentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `infocomponentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infoequipos`
--

DROP TABLE IF EXISTS `infoequipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infoequipos` (
  `infoid` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `archivo` varchar(255) DEFAULT NULL,
  `id_equipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`infoid`),
  KEY `id_equipo` (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infoequipos`
--

LOCK TABLES `infoequipos` WRITE;
/*!40000 ALTER TABLE `infoequipos` DISABLE KEYS */;
/*!40000 ALTER TABLE `infoequipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informacionequipo`
--

DROP TABLE IF EXISTS `informacionequipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informacionequipo` (
  `id_informacion` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`id_informacion`)
) ENGINE=InnoDB AUTO_INCREMENT=1088 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacionequipo`
--

LOCK TABLES `informacionequipo` WRITE;
/*!40000 ALTER TABLE `informacionequipo` DISABLE KEYS */;
INSERT INTO `informacionequipo` VALUES (1081,'titulo 1','descr 1',51,6),(1082,'titulo 2','desc 2',51,6),(1083,'titulo3','desc3',52,6),(1084,'0101','0101',12,6),(1085,'666','666',13,6),(1086,'aaaa','aaaa aaaa',10,6),(1087,'bbbb','bbbb bbbb',10,6);
/*!40000 ALTER TABLE `informacionequipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcasequipos`
--

DROP TABLE IF EXISTS `marcasequipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcasequipos` (
  `marcaid` int(11) NOT NULL AUTO_INCREMENT,
  `marcadescrip` varchar(255) DEFAULT NULL,
  `estado` varchar(3) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`marcaid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcasequipos`
--

LOCK TABLES `marcasequipos` WRITE;
/*!40000 ALTER TABLE `marcasequipos` DISABLE KEYS */;
INSERT INTO `marcasequipos` VALUES (1,'TamRock','AC',6),(2,'Black & Decker','AC',6),(3,'Bahco','AC',6),(4,'Caterpillar','AC',6),(5,'Komatsu','AC',6),(6,'Toyota','AC',6),(7,'Cathh','AN',7),(8,'test','AN',7),(9,'666','AN',7),(10,'DRILLTECH','AN',7),(11,'Atlas Copco','AC',7),(12,'Atlas Copco','AC',7),(13,'Sandvik','AC',7),(14,'Soosan','AC',7),(15,'Caterpillar','AC',7),(16,'Parquer','AC',7),(17,'Deninson','AC',7),(18,'Rexvrock','AC',7),(19,'SNAP ON','AC',7),(20,'WILLIAMS ','AC',7),(21,'GEDORE ','AC',7),(22,'MOTOROLA ','AC',7),(23,'REDLINE','AC',7),(24,'IRIMO ','AC',7),(25,'FLUKE ','AC',7),(26,'ANDES SAM ','AC',7),(27,'STANLEY ','AC',7),(28,'CROSS MASTER ','AC',7),(29,'BULIT ','AC',7),(30,'TRUPER','AC',7),(31,'HP ','AC',7),(32,'S-M ','AC',7),(33,'TACTIX ','AC',7),(34,'UTUSTOOLS','AC',7),(35,'BAHCO','AC',7);
/*!40000 ALTER TABLE `marcasequipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_año`
--

DROP TABLE IF EXISTS `modelo_año`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelo_año` (
  `id_año` int(100) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(10) NOT NULL,
  PRIMARY KEY (`id_año`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_año`
--

LOCK TABLES `modelo_año` WRITE;
/*!40000 ALTER TABLE `modelo_año` DISABLE KEYS */;
INSERT INTO `modelo_año` VALUES (1,'wqeqewqeqw');
/*!40000 ALTER TABLE `modelo_año` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_insumos`
--

DROP TABLE IF EXISTS `orden_insumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_insumos` (
  `id_orden` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `solicitante` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `destino` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comprobante` int(255) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_ot` int(11) NOT NULL,
  PRIMARY KEY (`id_orden`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_insumos`
--

LOCK TABLES `orden_insumos` WRITE;
/*!40000 ALTER TABLE `orden_insumos` DISABLE KEYS */;
INSERT INTO `orden_insumos` VALUES (1,'2018-10-01','111','',1,6,11),(2,'2018-10-02','222','',2,6,22),(3,'2018-10-03','333','',3,6,33),(4,'2018-10-05','555','',5,6,5),(5,'2018-10-04','444','',4,6,144),(6,'2018-10-06','666','',6,6,66),(7,'2018-10-22','4444','',4,6,5),(8,'2018-10-25','huggo','',123456,6,55);
/*!40000 ALTER TABLE `orden_insumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_pedido`
--

DROP TABLE IF EXISTS `orden_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_pedido` (
  `id_orden` int(11) NOT NULL AUTO_INCREMENT,
  `id_proveedor` int(11) NOT NULL,
  `nro_trabajo` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` datetime NOT NULL,
  `fecha_entrega` datetime NOT NULL,
  `fecha_entregada` datetime NOT NULL,
  `estado` varchar(2) NOT NULL,
  `id_trabajo` int(11) NOT NULL,
  `observacion` text NOT NULL,
  `numero_remito` int(11) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_orden`),
  KEY `id_trabajo` (`id_trabajo`),
  KEY `id_proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_pedido`
--

LOCK TABLES `orden_pedido` WRITE;
/*!40000 ALTER TABLE `orden_pedido` DISABLE KEYS */;
INSERT INTO `orden_pedido` VALUES (1,1,501,'pedido prueba','2017-05-10 00:00:00','2017-05-11 00:00:00','2017-11-27 10:09:09','E',1,'',3344,6),(2,3,5011,'prueba','2017-05-10 00:00:00','2017-05-10 00:00:00','0000-00-00 00:00:00','P',16,'',NULL,6),(3,4,5011,'ahorasi ','2017-05-10 00:00:00','2017-05-10 00:00:00','0000-00-00 00:00:00','P',16,'',NULL,6),(4,5,301,'cargando pedido gemma','2017-05-10 00:00:00','2017-05-11 00:00:00','0000-00-00 00:00:00','P',18,'',NULL,6),(5,9,602,'pedido de prueba 3','2017-05-10 00:00:00','2017-05-10 00:00:00','2017-08-14 19:35:47','E',18,'',123456,6),(6,3,91,'ORDEN DE PEDIDO NUMERO 91 ASOCIADA A LA 90','2017-07-20 00:00:00','2017-07-21 00:00:00','0000-00-00 00:00:00','P',16,'',NULL,6),(7,5,902,'asociada a la orden numero 902','2017-07-20 00:00:00','2017-07-20 00:00:00','0000-00-00 00:00:00','P',20,'',NULL,6),(8,7,9020,'orden de pedido asociada a la orden de trabajo  numero 90 op 9020','2017-07-20 00:00:00','2017-07-27 00:00:00','0000-00-00 00:00:00','P',20,'',NULL,6),(9,7,950,'OT numero de pedido 950','2017-07-20 00:00:00','2017-07-27 00:00:00','0000-00-00 00:00:00','P',21,'',NULL,6),(10,8,9090,'op 9090','2017-07-20 00:00:00','2017-07-27 00:00:00','0000-00-00 00:00:00','P',20,'',NULL,6),(11,8,9670,'OP nro 9697120','2017-07-20 00:00:00','2017-07-27 00:00:00','0000-00-00 00:00:00','P',23,'',NULL,6),(12,9,96969,'OP nro 96969','2017-07-20 00:00:00','2017-07-27 00:00:00','0000-00-00 00:00:00','P',22,'',NULL,6),(13,6,96969,'OT NRO 96969','2017-07-20 00:00:00','2017-07-27 00:00:00','0000-00-00 00:00:00','P',22,'',NULL,6),(14,4,14140,'OP nuevo','2017-08-11 00:00:00','2017-08-18 00:00:00','0000-00-00 00:00:00','P',17,'',NULL,6),(15,12,78998797,'4 cañños largos','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-08-14 19:37:38','E',18,'',79456,6),(16,13,987987,'6 caños ciuadrados','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-08-14 20:28:31','E',18,'',16,6),(17,13,7898798,'4 docenas de bolunes','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','P',18,'',NULL,6),(18,4,99,'aceite\narrancador','2017-08-15 00:00:00','2017-08-17 00:00:00','2017-08-15 11:05:19','E',31,'',798987,6),(19,4,14,'pedido de ppriieba 123456','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','P',20,'',NULL,6),(20,4,1514,'OT DE PEDIDO','2017-08-16 00:00:00','2017-08-23 00:00:00','0000-00-00 00:00:00','P',19,'',NULL,6),(21,4,16,'dadadada pedidonuevo ','0000-00-00 00:00:00','2017-09-01 00:00:00','2017-09-01 14:19:26','E',34,'',1666,6),(22,4,45646,'comprar mas memoria','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-09-19 10:31:06','E',38,'',123,6),(23,2,23,'sadadsad','0000-00-00 00:00:00','2017-11-04 00:00:00','2017-12-11 11:18:59','E',8,'',22323,6),(24,1,1414,'141414','0000-00-00 00:00:00','2017-12-01 00:00:00','0000-00-00 00:00:00','P',23,'',NULL,6),(25,1,22222,'aSAsaSAsaS','2017-12-11 11:13:18','2017-12-11 00:00:00','0000-00-00 00:00:00','P',16,'',NULL,6),(26,2,55,'p','2017-12-12 18:46:56','2017-12-14 00:00:00','0000-00-00 00:00:00','P',17,'',NULL,6),(27,1,5454,'detallle','2018-06-22 11:04:24','2018-06-22 00:00:00','0000-00-00 00:00:00','P',532,'',NULL,6),(28,1,0,'pedido test 1','2018-06-25 12:40:44','2018-07-02 00:00:00','0000-00-00 00:00:00','P',536,'',NULL,6),(29,2,0,'pedido test 2 ','2018-06-25 13:48:11','2018-07-03 00:00:00','0000-00-00 00:00:00','P',536,'',NULL,6),(30,2,11111,'orden de  pedido de prueba administracion','2018-06-28 16:01:19','2018-06-29 00:00:00','0000-00-00 00:00:00','P',538,'',NULL,6),(31,2,1111,'pedido test asociado a ot con id 538','2018-06-29 11:11:06','2018-07-06 00:00:00','0000-00-00 00:00:00','P',538,'',NULL,0),(32,0,48956,'Nueva nota de pedido','2018-09-19 10:15:18','2018-09-26 00:00:00','0000-00-00 00:00:00','P',510,'',NULL,0),(33,1,11223344,'eli probando','2018-10-05 12:14:01','2018-10-25 00:00:00','0000-00-00 00:00:00','P',510,'',NULL,0),(34,2,112233,'eliiiiii','2018-10-05 12:14:34','2018-10-23 00:00:00','0000-00-00 00:00:00','P',510,'',NULL,0),(35,2,123,'eli 2','2018-10-05 12:16:12','2018-10-19 00:00:00','0000-00-00 00:00:00','P',510,'',NULL,0),(36,1,1357,'eli 99','2018-10-05 12:17:02','2018-11-22 00:00:00','0000-00-00 00:00:00','P',510,'',NULL,0),(37,1,222222,'no guarda','2018-10-05 12:17:42','0000-00-00 00:00:00','0000-00-00 00:00:00','P',510,'',NULL,0),(38,1,9900,'no anda','2018-10-05 12:18:12','2018-10-17 00:00:00','0000-00-00 00:00:00','P',510,'',NULL,0),(39,-1,0,'','2018-10-05 12:23:25','0000-00-00 00:00:00','0000-00-00 00:00:00','P',510,'',NULL,0);
/*!40000 ALTER TABLE `orden_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_servicio`
--

DROP TABLE IF EXISTS `orden_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_servicio` (
  `id_orden` int(11) NOT NULL AUTO_INCREMENT,
  `lectura` double DEFAULT NULL,
  `fecha` date NOT NULL,
  `comprobante` varchar(255) CHARACTER SET latin1 NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `id_contratista` int(11) NOT NULL,
  `id_solicitudreparacion` int(11) NOT NULL,
  `valesid` int(11) DEFAULT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_ordenherraminetas` int(11) DEFAULT NULL,
  `id_orden_insumo` int(11) DEFAULT NULL,
  `id_ot` int(11) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  `fechahorainicio` datetime NOT NULL,
  `fechahorafin` datetime NOT NULL,
  `horometroinicio` double NOT NULL,
  `horometrofin` double NOT NULL,
  PRIMARY KEY (`id_orden`),
  KEY `id_equipo` (`id_equipo`),
  KEY `id_empresaservicio` (`id_contratista`),
  KEY `id_solicitudreparacion` (`id_solicitudreparacion`),
  KEY `id_orden_insumo` (`id_orden_insumo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_servicio`
--

LOCK TABLES `orden_servicio` WRITE;
/*!40000 ALTER TABLE `orden_servicio` DISABLE KEYS */;
INSERT INTO `orden_servicio` VALUES (1,NULL,'2018-10-23','',4,0,12,27,'C',NULL,NULL,160,6,'2018-10-02 19:37:04','2018-10-06 19:37:08',221,218);
/*!40000 ALTER TABLE `orden_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_trabajo`
--

DROP TABLE IF EXISTS `orden_trabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_trabajo` (
  `id_orden` int(11) NOT NULL AUTO_INCREMENT,
  `id_tarea` int(11) DEFAULT NULL,
  `nro` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `fecha_program` datetime NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_entrega` datetime NOT NULL,
  `fecha_terminada` datetime NOT NULL,
  `fecha_aviso` datetime NOT NULL,
  `fecha_entregada` datetime NOT NULL,
  `descripcion` text NOT NULL,
  `cliId` int(11) NOT NULL DEFAULT '1',
  `estado` varchar(2) NOT NULL,
  `id_usuario` int(11) NOT NULL DEFAULT '1',
  `id_usuario_a` int(11) NOT NULL,
  `id_usuario_e` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL DEFAULT '1',
  `id_proveedor` int(11) NOT NULL,
  `id_solicitud` int(11) NOT NULL,
  `tipo` varchar(2) NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `duracion` double NOT NULL,
  `id_tareapadre` int(11) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  `lectura_programada` double NOT NULL,
  `lectura_ejecutada` double NOT NULL,
  PRIMARY KEY (`id_orden`),
  KEY `orden_trabajo_ibfk_1` (`cliId`) USING BTREE,
  KEY `id_usuario` (`id_usuario`) USING BTREE,
  KEY `id_usuariosolicitante` (`id_usuario_a`) USING BTREE,
  KEY `usuario_entrega` (`id_usuario_e`) USING BTREE,
  KEY `id_sucursal` (`id_sucursal`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=615 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_trabajo`
--

LOCK TABLES `orden_trabajo` WRITE;
/*!40000 ALTER TABLE `orden_trabajo` DISABLE KEYS */;
INSERT INTO `orden_trabajo` VALUES (1,0,'1','0000-00-00','0000-00-00 00:00:00','2017-11-08 10:44:25','2017-11-08 10:47:45','2017-11-08 10:47:45','2017-11-08 10:47:45','2017-11-08 10:47:45','rotura de rueda',13,'C',1,1,1,1,0,1,'1',0,60,NULL,6,0,0),(2,0,'4','0000-00-00','0000-00-00 00:00:00','2017-11-08 00:00:00','2017-11-29 00:00:00','2017-11-23 08:39:37','2017-11-08 10:48:19','2017-12-10 00:00:00','sadasdas',13,'E',1,1,1,1,0,4,'1',0,60,NULL,6,0,0),(3,0,'4','0000-00-00','0000-00-00 00:00:00','2017-11-08 10:47:21','2017-11-08 10:58:41','2017-11-08 10:58:41','2017-11-08 10:58:41','2017-11-08 10:58:41','sadasdas',1,'C',1,1,1,1,0,4,'2',0,60,NULL,6,0,0),(4,4,'4','0000-00-00','0000-00-00 00:00:00','2017-11-08 10:47:21','2017-11-08 12:52:35','2017-11-08 12:52:35','2017-11-08 12:52:35','2017-11-08 12:52:35','sadasdas',1,'C',1,1,1,1,0,4,'2',0,60,NULL,6,0,0),(5,0,'1','0000-00-00','0000-00-00 00:00:00','2017-11-08 10:44:25','2017-11-09 16:09:14','2017-11-09 16:09:14','2017-11-09 16:09:14','2017-11-09 16:09:14','rotura de rueda',13,'C',1,1,1,1,0,1,'3',0,60,NULL,6,0,0),(6,0,'5','0000-00-00','0000-00-00 00:00:00','2017-11-08 12:53:19','2017-12-09 16:09:34','2017-11-09 16:09:34','2017-11-09 16:09:34','2017-11-09 16:09:34','observc test2',1,'C',1,1,1,1,1,5,'3',0,60,NULL,6,0,0),(7,0,'5','0000-00-00','0000-00-00 00:00:00','2017-11-08 12:53:19','2017-12-07 10:38:07','2017-11-13 10:38:07','2017-11-13 10:38:07','2017-11-13 10:38:07','observc test2',1,'C',1,1,1,1,1,5,'3',0,60,NULL,6,0,0),(8,0,'1','0000-00-00','0000-00-00 00:00:00','2017-11-08 00:00:00','0000-00-00 00:00:00','2017-11-14 14:39:59','2017-11-14 14:39:59','2017-11-14 14:39:59','rotura de rueda',13,'P',1,1,1,1,1,1,'2',0,60,NULL,6,0,0),(9,0,'6','0000-00-00','0000-00-00 00:00:00','2017-11-14 15:23:31','2017-11-14 15:38:02','2017-11-14 15:38:02','2017-11-14 15:38:02','2017-11-14 15:38:02','Rotura de llanta',13,'C',5,5,5,1,0,6,'3',0,60,NULL,6,0,0),(10,0,'6','0000-00-00','0000-00-00 00:00:00','2017-11-14 15:23:31','2017-11-14 15:42:27','2017-11-14 15:42:27','2017-11-14 15:42:27','2017-11-14 15:42:27','Rotura de llanta',13,'C',5,5,5,1,0,6,'1',0,60,NULL,6,0,0),(11,0,'1','0000-00-00','0000-00-00 00:00:00','2017-11-08 10:44:25','2017-11-23 08:26:01','2017-11-23 08:26:01','2017-11-23 08:26:01','2017-11-23 08:26:01','rotura de rueda',1,'C',1,1,1,1,0,1,'3',0,60,NULL,6,0,0),(12,0,'6','0000-00-00','0000-00-00 00:00:00','2017-11-14 15:23:31','2017-11-17 08:25:52','2017-11-28 08:25:52','2017-11-28 08:25:52','2017-11-28 08:25:52','Rotura de llanta',1,'C',3,3,3,1,0,6,'',0,60,NULL,6,0,0),(13,0,'6','0000-00-00','0000-00-00 00:00:00','2017-11-14 15:23:31','2017-12-22 08:26:22','2017-11-28 08:26:22','2017-11-28 08:26:22','2017-11-28 08:26:22','Rotura de llanta',1,'C',3,3,3,1,0,6,'',0,60,NULL,6,0,0),(14,0,'5','0000-00-00','0000-00-00 00:00:00','2017-11-08 12:53:19','2017-12-12 10:58:50','2017-11-28 10:58:50','2017-11-28 10:58:50','2017-11-28 10:58:50','observc test2',13,'C',3,3,3,1,0,5,'1',0,60,NULL,6,0,0),(15,NULL,'1','0000-00-00','0000-00-00 00:00:00','2017-12-07 10:44:25','2017-12-06 12:04:24','2017-11-28 12:04:24','2017-11-28 12:04:24','2017-11-28 12:04:24','rotura de rueda',1,'C',3,3,3,1,0,1,'2',0,60,NULL,6,0,0),(16,1,'3','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2018-07-30 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'T',3,1,0,1,0,0,'5',1,60,NULL,6,0,0),(17,1,'3','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','2018-09-07 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',3,3,0,1,0,0,'5',1,60,NULL,6,0,0),(18,1,'1','0000-00-00','0000-00-00 00:00:00','2017-12-14 10:44:25','0000-00-00 00:00:00','2017-11-28 13:16:25','2017-11-28 13:16:25','2017-11-28 13:16:25','rotura de rueda',1,'As',3,0,3,1,2,1,'2',2,60,NULL,6,0,0),(19,1,'4','0000-00-00','0000-00-00 00:00:00','2017-12-30 00:00:00','2017-12-09 00:00:00','2017-12-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Backlog',1,'T',3,1,0,1,0,0,'4',1,60,NULL,6,0,0),(20,1,'4','0000-00-00','0000-00-00 00:00:00','0002-01-08 20:00:00','2017-12-20 00:00:00','2017-12-18 00:00:00','0000-00-00 00:00:00','2017-12-27 00:00:00','Predictivo',1,'E',3,1,0,1,0,0,'5',1,60,NULL,6,0,0),(21,1,'4','0000-00-00','0000-00-00 00:00:00','2017-12-21 00:00:00','2017-12-13 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',3,4,0,1,0,0,'5',1,60,NULL,6,0,0),(22,NULL,'7','0000-00-00','0000-00-00 00:00:00','2017-12-01 05:35:25','2017-12-13 00:00:00','2017-12-01 05:35:44','2017-12-01 05:35:44','2017-12-01 05:35:44','Falla test sobre RS-0001 (01-12)',1,'As',3,6,3,1,0,7,'2',2,60,NULL,6,0,0),(23,1,'3','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',1,1,0,1,0,0,'5',1,60,NULL,6,0,0),(25,NULL,'','0000-00-00','0000-00-00 00:00:00','2017-02-01 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Preventivo',1,'C',1,0,0,1,0,0,'2',1,60,NULL,6,0,0),(26,1,'','0000-00-00','0000-00-00 00:00:00','2017-02-01 00:00:00','2017-12-29 00:00:00','2017-12-27 00:00:00','0000-00-00 00:00:00','2018-06-27 00:00:00','Preventivo',1,'E',1,1,1,1,0,1,'2',1,60,NULL,6,0,0),(27,1,'','0000-00-00','0000-00-00 00:00:00','2017-02-01 00:00:00','2017-12-28 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Preventivo',1,'As',1,6,1,1,0,0,'2',1,60,NULL,6,0,0),(28,1,'','0000-00-00','0000-00-00 00:00:00','2017-02-01 00:00:00','2017-12-11 00:00:00','2017-12-18 00:00:00','0000-00-00 00:00:00','2018-09-20 00:00:00','Preventivo',1,'E',1,1,1,1,0,0,'2',3,60,NULL,6,0,0),(29,1,'8','0000-00-00','0000-00-00 00:00:00','2017-12-07 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Backlog',1,'As',1,0,0,1,0,0,'4',3,60,NULL,6,0,0),(30,1,'','0000-00-00','0000-00-00 00:00:00','2017-02-01 00:00:00','0000-00-00 00:00:00','2017-12-12 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Preventivo',1,'As',1,1,1,1,0,0,'2',3,60,NULL,6,0,0),(31,1,'6','0000-00-00','0000-00-00 00:00:00','2017-12-11 00:00:00','2017-12-13 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',1,1,0,1,0,0,'5',2,60,NULL,6,0,0),(32,1,'6','0000-00-00','0000-00-00 00:00:00','2017-12-11 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',1,1,1,1,0,0,'5',2,60,NULL,6,0,0),(33,1,'6','0000-00-00','0000-00-00 00:00:00','2017-12-11 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',1,1,1,1,0,0,'5',2,60,NULL,6,0,0),(34,1,'6','0000-00-00','0000-00-00 00:00:00','2017-12-11 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',1,1,1,1,0,0,'5',2,60,NULL,6,0,0),(35,2,'9','0000-00-00','0000-00-00 00:00:00','2017-12-12 00:00:00','2017-12-13 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Backlog',1,'As',1,1,1,1,0,0,'4',2,60,NULL,6,0,0),(36,NULL,'100','0000-00-00','0000-00-00 00:00:00','2017-12-12 21:22:00','2017-12-13 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','prueba',1,'As',3,1,1,1,2,0,'1',2,60,NULL,6,0,0),(37,2,'9','0000-00-00','0000-00-00 00:00:00','2017-12-12 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Backlog',1,'As',1,1,1,1,0,0,'4',2,60,NULL,6,0,0),(38,1,'10','0000-00-00','0000-00-00 00:00:00','2018-01-10 00:00:00','0000-00-00 00:00:00','2018-01-12 00:00:00','0000-00-00 00:00:00','2018-01-12 00:00:00','Backlog',1,'E',1,1,1,1,0,0,'4',1,60,NULL,6,0,0),(39,1,'11','0000-00-00','0000-00-00 00:00:00','2018-01-20 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Backlog',1,'As',1,0,0,1,0,0,'4',2,60,NULL,6,0,0),(40,1,'2','0000-00-00','0000-00-00 00:00:00','2017-11-08 10:45:54','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','assdas',1,'C',1,1,1,1,0,0,'',0,60,NULL,6,0,0),(41,1,'9','0000-00-00','0000-00-00 00:00:00','2018-01-17 13:38:28','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','mancha de aceite abajo del equipo ',1,'C',1,1,1,1,0,0,'',10,60,NULL,6,0,0),(42,NULL,'11','0000-00-00','0000-00-00 00:00:00','2018-01-18 18:07:20','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','mancha de aceite debajo del equipo',1,'C',1,1,1,1,0,0,'',0,60,NULL,6,0,0),(43,NULL,'11','0000-00-00','0000-00-00 00:00:00','2018-01-18 18:07:20','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','mancha de aceite debajo del equipo',1,'C',1,1,1,1,0,0,'',0,60,NULL,6,0,0),(46,1,'1','2018-01-29','2018-01-31 00:00:00','2017-11-14 15:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Rotura de llanta',1,'C',3,1,1,1,0,6,'2',2,60,NULL,6,0,0),(47,16,'1','2018-01-29','2018-01-30 00:00:00','2018-02-10 00:00:00','2018-03-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',3,5,1,1,0,8,'5',4,60,NULL,6,0,0),(48,1,'1','2018-01-29','2018-01-29 00:00:00','2017-12-01 05:35:25','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Falla test sobre RS-0001 (01-12)',1,'C',3,1,1,1,0,7,'2',2,60,NULL,6,0,0),(49,16,'1','2018-01-29','2018-01-29 00:00:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',1,1,1,1,0,8,'5',4,60,NULL,6,0,0),(50,NULL,'11','0000-00-00','0000-00-00 00:00:00','2018-01-18 18:07:20','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','mancha de aceite debajo del equipo',1,'C',1,1,1,1,0,0,'',0,60,NULL,6,0,0),(51,NULL,'11','0000-00-00','0000-00-00 00:00:00','2018-01-18 18:07:20','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','mancha de aceite debajo del equipo',1,'C',1,1,1,1,0,0,'',0,60,NULL,6,0,0),(52,NULL,'11','0000-00-00','0000-00-00 00:00:00','2018-01-18 18:07:20','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','mancha de aceite debajo del equipo',1,'C',1,1,1,1,0,0,'',0,60,NULL,6,0,0),(53,NULL,'12','0000-00-00','0000-00-00 00:00:00','2018-01-30 14:06:43','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','No tiene fuerza para levantar la carga',1,'C',1,1,1,1,0,0,'',0,60,NULL,6,0,0),(54,NULL,'12','0000-00-00','0000-00-00 00:00:00','2018-01-30 14:06:43','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','No tiene fuerza para levantar la carga',1,'C',1,1,1,1,0,0,'',0,60,NULL,6,0,0),(55,NULL,'12','0000-00-00','0000-00-00 00:00:00','2018-01-30 14:06:43','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','No tiene fuerza para levantar la carga',1,'C',1,1,1,1,0,0,'',0,60,NULL,6,0,0),(56,NULL,'7','0000-00-00','0000-00-00 00:00:00','2017-12-01 05:35:25','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Falla test sobre RS-0001 (01-12)',1,'C',1,1,1,1,0,0,'',0,60,NULL,6,0,0),(57,1,'1','2018-02-08','2018-02-08 00:00:00','2017-11-08 10:44:25','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','rotura de rueda',1,'AN',1,1,1,1,0,1,'2',1,60,NULL,6,0,0),(58,NULL,'13','0000-00-00','0000-00-00 00:00:00','2018-02-05 19:01:38','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','bateria descargada\n\n',1,'C',1,1,1,1,0,0,'',0,60,NULL,6,0,0),(59,NULL,'15','0000-00-00','0000-00-00 00:00:00','2018-02-05 19:46:36','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','ggggjffufjffg',1,'C',1,1,1,1,0,0,'',0,60,NULL,6,0,0),(60,8,'1','2018-02-08','2018-01-08 15:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','CAMBIE EL ACEITE DE MOTOR. ACEITE 15W40',1,'C',1,1,1,1,0,16,'3',4,60,NULL,6,0,0),(61,4,'1','2018-02-08','2018-01-12 15:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,NULL,6,0,0),(62,4,'1','2018-02-17','2018-02-17 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,6,0,0),(63,4,'1','2018-02-17','2018-03-04 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,6,0,0),(64,4,'1','2018-02-17','2018-03-19 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,6,0,0),(65,4,'1','2018-02-17','2018-04-03 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,6,0,0),(66,4,'1','2018-02-17','2018-04-18 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,6,0,0),(67,4,'1','2018-02-17','2018-05-03 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,6,0,0),(68,4,'1','2018-02-17','2018-05-18 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,6,0,0),(69,4,'1','2018-02-17','2018-06-02 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,8,'3',6,60,11,6,0,0),(70,4,'1','2018-02-17','2018-06-17 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,9,'3',6,60,11,6,0,0),(71,4,'1','2018-02-17','2018-07-02 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,6,0,0),(72,16,'1','2018-02-17','2018-02-17 20:00:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,6,0,0),(73,16,'1','2018-02-17','2018-02-19 15:20:00','2018-02-10 00:00:00','2018-03-01 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',3,1,1,1,0,8,'5',4,60,8,6,0,0),(74,4,'1','2018-02-18','2018-02-18 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(75,4,'1','2018-02-18','2018-03-05 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(76,4,'1','2018-02-18','2018-03-20 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(77,4,'1','2018-02-18','2018-04-04 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(78,4,'1','2018-02-18','2018-04-19 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(79,4,'1','2018-02-18','2018-05-04 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(80,4,'1','2018-02-18','2018-05-19 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(81,4,'1','2018-02-18','2018-06-03 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(82,4,'1','2018-02-18','2018-06-18 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(83,4,'1','2018-02-18','2018-07-03 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(84,4,'1','2018-02-18','2018-07-18 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(85,4,'1','2018-02-18','2018-08-02 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(86,4,'1','2018-02-18','2018-08-17 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(87,4,'1','2018-02-18','2018-09-01 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(88,4,'1','2018-02-18','2018-09-16 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(89,4,'1','2018-02-18','2018-10-01 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(90,4,'1','2018-02-18','2018-10-16 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(91,4,'1','2018-02-18','2018-10-31 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(92,4,'1','2018-02-18','2018-11-15 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(93,4,'1','2018-02-18','2018-11-30 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(94,4,'1','2018-02-18','2018-12-15 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(95,4,'1','2018-02-18','2018-12-30 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(96,4,'1','2018-02-18','2019-01-14 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(97,4,'1','2018-02-18','2019-01-29 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(98,4,'1','2018-02-18','2019-02-13 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(99,4,'1','2018-02-18','2019-02-28 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(100,4,'1','2018-02-18','2019-03-15 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(101,4,'1','2018-02-18','2019-03-30 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(102,4,'1','2018-02-18','2019-04-14 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(103,4,'1','2018-02-18','2019-04-29 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(104,4,'1','2018-02-18','2019-05-14 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(105,4,'1','2018-02-18','2019-05-29 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(106,4,'1','2018-02-18','2019-06-13 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(107,4,'1','2018-02-18','2019-06-28 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(108,4,'1','2018-02-18','2019-07-13 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(109,4,'1','2018-02-18','2019-07-28 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(110,4,'1','2018-02-18','2019-08-12 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(111,4,'1','2018-02-18','2019-08-27 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(112,4,'1','2018-02-18','2019-09-11 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(113,4,'1','2018-02-18','2019-09-26 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(114,4,'1','2018-02-18','2019-10-11 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(115,4,'1','2018-02-18','2019-10-26 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(116,4,'1','2018-02-18','2019-11-10 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(117,4,'1','2018-02-18','2019-11-25 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(118,4,'1','2018-02-18','2019-12-10 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(119,4,'1','2018-02-18','2019-12-25 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(120,4,'1','2018-02-18','2020-01-09 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(121,4,'1','2018-02-18','2020-01-24 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(122,4,'1','2018-02-18','2020-02-08 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(123,4,'1','2018-02-18','2020-02-23 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(124,4,'1','2018-02-18','2020-03-09 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(125,4,'1','2018-02-18','2020-03-24 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(126,4,'1','2018-02-18','2020-04-08 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(127,4,'1','2018-02-18','2020-04-23 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(128,4,'1','2018-02-18','2020-05-08 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(129,4,'1','2018-02-18','2020-05-23 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(130,4,'1','2018-02-18','2020-06-07 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(131,4,'1','2018-02-18','2020-06-22 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(132,4,'1','2018-02-18','2020-07-07 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(133,4,'1','2018-02-18','2020-07-22 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(134,4,'1','2018-02-18','2020-08-06 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(135,4,'1','2018-02-18','2020-08-21 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(136,4,'1','2018-02-18','2020-09-05 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(137,4,'1','2018-02-18','2020-09-20 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(138,4,'1','2018-02-18','2020-10-05 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(139,4,'1','2018-02-18','2020-10-20 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(140,4,'1','2018-02-18','2020-11-04 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(141,4,'1','2018-02-18','2020-11-19 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(142,4,'1','2018-02-18','2020-12-04 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(143,4,'1','2018-02-18','2020-12-19 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(144,5,'1','2018-02-18','2018-02-18 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(145,5,'1','2018-02-18','2018-03-20 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(146,5,'1','2018-02-18','2018-04-19 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(147,5,'1','2018-02-18','2018-05-19 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(148,5,'1','2018-02-18','2018-06-18 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(149,5,'1','2018-02-18','2018-07-18 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(150,5,'1','2018-02-18','2018-08-17 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(151,5,'1','2018-02-18','2018-09-16 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(152,5,'1','2018-02-18','2018-10-16 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(153,5,'1','2018-02-18','2018-11-15 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(154,5,'1','2018-02-18','2018-12-15 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(155,5,'1','2018-02-18','2019-01-14 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(156,5,'1','2018-02-18','2019-02-13 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(157,5,'1','2018-02-18','2019-03-15 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(158,5,'1','2018-02-19','2018-02-19 03:30:00','2018-01-18 00:00:00','2018-09-07 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'As',1,5,1,1,0,12,'3',4,60,12,6,0,0),(159,5,'1','2018-02-19','2018-02-26 03:30:00','2018-01-18 00:00:00','2018-09-07 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'As',1,12,1,1,0,12,'3',4,60,12,6,0,0),(160,5,'1','2018-02-19','2018-03-05 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,9,'3',4,60,12,6,0,0),(161,5,'1','2018-02-19','2018-03-12 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,8,'3',4,60,12,6,0,0),(162,5,'1','2018-02-19','2018-03-19 03:30:00','2018-01-18 00:00:00','2018-09-07 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'As',1,15,1,1,0,11,'3',4,60,12,6,0,0),(163,5,'1','2018-02-19','2018-03-26 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(164,5,'1','2018-02-19','2018-04-02 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(165,5,'1','2018-02-19','2018-04-09 03:30:00','2018-01-18 00:00:00','2018-09-07 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'As',1,4,1,1,0,12,'3',4,60,12,6,0,0),(166,5,'1','2018-02-19','2018-04-16 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(167,5,'1','2018-02-19','2018-04-23 03:30:00','2018-01-18 00:00:00','2018-08-30 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'As',1,2,1,1,0,12,'3',4,60,12,6,0,0),(168,5,'1','2018-02-19','2018-04-30 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(169,5,'1','2018-02-19','2018-05-07 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(170,5,'1','2018-02-19','2018-05-14 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(171,5,'1','2018-02-19','2018-05-21 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(172,5,'1','2018-02-19','2018-05-28 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(173,5,'1','2018-02-19','2018-06-04 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(174,5,'1','2018-02-19','2018-06-11 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(175,5,'1','2018-02-19','2018-06-18 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(176,5,'1','2018-02-19','2018-06-25 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(177,5,'1','2018-02-19','2018-07-02 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,120,12,6,0,0),(178,5,'1','2018-02-19','2018-07-09 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(179,5,'1','2018-02-19','2018-07-16 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(180,5,'1','2018-02-19','2018-07-23 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(181,5,'1','2018-02-19','2018-07-30 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(182,5,'1','2018-02-19','2018-08-06 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(183,5,'1','2018-02-19','2018-08-13 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(184,5,'1','2018-02-19','2018-08-20 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(185,5,'1','2018-02-19','2018-08-29 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(186,5,'1','2018-02-19','2018-09-03 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(187,5,'1','2018-02-19','2018-09-04 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(188,5,'1','2018-02-19','2018-09-17 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(189,5,'1','2018-02-19','2018-09-24 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(190,5,'1','2018-02-19','2018-10-01 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(191,5,'1','2018-02-19','2018-10-08 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(192,5,'1','2018-02-19','2018-10-15 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(193,5,'1','2018-02-19','2018-10-22 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(194,5,'1','2018-02-19','2018-10-29 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(195,5,'1','2018-02-19','2018-11-05 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(196,5,'1','2018-02-19','2018-11-12 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(197,5,'1','2018-02-19','2018-11-19 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(198,5,'1','2018-02-19','2018-11-26 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(199,5,'1','2018-02-19','2018-12-07 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(200,5,'1','2018-02-19','2018-12-10 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(201,5,'1','2018-02-19','2018-12-17 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(202,5,'1','2018-02-19','2018-12-24 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(203,5,'1','2018-02-19','2018-12-31 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(204,5,'1','2018-02-19','2019-01-07 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(205,5,'1','2018-02-19','2019-01-14 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(206,5,'1','2018-02-19','2019-01-21 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(207,5,'1','2018-02-19','2019-01-28 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(208,5,'1','2018-02-19','2019-02-04 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(209,5,'1','2018-02-19','2019-02-11 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(210,5,'1','2018-02-19','2019-02-18 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(211,5,'1','2018-02-19','2019-02-25 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(212,5,'1','2018-02-19','2019-03-04 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(213,5,'1','2018-02-19','2019-03-11 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(214,5,'1','2018-02-19','2019-03-18 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(215,5,'1','2018-02-19','2019-03-25 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(216,5,'1','2018-02-19','2019-04-01 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(217,5,'1','2018-02-19','2019-04-08 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(218,5,'1','2018-02-19','2019-04-15 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(219,5,'1','2018-02-19','2019-04-22 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(220,5,'1','2018-02-19','2019-04-29 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(221,5,'1','2018-02-19','2019-05-06 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(222,5,'1','2018-02-19','2019-05-13 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(223,5,'1','2018-02-19','2019-05-20 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(224,5,'1','2018-02-19','2019-05-27 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(225,5,'1','2018-02-19','2019-06-03 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(226,5,'1','2018-02-19','2019-06-10 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(227,5,'1','2018-02-19','2019-06-17 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(228,5,'1','2018-02-19','2019-06-24 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(229,5,'1','2018-02-19','2019-07-01 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(230,5,'1','2018-02-19','2019-07-08 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(231,5,'1','2018-02-19','2019-07-15 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(232,5,'1','2018-02-19','2019-07-22 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(233,5,'1','2018-02-19','2019-07-29 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(234,5,'1','2018-02-19','2019-08-05 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(235,5,'1','2018-02-19','2019-08-12 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(236,5,'1','2018-02-19','2019-08-19 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(237,5,'1','2018-02-19','2019-08-26 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(238,5,'1','2018-02-19','2019-09-02 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(239,5,'1','2018-02-19','2019-09-09 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(240,5,'1','2018-02-19','2019-09-16 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(241,5,'1','2018-02-19','2019-09-23 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(242,5,'1','2018-02-19','2019-09-30 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(243,5,'1','2018-02-19','2019-10-07 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(244,5,'1','2018-02-19','2019-10-14 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(245,5,'1','2018-02-19','2019-10-21 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(246,5,'1','2018-02-19','2019-10-28 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(247,5,'1','2018-02-19','2019-11-04 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(248,5,'1','2018-02-19','2019-11-11 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(249,5,'1','2018-02-19','2019-11-18 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(250,5,'1','2018-02-19','2019-11-25 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(251,5,'1','2018-02-19','2019-12-02 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(252,5,'1','2018-02-19','2019-12-09 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(253,5,'1','2018-02-19','2019-12-16 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(254,5,'1','2018-02-19','2019-12-23 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(255,5,'1','2018-02-19','2019-12-30 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(256,5,'1','2018-02-19','2020-01-06 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(257,5,'1','2018-02-19','2020-01-13 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(258,5,'1','2018-02-19','2020-01-20 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(259,5,'1','2018-02-19','2020-01-27 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(260,5,'1','2018-02-19','2020-02-03 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(261,5,'1','2018-02-19','2020-02-10 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(262,5,'1','2018-02-19','2020-02-17 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(263,5,'1','2018-02-19','2020-02-24 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(264,5,'1','2018-02-19','2020-03-02 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(265,5,'1','2018-02-19','2020-03-09 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(266,5,'1','2018-02-19','2020-03-16 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(267,5,'1','2018-02-19','2020-03-23 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(268,5,'1','2018-02-19','2020-03-30 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(269,5,'1','2018-02-19','2020-04-06 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(270,5,'1','2018-02-19','2020-04-13 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(271,5,'1','2018-02-19','2020-04-20 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(272,5,'1','2018-02-19','2020-04-27 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(273,5,'1','2018-02-19','2020-05-04 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(274,5,'1','2018-02-19','2020-05-11 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(275,5,'1','2018-02-19','2020-05-18 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(276,5,'1','2018-02-19','2020-05-25 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(277,5,'1','2018-02-19','2020-06-01 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(278,5,'1','2018-02-19','2020-06-08 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(279,5,'1','2018-02-19','2020-06-15 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(280,5,'1','2018-02-19','2020-06-22 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(281,5,'1','2018-02-19','2020-06-29 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(282,5,'1','2018-02-19','2020-07-06 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(283,5,'1','2018-02-19','2020-07-13 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(284,5,'1','2018-02-19','2020-07-20 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(285,5,'1','2018-02-19','2020-07-27 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(286,5,'1','2018-02-19','2020-08-03 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(287,5,'1','2018-02-19','2020-08-10 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(288,5,'1','2018-02-19','2020-08-17 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(289,5,'1','2018-02-19','2020-08-24 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(290,5,'1','2018-02-19','2020-08-31 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(291,5,'1','2018-02-19','2020-09-07 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(292,5,'1','2018-02-19','2020-09-14 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(293,5,'1','2018-02-19','2020-09-21 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(294,5,'1','2018-02-19','2020-09-28 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(295,5,'1','2018-02-19','2020-10-05 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(296,5,'1','2018-02-19','2020-10-12 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(297,5,'1','2018-02-19','2020-10-19 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(298,5,'1','2018-02-19','2020-10-26 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(299,5,'1','2018-02-19','2020-11-02 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(300,5,'1','2018-02-19','2020-11-09 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(301,5,'1','2018-02-19','2020-11-16 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(302,5,'1','2018-02-19','2020-11-23 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(303,5,'1','2018-02-19','2020-11-30 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(304,5,'1','2018-02-19','2020-12-07 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(305,5,'1','2018-02-19','2020-12-14 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(306,5,'1','2018-02-19','2020-12-21 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(307,5,'1','2018-02-19','2020-12-28 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(308,5,'1','2018-02-19','2021-01-04 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(309,5,'1','2018-02-19','2021-01-11 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(310,5,'1','2018-02-19','2021-01-18 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(311,5,'1','2018-02-19','2021-01-25 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(312,5,'1','2018-02-19','2021-02-01 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(313,5,'1','2018-02-19','2021-02-08 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(314,5,'1','2018-02-19','2021-02-15 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(315,5,'1','2018-02-19','2021-02-22 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(316,5,'1','2018-02-19','2018-02-19 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(317,5,'1','2018-02-19','2018-02-26 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(318,5,'1','2018-02-19','2018-03-07 08:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(319,5,'1','2018-02-19','2018-03-12 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,240,12,6,0,0),(320,5,'1','2018-02-19','2018-03-19 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(321,5,'1','2018-02-19','2018-03-26 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(322,5,'1','2018-02-19','2018-04-02 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(323,5,'1','2018-02-19','2018-04-09 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(324,5,'1','2018-02-19','2018-04-16 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(325,5,'1','2018-02-19','2018-04-23 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(326,5,'1','2018-02-19','2018-04-30 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(327,5,'1','2018-02-19','2018-05-07 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(328,5,'1','2018-02-19','2018-05-14 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(329,5,'1','2018-02-19','2018-05-21 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(330,5,'1','2018-02-19','2018-05-28 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(331,5,'1','2018-02-19','2018-06-04 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(332,5,'1','2018-02-19','2018-06-11 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(333,5,'1','2018-02-19','2018-06-18 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(334,5,'1','2018-02-19','2018-06-25 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(335,5,'1','2018-02-19','2018-07-02 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(336,5,'1','2018-02-19','2018-07-09 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(337,5,'1','2018-02-19','2018-07-16 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(338,5,'1','2018-02-19','2018-07-23 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(339,5,'1','2018-02-19','2018-07-30 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(340,5,'1','2018-02-19','2018-08-06 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(341,5,'1','2018-02-19','2018-08-13 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(342,5,'1','2018-02-19','2018-08-20 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(343,5,'1','2018-02-19','2018-08-27 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(344,5,'1','2018-02-19','2018-09-03 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(345,5,'1','2018-02-19','2018-09-04 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,180,12,6,0,0),(346,5,'1','2018-02-19','2018-09-17 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(347,5,'1','2018-02-19','2018-09-24 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(348,5,'1','2018-02-19','2018-10-01 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(349,5,'1','2018-02-19','2018-10-08 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(350,5,'1','2018-02-19','2018-10-15 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(351,5,'1','2018-02-19','2018-10-22 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(352,5,'1','2018-02-19','2018-10-29 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(353,5,'1','2018-02-19','2018-11-05 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(354,5,'1','2018-02-19','2018-11-12 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(355,5,'1','2018-02-19','2018-11-19 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(356,5,'1','2018-02-19','2018-11-26 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(357,5,'1','2018-02-19','2018-12-03 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(358,5,'1','2018-02-19','2018-12-10 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(359,5,'1','2018-02-19','2018-12-17 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(360,5,'1','2018-02-19','2018-12-24 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(361,5,'1','2018-02-19','2018-12-31 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(362,5,'1','2018-02-19','2019-01-07 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(363,5,'1','2018-02-19','2019-01-14 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(364,5,'1','2018-02-19','2019-01-21 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(365,5,'1','2018-02-19','2019-01-28 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(366,5,'1','2018-02-19','2019-02-04 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(367,5,'1','2018-02-19','2019-02-11 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(368,5,'1','2018-02-19','2019-02-18 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(369,5,'1','2018-02-19','2019-02-25 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(370,5,'1','2018-02-19','2019-03-04 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(371,5,'1','2018-02-19','2019-03-11 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(372,5,'1','2018-02-19','2019-03-18 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(373,5,'1','2018-02-19','2019-03-25 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(374,5,'1','2018-02-19','2019-04-01 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(375,5,'1','2018-02-19','2019-04-08 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(376,5,'1','2018-02-19','2019-04-15 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(377,5,'1','2018-02-19','2019-04-22 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(378,5,'1','2018-02-19','2019-04-29 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(379,5,'1','2018-02-19','2019-05-06 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(380,5,'1','2018-02-19','2019-05-13 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(381,5,'1','2018-02-19','2019-05-20 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(382,5,'1','2018-02-19','2019-05-27 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(383,5,'1','2018-02-19','2019-06-03 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(384,5,'1','2018-02-19','2019-06-10 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(385,5,'1','2018-02-19','2019-06-17 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(386,5,'1','2018-02-19','2019-06-24 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(387,5,'1','2018-02-19','2019-07-01 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(388,5,'1','2018-02-19','2019-07-08 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(389,5,'1','2018-02-19','2019-07-15 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(390,5,'1','2018-02-19','2019-07-22 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(391,5,'1','2018-02-19','2019-07-29 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(392,5,'1','2018-02-19','2019-08-05 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(393,5,'1','2018-02-19','2019-08-12 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(394,5,'1','2018-02-19','2019-08-19 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(395,5,'1','2018-02-19','2019-08-26 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(396,5,'1','2018-02-19','2019-09-02 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(397,5,'1','2018-02-19','2019-09-09 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(398,5,'1','2018-02-19','2019-09-16 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(399,5,'1','2018-02-19','2019-09-23 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(400,5,'1','2018-02-19','2019-09-30 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(401,5,'1','2018-02-19','2019-10-07 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(402,5,'1','2018-02-19','2019-10-14 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(403,5,'1','2018-02-19','2019-10-21 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(404,5,'1','2018-02-19','2019-10-28 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(405,5,'1','2018-02-19','2019-11-04 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(406,5,'1','2018-02-19','2019-11-11 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(407,5,'1','2018-02-19','2019-11-18 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(408,5,'1','2018-02-19','2019-11-25 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(409,5,'1','2018-02-19','2019-12-02 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(410,5,'1','2018-02-19','2019-12-09 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(411,5,'1','2018-02-19','2019-12-16 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(412,5,'1','2018-02-19','2019-12-23 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(413,5,'1','2018-02-19','2019-12-30 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(414,5,'1','2018-02-19','2020-01-06 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(415,5,'1','2018-02-19','2020-01-13 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(416,5,'1','2018-02-19','2020-01-20 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(417,5,'1','2018-02-19','2020-01-27 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(418,5,'1','2018-02-19','2020-02-03 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(419,5,'1','2018-02-19','2020-02-10 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(420,5,'1','2018-02-19','2020-02-17 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(421,5,'1','2018-02-19','2020-02-24 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,6,0,0),(422,4,'1','2018-02-19','2018-02-20 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(423,4,'1','2018-02-19','2018-03-05 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,150,11,6,0,0),(424,4,'1','2018-02-19','2018-03-22 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(425,4,'1','2018-02-19','2018-04-06 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(426,4,'1','2018-02-19','2018-04-27 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(427,4,'1','2018-02-19','2018-05-06 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(428,4,'1','2018-02-19','2018-05-21 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(429,4,'1','2018-02-19','2018-06-05 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(430,4,'1','2018-02-19','2018-06-20 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(431,4,'1','2018-02-19','2018-07-05 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(432,4,'1','2018-02-19','2018-07-20 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(433,4,'1','2018-02-19','2018-08-04 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(434,4,'1','2018-02-19','2018-08-19 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(435,4,'1','2018-02-19','2018-09-03 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(436,4,'1','2018-02-19','2018-09-18 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(437,4,'1','2018-02-19','2018-10-03 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(438,4,'1','2018-02-19','2018-10-18 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(439,4,'1','2018-02-19','2018-11-02 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(440,4,'1','2018-02-19','2018-11-17 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(441,4,'1','2018-02-19','2018-12-02 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(442,4,'1','2018-02-19','2018-12-17 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(443,4,'1','2018-02-19','2019-01-01 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(444,4,'1','2018-02-19','2019-01-16 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(445,4,'1','2018-02-19','2019-01-31 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(446,4,'1','2018-02-19','2019-02-15 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(447,4,'1','2018-02-19','2019-03-02 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(448,4,'1','2018-02-19','2019-03-17 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(449,4,'1','2018-02-19','2019-04-01 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(450,4,'1','2018-02-19','2019-04-16 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(451,4,'1','2018-02-19','2019-05-01 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(452,4,'1','2018-02-19','2019-05-16 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(453,4,'1','2018-02-19','2019-05-31 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(454,4,'1','2018-02-19','2019-06-15 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(455,4,'1','2018-02-19','2019-06-30 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(456,4,'1','2018-02-19','2019-07-15 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(457,4,'1','2018-02-19','2019-07-30 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(458,4,'1','2018-02-19','2019-08-14 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(459,4,'1','2018-02-19','2019-08-29 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(460,4,'1','2018-02-19','2019-09-13 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(461,4,'1','2018-02-19','2019-09-28 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(462,4,'1','2018-02-19','2019-10-13 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(463,4,'1','2018-02-19','2019-10-28 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(464,4,'1','2018-02-19','2019-11-12 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(465,4,'1','2018-02-19','2019-11-27 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(466,4,'1','2018-02-19','2019-12-12 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(467,4,'1','2018-02-19','2019-12-27 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(468,4,'1','2018-02-19','2020-01-11 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(469,4,'1','2018-02-19','2020-01-26 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(470,4,'1','2018-02-19','2020-02-10 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(471,4,'1','2018-02-19','2020-02-25 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(472,4,'1','2018-02-19','2020-03-11 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(473,4,'1','2018-02-19','2020-03-26 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(474,4,'1','2018-02-19','2020-04-10 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(475,4,'1','2018-02-19','2020-04-25 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(476,4,'1','2018-02-19','2020-05-10 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(477,4,'1','2018-02-19','2020-05-25 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(478,4,'1','2018-02-19','2020-06-09 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(479,4,'1','2018-02-19','2020-06-24 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(480,4,'1','2018-02-19','2020-07-09 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(481,4,'1','2018-02-19','2020-07-24 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(482,4,'1','2018-02-19','2020-08-08 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(483,4,'1','2018-02-19','2020-08-23 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(484,4,'1','2018-02-19','2020-09-07 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(485,4,'1','2018-02-19','2020-09-22 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(486,4,'1','2018-02-19','2020-10-07 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(487,4,'1','2018-02-19','2020-10-22 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(488,4,'1','2018-02-19','2020-11-06 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(489,4,'1','2018-02-19','2020-11-21 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(490,4,'1','2018-02-19','2020-12-06 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(491,4,'1','2018-02-19','2020-12-21 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(492,4,'1','2018-02-19','2021-01-05 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(493,4,'1','2018-02-19','2021-01-20 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(494,4,'1','2018-02-19','2021-02-04 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(495,4,'1','2018-02-19','2021-02-19 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(496,4,'1','2018-02-19','2021-03-06 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,6,0,0),(497,16,'1','2018-02-19','2018-02-19 12:02:00','2018-02-10 00:00:00','2018-03-01 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',3,1,1,1,0,8,'5',4,60,8,6,0,0),(498,16,'1','2018-02-19','2018-02-28 12:02:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,6,0,0),(499,16,'1','2018-02-19','2018-03-30 12:02:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,6,0,0),(500,16,'1','2018-02-19','2018-04-29 12:02:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,6,0,0),(501,16,'1','2018-02-19','2018-05-29 12:02:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,6,0,0),(502,16,'1','2018-02-19','2018-02-21 11:23:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,6,0,0),(503,16,'1','2018-02-19','2018-03-23 11:23:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,6,0,0),(504,16,'1','2018-02-19','2018-04-22 11:23:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,6,0,0),(505,16,'1','2018-02-19','2018-02-22 12:22:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,6,0,0),(506,16,'1','2018-02-19','2018-03-24 12:22:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,6,0,0),(507,16,'1','2018-02-19','2018-04-23 12:22:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,6,0,0),(508,16,'1','2018-02-19','2018-05-23 12:22:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,6,0,0),(509,12,'1','2018-02-26','2018-02-16 11:00:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL DEPÓSITO DE COMBUSTIBLE.',1,'C',1,1,1,1,0,14,'4',4,120,14,6,0,0),(510,1,'510','2018-02-26','2018-02-07 15:00:00','2018-10-11 18:32:10','2018-10-11 18:13:30','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','bateria descargada 510',1,'P',1,19,1,1,1,13,'2',9,60,13,6,0,0),(511,1,'1','2018-02-26','2018-02-23 17:00:00','2018-02-08 14:38:14','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Ruido en cuerpo de bomba int 0057A',1,'C',1,1,1,1,0,17,'2',10,60,17,6,0,0),(512,1,'1','2018-02-26','2018-02-21 22:00:00','2018-02-05 19:01:38','2018-10-05 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','bateria descargada\n\n',1,'As',1,19,1,1,0,13,'2',9,60,13,6,0,0),(513,5,'1','2018-02-26','2018-02-23 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(514,5,'1','2018-02-26','2018-03-25 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(515,5,'1','2018-02-26','2018-04-24 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(516,5,'1','2018-02-26','2018-05-24 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(517,5,'1','2018-02-26','2018-06-23 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(518,5,'1','2018-02-26','2018-07-23 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(519,5,'1','2018-02-26','2018-08-22 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(520,5,'1','2018-02-26','2018-09-21 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(521,5,'1','2018-02-26','2018-10-21 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(522,5,'1','2018-02-26','2018-11-20 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(523,5,'1','2018-02-26','2018-12-20 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(524,5,'1','2018-02-26','2019-01-19 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(525,5,'1','2018-02-26','2019-02-18 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(526,5,'1','2018-02-26','2019-03-20 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,6,0,0),(527,12,'1','2018-02-26','2018-02-22 19:00:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL DEPÓSITO DE COMBUSTIBLE.',1,'C',1,1,1,1,0,14,'4',4,60,14,6,0,0),(528,8,'1','2018-03-09','2018-03-22 02:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','CAMBIE EL ACEITE DE MOTOR. ACEITE 15W40',1,'C',1,1,1,1,0,16,'3',4,30,16,6,0,0),(529,9,'1','2018-03-10','2018-03-14 00:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','CAMBIE LOS FILTROS DE ACEITE.',1,'C',1,1,1,1,0,17,'3',4,0,17,6,0,0),(530,8,'1','2018-03-12','2018-03-12 01:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','CAMBIE EL ACEITE DE MOTOR. ACEITE 15W40',1,'C',1,1,1,1,0,16,'3',4,0,16,6,0,0),(531,NULL,'','0000-00-00','0000-00-00 00:00:00','2018-03-12 05:28:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','weqeqwqweqweqwewqeqwe\neqweqweqwe\nqweqw',1,'C',1,1,0,1,2,0,'1',4,0,NULL,6,0,0),(532,NULL,'','0000-00-00','0000-00-00 00:00:00','2018-03-12 14:17:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','editado',1,'P',1,1,0,1,1,0,'1',8,0,NULL,6,0,0),(533,1,'1','2018-06-19','2018-06-19 05:00:00','2018-06-19 11:09:05','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','falla test',1,'AN',3,1,1,1,0,27,'2',4,60,27,6,0,0),(534,1,'1','2018-06-21','2018-06-21 05:15:00','2018-06-19 11:17:36','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','falla testing 1',1,'AN',3,1,1,1,0,29,'2',4,60,29,6,0,0),(535,1,'1','2018-06-21','2018-06-21 18:00:00','2018-06-19 11:09:05','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','falla test',1,'C',3,1,1,1,0,27,'2',4,60,27,6,0,0),(536,1,'','0000-00-00','0000-00-00 00:00:00','2018-06-22 10:33:00','2018-06-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','orden de trabajos testing 11 editado',1,'C',3,3,1,1,1,0,'1',11,60,NULL,6,0,0),(537,1,'1','2018-06-25','2018-06-26 15:00:00','2018-06-25 09:29:37','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','fala ttesting 25-06',1,'C',3,1,1,1,0,31,'2',4,60,31,6,0,0),(538,1,'1','2018-06-28','2018-06-28 20:00:00','2018-06-28 12:52:09','2018-06-29 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','falla calendario ',1,'As',3,3,1,1,1,32,'2',4,60,32,6,0,0),(539,1,'1','2018-06-28','2018-06-28 15:00:00','2018-06-28 12:52:09','2018-06-29 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','falla calendario ',1,'As',3,3,1,1,0,32,'2',4,60,32,6,0,0),(540,1,'1','2018-06-28','2018-06-28 15:00:00','2018-06-28 12:52:09','2018-06-29 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','falla calendario ',1,'As',3,3,1,1,0,32,'2',4,60,32,6,0,0),(541,1,'1','2018-06-28','2018-06-28 15:00:00','2018-06-28 12:52:09','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','falla calendario ',1,'C',3,1,1,1,1,32,'2',4,60,32,6,0,0),(542,15,'1','2018-07-25','2018-07-25 23:00:00','2018-01-01 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambie los Filtros del Motor',1,'C',1,1,1,1,0,4,'3',1,30,4,6,0,0),(543,36,'1','2018-07-25','2018-07-26 23:00:00','2018-01-01 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite de Transmisión (cada 1000hs según horometro, utilizar el aceite SAE10W). ',1,'C',1,1,1,1,0,32,'3',2,60,32,6,0,0),(544,36,'1','2018-07-25','2018-07-25 23:30:00','2018-01-01 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambiar Aceite de Transmisión (cada 1000hs según horometro, utilizar el aceite SAE10W). ',1,'C',1,1,1,1,0,32,'3',2,30,32,6,0,0),(545,3,'1','2018-07-28','2018-07-28 20:15:00','2018-01-01 00:00:00','2018-10-04 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambie Liquido de Refrigerante de Motor (Revise la Mezcla Anticongelante antes de la Epoca Invernal).',1,'As',1,1,1,1,0,97,'3',5,20,97,6,0,0),(546,NULL,'','0000-00-00','0000-00-00 00:00:00','2018-09-24 18:09:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','hhhhh',1,'C',19,1,0,1,0,0,'1',1,0,NULL,0,0,0),(547,NULL,'','0000-00-00','0000-00-00 00:00:00','2018-09-24 18:10:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','barrer la vereda',1,'C',16,1,0,1,0,0,'1',13,0,NULL,0,0,0),(548,NULL,'8000','0000-00-00','0000-00-00 00:00:00','2018-09-24 18:15:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','ver',1,'C',16,1,0,1,0,0,'1',13,0,NULL,0,0,0),(549,113,'1','2018-09-24','0000-00-00 00:00:00','2018-09-26 00:00:00','2018-10-08 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambio de Vidrios ',1,'AN',19,16,1,1,0,131,'3',13,1,131,7,0,0),(550,121,'1','2018-09-24','0000-00-00 00:00:00','2018-09-24 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Regulación Eléctrica de Joysticks ',1,'AN',16,1,1,1,0,130,'3',13,2,130,7,0,0),(551,113,'1','2018-09-24','0000-00-00 00:00:00','2018-09-26 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Cambio de Vidrios ',1,'AN',19,1,1,1,0,131,'3',13,1,131,7,0,0),(552,1,'1','2018-09-25','0000-00-00 00:00:00','2018-08-30 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',1,1,1,1,0,122,'3',1,12,122,6,0,0),(553,NULL,'1234','0000-00-00','0000-00-00 00:00:00','2018-09-26 00:36:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','901',1,'C',1,1,0,1,0,0,'1',13,0,NULL,0,0,0),(554,NULL,'1111','0000-00-00','0000-00-00 00:00:00','2018-09-26 00:38:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','11111111',1,'C',1,1,0,1,0,0,'1',16,0,NULL,0,0,0),(555,NULL,'11111111','0000-00-00','0000-00-00 00:00:00','2018-09-26 00:38:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','12222222222222',1,'C',1,1,0,1,0,0,'1',1,0,NULL,0,0,0),(556,NULL,'1','0000-00-00','0000-00-00 00:00:00','2018-09-26 00:39:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1111',1,'C',1,1,0,1,0,0,'1',3,0,NULL,0,0,0),(557,9,'1','2018-09-26','0000-00-00 00:00:00','2018-09-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo del Radiador.',1,'C',1,1,1,1,0,133,'3',1,2,133,6,0,0),(558,NULL,'','0000-00-00','0000-00-00 00:00:00','2018-09-28 21:32:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','',1,'C',1,1,0,-1,0,0,'1',-1,0,NULL,0,0,0),(559,1,'1','2018-10-02','0000-00-00 00:00:00','2018-09-05 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',1,1,1,1,0,127,'3',1,23,127,6,0,0),(560,1,'1','2018-10-03','0000-00-00 00:00:00','2018-09-26 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',1,1,1,1,0,135,'3',1,33,135,6,0,0),(561,1,'1','2018-10-03','0000-00-00 00:00:00','2018-09-26 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',1,1,1,1,0,135,'3',1,33,135,6,0,0),(562,108,'1','2018-10-03','0000-00-00 00:00:00','2018-10-26 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Revise el Sensor de Temperatura.',1,'C',1,1,1,1,0,110,'3',5,0,110,6,0,0),(563,NULL,'0033','0000-00-00','0000-00-00 00:00:00','2018-10-03 23:12:00','2018-10-03 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0033 - 123456798 - suc capital - trazalog',1,'As',1,1,0,2,2,0,'1',18,0,NULL,6,0,0),(564,64,'1','2018-10-03','2018-10-03 23:45:00','2018-07-04 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Lubricar Eje de Mando Trasero (cada 2000 hs según horómetro. utilizar aceite. ver tabla de aceites capacidad 16 litros).',1,'C',1,1,1,1,0,60,'3',3,15,60,6,0,0),(565,1,'1','2018-10-03','2018-10-05 10:00:00','2018-09-05 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',1,1,1,1,0,127,'3',1,23,127,6,0,0),(566,1,'1','2018-10-03','2018-10-14 00:00:00','2018-09-25 10:23:40','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','equipo averiado ',1,'C',1,1,1,1,0,51,'2',1,60,51,6,0,0),(567,1,'1','2018-10-03','2018-09-14 00:00:00','2018-09-25 10:23:40','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','equipo averiado ',1,'C',1,1,1,1,0,51,'2',1,60,51,6,0,0),(568,NULL,'11223344','0000-00-00','0000-00-00 00:00:00','2018-10-04 10:41:00','2018-10-24 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','nueva ot 123456789',1,'As',1,1,0,1,1,0,'1',18,0,NULL,6,0,0),(569,1,'1','2018-10-04','2018-10-10 12:56:00','2018-09-05 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',1,1,1,1,0,126,'3',1,23,126,6,0,0),(570,64,'1','2018-10-04','2018-10-31 07:17:00','2018-07-04 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Lubricar Eje de Mando Trasero (cada 2000 hs según horómetro. utilizar aceite. ver tabla de aceites capacidad 16 litros).',1,'C',1,1,1,1,0,60,'3',3,15,60,6,0,0),(571,64,'1','2018-10-04','2019-02-20 07:17:00','2018-07-04 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Lubricar Eje de Mando Trasero (cada 2000 hs según horómetro. utilizar aceite. ver tabla de aceites capacidad 16 litros).',1,'C',1,1,1,1,0,60,'3',3,15,60,6,0,0),(572,64,'1','2018-10-04','2019-06-12 07:17:00','2018-07-04 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Lubricar Eje de Mando Trasero (cada 2000 hs según horómetro. utilizar aceite. ver tabla de aceites capacidad 16 litros).',1,'C',1,1,1,1,0,60,'3',3,15,60,6,0,0),(573,9,'1','2018-10-04','2018-10-25 00:00:00','2018-09-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo del Radiador.',1,'C',1,1,1,1,0,133,'3',1,2,133,6,0,0),(574,NULL,'11112222','0000-00-00','0000-00-00 00:00:00','2018-10-04 12:03:00','2018-10-04 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','eli',1,'AN',1,1,0,1,1,0,'1',9,0,NULL,6,0,0),(575,NULL,'333','0000-00-00','0000-00-00 00:00:00','2018-10-04 12:05:00','2018-10-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','666',1,'As',1,19,0,2,2,0,'1',9,0,NULL,6,0,0),(576,NULL,'9347923984734','0000-00-00','0000-00-00 00:00:00','2018-10-04 12:08:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','jhgffgsdjfgsdhf',1,'C',1,1,0,1,1,0,'1',18,0,NULL,6,0,0),(577,NULL,'112233','0000-00-00','0000-00-00 00:00:00','2018-10-04 12:13:00','2018-10-31 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','nueva orden de trabajo',1,'As',1,1,0,1,1,0,'1',18,0,NULL,6,0,0),(578,NULL,'9996','0000-00-00','0000-00-00 00:00:00','2018-10-04 13:41:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','999 ultimaxx',1,'C',1,1,0,2,2,0,'1',9,0,NULL,6,0,0),(579,NULL,'1122334455','0000-00-00','0000-00-00 00:00:00','2018-10-05 10:36:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','nueva orden de tabajo ',1,'AN',1,1,0,1,1,0,'1',9,0,NULL,6,0,0),(580,NULL,'4536','0000-00-00','0000-00-00 00:00:00','2018-10-05 10:36:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','3456',1,'AN',1,1,0,1,2,0,'1',9,0,NULL,6,0,0),(581,NULL,'','0000-00-00','0000-00-00 00:00:00','2018-10-05 10:36:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','',1,'C',1,1,0,-1,-1,0,'1',-1,0,NULL,6,0,0),(582,NULL,'111','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','',1,'C',1,1,0,0,0,0,'1',0,0,NULL,6,0,0),(583,NULL,'1234','0000-00-00','0000-00-00 00:00:00','2018-10-05 13:06:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','1234',1,'C',1,1,0,-1,-1,0,'1',9,0,NULL,6,0,0),(584,NULL,'540','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','540',1,'AN',1,1,0,1,1,0,'1',9,0,NULL,6,0,0),(585,NULL,'222','0000-00-00','0000-00-00 00:00:00','2018-10-05 13:07:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','222',1,'AN',1,1,0,1,2,0,'1',5,0,NULL,6,0,0),(586,1,'1','2018-10-05','2018-10-05 12:00:00','2018-09-05 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',19,1,1,1,0,126,'3',1,23,126,6,0,0),(587,1,'1','2018-10-05','2018-11-19 12:00:00','2018-09-05 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',19,1,1,1,0,126,'3',1,23,126,6,0,0),(588,1,'1','2018-10-05','2019-01-03 12:00:00','2018-09-05 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',19,1,1,1,0,126,'3',1,23,126,6,0,0),(589,1,'1','2018-10-05','2019-02-17 12:00:00','2018-09-05 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',19,1,1,1,0,126,'3',1,23,126,6,0,0),(590,1,'1','2018-10-05','2019-04-03 12:00:00','2018-09-05 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',19,1,1,1,0,126,'3',1,23,126,6,0,0),(591,1,'1','2018-10-05','2019-05-18 12:00:00','2018-09-05 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',19,1,1,1,0,126,'3',1,23,126,6,0,0),(592,1,'1','2018-10-05','2019-07-02 12:00:00','2018-09-05 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',19,1,1,1,0,126,'3',1,23,126,6,0,0),(593,1,'1','2018-10-05','2019-08-16 12:00:00','2018-09-05 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',19,1,1,1,0,126,'3',1,23,126,6,0,0),(594,1,'1','2018-10-05','2019-09-30 12:00:00','2018-09-05 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',19,1,1,1,0,126,'3',1,23,126,6,0,0),(595,1,'1','2018-10-05','2019-11-14 12:00:00','2018-09-05 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)',1,'C',19,1,1,1,0,126,'3',1,23,126,6,0,0),(596,NULL,'23','0000-00-00','0000-00-00 00:00:00','2018-10-06 09:46:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','sdadasda',1,'AN',1,1,0,1,1,0,'1',9,0,NULL,6,0,0),(597,129,'1','2018-10-08','2018-10-25 00:00:00','2018-10-08 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'AN',18,1,1,1,0,25,'5',13,2,25,7,0,0),(598,1,'1','2018-10-08','2018-10-25 00:00:00','2018-10-08 08:47:51','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Engrase de cardan ',1,'AN',18,1,1,1,0,73,'2',16,60,73,7,0,0),(599,1,'1','2018-10-08','2018-10-08 00:00:00','2018-10-08 12:05:47','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','ggg',1,'C',1,1,1,1,0,75,'2',13,60,75,6,0,0),(600,NULL,'','0000-00-00','0000-00-00 00:00:00','2018-10-02 13:00:00','2018-10-09 17:30:25','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','eliana probando nueva',1,'C',1,1,0,2,2,0,'1',9,0,NULL,6,0,0),(601,NULL,'','0000-00-00','0000-00-00 00:00:00','2018-10-08 12:37:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','',1,'C',1,1,0,-1,-1,0,'1',9,0,NULL,6,0,0),(602,NULL,'','0000-00-00','0000-00-00 00:00:00','2018-10-08 12:38:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','',1,'C',1,1,0,-1,-1,0,'1',9,0,NULL,6,0,0),(603,NULL,'','0000-00-00','0000-00-00 00:00:00','2018-10-11 11:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','',1,'C',1,1,0,-1,-1,0,'1',9,0,NULL,6,0,0),(604,NULL,'','0000-00-00','0000-00-00 00:00:00','2018-10-11 13:12:00','2018-10-11 13:05:41','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','',1,'C',1,1,0,-1,-1,0,'1',-1,0,NULL,6,0,0),(605,NULL,'','0000-00-00','0000-00-00 00:00:00','2018-10-11 16:45:00','2018-10-11 16:45:16','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','',1,'C',1,1,0,1,1,0,'1',9,0,NULL,6,0,0),(606,NULL,'403','0000-00-00','0000-00-00 00:00:00','2018-10-11 16:47:00','2018-10-09 08:30:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','ot nota',1,'C',1,1,0,2,2,0,'1',9,0,NULL,6,0,0),(607,143,'1','2018-10-19','2018-10-19 10:00:00','2019-06-26 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Compruebe los Soportes de los Cilindros ',1,'C',1,1,1,1,0,18,'3',9,10,18,6,1250,1540),(608,108,'1','2018-11-06','2018-11-08 10:00:00','2018-10-26 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Revise el Sensor de Temperatura.',1,'C',1,1,1,1,0,110,'3',5,0,110,6,0,0),(609,108,'1','2018-11-06','2018-12-13 10:00:00','2018-10-26 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Revise el Sensor de Temperatura.',1,'C',1,1,1,1,0,110,'3',5,0,110,6,0,0),(610,108,'1','2018-11-06','2019-01-17 10:00:00','2018-10-26 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Revise el Sensor de Temperatura.',1,'C',1,1,1,1,0,110,'3',5,0,110,6,0,0),(611,108,'1','2018-11-06','2018-11-07 12:00:00','2018-10-26 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Revise el Sensor de Temperatura.',1,'C',1,1,1,1,0,110,'3',5,0,110,6,0,0),(612,108,'1','2018-11-06','2018-12-12 12:00:00','2018-10-26 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Revise el Sensor de Temperatura.',1,'C',1,1,1,1,0,110,'3',5,0,110,6,0,0),(613,108,'1','2018-11-06','2019-01-16 12:00:00','2018-10-26 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Revise el Sensor de Temperatura.',1,'C',1,1,1,1,0,110,'3',5,0,110,6,0,0),(614,108,'1','2018-11-06','2019-02-20 12:00:00','2018-10-26 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Revise el Sensor de Temperatura.',1,'C',1,1,1,1,0,110,'3',5,0,110,6,0,0);
/*!40000 ALTER TABLE `orden_trabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `Codigo` varchar(2) NOT NULL,
  `Pais` varchar(100) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES ('AR','Argentina');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametroequipo`
--

DROP TABLE IF EXISTS `parametroequipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametroequipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paramId` int(11) NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `fechahora` datetime NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_equipo` (`id_equipo`),
  KEY `paramId` (`paramId`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametroequipo`
--

LOCK TABLES `parametroequipo` WRITE;
/*!40000 ALTER TABLE `parametroequipo` DISABLE KEYS */;
INSERT INTO `parametroequipo` VALUES (1,1,1,'67','2017-11-09 16:09:02',6),(2,1,1,'56','2017-11-16 08:57:55',6),(3,1,1,'23','2017-11-21 11:44:46',6),(4,1,1,'150','2017-11-29 04:38:11',6),(5,2,2,'88888','2017-11-29 04:39:02',6),(6,3,3,'34','2017-12-02 03:01:45',6),(7,3,3,'34','2017-12-02 03:02:41',6),(8,3,3,'45','2017-12-02 03:02:59',6),(9,3,3,'34','2017-12-02 03:26:30',6),(10,2,2,'45','2017-12-02 03:33:22',6),(11,1,3,'444','2017-12-02 03:43:37',6),(12,1,3,'56','2017-12-02 03:45:01',6),(13,1,7,'56','2017-12-02 03:45:59',6),(14,1,3,'45','2017-12-02 03:50:41',6),(15,3,3,'55555','2017-12-02 04:25:07',6),(16,3,3,'444','2017-12-02 04:27:55',6),(17,3,3,'445','2017-12-02 04:58:08',6),(18,1,3,'12','2017-12-02 05:02:48',6),(19,1,3,'45','2017-12-02 06:46:42',6),(20,1,7,'78','2017-12-11 04:50:13',6),(21,1,7,'12','2017-12-11 04:50:23',6),(22,1,1,'25','2017-12-11 04:56:50',6),(23,1,7,'34','2017-12-11 11:28:24',6),(24,1,7,'45','2017-12-11 11:28:40',6),(25,1,7,'34','2017-12-11 11:29:00',6),(26,2,1,'44','2017-12-11 11:29:15',6),(27,1,2,'444','2017-12-11 11:29:29',6),(28,8,4,'45','2018-02-08 17:55:28',6),(29,8,4,'67','2018-02-08 17:56:05',6),(30,10,4,'200','2018-06-27 12:38:59',6),(31,1,2,'34','2018-07-27 03:07:47',0),(32,1,2,'20','2018-08-01 08:13:50',0),(33,13,1,'45','2018-08-01 08:15:07',0),(34,13,1,'20','2018-09-20 11:50:18',0),(35,13,1,'22','2018-09-20 12:29:16',0),(36,13,1,'5','2018-09-20 12:29:41',0),(37,13,1,'5','2018-09-20 12:29:54',0),(38,13,1,'3','2018-09-20 12:32:44',0),(39,13,1,'44','2018-09-20 12:33:04',0);
/*!40000 ALTER TABLE `parametroequipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametros`
--

DROP TABLE IF EXISTS `parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametros` (
  `paramId` int(11) NOT NULL AUTO_INCREMENT,
  `paramdescrip` varchar(255) DEFAULT NULL,
  `min` varchar(255) DEFAULT NULL,
  `estado` varchar(5) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`paramId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametros`
--

LOCK TABLES `parametros` WRITE;
/*!40000 ALTER TABLE `parametros` DISABLE KEYS */;
INSERT INTO `parametros` VALUES (1,'TEMPERATURA',NULL,'AC',6),(10,'VIBRACION',NULL,'AC',6),(11,'AMPERAJE',NULL,'AC',6),(13,'HUMEDAD',NULL,'AC',6),(17,'rer',NULL,'AC',7);
/*!40000 ALTER TABLE `parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodo`
--

DROP TABLE IF EXISTS `periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodo` (
  `idperiodo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `estado` varchar(4) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`idperiodo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodo`
--

LOCK TABLES `periodo` WRITE;
/*!40000 ALTER TABLE `periodo` DISABLE KEYS */;
INSERT INTO `periodo` VALUES (1,'Diario','AC',6),(2,'mensual','AC',6),(3,'semestral','AC',6),(4,'anual','AC',6),(5,'horas','AC',6),(6,'Ciclos','AC',6),(7,'kilómetros','AC',6);
/*!40000 ALTER TABLE `periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predictivo`
--

DROP TABLE IF EXISTS `predictivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predictivo` (
  `predId` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) NOT NULL,
  `tarea_descrip` varchar(2000) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `periodo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `horash` int(11) DEFAULT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `pred_duracion` int(11) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `pred_canth` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`predId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predictivo`
--

LOCK TABLES `predictivo` WRITE;
/*!40000 ALTER TABLE `predictivo` DISABLE KEYS */;
INSERT INTO `predictivo` VALUES (1,1,'4','2017-11-07','Diario',30,NULL,'C',0,0,0,0),(2,2,'5','0000-00-00','Diario',15,NULL,'C',0,0,0,0),(3,1,'6','0000-00-00','Periodos',15,NULL,'C',0,0,0,0),(4,1,'4','2017-11-24','Diario',15,NULL,'AN',0,0,0,0),(5,1,'5','2017-12-09','Diario',23,NULL,'C',0,0,0,0),(6,2,'6','2017-12-11','Diario',20,5,'C',0,0,0,0),(7,4,'15','0002-07-08','Mensual',51,1,'C',0,0,0,0),(8,4,'16','0002-10-08','Diario',30,96,'AN',2,3,2,6),(9,10,'6','0000-00-00','Diario',7,4,'C',2,2,2,6),(10,7,'4','0000-00-00','Diario',10,24,'C',12,2,2,6),(11,4,'10','2018-05-29','Diario',30,25,'C',0,0,0,0),(12,10,'7','0000-00-00','Diario',30,1,'AN',60,1,1,6),(13,5,'4','0000-00-00','Diario',30,0,'AN',60,1,2,6),(14,-1,'-1','2018-05-30','Diario',0,NULL,'C',0,-1,0,6),(15,-1,'-1','2018-05-30','Diario',0,NULL,'C',0,-1,0,6),(16,-1,'-1','2018-05-31','Diario',0,NULL,'C',0,-1,0,6),(17,10,'9','2018-05-23','Diario',30,384,'AN',8,3,2,6),(18,11,'15','2018-06-28','Diario',21,1,'C',60,1,1,6),(19,1,'1','2018-08-30','Diario',12,1,'C',12,1,5,6),(20,1,'1','2018-09-05','Diario',6,2,'C',23,1,5,6),(21,1,'20','2018-09-05','Diario',4,0,'C',3,1,5,6),(22,9,'16','0000-00-00','Diario',2,2,'AN',20,1,6,6),(23,9,'1','2018-10-24','Diario',222,99,'AN',33,2,3,6),(24,9,'109','2018-10-31','Diario',33,NULL,'AN',0,1,0,6),(25,13,'129','2018-10-08','Diario',1,NULL,'AN',2,2,1,7),(26,9,'111','2018-10-08','Diario',2,8,'C',100,1,5,6);
/*!40000 ALTER TABLE `predictivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preventivo`
--

DROP TABLE IF EXISTS `preventivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preventivo` (
  `prevId` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) NOT NULL,
  `id_tarea` int(11) NOT NULL,
  `perido` varchar(50) NOT NULL,
  `cantidad` double NOT NULL,
  `ultimo` date NOT NULL,
  `id_componente` int(11) NOT NULL,
  `critico1` double NOT NULL,
  `fechaprobable` date DEFAULT NULL,
  `horash` int(11) NOT NULL,
  `estadoprev` char(255) DEFAULT NULL,
  `prev_duracion` double NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `prev_canth` double NOT NULL,
  `prev_adjunto` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  `lectura_base` double NOT NULL,
  PRIMARY KEY (`prevId`),
  KEY `id_equipo` (`id_equipo`),
  KEY `id_tarea` (`id_tarea`),
  KEY `id_componente` (`id_componente`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preventivo`
--

LOCK TABLES `preventivo` WRITE;
/*!40000 ALTER TABLE `preventivo` DISABLE KEYS */;
INSERT INTO `preventivo` VALUES (1,1,4,'1',14,'2018-01-01',1,0,NULL,2,'C',60,1,2,NULL,6,0),(2,1,1,'1',7,'2018-01-03',1,0,NULL,1,'C',20,1,2,NULL,6,0),(3,1,3,'1',14,'2018-01-01',1,0,NULL,0,'C',10,1,1,NULL,6,0),(4,1,15,'1',42,'2018-01-01',1,0,NULL,0,'C',12,1,3,NULL,6,0),(5,1,5,'1',84,'2018-01-01',1,0,NULL,1,'C',30,1,2,NULL,6,0),(6,1,6,'1',14,'2018-01-01',2,0,NULL,0,'C',15,1,1,NULL,6,0),(7,1,7,'1',14,'2018-01-03',3,0,NULL,0,'C',5,1,1,NULL,6,0),(8,1,8,'1',35,'2018-01-03',4,0,NULL,0,'C',20,1,1,NULL,6,0),(9,1,9,'1',140,'2018-01-03',5,0,NULL,0,'C',10,1,1,NULL,6,0),(10,1,10,'1',14,'2018-01-03',26,0,NULL,0,'C',10,1,1,NULL,6,0),(11,1,11,'1',105,'2018-01-01',26,0,NULL,0,'C',10,1,1,NULL,6,0),(12,1,12,'1',35,'2018-01-01',26,0,NULL,0,'C',5,1,1,NULL,6,0),(13,1,13,'1',35,'2018-01-01',26,0,NULL,0,'C',10,1,1,NULL,6,0),(14,1,14,'1',70,'2018-01-01',26,0,NULL,0,'C',10,1,1,NULL,6,0),(15,1,22,'1',14,'2018-01-01',28,0,NULL,0,'C',5,1,1,NULL,6,0),(16,1,21,'1',14,'2018-01-01',28,0,NULL,0,'C',15,1,1,NULL,6,0),(17,1,20,'1',14,'2018-01-03',28,0,NULL,1,'C',30,1,1,NULL,6,0),(18,1,16,'1',105,'2018-01-01',27,0,NULL,0,'C',10,1,1,NULL,6,0),(19,1,17,'1',105,'2018-01-03',27,0,NULL,0,'C',10,1,1,NULL,6,0),(20,1,18,'1',105,'2018-01-01',27,0,NULL,0,'C',10,1,2,NULL,6,0),(21,1,19,'1',140,'2018-01-03',27,0,NULL,2,'AN',30,1,4,NULL,6,0),(22,1,26,'1',70,'2018-01-01',30,0,NULL,0,'C',20,1,1,NULL,6,0),(23,2,27,'1',7,'2018-01-01',6,0,NULL,0,'C',5,1,1,NULL,6,0),(24,2,28,'1',84,'2018-01-03',7,0,NULL,32,'C',480,1,4,NULL,6,0),(25,2,29,'1',14,'2018-01-03',8,0,NULL,0,'C',10,1,1,NULL,6,0),(26,2,30,'1',14,'2018-01-01',9,0,NULL,0,'C',5,1,1,NULL,6,0),(27,2,31,'1',14,'2018-01-01',10,0,NULL,0,'C',5,1,1,NULL,6,0),(28,2,32,'1',2,'2018-01-01',31,0,NULL,0,'C',5,1,1,NULL,6,0),(29,2,33,'1',14,'2018-01-01',31,0,NULL,1,'C',20,1,2,NULL,6,0),(31,2,35,'1',56,'2018-01-01',31,0,NULL,1,'C',20,1,2,NULL,6,0),(32,2,36,'1',56,'2018-01-01',32,0,NULL,1,'C',20,1,2,NULL,6,0),(33,2,37,'1',56,'2018-01-01',32,0,NULL,0,'C',5,1,2,NULL,6,0),(34,2,38,'1',96,'2018-01-01',33,0,NULL,6,'C',120,1,3,NULL,6,0),(35,2,39,'1',30,'2018-01-01',33,0,NULL,0,'C',5,1,1,NULL,6,0),(36,2,40,'1',2,'2018-01-01',34,0,NULL,0,'C',5,1,2,NULL,6,0),(37,2,41,'1',168,'2018-01-01',34,0,NULL,9,'C',180,1,3,NULL,6,0),(38,2,42,'1',2,'2018-01-01',35,0,NULL,0,'C',10,1,1,NULL,6,0),(39,2,43,'1',2,'2018-07-04',36,0,NULL,0,'C',10,1,2,NULL,6,0),(40,2,44,'1',14,'2018-07-04',37,0,NULL,1,'C',15,1,2,NULL,6,0),(41,2,45,'1',14,'2018-07-04',38,0,NULL,0,'C',5,1,1,NULL,6,0),(42,2,46,'1',14,'2018-01-01',39,0,NULL,1,'C',40,1,2,NULL,6,0),(43,2,47,'1',364,'2018-01-01',40,0,NULL,150,'C',3000,1,3,NULL,6,0),(44,2,48,'1',7,'2018-01-01',41,0,NULL,0,'C',5,1,2,NULL,6,0),(45,2,49,'1',14,'2018-01-01',42,0,NULL,0,'C',5,1,2,NULL,6,0),(46,2,50,'1',14,'2018-01-01',43,0,NULL,0,'C',5,1,1,NULL,6,0),(47,2,51,'1',14,'2018-01-01',44,0,NULL,0,'C',5,1,1,NULL,6,0),(48,3,52,'1',56,'2018-01-01',11,0,NULL,6,'C',180,1,2,NULL,6,0),(49,3,53,'1',14,'2018-01-01',12,0,NULL,0,'C',5,1,1,NULL,6,0),(50,3,54,'1',14,'2018-01-01',13,0,NULL,1,'C',20,1,2,NULL,6,0),(51,3,55,'1',14,'2018-01-01',14,0,NULL,0,'C',20,1,1,NULL,6,0),(52,3,56,'1',2,'2018-01-01',15,0,NULL,0,'C',5,1,2,NULL,6,0),(53,3,57,'1',56,'2018-01-01',46,0,NULL,6,'C',180,1,2,NULL,6,0),(54,3,58,'1',2,'2018-07-04',59,0,NULL,0,'C',5,1,1,NULL,6,0),(55,3,59,'1',28,'2018-07-04',47,0,NULL,0,'C',10,1,2,NULL,6,0),(56,3,60,'1',56,'2018-07-04',48,0,NULL,0,'C',10,1,2,NULL,6,0),(57,3,61,'1',14,'2018-01-01',49,0,NULL,0,'C',10,1,1,NULL,6,0),(58,3,62,'1',112,'2018-01-01',49,0,NULL,1,'C',15,1,2,NULL,6,0),(59,3,63,'1',2,'2018-01-01',50,0,NULL,0,'C',10,1,1,NULL,6,0),(60,3,64,'1',112,'2018-07-04',50,0,NULL,1,'C',15,1,2,NULL,6,0),(61,3,0,'1',56,'2018-01-01',51,0,NULL,3,'C',34,1,5,NULL,6,0),(62,3,66,'1',2,'2018-01-01',52,0,NULL,0,'C',10,1,1,NULL,6,0),(63,3,67,'1',14,'2018-01-01',52,0,NULL,0,'C',5,1,1,NULL,6,0),(64,3,68,'1',2,'2018-01-01',53,0,NULL,0,'C',5,1,2,NULL,6,0),(65,3,69,'1',112,'2018-01-01',53,0,NULL,8,'C',240,1,2,NULL,6,0),(66,3,70,'1',14,'2018-01-01',54,0,NULL,1,'C',20,1,2,NULL,6,0),(67,3,71,'1',14,'2018-01-01',54,0,NULL,0,'C',5,1,1,NULL,6,0),(68,3,72,'1',14,'2018-01-01',54,0,NULL,0,'C',5,1,2,NULL,6,0),(69,3,72,'1',14,'2018-01-01',54,0,NULL,0,'C',5,1,2,NULL,6,0),(70,3,73,'1',56,'2018-01-01',55,0,NULL,4,'C',120,1,2,NULL,6,0),(71,3,74,'1',14,'2018-01-01',56,0,NULL,1,'C',30,1,2,NULL,6,0),(72,3,75,'1',30,'2018-01-01',57,0,NULL,0,'C',5,1,1,NULL,6,0),(73,3,76,'1',182,'2018-01-01',58,0,NULL,24,'C',480,1,3,NULL,6,0),(74,4,77,'1',2,'2018-01-01',16,0,NULL,0,'C',10,1,1,NULL,6,0),(75,4,78,'1',28,'2018-01-01',17,0,NULL,0,'C',10,1,2,NULL,6,0),(76,4,80,'1',2,'2018-01-01',17,0,NULL,0,'C',5,1,2,NULL,6,0),(77,4,81,'1',2,'2018-01-01',18,0,NULL,0,'C',10,1,1,NULL,6,0),(78,4,83,'1',14,'2018-01-01',20,0,NULL,0,'C',10,1,2,NULL,6,0),(79,4,84,'1',14,'2018-01-01',20,0,NULL,0,'C',5,1,2,NULL,6,0),(80,4,86,'1',84,'2018-01-01',61,0,NULL,0,'C',5,1,1,NULL,6,0),(81,4,85,'1',28,'2018-01-01',61,0,NULL,0,'C',5,1,1,NULL,6,0),(82,4,87,'1',28,'2018-01-01',62,0,NULL,1,'C',30,1,2,NULL,6,0),(83,4,88,'1',28,'2018-01-01',63,0,NULL,0,'C',5,1,2,NULL,6,0),(84,4,85,'1',28,'2018-01-01',63,0,NULL,0,'C',10,1,2,NULL,6,0),(85,4,91,'1',14,'2018-01-01',64,0,NULL,0,'C',10,1,2,NULL,6,0),(86,4,81,'1',2,'2018-01-01',18,0,NULL,0,'C',10,1,1,NULL,6,0),(87,4,90,'1',14,'2018-07-05',65,0,NULL,0,'C',10,1,2,NULL,6,0),(88,4,90,'1',14,'2018-07-05',65,0,NULL,0,'C',10,1,2,NULL,6,0),(89,4,92,'1',28,'2018-01-01',66,0,NULL,0,'C',10,1,2,NULL,6,0),(90,4,93,'1',2,'2018-01-01',67,0,NULL,0,'C',10,1,2,NULL,6,0),(91,4,94,'1',2,'2018-01-01',68,0,NULL,0,'C',10,1,1,NULL,6,0),(92,4,95,'1',2,'2018-01-01',69,0,NULL,0,'C',10,1,1,NULL,6,0),(93,4,96,'1',2,'2018-01-01',70,0,NULL,0,'C',10,1,2,NULL,6,0),(94,4,97,'1',2,'2018-01-01',71,0,NULL,0,'C',10,1,2,NULL,6,0),(95,5,1,'1',30,'2018-01-01',21,0,NULL,3,'C',60,1,3,NULL,6,0),(96,5,2,'1',2,'2018-01-01',21,0,NULL,0,'C',20,1,1,NULL,6,0),(97,5,3,'1',182,'2018-01-01',21,0,NULL,1,'C',20,1,2,NULL,6,0),(98,5,4,'1',2,'2018-01-01',21,0,NULL,0,'C',5,1,1,NULL,6,0),(99,5,5,'1',2,'2018-01-01',21,0,NULL,1,'C',30,1,2,NULL,6,0),(100,5,10,'1',2,'2018-01-01',22,0,NULL,0,'C',10,1,1,NULL,6,0),(101,5,11,'1',105,'2018-01-01',22,0,NULL,0,'C',10,1,1,NULL,6,0),(102,5,12,'1',14,'2018-01-01',22,0,NULL,0,'C',10,1,2,NULL,6,0),(103,5,13,'1',14,'2018-01-01',22,0,NULL,0,'C',5,1,1,NULL,6,0),(104,5,14,'1',70,'2018-01-01',22,0,NULL,0,'C',20,1,1,NULL,6,0),(105,5,16,'1',14,'2018-01-01',23,0,NULL,0,'C',10,1,1,NULL,6,0),(106,5,17,'1',35,'2018-01-01',23,0,NULL,0,'C',10,1,2,NULL,6,0),(107,5,18,'1',35,'2018-01-01',23,0,NULL,0,'C',5,1,2,NULL,6,0),(108,5,19,'1',35,'2018-01-01',-1,0,NULL,0,'C',20,1,1,NULL,6,0),(109,5,26,'1',14,'2018-01-01',25,0,NULL,1,'C',20,1,2,NULL,6,0),(110,5,108,'1',35,'2019-02-07',24,0,NULL,0,'C',0,-1,0,NULL,6,0),(111,5,109,'1',70,'2018-01-01',23,0,NULL,0,'C',15,1,1,NULL,6,0),(112,5,98,'1',2,'2018-01-01',21,0,NULL,0,'C',10,1,1,NULL,6,0),(113,5,105,'1',14,'2018-01-01',21,0,NULL,0,'C',20,1,1,NULL,6,0),(114,5,100,'1',28,'2018-01-01',21,0,NULL,1,'C',30,1,2,NULL,6,0),(115,5,101,'1',14,'2018-01-01',21,0,NULL,0,'C',5,1,1,NULL,6,0),(116,5,102,'1',14,'2018-01-01',21,0,NULL,0,'C',5,1,2,NULL,6,0),(117,5,103,'1',14,'2018-01-01',21,0,NULL,1,'C',20,1,2,NULL,6,0),(118,5,104,'1',14,'2018-01-01',21,0,NULL,1,'C',30,1,2,NULL,6,0),(119,5,105,'1',14,'2018-01-01',21,0,NULL,0,'C',10,1,2,NULL,6,0),(120,5,106,'1',14,'2018-01-01',21,0,NULL,0,'C',10,1,2,NULL,6,0),(121,5,107,'1',56,'2018-01-01',21,0,NULL,1,'C',20,1,2,NULL,6,0),(122,1,1,'1',12,'2018-08-30',1,0,NULL,2,'C',12,1,10,NULL,6,0),(123,1,1,'1',2,'2018-09-05',1,0,NULL,2,'C',23,1,4,NULL,6,0),(124,1,1,'1',2,'2018-09-05',1,0,NULL,2,'C',23,1,4,NULL,6,0),(125,1,1,'1',2,'2018-09-05',1,0,NULL,2,'C',23,1,4,NULL,6,0),(126,1,1,'1',45,'2018-09-05',1,0,NULL,2,'C',23,1,4,NULL,6,0),(127,1,1,'1',45,'2018-09-05',1,0,NULL,2,'C',23,1,4,NULL,6,0),(128,1,1,'1',2,'2018-09-15',1,0,NULL,0,'C',1,1,2,'128_6_2018-09-15-02-15-19.jpg',6,0),(129,13,112,'1',1,'0000-00-00',80,0,NULL,1,'AN',1,2,1,NULL,7,0),(130,13,121,'1',1,'2018-09-24',127,0,NULL,4,'AN',2,2,2,NULL,7,0),(131,13,113,'1',1,'2018-09-26',115,0,NULL,0,'AN',1,1,2,NULL,7,0),(132,13,113,'1',1,'2018-09-26',115,0,NULL,0,'AN',1,1,2,NULL,7,0),(133,1,9,'1',1,'2018-09-25',30,0,NULL,4,'C',2,2,2,NULL,6,0),(134,1,1,'1',22,'2018-09-26',1,0,NULL,3,'C',33,1,5,'134_6_2018-09-26-00-21-02.png',6,0),(135,1,1,'1',22,'2018-09-26',1,0,NULL,3,'C',33,1,5,'135_6_2018-09-26-00-21-12.png',6,0),(136,5,111,'1',22,'2018-12-25',25,0,NULL,3,'AN',0,-1,0,'136_6_2018-09-26-00-26-16.png',6,0),(137,5,2,'1',222,'2018-10-02',21,0,NULL,2,'C',33,1,3,NULL,6,0),(138,9,111,'1',2,'2018-10-02',1,0,NULL,2,'AN',33,1,4,NULL,6,0),(139,5,109,'1',222,'2018-10-02',22,0,NULL,2,'C',33,1,3,NULL,6,0),(140,5,108,'1',2,'0000-00-00',24,0,NULL,600,'C',100,2,6,NULL,6,0),(141,18,111,'1',222,'2018-10-03',1,0,NULL,4,'AN',50,1,5,NULL,6,0),(142,9,3,'1',60,'2018-10-04',200,0,NULL,0,'C',1,1,2,NULL,6,0),(143,9,18,'5',250,'2018-10-19',3,200,NULL,4,'C',2,2,2,NULL,6,1000),(144,9,15,'6',250,'2018-10-19',3,200,NULL,4,'C',2,2,2,NULL,6,1310),(145,1,4,'Diario',12,'2018-11-07',31,200,NULL,60,'C',2,2,2,NULL,6,220),(146,1,18,'2',15,'2018-11-07',31,0,NULL,60,'C',30,2,2,NULL,6,0),(147,1,16,'2',30,'2018-11-06',26,0,NULL,96,'C',48,2,2,NULL,6,0),(148,1,3,'2',15,'2018-11-11',31,0,NULL,72,'C',24,2,3,'148_6_2018-11-06-17-38-50.jpg',6,0);
/*!40000 ALTER TABLE `preventivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proceso`
--

DROP TABLE IF EXISTS `proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proceso` (
  `id_proceso` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `estado` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id_proceso`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proceso`
--

LOCK TABLES `proceso` WRITE;
/*!40000 ALTER TABLE `proceso` DISABLE KEYS */;
INSERT INTO `proceso` VALUES (1,'un proceso nuevo 1',0,'AN'),(2,'nuevo proceso 001',0,'AN'),(3,'Extracción y Transporte',0,'AC'),(4,'proceso nuevo',6,'AN'),(5,'proceso emp 6',6,'AN'),(6,'proceso testing',6,'AN'),(7,'EXTRACCIÓN Y TRANSPORTE DE MINERAL',6,'AC'),(8,'Extracción y Transporte De Mineral',6,'AC'),(9,'Proceso 8',6,'AC'),(11,'Perforación',7,'AC'),(12,'Perforación y Voladura',6,'AC'),(13,'Operaciones',7,'AC'),(14,'Mantenimiento',7,'AC'),(15,'Capacitacion',7,'AC');
/*!40000 ALTER TABLE `proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remitos`
--

DROP TABLE IF EXISTS `remitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remitos` (
  `remitoId` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `provid` int(11) NOT NULL,
  `comprobante` varchar(255) CHARACTER SET latin1 NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`remitoId`),
  KEY `provid` (`provid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remitos`
--

LOCK TABLES `remitos` WRITE;
/*!40000 ALTER TABLE `remitos` DISABLE KEYS */;
INSERT INTO `remitos` VALUES (1,'2018-10-11 14:34:57',2,'111',6),(2,'2018-10-26 14:41:44',1,'222',6);
/*!40000 ALTER TABLE `remitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubro`
--

DROP TABLE IF EXISTS `rubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rubro` (
  `id_rubro` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_rubro`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubro`
--

LOCK TABLES `rubro` WRITE;
/*!40000 ALTER TABLE `rubro` DISABLE KEYS */;
/*!40000 ALTER TABLE `rubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sector` (
  `id_sector` int(10) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) CHARACTER SET latin1 NOT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_sector`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (10,'Equipos Moviles','AC',6),(11,'Administración','AC',6),(12,'Perforación','AC',6),(13,'Carga','AC',6),(14,'Perforadoras Tamrock','AN',7),(15,'Perforación y Voladura','AC',7),(16,'eli sector/etapa','AN',6);
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguro`
--

DROP TABLE IF EXISTS `seguro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguro` (
  `id_seguro` int(11) NOT NULL AUTO_INCREMENT,
  `asegurado` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `ref` int(11) NOT NULL,
  `numero_pliza` int(11) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_vigencia` datetime NOT NULL,
  `cobertura` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `id_equipo` int(11) NOT NULL,
  PRIMARY KEY (`id_seguro`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguro`
--

LOCK TABLES `seguro` WRITE;
/*!40000 ALTER TABLE `seguro` DISABLE KEYS */;
INSERT INTO `seguro` VALUES (1,'empresa xxx',1111111,11112221,'2017-07-10 00:00:00','2017-07-18 00:00:00','12 dias',5),(2,'1',123,123,'2017-07-10 00:00:00','2017-07-25 00:00:00','1234',6),(3,'123 juan peres',1234,12345,'2017-07-10 00:00:00','2017-07-10 00:00:00','123456',1),(4,'gemma empresa',33333321,2147483647,'2017-07-12 00:00:00','2017-07-12 00:00:00','A',0),(5,'gemme empresa2',52652,500001,'2017-07-12 00:00:00','2017-07-12 00:00:00','A',0),(242,'empres hugo pepe',1414,14145,'2017-07-12 00:00:00','2017-07-12 00:00:00','12 dias',0),(243,'gemma nueva empresa',56213,56213000,'2017-07-12 00:00:00','2017-07-12 00:00:00','1 meses',0),(244,'nueva emresa julieta 34434',45454,45454,'2017-07-12 00:00:00','2017-07-12 00:00:00','10 dias',0),(245,'gemma nueva emresa 41 poliza',54540,545401,'2017-07-12 00:00:00','2017-07-26 00:00:00','5 dias',242),(246,'',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','',6);
/*!40000 ALTER TABLE `seguro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setupparam`
--

DROP TABLE IF EXISTS `setupparam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setupparam` (
  `id_equipo` int(11) NOT NULL,
  `id_parametro` int(11) NOT NULL,
  `maximo` double NOT NULL,
  `minimo` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_parametro`,`id_equipo`),
  KEY `id_equipo` (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setupparam`
--

LOCK TABLES `setupparam` WRITE;
/*!40000 ALTER TABLE `setupparam` DISABLE KEYS */;
INSERT INTO `setupparam` VALUES (2,1,80,10,6),(7,1,60,30,6),(1,2,80,10,6),(1,3,80,15,6),(2,4,20,100,6),(1,13,12,23,6);
/*!40000 ALTER TABLE `setupparam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisactions`
--

DROP TABLE IF EXISTS `sisactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisactions` (
  `actId` int(11) NOT NULL AUTO_INCREMENT,
  `actDescription` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `actDescriptionSpanish` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`actId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisactions`
--

LOCK TABLES `sisactions` WRITE;
/*!40000 ALTER TABLE `sisactions` DISABLE KEYS */;
INSERT INTO `sisactions` VALUES (1,'Add','Agregar'),(2,'Edit','Editar'),(3,'Del','Eliminar'),(4,'View','Consultar'),(5,'Imprimir','Imprimir'),(6,'Saldo','Consultar Saldo'),(7,'Asignar','Asignar'),(8,'Finalizar','Finalizar'),(9,'OP','OP'),(10,'Pedidos','Pedidos'),(11,'Supervisor','Supervisor'),(12,'Entregar','Entrega de Ordenes'),(13,'Lectura','Lect horas equipos '),(14,'Correctivo','Ver Correctivos'),(15,'Preventivos','Ver Preventivos'),(16,'Backlog','Ver Backlog'),(17,'Predictivo','Ver Predictivos');
/*!40000 ALTER TABLE `sisactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisgroups`
--

DROP TABLE IF EXISTS `sisgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisgroups` (
  `grpId` int(11) NOT NULL AUTO_INCREMENT,
  `grpName` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `grpDash` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`grpId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisgroups`
--

LOCK TABLES `sisgroups` WRITE;
/*!40000 ALTER TABLE `sisgroups` DISABLE KEYS */;
INSERT INTO `sisgroups` VALUES (1,'Administrador','Otrabajo',6),(2,'Vendedor','Sservicio',6),(3,'Depósito','Sservicio',6),(4,'Operario1','Sservicio',6),(5,'Supervisor de Taller','Sservicio',6),(7,'Mecanicos','escritorio',6);
/*!40000 ALTER TABLE `sisgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisgroupsactions`
--

DROP TABLE IF EXISTS `sisgroupsactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisgroupsactions` (
  `grpactId` int(11) NOT NULL AUTO_INCREMENT,
  `grpId` int(11) NOT NULL,
  `menuAccId` int(11) NOT NULL,
  PRIMARY KEY (`grpactId`),
  KEY `grpId` (`grpId`) USING BTREE,
  KEY `menuAccId` (`menuAccId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1175 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisgroupsactions`
--

LOCK TABLES `sisgroupsactions` WRITE;
/*!40000 ALTER TABLE `sisgroupsactions` DISABLE KEYS */;
INSERT INTO `sisgroupsactions` VALUES (154,151,1),(158,158,1),(159,159,1),(160,160,1),(987,4,116),(988,4,155),(989,4,156),(990,1,6),(991,1,7),(992,1,8),(993,1,9),(994,1,10),(995,1,11),(996,1,12),(997,1,13),(998,1,14),(999,1,15),(1000,1,16),(1001,1,17),(1002,1,18),(1003,1,19),(1004,1,20),(1005,1,21),(1006,1,23),(1007,1,24),(1008,1,25),(1009,1,151),(1010,1,26),(1011,1,27),(1012,1,28),(1013,1,29),(1014,1,30),(1015,1,31),(1016,1,32),(1017,1,33),(1018,1,34),(1019,1,35),(1020,1,36),(1021,1,37),(1022,1,38),(1023,1,39),(1024,1,40),(1025,1,41),(1026,1,42),(1027,1,43),(1028,1,115),(1029,1,116),(1030,1,117),(1031,1,155),(1032,1,156),(1033,1,157),(1034,1,118),(1035,1,119),(1036,1,120),(1037,1,121),(1038,1,122),(1039,1,123),(1040,1,152),(1041,1,153),(1042,1,154),(1043,1,177),(1044,1,178),(1045,1,179),(1046,1,180),(1047,1,64),(1048,1,65),(1049,1,66),(1050,1,67),(1051,1,68),(1052,1,69),(1053,1,70),(1054,1,71),(1055,1,72),(1056,1,73),(1057,1,74),(1058,1,75),(1059,1,79),(1060,1,80),(1061,1,81),(1062,1,1),(1063,1,2),(1064,1,3),(1065,1,4),(1066,1,85),(1067,1,86),(1068,1,87),(1069,1,88),(1070,1,89),(1071,1,90),(1072,1,91),(1073,1,92),(1074,1,93),(1075,1,94),(1076,1,95),(1077,1,96),(1078,1,97),(1079,1,98),(1080,1,99),(1081,1,100),(1082,1,101),(1083,1,102),(1084,1,103),(1085,1,104),(1086,1,105),(1087,1,106),(1088,1,107),(1089,1,108),(1090,1,109),(1091,1,110),(1092,1,111),(1093,1,170),(1094,1,171),(1095,1,172),(1096,0,127),(1097,0,128),(1098,0,129),(1099,1,130),(1100,1,132),(1101,1,136),(1102,1,137),(1103,1,138),(1104,1,139),(1105,1,140),(1106,1,141),(1107,1,142),(1108,1,143),(1109,1,144),(1110,1,145),(1111,1,146),(1112,1,147),(1113,1,148),(1114,1,149),(1115,1,150),(1116,1,45),(1117,1,46),(1118,1,47),(1119,1,48),(1120,1,49),(1121,1,50),(1122,1,54),(1123,1,55),(1124,1,56),(1125,1,57),(1126,1,58),(1127,1,59),(1128,1,60),(1129,7,23),(1130,1,181),(1131,1,182),(1132,1,183),(1133,1,184),(1134,1,185),(1135,1,186),(1136,1,187),(1137,1,188),(1138,1,189),(1139,1,190),(1140,1,191),(1141,1,192),(1142,1,193),(1143,1,194),(1144,1,195),(1145,1,196),(1155,1,197),(1156,1,198),(1157,1,199),(1158,1,200),(1159,1,201),(1160,1,202),(1161,1,203),(1162,1,204),(1163,1,205),(1164,1,206),(1165,1,207),(1166,1,208),(1167,1,209),(1168,1,210),(1169,1,211),(1170,1,212),(1171,1,213),(1172,1,214),(1173,1,215),(1174,1,216);
/*!40000 ALTER TABLE `sisgroupsactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sismenu`
--

DROP TABLE IF EXISTS `sismenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sismenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `number` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sismenu`
--

LOCK TABLES `sismenu` WRITE;
/*!40000 ALTER TABLE `sismenu` DISABLE KEYS */;
INSERT INTO `sismenu` VALUES (2,NULL,'Seguridad','fa fa-lock','',2,6),(3,2,'Usuarios','fa fa-fw fa-user','user',2,6),(4,2,'Grupos','fa fa-fw fa-users','group',1,6),(5,2,'Menu','fa fa-fw fa-bars','menu',3,6),(6,2,'Database','fa fa-fw fa-database','backup',4,6),(7,NULL,'Mantenimiento','fa fa-wrench ','',3,6),(8,7,'Equipos','fa fa-fw fa-cogs','Equipo',1,6),(9,7,'Componentes','fa fa-fw fa-cogs','Componente/asigna',2,6),(10,7,'Preventivo','fa fa-fw fa-tasks','Preventivo',5,6),(12,7,'Backlog','fa fa-fw fa-tasks','Backlog',6,6),(13,7,'Registro de Parametros','fa fa-fw fa-tasks','Lectura',10,6),(14,7,'Predictivo','fa fa-fw fa-tasks','Predictivo',7,6),(15,7,'Solicitud de Servicio','fa fa-fw fa-sitemap','Sservicio',3,6),(16,NULL,'Pañol','fa fa-briefcase','',4,6),(17,59,'Articulos','fa fa-fw fa-barcode ','Article',1,6),(18,59,'Stock','fa fa-fw fa-cubes','Lote',2,6),(20,59,'Orden Insumos','fa fa-fw fa-check','Ordeninsumo',3,6),(21,59,'Remitos','fa fa-fw fa-paperclip ','Remito',4,6),(23,16,'Herramientas','fa fa-fw fa-sign-out ','Herramienta',5,6),(24,16,'Salida Herramientas','fa fa-fw fa-paper-plane','Order',6,6),(25,16,'Entrada Herramientas','fa fa-fw fa-paper-plane','Unload',7,6),(26,16,'Trazabilidad Componentes','fa fa-fw fa-exchange','Trazacomp',8,6),(28,59,'Punto Pedido','fa fa-fw fa-bookmark','Lote/puntoPedList',10,6),(29,NULL,'ABM','fa fa-book','',6,6),(30,29,'ABM Grupo','fa fa-fw fa-server ','Grupo',2,6),(31,29,'ABM Sector','fa fa-fw fa-sitemap ','Sector',3,6),(32,29,'ABM Contratista','fa fa-fw fa-life-ring','Contratista',4,6),(33,29,'Parametrizar Predictivo','fa fa-fw fa-bullhorn','Parametro',5,6),(34,29,'ABM Deposito','fa fa-fw fa-qrcode','Deposito',5,6),(35,29,'ABM Tareas','fa fa-fw fa-street-view','Tarea',6,6),(36,29,'ABM Parametros','fa fa-fw fa-adjust','Altparametro',6,6),(37,29,'ABM Proveedor','fa fa-fw fa-truck','Proveedor',7,6),(38,29,'ABM Familia','fa fa-fw fa-check-square','Family',8,6),(40,7,'Ordenes de trabajo','fa fa-fw fa-tasks','Otrabajo/listOrden',8,6),(41,7,'Administrar Ordenes','fa fa-fw fa-thumbs-up','Envio',10,6),(43,59,'Nota de Pedido','fa fa-fw fa-cart-plus','Notapedido',11,6),(44,NULL,'Compras','fa fa-shopping-cart ','',5,6),(45,44,'Enviar Pedidos','fa fa-fw fa-envelope-open-o','',1,6),(46,44,'Recepción pedidos','fa fa-fw fa-check','Administracion',2,6),(47,NULL,'Reportes','fa fa-line-chart ','',8,6),(49,47,'Rep Informe de Servicios','fa fa-fw fa-file-text-o ','Reporte',3,6),(50,47,'Rep Ordenes de trabajo','fa fa-fw fa-file-text-o ','Reporteorden',2,6),(51,47,'Grafica de predictivos','fa fa-fw fa-pie-chart ','Grafica',1,6),(52,47,'Rep articulos','fa fa-fw fa-file-text-o','Reportepedido',5,6),(53,29,'ABM modelos','','',0,6),(54,7,'Plan de Mantenimiento','fa fa-fw fa-calendar','calendario/indexot',9,6),(55,7,'trazabilidad Activos','fa fa-fw fa-exchange','fa fa-calendar',11,6),(58,NULL,'Equipos','fa fa-exchange','',0,6),(59,NULL,'Almacenes','fa fa-check','',4,6),(60,29,'ABM Marca','fa fa-fw fa-copyright','Marca',9,6),(61,47,'Rep articulos pedidos','fa fa-fw fa-file-text-o ','Reportepedido',6,6),(62,29,'ABM Area','fa fa-fw fa-asterisk','Area',1,6),(63,29,'ABM Clientes','fa fa-fw fa-user','Cliente',2,6),(64,29,'ABM Criticidad','fa fa-fw fa-line-chart','Criticidad',3,6),(65,29,'ABM Procesos','fa fa-fw fa-sitemap','Proceso',5,6),(66,29,'ABM Componentes','fa fa-fw fa-cogs','Componente',2,6),(67,29,'ABM Unidad de medida','fa fa-fw fa-thermometer','UnidadMedida',11,6),(68,29,'ABM Sucursales','fa fa-fw fa-building','Sucursal',10,6),(69,7,'Informe de Servicios','fa fa-fw fa-file-text-o','Ordenservicio',4,6),(70,29,'ABM Sistemas','fa fa-fw fa fa-cogs','SistemaABM',12,6);
/*!40000 ALTER TABLE `sismenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sismenuactions`
--

DROP TABLE IF EXISTS `sismenuactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sismenuactions` (
  `menuAccId` int(11) NOT NULL AUTO_INCREMENT,
  `menuId` int(11) NOT NULL,
  `actId` int(11) DEFAULT NULL,
  PRIMARY KEY (`menuAccId`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sismenuactions`
--

LOCK TABLES `sismenuactions` WRITE;
/*!40000 ALTER TABLE `sismenuactions` DISABLE KEYS */;
INSERT INTO `sismenuactions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,3,1),(7,3,2),(8,3,3),(9,3,4),(10,4,1),(11,4,2),(12,4,3),(13,4,4),(14,5,1),(15,5,2),(16,5,3),(17,5,4),(18,6,1),(19,6,2),(20,6,3),(21,6,4),(22,7,1),(23,8,1),(24,8,2),(25,8,3),(26,9,1),(27,9,2),(28,9,3),(29,10,1),(30,10,2),(31,10,3),(32,12,1),(33,12,2),(34,12,3),(35,13,1),(36,13,2),(37,13,3),(38,14,1),(39,14,2),(40,14,3),(41,15,1),(42,15,2),(43,15,3),(44,16,1),(45,17,1),(46,17,2),(47,17,3),(48,18,1),(49,18,2),(50,18,3),(51,19,1),(52,19,2),(53,19,3),(54,20,1),(55,20,2),(56,20,3),(57,21,1),(58,21,2),(59,21,3),(60,21,4),(61,22,1),(62,22,2),(63,22,3),(64,23,1),(65,23,2),(66,23,3),(67,24,1),(68,24,2),(69,24,3),(70,25,1),(71,25,2),(72,25,3),(73,26,1),(74,26,2),(75,26,3),(76,27,1),(77,27,2),(78,27,3),(79,28,1),(80,28,2),(81,28,3),(82,29,1),(83,29,2),(84,29,3),(85,30,1),(86,30,2),(87,30,3),(88,31,1),(89,31,2),(90,31,3),(91,32,1),(92,32,2),(93,32,3),(94,33,1),(95,33,2),(96,33,3),(97,34,1),(98,34,2),(99,34,3),(100,35,1),(101,35,2),(102,35,3),(103,36,1),(104,36,2),(105,36,3),(106,37,1),(107,37,2),(108,37,3),(109,38,1),(110,38,2),(111,38,3),(112,39,1),(113,39,2),(114,39,3),(115,40,1),(116,40,2),(117,40,3),(118,41,1),(119,41,2),(120,41,3),(121,43,1),(122,43,2),(123,43,3),(124,44,1),(125,44,2),(126,44,3),(127,45,0),(128,45,0),(129,45,0),(130,46,1),(131,46,52),(132,46,3),(133,47,1),(134,47,2),(135,47,3),(136,48,1),(137,48,2),(138,48,3),(139,49,1),(140,49,2),(141,49,3),(142,50,1),(143,50,2),(144,50,3),(145,51,1),(146,51,2),(147,51,3),(148,52,1),(149,52,2),(150,52,3),(151,8,13),(152,54,1),(153,54,2),(154,54,3),(155,40,9),(156,40,7),(157,40,10),(158,55,1),(159,55,2),(160,55,3),(161,56,1),(162,56,2),(163,56,3),(164,58,1),(165,58,2),(166,58,3),(167,58,4),(168,59,1),(170,60,1),(171,60,2),(172,60,3),(173,47,1),(174,47,2),(175,47,3),(176,54,13),(177,54,14),(178,54,15),(179,54,16),(180,54,17),(181,62,1),(182,62,2),(183,62,3),(184,62,4),(185,63,1),(186,63,2),(187,63,3),(188,63,4),(189,64,1),(190,64,2),(191,64,3),(192,64,4),(193,65,1),(194,65,2),(195,65,3),(196,65,4),(197,66,1),(198,66,2),(199,66,3),(200,66,4),(201,67,1),(202,67,2),(203,67,3),(204,67,4),(205,68,1),(206,68,2),(207,68,3),(208,68,4),(209,69,1),(210,69,2),(211,69,3),(212,69,4),(213,70,1),(214,70,2),(215,70,3),(216,70,4);
/*!40000 ALTER TABLE `sismenuactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistema`
--

DROP TABLE IF EXISTS `sistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sistema` (
  `sistemaid` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `estado` varchar(5) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`sistemaid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistema`
--

LOCK TABLES `sistema` WRITE;
/*!40000 ALTER TABLE `sistema` DISABLE KEYS */;
INSERT INTO `sistema` VALUES (1,'Electrico','AC',6),(2,'Hidraulico','AC',6),(3,'Mecánico','AC',6),(4,'Electrónico','AC',6);
/*!40000 ALTER TABLE `sistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisusers`
--

DROP TABLE IF EXISTS `sisusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisusers` (
  `usrId` int(11) NOT NULL AUTO_INCREMENT,
  `usrNick` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usrName` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usrLastName` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usrComision` int(11) NOT NULL,
  `usrPassword` varchar(5000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `grpId` int(11) NOT NULL,
  `usrimag` blob NOT NULL,
  `estado` varchar(5) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`usrId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisusers`
--

LOCK TABLES `sisusers` WRITE;
/*!40000 ALTER TABLE `sisusers` DISABLE KEYS */;
INSERT INTO `sisusers` VALUES (1,'admin','admin','admin',0,'21232f297a57a5a743894a0e4a801fc3',1,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\�\0\0\0\�\0\0\0�}ĵ\0\07<IDATx\�\�}�w׶���y\�\��rg\�[3���;\�7s\��\�cccl��k����l�,�\�A$�@A$��H\"H$\"c�\�9Z �\�w\�.��>����t�j��Rw\�9u�wv\�\'\�yA-Je*�Q�\��:����f͚QӦM\�\�\��gz\�7\���\�k޼9�jՊ���kOԶm[���\�\���~\����\�\���{�\�\�~_~���]�>�\�[��\�O�߱R�-�u\�\�Ԯ];\�sL4a�X��\�CjS��e��\�\�.�/\�;\�#�f�)\0\��\�{O\�\0\�7n\�X�\�s�~˖-M\�\r6\�|�\�7C\�	a��L�\�ק?�Pl6���@\�&��bC:��K7j\�\�u%�\"�L\���\�թSǔ�N\�l߾=}�\�WT�q�de�\0�^H�}\'z뭷�A�l�~7�\�\0\\Y}^3�R\�O	\����|H	�\�2�>�\����\0R���96�\��ǻQIu�-\�ﬦ,%�U2���\n&�AXEt\Z$�\Z>�\�x�\��&�6l��\0Z2%Z�,#�\�d0�̬�\��ց\�` ]\�2lPo��Y\0\0�\r�tqr���oU�b�M&s�#\�qr`0�\0B�\�??7\ṅm9����\�\�\�\�	/p\0�ҶQ�M	�l�dp\�1!��\n�\�d��\�1\�d����P[�K�p%\\\��gp\���4��e�\"�# K�:m@x`���+4��\� S�&Ml�\��KU`YA�\�G	�%�\�\�x��\n\��#A=`[@��\�Ǚ v����r*$\�H�{c\��g\'��?vb0�\r�?qʉ���\�\�;�.\�ҿ�\�oa�B�\r;<PW\�66\'G���f�fA\0�8Ŵ�\\\�n\���0=�*\�2\Z��\�iDȨ��&?��u�	a�AuK��� \0�τ�b4R����\�\��X��\r@\�\nY�Y� ��\�|\�-�\�9oq\0.�m-�R�\��Q?THvKˁVH>Į �\0(d�\�\��\�Z\�s\��~SM=\�H�\�R�x\Zڸ?Ɓ�ZN��[���4�H�$$@\���\�೉HV��\�s����Z��i�׵��lvǚ\�\�Q%\�FC���,�b\"������-��_��]Yw5ǁ\"\�B���\�\���r*�d��\�\�Uua�7��.�*\�sv���\0\\~�\�u�?rS9\�\r`��*�6rus��\0g��\�w\�Lt�;3&�{3tvd�j  ����p�\0�\�)T��òdLei�J\�\r-���\�\�fO�t򪱍�I��T\�Aj{%�\�TG\��\�\nh0h��_�\�=5JKpq�~�\�\nr��ސ3>��\'TOn�iٿ�yO*��KStΜ\�T\��gn4j\�H\0*��1\0�w�\�6nL\�D��\n�ɪ���͂Ε\�����{	#Uab��n$��^�z,P���\��]\0R�o*�w��\�+#�ƿ�6\��ށ�\��\�_|!\�\�Dmڴ	IPv\ZTUYuM)Ɓe]��V\���G�Ғh�٥>�O7\�\��-m�3�\��(i\�\��;!��u�\�\��!���\�e\�!e�;D\�$��H�<Ii\�(����뼨�\�)J�\�ׯW�&�\�DǖM�ʽ9��\�޸\'{\�9\�~�p�nr`�9N\�%n\�^)\0�Hr	\�j��U�}��������!Q\�J\�VO�o\�\'O\�X�AML[LW\�+CG��\�2U\�	$d$]l�~�>unٌf\�N�9�\���9��\�/z�}�P7w-C+��L��Q��^���� \�d�T\��K/\�\�^��\�-��\��\�\�N��ڽ�	��\�\'h�hiŤ�ԳcsS3\�7x\�8a���&q/��62t���\�\�\�+f\0�$\�\�\�wӄ�T<c�I%F�x�ЍM�\�P\�Z3y�\�D\�6���r�\�C\�=\�&r\�C��ÌT��8Q;g��b>H��}\��lK�\�O1\�\�\�i5Xv\��AZp��5�\�\�\�#�䣔t\n�sΡN\�\�2R\�\�®��;\0(�s��\�\�s�\�y�����sk<��@\'\r\�c8l�2[�&g�\��\���.�^ڀˋ��\�3NMcd\�\�3�w\�\�\rS\�Ş����rv`\��\�z/]\��Z��;<\�ŷ�1��A���ը�ֳ���\�H���Q#u���3\�\Z��\�z֖*h\n`}�\�g\�\�\�J-�^/\0\�]Y;]\�l�f�`�\�g\�ű�C#\���	�l+��_�\�\�h�֓M\�P\�ImD0َ��.1/-��jD��n[�:�1Z�82\�G�C�%\�ѡK��]�u�\�v\�\Z�*�pO�\�*a\�Ȉ;�\�Ȏ�d���SY�\�2�^�ǐd^�F\�~���\n\�\�-3\�O��\�^\�D�9\�]\��\�\�/;�{�K&\�\�TB�\�D��Ł\�\Z.\�\�%!\�\�\�B0�S�:5o��K�|;,Qj\"�_��\��\�\�8\�N\r�f�#�\�\n��K�������Q\��\�5��\��r�Y���\�SJ�g۲&\�@M�\��j���\"C�F�9`^�7eg�\\�@\�h�i��\��|\����5rv4mX?�Q)\';\�\�l���\0W�w\�GRfg��c1���N�P�\�zR\�P��X$ld�捫Z\'���\�<�\�rgb�d\�j�j<��z\n����K\�\�\�Z~\�P	��\�ҏ~\�>G�V\�&�w�^pjy	\"\��\r/mԠb\'�k�\�\�bp���]\��V���=ߝ�NG\��\��:9�\ZL��\�C\rtp/���\�I%\�[z�u��&����\�Z\���r��\�:z\n�6h\��s7Y86켄�3C_z�yF��!��93X��\�Y�v�B��h�\��\�2\�!՜���3Co���N�O�\rnG^\�5\Z\\*O!�ĭ��ff�^8��;5�f��<�\"Vi���q���\"�FKF�S\�.H9�� YWs���������\�\�e����TpEr\����e\�aw95<�.\��\�\�r�\��r\n�v{�\�\�\n<��\�1dpTHfB\�&!oЩWG\0.���\�%a�\�\��\�\�k�\�^��0��egsAU\�3\�\�MVi=�aiMoPm®*��\���2�\�qǻ�j!}\�J�\�R⟲ಞ#e��\r�^\���\�|Θ5\�0\0W\�m\�<F�π�S\'\�\�q.��Q����+�^��j$\�\�\�cg�]ձp\��b���\�B��\\Li\0Y�c\\�\�-tKgapa7��\�4�F4�j&�Xr\�rNW҃\�n�\�\�q)�|\��K՛0\0W��\�K\0�{\�\�r�P\��\�-\�ܪ�(�^�{Ns�K{\nJ�S�*v\�)9��\�Y\r�X-\�!�0\�Y�n�.\0J,\\\�\�\��I�b[<p\�r�dR�\�m\�T�\n�y�\�j�S�+��\�%�I��jZ���\�\� \�YhX\�S\�\�r�q\�JMp�\�N�\�\�R􉷺\�5jdVh��x|\�1\��+%��5e��	1Q8��@SA�\�\'m��\�\��8�\�A\0��\�v\�r�q\�JMpaM\�C箽\0�*��KK5m�Ū!�e\��\�\�Y�$\�\�t\�Jop!n�J�\�\�y�\�|��k\r\�\�ХyU^C�EU�lw�	\��һ`\�\�\�\�\�m\0FΈG�`\0.\�\�K�[\�S\0�\��] ٭\�N�\n��[\�]աw�\�\\�oF\��I�\�\'m�\�%����\0\\\�.\�-U�.7W<�D\0�\�T�V \�J?pq��Q��.�OZ��UCk@\�\�1\�\�\�\0\\\�.�uE.x�p�����\�\�\�,��\n9\0Wz��c]rN��tj�%�X5\�KU����\�\\�X�[n�.�Ij.�2>�A�s\�O\�	.U/\r��x�Z�i	.r\�T�!2\�e5!H\�M_p�U�5\�\�\\:ժ5�\�w\rW\r�3R]\�L\r/\������\�	t�`d]\���.N\�fK�;ߏ�\�p�[��}9T�|ps�o,��߃\�;\0a\�\�w\���*p�\�n\�?\���%�T��p��Lv;�\�K�?\�JV*\����\�\��\�M:�cS:=�uU�\�\�3�@+��,\�\��i�\�F\�\��g�i\�\�;\0a�vc0+�w\�\r[7U�\�\r\\:u}\�\\�j��\�s�\�K%�����\����\� y~H.�|O~��Y�$\'�[O:�+�t;\��\�)�P[p�j�j^ê!�6\�zh���;�t�\�\�bHu���\r\�+�p��\�\�D�\�nWy�u:�U{p�j�jd�\��^�?=\��[����\�1&\�N=L��r�b�\\\��\�V\�\�����Oڂ\�-S�7�B��-\�v\�XL,�RE��c:3�]�\�ːj#\���q!�\�]�\�Ϥ����	����\�;\�%��\����`\�y�g~6W�]\\\���@�=>�w��\�J)\� t\�R�N�A�\�\n�L\�@�Aa-�:\n^X�c\�\0\\�QZ�%�P�@2t}�\Z\�HT`�\��OW7�\�\���?\�99�EР�[\�E�ƺ�Y\Z0����\�Z�ˮ��\\\�\�=\�\�uw\�\���\�N|+HB*�w,I��^�ڕ�|\�؍�Aʵ\�X�HN�\�\'��%�C�TC7w��U\�E��J�\�j�R�\���)=��\�\�4�Oީmҟ��\�\����}\�$\�KE�\Z�%�	*���\�`��z2\�3�f\r��\��jM?�n\�:�wk�ߘ\�\��4�oί|�O��#6;lz�r�\�ƺ\"l�\0\\>d\�C5t\�{bps�u��\"�\"/*\0+���?�\��G�F\�\�\�,��u�]���TvhX+l�*p\�\�������\�ϫE�\�\n3~뽡N�B.3�z�`�O�\����C;s�[7��F�\�@\�v�msGz�E\�\����U��\�0�w\�\�aĶ�\�@�X\�&�\05��?���5|�ukOc\�F3��qׁ�)1\����9!s��T\�\��fJ�+KGV��p|ș\��Ɂd�\n:�\\\�٧��p��;Y�h_�ZJV߆\�Ly\�\��\����\�5��d\�\�WR⏾0�_�\�`!]ؾ�f��=\���1B�E�2�z�lB\�FR\�ɢzQ�5�s\�\�\�S1��_|d�\�YQVر��@�pq*�\�\�P\�S�\�n#S張\�7��y\�C�!\�\�và��W����AJ\�Ѓ=ts\���\�F\�\�{W�m4Ap�d\r\��K\�N\�x��\�\�\Zҋ*Ol\rӳCk��[��X�|n��Mv\�F$\�y���\�+���K�\��\�\'��h��\�3�\�\'\0=ʩ��TԹe3\�Y^�?�nY\Z,f\�OώUӉ]�\�\�!Tq\�==SJ����k\�\n|�;W\�\�[\�ɉ\�\�g�\�G���\ZTB�g���\�vj�Y\�*���p�:XV�M��wV\���x�*����\'\�_\�ã�\���\r�\�\�\��-a\��Y����\\�\��\"\�Y8\�{Ǥ]�\��e.�\�*\�\Z\"\�	b~o\�hp][\�,\�e)��<�6\�Ş\"�ǰ�Gu�\��Ń;\�ŕ\�@v\�(^OOo�J�ݽI�wl����d\�r*5h˲�V\�fS�\�l*\\�C�7ж�Kh��Ǐ_O�^�xsw!=:^,�ɩ�ß��\�O�Tyf���X5t��\�r�%��P�\��1=�t���;D�\��\�\�c�\�Xn\�\�B�\�+\�1�\�\�E�\�|vlX.\�9�\�\�/0\�kM\�\\@�7.��\�s\�\�\��\��<8}D�s\ny�ˌg�痏\��>]�\�Q:\�>71L\'p�\�jլQH\�(\��[5\Z\\\��k�i1N�\�����ݡ�W%�\��?�;l!a\�W^�fh���ů\'\���.\0�[�\�d��\�~�U�i��e�kc�^�\�d<+m]�/\0�e\�:r`?\�\�\��傩\�*1H .s\�￩$�\�!\�2$�<?+a�׷��\�;V�\0˜\�z\�q9�\�[`;\�\"x�9b#\�}\�6l�_\�\�\�q�t�\\v�.U%2k-�9�Bx��q�[5\Z\\lo��:e�=��2���\ZV��j!�&�ÅJƃ\Zxc�Zzt\�L(n^�FW\�\�\�*��*6v���\�ں��׽�R0H�`]-�R\��`�\�ݽ;z�\�\�\�A\0�\�ὰ9nX\�q�\�Q�b�\�\�B\��\�\�c�mhwJ6 �\�\�PW\��װq���sO\�6\�u�\�`\�\�!M�ݕtp�v���\�\�\�Go���p3H/\�2аG䅇�5\�\�t\�x��\�t\�\�	��ö��\�`<\��{�6�\���\�&\��6�\�y\�x���B���[!,TF\��nn\��\0P\rI(\��VK�c�\�\����BH�\�K�̱��lW\�R�V�:��\n\�\��>ۍ\�+���6g\�\\Y;\�\\\�\Z\r.v�\�\��ތLq�[~R\�ה�yU9�\��g{p1^:L�O\�6��&\�l\'H.׭\�m��\�P�\\G��\�u�d=9��\�� y�\r	,#~\�4FL�?��V��L}��)�`�.�	\�ڿc=ݿsS\�q�\�e.s,�\���m\�g]߶�*�m6ǣ\�\�\�\�<�Kegwo𚲔��\�\n\�BK=2\�\�2�T�\�^н�\�\�6�;��u����ˠ���҃�G\�\�*șMٓ�\�ӇТ��iX\�\�4仮!4f`oZ2k\�\�Js\��\�\�\�\�\�ų\'t�(?�><V\'`\�\�\0�\�sr\�?<w\�q�k�\�7\�8g\������\r\�G˲��9\�u�#\��f����B���v��Ԓ�e��������\�`쒯�j!�Kvh���Ќ΍\� \�H\�Fb���\�\��M\�.,��\�\�\�u\�\�M�<�\�\Zٛ\���M\�G\�Jv1�+\�֓`\�חf\�E\�\nr]\���\��0�h\�\�\�\��\�\�\�E��F+v�L\�s\�6h܀\�4^̱\��ݫ9~/\�ae��w��\�p\�\�\�B�׋=�\�\�A.d\�XX\�;�M����Z\Z5\\r\��.�\�\�w\�/�\��������k\�[$H0;\Z\�/��.��o�]\�\�r�\�\�K�G��pB?Z<���l\�\��R\�辴o\�fw��sI0�u,H[b\����\�T�s5y\�?\�\�\�.�[�\�˧]f�#\0\�\�\�<\����֯r�X\0�Ɏ\Zy~��Ÿ8��˲\�B2\�_H�bpq�c~oq�W//ɜ .UG\�4�ldO\�wx\�j\�:�\�\�\�p�\n��Yc[\�	L\0;\�\�cTq��-\�=���V/�-Y��\�(\\Hvm�\'��K+x\�G�U&\�]�p=\�:�&wo\�>�W��\�UW�:z�vm\��#~޻u�\�_8AON\�秋m\��hLcl\nN�:2HXl��W\\ +�I���p�\�k|�9`�2P�.�Y5��:���C��\\v\�j�t�Kdz�%=:��n\�\\I�/�q�ۅ]�\��\"�&\�\�V�C\"ҼB���ҩ��M\�N\�9B� ��{�b��n\�\�Ow���G%��m�\"�\'Y\�+\�K\�\�F0�;\0�7Z���&s�+P���\�-�+yg�\���w4\�\�\�l\���cN��8�luj�QE�6\����5_\�7�nN0�	�+\�D���@��v�qC\�{+FA�K\�mn07�\�\�\�bn�ݼ\��w�̓����\�\�6\�\�\�QU����n\�k56Q\�#����G\�w\";Â\�]ɩ��ak�&�uY�\�Oom\�]\���E�\�VgiD\0.[\�[�2%9\�\�v[	c�\�%�Rv\n@-ڕ��)�=I/�m7�h\�Y�f^�J(�eS\�/\�\�Qe��fv���[\�\�+σ\�\�WtaD�\�%�,�;/�_�/�:Sa�*p�\��.V\r��^�$x�x\\�GE^����O�\�0%\�u\�e~��P��:y��x&\�*�.k�\�#�T\0�W���x�U�3�Et��\�N�H���p�\�G\Z�.�\�Y�P[ᜈ\\�\0\0׽���\�\�@Y�\Z\�oݜ�՛\�+/(\�N\�\�*dk��\�����r\�<\n&��D\�L\r�j�����C_��\�VW({׃\�\�E`�\Z	�\�f<VA��#\�\�^4[��϶W�\��\��\��Zj\�\�93\�\��mCD\�\�bo�J�\�\�\��%ǻd\��9ЫCܴ}	�a$�\��ʱ!1�H��	��5�6Tħ�\�\�\�NCE��y��w\�}�8Q㑋?�z\nep\rh\�\\�2\�\�\\�\�?��OV	�\�\�\\7��UC�]\�/N\rx�:��e窒\\\�j���~�Aui�a�$z��xG\�X\"=�%��\��\�\�ܾ��4N��ţL�%c~P\����?�:�`X\�x��:�m���J8��g!\�\�XOٙ!��\�\0\\=\�W���e\���H\��\�Po�ӂ=\\3A,�	�r\�l0E���\�$Z��g��|�T�h�uc\�@.�\0�7���0z��4\�U[\�\�\�Ɓ�Y\�]7O!�����խy�f��%�KV	�K�TC~qT�Ae�\����gp=Z7�\��;,��bY\��E\�]�Ỹ�k�eb\�S����\���!\\w�K곡\"M\�\'$��+\�h\�\��<7k�6-���Kړ\n\\v6=�\�͈C6:��ځK\�ְ���\�Ǝ�(�]ð\�Y�ń\�b�\�e�\�\�\���X\�y!??\ZG�l�\�\�j\�\\?\��as�a\�\� ��\�6\'U����QY+�!E�6b4\�\�<y@\�gdpɁc�>i\���\'AN�a �wy\�z&�\�z\�p�\Z\��\0\r*#���\�H�Ǵޭ�XR9�\�-�\�-�3Y\�b}<7\0!�y�p��mk;K_\�awn\�\�ѾUXW^9\��%\�őڃKN\�E�����\"�\�\�(!Y5�}\�	x`$7\�\�\�3�UD�\"�U%�D5//s�\�\�PM�P7O�\n\\9\�4R�^#���C���\��[����n\�\�\�M\Z�{Yp�\�f,z�\0�܎��B\'�\��\�\�E:\'��w�\�bU\�;pAj!�b��\\��K+�\�8��x\�KxD9\n�\�8��l\��\�E5I����\\�\�=\\;1���\r�8]\��8A �\�!\�o�2��l��XKp\�1/���kd�O�ϧ\�E,-���w�ŀ���f�n���d�	.�\�\�\�$�\��\�m\ZniO2��aBjY�\"\�5\�1����p̋�\�Te\�\\v0�͇1��UF�G+Q̇g�,�j�1#�&A ��m\'�B\�\�<\��3*\�!���v-\�Y%\�%\�)e��*�W�����Q��\Z\'R\�`F0=���h�vZ0�j��i�q˪����p\�2\���b�U\�Ǹ\�I�ۋ3CT�gv���56{��T{\�K�Sl+%�uubx@Y\�8\�\�Z�\�JƉ��\���Xgp\�\�ޏyqfp���UU\�(1\n[?Cr]UB��%���K^u85���l\�(�\�\�IV\r\��\�#QQ��dթ�\�2侖��;�\�ɒ\�D^Ut�\�J�ԋHUK7paN�jhM9J6y\�̰�Y\�\�D֌\�v�����R\�S-�v9;J�\�o\�L\r&?bh~ۅ^׆��U\�����&LYpq*��gh\�akAj\�\�\�v��g+ٶI\��܈�u%\�;�{��K^�9����\�h��vy��\�Ѝ�w��s����Ƣx���e%�\��BL&\�0�*��ʒ|\�j\�\�\�&��~P@yg\�p}\�V�\�I8f�\�\r��m\����瞆V�\\\�ԣ��{#����\�D\�ETyj�g�H\0\��\�\���h,/����K��\�Xs����g�\��)\rJ\�1�\�\�s\�dX�H�\�\� ՑIl7�޾����\�.�<��\nl.�\�O��!~>5����\�\�1�[Tc]A\"���e�]�R\\r\�5kG(�t��\�\�Um�\�1T�\�J,��\�A�>Z7)$�\��\�\��TY��*�o�\�ҥ�G��o\"�\��N\�R�Pl;?�Zo�T�ga��\�K\0�8������\�\�5[�\"�\��]${����\�]�g~!\0\�Y�~�J�l+U0\�9\�\�\�.Y\�\�n�ZD\�5�\ZZ�d\r�K\�{�`\�\�2�v���S.k|\�\n\�C�?L){\�\�+u\�\�2�{��\���\��+Ʋ��R��a�?\Zƻ^=\r\\�ߟ�v�b\�\��\�\'|c0�Zr-\0\�\�:�\�G)coA\�\�x�ʋ�Zg\�\��S\n\\Hk\�h\�\�\�\�Ǵ�����w=\�>O�\�|a\�h*\�V�.L\�,�p5\�g���3�ُʦ��c��C[۪��l*�+K�\�y�\���NN\�Ae���3�Aw�d�\�V\�^�e|\�N%�ۘt9l!e�Bz�ח.{\r��\�g�t\�|�\�`\�\�&*\�F%Y?	R�\rt0g$]\�,8.\0\�c�FPY\�\�\�\�QY\�X1��&ӵ�3\�♖�J�:M\�� ���\�/�Kz\�X~�^s\r�\�3�4\0�Hg\n&ѡţ#fx\':�|�,3aC���|\���qtq\�T��q���~rF���5T\��T*�\��VJ�Kn��s9CZ&���\�$�2� �fr+\�۩r\0�\�@�K�h\�I�$\��1T?�\�%K�NO)	..?�\�DP#Y��\�ym�\�$��l~30\0ª#\�\�v�\�eL���\'\�\�\0��@\���\Z�pg\rcݼ�3>�\�)&i.k񤊐*Ş#��W\�\�K�v01��WFdƖ��\��jW�\�c`��`$ �z/�u���\049��\"\�\����]CI7�\�ϰɬ���Jz�y�1\n��ӎ�&\�o&6�� �\�\�<O��,�5\�ֺ޺�OKpEӃ\�k:��K\�\�y\0FL�\�Khv ��\��\�KRE\Z಴	��rr\�\�\�YP�\�X^6\')���\�u:�$\0W�12O�\r�����a�t\";���\�嵤�c[�vo\n�\��	���d^�jh�sC]�<�uZX]R\�h�	��t2��Ű\'#Q\r�d�s[<]\�/�C�̋cC�\ZB���F���:)�B��Kv��\�\�P�l0^TBvd\�\\I�˅P�\�\�-�P\r\�\�H�� 7�\Z)\\(j�Tz!I#\�{1�\0�Lv�l|c�}ݒd\�\�h��\��$5\\�)^���a�]N`$\��A ��!5�`��*\�=R\�BC\0ܮT\'pY]�^�����\nY�<�彔�X\�~�K���\�Y����	@��\�!K�Dz�I�^TB�C�K�\Z.�.\�\�qr��]ւ\�Jw�./�	\���\�R�ƀK\�$\�Ez\�\��N	�5\\\�<�./�\�k�ԪQ\��Dz\�e(N9v5\\vS9\�奼���\�-�p\�(��xٱ\���D��s\�Y*^�\�si~\0�x����\�Y��\�9u\\^�\�p\\K�\�\�\0\\>Ľ�dm����\�[\�q(�\�T��\r\�-#��Ϥka\0.Eֆ� k��rڵQ��#w`#��.�띃Ƈz5vL�3\�6�{[g{.�Թ\�`\0�8\��e̗\�I�S��L\�\\\�v�M-��|\�\�<I\�K�g,��\Z��\�Z뭫S:�9\��\�5t\�p_�rc9\�j\��\�����߇�Gbo�,A\�W�wT9\�)��p�\�\��\�{.w$\�\�\�\��%�\�˩5Y����N\�\�ك\���q�:�+:�\�ړ�\�X򞈮�\�{�\�\�\�.�\r�x\���\��p\� \�C���.--�h\�ܡ��IG�tq�cñZڱw�&���$\�!��B\��J�L�\����Vw8��\�j\�\�C`�\�w���ҹ/F\0��\"Z�k&���w\�ϥ~˭\�(��Ȭl0�>�\�R\�J�p\�hY;�23�\��pl8�s�\�\��\0�]\�N;pA�\�t;+\0�K_zk��H��z\���ڤ\�\��nv���\�yp��JIjRF\0�(:F�n`��X\�Tv\�C?m/�̈x=\�\�֒\�A�_�G�80ҹ\�L\0.�˲�=�2\�y��:e�\�3`\�!d\�Lp�\���\��\0\\��v}\�0Ʋ���\�~\�@Nn�x��ة��wP&\�XH��\'\0�\�C\�9\�\0\0\�3�?\�9(�,\ZE\r@\�T�l|\�\�n��\�\��[\�Wݷt�\��N\�e�6\�\�,�\0\\Q�Kv-�\��.\0\�7kPퟝIUI,�N\�\00�qX\�\�F���5�nm���\'N��\��clOZ\��\�	�+\0W\�\�b�mlY���y�v�\�i�j�:o(\�F\�K\�Ӄ��Q\�[���ѣ���\�l�u8w�\�6W\�?�E\�ڪ��\��+\0W\�\�\�lN�_Ԧ|��v�\�I��\n��󇊀�����=2�ݭ�m\�\�F\��\�yz@uc\�L:a�\�\�^�\r\�:G\��\���:\��+\0�\'z��=�x�j.P\�Δ\�ܐ`-\�P\�Я\�\��\�:��3[2Ζ \�.N�ͳ]\�a}\�L��{x!<\�!1e½\�>�b�\��1\�\�0_\�tx|\�\�\0��\�k\�őq/\�\�\�z���\��\�`�<\�\�c�\�Rc�\�7v\�u�>��S�ѡ��M:�`�h�����\��a��/\��\�[31\\���\�\�e\�z��q�O����L.Y�ge�\�\0v|�\�T:��\��-1v�e�\�=��\�\�`*3\�Ĳ	)E(�\�y�<�\�I}\�Ԣ\�u�K!\�\�\�\�\�O\�zE\�NkwU�\�\�L\�\n�d�:�5��g���\�k	\�6���=\�Q���\\>A{\�8�.2�\��>7綮{#1_��\�*��x�,��uE�\�^����\�Vp��_.�d��X6��vI\����w\\*0�\�2cw_\��C*����� \�3�Z>Q[\���.f�\�_mH)\�geۺ!�tLu\�\�ݹTy��\�;���+�Z\�\�#\�\0{�v2]Y6��\�Ȝ������\�ڂ�j)~/Ȑ�\�\0G�n�q�81�{E�:bz4�\�\�\�\��72�^V<s}g5]ze�V.y�*�\��%���\'	\�-V<�#�4���`\�\�\�\�Ҿ1]\�\�A�����+\'iC�\r\�^kl7hאv\��\'s�\�MK\Zء^���N\�\�\�V$v\�g\n\�\�\�\�獤��is�ƴ\�ڂ\�u�O�\�v���\�E\�VN��$��|�\���0>+\�}l^&�\\4Lؖa-�9L�^Ϸ|��FƵ�|G\�^*O\"�Y�\'���\�4���Kf�48W0A�+%��ܓ���q\�c\�ص!��=�2@uu�X��\�\�P�_ܾ\�{�f�+pdD�+\�\�a\��\�⯆Mvh|7Z�u]Zm01?g��\��_X5Ydoě��3i\�\��us,\r�\�U�岱!`\�a\'�e;:.\\%}\rvld*al\��\�\�B*��j\�U0336hK��t\�\0\�\���t�p�\�tj\�q\�s��j\"~	{�`�T¾2\�_/��@5�E;\�}N#\'���?O�\�g\�_�\�ѡ��\�&\�\�\�a��_3Z\��\r*lQۤ-]о�m\��\�~t~\�hQ[)��7�ʦ��\�_��\��_צ��Nf� 2M��d?Vį���T\�\�+�q\�LZ4�:��q\0�t��ߧ5Y�\�1�Tw`6�\�^C�\�b����|���\�\�>\�~�����ֵ�e� ��v����n\�J�\\�\��;\�@;5����\�nc�U\r��{O*\�/Cw���?|�Jlnӧ��]\0� \�X�.#G\�_�燁IE�7��`P�͍d܇\��\�\�t�\�f�\�\�z��UmQ\�R\�#\�\��1���NM\�N\��٪{JPm�N�v\�\�\���.�.>\�i ٠Q\0l����+��`\�eU��\�\�\�O|�\�\�\r\�|-�^\�^\0��Jn\�vR�S�y\��$�^\��w�Y[v=\�u����4�\0\\qV�۩x�P��%�\�\�\�Ugm\�\�\�A:D4_h\�Tq�*@�\� E�\�\�\"z�졯�Ɔ��˯5�&�M4\�T\�\�\�\��\�\�z��꺊��S>�?�ݿF%\�\'�L\ri��A�\"HMH\'܀\��L@� �.�˜M\�)\�o<֍\�6�Β-C\'{	/,\�`\�K\�n��ֳL�o\�.�{��Q<�\�_J\�\n2�\�\�\�\�v�F>�\�wi\�\���\�\�\����\��]J�\�mM\\���ڍN`K\Z��OG\�|����\�\n!���}v�T\�wQ1\����<�\"y\'�@Z�j���\'~u}\�X�	6�xI7��m�d:H2m;a\���\�\��\�u�U��\��\��o�R,nt�\�WO`�\�ݐ��\�{q\�\�Z�\�?v^7\�,2#Q6\�v<^\�M^��\�T@���++�?�I�g\��j>qC\�\�_P�,S�A��_\��=��e\�T��ʝ\0�\�:�/*Ѵ�\�(��\nqUU@�\�\�y\��uPI7�UIhP�h).\�qT�_;ͧ��%`\�\n��ov�\�x���u\�\�-�\�\�.vv�_\�,�YF<�~Ţ��û	\�D\�\'m�d\\19<�X\�x�\r6\�ﺯ\�\n`��+V50Y��R<c_� �q\�;Ƞ�%T|\��,\��\n#�o�?�\�\"xW[pE�\n\�(��##�4��\0��\��2��P\�\�U��l\�5x��\r\�l\���@�\�w3<u���-\�K:\\!�{�\��s��m(K	`)��a��ͯ+\��\�v@%2 \�d�,\0e%\�ɾ�\�\��\���\��%5�e!7/��W�\�\�\0ϫ	`��-�-Uv�\�\�\r�u\�\�}�\ra�t�\�KUL�z�\�Gօ�\Z\�\�\Z�J�T\\�A��.\�| �)KMvտ|t��d��\�\�%i\�L`�wы�k\�t\�\��3/Tq(k��K�\�\0S�\�\�\�\�F0�\���R��͸\��\�q�P\������8�+V\�aF��C5\0Np�y\�&0}<�ӗoRϹ\�\�w��*�;���\�sX�OϞ=�\�0\�u�\�N�\�\��\�X*p!Ff0$�&\\rL��]��u\"��(~2,\�A9\�]��\�=�V��o��.%tC�T�3������\�\�\�H8�d�\�����\Z��\�\��\�g�\�x����T�˰��7\�\�!m�Z�su\0R�T\�L\�\�f�aka`��阛�v�\\\�5�\�{\�d����O�v��3\�o�a�/\�f�=�X���\�T�k>#V�\';\�\"vS\�\�b\�4{GB��jx��m��\�3N<v`�x\��%�3N�e��.\�\0l\�\�6$\�!%\�h\�����Bz��N\�c�ٹ,\�<�n\��\�\0���Uz%\\r�[G�=7�	}7\�.\��^���ӷ��_O�{P�\�̥i\r,+/��\n �\�+��\0��\�f/^U\�tX�72W;&���\�\0Ut\�\�\��\�+�(��q�tŻ\�ec�f\�\�\���T\�Tvj\�\�9{_BR�\�V�\�_�ɚu2auI�\0�.�#\�ɱiRoF,��Hs倲=/� c�X��BBr�>�\�\��qX!]]\�nZ��:96\"\�\�Ȉ�^+\�\�v)��\�\���K�i��\��B\�o��\�ݲ\�\��\�ɱI\�aD\��[�E\�T���T�\�W��uN5����c�6}r�BbU\�6�1�<\�t�\\���u�Қ\�3��\�tɲ( W���c\�KP��[\�\�e\�*\�\0\0\0\0IEND�B`��PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\�\0\0\0\�\0\0\0�}ĵ\0\07<IDATx\�\�}�w׶���y\�\��rg\�[3���;\�7s\��\�cccl��k����l�,�\�A$�@A$��H\"H$\"c�\�9Z �\�w\�.��>����t�j��Rw\�9u�wv\�\'\�yA-Je*�Q�\��:����f͚QӦM\�\�\��gz\�7\���\�k޼9�jՊ���kOԶm[���\�\���~\����\�\���{�\�\�~_~���]�>�\�[��\�O�߱R�-�u\�\�Ԯ];\�sL4a�X��\�CjS��e��\�\�.�/\�;\�#�f�)\0\��\�{O\�\0\�7n\�X�\�s�~˖-M\�\r6\�|�\�7C\�	a��L�\�ק?�Pl6���@\�&��bC:��K7j\�\�u%�\"�L\���\�թSǔ�N\�l߾=}�\�WT�q�de�\0�^H�}\'z뭷�A�l�~7�\�\0\\Y}^3�R\�O	\����|H	�\�2�>�\����\0R���96�\��ǻQIu�-\�ﬦ,%�U2���\n&�AXEt\Z$�\Z>�\�x�\��&�6l��\0Z2%Z�,#�\�d0�̬�\��ց\�` ]\�2lPo��Y\0\0�\r�tqr���oU�b�M&s�#\�qr`0�\0B�\�??7\ṅm9����\�\�\�\�	/p\0�ҶQ�M	�l�dp\�1!��\n�\�d��\�1\�d����P[�K�p%\\\��gp\���4��e�\"�# K�:m@x`���+4��\� S�&Ml�\��KU`YA�\�G	�%�\�\�x��\n\��#A=`[@��\�Ǚ v����r*$\�H�{c\��g\'��?vb0�\r�?qʉ���\�\�;�.\�ҿ�\�oa�B�\r;<PW\�66\'G���f�fA\0�8Ŵ�\\\�n\���0=�*\�2\Z��\�iDȨ��&?��u�	a�AuK��� \0�τ�b4R����\�\��X��\r@\�\nY�Y� ��\�|\�-�\�9oq\0.�m-�R�\��Q?THvKˁVH>Į �\0(d�\�\��\�Z\�s\��~SM=\�H�\�R�x\Zڸ?Ɓ�ZN��[���4�H�$$@\���\�೉HV��\�s����Z��i�׵��lvǚ\�\�Q%\�FC���,�b\"������-��_��]Yw5ǁ\"\�B���\�\���r*�d��\�\�Uua�7��.�*\�sv���\0\\~�\�u�?rS9\�\r`��*�6rus��\0g��\�w\�Lt�;3&�{3tvd�j  ����p�\0�\�)T��òdLei�J\�\r-���\�\�fO�t򪱍�I��T\�Aj{%�\�TG\��\�\nh0h��_�\�=5JKpq�~�\�\nr��ސ3>��\'TOn�iٿ�yO*��KStΜ\�T\��gn4j\�H\0*��1\0�w�\�6nL\�D��\n�ɪ���͂Ε\�����{	#Uab��n$��^�z,P���\��]\0R�o*�w��\�+#�ƿ�6\��ށ�\��\�_|!\�\�Dmڴ	IPv\ZTUYuM)Ɓe]��V\���G�Ғh�٥>�O7\�\��-m�3�\��(i\�\��;!��u�\�\��!���\�e\�!e�;D\�$��H�<Ii\�(����뼨�\�)J�\�ׯW�&�\�DǖM�ʽ9��\�޸\'{\�9\�~�p�nr`�9N\�%n\�^)\0�Hr	\�j��U�}��������!Q\�J\�VO�o\�\'O\�X�AML[LW\�+CG��\�2U\�	$d$]l�~�>unٌf\�N�9�\���9��\�/z�}�P7w-C+��L��Q��^���� \�d�T\��K/\�\�^��\�-��\��\�\�N��ڽ�	��\�\'h�hiŤ�ԳcsS3\�7x\�8a���&q/��62t���\�\�\�+f\0�$\�\�\�wӄ�T<c�I%F�x�ЍM�\�P\�Z3y�\�D\�6���r�\�C\�=\�&r\�C��ÌT��8Q;g��b>H��}\��lK�\�O1\�\�\�i5Xv\��AZp��5�\�\�\�#�䣔t\n�sΡN\�\�2R\�\�®��;\0(�s��\�\�s�\�y�����sk<��@\'\r\�c8l�2[�&g�\��\���.�^ڀˋ��\�3NMcd\�\�3�w\�\�\rS\�Ş����rv`\��\�z/]\��Z��;<\�ŷ�1��A���ը�ֳ���\�H���Q#u���3\�\Z��\�z֖*h\n`}�\�g\�\�\�J-�^/\0\�]Y;]\�l�f�`�\�g\�ű�C#\���	�l+��_�\�\�h�֓M\�P\�ImD0َ��.1/-��jD��n[�:�1Z�82\�G�C�%\�ѡK��]�u�\�v\�\Z�*�pO�\�*a\�Ȉ;�\�Ȏ�d���SY�\�2�^�ǐd^�F\�~���\n\�\�-3\�O��\�^\�D�9\�]\��\�\�/;�{�K&\�\�TB�\�D��Ł\�\Z.\�\�%!\�\�\�B0�S�:5o��K�|;,Qj\"�_��\��\�\�8\�N\r�f�#�\�\n��K�������Q\��\�5��\��r�Y���\�SJ�g۲&\�@M�\��j���\"C�F�9`^�7eg�\\�@\�h�i��\��|\����5rv4mX?�Q)\';\�\�l���\0W�w\�GRfg��c1���N�P�\�zR\�P��X$ld�捫Z\'���\�<�\�rgb�d\�j�j<��z\n����K\�\�\�Z~\�P	��\�ҏ~\�>G�V\�&�w�^pjy	\"\��\r/mԠb\'�k�\�\�bp���]\��V���=ߝ�NG\��\��:9�\ZL��\�C\rtp/���\�I%\�[z�u��&����\�Z\���r��\�:z\n�6h\��s7Y86켄�3C_z�yF��!��93X��\�Y�v�B��h�\��\�2\�!՜���3Co���N�O�\rnG^\�5\Z\\*O!�ĭ��ff�^8��;5�f��<�\"Vi���q���\"�FKF�S\�.H9�� YWs���������\�\�e����TpEr\����e\�aw95<�.\��\�\�r�\��r\n�v{�\�\�\n<��\�1dpTHfB\�&!oЩWG\0.���\�%a�\�\��\�\�k�\�^��0��egsAU\�3\�\�MVi=�aiMoPm®*��\���2�\�qǻ�j!}\�J�\�R⟲ಞ#e��\r�^\���\�|Θ5\�0\0W\�m\�<F�π�S\'\�\�q.��Q����+�^��j$\�\�\�cg�]ձp\��b���\�B��\\Li\0Y�c\\�\�-tKgapa7��\�4�F4�j&�Xr\�rNW҃\�n�\�\�q)�|\��K՛0\0W��\�K\0�{\�\�r�P\��\�-\�ܪ�(�^�{Ns�K{\nJ�S�*v\�)9��\�Y\r�X-\�!�0\�Y�n�.\0J,\\\�\�\��I�b[<p\�r�dR�\�m\�T�\n�y�\�j�S�+��\�%�I��jZ���\�\� \�YhX\�S\�\�r�q\�JMp�\�N�\�\�R􉷺\�5jdVh��x|\�1\��+%��5e��	1Q8��@SA�\�\'m��\�\��8�\�A\0��\�v\�r�q\�JMpaM\�C箽\0�*��KK5m�Ū!�e\��\�\�Y�$\�\�t\�Jop!n�J�\�\�y�\�|��k\r\�\�ХyU^C�EU�lw�	\��һ`\�\�\�\�\�m\0FΈG�`\0.\�\�K�[\�S\0�\��] ٭\�N�\n��[\�]աw�\�\\�oF\��I�\�\'m�\�%����\0\\\�.\�-U�.7W<�D\0�\�T�V \�J?pq��Q��.�OZ��UCk@\�\�1\�\�\�\0\\\�.�uE.x�p�����\�\�\�,��\n9\0Wz��c]rN��tj�%�X5\�KU����\�\\�X�[n�.�Ij.�2>�A�s\�O\�	.U/\r��x�Z�i	.r\�T�!2\�e5!H\�M_p�U�5\�\�\\:ժ5�\�w\rW\r�3R]\�L\r/\������\�	t�`d]\���.N\�fK�;ߏ�\�p�[��}9T�|ps�o,��߃\�;\0a\�\�w\���*p�\�n\�?\���%�T��p��Lv;�\�K�?\�JV*\����\�\��\�M:�cS:=�uU�\�\�3�@+��,\�\��i�\�F\�\��g�i\�\�;\0a�vc0+�w\�\r[7U�\�\r\\:u}\�\\�j��\�s�\�K%�����\����\� y~H.�|O~��Y�$\'�[O:�+�t;\��\�)�P[p�j�j^ê!�6\�zh���;�t�\�\�bHu���\r\�+�p��\�\�D�\�nWy�u:�U{p�j�jd�\��^�?=\��[����\�1&\�N=L��r�b�\\\��\�V\�\�����Oڂ\�-S�7�B��-\�v\�XL,�RE��c:3�]�\�ːj#\���q!�\�]�\�Ϥ����	����\�;\�%��\����`\�y�g~6W�]\\\���@�=>�w��\�J)\� t\�R�N�A�\�\n�L\�@�Aa-�:\n^X�c\�\0\\�QZ�%�P�@2t}�\Z\�HT`�\��OW7�\�\���?\�99�EР�[\�E�ƺ�Y\Z0����\�Z�ˮ��\\\�\�=\�\�uw\�\���\�N|+HB*�w,I��^�ڕ�|\�؍�Aʵ\�X�HN�\�\'��%�C�TC7w��U\�E��J�\�j�R�\���)=��\�\�4�Oީmҟ��\�\����}\�$\�KE�\Z�%�	*���\�`��z2\�3�f\r��\��jM?�n\�:�wk�ߘ\�\��4�oί|�O��#6;lz�r�\�ƺ\"l�\0\\>d\�C5t\�{bps�u��\"�\"/*\0+���?�\��G�F\�\�\�,��u�]���TvhX+l�*p\�\�������\�ϫE�\�\n3~뽡N�B.3�z�`�O�\����C;s�[7��F�\�@\�v�msGz�E\�\����U��\�0�w\�\�aĶ�\�@�X\�&�\05��?���5|�ukOc\�F3��qׁ�)1\����9!s��T\�\��fJ�+KGV��p|ș\��Ɂd�\n:�\\\�٧��p��;Y�h_�ZJV߆\�Ly\�\��\����\�5��d\�\�WR⏾0�_�\�`!]ؾ�f��=\���1B�E�2�z�lB\�FR\�ɢzQ�5�s\�\�\�S1��_|d�\�YQVر��@�pq*�\�\�P\�S�\�n#S張\�7��y\�C�!\�\�và��W����AJ\�Ѓ=ts\���\�F\�\�{W�m4Ap�d\r\��K\�N\�x��\�\�\Zҋ*Ol\rӳCk��[��X�|n��Mv\�F$\�y���\�+���K�\��\�\'��h��\�3�\�\'\0=ʩ��TԹe3\�Y^�?�nY\Z,f\�OώUӉ]�\�\�!Tq\�==SJ����k\�\n|�;W\�\�[\�ɉ\�\�g�\�G���\ZTB�g���\�vj�Y\�*���p�:XV�M��wV\���x�*����\'\�_\�ã�\���\r�\�\�\��-a\��Y����\\�\��\"\�Y8\�{Ǥ]�\��e.�\�*\�\Z\"\�	b~o\�hp][\�,\�e)��<�6\�Ş\"�ǰ�Gu�\��Ń;\�ŕ\�@v\�(^OOo�J�ݽI�wl����d\�r*5h˲�V\�fS�\�l*\\�C�7ж�Kh��Ǐ_O�^�xsw!=:^,�ɩ�ß��\�O�Tyf���X5t��\�r�%��P�\��1=�t���;D�\��\�\�c�\�Xn\�\�B�\�+\�1�\�\�E�\�|vlX.\�9�\�\�/0\�kM\�\\@�7.��\�s\�\�\��\��<8}D�s\ny�ˌg�痏\��>]�\�Q:\�>71L\'p�\�jլQH\�(\��[5\Z\\\��k�i1N�\�����ݡ�W%�\��?�;l!a\�W^�fh���ů\'\���.\0�[�\�d��\�~�U�i��e�kc�^�\�d<+m]�/\0�e\�:r`?\�\�\��傩\�*1H .s\�￩$�\�!\�2$�<?+a�׷��\�;V�\0˜\�z\�q9�\�[`;\�\"x�9b#\�}\�6l�_\�\�\�q�t�\\v�.U%2k-�9�Bx��q�[5\Z\\lo��:e�=��2���\ZV��j!�&�ÅJƃ\Zxc�Zzt\�L(n^�FW\�\�\�*��*6v���\�ں��׽�R0H�`]-�R\��`�\�ݽ;z�\�\�\�A\0�\�ὰ9nX\�q�\�Q�b�\�\�B\��\�\�c�mhwJ6 �\�\�PW\��װq���sO\�6\�u�\�`\�\�!M�ݕtp�v���\�\�\�Go���p3H/\�2аG䅇�5\�\�t\�x��\�t\�\�	��ö��\�`<\��{�6�\���\�&\��6�\�y\�x���B���[!,TF\��nn\��\0P\rI(\��VK�c�\�\����BH�\�K�̱��lW\�R�V�:��\n\�\��>ۍ\�+���6g\�\\Y;\�\\\�\Z\r.v�\�\��ތLq�[~R\�ה�yU9�\��g{p1^:L�O\�6��&\�l\'H.׭\�m��\�P�\\G��\�u�d=9��\�� y�\r	,#~\�4FL�?��V��L}��)�`�.�	\�ڿc=ݿsS\�q�\�e.s,�\���m\�g]߶�*�m6ǣ\�\�\�\�<�Kegwo𚲔��\�\n\�BK=2\�\�2�T�\�^н�\�\�6�;��u����ˠ���҃�G\�\�*șMٓ�\�ӇТ��iX\�\�4仮!4f`oZ2k\�\�Js\��\�\�\�\�\�ų\'t�(?�><V\'`\�\�\0�\�sr\�?<w\�q�k�\�7\�8g\������\r\�G˲��9\�u�#\��f����B���v��Ԓ�e��������\�`쒯�j!�Kvh���Ќ΍\� \�H\�Fb���\�\��M\�.,��\�\�\�u\�\�M�<�\�\Zٛ\���M\�G\�Jv1�+\�֓`\�חf\�E\�\nr]\���\��0�h\�\�\�\��\�\�\�E��F+v�L\�s\�6h܀\�4^̱\��ݫ9~/\�ae��w��\�p\�\�\�B�׋=�\�\�A.d\�XX\�;�M����Z\Z5\\r\��.�\�\�w\�/�\��������k\�[$H0;\Z\�/��.��o�]\�\�r�\�\�K�G��pB?Z<���l\�\��R\�辴o\�fw��sI0�u,H[b\����\�T�s5y\�?\�\�\�.�[�\�˧]f�#\0\�\�\�<\����֯r�X\0�Ɏ\Zy~��Ÿ8��˲\�B2\�_H�bpq�c~oq�W//ɜ .UG\�4�ldO\�wx\�j\�:�\�\�\�p�\n��Yc[\�	L\0;\�\�cTq��-\�=���V/�-Y��\�(\\Hvm�\'��K+x\�G�U&\�]�p=\�:�&wo\�>�W��\�UW�:z�vm\��#~޻u�\�_8AON\�秋m\��hLcl\nN�:2HXl��W\\ +�I���p�\�k|�9`�2P�.�Y5��:���C��\\v\�j�t�Kdz�%=:��n\�\\I�/�q�ۅ]�\��\"�&\�\�V�C\"ҼB���ҩ��M\�N\�9B� ��{�b��n\�\�Ow���G%��m�\"�\'Y\�+\�K\�\�F0�;\0�7Z���&s�+P���\�-�+yg�\���w4\�\�\�l\���cN��8�luj�QE�6\����5_\�7�nN0�	�+\�D���@��v�qC\�{+FA�K\�mn07�\�\�\�bn�ݼ\��w�̓����\�\�6\�\�\�QU����n\�k56Q\�#����G\�w\";Â\�]ɩ��ak�&�uY�\�Oom\�]\���E�\�VgiD\0.[\�[�2%9\�\�v[	c�\�%�Rv\n@-ڕ��)�=I/�m7�h\�Y�f^�J(�eS\�/\�\�Qe��fv���[\�\�+σ\�\�WtaD�\�%�,�;/�_�/�:Sa�*p�\��.V\r��^�$x�x\\�GE^����O�\�0%\�u\�e~��P��:y��x&\�*�.k�\�#�T\0�W���x�U�3�Et��\�N�H���p�\�G\Z�.�\�Y�P[ᜈ\\�\0\0׽���\�\�@Y�\Z\�oݜ�՛\�+/(\�N\�\�*dk��\�����r\�<\n&��D\�L\r�j�����C_��\�VW({׃\�\�E`�\Z	�\�f<VA��#\�\�^4[��϶W�\��\��\��Zj\�\�93\�\��mCD\�\�bo�J�\�\�\��%ǻd\��9ЫCܴ}	�a$�\��ʱ!1�H��	��5�6Tħ�\�\�\�NCE��y��w\�}�8Q㑋?�z\nep\rh\�\\�2\�\�\\�\�?��OV	�\�\�\\7��UC�]\�/N\rx�:��e窒\\\�j���~�Aui�a�$z��xG\�X\"=�%��\��\�\�ܾ��4N��ţL�%c~P\����?�:�`X\�x��:�m���J8��g!\�\�XOٙ!��\�\0\\=\�W���e\���H\��\�Po�ӂ=\\3A,�	�r\�l0E���\�$Z��g��|�T�h�uc\�@.�\0�7���0z��4\�U[\�\�\�Ɓ�Y\�]7O!�����խy�f��%�KV	�K�TC~qT�Ae�\����gp=Z7�\��;,��bY\��E\�]�Ỹ�k�eb\�S����\���!\\w�K곡\"M\�\'$��+\�h\�\��<7k�6-���Kړ\n\\v6=�\�͈C6:��ځK\�ְ���\�Ǝ�(�]ð\�Y�ń\�b�\�e�\�\�\���X\�y!??\ZG�l�\�\�j\�\\?\��as�a\�\� ��\�6\'U����QY+�!E�6b4\�\�<y@\�gdpɁc�>i\���\'AN�a �wy\�z&�\�z\�p�\Z\��\0\r*#���\�H�Ǵޭ�XR9�\�-�\�-�3Y\�b}<7\0!�y�p��mk;K_\�awn\�\�ѾUXW^9\��%\�őڃKN\�E�����\"�\�\�(!Y5�}\�	x`$7\�\�\�3�UD�\"�U%�D5//s�\�\�PM�P7O�\n\\9\�4R�^#���C���\��[����n\�\�\�M\Z�{Yp�\�f,z�\0�܎��B\'�\��\�\�E:\'��w�\�bU\�;pAj!�b��\\��K+�\�8��x\�KxD9\n�\�8��l\��\�E5I����\\�\�=\\;1���\r�8]\��8A �\�!\�o�2��l��XKp\�1/���kd�O�ϧ\�E,-���w�ŀ���f�n���d�	.�\�\�\�$�\��\�m\ZniO2��aBjY�\"\�5\�1����p̋�\�Te\�\\v0�͇1��UF�G+Q̇g�,�j�1#�&A ��m\'�B\�\�<\��3*\�!���v-\�Y%\�%\�)e��*�W�����Q��\Z\'R\�`F0=���h�vZ0�j��i�q˪����p\�2\���b�U\�Ǹ\�I�ۋ3CT�gv���56{��T{\�K�Sl+%�uubx@Y\�8\�\�Z�\�JƉ��\���Xgp\�\�ޏyqfp���UU\�(1\n[?Cr]UB��%���K^u85���l\�(�\�\�IV\r\��\�#QQ��dթ�\�2侖��;�\�ɒ\�D^Ut�\�J�ԋHUK7paN�jhM9J6y\�̰�Y\�\�D֌\�v�����R\�S-�v9;J�\�o\�L\r&?bh~ۅ^׆��U\�����&LYpq*��gh\�akAj\�\�\�v��g+ٶI\��܈�u%\�;�{��K^�9����\�h��vy��\�Ѝ�w��s����Ƣx���e%�\��BL&\�0�*��ʒ|\�j\�\�\�&��~P@yg\�p}\�V�\�I8f�\�\r��m\����瞆V�\\\�ԣ��{#����\�D\�ETyj�g�H\0\��\�\���h,/����K��\�Xs����g�\��)\rJ\�1�\�\�s\�dX�H�\�\� ՑIl7�޾����\�.�<��\nl.�\�O��!~>5����\�\�1�[Tc]A\"���e�]�R\\r\�5kG(�t��\�\�Um�\�1T�\�J,��\�A�>Z7)$�\��\�\��TY��*�o�\�ҥ�G��o\"�\��N\�R�Pl;?�Zo�T�ga��\�K\0�8������\�\�5[�\"�\��]${����\�]�g~!\0\�Y�~�J�l+U0\�9\�\�\�.Y\�\�n�ZD\�5�\ZZ�d\r�K\�{�`\�\�2�v���S.k|\�\n\�C�?L){\�\�+u\�\�2�{��\���\��+Ʋ��R��a�?\Zƻ^=\r\\�ߟ�v�b\�\��\�\'|c0�Zr-\0\�\�:�\�G)coA\�\�x�ʋ�Zg\�\��S\n\\Hk\�h\�\�\�\�Ǵ�����w=\�>O�\�|a\�h*\�V�.L\�,�p5\�g���3�ُʦ��c��C[۪��l*�+K�\�y�\���NN\�Ae���3�Aw�d�\�V\�^�e|\�N%�ۘt9l!e�Bz�ח.{\r��\�g�t\�|�\�`\�\�&*\�F%Y?	R�\rt0g$]\�,8.\0\�c�FPY\�\�\�\�QY\�X1��&ӵ�3\�♖�J�:M\�� ���\�/�Kz\�X~�^s\r�\�3�4\0�Hg\n&ѡţ#fx\':�|�,3aC���|\���qtq\�T��q���~rF���5T\��T*�\��VJ�Kn��s9CZ&���\�$�2� �fr+\�۩r\0�\�@�K�h\�I�$\��1T?�\�%K�NO)	..?�\�DP#Y��\�ym�\�$��l~30\0ª#\�\�v�\�eL���\'\�\�\0��@\���\Z�pg\rcݼ�3>�\�)&i.k񤊐*Ş#��W\�\�K�v01��WFdƖ��\��jW�\�c`��`$ �z/�u���\049��\"\�\����]CI7�\�ϰɬ���Jz�y�1\n��ӎ�&\�o&6�� �\�\�<O��,�5\�ֺ޺�OKpEӃ\�k:��K\�\�y\0FL�\�Khv ��\��\�KRE\Z಴	��rr\�\�\�YP�\�X^6\')���\�u:�$\0W�12O�\r�����a�t\";���\�嵤�c[�vo\n�\��	���d^�jh�sC]�<�uZX]R\�h�	��t2��Ű\'#Q\r�d�s[<]\�/�C�̋cC�\ZB���F���:)�B��Kv��\�\�P�l0^TBvd\�\\I�˅P�\�\�-�P\r\�\�H�� 7�\Z)\\(j�Tz!I#\�{1�\0�Lv�l|c�}ݒd\�\�h��\��$5\\�)^���a�]N`$\��A ��!5�`��*\�=R\�BC\0ܮT\'pY]�^�����\nY�<�彔�X\�~�K���\�Y����	@��\�!K�Dz�I�^TB�C�K�\Z.�.\�\�qr��]ւ\�Jw�./�	\���\�R�ƀK\�$\�Ez\�\��N	�5\\\�<�./�\�k�ԪQ\��Dz\�e(N9v5\\vS9\�奼���\�-�p\�(��xٱ\���D��s\�Y*^�\�si~\0�x����\�Y��\�9u\\^�\�p\\K�\�\�\0\\>Ľ�dm����\�[\�q(�\�T��\r\�-#��Ϥka\0.Eֆ� k��rڵQ��#w`#��.�띃Ƈz5vL�3\�6�{[g{.�Թ\�`\0�8\��e̗\�I�S��L\�\\\�v�M-��|\�\�<I\�K�g,��\Z��\�Z뭫S:�9\��\�5t\�p_�rc9\�j\��\�����߇�Gbo�,A\�W�wT9\�)��p�\�\��\�{.w$\�\�\�\��%�\�˩5Y����N\�\�ك\���q�:�+:�\�ړ�\�X򞈮�\�{�\�\�\�.�\r�x\���\��p\� \�C���.--�h\�ܡ��IG�tq�cñZڱw�&���$\�!��B\��J�L�\����Vw8��\�j\�\�C`�\�w���ҹ/F\0��\"Z�k&���w\�ϥ~˭\�(��Ȭl0�>�\�R\�J�p\�hY;�23�\��pl8�s�\�\��\0�]\�N;pA�\�t;+\0�K_zk��H��z\���ڤ\�\��nv���\�yp��JIjRF\0�(:F�n`��X\�Tv\�C?m/�̈x=\�\�֒\�A�_�G�80ҹ\�L\0.�˲�=�2\�y��:e�\�3`\�!d\�Lp�\���\��\0\\��v}\�0Ʋ���\�~\�@Nn�x��ة��wP&\�XH��\'\0�\�C\�9\�\0\0\�3�?\�9(�,\ZE\r@\�T�l|\�\�n��\�\��[\�Wݷt�\��N\�e�6\�\�,�\0\\Q�Kv-�\��.\0\�7kPퟝIUI,�N\�\00�qX\�\�F���5�nm���\'N��\��clOZ\��\�	�+\0W\�\�b�mlY���y�v�\�i�j�:o(\�F\�K\�Ӄ��Q\�[���ѣ���\�l�u8w�\�6W\�?�E\�ڪ��\��+\0W\�\�\�lN�_Ԧ|��v�\�I��\n��󇊀�����=2�ݭ�m\�\�F\��\�yz@uc\�L:a�\�\�^�\r\�:G\��\���:\��+\0�\'z��=�x�j.P\�Δ\�ܐ`-\�P\�Я\�\��\�:��3[2Ζ \�.N�ͳ]\�a}\�L��{x!<\�!1e½\�>�b�\��1\�\�0_\�tx|\�\�\0��\�k\�őq/\�\�\�z���\��\�`�<\�\�c�\�Rc�\�7v\�u�>��S�ѡ��M:�`�h�����\��a��/\��\�[31\\���\�\�e\�z��q�O����L.Y�ge�\�\0v|�\�T:��\��-1v�e�\�=��\�\�`*3\�Ĳ	)E(�\�y�<�\�I}\�Ԣ\�u�K!\�\�\�\�\�O\�zE\�NkwU�\�\�L\�\n�d�:�5��g���\�k	\�6���=\�Q���\\>A{\�8�.2�\��>7綮{#1_��\�*��x�,��uE�\�^����\�Vp��_.�d��X6��vI\����w\\*0�\�2cw_\��C*����� \�3�Z>Q[\���.f�\�_mH)\�geۺ!�tLu\�\�ݹTy��\�;���+�Z\�\�#\�\0{�v2]Y6��\�Ȝ������\�ڂ�j)~/Ȑ�\�\0G�n�q�81�{E�:bz4�\�\�\�\��72�^V<s}g5]ze�V.y�*�\��%���\'	\�-V<�#�4���`\�\�\�\�Ҿ1]\�\�A�����+\'iC�\r\�^kl7hאv\��\'s�\�MK\Zء^���N\�\�\�V$v\�g\n\�\�\�\�獤��is�ƴ\�ڂ\�u�O�\�v���\�E\�VN��$��|�\���0>+\�}l^&�\\4Lؖa-�9L�^Ϸ|��FƵ�|G\�^*O\"�Y�\'���\�4���Kf�48W0A�+%��ܓ���q\�c\�ص!��=�2@uu�X��\�\�P�_ܾ\�{�f�+pdD�+\�\�a\��\�⯆Mvh|7Z�u]Zm01?g��\��_X5Ydoě��3i\�\��us,\r�\�U�岱!`\�a\'�e;:.\\%}\rvld*al\��\�\�B*��j\�U0336hK��t\�\0\�\���t�p�\�tj\�q\�s��j\"~	{�`�T¾2\�_/��@5�E;\�}N#\'���?O�\�g\�_�\�ѡ��\�&\�\�\�a��_3Z\��\r*lQۤ-]о�m\��\�~t~\�hQ[)��7�ʦ��\�_��\��_צ��Nf� 2M��d?Vį���T\�\�+�q\�LZ4�:��q\0�t��ߧ5Y�\�1�Tw`6�\�^C�\�b����|���\�\�>\�~�����ֵ�e� ��v����n\�J�\\�\��;\�@;5����\�nc�U\r��{O*\�/Cw���?|�Jlnӧ��]\0� \�X�.#G\�_�燁IE�7��`P�͍d܇\��\�\�t�\�f�\�\�z��UmQ\�R\�#\�\��1���NM\�N\��٪{JPm�N�v\�\�\���.�.>\�i ٠Q\0l����+��`\�eU��\�\�\�O|�\�\�\r\�|-�^\�^\0��Jn\�vR�S�y\��$�^\��w�Y[v=\�u����4�\0\\qV�۩x�P��%�\�\�\�Ugm\�\�\�A:D4_h\�Tq�*@�\� E�\�\�\"z�졯�Ɔ��˯5�&�M4\�T\�\�\�\��\�\�z��꺊��S>�?�ݿF%\�\'�L\ri��A�\"HMH\'܀\��L@� �.�˜M\�)\�o<֍\�6�Β-C\'{	/,\�`\�K\�n��ֳL�o\�.�{��Q<�\�_J\�\n2�\�\�\�\�v�F>�\�wi\�\���\�\�\����\��]J�\�mM\\���ڍN`K\Z��OG\�|����\�\n!���}v�T\�wQ1\����<�\"y\'�@Z�j���\'~u}\�X�	6�xI7��m�d:H2m;a\���\�\��\�u�U��\��\��o�R,nt�\�WO`�\�ݐ��\�{q\�\�Z�\�?v^7\�,2#Q6\�v<^\�M^��\�T@���++�?�I�g\��j>qC\�\�_P�,S�A��_\��=��e\�T��ʝ\0�\�:�/*Ѵ�\�(��\nqUU@�\�\�y\��uPI7�UIhP�h).\�qT�_;ͧ��%`\�\n��ov�\�x���u\�\�-�\�\�.vv�_\�,�YF<�~Ţ��û	\�D\�\'m�d\\19<�X\�x�\r6\�ﺯ\�\n`��+V50Y��R<c_� �q\�;Ƞ�%T|\��,\��\n#�o�?�\�\"xW[pE�\n\�(��##�4��\0��\��2��P\�\�U��l\�5x��\r\�l\���@�\�w3<u���-\�K:\\!�{�\��s��m(K	`)��a��ͯ+\��\�v@%2 \�d�,\0e%\�ɾ�\�\��\���\��%5�e!7/��W�\�\�\0ϫ	`��-�-Uv�\�\�\r�u\�\�}�\ra�t�\�KUL�z�\�Gօ�\Z\�\�\Z�J�T\\�A��.\�| �)KMvտ|t��d��\�\�%i\�L`�wы�k\�t\�\��3/Tq(k��K�\�\0S�\�\�\�\�F0�\���R��͸\��\�q�P\������8�+V\�aF��C5\0Np�y\�&0}<�ӗoRϹ\�\�w��*�;���\�sX�OϞ=�\�0\�u�\�N�\�\��\�X*p!Ff0$�&\\rL��]��u\"��(~2,\�A9\�]��\�=�V��o��.%tC�T�3������\�\�\�H8�d�\�����\Z��\�\��\�g�\�x����T�˰��7\�\�!m�Z�su\0R�T\�L\�\�f�aka`��阛�v�\\\�5�\�{\�d����O�v��3\�o�a�/\�f�=�X���\�T�k>#V�\';\�\"vS\�\�b\�4{GB��jx��m��\�3N<v`�x\��%�3N�e��.\�\0l\�\�6$\�!%\�h\�����Bz��N\�c�ٹ,\�<�n\��\�\0���Uz%\\r�[G�=7�	}7\�.\��^���ӷ��_O�{P�\�̥i\r,+/��\n �\�+��\0��\�f/^U\�tX�72W;&���\�\0Ut\�\�\��\�+�(��q�tŻ\�ec�f\�\�\���T\�Tvj\�\�9{_BR�\�V�\�_�ɚu2auI�\0�.�#\�ɱiRoF,��Hs倲=/� c�X��BBr�>�\�\��qX!]]\�nZ��:96\"\�\�Ȉ�^+\�\�v)��\�\���K�i��\��B\�o��\�ݲ\�\��\�ɱI\�aD\��[�E\�T���T�\�W��uN5����c�6}r�BbU\�6�1�<\�t�\\���u�Қ\�3��\�tɲ( W���c\�KP��[\�\�e\�*\�\0\0\0\0IEND�B`�','AC',6),(16,'m.rodriguez@mrsservice.com.ar','Mariano','Rodriguez',0,'21232f297a57a5a743894a0e4a801fc3',1,'�\��\�\0JFIF\0,,\0\0�\�\0C\0	\Z!\Z\"$\"$��\0\�\�\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0	�\�\0R\0\n\0\0!1AQa\"Bq�	2T�����\�#3RVbr��\�\��$S�CUc�%Ds��4Fd�\�\��\�\0\0\0?\0���\�Zy8��r�\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"�\�\��.<�����S��r ����,\�\\r\�Ȟ\��QR�n\��A\�ܒr\�̪�| AP	i\rw�G���DDDDDDDDDDDDDDDDDDDDDDDDDT�۸\0eǐF7w$���*�D_FATZC]ŧ�\��+�/v\�\0q\��\�\�\'.<ʩ\��U\0���9i\�Og�\\���������}Y�l�[O\�߯\�\�P۩�,��\�y\09�a��:��\�-6\�\�\�\��WY�y?[t��+\Z���ڜ�\��h9���\�_?	��~���?ʟ��ڿK\��\0\�^��\�i�eS$��[\�\�\�CSFƇ����Է\����7��B#��P@\�\�h$�8H;_�!\�\�}k2\"\"\"\"\"\"\"\"\"\"\"*^\�`�A\�ܒr\�̪�| �2\n�Ӻ㖞G���DDDDDDDE�\�zZ\�vUe��y�47Pڈ\�\�\�\�ݺ\\;pGZ���$th���\�Ə�����cqc\�\�qi\�h.p\�qkH>��DDDDDDDDDDT�\��.<�1��$\�ǙU\"\"\"\"\"�@#d@%�u\�-<�w�\\�������t�P\�\��W\�jࣤ���\�3\�Ǝd��(��N�\�Ӿ{\�\�d\�c\��s�\0I��\�;\�\�Y\���֛\��ۭ[\�\�/�H��\�{\�#���\�\0>\�\��ʳ{�\�\�R44Q�:�{���~��e\"\")\�\�\�\�[^\�oGm�\�6{�\�5�i[P�h=\'5~�\��\�i\�\r\�M\�V�o ��Wմ1�[\��\�\�\�#*L\�wk�7j6�)ӵ����\Z�|�l�\�\�!\"\"\"\"\"\"\"\"\"�\�\�\02\�\�#��N\\y�R\"\"\"\"\"/�0FATZw\\r\�\��xȈ������\�]=�4\�F�Եͥ��a��\�c\�I\�k��\�5>ծn�I$�\����klo\�{�!�\��ňT��:o\"�eW�+���}\�\�y6V���T�\����}�=�\�\�4A�\�\�\�\�\�T�>	\�A�\�\�\�\�\n\�DE3�͋0\�\�ڀ��F\�\�\�\��)�W<t��TLwc��{\�p%jX\�\�\�˽\�woIY[4\�=\�\�\'��t\��\�\�4��\�z\n\�g\�4/\�p?\�x>�/t��m�ު�~���1\�\r���\�{~E\"QR�c\0��\�\�䓗eT�������\�\0��U\0��\���=\�r\"\"\"/Z\�[>�\�ڎ�V\�[}fIy�\�v��\0w��;\�f��}_%ʹ臨@Km�!\�l\�=\�=�ر�)c\�o^L\Z\�R؜�2���\r\��ߏ�\�NsǁZ�\�-�\�\�j�60)ns����G\�U���b����\�*\��\�\�8w{>��d��\�E�c:�\�\��f4��n�\�T\'��s\�TOKUM4��x��v\��A\�+a�6\�ѭLj9����\�B�!\�\����\�B�\"\"\"\"\"\"�\�\�\0q\��\�\�\'.<ʩ\�#!P	i�9oa\��+�|$\0I8�Z�駶5ְ~��U�lҖ\�y�U��{\�x�\�=�:�,\�Ю�,�!���\�k��g=�\�8��[/Z\�\�\�f���Ρ�܊\�M[<If\�\�iX!\�:>م�b�B\�[�\�Z\�\�äc�\�\�\�OK׽���d��ܫa��	s���\\\�\�җ릘\�47\�-S\�k\�l�\�ӌ\�{�\�Gh[E\�^\�m�N\�\���܎������\'h�\�\�+�/v8�A\�q\'.<ʩ\�#!P	i�9oa\��+�鍴�l�\0eۧ\�\�W�h\�\�O�H�d�\�Ӂ\�൪I$�rO5�\\�1��ŴM=wc�<�\��vq�\��Y[q�F\�%a\�^\�\��T$�I\�qG���\�\�\�\�\�L\�ۈ\�\��\0iQzZj�\�=Gm�\�yU\\P\�Cy\�g\�[~��:jH)�hlqF\�5��\0`=\�{\�)t��k�\�p\00g\��g΅;L~�ڌVZ��l\��6�`O�\��\\�N\��>c��������\0ˏ �n2Iˏ2�DDDDDDDDDE��F\�TZpN[\�{�\n\�DZ\�駭߬6\�p��m�}�y8-.o=n\'\�X=K]�tĭ�\�*{6�ӳ]\�\�CYO0c�hoXn1\�s\�XCo;V�mgW6�t�����u4Tq����99=�\'��w,r��#��F\�״�4�`�\�/4\'M	\�\�^\ZS�\�])\���z����0��\��eG��\�&��-k6��\��T��YO\�ўg�$��c\"\"\�W\�+e�ůc��\�\�ȭ�ttֿ\�\�\�u�o՘<���\0֏\�q>�\�YR\�c�q\��\�rO2�DDDDDDDDDDD �\�q�Xpx���x.Eo\���З\�E)\�m�2\�{Z\�Gׅ�\n��뫪+��d��WK+��\�I�J\�\"\"\"\"\"\"\"\"\"��\���s�\�\�>i80\�_N\�\��\01\�cO�L�DDDT�\�\�\\ycwx��y�R\"\"\"\"\"\"\"\"\"\"\"!\0�+�ÃŽ���`����Z�=ݡ�\�\\* �i\�\�\�ִ���DDDDDDDDE��^k\�j�\�r���w\�\�\\al�R�c�q\��\�\�NI\�UH��������������\�a�C�\�v_c��P-ۭc��\�3\�\�(\�Z\�\�8 �*Qdn�52R\�\�FK\�7X�\�q\�?Q[RDDEK���<�5�\�̞eT��������������s���\�\�.Ӳ���7K4�8kђO�Am���\�Wk\�E\�\�\�5�72��\�N�|x0�8���u\�\�uֶ���UjZ\�4�ad\��\�c#\0v/͹��\\\�\�\��W�\�Z\�\�8 �*Qz\�s��]�n���)k�%l�Oãx9x����K\�\�\\ʉ5\\�Fe\�\�D\�\Z\�\�9=�M��[f�msNK4p6��E�]E��\��{kW%�.v8$�\�\�\�O2�DDDDDDDDDDDDDX7�Ҳ\�\�\��(\�c5s�M+��nx\�\�ake@�A�9��rf\\\���\��W�\�Z\�\�8 �*Qgn�7J\�H]=6�����\n��\�wwx\�-dH�s����\�\�y�R\"\"\"\"\"\"\"\"\"\"\"\"\"+?lZ*�h[7�i:��\�l?����r�\�1\�\�\0�m�4��Fj*���KC]N\�^\��\�4�sOa�EP$A �D/Dn\�ك�\�4p<�\���\�\�8����=��DDDDDDD_@$\�q*j�\��\�\�Y.\�u\��\�s�	ZZ�5\�\nR\�\�0=�L%K��\0eǐF��\'�U\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"�5n�\�ں�����o�D\�\�yL\�\�\�m�f�{��|\�?�?����\�>t�̟�\�\�@m�:O\�A\��c@�4�ȇI�\�>��=$��hKc\��Ϸ\��\��{\�\�\�\r�\�I�\��=\�g�\���d��3�l�\�2~{��|\�?�?����\�>t�̟�\�\�@m�:O\�O�\�c?�6ϝ\'�\'\����\�gΓ���{\�\�\�\r�\�I�\��=\�g�\���d��3�l�\�2~{��|\�?�?����\�>t�̟�\�\�@m�:O\�O�\�c?�6ϝ\'�\'\����\�gΓ�����1�\�\rs+�z\Z\�CX�\�֖��N�Y\0\0\0\0`�\�\�\02\�\�#[�ܓ̪�Z[R\��{f�m��S>��&v��O��\���\�p<V6���\�\�\�Kl���yE\\̆-�\�8�2s�d�\�FF\n�y��\�=ʴDDDDDE����\��\�[��**\� �SәO���\���A[z��\�5���\��\n���*\�9��J\"\���.9$�\�ҳ\"�\�\�\�ǐF��\'�U\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\",\'\�j\�n]o\�\�}#\�o�l�\�?4���=K�\��ulv록�݇�h�e\�\�G_\�\�`d\��9���v\�\��Tgp\��\�ܫDDDDDE=\���\\i�;^i�\�\�<���\Z�\�2\�. �\�Kr((**s\�p�\0��2\�c�q\��ǉ<ʩ��/��e��\�]Wl�6�\�\�Ã\�\�Ա\�\�F\nڗF\�\���a�N\�\\ ��	8�t~f>F��Q��@��\�=ʴDDDDE�>�7�z\�	{dn\�v�EFqc�\�J\�~\���\���5�\�S\�I�i..��T\�kq\�O2�DDDDDDDDDDDDDDDDDTH\�\��x\�\\#����\�����l/n褸\�\�\08n7\�!L�s�R��\�n�jG�-��\�\�\�W(\�}[�\�P�\"���g�{r�u.��ۭ�W\n�5�\�B\�^I����-Lj��\�Z�\�.W][,\����\�CG�SǠ���y�ꥻ\�\�;Z\0��c1\�����������������������\�\�WZ6�I�⌊{\�K�l~k���ڼ~���i���j��r���ݓ�֏:2}���\�c(��x�*��\�\�\�U\"\"\"\"\�1��ZKa\�Q��7w6\��K��ǳ\�\�Z\�h��\�উ��i10p8\0�}�\�贞��i��֋}P��\�F���%\\H������������������\0�\�Ѯ\���\�MYY`�V�\'��2�Vq���;%Ϊ\�y��P\�\�\�\�d�sk\�\�\�~P�ϳMQG�t%�TP��+�+%sA\�\��\�\�G�\\h����������\�M���~��\�x\Z�0]�44z��:0\�\�Z\�-�07\Z�G��c\��ӎ\�V\�u.�T\�;mM��&\�MS���k��\n\�\�4}V�\�-\�KU��p�\�|8�;\�-#ە\'=\�-����ͮ3���[l\�=��>�|�g\"\"\"\"\"\"+Kk�΋g�=�\�\�7p	����=n!j��\0t��^�o7�����y�{\\\����\�+A3�\�55l;���A+w��fDc\�w�\�R=q\�,Q㬑�\�,�*�A侢\�|�Fp��i\�.r�\"\"\"\"\"\"\"\"\"\"\"\"�R[�9�HPצ6��Ri�u\�t\�>�\�a�s\�˼ד\�N=�D\��imQm\�V��U\���\��\�<A�# ��=�k�^\��-�UZ�ޮ�1\�E��%3\�Ճڮ\�EnW\�\�Q�j�0��{�n{�ƭ�K�\�z�\�汬��\�wiq\0��\�ٵQ��tz\Z\�Q�i�HMS\�r٪�X`\�\�%a݆\�\Zݣ\�2զ)\�\��,�md�\�\r\��|��hu�V�\�\�\�#��C}�h�{�FU\�WZ_=K�\�38g\�{���Efm%\�k��\\Fw�R��Ҳ;=4�=�`�c�\�\07GV\�J�-�\�٤�ߩ\��L��\�H\��|\��\�**m�V\�u<\�eF��\�L�\�\�ޠ�C\��\�b��\�\�\�8���p��x;~j��\��I榧D^�����Bk�ֶ\�\�#�\�%vP�y��\�\�\�R\�y��\�%��3\��X9�\��߽�\";�\�\�\\\�P�x�\�\0KH=�Xڐ\�\�m�\�.TB��\�J\�ia<�\�p �ھ�n�ֵ���FӇo\�O\�u�\�_a�\"�K\�t�5\�\�\�*\�6��\�s�\0��c\�>�:�\�	����BV=�\�p8����\�U��\�T�:(\��nW�a�\�q�\�T:&�\��\��\0e\�\\\��ۑ����\�^\�շSʄ|¼J+�U=\�\��B\�s�\�\�<�\n�\�\�j듧�\�!�i�W�y\�UX\�;TG���\\I�u�o�25\�\ZL\�\�\�\�XO��\�\�]�P1È<\�{AV�\�UU��\�v�C�]����\�\0�~\�6�s\�:6�\�\�\�W�\�\�\�\�SBA�����(\Z\��\�\�\�����\�%\�s:Ǹ�\�8��6�$h�A�l]���Gu�\�o��\�\�\�\�r\�\�>\�囵��\�(�M!`2\�\0\�xV:�\�tE�\�9\�\�\��3�\�Yv�٧!��nj�7wO;��\�uԕmD�\�[�\�->��\�)\�Y�����\�\�}I~�6\�m��\�$y�\��V}3�\�z�\�󁃀�\�n��MŔ\�\�+yc\'\�|\�\�U55u\\̂�H�$y�k@��\�HM�]u|\�\�\�S[��=4a�Y-�\�\�\��ǘg\���QT\����d�*V\�\�\�籣�x\�*\�k�\�Q1\�\��@w.��\�z:>�j-�k�72���Z\�\�H\�\�d�\�o>Jl����/���������������^��Z��\���㽣j�\�,5��4�p�\0�*()\�\�ܦc[;\�o.*\�\�\�q\�w�Hƻ29\�+�\�.\�k]<B�m�I\�%\��1�\�q�}i*z�y�����MIZ\�\�\�0X\�ׇ=�;t0\�lZr\�\�+�\��mF \�J\��\0LK\�3\'�\��)�x��i�\�#{^\�R\�湧 �ӂ\n��i\�\Z��#,�\0�]\�\Z\�}C@o_p�U�\�\���~Eb[\Z�\'���\�\�\���W\�\�6�RѺw/RǺ6��\�p�j\�n\�=֝ܜ\����\�]h��l�|�o��\�\�\�_4\�\�%kw���G���>�ڽ�e�K�\�v\�Yy4\�䨷�\�8�\r\�w0g��Pn\�n�\�Tݮ��\�ꛕ\�7#݁��Z\�\�\Z\0��,�M\��\0�\�}�=�gXm\�M��>o�\�\�L��L	���\�K]d���0��k^1\�\�\\\�\�gMV~\�x/?f\��\0��.�֪v�\�\�n0����^��in��k�i\���K\�ڞ\�o�\"B@�^��ev����!�T4��˗��1�\Z��\�w\�\�>(\���\�k�\�D�J��\�Y���ЖZ�)\�$�oa�ra�E\�Ϗ�E7֚�\�a�qe,Md\\;\0\0�\�ΘWuhe<c5�w��W��\�D>�n��M}��O�Km�\�\�\�v�d\�\�oo3�M���hk@\r\0�R\"\"\"\"\"\"\"\"\"\"\"\�ܭ�w���\��9Э랒�e<�S\��\�Ɨ�<��_)��\�\�\�{9�]�y�ʁ�\0D����\�C6z\�\�O\'\�����\�8kun��\������R�7�;^>��Ŧ	�\Z\'4�wB\�8`\�G��\�]z@jA>�\�l��i\�\�\�!�����ri?	��\�\�ܥ\�õ�Rڪ�6;���\�;ѻ%��`�\�\�\��m_\rK�\����1�+暦\n�\��ecÆF\n�晴\Z\�\�\�\�N\�O���\��\�\�S\�2�L��g�X�K\�\�Kx��\�\�`�\Zq\�e]7^���f���&\�q\���/�\r�\�-��&(.�Z�晡v�59\r?	\����ڠ�\��t\�׫�\�J\�\�ټ�$?�8\�;\0\���!�\�KSyΒ�Oи>\�p\�=ƞן��\���i�^���Z��4q6([�\�\Z;\�2OiV\�OW�\�^=cXrw�]W(f�ҒF�L�������n��1OIU �y�\�q\�\�}J�c��&\�\�ױ\�-<\�uu%��526&�\�\�\�Z*�jx\�f9�$\�s\�\�\�v��n\�ވ�B<8�\�Gިb�\�KQ3b�\"G�\�2O�^>\�6�C�t\�\�\�<�Rӹ\���0��-l\�ɥ�i���}EEEd\�M#�I{�\�}eu厒z:Kk�ؤ}3$�N��\�Z\�S�W�5�eLD�\��\0\�*E�\'؝�WWTk]R#���\�u4��7͒`ޓ��#��S��\rhk@k@�\0pT������������ԾۯϹ\�WG7�q�\�\�`/=\�:���dxa瓅q\�3-\�\��I\�\��\�\��:\�u\�Z�\�:�0��\�\n�\�\�t\�3\�߅$nh���\�h�5M�\�P\��w�Q��\�Ffj�\�c���;ۉ���\�\�R{\\\�\�\�T5�گV\�ڋ]\�Ȫ!q�hf�i\�\�\��\��\'u^��\�RW=\�s�\�\�\�H#\�\��$4[C�\�1�\�m�7�j\'���\�\�9\�Vɦ�5^PӇ3tEX\�@\�I��^\�mK��@�UO�,m�p\�[X%yT;Jَ�mC\�;D�?|1��;�y\0NV(\�?I=�6�G\�\�.\n����1@]�G\���Ty\�\���l�����\�Ί\�\�d\�{�O\�\�\�hEΛ�(`\�\r`�F�\�%f^�;�\�\"in/���M\�Ce�}7Ve��Œw��0>�<4\�\��kGålM�[an\Zؾ�k�}\"OJ\�ˢ8\�*\�G\�3�h\�tts6z�\rC\�rh?\�\\�\�8w+~᤭\�S�V9��\�Kڢ��ԑS��66��{p��\�Dh��w��2H\��]\n=%m��H\��ps�r^�\�Fc-�c\�o\�\�|�\�]O!\�GSi�P\�Q��W;�#%��c\\�G�5B�T\����R$s��\��.����B\�b��o<`\�)\��������;㒞]\0\�[_�ˬ틫>���1�T�DD^&�\�:{N\�\�\�o��K|���6M i��\�?�\�\�\"\"\"\"\"\"\"\"/\'Qj+��um��Cl�h\�}L\�c\�x�/��Y\�\�\�\�AWp�N\�F(i�\��\�\�A��Q�zn\\^\�7OhzXG�%u[��c\�W/F���i{X:sQ\�\�)(塖XK�L�- e\�$��\�\"��\�b�/jt\'ߚ3Iucqʘ\�\�\�\�Ƿ��Jmw�VѴ�\�S\�:�\0gfKkh\\\��\��M�Ǌ²\���tr1\�{N\�U�����a�n-�\�\�\nۋ\�ädx��.y�@��/�\�\n\�f�\�Ѫb�\�7e�|���\�\�OW\�R������:ZH#��Q�5��\0r���ֵ�>\�\�T۝��lm�\�[�\����\0�\�j(Y:kk�w�]�Ŋ�1ϩ2B�\�\�p��Iҽ4�]k\��\�wkK�x\��Q}\� Y�Cm�f�\�1�]n�w�N�_��~�A\�B����\0�V\�\�6�nN\rEQ#���N����\�Q�Wy�lѺh\�ό8o4;�\n�(��-�m?Ol�I\�z�\�$�x-��c�S&8\0;y\�Z\�ڞе\�u|���\0V\�L\�xX\�#�fx1���\�⥿B��\�jw\�\�\�WL�\�\�\�}\�9.�c\ZI�\��\�Hwh㌰DDDDDDDE����\�	�J#&��\�*�s9TI\�`\�<N��S遬\�Κ�E\�ŧ(Z\�\��N�\�\�o�dw�����+�[{�\�\\j^K�%L\�y\�\�ϒ�\�\\\�/\�uz_ٵ].�\�R\�\\\�\�g\'�\�\�G�mkH\�\�z�M\�j+=Kj(+�lм\�\�{�<\�\�DEa뭑l\�[;P\�;|�c\�#�����+\��=��\�_/v�x�=�L���֭���\�;�@�7<�q�\�~\�ЏN\��n�\�\�P\�\�OLȳ�Jѽ�C�dd\�\�w���\�c+I\�\�\�ߩfU��\�F\�;m=;4{\�\"\"�>\�&\�a�U\�\�\�\�7\\i%W3\�\�1�\�\�\�.#\�w(����,{K\\#B��s\�Z\�r<B\�[3\�\�\�t#\�ݨ&��a\�E^L\�\�3ž\��\�K]���U\�t\�\��h�Go\�\�|͞�p�R.�x*�\�QM4sC \�d��9�\��k�E�tj\����X���\�n�[\��Fx��h�����k�C�m[O��\�WW#l�8���<�c\�h�\�9����m;N\�KIE{�\�;0\�\�\'�u�\�c�Ox\�wh���\�\�V\�4�\�t���ԢJ��\�:6;�2v\0;y\�Z\�ڮ�\�[GՓ\�CRd�\�ZOx1��}�\�Y��e��.�4U�m����ǻ-\�\��\0�liJ\�r��[g�]+ ���a|\�\��\�1�����\��\\UU����\�ja�Ix�����\0I�\��\�<|�w:\�۝t\�\�\Z�\�\�qt�L�����x�\�DDY�\�*�]p���\�\�ij�C�cx��県�����V\�4\��ѩ,\���ƞ\�AP\�����\�#�\�/QR\�c�\�\�n<I\�UH���;t�\�j\����NiZ�k�\\�p��\�Ѓ\�<�/\�o��\�\�\�]Yp�Op������C,\�H\�\�\'$�ߕ\�m���!��c\�(\�>=\��{\�\�<�\�-sN#B\"\��ۮ�م\\p[�\r\�\�\\:\�mS��#�6WȶC�\����G[5��\�K���%XX�x\�<ǁ\�}5\�\�V�b7k6��\r��4e;8\�$\�ps]�ƂO߅��DW^̵ޢ\�樇Pi�\�S\�Fq$n\�\�\�c\�\�Գ�ᥴo���9?�?\r-��\0ȴ�\�\��\�\�C_\�=�j����\�w�M\�\�c\�>\�\�h��~\�N�}��\�z��딢����\0<�\�q\��T�DDDDDDV\�\�u��\�\Zb�P\�Z\�\�\�\�0\�\�򿱌o�\�\�\�nZ�j�WE,�[��/\�-�7����N��b\�h����\�\�cZl\�\�\�Zj\�\�M#���o>	�m\�>#L����\�Z��\�j�/sv3�z�\�\�OG�\���n���\�GWAY]<�y�\� {\\;�;���8���n\�\�\'�\�U\"\"\"\�\�G\�\�6N�3j�2(�\�%�w�\�yz\���;m\�g�uTsZ4T2i\�[�\�Tof�V�\�\��|8��\�,�M+��\�|�%\�s�K�\�I\\K\�$�zMsn��մa�<����\�y\�k��Ǵ�\�8 �U\���T\�\�\�\�I�\r�\�q\�-�\�3yv�e\�\r>��6ܶ��vS��u�<M[(,��c�����4v�\�Z֦\�5Ơ\���\�Z��\�S)\�q�\�\�\�0v4+]]2їm��\�^\�t����\�͆1\��;������\�H\�+f��G�Go�l1�����9>\�\�\"\"\"\"\"�����zJV\�]CT\�j\ZVd�JGz,h\�q<\0Z\�۾\�o�W\�N�\�\�i\�\�e�\rvY;\�{\�i��\"\"\"\"+\�B\�\rU�d+��ڣ\�b�r3�{>	$L���a\�2Ն]\�-7��l��>�4�\0�\�=6\�2���\�\�\�\�>���o\�@*�酲I\�:�~�v9:��/Tt�\�\�\0��Z?�O]jΖ\��e\�\�Q\�8����HV\�禎ϩ����~�=�\�d9�\�ǚ��ơ�>=;�m�`�6Z��+�}Ca\�m\�k\Z�I\�VURS?�=�v\�\�}kK#\�\�J�=\�9s�rI�+�\�H9\n��\�\\#���mc\�(\�>=\��{\��\�cs\\H\�r�]�9c\�6��\n.<%�[&o.\�,����\�T�۞մ�\�t���G�j\�Ae\r�\�?�4v�ŭ]�k�A�-YS��Y��c�\��p3���\�Z�����\�Ҷ���\�X\�43W\\*��17$��\�9�ض9ѓb�\�i\�5K��ԕ\�]T\�>���3\�}�2�\"\"\"\"\"\�\�US\�Q\�WW3 ���Id{�\�4�O`kc�N\�j����OA+\�\�6׹�\�i\�fp\�=��adDDDDE\�R�\�\�\�u`�^�9O\�\��׫���^���h\�\Z;\0�����������g=�SK�wG\�3h5�Эîn$�P\�\�$z2\�\�\�\�>^\�H\r�\�[O\�J:\�t{f��\�б\�}C�\0�GiZ\�\�f�\�BՕ:�QU��f8�1�8#\�ccG�V�\"\"\�\�-WKsau\�\�WFچ	!3�\�	y9�G�]\\���\�N\�zh$�W�1���\�=�k7웣ѵ��U\\���\�N�5\�\"W7�b�Y�\�M͌\�{Gl�\�`�\��\�	ZM\�p�xg\�oꏭddDDDDDEz{\�m�\�{vcb�ݩ�`�\�#ő-��\�φiP�z�1��]X\"/A���\�\�?\�\�\�\�IS&��\�֎��\0�興������I�*ftD\�\�$\�\�h��\�l���D���YRn{V\�\�(\�o�\�\\\'��Pб\�}C��4v��\r�\�[\�\�5$��EW�qy\"���r\"h�@\�=��\�\�{\\ǖ=��i�`��DE,z\"tr}���\�^Q����%�\�+pj�\�$��>\�\�z�\�k��\�u�������\rަx\Z�c�aX}�\�v\��>�AZ�\�s�p��FFV���\�i$\�\"Дnw�Z��#�B�t֊\�:d��͢\�H�u5#\�\� d�����Yo\�\Z\�nO};�\r\'ΐX<K�ժ=a�j�Op\�Wi���\n�O+�y<��ԼtDDDD^�,l~WVU\�3���\�\��z��*e\�y\�h\�\Z;\0��������\���T\�\�\�\�I�\r�\�q\�-�\�3yv�e\�\r>��>ܶ���S�\�t�=�WJhh\�>��\0����-j\�/\\j�j��G�\��3G\�\�ccG�*\�!zMs.1�\� U�a�<��O�q�Ǟ���,{K\\ӂ�P�X�D\�\�����\�^Q����%�\�+pj�\�$��>\�\�z�\�\�=%<��Fh!|�\"w�K�G\���1˒\�\"\"\"\"\"\"\"\"\"�\�讻p�ͳ\�)\��\0\�.��1�\�\�\�`������K��i\�r2����\0c�UQ%L�d�w5��h\��\�	8$��\���<�_\���	m�ɛ˴K(?(o��\r�=�iݔ\�7\�.�	\���8\�?�4v��ֵ��\�s�6��\�5��3T\�qc�!gc;\Z��\�89\�k�p`�BTц<�\�>=\��{\�\�\�\�=��i�qJ\�}�~��]\�\�72\�\�$�[�n\rY\�A��p��\\\�\�����]���_&k\��t��\�IP�pc\�y\0��W�}Yuە�iJ��B�u4Q����\'�����\�x��Z�鮖\�[��Zj�Y</�\�\0A�\n\�\"\"\"\"\"\"\"�G�8\�#\�k\Z	q=�-R\�\�VI�v����\�E5c\�\�v&\�V�~�6!WVU\�3���\�\��uT\�d~;�\��4v\0]\�	8$��\���<�_\���	m�ɛ\�\�\�\�*Cm\�j\�we:I�K��z\�r\�\n;��h\�wg�kWiz\�PmU\�j-EVf��\�8\�B\�\�0v4+Y\��\�)q\�?�\�#hu\�\�h-\��\n9\r`IG\�\��\�\nT\�kh�oe\�>K\��f��]%$xT?��y\0����\�-�\�\�\��\�2[KH\�z�h���i\�J�\�\��\r\��jm�\�P\�M\�U\�\'u�rz��}�ŞQX] �\�\�\�7�I\�\��FB\�<n7\�r\�\"\"\"\"\"\�\��cU`�^�|��\�\�?\�૨��S#�\�֎��\0�興������I�%LΈ}q\��\0h\\xKl�L\�]�YA�C}�Hm�\�[N\�I>\�u�M[(,��c�%C�\0�Gk�=kZ�L\�:�hZ��Qj*�=L\�\�\�\�gc;\0V�\"\"�]�9��\0%6�הe���%�\�+pj�\�#\��}\�\��s�Z\�&�\�~���}��c[\�\�Qǁ%C�\�6\�\����\���}M%\��8�v�\�\Zf8�0Ŝ��<�\�v�~\�\�\�\�=��i�qP�o�˨�I�/\�bIW_B*cgf�N�?#��:\�G/t�m�\r�\�\�`\�\�\�@<\�\�\�>L�-z\"\"\"\"\�\�\�\�\�EUX=_�\�FC�x�\0c�UQ%L�I\�\0p\r�p\"\"\"\"\"\"\"�$\02J���9c\�6��\Z.<%�[&o.\�,����\�T�۞\�t\�\�t���G����vP��4v��ֵ��\�q�6��\�5��3T\�q`�.v1���ZȈ�X�C\�\����\��^Q����%�\�+pj\�d�\��K\�\�X\�kh�oe\�>K\��f��n\�%$xT?���@-j\�i:�j\Z�k��s�2\�JF\�SG�\rh�O2U�8q^�˄b9Tц<�\�>=\��{\�\�\�\�=��i�qe��wZ:Cii7\�c����x������x�������� ��5�e�F\���KSS1o~\�X3�\0z������KOp���z�A���\���\�^��J�L�\�\0\�\Z;�\�DDDDDDDS\'�\�G����h�\�=�\�֫t�\�G�4���\�\"�\�m=��$��\�\�j\�Ae�\�<����zֵv��5е]F�\�ufj�N#�2v1���ZȈ�X�C\�\�\��\�漣s--\"Ku�V\�\�\�?\�\�����\�\�\�4\�˴t�\�\�\�c\�\�JH�$�~81�\�<�Z\�\�\�u\�5l\�\��\�te���\'���<\Z\���d�\�Ê��\�\\#\�\�ڦ�1瀐~i�\�?\���GQ%�k:V���\�^�K�\�J܏�+mC�\�\"\"\"\"\"\"\"(g\��/���\0�P\�~��8\�U`��\�\�d?w�\�\�\�IS1�B;�Gp�\\�������-tR\�\�[E\���\�]�\�B\rmp\�1�a����\�\�؆Ե��g;>�jk�\n�a��:\�F\�Y��-_\�/\\\�\r�jʭG��\��3G>d\�;\0���6y��]+��\\�ns4\�1���\�k\�\�c�>\�z�V[�\�𡪅Ѽ{2�\�E,z!�su��\��^Q9���%�\�+pj�1#\��}\�\��s�[\�&�\�v���|��c\�%$xTI�`�O ��ô�C�\r]5��\09�i)OUMx5�\�<\�V:\"\"��;\�\�\�6\��ʦW��!\� 7\�>=\��l��m�R\"\"\"\"\"\"\"�~\�e+\�n\�U�;�\�W\�˄D~\�P�w�i\�UVW�\0>FC�x�\n��*e2HGp�h\��\��5\�Qy�����\�)\�Z\�\�ÜG\�\��H\�\�t��c�\�j���@98\�\Z\�\�ʍ�tM.\�v\�c\�7|�W�j�����i{�f@\�\�=�\�Ej�An�\�CIGN�0\��\�1�`\0\�}+6sgכ*�M=$b\�l�}]Pg\�\Z\�\r\�\��\�p\�\�Z\�E,z!�ru���\�^Q�\�ZD�\�t���=�H?\�\�����\�\�\�4\�˴��\�\�\�c\Z:�JH�$�~81�\�<�Z\�\�\�u\�5l\�\��\�7%���\'���<\Z\���d�˲\�S]�\�/F�\�\�\�c\�y\�V��推\�~\��\\��������6{�vgW\�V�\�rm�H�{�ɏk����_H��Դ�\�����#\�d?w�ન��S$���4w����������_��y��պ}\��k��\�{�>p^Ǻ=�\�\�zsTC���Ji���A?\�`\�6����Y�a�\��K)mLm�N�\�\�x\���=�����\�yӷZk�\��\��\�ÛO�X�\�\�l\Z;g�M7Eq��\�wHM4R:��t�\���\�\�N��\�\�\���\�\�yF\�\�ZD��t���#������\�\�,v��M7�\�%��3Xƍ\�JH�$�~81�\�<�Z\�\�\�u\�5l\�\��\�te���\'���<\Z\���d�en��W_:@\�Zp\�\�\�\�\\��Dm.\���hK�����\�r\"\"\"\"\"\"\"�6ץ��\�^�\�a�\�WD�Fq+F�\�j��)\�	�c�7=��\\+�z��8\�Uc��\�\�d?w�ન��S$�� \0\�\�\"\"\"\"\"\"\"\",�\�\�hf\�W�j	��\�.4\�\�����;\�\�[,\�V;д5U�����]\�F쑐r\��\�=\�kOm\�!\�[-\�\�ݩ$�\���#�\�\�b��\�軼aQ\�+\�\�U�4\�\�U+����:Z�r\��dq\�I.s��]�5\�]*���\��\�P\�\�nP\�a��`\�i\�\�Ü�\�\�\�4\�˴|�\�\�\�c\�\�JH�$�~81�\�<�Z\�\�\�u\��t\�\��\�[IH\�z�h���i\�J�\�K�s�H��Q_�����CL�\���\�\�\�~U7\�q�O�?w�.DDDDDDDZ\�鱳)tFӦ�PӖ\�/\�uD.k|ئ�\0��8x�z��8\�Uc��\�\��\�+���J�L�<�Gp\\����������\�E^�\�(\�\�\Z\�\�U�˱MR\�:J�X���\�;;�⡬\��\�M�Գ\�o֊�q\�\�\�<\�?�X\��ѓb�j�T�H��G�IU,,��ۣ\����%�\�Tڻ�����,��zy\Z|!${d\�&�م�I�7\�.[���Ӽ:yfG�<N�6ô�E��]5��\09\�\�R0���<�cG\�y��tDDD]\�Me\�\�Kl������[0e\�{�\0Ҷ��]Ͷck\�,\�uK\�V\�\�Nw�y�\0x\".?\��\�\��\0EȈ�������h;&\��]v��C��n�34y��#|G\�2����{\�̵=E�T\�\�\�|�F|\n\�v9����rVMUD�$<y\08�\�\�\\\Z?X\�!W\�zj�_j��4��z\�\"��JݴRӈ]~��\�\�\�\".�@^F�\�!�CN\�z�[5.-����\�h\�X�������U�\�O!\�\�\�\�q�%u\�rD\�\�#c��{\�pִd�\�\�\�g�tȇh\Zʘ6�+3m���i\Z\��Gw<�C�zԭDD\\_���\����q\�\�x��^*\�\�.�\��@ӲX�=�:�\�G\')a\�\�\�T\�OE]k�\�㥙&����u-�\05{��\�o\�|����w\�\�\�$2�\�̑��i�p\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"�6k��u�:\�\�\�\rMD%�>�F�t���燰d��\��\0�.�\�ܐ_/\���\��#��^�\��\�y�\�<{�R	q~K�\0O��\�DDDDEC\�s�\�.?W��Ɔ��y�ڪEe\�͖\�-p\���\�l\��\0\��&;\��XXt,\�5�|�cRܭ.\'͊���6���\�+\�=\r6�B\�:\�s�ݣ�Z\�d>\�ܬK�F\�\�w�\�U;G�M<R\�\�\���ݒ\�:��)\�\Z�1�dۤ#\�ũ\����Q��g���?R\�Mf�\�!�[Uto\�\�w�.?z\��\�ϡwܨ�*߉\�}��ȫ~\'Q�G\�O\"���G\��<��\�uD~\��*߉\�}��ȫ~\'Q�G\�O\"���G\��<��\�uD~\��*߉\�}��ȫ~\'Q�G\�O\"���G\��<��\�uD~\��*߉\�}��ȫ~\'Q�G\�O\"���G\��<��\�uD~\��*߉\�}��M�\\�(*�\�\��/��\��\0\�՟B\�v\�\�Z�bΪ\�s~�7wi^s�X\�J=�\��Ê]�&9\��-�=ܗ�l\�F׮v{fyu�u?��yX�%m�\�\�\�V\�e�f���G��F�\�IZ�G&�֐\�\�N}1s��y\���4hN�{&Ү�w\�z�f[r����\Z>E�(�i�iKGM\r4�2(�Ǝ\�\0�������_���\�r�\"\"\"�\� �\�\�W\�44w�̞\�R\"\"\"&r��\���`��.���?��&�\�\�}ĩ���r{\�C�*o�oܞ�\��J�\��\'��?��&�\�\�}ĩ���r{\�C�*o�oܞ�\��J�\��\'��?��&�\�\�}ĩ���r{\�C�*o�oܞ�\��J�\��\'��?��&�\�\�}ĩ���r{\�C�*o�oܞ�\��J�\��\'��?��&�˖ �1\�0ց�Ɂ\�\�\����������%���>\�̈������\�.?W�_X\�\�\�O2{UH��������������������������_���\�\�\\Ȉ�{�;�\�\��x���\r\��\'�T��������������������������%���>\�̋�\� �\�<J��\r\��\'�T���������������������������\'�\0���\�\��9�-hnp9��R\"\"\"\"\"\"\"\".�}T4TS\�T<\��Y_�wZђp8��|�\�\�\�-�\���u��16h_�F�i�\�2\�\�U\�\�63US8�V\��\�\�q\�Z3\�\���_!�����ja�jgO^�%��8-%�=�\�]zښj*Yj\�\'��X_$Ҽ1�h.q<\0\�s4�49�FA��t,Wj妚\�k�\�誙���n�{�\���\�DE\�$��7I#�\�K�\�\0\�*۴k\�#umc诐9�t\�wH\�\�#���\0\�~�r<U\Z�\0I\�\�\�V\�]$TLc\�o�\�$k^p\�\�7\�\�y8[G\��\�\�W\r\�y\"�\'�����I���[����˵&\�>��\�Es}�K[\�ͧ�\�\�\�n�塻\�`#\�\0x�\�\�]\�;=T4�\�<O�&N\�ֹ\�lo8k\�\�\�4�9\��=s�헆\�+�CX����4��G\�q�ᛧ9��m�\���R\�\"���|M�1\�{>\Z�7\�\�堒0{�V�k�Yh.\�O\\��xl��y�-\�\�\'\n\�DDDDDDD\\]K?4��\�\\���������\�4W\�\��5OWUq��F)\�\��h_KG0׺7\�4�c۬���\�[p��\�UY��)�m�\�ɿ_2:G��\�\�A+[���c�u\��o\\\�`�P\�s5�;y��J\��*\�\�tUD0�[��\�\�7\�\�^���VC�%�^�׳mh�Ԣ>�\�\�IYղ��\�{[�z�`\�Jj*K����=-��[\���\0�ԕ�f\Z\"\Z#\\a�\"\�\�$q88\��\�\�\�`\�\�\�\�z\�)G-S\�=Ϫ��\"\�\��ʆo��\�\0\�]�UCY�n�ĖMD�dW\�ML,4\�0\��v46wG\�\�8�xs�+�QX\�t�;Du�\�|��\�\�u4r5�l\�؀T5�8\�8H72�\r�K&��W\�e�|w�d��\03䅔�TQ\����2�\'H=-\�\\\�\00Fzw�=s��[ک�W�\�[o�9�MM;\� ���\�\�\rC?Y\�4�q!r\�\�&�C�U\�	\�,�O6:z��k�|�\���o\�Tw��\��\�C5��jK~���\�𺆮���VS\nfH?\�u�\�>q$\�ljA��\�SZ/59�\�\�x����+��S�?FB\\\���{�ܢ���\�P�o\�\�\�o���:ƶV\��;��\0&�Ǫ,\�V\Z\�\��\�$�\�k�K`��OZ�E,n�Q\�pd\�T\�$�\�\"�0?\�s\�:\�\�#q^\�\���\�KQSn�������Q�w����.�\��c.s��\�#�\��\�*\�\��\�o�e%S�\�\����\�#>nFxds\\�\�ͣ�\�uK��a!\��\�Ï.<Զ\�ƪ�S\�ZmW\�S�%�dW:Lh\�\�\�K�\��CNNŭ��\�]T�J\�\�ay\�V\�=ym5�\�\rU�X%���>Q\��\0-e\�r\�Z/6��\�\�\�\�}\��4Q\�*㌙#��A\�3�-\�~	�;�\�M�6+~�:^\�m�\�D\�a���\�A\�!\�ih�~\Z\�0�rws\�\�AV���_\�l��\�m���)hꨡ�>�L\�]�)\�&!\�\�\�q��	*���\�\�\�5%o{t���\��\�\�M[&c\�\'��lk�A�\�eZ�7��4����\�\�U�PO]\�\�Y�Q\';Ϊ\�1\�	�\r!\�w%\�l��mA�\�[���o��\�Ͷ\�lS\�\�\���\��|��2Hn\\@9Yq�\�','AC',7),(17,'rosanchez@trazalog.com','Roberto ','Sanchez',0,'21232f297a57a5a743894a0e4a801fc3',1,'�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0	\r\r4,$\Z*!=-15,.11 3D5,C49:-\n\n\n\r\Z- %777-/+7-7+,1/-3357-+/.-1+---/+-/7-+-777+-7---+++--��\0\0d\0d\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0=\0\0\0\0\0\0\0\0!1AQaq�\"23BRSbr��\��#%C����\�\��\�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0(\0\0\0\0\0\0\0\0\0!1\"AQa#R����\�\0\0\0?\0�Q\0DD/j�K\�\�\�K�ECt0\�Y\�G�\�<��U�w�5D�\�,����J\�\�\�Q��e\�ϭ��\�t�t\�0�\0u2\�?ij\\\�k\�9	��6zw\��o.:wL�\�\�h\"�c�\0�A\Z\�},��D@\0DD\n��n\�O���\�9�\�\�\�\�6�N#RyuV�L\�6:Gh\�4�Ǡh�^D\��\�O5[�|ҽ\�bl<�����\�9f\Z\"-	\�\" -_v\��\�\�*�٩\�9i���\��Gpb�e\�P\�5\��9�>|�6_\��:��\�$\�\n�\����d����o\�n�\�\�\�/�\��hE�!}��\�\" ��\���us�G=���y</Z\�m>���!�}$\�厲��3\�\�;�\�(�Q�D\���ho\�\�>\�%_Qj�l����\�8�|:�hw\�\�\�w�e���7�\��]��^�6\�ް���:\�\\�\�#��\�.}\� \\�^�m˺\�Ǩ\�\�\�9�:oM�(ʬ\"�/��h��o[,x |�\�ƹ\��,is���\�f�6�\��\�N�&\�{G\\\��*\�\�xak[3����3\�\�[��\�,μ�!\'\�QQl>#-�eΛ\�2>\�\�\���?�\��i��\��t;qF�\���y#\Z\�$/\rs�\�\0�\�\\[\�Ym��\0H\�+j6\�J\�v�!\��$\���\�\�\�\�B\�\���\�=��W>\�c\r����G$9\�)\�X�\�\�C�o\�\\V\�Ȯ�To\'(��`\"\"S�3��Y�f6\'���\�ƶ�\0\Z>+l\��)�tms\�\�4�I��\�-\�ċ\�\�s^�FJ\�,�ut\r8��N\�\�_6�\�Las\�\�\0�\�>�\�s�sM</\�rU&���&��d\�\�n\�\�\�a�\�-\�\�/Q0d�����\0���4�\���.->\\���{^�_\�\�\�j��\�\n�},�\�\�n�X��\�4@p8���R\�U.���8\�\�m\�@-�%NWkO|n�\�멕O\�� ��.�k\'ݱ\�Z�E\�9�\�\�Q{\\\������㹕���\n\��\�}�f�h\�?�+�\��\rWl\�8�\�A\��\�b\����༅���\�\�z\Z\�����_�\�\��\��\�(\�\�$O�oX\�C���,M��h��x�ej\�o��:�W+9D�}��o`\��e.^���\�\�\�\�׿����e��\" 5��ٵ��Gu\�{(\�)�\�9���\Zd���n�To\�Ul�>�f�T\�X\\��%X\�C(=@[*x*Ə���&�Ua\�,�}*�\�ɼB~Ȅ��c�)�H__�\����)��\�O�\�c\�\'\�6�:2d~�\"��\�\�r��T\�\Z��\�;,s�\�r��S@��\" ��\"\"\0��\" ��\"\"�\�','AC',6),(18,'m.muriel@mrsservice.com.ar','mmm','Muriel',1,'21232f297a57a5a743894a0e4a801fc3',1,'','AC',6),(19,'r.sanchez@mrsservice.com.ar','sanchez','sanchez',0,'21232f297a57a5a743894a0e4a801fc3',1,'','AC',7),(20,'test1','test1','test1',1,'098f6bcd4621d373cade4e832627b4f6',3,'�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0	\r\r\r\r\r( \Z%!1!%)+...383,7(-.+\n\n\n\r-+-+---+--+----+-------++-++++-+-++-++------------7��\0\0\�\0\�\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0F\0\0\n\0\0\0\0\0!1AQRaq��\"2����\�#BDSTrs��\�\�3Cb��$c�\�t��\�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0�\�\00\0\0\0\0\0\0\01AQR!\"a�B�2#b��q�\��\�\0\0\0?\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n�\�p\�/:.%3\n<Ek�\�zQ\�(\�\�=!��\r�.�\�\�-\�<�n\�j���Y��3{�\�e�nv\�\r\�\�||�\�$\�i��\�\�\�\�M\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0|^�{��\r\�\�Z��2�\�^T`�IG���ރߢ�My��\�m\rUv�ES<\�u-%��׈�����\�EG\�$ܹ?��ʏc\�\�\�9>�8�\�\�\�WY�c��\�y�\�.S\�k�xaV\�r\�O\�6�\�գ\�#T$�fQ�Ҕc��G#Uj��\�\�K���E\"+�#��f\�4Z�\�O\�/a�4\�{^�\�X�\�z\'N\�1Z\�\�\�\�ʎ\�%ӓ\�0�\�T(\�m�\�\\�\�9t�m�\0\0\0\0\0-�0�����ro$�b&|�&b#2\�\�t�9p\�(�\�6���\�:�1�\�Z\�\�\�\��\�/�I�F�\��,\'[b?&	\��E�\�I�W3(\�\�\�\�v���i��]U�ٖ\�sل\�+>�\0o��^M8�u���(\�W\�\�ӷ\�%�=�\��\��\�2\�\'��\�i얽�\�\�\�\�\�\��#(\�G:�NԞT~\��\�7Ņ�u\�o\�e\Z\n;��\�K�����\�i\�׆�\���Q�hm��3��r��\0\��\�\�o\�\���\�F�׿\�	\��\�\�^{�ҏ\�9uWZ\�2\�-v�߯�~��#�/\�\�Y}�ɨ�)4�QM��t�n��h�Sy\�\\�\�\�̵���j\�u�S�\�\�W!�\n�+�fE���\�\�Y\�J\�[IU)K�g�G�[>�t�tz�^\�rݠ\0\0\0\0�I%�؀Ʊ0\�y�)>\�>|\�VƊ0�b\'\\��o��\�&\�J1m.�{�sE9��sv�\\�\�E3\��|,O�����x�\�\�n��%��\�O���R��o6��s�\�\�\�\�W��k_�oV��r�\��\0L�\�v�3�\�~�\�\�VQ��ڼw�_\�r\�y7\�]W\���C,w�^_Zϖ\�\�&�kݗۯ{|�-\�t�3�\�؛��u�m\�o��-\�4��\����~���l۝au�\�?�\�2�m\�\�&�OF_l��#�\�/��]>;&�\0Oj����\0\�\�{{��\�Nɓ�\��d���[\�O��\�\�?y7�\0\�e�\�\�^\�ǏH՗D\�&�\0=���{�#�\�zMy���C���]\��d[\�\��\�Eg\�&�\0_He�\�}\�\�\�|x\�T\"��w\��B\�͵\�Y�\�\��<V)�-���$\�n{2��k\�\�ݶ\��x\"��12�WWTU��\�jm\�PO�/�ݧ\�\�r�O�V�ի~(\�_�\�s0�m\�(\�\�\�\�d(�\�nM�\�l�\�:\�:�)��P\0\0l\r|F\")�+\"��\�i\�4�d���\�b����p�\�\�|�\��Խ8{��z��?O�\�\�����+\�|�v\�\0�ur_ۈ��U̿�\�x�S�U��^\�5��^�S\�ߖ�+��GѬ�\��\��=�U�\0\�\�\�p\ry}\r}�\��5�\�z_�m��~op	o�_�Fv�\�\� .��q\�qjR\�ؚ\�\�o?QK�r�\�섀�M��S���}��\��\0\�{tQ\��s���)�w�ft���o-O\�\�\�b!\�~\�/W9�\�\�F(zI\�{�\0\0��Y\�}\�y��t�UA|��2��T0�8�\�\\I⎬R\�ָl��H�\Z�1����9c\�\\7T�}\��u�\��n?(�czW�q4v�����\�y�\�0�\�O�\��Ⱦ�����՞��c��\�}f�I2\��;e��c�\�\�!\�eݮ����\�9n���엸��\�\�;����[���7嗸��މ�\r?s�M��OS.\�w��\�\�b�\�p��\�]\�\�D�����\0\��g�\�`\�.t>\�c�,t\���u��\'Or96Ӭ�?�*\�{T\�\�CL\�4\�q��k��\�NQ���\�ډ�\�V��\�!\�!�,�cc.	\'\�\�&,��ƫ\�?\�\\��\�WU�ԗy\�\�\�3\�\�a��������\�G�EUK��gΘ|g�\�\�\����WE\�}.\"\����^Ñ��\�.\�1nnhz@\0rwU}�஝rq���Ɠ�O.��=\ZJi��1Sɯ��t�\�3�\�\�%���\�s\�o�\�x(폇\��[���*;\�|3�딙|1\�<UO9�c�\��{L�\�g����v�茗\"&W\�\0�FdT6V��dT0*ªȨaUaE&�]O#Xf�dx���\�Qŝ5\�L\�%\��iH\�c�s\\Z�\��<Wt�ƗSO����P\�%��<Xub���Ӎ�\�\��i0�o\���o�?D��Q.��dz+�\�q���y~�x�}%5�j\�>Y�i\�\�F(r�ӛ��|��\�-�3\�3\��\�y�\�{\�7�\�X8�T\�\\�g\Z\�\�}�\��0l\0\�\�-Z�,Lر�,���i\�\�\'\�\�\�\�\�\\{Kʓ\�\'\�}\�@�dC\n�\n��aUdVVEC\n�\"�\�Q�\�O&��ث�5¶Mr>S����T:\���J�\�|u�\�\�<n�]*q[a�\����]\��\��\0\Z_��\�8��\�\�4�*Y\��\�+�$���\�\�jg7jq\�\��r�k\�\�T\�%��\�Q\�Z��\�\�,�h�9uEi\��\nxCt�\0.�z��:�Ƕ-Q8�%�q�f5C�#ԏ��\�\�bf\" \n�C�aU`C\"�*�{Q%a�����z\�(�&��\�i\�-�U2Ѩ�h�TD�7~W2&\�4}Z����\�\�U\�\�֗���X���st�iE4�ۓ\�\�\\=Vj��˞\�m\�fVj?&\�\����w)\�6ڪi�&sq�O�\�?����y>���o\�v\�}�\�\�e�;�6�\0O�1\�f2\�[��^\�gζ\�y��GJ�\�0\�ܜ\�3\��	}��G�]�Q,�Fk�\�j\�R\�Iv#�\�\0\0\0<f\�j\�l9�\�2�Yz���sE3\��\�\�\�\\{ʆM(aP��\"�aUdT0��*Ȩ\n\�\�ܾ&Q\�]b\�y��\�cݧYԉ\�\�\�@\r{��\�Ke0\�\�\�:\�FL®\r֧C�h{K)\'\�\�\�aa���Z�\����Q̻�]\�5Y�\�=��_���\�b�F�wϛ\\�dq�e�F^oW\�:P\�K���<&��\�,һ^K�1o\�i\�\�(z4���\�\�1\�\0\0\0�\�\��1��\�ǹ.�$Ϣ\�Nl\��\0�\�4�u�M\�\n��T�T0��aUaU\"��`�s���\��JZ\�E��\�\�5�q�L\�9�\'*bp���\�7y�_p\�]Ҙ�\�wb~�?<bǯ��\�\�S\�b~�\�\\X\�}ߦ^]��߉{�i��\�\�1���G�\�*h`U�n\�\�uS>�\�h�j#\�\�\�\�3\n\��\�\�w3\���t�ڸ,S厧�\�{\�Df�K��%�p=�\�K\�w��_K��\��\��ͪ�K٢�T\�\�\�{�\0\0\0.ݕz�F\�\�S�e\�wt3�1\����N/\�8��\�@TC\n�P�aUdaPȪ�*���\n�V\� *�+q=l,\�2Z\�l�.�<��h�\�XV��?k��\�\�»��,\\�\�\�\��L�G���\�\�V{aϗ�\�+Nx\�e�yz��K�mz�\�\�\�CCe\�\'�\�\0\0\0�\�^X\�\�\�\���\0s���\�T{�{mS\�_2΃��EC\n�YV\n�*UXU[1UXT2\n��dUXT0��\r\��[}o�\Z�Fio\�\�\�ÿ#��9\�\�4�O?��<�Y.͋\�͖x\�N��ÇY뇊^���yS���|\"�v�N~�}N��1C\�\�\�3֐\0\0�\�W\�\�\'\�\�}�K\�t�l�\�.٧�tϻ\�\�|�ª��ªȨaUdUYRaU\n�EU�VE@V}fVå\�>\�\Z�\�3�eQՒ\\�k\�\�eQ��v�\�1.>\�l\�t�J�}nF\�1ūQ<\�\�D<��\�\�㫣\��K��\�ۗqͿ9�]�4b\�=�\r-\�\0\0\0>?|��\0\�\�>n%/J2G�g\��&=�ͭNt�\�/�;�U�@Ȫ�����*\"�Ȫ�*�*UYB��U�P�FY4�\ZdWG\�\�\�~Vs�F*�gKVm\�\�t\��\�5ͅq�-\�\�\�\�$����G7�\�x<<~\r>ݧ*\�\�v�F(�\�\�`\�߃�\0�{\�U���|\�)�e�w��\��/Чŧ�\�\�>IVUaP��\"��U�U���*VYUaP\�!�T*�\� �\Z���jc\�.���)�\�i	\�_k���]ŷ�an�\�,s�_N\�9\�-t\�j��ny�\�Ty+���\�\�S\�[��\�+�S(\0\0r7]N��\�Ǐ\��Ie\����\�<\�\�\�ѩ�\�f����E\�\�H�\�!�C\"���ªȪ��l��\"�\�!�U�U�P��\"�*�*0��g\�5\����Ϩ�\��\�\�\�x\��W=iJ\\\�J]�3\Zx7\�\�2\�Z\�U�[ �d�8�K1�\�\�Z&݉t$rݧ\�h�\��K\�t\0\01�\�\�ly\�YشeD⨖5\�i�x�\�G>�Z\�}+\�f132\"�¡�U`U�*���EU����d\n�R*EU�C\�MFys]h\�\�f��\�Uxk�|\�h\�l��{n�^}�\�~qCn�3r��n\�9γ\�4]��?\0	\0If�ı0Զ\�\�\���O�-g���Ks�)�g\�\�(�n\�Չ�4��VEC\n�\"�Ȫ��dUXdTU�C �\n��dUX0{}DW\�\�9NK�M~ovs\r���tFL�\�g\��h\�՗\�\�{v�\�\�>�BA���za�0\0\0\0\�i}\�\�qS�\��&Y9\�R�}yp�\�\�n[�S>O5\�%����\��؝\�)y�,v&�E%�3\�B\�8��vU�\�2ѷ{\\R^&��O�xwZ�6F\�\�O\�vE<��\�J\��ix畘�)\��a��\�6�\�Zgd\�\�a�f\�t\�s�\0G\\�\��\�\�M\�g\Z\�L\'e]iY���[\�ј��qZ\�\�e�Z�ɮvu\�\�й\���>�d��qz���\�Ev95\�*��\��	\�ڌ���\�t�#�\�\��-�nE\��\\r]_�8�:	\�\�eʂ``U�Pª¡�C\n��`FdW#��NL\�Ty�v\�4¸�+�)z\��xC���2�m\�h\�\�\�\�\��=\�Pј�:(\0\0\0\0\0\0\0\0\0\0`�L����ڄ_qs)�hb�5���&\r.�\�e\�%�ۦxÛ�\��Bχ\\~\�ʿc2��#��ny9\�oU�_��\�,o��\0,\�\�Ur9�Ζ\��s\�ފ�\�\�d>Ү\�\�Fq���\\\�m\�B\�\���zV/�Y�k֤\�\�[=\Z\�gPѿ{]5\"��y\�ڌ\�[\Z\�f\�)i]��?�\�gغ,\�5�5\�͞������\�˖\rK\�e\Z�:���[F\�b�\�\�1��\0�mz��_�y�Ί\�5g�a���\�i�\\�y�Ξ�\�\�\n_\�|P\�\�Wёbk.=�\�1�U\�\�Ҙ�k\�nnK$���Ē\�4ܘ��\�LL>�q�\�\�/m6U	Ij�\"\�).\\�\�s�\�O����4S\��]�+�)%\�hz0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��Xj�\ru��Ł\�\�noGY�Lj�\�q�WTp�3E3\�\�F�\�o7�\�_v\�R\�FQz�\�\�l\�<�-�����\�9A9?\���\�]Uq�t\�M<!\�\�\\�,�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?�\�','AN',6),(21,'test','test','test',0,'098f6bcd4621d373cade4e832627b4f6',1,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0\0\0\0�x\��\0\0A�IDATx\�\�\�y��\�u\��\��\�nth4�u0;�\r�s���H�L��8r�\�V\�X,�d�\"%J\�J\�r9v���*�R��TbW�$;�J�p��\"KE�4iJ\�\�Y�\�pV΂�t���]�\���\�۸�\�\r�roߋ��S\�Ճ\�FwϽ\�>\�9\�y\�\�]\0\0\�ƒ�\0\0@\0\0\0H\0\0\0\0	\0\0\0 \0\0\0$\0\0\0�\0\0\0�\0\0\0\0\0\0\0@\0\0\0H\0\0\0\0	\0\0\0 \0\0\0$\0\0\0�\0\0\0�\0\0\0\0\0\0\0@\0\0\0	\0\0\0 \0\0\0$\0\0\0�\0\0\0�\0\0\0\0\0\0\0@\0\0\0H\0\0\0\0	\0\0\0 \0\0\0$\0\0\0�\0\0\0�\0\0\0\0\0\0\0@\0\0\0H\0\0\0\0	\0\0\0$\0\0\0�\0\0\0�\0\0\0\0\0\0\0@\0\0\0H\0\0\0\0	\0\0\0 \0\0\0$\0\0\0�\0\0\0�\0\0\0\0\0\0\0@\0\0\0H\0\0\0\0	\0\0\0 \0\0\0$\0\0\0�\0\0\0\0\0\0\0�6�����<9\��?A\�&IeY�3!�G$\�B\�\�S��p\�\���˟�\�\��\rw���yI�G���MŃ��I\0\��7���>~m\��=?��c\�p�v\�٭-۷I\�x���W�\�\�\�\�z�\�\�[Ϝ>�ɷ~��~�\�\\!��ү�.H\�\0���o\n!����}\�\�O?���\�)U��Y�a\�\�nӶ��\�)d\��;��\�\������#�����K1\0$\0�\�\�؎�;~\�ď\�\��\�\�\�\�V)/;y��x��\�*@ϋ���l\�O~�i\�s�\�#�\�?�_x��_\�\Z�\�BɃ�`���߾c\�\��\�\�O��\��G��\��]nQn&�usk����)t^���\�z\�v\�\�9���\�_\�&&¿}\0H\0�\�\�f7o\��\��\�G�<q\��I�\\r�\�\\e뼊o�j_P*\�US\nx����\�\�fMnޡ�\�YMl٩M3Ԙܬ\�\�\�\�=z�/�Զ���\�K/���\�\�ėx\�\0�\0O&\�]�w�\�{�\�\'�,\�*.��\�\�[�lB!)��i�i�#۬T.�V9J�)d�ڼ���\�;���M�\�w\�\�\�\���+\���B΃\�z�\�\�\��\�\�\�/��\���\�\�i\�G_\�\�W��T4&��Fg\�O\0P�B\�P\�&%�Z���/���s�\��\�9~��?|\�\"O\��@0$\�o\�\�O���\��7u\�\�/�}\�Ue�S4�ac�Ƥ�j\�\�\�_Q��g�uǬ\�:v�PJ���\����\��\�4�\���C����\�W[\�ML�lb�\�\�ܣ\�\�~^�S\�ڽg�v\�\�zw�ٚi4\Z<@\0�\0���������_\�׾��yV���g����ܢN~_\��\�\��a\0$\0�\�\�&��\�۞]�5�V�}�5T�/i�<�={wNI��\0 \�\�\���\��機��.��\�NC0z��MY�m����e���\0 \�B+˞:x\��c�\�S�\�\n��3�1�\�deSӍB�;�ݚR\�\�)\0����\�g\'\'\'��\�>�Q�\�y���O\�?\�\'PJQ3[7iϞ�Z�yL\0�\0b}\�O:|\���\��;ߗ\Z<{+f\�̖I\�\�>u[2�\r\0�`ݫ�MY��w��G��zI�XP`��q�w*i�&\�\�T\����\0 X\�\�?�G:t\�Э5��w\Z4�aL��z�m\�\�\�\�Gܜ�\0H\0֙�\�����so(s��1��R�b�۷\���=���n\�1@�v�\�ݿ\�w\�u�\�O>\�\�c\�̵}vZ�wl���z�G\0	�Z�~\�\'mx~N�}�\�?\�<��NK��O\�\nY���\�\0	�Zܱk\�\�\�w�ͽ��BF\�?\�\\\�䱥���ڵw\��\�\0\�h�#�����\�L��r\�B�!gE��N\0��(�s\�ؿ���3g�7&�%\0$\0+�m\�֭��\��\�\�[_�B��1\�\\J\�ڵg�vmo\�R�z|zZ_\�.\0�����\��\��)\�ܥw\��Dq���Z\���[\'�\�\�y��p\�\Z�\���q2�=\0e��|��.�����\�����\�s\�u�]�\�\�\�\�\�v�\0�p��\�u\�λw\�N\�\�o\��\0\\Gb�ڶ\�u\�mv����?Y��\�eY�\�#�\�j�<��+\'>��\�\�\�\�ŭ?���\0\r\��gu\�\�t�֛�\�����\�\�\�\�s\�XÂH1��S\�)\�}\�:2e��ۿ�\�Ft~\�d:\�\��I}qb�������M5�	��߹�\�\�\'ߴW^�fg\�\�oM\\?�\�3ڳ\�.=�\�C�\�y\�ϴ�\�n4\Z�\��\�lk�\�\'��dA�\�v\�M�o:|xߡ�\�\�>��ܸ��p�piNgϞ]x��\�\�~��}-˲�e\�K\�U�\�~\�\��=6S^zC�*y^q��\�RR�\�)\�s�#�޳��\�o}��_��\��N\0˩�x\"V��\�;�<r\�w��\��:|pr\�mٲE\�[6K�LCE�RY�,�O<~��\�~�\�~���n�\��\���\0l\�\����=p_������\���3٘P\���\�D\'>�\�S\'\��Μ:�\�\��\�yt\��?+�±{\�x����\�r��\�a\�֭ڼy��\�)\�M2�{�JFX:	\�4=�M[�\��;�m۶\��������,\���\�h|{\�\03����Yu^1o\���\�\\��h\�\�\�\�t�\�#\�#{�����5\�?;�i\�%�����?��}�\�-�ޢ���M��\\iw��RȤ\�\�Vgq��\0��K2)�&\Z\r\��\�\�*�\�\���g3V�Y��\��,\�\��C\'6�\�|Gf�\�\�R�5\�<�6\�Y���	�E�\���\��f�\���\�I��z\�_ƿw\����\�#\���\�h붭\nY��1u~�<I�i�<-g%kտ\�\��\�b\�w��E�\�.M�6TP��>��.^��\�7��ͿYU\��B(\�20�\�\�<v��3�=\\|�<��w�\0e[s\��P�g�\���\���?��?�\�V����ɉ�\�p��G\�\��\�G�8�\�\�>�\�\�̶Ml\�T�wՁ?6�\�\�N\�?\'Y���b<�x�8W�{i�\"m\�)mP[�\�\�\'\�s\�y�\�e��\�6�*�\�\�>�\�\�ܫ�Xr\�\� k�u\�UMmݭ\�>��>t\"4�\��\�?�G�f\�&&&��\�\r�\��\�ێ\��k?�\�mG\�9�-3[\�\�\r�\�7�\��x�^�{�,Օ\0�^�J�X��$%�8-��Ү�i\��۵}ǎ�ͅ歒Ώ]`f�w\�\��ԭ�j̽��2�?\�S���Ko=�ɭ;�e\�z\��\�۶\�\��{��{�}�\�ܿ��j�\�\�E������ȱ;��\'>�ɽ;�\�R�eRw1\�����/IV\�r4��]\�M\n\���+L\�\�\�Mé�\�<�RzNR� %�+�?t|G5��b\�\�\��.�bY\�\�k\�\�Ħ-\�4{Pw\�}T��_�g��\�/~\���񯵛�_����\�x�\�c����\���~\�S?���ٝ\�;oͤ��ҷ�\�R�\�_\�\�g�H<*���fg&�e��b���K\0b\�\�\����[�ߐ�\���\�\�c�|��N��E\�;����\�\�\�\�mz\�\���\�s\��s\�~\��Ͼ�_y�o�,��C�\�A��E�\�\�\��W�SOO\�\�\�\�Y�\'��\�H�H^-��\�-�ʋ�Ԥ$\�ֳ�4	@J\��\�\�<|tJͰ�/tV��ཛ�\�u��/j\�\�ijv�\Z\nڳw�>�\�G6��\�N\�{��/~\�\�y�?\�\�\�\�RJ/I\�H\���T�\�e\�x�}|\�?ј����\�I��oIqA\�:�FTb~I�T��g�	@����\�\�\�Ͽ�T���ōQ	X8����#\���ڶ�N�,S�eڼy�x��\��7ʢ�>\��^3��������\����6MO��>�1\��?�\�O���dl\�?HUEK\�>�pepu\�\�\'n�y\�t������+�{T�+���/�u\�M\��QMNo[ !Mo�֡Ç���\��\�i}\��?�\�͛�џ��fw\�\�\��)-�\�\�\�\�i\�Ʃ�˥<h���҃w�}oZx�^�\�Y�ㆫ̽�\�O��7ݣ�7ߧ\�\��H��GS��\�7���.\�ɏ���\�\�-U��\�W�\�\�F���交\�\�N\� ����-.��\���qW��t\�G\�\��\�\�̞�5����\�<XO�\���\�5\Z�?uF�\�?\�|�v\�/\�\\~\�\�R��~�\��TV.�O�M seO\�73���,9+\�\�2��\�N���S�JYC�6\�W�b�\�V�Kq�\�ƽo���\�\�W�\�\�DC_�\�\�:r�A\��\���\'�\�?\'�c\�\�r�|l�ӽ��\��\�>%�\�+��;a�����j2h�̗��Wt�ŉ�֙�׽d\�:\�Kv���\��n��)�\��u5\ZAo�}Q3�o\�:���\��\��Q\�\�\��\��T�I>F���w�sW\�|S^U=7\\����IA_�_�=\�{_$%w5 ��G�>_\��>�\���K����\�/V�y0v[\0\�zd\�Lc&\�M���\0\�ؗY���\�ݯ\�\���s�n�+W����.�\�T�\'3�\�қ\'\��\�c�\�\�cG�K?�/�Rw�3\�c��L\�j�\�&�� \�\�\�T1��p��}�\�U}w�o拁\�\\�\�N�O\��{vy۠����Y3i�YhbzV�?򈦷��\�g�Ԕ\�$Oơ\0�*�\\\�}\�%\0!S\�\'�iK��$\0�`��R	@w���$ �\� %\�\�W���\�V.���\�A�\�6u\�#ǵw�\�\�7�\�&xb0:=-rU\Z�\n@P�*e�i\�杫��/�\0$\�N\0�\��\� \�]͛w��.W\0z�����E�U��</�i\�v�\�~M5N\�[o]^v�_�˫$\���\�?1�o\�}U[\0\�W\�s=M=d�\r���w�[[��\�\r�ޓ�\��w��c7\�\'\�Tz��B]E\�l��\�\�\�y\��\�cڷo�t\�[��)�c�2���z�\�\�Q�\0,�\�&\0&\�\�M�\�꽼\�\��r\�\�Z�_�\"p��\����{V�=+{\�I\0�]�t�\�/L)*zC�\�~�6O���?�1�`XTF�����\0������C[%W�ꌽ�R\��\�����޷���ߛ\0����~�+K�n2��\�|�N5�9���_�\�:+]��d����\�8U\0B�P�\�m���`�\'\0V�*�.�]��S�ٜ�xH\0\0��X\�\\q\n@��\�Nw�\�o�JA�}Po�\�Ўͮ#wݩm[��S�\�4�a\�\�:c�]Aa\�*\0��\�}\�\r3\�uPV�3*}\�\�Y=���\�a\0W.,\�\�g\�=X�\�MV���m)Y�\�LfV�ټ��\��Nu�`aB�ŷt\�M�n=4#�ߑ[��M4%c\�tz\0Ư �b�\�~���*��Jj��\�	��?�-�e\0+%�(UURJQUU��*\�*��JUe��b��\�JU�c��+Ln\���:<�vlO�w8���Uƥ\�\0�<\�\�ʽfF\���\�F^�ڕ�\�$�\�n�L7\�jߗ|�uF��\�b�Q��OW�\�X�\�몪T��RJ�oﾤ�d&�EK�\�~F\�\�eUKjL�d`<�ݺ�=V�� ���\��.\�͕Q\�S�0�Wш*����9�i�\��{\0\��{��\�\�^vV��\�@\�\�\�\�1M\�\�\�_ס�;n\�%ͽ)5X�cL�\�M�j�]�ۑ{����X��+��R\�KW1u\�¼\�.]\�\�H\0ޕ�\'\0��w\�\�M��s��\�3ͽ�>Vi\�\��\�\��c���\�\�\�4n=\0�&\0&U\�*�4\�r}當\�9�\�\�9�9������Z\\�\n\�\�����\�G�{_RJ���Հ\��\�_!\�&Ur5��;�\�ꖃ�\n~I恡\�@Y�Lj�]@\�d\�+\�H\�UUҥf�\�\�w\�\�T\�$k\�覃�\�N�k\�Oz+\0�{��=\0���\�\n���\������5��[_\�\�7I7\�%ͽ(e\r��s�WM��W�B��й�#FW^F\�ݻO?���\'��IA\�\��ޠ\�\��WŒ���RQu������;�5=d�\�Rc�c-&�L-�\���| �:�%K��\�\�z�\�%>�n\�\n@\���՚����t7\�w���y�ֹW��qA�߼Cj�f\�\�G�J2i\�\��\�\���~\�\�\�\�\�\�I_f�?�f�v��x��\0���\�\�V\��\�\r�KU�I@7Q(-S�\�\�\���M�\�6�\�W(�\�PT&�\�CXg`�!��u�\�\��qvy$g�P��\�z\�-}�_T�\�\�O\n�\�I)-�\�O������\�a@�\��\�\�rRwܲO�ДY�2��a\�+\0A1�\�<_\�ݫ�<\��\�Wn^\�˺���Ο$-f\�\'O�ԙ3g�S?�S<\��\r^\�o\0\\��m\�-���������T��Z\'�\�]�:z\�t\�.��u��Lr5�1�\0H���\�\�N\0��tշp]�����\��<׾}���\��l\��ްw\�\�\�\�\��\�\�v���(�\\\'�Z��\�\�۷k�l&;9\'\�6�\0\�:�\0t��\���\�vy\�\��\�[�\�\�\�\�M\0�=\01֍�eY�7h�w\�{޿7\�]\��\'\0�/eY��\��\�耽�cw�Zo\�9��\�\�rWs��F�\0�K\�\\)�\�5>o2\�׹��n\�?\���}\0n�\�\�?�w����7)\�&݅D��c�*\�Jy��F\�5\�}t��޴Kv���\�ڌp]��\\�\r0,��*H�G��\�e�<h�O;c�c\�$\r\�*���\�;͋\n\0pc����\0t��{��u���m�o�\\�s/\��P�\��ae\�Y���\�U�I�e@\�L\0lp\�V2����ƵO\�T_TE�Lu?@Q\�W��z��\0\�x��\�������n��,\�Ž��(\�j�\�D��Z�;��\�z�ѻ�\�\�\�\�gh�\�u#Iѻ��\��\Z`u���2�&�˕�\�\�d�sP媒�\�j�\�n+\��\�$�\�l�\�j�\�7\�\����ǁ�g����˲\\\��\�&y^(\�\�\�\����\�xC}\�o)�^�UsR\�\�׏X�ܽ\�2�U%\0y��=�,t��e��v\��-n-,�\�KE\�j�R����0���?����j6�<\��{4\�w�1{�����g��=\0�7���Yl�k�Uƨ��j���nξ�����65\n�K/\�{��uS�M��Ii\�	��m+\�~\�2\���k>�&�:\�\�1I\�ҕ�\�\�~�̧O��\0�K�]�J3]�tQ���ZX��v��K�.�\0\07\�\�%\����\�&\0�\����P^*ˤ\���?��~\�O\�\�w\�\�=+UX�\���\0D���T\0\Z\�j�i\�֠\�3\�\�]smi2\�\�ՙɤV\�J��\0\\\�A2��R^\�/��.\\8��/�\�l.VΟ?\�\0p���/�\0t\��ˍ\0\�n\�3�~\�Y\��ѧ>�a\��\���\'es��uX�T%��/9h\�	�\�~X/o\�\r:�Cz����\�Ձd\�|.ѯh.\\\�gܼf�WR��\nO:w\�.\\��V�����Z-�;wN\�v�gx��\�Ug������/�|@TMe\�v4��o5=���\�{\�SV6es?�b�\0\�ePvf\0lx\�\��-����{\�u�\�\nAZȥ��/y@\�Ϻy\�3P\�z۠mQ�O�\�\�\�:\�\�\�\�i~~^gΜ!\0n�����\�c�u\"p9�bRYEy���,<��\Z��я>�\�?��&\'\',ʚ�ț�0�׭\����ހn���l}�e\�Ŗ/&\0\���w��{�E\�=\n��K-3�9{N�sU�.\�-��\�ҩ3\�T\�\�c)���O\�׶�,y@O +\�\�-*Ts��\�j��\�ͻ�����Okz\�5\Z\rIA\�|C~\�Y)�\�[\�Y�(].oJa�	@o5 ڽkFۦ\']ۦ�\�MR#��W@C��j|\�jJ�%A�K3R����	]\0�~s������\�ȴc\�\�߿W�y\\T��,[�%\�7d羢zɒ�\�\�\0R]h�A4�/\�AI?mfsۮ\����o�:x\��\�ݫ}�ijj\�@~\�\�\�,�[(t^I!ˮ�\�I\�|Uv\�ے\'~�\�W�\��\0d�v�\�\�ݱs\�/\�}\�\�;x��l߁}\nY�\���\0\0\�(q^\�\�3�֏�\� �\�P\0PQ$���Fp\n`J�mv\�?�\���}\�\�Nhf\���P_F\0�{\�إ�l\�EY�\�Ϊ��E?x\��3�u`0s\0V�\�\�L�\�\���\�ӟzZ�{vKU\�	�A�w\�{~`��\�K� /.\��\��\�B\�wR`Տ�\\��&�6�\�\�\r3;��\�����?v\�צ�[\�[|�N�\���8#/.JqN^\�IV�ؘߌR�I�޻�\�\�\��\�\0w\�R��\�~\��\�~��m�\�V��\�(\�\�圼�����T\�]�A�\�;4x�\0\0H��x��a\'\0!%;q\�m7�O�\�\���v�,\���ͽ$�Y���A�\0`����\0\�2\�`\�?}�#�\��\�\�RUJ�-�I6�)�(M\�i\0�!b}@[aHM�f�%�\�߻\�\���\�]uI�uF\�·\��;��~\0\06N��\�$W3�\����_���\�?���|X��I�\�We\�%�.I\�&�\0\0F��.�����تJw\�ݷ�3?��\'5�������_�\�y�?\0\0#�\0t�\0�\�}Ț\0w�̲Ƨo?r\�C�\�,?�C��\�\�S�.�\0���\�%�\�r\�_s���t\�\����x��y\�sߑ�KR6ţ\0�(�\�I�\�`+\0������[oy`\�\�ݲ\�ߑ�3R6̓\0�� Y4I\�\nK7\0���Rڿ{\�\�O��.��#��W�����\0\0���JrW���PE�g\��O\�z\�n�\�\�ׁ��}\0\0�\n@P��\0�\�U��Zu\�\�\�\�\�\�}��\�ܶiSS��\��\0#1v�\0i�-�U\'\0f�g箝�\�Y\�⋌�\0`�*\0�\�\�s[�&��%\0\�\�n��\�M��\�Nճ�\0�\�d\0e4�\�\� {\0�\���d<<��RJ\�\r\0�\�U\0L&o�\�\�\�\�\�۶o\rR<#�\0\0\�-�\�$WK�j4�[g�ۻwV\�\�\��\0`\�\�\����9`fr\"ں9Hĩ\0\0\�O}�\���\0� y�y]c\0\0\0\�\0\�ŋ�\��h16�2���G\0�q\�t\�9\0�\��f�ǘ\��\0\0\0/\����\�ު*c\0\0���\0��K\�T%�f�X�\00��h2׼\�����\n\0\0\0cY��\�� �{;&\0\0\0\�\�\�\nap	��y�\n\0\0\0㫳0�c�A��=\0\0\0��TT.w��ڇ��2 �V��\0\0`\\�\�\�\0��\�\�|\�U�N�:\0\0\0\�\�\�8�� )&s):w\00F\��.s��4\� �f���\0\0\0�S\n��J2�\�*\r�\�\Z�\0$Ŕc\�D#�\0\0\0�Q�����^�T�{���\0`\�Ī\�\0�^X�@\�Ў�Y\0\0\0�U@R��p �2S+F\'�\00f@�g\0��W\0T_	\�,\0\0\0ƱPO\\\Z�@�\��\0�\0\0\0� \��\"�!l\��\"&*\0\0\0��X�\0\�\Z�1���L\�*\�\� \0\0\�R�\�\�׼hM� �fތ)1	\0�1SU��(~ �yQ%d\0\0ƪ\0�8\�\�[\0k<\�X�%\0\0\0ƫMn\�\n\nW]��i���n\0�	\0\0��\0xPJ&�\�׊\�k\���y��\�#\r\0�Xe\0RY�\�|NRh��\�\�\0��\��\0c@�\�U$�\0\0��U\0��d\��d�[�\0\0�8Iѻ��@�̼\�1@\0\0Ư\�s�U�U�A2S�\�\\\�!\0\0\0\�\'�*��/dרү�\�\�N�\�\0��U\0b}L?�և�)py�\�Y�\00F<���䪆�\0�\�\�UO\�\0`\�� \�z\n�tͣzk�:e2�=ԍ\0�\0\0q\n��t�y�k\�\0X{ (�Y�\0\0\0Ʀ�L�ZCK\0$E3\�/\0\0\�@L&w\�A\�\�XkP����Q\0\0`\� \�\�e\�\��\� \�dގ��\0\0\0Ur���p\�`\�M�f֪�I\nr\�\00Z!��L\�\�\�5n\\{@�\0\0\0\�LL&so� (&W��\00&\0\�\�r��!6�f֌�\n\0\0\0㢬Lf>�l�� H\�\���\��\0\0�\�V\0TO�\rs@\�tq\0\0���\�\�\�+9��A@^$sz\0\0\0�\n@��\�\\͠0�9\0R�\�[1:\�\0\0Ʀ`��\��\0�7�d\�\0\0\00\0Ie4\�\n{\0&\��U����\�\�?z\0\0-u@�0�-�ͽ�1\0\0�1�\0D3���!\�\�)y�J�\0\0\00@PU�\�\�\�\�\���T2o\'.\0`l*\0UL2���|�ZO\��\0\0\00@J��\�+��\�(�z��\�\0�����hry���|�\�\�\�l�>@\0\0F��R�.�\�i%g\�	@P(��\�+�\�\0\0\0a\n�*�\�\\A!�\�od\��je2O12\0�QW\0��\�VЊ���5E7/��\�h\0\0`D\\RLV_��1�\�\0�J�a@\0\0\0a@R�\\\�+��@ReI\�D\0\0\0�L\0:c�ͼ�\��2��\0\0\0F��	PMICn�,y�+\�\0�+\0��\0�7VV�X\�׫̼H\�\�\��\0\0\r��\0\�Uhc�\0ժ\0��+\0RU�̼)�\Zj�JK֊��\�\00bUe2��0���\�P$c\0\0#�\0$��ZZ\���{\0�T%�v4��A@\0\0��+(�$s\�\Z���\�\�EJ\�1@\0\0F\\�\�\�8��&�\"%o\�h\0`\�b\�\n\�P\�\�q\0`��*��4�-�\�\�s3*\0\0\0�4\�T\0Vs�:�\0C2󼊮�  \0\0F\�C� װIR2o�\�L\0`\�%�*�̴�Ҫ�z�\0d\�[1�\0�\�B\�2 �\�JC�zN\�\�E4\�)�\002\�\0y�ҿ3����2�\�\�i\0\0`D����\\*W\\5X\�׬\�\\)1\0�Q����[�\�J�\����\"%W�L�\0`$)��*\�ܓVxк��\�<�q\0\0�QU\0�Inj���\0��*�\�)\Z\�\0\0F���G�Y{��\0H\�m�J3�c�)�a@\0\0�@�LVOܘ-\0IU�\0*\0\0\0�H՝�A=\0AeJ�\�D\0\0\0��\���\�\n��mD3/�յv\0\0\0\�X.)%��\�ڨc�A�\�=O�\�\0�(� �$�kUM�\��#��\0\0���0�jc�z`\�x�\0Q��.3oj\�)�\�[\0T\0\0\0I\n�d.sm\\��*3u�\0\�\0\0\0E \�$w߸A@A*�Y;v\'\�\0�\�r)F�\�\�*RR+%\0\0FRP�\0ԃ���u~\�*%o\�d�\0\0\0�\n\0�� �r\�zo�̽L\�i\0\0`$���\\\�k�\0�\��d\�\0\0��2\0\��@{5m�w(%oVw\0\00����2��\�jB�+\0f^��\0\0�\�*\0\�\�\�ņU\0$ɥ�.=\�\0�F3s%sy=h\�\0\�\�E\0\0�\r^�\�Lrw�U�\0�\���T�䊕-�\0\0���\0�ʤ\�i�j53�\�.��\�\'�\0\0����$s�Z\��AU\0*3/��T��\0\0��ᒢY}�*�\0\��dގ�Y\0\0\0lh@�@3o�UV\0֝\0��\�:À\�\0\0\0\�\����\0Z\� �)y^E*\0\0\0lx�\�\�*.\ZL@*�ynf<\0\0ld\�{\0̽�\�[\0\n��/�\0\0�FJ\�d��6<��\�N�\0\0\06� �\�7n� �h֊\�\��c�\0\0lL�w��L)��o�\�\\��\0�\rM\0�S}@� �2%\�+39\0\0\06�+(�\�F3H�%o�\�\n4\0�q\0I1փ�4�S\0e2\�Sb\�\0�Fg\0�1@�6������\0�\\\0\0���*�̼4�I�f^$\0�\�@J&w�7~`�\�	\0s\0\0\0\�\��M2�\\�\�\�\�m�J\�\�1�\0\0�\���.\0k���N\�\'��:`�\0`�\�w�V�\�\�\� H2Si&�\0\�8.)%ɥb�7\��P��̸\0�\rY��{�\�\0K\0BP��)�\�\0\0�Ƥ\0��\�ܤU\Zd �\�/\"\0\0`#*\01�\�da��\�Lɨ\0\0\0�aR=�X\��AV\0�dV0\0�\r�\0�df�ְ01�\�\"��\�NI[W\0�!b�\�\�\�\Z�\0�\0��+\0&��\0\0�\r�\0\�*\�̛!�(P�\0\�s\0\�\0�\��N^=8����=�YD�\0\0ؐ\n@r�{K#<X&�2W\0�Q��\�=�J\0���\�\�)\0\0\06�Н�\�\�8�\n@P��T\0\0\0ؠ@���ܛ\n�J\0*3g\0\0\0�$s%�\"Hi$	@��\�\'.\0`\�2�\�U�m�j@g O\�\�t�B\0\0\0\�.\0(U.3okT�\0�T�dyJ.\00|.��V\�]\0EJʣ�&@\0\06�\�Fv\n�2�\�:�\0\0��3�d&w/4�9\0A\�<O�&@\0\06&���:\�`\�UPJތə\0�F$\0�\�`>��\��A��W\�1@\0\06L2���\�U\0$�+�g�\0\00l\�.�\�\�h\0I���a@\0\0WR2\�\�\�wq-�cb�\�L;%W��\0�\0\0\0���L\�\\�ʑ&\0��h�h�,9\0\0\0é\0(��O\0TZ\�`i�[\0A��f�\0\0`\��R}`;�\'\0A*c\�J`\0\00\���d��\�4h�\0�0\�F@\0\06\"�є\�[kM\0\��<Oɤ��@\0\0�\�!@Ͱ\�&�AV\0\�d^&�\0\0�ag\0\�\\ɽP�@�\�\0�\\\0��\�PJ&7ok\r7���d픜;�\0�d.3\�\Zy��\�\�\�\\r1\0�!�\�&�1\��4Si\0`��\�2��F=@RU7:;\0\0\0Q=�e慤4\� Hy2\�=�\0\09�\�\�V�Q����\�\0\0`\���.��4�Q�EJ�\'3�\0\0\0j�)��E@\�\�` \0\0C��^_\�<�q�\0G\�\�A@u�\� \0\0\�\�r%Sw��\"\��\0����#w\0\00\�\n@\�\��\�Dcm\��A�\0(&ˍ\�\0\0z��\�L\�~��A~?n*���I�\0\0�{}\n�݋�~�l�\�S�Lb \0\0\�cɔ\�`[��s4AyJ���i�\0\0ARL.3)���\0F�H\�TO$\0\0`\�	��R�\�ݵ\�!@Ҁ{\0T$�\�\Z�\�4\0\00P�X�b=	�`�\0:À̌\0\0\0C�\0H\�Lf���q\���@�\'\0�ae\01�̕K�\�Q*,\�\�\0)\0\0\00�\n@L�dޔ�\�c����h^Ds��\0\0��y\�\03/¸4\�\0+R21\0���\0\�)����1:X��ҙ\0�p\�$3)�\n�M��\'�<��I@\0\0GL&7o�uL����dy�.q\0\0\0CJ\0\\Ѽ��9�*&U�$@\0\00��sК�\0\�(\�\�D \0\0\��@;�\�(\�\�E�: �\00X�hR2\�\Z�c�R�\�KN\0\0�aT\0<(F���\�\�:`IE2\�͙\0�p2����Z\�t\n�2��\0\0\0�\�Jfr�R\nk�}g\�[\0J\�E2v\0\0\0�d^7�c\�Π�\0��\�)��\�\0�0\�\�J\��kO\0=	Pf^�\0\0��\�n2S{=�g\�M�rWa\�\�,�\08��	P\�8(\r�:`)��\�JF\0\0�@Cl�J3��ҽ�J\0�ԌєR}�\�\0\0\0\�*��+�c�4�-\0���D\"?\0\0�\r��{ �]@�0�*�&\0\0``\�1�.sϥ�U\0����<O\�&\'\Z��=\0\0\0&%�%!��&�\�T\0�\�ɬ\�>\0\0\0b]�\�J\��V\0\��<%\�\0\0`�lEs%��\�k@\��\�1@�\008�!@EXg\�\�+\0AE2/\�\\�\0\0\0p�\\f�+�\�)�\�L�=\0\0\0Z\�}��Z1y;s\0��\0\0.\�\�dJ�f���\0�f^y\�.�I\0\0WJ.��\�(̼\\H�\0`@k\�\�-�RZ\��\�\�4�\0\0\���3	\�\�\�6	PAEL^\�\�\0)\0\0\00\�UvJ�4�����yaf\n�\0\0\00ƺ,�̬�u\�8�kyr�\�\\���\�\�?s\0\0\0\�[\0EPXu`o\�φ�\�Y4��c\0\0\0��J\0J.�{�u�ى�|sQy2Sl\0\00�\�JѕL͉\��>\�0z\0TO켁�\0���l}��\�X\�I�a\����f.7\�?\0\0�\�.��\�\�\�\08�@�\�\�  \0\0�Z�wotIc�\0�\�1\�\�\n�8	\0\0� 2\0K.sW\�[h�\�J\\\0��Ds���T\0�qP�\��\�F@\0\0�\�تd�T\�0��<��.��y�\0\0`=@\�4\0z\�y\�\���[�Ғ�M\0\0\0��\�=\0\�ʥ0��vL��\�>I�\0`:\r�-IŘV\0B���ɻ\�\0\�\0\0\0X_p]\�(¸6JʓyiV\0\0\��2s�+W\�A@�fu��-\0\0\0\�\�o�RR\�\n@jE�\�\�E	\0\0���\0,Ifj)\�\n@n楹wR\0\0`��;\nx|�\0�T,\�H�\0`�\\2�\�UHc:@Ay4/�q\0\0���(`�<��$���@	\0\0���C��\�\Z\�\0rK^��M�\0\0$���ܔ+�\�$��h*\�\0\0\�L\��\�nt�҉�\0\0,��Injk\0s\0�\�\��\0\0\0Zpw�{��>�S\0JI��\� \�?\0\0\��.UɕL�\�D\�a\���W\�\0`0\��\�S\0\�Z�\�\"Y]� \0\0`�q\�\����j�/\�w\ZT�zf1\0\0XWH�O\0\����b�sb�\�o+\�{݊\0\0\0Xc��^T\r&Ȇ������\0�u��\" �\�?h���T\��\�J`\0\0ֵ��y�p\07�P�)\�\0\0����\�[\0e\�`�\0�\�\�N\�KK�U�@\0\0\0k\�.u\Z\�\�\Z���Vr/L.�\0\0\0XO (�)\�7��)�\�\�+3\�\0\0\0�^f.3/B�-�\"��\�m�l\0\0�6����\ni��\0s3���E�\0\0\0X_@2�%\0C<�VJV�[\'Ϡ\0\0�\ZղdJI� �Ǻ�\���\0��p��K./5\�=\0A*��\0t�y\0\0�6�9\0�\�}@��\�J�)p)0\0\0눩�(\�d^��?�\'S\�\�)\0\0\0\�\�A@a\�)��z�\0\0\0�ڥz@�z�\r�\�\�\0��\�\� �K\�*u\�\�\�A@!\�\0\0�z��\�Tv\Z\�\�7A�ɋdN\0\0\0\��RL�\�ޞ\�3\\o�s\0d\�K�\0\0��\�T[�\rp &f7/��\��z%�\�oV*\�)�\0�\����\�>\�į6-���[�~�\�3����\�\Z����\'�z߂4\0\0�5I^\��\0�|z��\�\�t%�\��̓�.��V��D���˒+P	\0\0`\�B�,�\�\\\Z\�@\�\ZM�\�\�\�G\�]\'/�\�\n�\�Nd:=�\�$ �m�.[� 2\0\0\0֠���A\r�f\���_;\�z�k�!��d�В��\�@�\�\�<�k\"p#0\0\0k�\\J�*h���hҗ^0�p\�u\�P\�_y_���WM�d�fu�Q@\0\0V\'t+\0����ܥ-��,`\�M޾\�:3\�j\�\�tn�$ (w�\�ܦ�\0\0�Z2\03����J��4=)\�n���ϙN^��&\0]U���S���>�\�B�~[��{nƤ\�\\\�h\0\0`m�I\�\�\nA�\���mҿ�|\�\�\\Z׮��k`L\�\�`�ګ��ߙ\�ս=I@a\�\�\0��\0rw���\�pI�\ri\�\�_~>\�7\\��\�Q�1I�Zҟ|ϔe\�O\�4יSB}%p����\0\0�\��Pf*Գ\��vm�~\�KI?8\�jZq�HЛ|�9S#HOݗi>�+\0ɼr\"?\0\0kf�+\0�	��-\���\�o�\�\n�]� ��Ϛ�����S���%�\\	\0�\Z� K��Z!��T7�������\�ڂ�@+\0�Y�I��)����Y;��\�7G\Z\0\0�\Z\�^\�6��w�e�\�KV\�\r���:�\�ݥ�\�;&�\�O?�E�N�\'\0\0`�AUrsmݤ\�_5_�\�`�\� ��<��GS\�\0\0\0kg�I���\�I\0\�\n>�m\�e\�H\0\0���mg���Bމ�\�\�u�\�&\0a\�w7\�1�J\�rq\Z\0\0�թ��bR\�\�]\0a�\��J����u\�\0��A�\0\0�+	P)-n\\-\���$+I\0\�U���6��b��өH\0\0�\�7��TVIe\'\�f\�x\�Ǿ�`��\��:\��s\��\�B��Ux4s���.c\0\0�bfA\�V鱌\�&�|��/��_6	�XC�\�}\�\r��C�2I��/zyn��h\�e�\'\0�U%\0�>�\�%\�\�.\\��*/\�ZI�J�\0�~\��\��\n�\�_?\�:y\�-	\0\0\0�\�&�\���Ny|���SpI\����$\�X��eV��/AR�\���_$U)I)�[\0\0\0�X��\�M\�+O�7m������\�\���-�L�0�7���ѓ\04zޟ�%\03A:��fe\�2�J\0\0V�\0�&�\'�0/�\�N`�$ ���^�t�$\�Z=\0�I@\��z�\'�7��݄`W��?7�\��njh͗\0\0p�idR��.��\����\�%���x`\�\">u\�iM�K5��%{C��C7�\��\����~��?�\�)s\�v\�;1\�9\��s\n\0�5����V!�pҟ���(i{\�\�����wLp��\0�W�\�XjϿ7�O�$�=�@oE`B\�\�+�|��\�\�[G�\��\�]a2˨\0\0��\�YI\�\��\�+��7\����m�@\�\r��\�\�����e1�/UX*\�o��\�{\�ԓL��w\���\�\�޴/\�\�6\�7���\�$\0\0,-�����o�j��\�;�I{;�����r�\��*\0u�\�\�{_�����\0\���;�=�\�\�\�\�\�\�B.��\��\�i\�3�]Y}��\�\0\0\����$%�.����\�_��߶�\�K� i��\�[n\�oK�\�\��\�{ԯ����\'\��&\�D`浳~\�w�a_�ke�\�m\���jLN\�YN�+\0\0pcK���Q:5��7_�}�9���/�I�:+���,���\��M��\0�\�= ,5\�7�d�\r~���͝׽o\�\�\��\�-�f$5f������{�9�s�v\�\���m�r� \0\07si��_l��K\�\�\�so�3Ͻi\�\�u���Ş�.%����R��T���һ�i�	�dO�\�-\�w�{�޽=0Փ\0l\�$\0[�I\��\�\�}�l\�\�fmټI[(\0\0nW�\�C}\�o�W�\�,t��s�¥�\�\�|l\�\��_z�\�\�\'	\��X_�\�ˀ2-?	���`\�묯��:	\�ĥ���޲�\�\��H\"\0\0x�~��\�}\��Ru\�ݕ~�\'�w_���̻\�x:���V𾥾`\�D\���tL��6H\0\0\07X\�]��\�\�t\�(\���Y_�]Wܜл��tq�c\�Svht2�\�ǔ�*@\�A�?\0\�F�tɽe�ޒ���\���L^Up�@\���KݗF\�uX\��ľ*�D_�\'\0\0܈U�\�xZ\����\����ӕ�\0���2_oE	@�_\���gu\�\�)K�l\�ǔ�r�\�RӋ�/,\0\0\��\��п�NK\�\�\�*IB2��\n@/\�[\�w��l�\�\��{��wv�@O\0\0x/%\0˽�w\�\�_e\�I�R\'b\�\�Y_\�M8�L\0�\�/�\�-\�;w8\�\�\���\�\rK���\�\�~\0�\r����\�\�\�\�&\�\����\0i�*����D\�;\���� ,��D�_\�h+}\0\0�]�Z\�]\�V@\�`\\\"q�\�u��_�\�`7XW}g��&�����Թ\�޿\�\0@\0��̖���\����w��T\�`o`�\�z\�&\0��\���w\���\���\�j�?\�]\�\�\0`eU��*I\�\�\��\���t�\���&�n�U��\�o��)�\�\�W]%�\0\0\0\��\�%\0���\����\�	�Xf�\��gӕ\�Ke#K�^\�\0\0Xy2\�+H�\�X.�/{\n`�d�[\�_.	\�\r�һO	�\0\0��J@?@��A\�\�\�]˟:�j@^*h�6�������_kߟ$\0\0�k��%��\�\��*�Z\�\�3]y��Ղ?I\0\0\0+��o\��&W�K~\�\�\��R��=\�\0\0��\'\0K�}\����8��:@\�\0`�\���.�YQ\�_KP\�x�\0\0\0k��6\�_�z\�c<\0\0\�G�0�`M�\0`���\r	\�$\0\0�a�W�vwJ\0\0n0\�\�\0\0	\0\0\0 \0\0\0$\0\0\0�\0��ۭ\0\0\0�A�\����\"\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0@\0\0��\0�\�}<\�B+\�\0\0\0\0IEND�B`�','AN',6),(22,'eee2','eee2','eee2',0,'d2f2297d6e829cd3493aa7de4416a18f',2,'�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0	\r\r\r\r\r( \Z%!1!%)+...383,7(-.+\n\n\n\r-+-+---+--+----+-------++-++++-+-++-++------------7��\0\0\�\0\�\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0F\0\0\n\0\0\0\0\0!1AQRaq��\"2����\�#BDSTrs��\�\�3Cb��$c�\�t��\�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0�\�\00\0\0\0\0\0\0\01AQR!\"a�B�2#b��q�\��\�\0\0\0?\0�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\n�\�p\�/:.%3\n<Ek�\�zQ\�(\�\�=!��\r�.�\�\�-\�<�n\�j���Y��3{�\�e�nv\�\r\�\�||�\�$\�i��\�\�\�\�M\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0|^�{��\r\�\�Z��2�\�^T`�IG���ރߢ�My��\�m\rUv�ES<\�u-%��׈�����\�EG\�$ܹ?��ʏc\�\�\�9>�8�\�\�\�WY�c��\�y�\�.S\�k�xaV\�r\�O\�6�\�գ\�#T$�fQ�Ҕc��G#Uj��\�\�K���E\"+�#��f\�4Z�\�O\�/a�4\�{^�\�X�\�z\'N\�1Z\�\�\�\�ʎ\�%ӓ\�0�\�T(\�m�\�\\�\�9t�m�\0\0\0\0\0-�0�����ro$�b&|�&b#2\�\�t�9p\�(�\�6���\�:�1�\�Z\�\�\�\��\�/�I�F�\��,\'[b?&	\��E�\�I�W3(\�\�\�\�v���i��]U�ٖ\�sل\�+>�\0o��^M8�u���(\�W\�\�ӷ\�%�=�\��\��\�2\�\'��\�i얽�\�\�\�\�\�\��#(\�G:�NԞT~\��\�7Ņ�u\�o\�e\Z\n;��\�K�����\�i\�׆�\���Q�hm��3��r��\0\��\�\�o\�\���\�F�׿\�	\��\�\�^{�ҏ\�9uWZ\�2\�-v�߯�~��#�/\�\�Y}�ɨ�)4�QM��t�n��h�Sy\�\\�\�\�̵���j\�u�S�\�\�W!�\n�+�fE���\�\�Y\�J\�[IU)K�g�G�[>�t�tz�^\�rݠ\0\0\0\0�I%�؀Ʊ0\�y�)>\�>|\�VƊ0�b\'\\��o��\�&\�J1m.�{�sE9��sv�\\�\�E3\��|,O�����x�\�\�n��%��\�O���R��o6��s�\�\�\�\�W��k_�oV��r�\��\0L�\�v�3�\�~�\�\�VQ��ڼw�_\�r\�y7\�]W\���C,w�^_Zϖ\�\�&�kݗۯ{|�-\�t�3�\�؛��u�m\�o��-\�4��\����~���l۝au�\�?�\�2�m\�\�&�OF_l��#�\�/��]>;&�\0Oj����\0\�\�{{��\�Nɓ�\��d���[\�O��\�\�?y7�\0\�e�\�\�^\�ǏH՗D\�&�\0=���{�#�\�zMy���C���]\��d[\�\��\�Eg\�&�\0_He�\�}\�\�\�|x\�T\"��w\��B\�͵\�Y�\�\��<V)�-���$\�n{2��k\�\�ݶ\��x\"��12�WWTU��\�jm\�PO�/�ݧ\�\�r�O�V�ի~(\�_�\�s0�m\�(\�\�\�\�d(�\�nM�\�l�\�:\�:�)��P\0\0l\r|F\")�+\"��\�i\�4�d���\�b����p�\�\�|�\��Խ8{��z��?O�\�\�����+\�|�v\�\0�ur_ۈ��U̿�\�x�S�U��^\�5��^�S\�ߖ�+��GѬ�\��\��=�U�\0\�\�\�p\ry}\r}�\��5�\�z_�m��~op	o�_�Fv�\�\� .��q\�qjR\�ؚ\�\�o?QK�r�\�섀�M��S���}��\��\0\�{tQ\��s���)�w�ft���o-O\�\�\�b!\�~\�/W9�\�\�F(zI\�{�\0\0��Y\�}\�y��t�UA|��2��T0�8�\�\\I⎬R\�ָl��H�\Z�1����9c\�\\7T�}\��u�\��n?(�czW�q4v�����\�y�\�0�\�O�\��Ⱦ�����՞��c��\�}f�I2\��;e��c�\�\�!\�eݮ����\�9n���엸��\�\�;����[���7嗸��މ�\r?s�M��OS.\�w��\�\�b�\�p��\�]\�\�D�����\0\��g�\�`\�.t>\�c�,t\���u��\'Or96Ӭ�?�*\�{T\�\�CL\�4\�q��k��\�NQ���\�ډ�\�V��\�!\�!�,�cc.	\'\�\�&,��ƫ\�?\�\\��\�WU�ԗy\�\�\�3\�\�a��������\�G�EUK��gΘ|g�\�\�\����WE\�}.\"\����^Ñ��\�.\�1nnhz@\0rwU}�஝rq���Ɠ�O.��=\ZJi��1Sɯ��t�\�3�\�\�%���\�s\�o�\�x(폇\��[���*;\�|3�딙|1\�<UO9�c�\��{L�\�g����v�茗\"&W\�\0�FdT6V��dT0*ªȨaUaE&�]O#Xf�dx���\�Qŝ5\�L\�%\��iH\�c�s\\Z�\��<Wt�ƗSO����P\�%��<Xub���Ӎ�\�\��i0�o\���o�?D��Q.��dz+�\�q���y~�x�}%5�j\�>Y�i\�\�F(r�ӛ��|��\�-�3\�3\��\�y�\�{\�7�\�X8�T\�\\�g\Z\�\�}�\��0l\0\�\�-Z�,Lر�,���i\�\�\'\�\�\�\�\�\\{Kʓ\�\'\�}\�@�dC\n�\n��aUdVVEC\n�\"�\�Q�\�O&��ث�5¶Mr>S����T:\���J�\�|u�\�\�<n�]*q[a�\����]\��\��\0\Z_��\�8��\�\�4�*Y\��\�+�$���\�\�jg7jq\�\��r�k\�\�T\�%��\�Q\�Z��\�\�,�h�9uEi\��\nxCt�\0.�z��:�Ƕ-Q8�%�q�f5C�#ԏ��\�\�bf\" \n�C�aU`C\"�*�{Q%a�����z\�(�&��\�i\�-�U2Ѩ�h�TD�7~W2&\�4}Z����\�\�U\�\�֗���X���st�iE4�ۓ\�\�\\=Vj��˞\�m\�fVj?&\�\����w)\�6ڪi�&sq�O�\�?����y>���o\�v\�}�\�\�e�;�6�\0O�1\�f2\�[��^\�gζ\�y��GJ�\�0\�ܜ\�3\��	}��G�]�Q,�Fk�\�j\�R\�Iv#�\�\0\0\0<f\�j\�l9�\�2�Yz���sE3\��\�\�\�\\{ʆM(aP��\"�aUdT0��*Ȩ\n\�\�ܾ&Q\�]b\�y��\�cݧYԉ\�\�\�@\r{��\�Ke0\�\�\�:\�FL®\r֧C�h{K)\'\�\�\�aa���Z�\����Q̻�]\�5Y�\�=��_���\�b�F�wϛ\\�dq�e�F^oW\�:P\�K���<&��\�,һ^K�1o\�i\�\�(z4���\�\�1\�\0\0\0�\�\��1��\�ǹ.�$Ϣ\�Nl\��\0�\�4�u�M\�\n��T�T0��aUaU\"��`�s���\��JZ\�E��\�\�5�q�L\�9�\'*bp���\�7y�_p\�]Ҙ�\�wb~�?<bǯ��\�\�S\�b~�\�\\X\�}ߦ^]��߉{�i��\�\�1���G�\�*h`U�n\�\�uS>�\�h�j#\�\�\�\�3\n\��\�\�w3\���t�ڸ,S厧�\�{\�Df�K��%�p=�\�K\�w��_K��\��\��ͪ�K٢�T\�\�\�{�\0\0\0.ݕz�F\�\�S�e\�wt3�1\����N/\�8��\�@TC\n�P�aUdaPȪ�*���\n�V\� *�+q=l,\�2Z\�l�.�<��h�\�XV��?k��\�\�»��,\\�\�\�\��L�G���\�\�V{aϗ�\�+Nx\�e�yz��K�mz�\�\�\�CCe\�\'�\�\0\0\0�\�^X\�\�\�\���\0s���\�T{�{mS\�_2΃��EC\n�YV\n�*UXU[1UXT2\n��dUXT0��\r\��[}o�\Z�Fio\�\�\�ÿ#��9\�\�4�O?��<�Y.͋\�͖x\�N��ÇY뇊^���yS���|\"�v�N~�}N��1C\�\�\�3֐\0\0�\�W\�\�\'\�\�}�K\�t�l�\�.٧�tϻ\�\�|�ª��ªȨaUdUYRaU\n�EU�VE@V}fVå\�>\�\Z�\�3�eQՒ\\�k\�\�eQ��v�\�1.>\�l\�t�J�}nF\�1ūQ<\�\�D<��\�\�㫣\��K��\�ۗqͿ9�]�4b\�=�\r-\�\0\0\0>?|��\0\�\�>n%/J2G�g\��&=�ͭNt�\�/�;�U�@Ȫ�����*\"�Ȫ�*�*UYB��U�P�FY4�\ZdWG\�\�\�~Vs�F*�gKVm\�\�t\��\�5ͅq�-\�\�\�\�$����G7�\�x<<~\r>ݧ*\�\�v�F(�\�\�`\�߃�\0�{\�U���|\�)�e�w��\��/Чŧ�\�\�>IVUaP��\"��U�U���*VYUaP\�!�T*�\� �\Z���jc\�.���)�\�i	\�_k���]ŷ�an�\�,s�_N\�9\�-t\�j��ny�\�Ty+���\�\�S\�[��\�+�S(\0\0r7]N��\�Ǐ\��Ie\����\�<\�\�\�ѩ�\�f����E\�\�H�\�!�C\"���ªȪ��l��\"�\�!�U�U�P��\"�*�*0��g\�5\����Ϩ�\��\�\�\�x\��W=iJ\\\�J]�3\Zx7\�\�2\�Z\�U�[ �d�8�K1�\�\�Z&݉t$rݧ\�h�\��K\�t\0\01�\�\�ly\�YشeD⨖5\�i�x�\�G>�Z\�}+\�f132\"�¡�U`U�*���EU����d\n�R*EU�C\�MFys]h\�\�f��\�Uxk�|\�h\�l��{n�^}�\�~qCn�3r��n\�9γ\�4]��?\0	\0If�ı0Զ\�\�\���O�-g���Ks�)�g\�\�(�n\�Չ�4��VEC\n�\"�Ȫ��dUXdTU�C �\n��dUX0{}DW\�\�9NK�M~ovs\r���tFL�\�g\��h\�՗\�\�{v�\�\�>�BA���za�0\0\0\0\�i}\�\�qS�\��&Y9\�R�}yp�\�\�n[�S>O5\�%����\��؝\�)y�,v&�E%�3\�B\�8��vU�\�2ѷ{\\R^&��O�xwZ�6F\�\�O\�vE<��\�J\��ix畘�)\��a��\�6�\�Zgd\�\�a�f\�t\�s�\0G\\�\��\�\�M\�g\Z\�L\'e]iY���[\�ј��qZ\�\�e�Z�ɮvu\�\�й\���>�d��qz���\�Ev95\�*��\��	\�ڌ���\�t�#�\�\��-�nE\��\\r]_�8�:	\�\�eʂ``U�Pª¡�C\n��`FdW#��NL\�Ty�v\�4¸�+�)z\��xC���2�m\�h\�\�\�\�\��=\�Pј�:(\0\0\0\0\0\0\0\0\0\0`�L����ڄ_qs)�hb�5���&\r.�\�e\�%�ۦxÛ�\��Bχ\\~\�ʿc2��#��ny9\�oU�_��\�,o��\0,\�\�Ur9�Ζ\��s\�ފ�\�\�d>Ү\�\�Fq���\\\�m\�B\�\���zV/�Y�k֤\�\�[=\Z\�gPѿ{]5\"��y\�ڌ\�[\Z\�f\�)i]��?�\�gغ,\�5�5\�͞������\�˖\rK\�e\Z�:���[F\�b�\�\�1��\0�mz��_�y�Ί\�5g�a���\�i�\\�y�Ξ�\�\�\n_\�|P\�\�Wёbk.=�\�1�U\�\�Ҙ�k\�nnK$���Ē\�4ܘ��\�LL>�q�\�\�/m6U	Ij�\"\�).\\�\�s�\�O����4S\��]�+�)%\�hz0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��Xj�\ru��Ł\�\�noGY�Lj�\�q�WTp�3E3\�\�F�\�o7�\�_v\�R\�FQz�\�\�l\�<�-�����\�9A9?\���\�]Uq�t\�M<!\�\�\\�,�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?�\�','AC',6);
/*!40000 ALTER TABLE `sisusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud_reparacion`
--

DROP TABLE IF EXISTS `solicitud_reparacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitud_reparacion` (
  `id_solicitud` int(100) NOT NULL AUTO_INCREMENT,
  `numero` int(100) DEFAULT NULL,
  `id_tipo` int(10) DEFAULT NULL,
  `nivel` int(10) DEFAULT NULL,
  `solicitante` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `f_solicitado` datetime NOT NULL,
  `f_sugerido` date NOT NULL,
  `hora_sug` time NOT NULL,
  `id_equipo` int(10) NOT NULL,
  `correctivo` int(10) DEFAULT NULL,
  `causa` varchar(255) CHARACTER SET latin1 NOT NULL,
  `observaciones` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `estado` varchar(2) CHARACTER SET latin1 NOT NULL,
  `usrId` int(11) NOT NULL,
  `fecha_conformidad` date NOT NULL,
  `observ_conformidad` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `foto1` blob,
  `foto2` blob,
  `foto3` blob,
  `foto` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_solicitud`),
  KEY `id_equipo` (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_reparacion`
--

LOCK TABLES `solicitud_reparacion` WRITE;
/*!40000 ALTER TABLE `solicitud_reparacion` DISABLE KEYS */;
INSERT INTO `solicitud_reparacion` VALUES (1,NULL,NULL,NULL,'Jose Perez','2017-11-08 10:44:25','2017-11-09','08:00:00',1,NULL,'rotura de rueda',NULL,'T',3,'2018-09-29','Conformidad ',NULL,NULL,NULL,NULL,6),(2,NULL,NULL,NULL,'wqewqe','2017-11-08 10:45:54','2017-11-09','08:00:00',1,NULL,'assdas',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,NULL,6),(3,NULL,NULL,NULL,'asdsadasd','2017-11-08 10:46:39','2017-11-09','08:00:00',1,NULL,'asdad',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,NULL,6),(4,NULL,NULL,NULL,'sssss','2017-11-08 10:47:21','2017-11-09','08:00:00',1,NULL,'sadasdas',NULL,'T',1,'2018-01-30','trabajo terminado',NULL,NULL,NULL,NULL,6),(5,NULL,NULL,NULL,'huggo','2017-11-08 12:53:19','2017-11-09','08:00:00',1,NULL,'observc test2',NULL,'T',1,'2018-09-25','nuevaaaa',NULL,NULL,NULL,NULL,6),(6,NULL,NULL,NULL,'Hugo Gallardo','2017-11-14 15:23:31','2017-11-15','08:00:00',2,NULL,'Rotura de llanta',NULL,'C',5,'0000-00-00','',NULL,NULL,NULL,NULL,6),(7,NULL,NULL,NULL,'Hugo Gallardo','2017-12-01 05:35:25','2017-12-04','08:00:00',2,NULL,'Falla test sobre RS-0001 (01-12)',NULL,'C',3,'0000-00-00','',NULL,NULL,NULL,NULL,6),(8,NULL,NULL,NULL,'hugo gallardo','2018-01-13 21:54:50','2018-01-14','08:00:00',2,NULL,'rotura de equipo test',NULL,'S',5,'0000-00-00','',NULL,NULL,NULL,NULL,6),(9,NULL,NULL,NULL,'juan perez','2018-01-17 13:38:28','2018-01-19','08:00:00',4,NULL,'mancha de aceite abajo del equipo ',NULL,'AN',1,'0000-00-00','',NULL,NULL,NULL,NULL,6),(10,NULL,NULL,NULL,'Solicitante 1','2018-01-18 18:05:53','2018-01-18','18:04:00',8,NULL,'ccg','18:04','AN',0,'2018-02-08','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(11,NULL,NULL,NULL,'1','2018-01-18 18:07:20','2018-01-18','18:06:00',6,NULL,'mancha de aceite debajo del equipo','18:06','',0,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(12,NULL,NULL,NULL,'1','2018-01-30 14:06:43','2018-01-30','14:03:00',9,NULL,'No tiene fuerza para levantar la carga','14:03','C',0,'2018-02-08','ok\r\n',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(13,NULL,NULL,NULL,'3','2018-02-05 19:01:38','2018-02-05','18:59:00',9,NULL,'bateria descargada\n\n','18:59','',0,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(14,NULL,NULL,NULL,'1','2018-02-05 19:42:17','2018-02-07','05:41:00',9,NULL,'fhjh','05:41','AN',0,'2018-02-08','Trabajo OK ',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(15,NULL,NULL,NULL,'1','2018-02-05 19:46:36','2018-02-17','05:41:00',6,NULL,'ggggjffufjffg','05:41','T',0,'2018-04-11','TERMINADO CON EXITO',NULL,NULL,NULL,'assets/files/reclamos/15.jpg',6),(16,NULL,NULL,NULL,'1','2018-02-07 12:36:19','2018-02-16','12:35:00',7,NULL,'fff','12:35','AN',0,'2018-02-08','',NULL,NULL,NULL,'assets/files/reclamos/16.jpg',6),(17,NULL,NULL,NULL,'1','2018-02-08 14:38:14','2018-02-08','14:35:00',10,NULL,'Ruido en cuerpo de bomba int 0057A','14:35','T',0,'2018-04-11','lista la solicitud',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(18,NULL,NULL,NULL,'1','2018-02-08 14:46:00','2018-02-08','14:45:00',6,NULL,'Gets con desgaste excesivo','14:45','C',0,'2018-04-10','CONFORMIDAD',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(19,NULL,NULL,NULL,'hugo gallardo cloud','2018-04-11 12:56:39','2018-04-12','08:00:00',10,NULL,'solicitud de servicios prrueba coud',NULL,'S',3,'0000-00-00','',NULL,NULL,NULL,NULL,6),(20,NULL,NULL,NULL,'hugo de nuevo','2018-04-11 13:15:16','2018-04-13','16:00:00',10,NULL,'sol de servicio test',NULL,'S',3,'0000-00-00','',NULL,NULL,NULL,NULL,6),(21,NULL,NULL,NULL,'ssss','2018-04-12 10:53:14','2018-04-13','08:00:00',10,NULL,'asdadasdas',NULL,'S',3,'0000-00-00','',NULL,NULL,NULL,NULL,6),(22,NULL,NULL,NULL,'ssss','2018-04-12 10:57:40','2018-04-13','08:00:00',10,NULL,'zcxczx',NULL,'S',3,'0000-00-00','',NULL,NULL,NULL,NULL,6),(23,NULL,NULL,NULL,'hugo','2018-06-18 17:19:46','2018-06-19','08:00:00',10,NULL,'falla de equipo prueba',NULL,'AN',3,'0000-00-00','',NULL,NULL,NULL,NULL,6),(24,NULL,NULL,NULL,'hugo gallardo','2018-06-18 17:22:00','2018-06-19','08:00:00',10,NULL,'fala en quipo testeado',NULL,'S',3,'0000-00-00','',NULL,NULL,NULL,NULL,6),(25,NULL,NULL,NULL,'hugo gallardo','2018-06-18 17:36:20','2018-06-19','08:00:00',10,NULL,'fala en quipo testeado',NULL,'S',3,'0000-00-00','',NULL,NULL,NULL,NULL,6),(26,NULL,NULL,NULL,'hugo ggggg','2018-06-18 17:38:17','2018-06-19','08:00:00',10,NULL,'fallaa test',NULL,'S',3,'0000-00-00','',NULL,NULL,NULL,NULL,6),(27,NULL,NULL,NULL,'hugo g','2018-06-19 11:09:05','2018-06-20','08:00:00',4,NULL,'falla test',NULL,'S',3,'0000-00-00','',NULL,NULL,NULL,NULL,6),(28,NULL,NULL,NULL,'hugo g','2018-06-19 11:13:04','2018-06-20','08:00:00',4,NULL,'falla test 1',NULL,'S',3,'0000-00-00','',NULL,NULL,NULL,NULL,6),(29,NULL,NULL,NULL,'hugo g','2018-06-19 11:17:36','2018-06-20','08:00:00',4,NULL,'falla testing 1',NULL,'T',3,'2018-06-19','terminada conforme',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(30,NULL,NULL,NULL,'hugo','2018-06-21 09:41:58','2018-06-22','08:00:00',4,NULL,'falla testing solicitud',NULL,'S',3,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(31,NULL,NULL,NULL,'hugo','2018-06-25 09:29:37','2018-06-26','08:00:00',4,NULL,'fala ttesting 25-06',NULL,'S',3,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(32,NULL,NULL,NULL,'hugo ggg','2018-06-28 12:52:09','2018-06-29','08:00:00',4,NULL,'falla calendario ',NULL,'S',3,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(33,NULL,NULL,NULL,'1','2018-07-30 03:30:17','2018-07-30','10:23:00',2,NULL,'Ventana sucia','10:23','',0,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',0),(34,NULL,NULL,NULL,'1','2018-08-30 04:35:56','2018-08-30','15:30:00',4,NULL,'falla en rodillo de cinta','15:30','',0,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',0),(35,NULL,NULL,NULL,'1','2018-08-30 08:00:51','2018-08-30','18:16:00',7,NULL,'ddd','18:16','AN',3,'0000-00-00','',NULL,NULL,NULL,'assets/files/reclamos/35.jpg',6),(36,NULL,NULL,NULL,'dasasdasd','2018-08-30 08:18:16','2018-08-31','08:00:00',1,NULL,'asdad',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(37,NULL,NULL,NULL,'1','2018-08-30 22:50:07','2018-08-31','10:05:00',2,NULL,'fgggsf','10:05','',0,'0000-00-00','',NULL,NULL,NULL,'assets/files/reclamos/37.jpg',0),(38,NULL,NULL,NULL,'juan perez','2018-09-04 23:33:51','2018-09-06','08:00:00',1,NULL,'dsadas',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(39,NULL,NULL,NULL,'juan perez','2018-09-07 00:08:47','2018-09-08','08:00:00',1,NULL,'sadasda',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(40,NULL,NULL,NULL,'asd','2018-09-07 00:38:52','2018-09-08','18:30:00',0,NULL,'asdsad',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(41,NULL,NULL,NULL,'nose','2018-09-07 00:41:25','2018-09-08','08:00:00',0,NULL,'nueva',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(42,NULL,NULL,NULL,'nose','2018-09-07 00:42:09','2018-09-08','08:00:00',0,NULL,'anda?',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(43,NULL,NULL,NULL,'nueva','2018-09-07 00:42:27','2018-09-08','08:00:00',0,NULL,'anda?',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(44,NULL,NULL,NULL,'nose','2018-09-07 00:43:06','2018-09-08','08:00:00',0,NULL,'test',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(45,NULL,NULL,NULL,'nose','2018-09-07 00:44:57','2018-09-08','08:00:00',0,NULL,'test',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(46,NULL,NULL,NULL,'nueva','2018-09-07 00:46:02','2018-09-08','08:00:00',0,NULL,'test',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(47,NULL,NULL,NULL,'nose','2018-09-07 00:46:27','2018-09-08','08:00:00',0,NULL,'jjj',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(48,NULL,NULL,NULL,'kkk','2018-09-07 00:46:40','2018-09-08','08:00:00',0,NULL,'jjjj',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(49,NULL,NULL,NULL,'yo','2018-09-24 09:42:30','0000-00-00','08:00:00',-1,NULL,'nose',NULL,'S',16,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',7),(50,NULL,NULL,NULL,'yo','2018-09-24 10:19:02','0000-00-00','08:00:00',13,NULL,'Fuga de aceite hidraulico por pto',NULL,'AN',16,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',7),(51,NULL,NULL,NULL,'Nuevo solicitante','2018-09-25 10:23:40','0000-00-00','19:00:00',1,NULL,'equipo averiado ',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(52,NULL,NULL,NULL,'nuevo','2018-09-25 10:24:58','2018-11-08','10:00:00',5,NULL,'Nota Nueva',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(53,NULL,NULL,NULL,'Hugo','2018-09-25 10:27:46','0000-00-00','10:00:00',5,NULL,'falla grave',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(54,NULL,NULL,NULL,'nn','2018-09-26 00:13:28','0000-00-00','12:30:00',5,NULL,'nueva borrar',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(55,NULL,NULL,NULL,'yo','2018-09-26 18:26:01','0000-00-00','08:00:00',13,NULL,'vidrio',NULL,'AN',16,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',7),(56,NULL,NULL,NULL,'yo','2018-10-04 16:55:24','2018-10-05','10:15:00',5,NULL,'nota',NULL,'AN',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(57,NULL,NULL,NULL,'eli','2018-10-04 21:51:39','2018-10-25','09:00:00',5,NULL,'eli',NULL,'AN',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(58,NULL,NULL,NULL,'nose','2018-10-05 09:34:38','2018-10-25','09:00:00',5,NULL,'sera o no seraaaaa',NULL,'T',1,'2018-10-05','dgsgg',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(59,NULL,NULL,NULL,'nuevo pabloncho','2018-10-05 09:50:25','2018-10-25','13:00:00',5,NULL,'pabloncho',NULL,'AN',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(60,NULL,NULL,NULL,'pabli','2018-10-05 09:51:06','2018-10-12','12:00:00',9,NULL,'jaajaja',NULL,'AN',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(61,NULL,NULL,NULL,'mauriiiiiiii peeeeee','2018-10-05 09:55:42','2018-10-24','12:30:00',5,NULL,'borrarrrr',NULL,'AN',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(62,NULL,NULL,NULL,'nose','2018-10-05 09:57:01','2018-10-06','08:00:00',5,NULL,'eliminarrrrrrr',NULL,'AN',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(63,NULL,NULL,NULL,'nose','2018-10-05 09:58:24','2018-10-06','08:00:00',9,NULL,'jajajajajaja',NULL,'T',1,'2018-10-05','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(64,NULL,NULL,NULL,'nose','2018-10-05 10:02:33','2018-10-06','08:00:00',5,NULL,'no anda',NULL,'AN',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(65,NULL,NULL,NULL,'hugo gallarete','2018-10-05 10:04:25','2018-10-06','13:00:00',9,NULL,'falla 1',NULL,'AN',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(66,NULL,NULL,NULL,'huguis','2018-10-05 10:04:53','2018-10-24','08:00:00',9,NULL,'falla 2',NULL,'AN',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(67,NULL,NULL,NULL,'aabbcc','2018-10-05 10:08:52','2018-10-19','11:00:00',5,NULL,'falla 3',NULL,'AN',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(68,NULL,NULL,NULL,'dfghdfgh','2018-10-05 10:17:13','2018-10-06','08:00:00',9,NULL,'dfghfhfgh',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(69,NULL,NULL,NULL,'asas','2018-10-05 10:24:05','2018-10-06','08:00:00',9,NULL,'asasas',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(70,NULL,NULL,NULL,'nueva 123','2018-10-05 10:25:12','2018-10-06','08:00:00',5,NULL,'nueva y ultima',NULL,'AN',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(71,NULL,NULL,NULL,'nose','2018-10-05 10:25:29','2018-10-06','08:00:00',9,NULL,'eli',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(72,NULL,NULL,NULL,'nn','2018-10-05 11:23:25','2018-10-06','08:00:00',5,NULL,'falllaaaaaaa',NULL,'AN',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(73,NULL,NULL,NULL,'Marcelo Muriel ','2018-10-08 08:47:51','2018-10-15','12:00:00',16,NULL,'Engrase de cardan ',NULL,'S',18,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',7),(74,NULL,NULL,NULL,'Perez','2018-10-08 11:57:58','2018-10-24','12:00:00',9,NULL,'falla fatal',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(75,NULL,NULL,NULL,'1','2018-10-08 12:05:47','2018-10-08','12:04:00',13,NULL,'ggg','12:04','S',1,'0000-00-00','',NULL,NULL,NULL,'assets/files/reclamos/75.jpg',6);
/*!40000 ALTER TABLE `solicitud_reparacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursal` (
  `id_sucursal` int(11) NOT NULL AUTO_INCREMENT,
  `dire` varchar(3000) NOT NULL,
  `telefono` varchar(3000) NOT NULL,
  `zonas` varchar(3000) NOT NULL,
  `id_localidad` int(11) NOT NULL,
  `descripc` varchar(3000) NOT NULL,
  `estado` varchar(5) NOT NULL,
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,'mmmm','4253133','desamparados',1,'Casa central','AC',6),(2,'algun lugar','235040','capital',2,'sucursal de capital','AC',6),(3,'direccion','4235040','capital',1,'las leñas','AN',6),(4,'1','1','1',1,'MRS SERVICE','AC',7),(5,'direccion test','12345678','zona test',0,'descripcion test','AC',6);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tareas`
--

DROP TABLE IF EXISTS `tareas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tareas` (
  `id_tarea` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) CHARACTER SET latin1 NOT NULL,
  `estado` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_tarea`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tareas`
--

LOCK TABLES `tareas` WRITE;
/*!40000 ALTER TABLE `tareas` DISABLE KEYS */;
INSERT INTO `tareas` VALUES (1,'Limpie el Cuerpo Del Radiador (Utilice Aire Comprimido.)','AC',6),(2,'Limpie las Mangueras y las Conexiones del Radiador.','AC',6),(3,'Cambie Liquido de Refrigerante de Motor (Revise la Mezcla Anticongelante antes de la Epoca Invernal).','AC',6),(4,'Revise la Bomba de Agua','AC',6),(5,'Compruebe el Intercooler y las Mangueras de Conexion.','AC',6),(6,'Drene la Valvula de Purga de Agua del Deposito de Combustible','AC',6),(7,'Cambie el Filtro de Combustible del Motor','AC',6),(8,'Cambie el Respiradero del Deposito de Combustible.','AC',6),(9,'Limpie el Cuerpo del Radiador.','AC',6),(10,'Lubricar Todos los Puntos de Engrase de la Corredera ','AC',6),(11,'Compruebe la Holgura del Carro del Martillo Perforador y el Carril de la Corredera.','AC',6),(12,'Compruebe el Estado de las Mordazas del Centralizador del Retenedor.','AC',6),(13,'Compruebe el Aceite del Engranaje de la Corredera.','AC',6),(14,'Cambie el Aceite del Engranaje de la Corredera.','AC',6),(15,'Cambie los Filtros del Motor','AC',6),(16,'Lubrique los 13 Puntos de Engrase Segun Diagrama.','AC',6),(17,'Compruebe las Soldaduras del Brazo y de la Cuna.','AC',6),(18,'Compruebe los Soportes de los Cilindros ','AC',6),(19,'Apriete los Tornillos de los Pasadores de Expansión de los Cilindros.','AC',6),(20,'Revisar Apriete de las Varillas Tirantes. ','AC',6),(21,'Revisar Presion y Estado de Valvulas y Tapones de Llenado de Acumulacion.','AC',6),(22,'Revisar Apriete de los Tornillos del Acumulador, Motor de Rotación y Tapa Trasera.','AC',6),(23,'Engrase los Ejes de Oscilación y Pasadores del Cilindro de Oscilación.','AC',6),(24,'Compruebe el Estado y la Sujeccion del Cable del Cabrestante.','AC',6),(25,'Compruebe que no Existen Roturas en las Costuras de Soldadura.','AC',6),(26,'Compruebe el Electrolito y las Conexiones de las Baterias.','AC',6),(27,'Inspección: Revisar Desgaste de Correa de Distribución (de ser necesario cambiar). ','AC',6),(28,'Regular Luz de Válvula de Motor (cada 2000hs segun horometro).','AC',6),(29,'Probar la Capacidad de Retención del Freno de Servicio y del Freno de Estacionamiento (procedimiento CAT SMCS - 4251-081; 4267-081).','AC',6),(30,'Inspección: Revisar Anclaje , Desgaste y Fecha de Instalacion del Cinturón de Seguridad (de ser necesario cambie el cinturón de seguridad con mas de tres años o por excesivo desgaste). ','AC',6),(31,'Inspeccion: Revisar Nivel del Liquido Limpiaparabrisas (de ser necesario rellenar).','AC',6),(32,'Lubricar Articulación de Cucharón y Cojinete del Cilindro Cargador (utilizar grasa EP68). ','AC',6),(33,'Inspeccion: Revisar Desgaste en Cuchillas, Cantoneras y Planchas de Desgaste Inferiores (controlar par de apriete en bulones, de ser necesario cambiar).','AC',6),(34,'Lubricar Cojinete del Pivote Inferior y Superior del Cucharon (limpie todas las conexiones de engrase antes de lubricar, utilizar grasa EP68 ).','AC',6),(35,'Inspección: Revisar Desgaste en Puntas del Cucharon (de ser necesario, programar cambiarlo).','AC',6),(36,'Cambiar Aceite de Transmisión (cada 1000hs según horometro, utilizar el aceite SAE10W). ','AC',6),(37,'Inspección: Nivel de Aceite de Transmisión. ','AC',6),(38,'Cambiar Aceite Hidráulico (cada 500hs segun horometro, utilizar aceite hidráulico 68).. ','AC',6),(39,'Inspección: Nivel de Aceite Hidráulico.','AC',6),(40,'Lubricar Estrias de la Columna de Dirección (tener en cuenta 8 puntos de engrase).','AC',6),(41,'Lubricar Rodamiento de la Columna de Dirección (utilizar la grasa EP68).','AC',6),(42,'Inspección: Revisar Corrosion en Terminales y Desgaste o Daño en los Cables (de ser necesario, limpiar bornes de bateria y/o cambiar cables).','AC',6),(43,'Lubricar Cojinetes Superior e Inferior de Articulación (limpie todas las conexiones de engrase antes de lubricar, utilizar grasa EP68).','AC',6),(44,'Limpiar Equipo (utilice aire comprimido).','AC',6),(45,'Cambiar Filtro de Aceite de Motor (1R-1808 ITEM 57874).','AC',6),(46,'Cambiar Aceite de Motor (cada 250 hs según horometro, utilizar aceite 15W40).','AC',6),(47,'Limpiar Tanque de Combustible.','AC',6),(48,'Inspección: Revisar Desgaste de Correa de Distribución (de ser necesario cambiar).','AC',6),(49,'Cambiar Filtro de Aire Primario 245-3818 Item 57871 (cada 250 hs según horometro).','AC',6),(50,'Cambiar Filtro De Aire Secundario  245-3819 Item 57872 (cada 250 hs según horometro).','AC',6),(51,'Cambiar Filtro Separador De Agua Del Sistema De Combustible (cada 250 hs según horometro).','AC',6),(52,'Inspección: Revisar Holgura De La Válvula (cada 1000 hs según horómetro. la holgura debe ser de 0,508 mm).','AC',6),(53,'Limpiar Respiradero Del Carter (utilice disolvente liquido no inflamable).','AC',6),(54,'Limpiar Válvula de Alivio de Tanque Hidráulico (utilice disolvente liquido no inflamable).','AC',6),(55,'Limpiar Rejilla de Aceite de Dirección Piloto (utilice disolvente liquido no inflamable).','AC',6),(56,'Lubricar Cojinetes (Vástago y Cabezal) del Cilindro de Dirección (limpie todas las conexiones de engrase antes de lubricar. utilizar grasa EP68).','AC',6),(57,'Inspección: Revisar Holgura De La Válvula (cada 1000 hs según horómetro. la holgura debe ser de 0,254 mm).','AC',6),(58,'Inspección Visual: Nivel de Aceite de Transmisión (cuando se requiera).','AC',6),(59,'Cambiar Filtro de Aceite de Transmisión (cada 500 hs según horometro).','AC',6),(60,'Limpieza Respiradero (remover barro y suciedad. lavar con líquido limpiador. cada 1000 hs según horometro).','AC',6),(61,'Inspección Visual: Nivel de Aceite del Eje de Mando Delantero.','AC',6),(62,'Lubricar Eje de Mando Delantero (cada 2000 hs según horómetro. utilizar aceite. ver tabla de aceites. capacidad 16 litros).','AC',6),(63,'Inspección Visual: Nivel de Aceite del Eje de Mando Trasero (Tomar lectura de nivel con varilla de medición).','AC',6),(64,'Lubricar Eje de Mando Trasero (cada 2000 hs según horómetro. utilizar aceite. ver tabla de aceites capacidad 16 litros).','AC',6),(65,'Cambiar Aceite de Diferencial Delantero y Trasero (cada 1000 hs según horometro útilizar aceite sae50).','AC',6),(66,'Limpiar Filtro Acondicionador de Aire (utilizar aire comprimido seco, en caso de daños, cambiar. realizar cada 100 hs según horómetro).','AC',6),(67,'Cambiar Filtro Acondicionador de Aire (realizar cada 2000 hs según horómetro).','AC',6),(68,'Inspección: Nivel de Aceite Hidráulico (controlar el nivel por medio del medidor visual. revisar cada 100 hs según horómetro).','AC',6),(69,'Cambiar Aceite Hidráulico (cada 2000 hs según horómetro. utilizar aceite SAE 10w. capacidad 63 litros).','AC',6),(70,'Revisar Presión de Inflado (revisar cada 50 hs según horómetro. la presión de inflado debe ser entre 2,5kg/cm2  a 3,5 kg/cm2).','AC',6),(71,'Inspección Visual: Revisar Estado General de los Neumáticos (controlar que no tengan ningún tipo de daños. revisar cada 50 hs según horómetro).','AC',6),(72,'Revisar el Apriete de los Tornllos de los Cubos de las Ruedas (revisar cada 250 hs. según horómetro. la tensión de apriete  es de 94,5 +/- 10,5 kgm).','AC',6),(73,'Cambiar Aceite de Mandos Finales (cada 1000 hs según horometro utilizar aceite SAE 50).','AC',6),(74,'Limpiar el Equipo (utilice aire comprimido).','AC',6),(75,'Inspección: Comprobar Funcionamiento de Alarma de Retroceso (con el equipo en contacto, active el freno de servicio y coloque marcha en retroceso).','AC',6),(76,'Inspección: Revisar Presencia de Fisuras y Bulones Flojos o Dañados.','AC',6),(77,'Inspección: Comprobar Funcionamiento de las Luces.','AC',6),(78,'Cambiar Aceite de Motor (utilizar aceite 15W40).','AC',6),(80,'Inspección Visual: Controlar Pérdida y Nivel de Aceite Motor (de ser necesario nivelar con aceite 15W40).','AC',6),(81,'Inspección Visual: Controlar Soportes del Motor.','AC',6),(82,'Inspección Visual: Controlar la Tensión de la Cadena.','AC',6),(83,'Presión Según Fabricante.','AC',6),(84,'Inspección Visual de los Neumáticos (control del dibujo de los neumáticos).','AC',6),(85,'Cambiar Filtro de Aceite de Motor ITEM. 51488.','AC',6),(86,'Inspección Visual: Controlar la Tensión de la Correa (utilice medidor de tensión de correa).','AC',6),(87,'Cambiar Filtro de  Aire (primario ITEM 51518).','AC',6),(88,'Cambiar Filtro Separador de Agua del Sistema de Combustible.','AC',6),(89,'Inspección Visual: Controlar Soportes del Motor.','AC',6),(90,'Probar la Capacidad de Retención del Freno de Servicio y del Freno de Estacionamiento.','AC',6),(91,'Inspección Visual: Controlar Pérdida y Nivel de Agua del Radiador.','AC',6),(92,'Cambiar Cartucho Filtro de Aire.','AC',6),(93,'Inspección: Revisar Corrosión en Terminales y Desgaste o Daño en los Cables (de ser necesario, limpiar bornes de bateria y/o cambiar cables).','AC',6),(94,'Inspección: Comprobar Funcionamiento de la Bocina.','AC',6),(95,'Lubricar Movimiento (utilizar grasa EP 62).','AC',6),(96,'Inspeccion Visual: Controlar el Nivel de Aceite del Convertidor.','AC',6),(97,'Inspección Visual: Controlar Manguera.','AC',6),(98,'Limpie el Filtro de Admisión de Aire (se puede limpiar como máximo 6 veces, luego cambiar).','AC',6),(99,'Cambie el Filtro de Admisión de Aire (ITEM. 51549).','AC',6),(100,'Cambie el Cartucho de Filtro de Aire.','AC',6),(101,'Compruebe Juego y Desgaste en Patas de Motor.','AC',6),(102,'Compruebe el Amortiguador de Vibraciones del Cigüeñal.','AC',6),(103,'Revise las Tuberias y Conexiones de la Admisión de Aire.','AC',6),(104,'Cambie el Aceite de Motor (aceite 15W40).','AC',6),(105,'Cambie los Filtros de Aceite (ITEM. 58108).','AC',6),(106,'Sustituya el Elemento del Respiradero del Carter de Motor.','AC',6),(107,'Compruebe las Boquillas del Inyector.','AC',6),(108,'Revise el Sensor de Temperatura.','AC',6),(109,'Compruebe la Holgura de la Cuna.','AC',6),(111,'TEST','AN',6),(112,'Orden y Limpieza','AC',7),(113,'Cambio de Vidrios ','AC',7),(114,'Cambio Asiento  ','AN',7),(115,'Reemplazo de butaca','AC',7),(116,'Regulación de cerradura ','AC',7),(117,'Cambio de Cerradura ','AC',7),(118,'Cambio de Manómetros ','AC',7),(119,'Reemplazo de motores de Rotación de Cabezal ','AC',7),(120,'Reemplazo de cabezal','AC',7),(121,'Regulación Eléctrica de Joysticks ','AC',7),(122,'Regulación Mecánica de Joysticks','AC',7),(123,'Cambio de TIM','AC',7),(124,'Calibración de TIM ','AC',7),(125,'Reparación de Calefacción ','AC',7),(126,'Limpieza  de Filtro Interior de Cabina ','AC',7),(127,'Cambio de Filtro Exterior de Cabina ','AC',7),(128,'Cambio de Filtro Interior de Cabina','AC',7),(129,'Resellado de Cabina ','AC',7),(130,'Cambio de Burletes de Puerta ','AC',7),(131,'Cambio de Puerta de Acceso ','AC',7),(132,'Cambio de Lampara  Luz de cabina ','AC',7),(133,'Cambio de Interruptores en Cabina ','AC',7),(134,'Cambio de Joysticks ','AC',7),(135,'Carga de Gas de A/C ','AC',7),(136,'Chequeo de Sistema de A/C','AC',7),(137,'Cambio de Compresor de A/C ','AC',7),(138,'Cambio de Equipo A/C de Cabina ','AC',7),(139,'Cambio de Escobillas Limpiaparabrisas ','AC',7),(140,'Cambio de Escalera de Acceso ','AC',7),(141,'Reparación de Escalera de Acceso ','AC',7),(142,'Cambio de llave U ','AC',7),(143,'Cambio de Cilindro de Llave U ','AC',7),(144,'Cambio de Goma de Cierre  ','AC',7),(145,'Cambio de Guías de  Teflon Cabezal ','AC',7),(146,'Regulación de Motores de Rotación ','AC',7),(147,'Cambio de Sellos Agua-Aire en Cabezal ','AC',7),(148,'Cambio de Retenes de Cabezal ','AC',7),(149,'Cambio de Sensor de RPM  de Cabezal ','AC',7),(150,'Alineación de Cabezal ','AC',7),(151,'Regulación de Sostenimiento de Cabezal ','AC',7),(152,'Cambio de Luces de Trabajo ','AC',7),(153,'Chequeo de Sistema Eléctrico ','AC',7),(154,'Cambio de Bomba Principal ','AC',7),(155,'Cambio de Bombas Auxiliares ','AC',7),(156,'Cambio de Retenes de Bomba ','AC',7),(157,'Regulación De Bombas ','AC',7),(158,'Cambio de Actuadores de Bomba ','AC',7),(159,'Cambio de Banco de 6 Carretes ','AC',7),(160,'Cambio de Banco de 9 Carretes ','AC',7),(161,'Cambio de Válvulas Pulsar ','AC',7),(162,'Resellado de Banco Principales ','AC',7),(163,'Cambio de Válvulas Diversoras ','AC',7),(164,'Reparación de Válvulas Diversoras ','AC',7),(165,'Reparación de Válvulas de Aceite Caliente ','AC',7),(166,'Reparación de Válvula DR/PR ','AC',7),(167,'Cambio de Válvula Fema ','AC',7),(168,'Cambio de Motor de Traslación ','AC',7),(169,'Cambio de Motor Hidráulico ','AC',7),(170,'Regulación  RPM de ventilador  de Enfriamiento ','AC',7),(171,'Reparación de Fugas Hidráulicas ','AC',7),(172,'Reparación de Válvulas Contrabalance ','AC',7),(173,' Reparación de Válvulas de Sostenimiento','AC',7),(174,'Cambio de Válvulas de Sostenimiento ','AC',7),(175,'Cambio de Cilindro Hidráulico ','AC',7),(176,'Chequeo  de Sistema Hidráulico ','AC',7),(177,'Cambio de Radiador ','AC',7),(178,'Limpieza de Radiador ','AC',7),(179,'Cambio de Termostato ','AC',7),(180,'Cambio de bomba de Agua ','AC',7),(181,'Reparación de Boba de Agua  ','AC',7),(182,'Purgado de Sistema de Iyeccion de Agua ','AC',7),(183,'Reparación de Válvula Check ','AC',7),(184,'Cambio de Válvula Check ','AC',7),(185,'Limpieza de Filtros De Aire ','AC',7),(186,'Cambio de Filtro de Aceite de Motor ','AC',7),(187,'Cambio de Filtro de Aceite Hidráulico ','AC',7),(188,'Cambio de Filtro de Aceite de Compresor ','AC',7),(189,'Cambio de Filtro de Aire ','AC',7),(190,'Cambio de Filtros Colector de Polvo','AC',7),(191,'Limpieza de Filtros Colector de Polvo ','AC',7),(192,'Cambio de Sensores ','AC',7),(193,'Cambio de Arnés ','AC',7),(194,'Calibración de Sensores ','AC',7),(195,'Chequeo Sistema Neumático ','AC',7),(196,'Cambio de Módulos Eléctricos  ','AC',7),(197,'Cambio de Fusibles ','AC',7),(198,'Cambio de Baterías ','AC',7),(199,'Cambio de Presoswitchs ','AC',7),(200,'Cambio de Solenoides ','AC',7),(201,'Limpieza de Sensores','AC',7),(202,'Tensado de Cadenas de Tren Rodante ','AC',7),(203,'Cambio de Rolos Superiores Tren Rodante ','AC',7),(204,'Cambio de Rolos Inferiores Tren Rodante','AC',7),(205,'Cambio de Rueda GuíaTren Rodante  ','AC',7),(206,'Cambio de Mando Final ','AC',7),(207,'Tenzado de Cables de Avance ','AC',7),(208,'Tensado de Cables de Holdback ','AC',7),(209,'Cambio de Poleas Cables de Avance ','AC',7),(210,'Cambio de Sprocket de Holdback ','AC',7),(211,'Cambio de Mangueras Hidráulicas ','AC',7),(212,'Cambio de Mangueras Neumáticas ','AC',7),(213,'Cambio de Vidrios ','AN',7),(214,'Cambio de Guías Metálicas  de Viga ','AC',7),(215,'Cambio de Zapatas de Oruga ','AC',7),(216,'Retorqueo de Zapatas de Orugas ','AC',7),(217,'Recarga de Fluidos ','AC',7),(218,'Cambio de Baterías ','AC',7),(219,'Engrase de Equipo ','AC',7),(220,'Toma de Muestras ','AC',7),(221,'Ejecución de BKL ','AC',7),(222,'Inspección Perforadora 901 ','AC',7),(223,'Inspección Perforadora 903 ','AC',7),(224,'Inspección Perforadora 905 ','AC',7),(225,'Inspección Perforadora 906 ','AC',7),(226,'Regulación de Cmpresor ','AC',7),(227,'Reparación de Válvula UL-88 ','AC',7),(228,'Regulación de Intercambiador de Barras ','AC',7),(229,'Limpieza de Difusor de Grasa de Barras','AC',7),(230,'Limpieza de Mangon de Succión primario ','AC',7);
/*!40000 ALTER TABLE `tareas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_back`
--

DROP TABLE IF EXISTS `tbl_back`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_back` (
  `backId` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) NOT NULL,
  `tarea_descrip` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `horash` int(11) DEFAULT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `back_duracion` int(11) NOT NULL,
  `back_canth` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `idcomponenteequipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`backId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_back`
--

LOCK TABLES `tbl_back` WRITE;
/*!40000 ALTER TABLE `tbl_back` DISABLE KEYS */;
INSERT INTO `tbl_back` VALUES (16,10,'4','2018-04-27',NULL,'AN',60,0,6,NULL),(17,8,'10','2018-04-29',NULL,'AN',120,0,6,NULL),(18,5,'10','2018-05-02',NULL,'AN',20,0,6,NULL),(19,6,'6','2018-05-04',NULL,'AN',15,0,6,NULL),(20,7,'8','2018-05-02',NULL,'AN',50,0,6,NULL),(21,4,'4','2018-05-11',NULL,'AN',20,0,6,NULL),(22,10,'5','2018-05-01',NULL,'AN',30,0,6,NULL),(23,4,'5','2018-05-31',NULL,'AN',80,0,6,NULL),(24,4,'5','2018-10-31',NULL,'C',650,0,6,NULL),(25,11,'9','2018-06-28',NULL,'C',60,0,6,NULL),(26,1,'3','2018-08-30',NULL,'C',10,0,6,NULL),(27,13,'124','0000-00-00',NULL,'C',250,0,7,NULL),(28,1,'1','0000-00-00',NULL,'C',1233,0,6,NULL),(29,9,'111','2018-10-25',NULL,'C',200,0,6,NULL),(30,13,'125','2018-10-09',NULL,'AN',2,0,7,NULL),(31,1,'10','2018-10-18',NULL,'C',45,0,6,NULL),(32,1,'15','2018-10-18',NULL,'C',45,0,6,5),(33,1,'26','2018-10-21',NULL,'C',60,0,6,343);
/*!40000 ALTER TABLE `tbl_back` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detanotapedido`
--

DROP TABLE IF EXISTS `tbl_detanotapedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detanotapedido` (
  `id_detaNota` int(11) NOT NULL AUTO_INCREMENT,
  `id_notaPedido` int(11) DEFAULT NULL,
  `artId` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `provid` int(11) DEFAULT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `fechaEntregado` date DEFAULT NULL,
  `remito` int(11) DEFAULT NULL,
  `estado` varchar(4) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_detaNota`),
  KEY `id_notaPedido` (`id_notaPedido`),
  CONSTRAINT `tbl_detanotapedido_ibfk_1` FOREIGN KEY (`id_notaPedido`) REFERENCES `tbl_notapedido` (`id_notaPedido`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detanotapedido`
--

LOCK TABLES `tbl_detanotapedido` WRITE;
/*!40000 ALTER TABLE `tbl_detanotapedido` DISABLE KEYS */;
INSERT INTO `tbl_detanotapedido` VALUES (65,61,2,13,2,'2018-06-27','2018-06-27',1,'P'),(69,64,2,12,1,'2018-07-22','2018-07-22',1234,'E'),(70,65,11,2,1,'2018-10-16','2018-10-16',1,'P'),(71,65,11,6,2,'2018-10-15','2018-10-15',1,'P'),(72,66,22,2,2,'2018-10-26','2018-10-26',1,'P'),(73,66,71,1,3,'2018-10-15','2018-10-15',1,'P'),(74,67,16,1,1,'2018-10-15','2018-10-15',1,'P'),(75,68,12,6,2,'2018-10-13','2018-10-13',1,'P'),(76,69,185,12,2,'2018-10-29','2018-10-29',1,'P'),(77,70,10,10,3,'2018-10-29','2018-10-29',1,'P'),(78,70,10,25,2,'2018-10-30','2018-10-30',1,'P'),(79,71,12,1,5,'2018-11-02','2018-11-02',1,'P');
/*!40000 ALTER TABLE `tbl_detanotapedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detavaledescarga`
--

DROP TABLE IF EXISTS `tbl_detavaledescarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detavaledescarga` (
  `detavaledid` int(11) NOT NULL AUTO_INCREMENT,
  `valedid` int(11) DEFAULT NULL,
  `herrId` int(11) DEFAULT NULL,
  `observa` varchar(255) DEFAULT NULL,
  `dest` varchar(255) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`detavaledid`),
  KEY `equipid` (`herrId`) USING BTREE,
  KEY `valedid` (`valedid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detavaledescarga`
--

LOCK TABLES `tbl_detavaledescarga` WRITE;
/*!40000 ALTER TABLE `tbl_detavaledescarga` DISABLE KEYS */;
INSERT INTO `tbl_detavaledescarga` VALUES (1,1,4,NULL,NULL,6),(2,2,103,NULL,NULL,7);
/*!40000 ALTER TABLE `tbl_detavaledescarga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_detavalesalida`
--

DROP TABLE IF EXISTS `tbl_detavalesalida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_detavalesalida` (
  `detavid` int(10) NOT NULL AUTO_INCREMENT,
  `valesid` int(11) DEFAULT NULL,
  `herrId` int(10) DEFAULT NULL,
  `observa` text,
  `dest` varchar(255) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`detavid`),
  KEY `equiid` (`herrId`) USING BTREE,
  KEY `valesid` (`valesid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detavalesalida`
--

LOCK TABLES `tbl_detavalesalida` WRITE;
/*!40000 ALTER TABLE `tbl_detavalesalida` DISABLE KEYS */;
INSERT INTO `tbl_detavalesalida` VALUES (1,1,8,NULL,NULL,6),(2,1,1,NULL,NULL,6),(3,1,2,NULL,NULL,6),(4,5,4,NULL,NULL,6),(5,6,0,NULL,NULL,0),(6,6,0,NULL,NULL,0),(7,6,0,NULL,NULL,0),(8,6,4,NULL,NULL,0),(15,10,103,NULL,NULL,7),(16,11,54,NULL,NULL,0),(17,11,23,NULL,NULL,0),(18,11,2,NULL,NULL,0),(19,15,2,NULL,NULL,6),(20,15,17,NULL,NULL,6),(21,15,15,NULL,NULL,6),(22,16,16,NULL,NULL,6),(23,17,91,NULL,NULL,6),(24,17,5,NULL,NULL,6),(25,18,9,NULL,NULL,6),(26,18,59,NULL,NULL,6),(27,19,6,NULL,NULL,6),(28,19,7,NULL,NULL,6),(29,20,4,NULL,NULL,6),(30,21,20,NULL,NULL,6),(31,21,83,NULL,NULL,6),(32,22,20,NULL,NULL,6),(33,22,83,NULL,NULL,6),(34,23,56,NULL,NULL,6),(35,24,20,NULL,NULL,6),(36,25,23,NULL,NULL,6),(37,26,27,NULL,NULL,6),(38,26,29,NULL,NULL,6),(39,27,5,NULL,NULL,6),(40,27,29,NULL,NULL,6),(41,28,0,NULL,NULL,6);
/*!40000 ALTER TABLE `tbl_detavalesalida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estado`
--

DROP TABLE IF EXISTS `tbl_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estado` (
  `estadoid` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`estadoid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado`
--

LOCK TABLES `tbl_estado` WRITE;
/*!40000 ALTER TABLE `tbl_estado` DISABLE KEYS */;
INSERT INTO `tbl_estado` VALUES (1,'ACTIVO','AC'),(2,'TRANSITO','TR'),(3,'REPARACION','RE'),(4,'COMODATO','CO'),(5,'CURSO','C'),(6,'INACTIVO','IN'),(7,'SOLICITADO','S'),(8,'TAREA REALIZADA','RE'),(9,'TERMINADO PARCIAL','TE'),(10,'TERMINADO','T'),(11,'ENTREGADO','E'),(12,'PEDIDO','P'),(13,'ASIGNADO','As'),(14,'ANULADO','AN');
/*!40000 ALTER TABLE `tbl_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estanteria`
--

DROP TABLE IF EXISTS `tbl_estanteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estanteria` (
  `id_estanteria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fila` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `codigo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_estanteria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estanteria`
--

LOCK TABLES `tbl_estanteria` WRITE;
/*!40000 ALTER TABLE `tbl_estanteria` DISABLE KEYS */;
INSERT INTO `tbl_estanteria` VALUES (1,'estanteria 1','1','dd1',6),(2,'estanteria 2','1','dd2',6),(3,'estanteria 3','1','dd3',6),(4,'estanteria 4','1','dd4',6),(5,'estanteria 5','1','d5',6),(6,'Estantería de prueba 01','12','ESTANTERIA TEST 01',6),(7,'','6','E1 ',7);
/*!40000 ALTER TABLE `tbl_estanteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_listarea`
--

DROP TABLE IF EXISTS `tbl_listarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_listarea` (
  `id_listarea` int(11) NOT NULL AUTO_INCREMENT,
  `id_orden` int(11) NOT NULL,
  `tareadescrip` varchar(5000) COLLATE utf8_spanish_ci NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_listarea`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_listarea`
--

LOCK TABLES `tbl_listarea` WRITE;
/*!40000 ALTER TABLE `tbl_listarea` DISABLE KEYS */;
INSERT INTO `tbl_listarea` VALUES (1,1,'tarea 12',NULL,NULL,'IN'),(2,1,'tarea1212',NULL,NULL,'C'),(3,1,'tarea130',NULL,NULL,'IN'),(4,1,'tareanueva1',NULL,NULL,'C'),(5,1,'tarea gemma1',NULL,NULL,'1'),(6,1,'TAREA2',NULL,NULL,'6'),(7,1,'TAREA 25',NULL,NULL,'6'),(8,1,'nombre de tarea 1 ',NULL,NULL,'5'),(9,1,'nuevatrea30',NULL,NULL,'5'),(10,1,'tarea de gemma',NULL,NULL,'5'),(11,1,'nueva tarea 34 ',NULL,NULL,'5'),(12,1,'nueva tarea 50',3,NULL,'5'),(13,0,'nueva tares 45 45',NULL,NULL,'5'),(14,1,'nueva tarea12',1,NULL,'6'),(15,1,'gemmma belen tarea',3,NULL,'5'),(16,1,'nueva tare ',NULL,NULL,'5'),(17,1,'nueva tarea ',NULL,NULL,'5'),(18,1,'TAREA 10 ',NULL,NULL,'5'),(19,1,'hhu',NULL,NULL,'5'),(20,1,'hyhy12',NULL,NULL,'5'),(21,1,'dedede',NULL,NULL,'5'),(22,1,'genemmma ',NULL,NULL,'6'),(23,1,'gemma',NULL,NULL,'6'),(24,1,'fefefef',NULL,NULL,'5'),(25,1,'fefeenueva ',NULL,NULL,'6'),(26,1,'gemama',NULL,NULL,'5'),(27,1,'geegegegegeg',NULL,NULL,'5'),(28,1,'nueva traea gemma',NULL,NULL,'6'),(29,1,'gemma ingresi ntarea',NULL,NULL,'6'),(30,1,'hola ',NULL,NULL,'6'),(31,1,'vuev tarea maruicio',NULL,NULL,'5'),(32,1,'tarea AHORA SI',2,NULL,'5'),(33,1,'TAREA SI12',1,NULL,'5'),(34,1,'TAREA 100',2,NULL,'5'),(35,8,'sASA',NULL,NULL,'C'),(36,8,'asSa',NULL,NULL,'C'),(37,8,'ASA',NULL,NULL,'C'),(38,22,'desarme',NULL,NULL,'C'),(39,22,'limpieza ',NULL,NULL,'C'),(40,22,'armado',1,NULL,'C'),(41,22,'limpieza',2,NULL,'C'),(42,22,'desarme',3,NULL,'C'),(43,16,'DDFDS',NULL,NULL,'C'),(44,16,'SDFSF',3,'2017-12-11','C'),(45,16,'nueva tarea: Limpieza ',1,'2017-12-11','RE'),(46,17,'jadfñjdskjfd',NULL,NULL,'C'),(47,16,'saadsa',6,'2017-12-13','C'),(48,16,'sadadasd',NULL,NULL,'C'),(49,16,'sdadasdsa',3,NULL,'C'),(50,16,'1111',NULL,NULL,'C'),(51,16,'2222',3,NULL,'C'),(52,16,'dedede',1,NULL,'RE'),(53,16,'gegeg',1,NULL,'RE'),(54,21,'tarea 1',1,NULL,'C'),(55,21,'tarea2',3,NULL,'C'),(56,21,'tarea3',NULL,NULL,'C'),(57,21,'tarea4',NULL,NULL,'C'),(58,21,'tarea6',1,NULL,'RE'),(59,37,'dsadadad',1,'2017-12-20','C'),(60,34,'fsdfsfsd',1,'2017-12-29','C'),(61,34,'qwewqeqw',1,'2017-12-29','C'),(62,47,'sdadsad',NULL,NULL,'C'),(63,47,'sadad',NULL,NULL,'C'),(64,47,'dasdd',NULL,NULL,'RE'),(65,47,'dthdhgd',NULL,NULL,'RE'),(66,73,'dffgrrb',NULL,NULL,'C'),(67,73,'geegtgt',5,NULL,'C'),(68,73,'evefvev',1,NULL,'C'),(69,532,'ssss',NULL,NULL,'RE'),(70,532,'subtarea 1',NULL,NULL,'RE'),(71,532,'subtarea 2',NULL,NULL,'IN'),(72,532,'bababbaa',NULL,NULL,'C'),(73,220,'tarea test',NULL,NULL,'C'),(74,535,'ttajalads',NULL,NULL,'C'),(75,535,'afasdfadsf',NULL,'2018-06-22','C'),(76,535,'tareaaaaa',3,NULL,'RE'),(77,535,'tarea 3',2,NULL,'C'),(78,535,'tareaaaa 4',NULL,'2018-06-23','C'),(79,536,'tarea 1',NULL,'2018-06-23','RE'),(80,536,'tarea 2',3,'2018-06-29','C'),(81,536,'aaaa',2,'2018-06-23','C'),(82,538,'tarea 1 asociada a OT id 538',NULL,NULL,'C'),(83,539,'tarea asociada a la OT 539',3,NULL,'C'),(84,539,'tarea 2 asociada a la OT 539',3,NULL,'C'),(85,539,'tarea 3 ot 539',NULL,NULL,'C'),(86,540,'hhhhhh',NULL,NULL,'C'),(87,541,'tarea ot 540',2,'2018-06-30','C'),(88,158,'kkkkk',2,'2018-08-30','RE'),(89,23,'Tarea 1',NULL,NULL,'IN'),(90,23,'Tarea 2',NULL,NULL,'RE'),(91,23,'Tarea3',1,'0000-00-00','C'),(92,510,'Tarea3',NULL,NULL,'IN'),(93,510,'Tarea de Prueba',NULL,NULL,'IN'),(94,510,'nueva tarea',1,'2018-11-10','RE'),(95,510,'fer',NULL,NULL,'IN'),(96,510,'tarea 03',1,'2018-10-04','RE'),(97,563,'tarea 03b',NULL,NULL,'C'),(98,568,'tarea de test',NULL,NULL,'C'),(99,510,'tarea test',1,'2018-10-05','IN'),(100,510,'asdasdasd',NULL,NULL,'IN'),(101,576,'rgreghfgjfhgjhjkhjk',NULL,NULL,'C'),(102,576,'asdasdasd',NULL,NULL,'C'),(103,576,'rgreghfgjfhgjhjkhjk',NULL,NULL,'C'),(104,545,'Tarea3',NULL,NULL,'C'),(105,510,'nueva tarea fer',NULL,NULL,'IN'),(106,510,'nuevaaaaa',NULL,NULL,'IN'),(107,510,'holis',NULL,NULL,'IN'),(108,510,'tarea 11222',NULL,NULL,'IN'),(109,510,'Tarea 999',-1,'0000-00-00','IN'),(110,510,'tarea 8888',NULL,NULL,'RE'),(111,510,'holis fer',1,NULL,'IN'),(112,510,'estas ahi???',NULL,'0000-00-00','IN'),(113,549,'Cambio de vidrio lateral de cabina ',NULL,NULL,'RE');
/*!40000 ALTER TABLE `tbl_listarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lote`
--

DROP TABLE IF EXISTS `tbl_lote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_lote` (
  `loteid` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `cantidad` varchar(255) DEFAULT NULL,
  `artId` int(11) DEFAULT NULL,
  `lotestado` char(4) DEFAULT NULL,
  `depositoid` int(11) DEFAULT NULL,
  `usrId` int(11) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`loteid`),
  KEY `depositoid` (`depositoid`),
  KEY `artId` (`artId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lote`
--

LOCK TABLES `tbl_lote` WRITE;
/*!40000 ALTER TABLE `tbl_lote` DISABLE KEYS */;
INSERT INTO `tbl_lote` VALUES (1,'cod-0001','2017-11-06','181',2,'AC',1,NULL,6),(2,'cod-002','2018-10-01','21',10,'AC',1,NULL,6),(3,'Cod-0003','2018-10-01','11',11,'AC',2,NULL,6),(4,'cod-006','2018-10-25','90',10,'AC',2,NULL,6),(7,'12345678','2018-10-27','50',175,'AC',2,NULL,6),(8,'12345678','2018-10-27','25',175,'AC',1,NULL,6);
/*!40000 ALTER TABLE `tbl_lote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notapedido`
--

DROP TABLE IF EXISTS `tbl_notapedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_notapedido` (
  `id_notaPedido` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `id_ordTrabajo` int(11) NOT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_notaPedido`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notapedido`
--

LOCK TABLES `tbl_notapedido` WRITE;
/*!40000 ALTER TABLE `tbl_notapedido` DISABLE KEYS */;
INSERT INTO `tbl_notapedido` VALUES (61,'2018-06-27',25,6),(64,'2018-07-22',1,6),(65,'2018-10-12',164,6),(66,'2018-10-12',161,6),(67,'2018-10-12',164,6),(68,'2018-10-12',166,6),(69,'2018-10-29',160,6),(70,'2018-10-29',160,6),(71,'2018-10-29',160,6);
/*!40000 ALTER TABLE `tbl_notapedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_preventivoherramientas`
--

DROP TABLE IF EXISTS `tbl_preventivoherramientas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_preventivoherramientas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prevId` int(11) DEFAULT NULL,
  `herrId` int(11) DEFAULT NULL,
  `cantidad` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prevId` (`prevId`),
  KEY `tbl_preventivoherramientas_ibfk_2` (`herrId`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_preventivoherramientas`
--

LOCK TABLES `tbl_preventivoherramientas` WRITE;
/*!40000 ALTER TABLE `tbl_preventivoherramientas` DISABLE KEYS */;
INSERT INTO `tbl_preventivoherramientas` VALUES (1,22,20,1,6),(2,23,1,2,0),(3,23,2,20,0),(4,24,1,2,0),(5,26,1,4,6),(6,26,2,5,6),(7,26,4,1,6),(11,1,1,11,6),(12,1,4,22,6),(13,1,5,33,6),(14,1,2,44,6),(15,1,1,1,6),(16,1,2,2,6),(17,1,5,3,6),(18,1,1,1,6),(19,1,2,2,6),(20,1,5,3,6),(21,1,1,1,6),(22,1,2,2,6),(23,1,5,3,6),(24,1,4,2,6),(25,1,4,2,6),(26,41,1,11,6),(27,41,2,22,6),(28,42,4,2,6),(29,55,1,1111,6),(30,55,2,222,6),(31,42,1,3,3),(32,NULL,1,0,6),(33,NULL,2,0,6),(34,NULL,4,0,6),(35,NULL,2,0,6),(36,NULL,1,0,6),(37,NULL,5,0,6),(38,NULL,1,45,6),(39,NULL,2,33,6),(40,NULL,5,22,6),(62,43,4,333,6),(63,43,1,55,6),(67,56,2,1,6),(68,56,4,2,6),(79,47,1,15,6),(80,128,4,1,6),(81,129,93,1,7),(82,134,4,22,6),(83,135,4,22,6),(87,136,2,2222,6),(90,141,2,34,6),(91,148,2,1,6);
/*!40000 ALTER TABLE `tbl_preventivoherramientas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_preventivoinsumos`
--

DROP TABLE IF EXISTS `tbl_preventivoinsumos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_preventivoinsumos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prevId` int(11) DEFAULT NULL,
  `artId` int(11) DEFAULT NULL,
  `cantidad` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prevId` (`prevId`),
  KEY `artId` (`artId`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_preventivoinsumos`
--

LOCK TABLES `tbl_preventivoinsumos` WRITE;
/*!40000 ALTER TABLE `tbl_preventivoinsumos` DISABLE KEYS */;
INSERT INTO `tbl_preventivoinsumos` VALUES (1,22,3,45,6),(2,23,1,15,6),(3,23,2,20,6),(4,24,3,20,6),(5,26,1,5,6),(6,26,2,15,6),(7,26,3,45,6),(8,27,1,11,6),(9,27,2,22,6),(10,1,1,1,6),(11,1,2,2,6),(12,1,3,3,6),(13,55,1,111,6),(14,55,2,222,6),(15,42,1,20,6),(16,42,3,15,6),(17,42,4,35,6),(29,43,1,11,6),(30,43,3,45,6),(33,56,1,2,6),(56,47,1,25,6),(57,128,21,1,6),(58,134,2,22,6),(59,135,2,22,6),(63,136,173,22,6),(65,141,2,50,6),(66,148,18,2,6);
/*!40000 ALTER TABLE `tbl_preventivoinsumos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipoordentrabajo`
--

DROP TABLE IF EXISTS `tbl_tipoordentrabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipoordentrabajo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_orden` int(11) NOT NULL,
  `descripcion` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`,`tipo_orden`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipoordentrabajo`
--

LOCK TABLES `tbl_tipoordentrabajo` WRITE;
/*!40000 ALTER TABLE `tbl_tipoordentrabajo` DISABLE KEYS */;
INSERT INTO `tbl_tipoordentrabajo` VALUES (1,1,'Orden de Trabajo'),(2,2,'Solicitud de servicio'),(3,3,'Preventivo'),(4,4,'Backlog'),(5,5,'Predictivo'),(6,6,'Correctivo Programado');
/*!40000 ALTER TABLE `tbl_tipoordentrabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_trazacomponente`
--

DROP TABLE IF EXISTS `tbl_trazacomponente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_trazacomponente` (
  `id_trazacomponente` int(11) NOT NULL AUTO_INCREMENT,
  `idcomponenteequipo` int(11) NOT NULL,
  `id_estanteria` int(11) DEFAULT NULL,
  `fila` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `fecha_Entrega` datetime DEFAULT NULL,
  `ult_recibe` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `estado` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `observaciones` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `usrId` int(11) DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_trazacomponente`),
  KEY `idcomponenteequipo` (`idcomponenteequipo`),
  KEY `id_estanteria` (`id_estanteria`),
  KEY `usrId` (`usrId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_trazacomponente`
--

LOCK TABLES `tbl_trazacomponente` WRITE;
/*!40000 ALTER TABLE `tbl_trazacomponente` DISABLE KEYS */;
INSERT INTO `tbl_trazacomponente` VALUES (1,71,1,2,'2017-10-05 07:29:05','2017-10-05 07:31:25','Balderramo','E','se lleva balderrama para reparar bomba inyectora',5,6),(2,72,2,3,'2017-10-05 07:29:05','2017-10-05 07:29:05','Sr Perez','REC','recibo radiador para reparar',5,6),(3,3,1,1,'2017-12-02 07:12:21','2017-12-02 07:12:21','pedro perez','C','sadadsa',1,6),(4,3,1,1,'2017-12-02 07:12:53','2017-12-02 07:12:53','motores balderramo','C','dasdasd',1,6),(5,0,6,6,'2018-07-03 00:39:20','2018-07-03 00:39:20','qwerty','C','qwerty',1,6);
/*!40000 ALTER TABLE `tbl_trazacomponente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_unidadmedida`
--

DROP TABLE IF EXISTS `tbl_unidadmedida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_unidadmedida` (
  `id_unidadmedida` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(3000) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_unidadmedida`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_unidadmedida`
--

LOCK TABLES `tbl_unidadmedida` WRITE;
/*!40000 ALTER TABLE `tbl_unidadmedida` DISABLE KEYS */;
INSERT INTO `tbl_unidadmedida` VALUES (1,'Unidades','AN',6),(2,'Litro','AC',6),(3,'Metro','AC',6),(4,'Kg','AC',6),(5,'m2','AN',6),(6,'m3','AN',6),(7,'caja','AC',6);
/*!40000 ALTER TABLE `tbl_unidadmedida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_valedesacarga`
--

DROP TABLE IF EXISTS `tbl_valedesacarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_valedesacarga` (
  `valedid` int(11) NOT NULL AUTO_INCREMENT,
  `valedfecha` datetime DEFAULT NULL,
  `usrId` int(11) DEFAULT NULL,
  `respons` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `dest` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`valedid`),
  KEY `usrId` (`usrId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_valedesacarga`
--

LOCK TABLES `tbl_valedesacarga` WRITE;
/*!40000 ALTER TABLE `tbl_valedesacarga` DISABLE KEYS */;
INSERT INTO `tbl_valedesacarga` VALUES (1,'2018-07-02 00:00:00',1,'Hugo G','Destino 01 prueba',6),(2,'2018-10-08 00:00:00',18,'Rodriguez Guillermo ','mina chinchillas ',7);
/*!40000 ALTER TABLE `tbl_valedesacarga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_valesalida`
--

DROP TABLE IF EXISTS `tbl_valesalida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_valesalida` (
  `valesid` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `usrId` int(10) DEFAULT NULL,
  `respons` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `dest` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`valesid`),
  KEY `repid` (`usrId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_valesalida`
--

LOCK TABLES `tbl_valesalida` WRITE;
/*!40000 ALTER TABLE `tbl_valesalida` DISABLE KEYS */;
INSERT INTO `tbl_valesalida` VALUES (1,'2017-11-14',NULL,'Roberto Pérez','Obra 1',6),(2,'2017-11-14',NULL,'Francisco Rodriguez','Obra 2',6),(4,'2017-11-14',5,NULL,NULL,6),(5,'2018-07-02',1,'hugo G','destino 01 prueba',6),(6,'2018-09-19',1,NULL,NULL,0),(10,'2018-10-08',18,'Rodriguez Guillermo ','mina chinchillas ',7),(15,'2018-10-20',1,NULL,NULL,6),(16,'2018-10-20',1,NULL,NULL,6),(17,'2018-10-20',1,NULL,NULL,6),(18,'2018-10-20',1,NULL,NULL,6),(19,'2018-10-20',1,NULL,NULL,6),(20,'2018-10-20',1,NULL,NULL,6),(21,'2018-10-20',1,NULL,NULL,6),(22,'2018-10-20',1,NULL,NULL,6),(23,'2018-10-21',1,NULL,NULL,6),(24,'2018-10-21',1,NULL,NULL,6),(25,'2018-10-21',1,NULL,NULL,6),(26,'2018-10-21',1,NULL,NULL,6),(27,'2018-10-23',1,NULL,NULL,6),(28,'2018-11-05',1,'','',6);
/*!40000 ALTER TABLE `tbl_valesalida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocuenta`
--

DROP TABLE IF EXISTS `tipocuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocuenta` (
  `tipocuentaid` int(11) NOT NULL AUTO_INCREMENT,
  `tipocuentadescrip` varchar(255) DEFAULT NULL,
  `tipocuentamonto` varchar(50) DEFAULT NULL,
  `tipocuentausuarios` varchar(50) DEFAULT NULL,
  `tipocuentaactivos` varchar(50) DEFAULT NULL,
  `tipocuentaempresas` varchar(50) DEFAULT NULL,
  `apps` varchar(2) DEFAULT NULL,
  `modulo_alerta` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`tipocuentaid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocuenta`
--

LOCK TABLES `tipocuenta` WRITE;
/*!40000 ALTER TABLE `tipocuenta` DISABLE KEYS */;
INSERT INTO `tipocuenta` VALUES (1,'GO','0','10','100','1','NO','NO'),(2,'PRO','100','50','1000','3','SI','SI'),(3,'CORPORATE','300','ILIMITADO','ILIMITADO','ILIMITADO','SI','SI');
/*!40000 ALTER TABLE `tipocuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad_industrial`
--

DROP TABLE IF EXISTS `unidad_industrial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidad_industrial` (
  `id_unidad` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_unidad`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad_industrial`
--

LOCK TABLES `unidad_industrial` WRITE;
/*!40000 ALTER TABLE `unidad_industrial` DISABLE KEYS */;
INSERT INTO `unidad_industrial` VALUES (1,'veladero',6),(2,'nueva unidad insdutrial 2',6),(3,'MINA CHINCHILLAS',7),(4,'La Laja',2),(5,'unidad agregada 1',6),(6,'unidad agregada 2',6),(7,'unidad agregada 3',6),(8,'unidad agregada 4',6),(9,'unidad agregada 5',6),(10,'unidadagregada 6',6),(11,'La laja',6);
/*!40000 ALTER TABLE `unidad_industrial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad_tiempo`
--

DROP TABLE IF EXISTS `unidad_tiempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidad_tiempo` (
  `id_unidad` int(11) NOT NULL AUTO_INCREMENT,
  `unidaddescrip` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_unidad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad_tiempo`
--

LOCK TABLES `unidad_tiempo` WRITE;
/*!40000 ALTER TABLE `unidad_tiempo` DISABLE KEYS */;
INSERT INTO `unidad_tiempo` VALUES (1,'minutos'),(2,'horas'),(3,'dias');
/*!40000 ALTER TABLE `unidad_tiempo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarioasempresa`
--

DROP TABLE IF EXISTS `usuarioasempresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarioasempresa` (
  `empresaid` int(11) NOT NULL,
  `usrId` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `tipo` tinyint(1) NOT NULL,
  `grpId` int(11) NOT NULL,
  PRIMARY KEY (`empresaid`,`usrId`),
  KEY `usrId` (`usrId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarioasempresa`
--

LOCK TABLES `usuarioasempresa` WRITE;
/*!40000 ALTER TABLE `usuarioasempresa` DISABLE KEYS */;
INSERT INTO `usuarioasempresa` VALUES (6,1,NULL,1,0),(6,17,'2018-09-18 00:00:00',1,0),(7,16,'2018-09-17 00:00:00',1,0),(7,18,'2018-09-21 00:00:00',1,7),(7,19,'2018-09-12 00:00:00',1,1);
/*!40000 ALTER TABLE `usuarioasempresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'planner_assetcloudtest'
--

--
-- Dumping routines for database 'planner_assetcloudtest'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-07  3:24:29
