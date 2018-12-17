CREATE DATABASE  IF NOT EXISTS `jobs24_assetcloud` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jobs24_assetcloud`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jobs24_assetcloud
-- ------------------------------------------------------
-- Server version	5.6.31

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
  `estado` varchar(45) NOT NULL,
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`depositoId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abmdeposito`
--

LOCK TABLES `abmdeposito` WRITE;
/*!40000 ALTER TABLE `abmdeposito` DISABLE KEYS */;
INSERT INTO `abmdeposito` VALUES (1,'Depósito Nro A','Avenida Libertador 1264 Oeste',NULL,NULL,NULL,'','AC',2),(2,'Depósito Nro 2','Av. Central 18 este',NULL,NULL,NULL,NULL,'AC',6),(3,'Depósito Nro 2','Av. Central 102 este',NULL,NULL,NULL,NULL,'AC',2),(4,'testa','testa',NULL,NULL,NULL,NULL,'AN',2);
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
  `estado` varchar(45) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`provid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abmproveedores`
--

LOCK TABLES `abmproveedores` WRITE;
/*!40000 ALTER TABLE `abmproveedores` DISABLE KEYS */;
INSERT INTO `abmproveedores` VALUES (1,' Don Perez','2023339814','dsadasdasd','2645677','permauricio@gmail.com','8','AC',2),(2,'Trazalog','20-54545454-9','Lib. Gral S Martin 1890','15555555','soporte@trazalog.com','8','AC',2),(3,'aaa2','aaa2','aaa2','1234','aaa2',NULL,'AN',2),(4,'Proveedor test','26791164292','Presidente roca sn','4230329','prov.test@trazalog.com',NULL,'AN',2);
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
  `estado` varchar(4) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `cliRazonSocial` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`cliId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admcustomers`
--

LOCK TABLES `admcustomers` WRITE;
/*!40000 ALTER TABLE `admcustomers` DISABLE KEYS */;
INSERT INTO `admcustomers` VALUES (1,'Daniel','Osvaldo','31324200','1984-05-01','1','Av La Humareda 12','','','','13.png',10,30,'#00a65a','AC',2,'Daniel Osvaldo'),(2,'Mariana','Romero','31324205','2016-05-04','14','Av. Simpre Viva 123','','','','14.png',11,15,'#f39c12','AC',2,'Mariana Romero'),(3,'Mauricio','perez','23339814','2016-06-01','17','dd','26465','026457070785','permaucirio@gmail.com','17.png',10,30,'#00a65a','AC',2,'Master of Ventas'),(15,'Patricia','Moreno','45632145','2016-05-19','15','Rogelio Funes Mori y No Fue Corner','','','','15.png',10,10,'#dd4b39','AC',2,'Patricia Romero'),(16,'Homero','Perez','45888882','2000-05-10','16','Rivadavia 124s','','','','16.png',12,20,'#00a65a','AC',2,'Homero'),(31,'747','747','747',NULL,NULL,'747','747',NULL,'747',NULL,NULL,30,NULL,'AC',2,'747');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Area 01',2,'AC'),(2,'gemma area 1',2,'AN'),(3,'Industrial',2,'AC'),(5,'Area 02',2,'AC'),(6,'agregar área',2,'AN'),(7,'Area c-01',2,'AN'),(8,'747',2,'AN');
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
  `artIsByBox` bit(1) NOT NULL,
  `artCantBox` int(11) DEFAULT NULL,
  `artMarginIsPorcent` bit(1) NOT NULL,
  `artEstado` varchar(2) NOT NULL DEFAULT 'AC',
  `famId` int(11) NOT NULL,
  `unidadmedida` int(11) NOT NULL,
  `punto_pedido` int(11) DEFAULT NULL,
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`artId`),
  UNIQUE KEY `artBarCode` (`artBarCode`) USING BTREE,
  UNIQUE KEY `artDescription` (`artDescription`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'FERR - 0001','caño cuadrado',0.00,0.00,'',0,'\0','AC',1,1,25,2),(2,'FERRE - 002','Electrodos',0.00,0.00,'',0,'\0','AC',1,3,50,2),(3,'test-02','rallador 02',0.00,0.00,'',0,'\0','AC',2,1,111,2),(4,'00001-09988','saddasd',0.00,0.00,'\0',0,'\0','AN',1,1,23,6),(8,'test03','sfgdfgdfg',0.00,0.00,'\0',0,'\0','AN',1,2,0,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignausuario`
--

LOCK TABLES `asignausuario` WRITE;
/*!40000 ALTER TABLE `asignausuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignausuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `componenteequipo`
--

DROP TABLE IF EXISTS `componenteequipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `componenteequipo` (
  `idcomponenteequipo` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipo` int(11) DEFAULT NULL,
  `id_componente` int(11) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `codigo` varchar(11) NOT NULL,
  `estado` varchar(4) DEFAULT NULL,
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`idcomponenteequipo`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `componenteequipo`
--

LOCK TABLES `componenteequipo` WRITE;
/*!40000 ALTER TABLE `componenteequipo` DISABLE KEYS */;
INSERT INTO `componenteequipo` VALUES (6,1,1,NULL,'cod compone','AC',2),(16,1,2,NULL,'cod compone','AC',2),(71,4,12,NULL,'codigoXXX c','AC',2);
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
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_componente`),
  KEY `id_equipo` (`id_equipo`),
  KEY `marcaid` (`marcaid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `componentes`
--

LOCK TABLES `componentes` WRITE;
/*!40000 ALTER TABLE `componentes` DISABLE KEYS */;
INSERT INTO `componentes` VALUES (1,'IT-0001-04',1,'2017-11-06 00:00:00',NULL,1,'',2),(2,'filstro RS 224',2,'2017-11-08 00:00:00',NULL,1,'',2),(3,'Cargadorea komatsu CDM812',2,'2017-12-02 00:00:00',NULL,1,'',2),(12,'xxx',2,'2018-01-16 11:23:31','eqweqeqeqe',1,'assets/filesequipos/12.pdf',2),(13,'MOTOR DIESEL',2,'2018-01-16 11:30:15','',4,'assets/filesequipos/13.pdf',2),(15,'FILTRO DE COMBUSTIBLE ',4,'2018-01-16 11:33:31','',4,'assets/filesequipos/15.pdf',2),(16,'TANQUE DE COMBUSTIBLE',4,'2018-01-16 11:34:19','',4,'assets/filesequipos/16.pdf',2),(17,'MOTOR DE ARRANQUE',4,'2018-01-16 11:35:50','',4,'assets/filesequipos/17.pdf',2),(18,'RADIADOR',4,'2018-01-16 11:36:07','',4,'assets/filesequipos/18.pdf',2),(19,'SENSOR DE TEMPERATURA',4,'2018-01-16 11:37:30','',4,'assets/filesequipos/19.pdf',2),(21,'',NULL,NULL,NULL,NULL,'',0);
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
  `estado` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`famId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conffamily`
--

LOCK TABLES `conffamily` WRITE;
/*!40000 ALTER TABLE `conffamily` DISABLE KEYS */;
INSERT INTO `conffamily` VALUES (1,'Filtros','AC',2),(2,'Seguridad','AC',2),(3,'ggg225','AN',2);
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
  `id_contratistaquipo` int(11) NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `id_contratista` int(11) NOT NULL,
  PRIMARY KEY (`id_contratistaquipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contratistaquipo`
--

LOCK TABLES `contratistaquipo` WRITE;
/*!40000 ALTER TABLE `contratistaquipo` DISABLE KEYS */;
INSERT INTO `contratistaquipo` VALUES (1,2,17),(2,2,19),(3,4,17),(4,4,19),(5,4,21),(6,8,19),(7,8,20);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contratistas`
--

LOCK TABLES `contratistas` WRITE;
/*!40000 ALTER TABLE `contratistas` DISABLE KEYS */;
INSERT INTO `contratistas` VALUES (17,'Clorox7','Clorox 123 norte','contacto@clorox.com','info@clorox.com','1565656657','1565656657','1565656657','1565656657','AC',2),(19,'Trazalog','Lib. Gral. S. Martin 1890','soporte@tazalog.com','soporte@tazalog.com','155555555','155555555','155555555','Soporte','AC',2);
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
  `id_empresa` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_criti`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criticidad`
--

LOCK TABLES `criticidad` WRITE;
/*!40000 ALTER TABLE `criticidad` DISABLE KEYS */;
INSERT INTO `criticidad` VALUES (1,'Alta','2','AC'),(2,'Media','2','AC'),(3,'Baja','2','AC'),(4,'Criticidad 02','2','AC'),(5,'666','2','AN'),(6,'Criticidad nivel 01','2','AN'),(7,'747','2','AN');
/*!40000 ALTER TABLE `criticidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deta-remito`
--

DROP TABLE IF EXISTS `deta-remito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deta-remito` (
  `detaremitoid` int(11) NOT NULL AUTO_INCREMENT,
  `id_remito` int(11) NOT NULL,
  `loteid` int(11) NOT NULL,
  `cantidad` double NOT NULL,
  `precio` double NOT NULL,
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`detaremitoid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deta-remito`
--

LOCK TABLES `deta-remito` WRITE;
/*!40000 ALTER TABLE `deta-remito` DISABLE KEYS */;
INSERT INTO `deta-remito` VALUES (1,1,1,34,0,2),(2,2,1,23,0,2),(3,3,1,12,0,2),(4,5,1,2,0,2),(5,6,1,1,0,2);
/*!40000 ALTER TABLE `deta-remito` ENABLE KEYS */;
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
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`id_detaordeninsumo`),
  KEY `loteid` (`loteid`),
  KEY `id_ordeninsumo` (`id_ordeninsumo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deta_ordeninsumos`
--

LOCK TABLES `deta_ordeninsumos` WRITE;
/*!40000 ALTER TABLE `deta_ordeninsumos` DISABLE KEYS */;
INSERT INTO `deta_ordeninsumos` VALUES (1,1,1,10,NULL,2),(2,2,1,2,NULL,2),(3,3,1,12,NULL,2),(4,4,2,2,NULL,2),(5,5,1,3,NULL,2),(6,6,2,3,NULL,2),(7,7,2,1,NULL,2),(8,8,1,6,NULL,2),(9,9,1,10,NULL,2),(10,10,1,8,NULL,2);
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
  `id_tarea` int(11) NOT NULL,
  `tiempo` varchar(100) CHARACTER SET latin1 NOT NULL,
  `observacion` text CHARACTER SET latin1,
  `monto` double NOT NULL,
  `id_componente` int(11) NOT NULL,
  `rh` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detasercicio`),
  KEY `id_ordenservicio` (`id_ordenservicio`),
  KEY `id_componente` (`id_componente`),
  KEY `deta_ordenservicio_ibfk_2` (`id_tarea`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deta_ordenservicio`
--

LOCK TABLES `deta_ordenservicio` WRITE;
/*!40000 ALTER TABLE `deta_ordenservicio` DISABLE KEYS */;
INSERT INTO `deta_ordenservicio` VALUES (1,1,1,' 1 ',NULL,150,2,1),(2,2,1,' 12 ',NULL,1200,1,2),(3,3,1,' 10 ',NULL,1000,1,3);
/*!40000 ALTER TABLE `deta_ordenservicio` ENABLE KEYS */;
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
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (2,'Oficinas trazalog','30125612569','Caseros 650 Sur','0264 427-4296','',NULL,NULL,NULL,NULL,NULL,'',10,NULL),(6,'Sibelco',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  `id_sector` int(11) NOT NULL,
  `id_hubicacion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
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
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_equipo`),
  KEY `id_empresa` (`id_empresa`),
  KEY `id_sector` (`id_sector`),
  KEY `id_criticidad` (`id_criticidad`),
  KEY `id_grupo` (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'PERFORADORA RANGER 500','2017-01-01','0000-00-00','2018-12-31','Tamrock','EMPER001','La Laja',4,NULL,4,1,1,'AC','0000-00-00 00:00:00',9000,'',0,0,'0000-00-00',0,0,'','',1,3,3,0,2),(2,'PERFORADORA RANGER 680','2017-06-01','0000-00-00','2018-01-19','Tamrock','EMPER002','La Laja',4,NULL,4,2,2,'AC','2018-01-17 00:00:00',7000,'',0,0,'0000-00-00',0,0,'','',1,3,3,0,2),(4,'CARGADORA FRONTAL CAT 980H','2017-08-01','0000-00-00','2018-03-14','Caterpillar','EMCAR002','La Laja',5,NULL,4,2,2,'RE','2018-01-17 00:00:00',4500,'',0,0,'0000-00-00',0,0,'','',1,3,3,0,2),(8,'747','2018-09-08','0000-00-00','2018-09-15','747','747','',15,NULL,8,31,1,'AC','2018-09-15 00:00:00',747,'',0,0,'0000-00-00',0,0,'','666',2,1,1,747,2),(13,'descrip','2018-09-14','0000-00-00','2018-09-30','Caterpillar','mos2018','123456',6,NULL,3,3,4,'AC','2018-09-14 00:00:00',12,'',0,0,'0000-00-00',0,0,'','',2,5,2,555,2);
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
INSERT INTO `ficha_equipo` VALUES (1,242,'1011','1012','1013','1010','2017-07-09','nose1010',0,10,'10',1),(2,242,'marca12','12m','120','1212','2017-07-10','fefe',1980,10,'10',1),(3,0,'nuevo modelo 5051','5051ng','5051','5051','2017-07-10','5051',1950,51,'510',1),(4,0,'marca pepe 14145','nuevo pepe 14145','14150','14145','2017-07-10','14',1914,14,'14',1),(5,242,'nuevo gm 6061','6061 mgpepe','60610','6061','2017-07-10','6061',1960,61,'60',1),(6,242,'8081p','80812','80813','8081','2017-07-10','80814',1983,80,'81',0),(7,339,'5252 marca','5252 marca','1212','5252','2017-07-12',' gemma',1989,12,'20',0),(8,11,'cat','3512','123345','0001','2018-01-30','lwo070',0,0,'',0);
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
  `estado` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,'Instalaciones','AC',2),(2,'Rodados','AC',2),(3,'Instalaciones Electricas','AC',2),(4,'Equipos Moviles','AC',2),(5,'grupo de prueba','AN',2),(8,'666','AC',2),(9,'Grupo 33','AN',2),(10,'sdfsdfddf','AC',2),(11,'747','AC',2);
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
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`herrId`),
  UNIQUE KEY `1` (`herrcodigo`) USING BTREE,
  KEY `depositoId` (`depositoId`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `herramientas`
--

LOCK TABLES `herramientas` WRITE;
/*!40000 ALTER TABLE `herramientas` DISABLE KEYS */;
INSERT INTO `herramientas` VALUES (1,'AK47','Black & Decker',1,NULL,'TR','Amoladora',1,2),(2,'SW80','Robust',1,NULL,'AC','Taladro',1,2),(4,'HR-TT-Organizador Tornillos','Organizador tornillos - Stanley',1,NULL,'AC','HR-TT-Organizador Tornillos',1,2),(5,'HR-TT-Escalera 7 peldaños','Escalera 7 peldaño - Ayinco',1,NULL,'AC','HR-TT-Escalera 7 peldaños',1,2),(6,'HR-TT-Mascara facial','Mascara facial',2,NULL,'AC','HR-TT-Mascara facial',1,2),(7,'HR-TT-Prot Audit-Vincha','Protector auditivo copa tipo vincha',1,NULL,'AC','HR-TT-Prot Audit-Vincha',1,2),(8,'HR-TT-Llave combinada 10mm','Llave combinada 10mm',3,NULL,'AC','HR-TT-Llave combinada 10mm',1,2),(9,'HR-TT-Llave combinada 13mm','Llave combinada 13mm',1,NULL,'AC','HR-TT-Llave combinada 13mm',1,6),(10,'HR-TT-Llave combinada 15mm','Llave combinada 13mm',1,NULL,'AC','HR-TT-Llave combinada 15mm',1,6),(11,'HR-TT-Llave combinada 17mm','Llave combinada 17mm',1,NULL,'AC','HR-TT-Llave combinada 17mm',1,6),(12,'HR-TT-Llave combinada 7/16\"','Llave combinada 7/16\"',1,NULL,'AC','HR-TT-Llave combinada 7/16\"',1,6),(13,'HR-TT-Llave combinada 9/16\"','Llave combinada 9/16\"',1,NULL,'AC','HR-TT-Llave combinada 9/16\"',1,6),(14,'HR-TT-Destornillador de puño philips','Destornillador de puño philips - Bulit',1,NULL,'AC','HR-TT-Destornillador de puño philips',1,6),(15,'HR-TT-Llave Francesa 30mm','Llave Francesa 30mm',1,NULL,'AC','HR-TT-Llave Francesa 30mm',1,6),(16,'HR-TT-Cinta métrica de 5 m ','Cinta métrica de 5 m ',1,NULL,'AC','HR-TT-Cinta métrica de 5 m ',1,6),(17,'HR-OFA-Linterna','Linterna',1,NULL,'AC','HR-OFA-Linterna',1,6),(18,'HR-OFA-Arco de sierra','Arco de sierra',1,NULL,'AC','HR-OFA-Arco de sierra',1,6),(19,'HR-OFA-Extractor de poleas 150 mm','Extractor de poleas 150 mm',1,NULL,'AC','HR-OFA-Extractor de poleas 150 mm',1,6),(20,'HR-OFA-Alargues','Alargues',1,NULL,'AC','HR-OFA-Alargues',1,6),(21,'HR-OFE-Espatula chica','Espatula chica',1,NULL,'AC','HR-OFE-Espatula chica',1,6),(22,'HR-OFE-Espatulas medianas','Espatulas medianas',1,NULL,'AC','HR-OFE-Espatulas medianas',1,6),(23,'HR-OFE-Barretines de 0,80 y 0,90 negro, naranja','barretines de 0,80 y 0,90 negro, naranja',1,NULL,'AC','HR-OFE-Barretines de 0,80 y 0,90 negro, naranja',1,6),(24,'HR-OFE-Arnés','Arnés',1,NULL,'AC','HR-OFE-Arnés',1,6),(25,'HR-OFE-Llanas','Llanas',1,NULL,'AC','HR-OFE-Llanas',1,6),(26,'HR-OFE-Llana dentada','Llana dentada',1,NULL,'AC','HR-OFE-Llana dentada',1,6),(27,'HR-OFE-Balde de Albañil','Balde de Albañil',1,NULL,'AC','HR-OFE-Balde de Albañil',1,6),(28,'HR-OFE-Anchada','Anchada',1,NULL,'AC','HR-OFE-Anchada',1,6),(29,'HR-OFE-Bota de goma','Bota de goma',1,NULL,'AC','HR-OFE-Bota de goma',1,6),(30,'HR-ODE-Boquilla para termofusión 1\"','Boquilla para termofusión 1\"',1,NULL,'AC','HR-ODE-Boquilla para termofusión 1\"',1,6),(31,'HR-ODE-Boquilla para termofusión 4\"','Boquilla para termofusión 4\"',1,NULL,'AC','HR-ODE-Boquilla para termofusión 4\"',1,6),(32,'HR-ODE-Boquilla para termofusión 2,5\"','Boquilla para termofusión 2,5\"',1,NULL,'AC','HR-ODE-Boquilla para termofusión 2,5\"',1,6),(33,'HR-ODE-Boquilla para termofusión 80mm','Boquilla para termofusión 80mm',1,NULL,'AC','HR-ODE-Boquilla para termofusión 80mm',1,6),(34,'HR-ODE-Boquilla para termofusión 2\"','Boquilla para termofusión 2\"',1,NULL,'AC','HR-ODE-Boquilla para termofusión 2\"',1,6),(35,'HR-ODE-Boquilla para termofusión 1 1/2\"','Boquilla para termofusión 1 1/2\"',1,NULL,'AC','HR-ODE-Boquilla para termofusión 1 1/2\"',1,6),(36,'HR-ODE-Boquilla para termofusión 1 1/4\"','Boquilla para termofusión 1 1/4\"',1,NULL,'AC','HR-ODE-Boquilla para termofusión 1 1/4\"',1,2),(39,'HR-ODE-Termofusora 1','Termofusora 1',1,NULL,'AC','HR-ODE-Termofusora 1',1,2),(40,'HR-ODE-Termofusora 1600w','Termofusora 1600w',1,NULL,'AC','HR-ODE-Termofusora 1600w',1,2),(41,'HR-ODE-Boquilla para termofusión 75mm','Boquilla para termofusión 75mm',3,NULL,'AC','HR-ODE-Boquilla para termofusión 75mm',1,2),(43,'HR-ODE-Boquilla para termofusión 110mm','Boquilla para termofusión 110mm',1,NULL,'AC','HR-ODE-Boquilla para termofusión 110mm',1,2),(44,'HR-OVI-TermoAnemómetro ','TermoAnemómetro ',1,NULL,'AC','HR-OVI-TermoAnemómetro ',1,2),(45,'HR-OVI-Termometro infrarojo','Termometro infrarojo',1,NULL,'AC','HR-OVI-Termometro infrarojo',1,2),(46,'HR-OVI-Pinza extractora de fusible NH','Pinza extractora de fusible NH',1,NULL,'AC','HR-OVI-Pinza extractora de fusible NH',1,2),(47,'HR-OVI-Pinza amperometrica con puntas','Pinza amperometrica con puntas',1,NULL,'AC','HR-OVI-Pinza amperometrica con puntas',1,2),(48,'HR-OVI- Soldador Cautín 30w','Soldador Cautín 30w',1,NULL,'AC','HR-OVI- Soldador Cautín 30w',1,2),(49,'HR-OFE-Multimetro con puntas','Multimetro con puntas',1,NULL,'AC','HR-OFE-Multimetro con puntas',1,2),(50,'HR-TTA-Pértiga DPA 3 KV','Pértiga DPA 3 KV',1,NULL,'AC','HR-TTA-Pértiga DPA 3 KV',1,2),(51,'HR-OVI-Detector de metál ','Detector de metál ',1,NULL,'AC','HR-OVI-Detector de metál ',1,2),(52,'HR-OVI-Programador de variador vel.','Programador de variador vel.',1,NULL,'AC','HR-OVI-Programador de variador vel.',1,2),(53,'HR-OVI-Pinza amp con puntas','Pinza amp con puntas',1,NULL,'AC','HR-OVI-Pinza amp con puntas',1,2),(54,'HR-OFA-Caja de llaves tubos medidas chicas(completa)','Caja de llaves tubos medidas chicas(completa)',1,NULL,'AC','HR-OFA-Caja de llaves tubos medidas chicas(completa)',1,2),(55,'HR-OFA-Caja de llaves tubos medidas grandes(completa)','Caja de llaves tubos medidas grandes(completa)',1,NULL,'AC','HR-OFA-Caja de llaves tubos medidas grandes(completa)',1,2),(56,'HR-OFA-Caja de mechas(12,16,20mm y 1/2\")','Caja de mechas(12,16,20mm y 1/2\")',1,NULL,'AC','HR-OFA-Caja de mechas(12,16,20mm y 1/2\")',1,2),(57,'HR-OFA-Amoladora 4,5\" 840w 9557 HP','Amoladora 4,5\" 840w 9557 HP',1,NULL,'AC','HR-OFA-Amoladora 4,5\" 840w 9557 HP',1,2),(58,'HR-OFA-Llave Stillson 36\"','Llave Stillson 36\"',1,NULL,'AC','HR-OFA-Llave Stillson 36\"',1,2),(59,'HR-OFA-Pistola de calor','Pistola de calor',1,NULL,'AC','HR-OFA-Pistola de calor',1,2),(60,'HR-OFA-Serrucho 24\"','Serrucho 24\"',1,NULL,'AC','HR-OFA-Serrucho 24\"',1,2),(61,'HR-OFA-Atornillador ? 13 con bateria ','Atornillador ? 13 con bateria ',1,NULL,'AC','HR-OFA-Atornillador ? 13 con bateria ',1,2),(63,'HR-OFA-Atornillador  13 con bateria ','Atornillador  13 con bateria ',1,NULL,'AC','HR-OFA-Atornillador  13 con bateria ',1,2),(64,'HR-OFA-Llave Inglesa 22\"','Llave Inglesa 22\"',1,NULL,'AC','HR-OFA-Llave Inglesa 22\"',1,2),(65,'HR-OFA-Rotomartillo con mandril y llave','Rotomartillo con mandril y llave',1,NULL,'AC','HR-OFA-Rotomartillo con mandril y llave',1,2),(66,'HR-ODE-Extractor de poleas 400 mm','Extractor de poleas 400 mm',1,NULL,'AC','HR-ODE-Extractor de poleas 400 mm',1,2),(67,'HR-OFE-Espatulas grandes','Espatulas grandes',1,NULL,'AC','HR-OFE-Espatulas grandes',1,6),(68,'HR-OFE-Soplete para colocar membrana','Soplete para colocar membrana',1,NULL,'AC','HR-OFE-Soplete para colocar membrana',1,6),(69,'HR-OFE-Cola de vida ','Cola de vida ',1,NULL,'AC','HR-OFE-Cola de vida ',1,6),(73,'HR-OFE-Serrucho para corte en durlock','Serrucho para corte en durlock',1,NULL,'AC','HR-OFE-Serrucho para corte en durlock',1,6),(74,'HR-OFE-Llana de durlock','Llana de durlock',1,NULL,'AC','HR-OFE-Llana de durlock',1,6),(75,'HR-OFE-Fratacho','Fratacho',1,NULL,'TR','HR-OFE-Fratacho',1,6),(76,'HR-OFE-Cortafierro','Cortafierro',1,NULL,'AC','HR-OFE-Cortafierro',1,6),(77,'HR-OFE-Mazo mediano','Mazo mediano',1,NULL,'AC','HR-OFE-Mazo mediano',1,6),(78,'HR-OFE-Cuchara mediana de albañil','Cuchara mediana de albañil',1,NULL,'AC','HR-OFE-Cuchara mediana de albañil',1,6),(79,'HR-OFE-Cuchara grande de albañil','Cuchara grande de albañil',1,NULL,'AC','HR-OFE-Cuchara grande de albañil',1,6),(80,'HR-OFE-Chocla','Chocla',1,NULL,'AC','HR-OFE-Chocla',1,6),(81,'HR-OFE-Martelina','Martelina',1,NULL,'AC','HR-OFE-Martelina',1,6),(82,'HR-OFE-Bomba de combustible','Bomba de combustible',1,NULL,'AC','HR-OFE-Bomba de combustible',1,6),(83,'HR-OFE-Grasera','Grasera',1,NULL,'AC','HR-OFE-Grasera',1,6),(86,'A-Hormigonera','azul',1,NULL,'AC','A-Hormigonera',NULL,6),(87,'w80','989',1,NULL,'AC','w80',NULL,6),(89,'HVLL-TT-MANIFOLD','Lüsqtoff',1,NULL,'AC','MANOMETRO DE GASES REFRIGERANTE',2,6),(90,'HVLL-TT','SSP',1,NULL,'AC','Agujereadora de mano eléctrica 13 mm con percutor',3,6),(91,'2334343242','ssss',0,NULL,'AC','Taladro',1,2),(93,'','',-1,NULL,'AC','',-1,2);
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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_lecturas`
--

LOCK TABLES `historial_lecturas` WRITE;
/*!40000 ALTER TABLE `historial_lecturas` DISABLE KEYS */;
INSERT INTO `historial_lecturas` VALUES (1,1,150,'2017-10-01 04:24:41',8,'too ok','pepe','tarde','AC'),(2,1,56,'2017-10-16 04:29:15',8,'todo normal','ruben','noche','AC'),(3,1,20,'2017-10-28 10:48:21',8,'normal','juan','mañana','AC'),(4,1,0,'2017-11-08 20:14:59',0,NULL,'','','AC'),(5,1,0,'2017-11-16 20:15:21',0,NULL,'','','RE'),(6,1,0,'2017-11-24 20:15:32',0,NULL,'','','RE'),(7,2,12,'2018-07-27 17:24:07',1,'lalalaaaa','perez','mañana','RE'),(8,6,20,'2018-09-01 11:57:34',1,'test','test','test','RE'),(9,6,0,'2018-09-01 12:03:21',1,'aaa','aaa','aaa','AC'),(10,6,0,'2018-09-01 12:03:56',1,'bbb','bbb','bbb','RE'),(11,6,0,'2018-09-01 12:04:17',1,'ccc','ccc','ccc','AC'),(12,7,0,'2018-09-01 12:05:46',1,'ddd','ddd','ddd','AC'),(13,6,666,'2018-09-01 13:31:25',1,'666','666','666','AC'),(14,6,777,'2018-09-01 21:39:24',1,'777','777','777','RE'),(15,8,12,'2018-09-24 18:43:56',1,'12','12','12','RE'),(16,8,123,'2018-09-24 18:45:08',1,'123','123','123','AC'),(17,8,3,'2018-09-24 18:57:02',1,'3','3','3','RE'),(18,8,4,'2018-09-24 19:00:51',1,'4','4','4','AC'),(19,8,12,'2018-09-24 19:04:10',1,'12','12','12','RE'),(20,8,5,'2018-09-24 19:08:10',1,'5','5','5','AC');
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
  `id_empresa` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id_informacion`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informacionequipo`
--

LOCK TABLES `informacionequipo` WRITE;
/*!40000 ALTER TABLE `informacionequipo` DISABLE KEYS */;
INSERT INTO `informacionequipo` VALUES (1,'tit01','tit01',17,'2'),(2,'tit01','dede02',17,'2'),(3,'tit01','tit03',17,'2'),(4,'tit01','jjj04',17,'2'),(5,'dede02','tit01',17,'2'),(6,'dede02','dede02',17,'2'),(7,'dede02','tit03',17,'2'),(8,'dede02','jjj04',17,'2'),(9,'tit03','tit01',17,'2'),(10,'tit03','dede02',17,'2'),(11,'tit03','tit03',17,'2'),(12,'tit03','jjj04',17,'2'),(13,'jjj04','tit01',17,'2'),(14,'jjj04','dede02',17,'2'),(15,'jjj04','tit03',17,'2'),(16,'jjj04','jjj04',17,'2'),(17,'fefe1','fefe1',15,'2'),(18,'fefe1','fefe2',15,'2'),(19,'fefe1','fefe4',15,'2'),(20,'fefe1','fefe5',15,'2'),(21,'fefe2','fefe1',15,'2'),(22,'fefe2','fefe2',15,'2'),(23,'fefe2','fefe4',15,'2'),(24,'fefe2','fefe5',15,'2'),(25,'fefe4','fefe1',15,'2'),(26,'fefe4','fefe2',15,'2'),(27,'fefe4','fefe4',15,'2'),(28,'fefe4','fefe5',15,'2'),(29,'fefe5','fefe1',15,'2'),(30,'fefe5','fefe2',15,'2'),(31,'fefe5','fefe4',15,'2'),(32,'fefe5','fefe5',15,'2'),(33,'fefe','fefe',16,'2'),(34,'fefe','fefe',16,'2'),(35,'fefe','fff',16,'2'),(36,'fefe','ff2',16,'2'),(37,'fefe','fefe',16,'2'),(38,'fefe','fefe',16,'2'),(39,'fefe','fff',16,'2'),(40,'fefe','ff2',16,'2'),(41,'fff','fefe',16,'2'),(42,'fff','fefe',16,'2'),(43,'fff','fff',16,'2'),(44,'fff','ff2',16,'2'),(45,'ff2','fefe',16,'2'),(46,'ff2','fefe',16,'2'),(47,'ff2','fff',16,'2'),(48,'ff2','ff2',16,'2'),(49,'dede','dede',14,'2'),(50,'dede','dee',14,'2'),(51,'dee','dede',14,'2'),(52,'dee','dee',14,'2'),(53,'titulo info complementaria','info complementaria en si misma',7,'2'),(54,'666','666',8,'2'),(55,'fgh','fgh',10,'2'),(56,'qqq','qqq',12,'2');
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
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`marcaid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcasequipos`
--

LOCK TABLES `marcasequipos` WRITE;
/*!40000 ALTER TABLE `marcasequipos` DISABLE KEYS */;
INSERT INTO `marcasequipos` VALUES (1,'Marca Unica','AN',2),(2,'Black & Decker','AC',2),(3,'Bahco','AC',2),(4,'Caterpillar','AC',2),(5,'Skill','AC',2),(9,'Marca Genérica','AN',2),(17,'MARCA TEST','AC',2),(18,'TEST 2','AN',2),(19,'666','AC',2),(20,'747','AC',2);
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
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`id_orden`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_insumos`
--

LOCK TABLES `orden_insumos` WRITE;
/*!40000 ALTER TABLE `orden_insumos` DISABLE KEYS */;
INSERT INTO `orden_insumos` VALUES (1,'2017-11-13','edsfsdfs',NULL,43434,2),(2,'0000-00-00','3',NULL,0,2),(3,'2018-06-29','7',NULL,1,2),(5,'2018-06-28','7',NULL,0,2),(7,'2018-07-01','4',NULL,0,2),(8,'2018-07-01','5',NULL,112233,2),(9,'2018-07-01','1',NULL,345,2),(10,'2018-07-01','9',NULL,6578678,2);
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
  PRIMARY KEY (`id_orden`),
  KEY `id_trabajo` (`id_trabajo`),
  KEY `id_proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_pedido`
--

LOCK TABLES `orden_pedido` WRITE;
/*!40000 ALTER TABLE `orden_pedido` DISABLE KEYS */;
INSERT INTO `orden_pedido` VALUES (1,1,501,'pedido prueba','2017-05-10 00:00:00','2017-05-11 00:00:00','2017-11-27 10:09:09','E',1,'',3344),(2,3,5011,'prueba','2017-05-10 00:00:00','2017-05-10 00:00:00','0000-00-00 00:00:00','P',16,'',NULL),(3,4,5011,'ahorasi ','2017-05-10 00:00:00','2017-05-10 00:00:00','0000-00-00 00:00:00','P',16,'',NULL),(4,5,301,'cargando pedido gemma','2017-05-10 00:00:00','2017-05-11 00:00:00','0000-00-00 00:00:00','P',18,'',NULL),(5,9,602,'pedido de prueba 3','2017-05-10 00:00:00','2017-05-10 00:00:00','2017-08-14 19:35:47','E',18,'',123456),(6,3,91,'ORDEN DE PEDIDO NUMERO 91 ASOCIADA A LA 90','2017-07-20 00:00:00','2017-07-21 00:00:00','0000-00-00 00:00:00','P',16,'',NULL),(7,5,902,'asociada a la orden numero 902','2017-07-20 00:00:00','2017-07-20 00:00:00','0000-00-00 00:00:00','P',20,'',NULL),(8,7,9020,'orden de pedido asociada a la orden de trabajo  numero 90 op 9020','2017-07-20 00:00:00','2017-07-27 00:00:00','0000-00-00 00:00:00','P',20,'',NULL),(9,7,950,'OT numero de pedido 950','2017-07-20 00:00:00','2017-07-27 00:00:00','0000-00-00 00:00:00','P',21,'',NULL),(10,8,9090,'op 9090','2017-07-20 00:00:00','2017-07-27 00:00:00','0000-00-00 00:00:00','P',20,'',NULL),(11,8,9670,'OP nro 9697120','2017-07-20 00:00:00','2017-07-27 00:00:00','0000-00-00 00:00:00','P',23,'',NULL),(12,9,96969,'OP nro 96969','2017-07-20 00:00:00','2017-07-27 00:00:00','0000-00-00 00:00:00','P',22,'',NULL),(13,6,96969,'OT NRO 96969','2017-07-20 00:00:00','2017-07-27 00:00:00','0000-00-00 00:00:00','P',22,'',NULL),(14,4,14140,'OP nuevo','2017-08-11 00:00:00','2017-08-18 00:00:00','0000-00-00 00:00:00','P',17,'',NULL),(15,12,78998797,'4 cañños largos','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-08-14 19:37:38','E',18,'',79456),(16,13,987987,'6 caños ciuadrados','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-08-14 20:28:31','E',18,'',16),(17,13,7898798,'4 docenas de bolunes','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','P',18,'',NULL),(18,4,99,'aceite\narrancador','2017-08-15 00:00:00','2017-08-17 00:00:00','2017-08-15 11:05:19','E',31,'',798987),(19,4,14,'pedido de ppriieba 123456','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','P',20,'',NULL),(20,4,1514,'OT DE PEDIDO','2017-08-16 00:00:00','2017-08-23 00:00:00','0000-00-00 00:00:00','P',19,'',NULL),(21,4,16,'dadadada pedidonuevo ','0000-00-00 00:00:00','2017-09-01 00:00:00','2017-09-01 14:19:26','E',34,'',1666),(22,4,45646,'comprar mas memoria','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-09-19 10:31:06','E',38,'',123),(23,2,23,'sadadsad','0000-00-00 00:00:00','2017-11-04 00:00:00','2017-12-11 11:18:59','E',8,'',22323),(24,1,1414,'141414','0000-00-00 00:00:00','2017-12-01 00:00:00','0000-00-00 00:00:00','P',23,'',NULL),(25,1,22222,'aSAsaSAsaS','2017-12-11 11:13:18','2017-12-11 00:00:00','0000-00-00 00:00:00','P',16,'',NULL),(26,2,55,'p','2017-12-12 18:46:56','2017-12-14 00:00:00','0000-00-00 00:00:00','P',17,'',NULL);
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
  `fecha` date NOT NULL,
  `comprobante` varchar(255) CHARACTER SET latin1 NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `id_contratista` int(11) NOT NULL,
  `id_solicitudreparacion` int(11) NOT NULL,
  `valesid` int(11) DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_ordenherraminetas` int(11) DEFAULT NULL,
  `id_orden_insumo` int(11) DEFAULT NULL,
  `orden_serviciocol` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_empresa` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id_orden`),
  KEY `id_equipo` (`id_equipo`),
  KEY `id_empresaservicio` (`id_contratista`),
  KEY `id_solicitudreparacion` (`id_solicitudreparacion`),
  KEY `id_orden_insumo` (`id_orden_insumo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_servicio`
--

LOCK TABLES `orden_servicio` WRITE;
/*!40000 ALTER TABLE `orden_servicio` DISABLE KEYS */;
INSERT INTO `orden_servicio` VALUES (1,'2017-11-14','',2,17,6,4,'C',NULL,1,NULL,'2'),(2,'2017-12-09','',1,17,16,1,'C',NULL,1,NULL,'2'),(3,'2017-12-11','',1,17,16,1,'C',NULL,1,NULL,'2');
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
  PRIMARY KEY (`id_orden`),
  KEY `orden_trabajo_ibfk_1` (`cliId`) USING BTREE,
  KEY `id_usuario` (`id_usuario`) USING BTREE,
  KEY `id_usuariosolicitante` (`id_usuario_a`) USING BTREE,
  KEY `usuario_entrega` (`id_usuario_e`) USING BTREE,
  KEY `id_sucursal` (`id_sucursal`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=545 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_trabajo`
--

LOCK TABLES `orden_trabajo` WRITE;
/*!40000 ALTER TABLE `orden_trabajo` DISABLE KEYS */;
INSERT INTO `orden_trabajo` VALUES (1,0,'1','0000-00-00','0000-00-00 00:00:00','2017-11-08 10:44:25','2017-11-08 10:47:45','2017-11-08 10:47:45','2017-11-08 10:47:45','2017-11-08 10:47:45','rotura de rueda',13,'C',1,1,1,1,0,1,'1',0,60,NULL,2),(2,0,'4','0000-00-00','0000-00-00 00:00:00','2017-11-08 00:00:00','2017-11-29 00:00:00','2017-11-23 08:39:37','2017-11-08 10:48:19','2017-12-10 00:00:00','sadasdas',13,'E',1,1,1,1,0,4,'1',0,60,NULL,2),(3,0,'4','0000-00-00','0000-00-00 00:00:00','2017-11-08 10:47:21','2017-11-08 10:58:41','2017-11-08 10:58:41','2017-11-08 10:58:41','2017-11-08 10:58:41','sadasdas',1,'C',1,1,1,1,0,4,'2',0,60,NULL,2),(4,4,'4','0000-00-00','0000-00-00 00:00:00','2017-11-08 10:47:21','2017-11-08 12:52:35','2017-11-08 12:52:35','2017-11-08 12:52:35','2017-11-08 12:52:35','sadasdas',1,'AC',1,1,1,1,0,4,'2',4,60,NULL,2),(5,5,'1','0000-00-00','0000-00-00 00:00:00','2017-11-08 10:44:25','2017-11-09 16:09:14','2017-11-09 16:09:14','2017-11-09 16:09:14','2017-11-09 16:09:14','rotura de rueda',13,'AC',1,1,1,1,0,1,'',4,60,NULL,2),(6,0,'5','0000-00-00','0000-00-00 00:00:00','2017-11-08 12:53:19','2017-12-09 16:09:34','2017-11-09 16:09:34','2017-11-09 16:09:34','2017-11-09 16:09:34','observc test2',1,'IN',1,1,1,1,1,5,'',0,60,NULL,2),(7,0,'5','0000-00-00','0000-00-00 00:00:00','2017-11-08 12:53:19','2017-12-07 10:38:07','2017-11-13 10:38:07','2017-11-13 10:38:07','2017-11-13 10:38:07','observc test2',1,'RE',1,1,1,1,1,5,'',0,60,NULL,2),(8,0,'1','0000-00-00','0000-00-00 00:00:00','2017-11-08 00:00:00','0000-00-00 00:00:00','2017-11-14 14:39:59','2017-11-14 14:39:59','2017-11-14 14:39:59','rotura de rueda',13,'P',1,1,1,1,1,1,'2',0,60,NULL,2),(9,0,'6','0000-00-00','0000-00-00 00:00:00','2017-11-14 15:23:31','2017-11-14 15:38:02','2017-11-14 15:38:02','2017-11-14 15:38:02','2017-11-14 15:38:02','Rotura de llanta',13,'C',5,5,5,1,0,6,'',0,60,NULL,2),(10,0,'6','0000-00-00','0000-00-00 00:00:00','2017-11-14 15:23:31','2017-11-14 15:42:27','2017-11-14 15:42:27','2017-11-14 15:42:27','2017-11-14 15:42:27','Rotura de llanta',13,'C',5,5,5,1,0,6,'1',0,60,NULL,2),(11,0,'1','0000-00-00','0000-00-00 00:00:00','2017-11-08 10:44:25','2017-11-23 08:26:01','2017-11-23 08:26:01','2017-11-23 08:26:01','2017-11-23 08:26:01','rotura de rueda',1,'C',1,1,1,1,0,1,'',0,60,NULL,2),(12,0,'6','0000-00-00','0000-00-00 00:00:00','2017-11-14 15:23:31','2017-11-17 08:25:52','2017-11-28 08:25:52','2017-11-28 08:25:52','2017-11-28 08:25:52','Rotura de llanta',1,'C',3,3,3,1,0,6,'',0,60,NULL,2),(13,0,'6','0000-00-00','0000-00-00 00:00:00','2017-11-14 15:23:31','2017-12-22 08:26:22','2017-11-28 08:26:22','2017-11-28 08:26:22','2017-11-28 08:26:22','Rotura de llanta',1,'C',3,3,3,1,0,6,'',0,60,NULL,2),(14,0,'5','0000-00-00','0000-00-00 00:00:00','2017-11-08 12:53:19','2017-12-12 10:58:50','2017-11-28 10:58:50','2017-11-28 10:58:50','2017-11-28 10:58:50','observc test2',13,'C',3,3,3,1,0,5,'1',0,60,NULL,2),(15,NULL,'1','0000-00-00','0000-00-00 00:00:00','2017-12-07 10:44:25','2017-12-06 12:04:24','2017-11-28 12:04:24','2017-11-28 12:04:24','2017-11-28 12:04:24','rotura de rueda',1,'C',3,3,3,1,0,1,'2',0,60,NULL,2),(16,1,'3','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',3,1,0,1,0,0,'5',1,60,NULL,2),(17,1,'3','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-12-13 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'P',3,6,0,1,0,0,'5',1,60,NULL,2),(18,1,'1','0000-00-00','0000-00-00 00:00:00','2017-12-14 10:44:25','0000-00-00 00:00:00','2017-11-28 13:16:25','2017-11-28 13:16:25','2017-11-28 13:16:25','rotura de rueda',1,'As',3,0,3,1,2,1,'2',2,60,NULL,2),(19,1,'4','0000-00-00','0000-00-00 00:00:00','2017-12-30 00:00:00','2017-12-09 00:00:00','2017-12-10 00:00:00','0000-00-00 00:00:00','2018-07-21 00:00:00','Backlog',1,'E',3,1,0,1,0,0,'4',1,60,NULL,2),(20,1,'4','0000-00-00','0000-00-00 00:00:00','0002-01-08 20:00:00','2017-12-20 00:00:00','2017-12-18 00:00:00','0000-00-00 00:00:00','2017-12-27 00:00:00','Predictivo',1,'E',3,1,0,1,0,0,'5',1,60,NULL,2),(21,1,'4','0000-00-00','0000-00-00 00:00:00','2017-12-21 00:00:00','2017-12-13 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',3,4,0,1,0,0,'5',1,60,NULL,2),(22,NULL,'7','0000-00-00','0000-00-00 00:00:00','2017-12-01 05:35:25','2017-12-13 00:00:00','2017-12-01 05:35:44','2017-12-01 05:35:44','2017-12-01 05:35:44','Falla test sobre RS-0001 (01-12)',1,'As',3,6,3,1,0,7,'2',2,60,NULL,2),(23,1,'3','0000-00-00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'TE',1,1,0,1,0,0,'5',1,60,NULL,2),(25,NULL,'','0000-00-00','0000-00-00 00:00:00','2017-02-01 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Preventivo',1,'C',1,0,0,1,0,0,'2',1,60,NULL,2),(26,1,'','0000-00-00','0000-00-00 00:00:00','2017-02-01 00:00:00','2017-12-29 00:00:00','2017-12-27 00:00:00','0000-00-00 00:00:00','2018-07-22 00:00:00','Preventivo',1,'E',1,1,1,1,0,1,'2',1,60,NULL,2),(27,1,'','0000-00-00','0000-00-00 00:00:00','2017-02-01 00:00:00','2017-12-28 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Preventivo',1,'As',1,6,1,1,0,0,'2',1,60,NULL,2),(28,1,'','0000-00-00','0000-00-00 00:00:00','2017-02-01 00:00:00','2017-12-11 00:00:00','2017-12-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Preventivo',1,'T',1,1,1,1,0,0,'2',3,60,NULL,2),(29,1,'8','0000-00-00','0000-00-00 00:00:00','2017-12-07 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Backlog',1,'As',1,0,0,1,0,0,'4',3,60,NULL,2),(30,1,'','0000-00-00','0000-00-00 00:00:00','2017-02-01 00:00:00','2017-12-13 00:00:00','2017-12-12 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Preventivo',1,'T',1,1,1,1,0,0,'2',3,60,NULL,2),(31,1,'6','0000-00-00','0000-00-00 00:00:00','2017-12-11 00:00:00','2017-12-13 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',1,1,0,1,0,0,'5',2,60,NULL,2),(32,1,'6','0000-00-00','0000-00-00 00:00:00','2017-12-11 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',1,1,1,1,0,0,'5',2,60,NULL,2),(33,1,'6','0000-00-00','0000-00-00 00:00:00','2017-12-11 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',1,1,1,1,0,0,'5',2,60,NULL,2),(34,1,'6','0000-00-00','0000-00-00 00:00:00','2017-12-11 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',1,1,1,1,0,0,'5',2,60,NULL,2),(35,2,'9','0000-00-00','0000-00-00 00:00:00','2017-12-12 00:00:00','2017-12-13 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Backlog',1,'As',1,1,1,1,0,0,'4',2,60,NULL,2),(36,NULL,'100','0000-00-00','0000-00-00 00:00:00','2017-12-12 21:22:00','2017-12-13 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','prueba',1,'As',3,1,1,1,2,0,'1',2,60,NULL,2),(37,2,'9','0000-00-00','0000-00-00 00:00:00','2017-12-12 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Backlog',1,'As',1,1,1,1,0,0,'4',2,60,NULL,2),(38,1,'10','0000-00-00','0000-00-00 00:00:00','2018-01-10 00:00:00','0000-00-00 00:00:00','2018-01-12 00:00:00','0000-00-00 00:00:00','2018-01-12 00:00:00','Backlog',1,'E',1,1,1,1,0,0,'4',1,60,NULL,2),(39,1,'11','0000-00-00','0000-00-00 00:00:00','2018-01-20 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Backlog',1,'As',1,0,0,1,0,0,'4',2,60,NULL,2),(40,1,'2','0000-00-00','0000-00-00 00:00:00','2017-11-08 10:45:54','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','assdas',1,'C',1,1,1,1,0,0,'',0,60,NULL,2),(41,1,'9','0000-00-00','0000-00-00 00:00:00','2018-01-17 13:38:28','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','mancha de aceite abajo del equipo ',1,'C',1,1,1,1,0,0,'',10,60,NULL,2),(42,NULL,'11','0000-00-00','0000-00-00 00:00:00','2018-01-18 18:07:20','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','mancha de aceite debajo del equipo',1,'C',1,1,1,1,0,0,'',0,60,NULL,2),(43,NULL,'11','0000-00-00','0000-00-00 00:00:00','2018-01-18 18:07:20','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','mancha de aceite debajo del equipo',1,'C',1,1,1,1,0,0,'',0,60,NULL,2),(46,1,'1','2018-01-29','2018-01-31 00:00:00','2017-11-14 15:23:31','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Rotura de llanta',1,'C',3,1,1,1,0,6,'2',2,60,NULL,2),(47,16,'1','2018-01-29','2018-01-30 00:00:00','2018-02-10 00:00:00','2018-03-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',3,5,1,1,0,8,'5',4,60,NULL,2),(48,1,'1','2018-01-29','2018-01-29 00:00:00','2017-12-01 05:35:25','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Falla test sobre RS-0001 (01-12)',1,'C',3,1,1,1,0,7,'2',2,60,NULL,2),(49,16,'1','2018-01-29','2018-01-29 00:00:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',1,1,1,1,0,8,'5',4,60,NULL,2),(50,NULL,'11','0000-00-00','0000-00-00 00:00:00','2018-01-18 18:07:20','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','mancha de aceite debajo del equipo',1,'C',1,1,1,1,0,0,'',0,60,NULL,2),(51,NULL,'11','0000-00-00','0000-00-00 00:00:00','2018-01-18 18:07:20','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','mancha de aceite debajo del equipo',1,'C',1,1,1,1,0,0,'',0,60,NULL,2),(52,NULL,'11','0000-00-00','0000-00-00 00:00:00','2018-01-18 18:07:20','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','mancha de aceite debajo del equipo',1,'C',1,1,1,1,0,0,'',0,60,NULL,2),(53,NULL,'12','0000-00-00','0000-00-00 00:00:00','2018-01-30 14:06:43','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','No tiene fuerza para levantar la carga',1,'C',1,1,1,1,0,0,'',0,60,NULL,2),(54,NULL,'12','0000-00-00','0000-00-00 00:00:00','2018-01-30 14:06:43','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','No tiene fuerza para levantar la carga',1,'C',1,1,1,1,0,0,'',0,60,NULL,2),(55,NULL,'12','0000-00-00','0000-00-00 00:00:00','2018-01-30 14:06:43','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','No tiene fuerza para levantar la carga',1,'C',1,1,1,1,0,0,'',0,60,NULL,2),(56,NULL,'7','0000-00-00','0000-00-00 00:00:00','2017-12-01 05:35:25','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Falla test sobre RS-0001 (01-12)',1,'C',1,1,1,1,0,0,'',0,60,NULL,2),(57,1,'1','2018-02-08','2018-02-08 00:00:00','2017-11-08 10:44:25','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','rotura de rueda',1,'C',1,1,1,1,0,1,'2',1,60,NULL,2),(58,NULL,'13','0000-00-00','0000-00-00 00:00:00','2018-02-05 19:01:38','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','bateria descargada\n\n',1,'C',1,1,1,1,0,0,'',0,60,NULL,2),(59,NULL,'15','0000-00-00','0000-00-00 00:00:00','2018-02-05 19:46:36','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','ggggjffufjffg',1,'C',1,1,1,1,0,0,'',0,60,NULL,2),(60,8,'1','2018-02-08','2018-01-08 15:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','CAMBIE EL ACEITE DE MOTOR. ACEITE 15W40',1,'C',1,1,1,1,0,16,'3',4,60,NULL,2),(61,4,'1','2018-02-08','2018-01-12 15:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,NULL,2),(62,4,'1','2018-02-17','2018-02-17 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,2),(63,4,'1','2018-02-17','2018-03-04 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,2),(64,4,'1','2018-02-17','2018-03-19 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,2),(65,4,'1','2018-02-17','2018-04-03 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,2),(66,4,'1','2018-02-17','2018-04-18 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,2),(67,4,'1','2018-02-17','2018-05-03 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,2),(68,4,'1','2018-02-17','2018-05-18 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,2),(69,4,'1','2018-02-17','2018-06-02 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,2),(70,4,'1','2018-02-17','2018-06-17 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,2),(71,4,'1','2018-02-17','2018-07-02 11:01:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',3,1,1,1,0,11,'3',6,60,11,2),(72,16,'1','2018-02-17','2018-02-17 20:00:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,2),(73,16,'1','2018-02-17','2018-02-19 15:20:00','2018-02-10 00:00:00','2018-03-01 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',3,1,1,1,0,8,'5',4,60,8,2),(74,4,'1','2018-02-18','2018-02-18 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(75,4,'1','2018-02-18','2018-03-05 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(76,4,'1','2018-02-18','2018-03-20 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(77,4,'1','2018-02-18','2018-04-04 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(78,4,'1','2018-02-18','2018-04-19 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(79,4,'1','2018-02-18','2018-05-04 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(80,4,'1','2018-02-18','2018-05-19 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(81,4,'1','2018-02-18','2018-06-03 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(82,4,'1','2018-02-18','2018-06-18 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(83,4,'1','2018-02-18','2018-07-03 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(84,4,'1','2018-02-18','2018-07-18 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(85,4,'1','2018-02-18','2018-08-02 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(86,4,'1','2018-02-18','2018-08-17 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(87,4,'1','2018-02-18','2018-09-01 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(88,4,'1','2018-02-18','2018-09-16 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(89,4,'1','2018-02-18','2018-10-01 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(90,4,'1','2018-02-18','2018-10-16 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(91,4,'1','2018-02-18','2018-10-31 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(92,4,'1','2018-02-18','2018-11-15 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(93,4,'1','2018-02-18','2018-11-30 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(94,4,'1','2018-02-18','2018-12-15 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(95,4,'1','2018-02-18','2018-12-30 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(96,4,'1','2018-02-18','2019-01-14 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(97,4,'1','2018-02-18','2019-01-29 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(98,4,'1','2018-02-18','2019-02-13 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(99,4,'1','2018-02-18','2019-02-28 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(100,4,'1','2018-02-18','2019-03-15 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(101,4,'1','2018-02-18','2019-03-30 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(102,4,'1','2018-02-18','2019-04-14 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(103,4,'1','2018-02-18','2019-04-29 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(104,4,'1','2018-02-18','2019-05-14 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(105,4,'1','2018-02-18','2019-05-29 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(106,4,'1','2018-02-18','2019-06-13 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(107,4,'1','2018-02-18','2019-06-28 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(108,4,'1','2018-02-18','2019-07-13 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(109,4,'1','2018-02-18','2019-07-28 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(110,4,'1','2018-02-18','2019-08-12 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(111,4,'1','2018-02-18','2019-08-27 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(112,4,'1','2018-02-18','2019-09-11 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(113,4,'1','2018-02-18','2019-09-26 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(114,4,'1','2018-02-18','2019-10-11 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(115,4,'1','2018-02-18','2019-10-26 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(116,4,'1','2018-02-18','2019-11-10 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(117,4,'1','2018-02-18','2019-11-25 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(118,4,'1','2018-02-18','2019-12-10 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(119,4,'1','2018-02-18','2019-12-25 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(120,4,'1','2018-02-18','2020-01-09 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(121,4,'1','2018-02-18','2020-01-24 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(122,4,'1','2018-02-18','2020-02-08 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(123,4,'1','2018-02-18','2020-02-23 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(124,4,'1','2018-02-18','2020-03-09 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(125,4,'1','2018-02-18','2020-03-24 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(126,4,'1','2018-02-18','2020-04-08 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(127,4,'1','2018-02-18','2020-04-23 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(128,4,'1','2018-02-18','2020-05-08 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(129,4,'1','2018-02-18','2020-05-23 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(130,4,'1','2018-02-18','2020-06-07 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(131,4,'1','2018-02-18','2020-06-22 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(132,4,'1','2018-02-18','2020-07-07 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(133,4,'1','2018-02-18','2020-07-22 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(134,4,'1','2018-02-18','2020-08-06 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(135,4,'1','2018-02-18','2020-08-21 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(136,4,'1','2018-02-18','2020-09-05 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(137,4,'1','2018-02-18','2020-09-20 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(138,4,'1','2018-02-18','2020-10-05 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(139,4,'1','2018-02-18','2020-10-20 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(140,4,'1','2018-02-18','2020-11-04 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(141,4,'1','2018-02-18','2020-11-19 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(142,4,'1','2018-02-18','2020-12-04 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(143,4,'1','2018-02-18','2020-12-19 12:59:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(144,5,'1','2018-02-18','2018-02-18 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,0),(145,5,'1','2018-02-18','2018-03-20 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,0),(146,5,'1','2018-02-18','2018-04-19 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,0),(147,5,'1','2018-02-18','2018-05-19 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(148,5,'1','2018-02-18','2018-06-18 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(149,5,'1','2018-02-18','2018-07-18 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(150,5,'1','2018-02-18','2018-08-17 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(151,5,'1','2018-02-18','2018-09-16 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,0),(152,5,'1','2018-02-18','2018-10-16 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,0),(153,5,'1','2018-02-18','2018-11-15 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,0),(154,5,'1','2018-02-18','2018-12-15 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,0),(155,5,'1','2018-02-18','2019-01-14 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,0),(156,5,'1','2018-02-18','2019-02-13 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,0),(157,5,'1','2018-02-18','2019-03-15 01:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,0),(158,5,'1','2018-02-19','2018-02-19 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(159,5,'1','2018-02-19','2018-02-26 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(160,5,'1','2018-02-19','2018-03-05 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(161,5,'1','2018-02-19','2018-03-12 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(162,5,'1','2018-02-19','2018-03-19 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(163,5,'1','2018-02-19','2018-03-26 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(164,5,'1','2018-02-19','2018-04-02 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(165,5,'1','2018-02-19','2018-04-09 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(166,5,'1','2018-02-19','2018-04-16 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(167,5,'1','2018-02-19','2018-04-23 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(168,5,'1','2018-02-19','2018-04-30 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(169,5,'1','2018-02-19','2018-05-07 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(170,5,'1','2018-02-19','2018-05-14 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(171,5,'1','2018-02-19','2018-05-21 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(172,5,'1','2018-02-19','2018-05-28 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(173,5,'1','2018-02-19','2018-06-04 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(174,5,'1','2018-02-19','2018-06-11 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(175,5,'1','2018-02-19','2018-06-18 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(176,5,'1','2018-02-19','2018-06-25 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(177,5,'1','2018-02-19','2018-07-02 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(178,5,'1','2018-02-19','2018-07-09 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(179,5,'1','2018-02-19','2018-07-16 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(180,5,'1','2018-02-19','2018-07-23 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(181,5,'1','2018-02-19','2018-07-30 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(182,5,'1','2018-02-19','2018-08-06 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(183,5,'1','2018-02-19','2018-08-13 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(184,5,'1','2018-02-19','2018-08-20 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(185,5,'1','2018-02-19','2018-08-27 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(186,5,'1','2018-02-19','2018-09-03 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(187,5,'1','2018-02-19','2018-09-10 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(188,5,'1','2018-02-19','2018-09-17 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(189,5,'1','2018-02-19','2018-09-24 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(190,5,'1','2018-02-19','2018-10-01 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(191,5,'1','2018-02-19','2018-10-08 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(192,5,'1','2018-02-19','2018-10-15 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(193,5,'1','2018-02-19','2018-10-22 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(194,5,'1','2018-02-19','2018-10-29 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(195,5,'1','2018-02-19','2018-11-05 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(196,5,'1','2018-02-19','2018-11-12 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(197,5,'1','2018-02-19','2018-11-19 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(198,5,'1','2018-02-19','2018-11-26 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(199,5,'1','2018-02-19','2018-12-03 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(200,5,'1','2018-02-19','2018-12-10 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(201,5,'1','2018-02-19','2018-12-17 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(202,5,'1','2018-02-19','2018-12-24 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(203,5,'1','2018-02-19','2018-12-31 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(204,5,'1','2018-02-19','2019-01-07 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(205,5,'1','2018-02-19','2019-01-14 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(206,5,'1','2018-02-19','2019-01-21 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(207,5,'1','2018-02-19','2019-01-28 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(208,5,'1','2018-02-19','2019-02-04 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(209,5,'1','2018-02-19','2019-02-11 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(210,5,'1','2018-02-19','2019-02-18 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(211,5,'1','2018-02-19','2019-02-25 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(212,5,'1','2018-02-19','2019-03-04 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(213,5,'1','2018-02-19','2019-03-11 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(214,5,'1','2018-02-19','2019-03-18 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(215,5,'1','2018-02-19','2019-03-25 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(216,5,'1','2018-02-19','2019-04-01 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(217,5,'1','2018-02-19','2019-04-08 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(218,5,'1','2018-02-19','2019-04-15 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(219,5,'1','2018-02-19','2019-04-22 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(220,5,'1','2018-02-19','2019-04-29 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(221,5,'1','2018-02-19','2019-05-06 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(222,5,'1','2018-02-19','2019-05-13 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(223,5,'1','2018-02-19','2019-05-20 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(224,5,'1','2018-02-19','2019-05-27 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(225,5,'1','2018-02-19','2019-06-03 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(226,5,'1','2018-02-19','2019-06-10 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(227,5,'1','2018-02-19','2019-06-17 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(228,5,'1','2018-02-19','2019-06-24 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(229,5,'1','2018-02-19','2019-07-01 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(230,5,'1','2018-02-19','2019-07-08 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(231,5,'1','2018-02-19','2019-07-15 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(232,5,'1','2018-02-19','2019-07-22 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(233,5,'1','2018-02-19','2019-07-29 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(234,5,'1','2018-02-19','2019-08-05 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(235,5,'1','2018-02-19','2019-08-12 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(236,5,'1','2018-02-19','2019-08-19 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(237,5,'1','2018-02-19','2019-08-26 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(238,5,'1','2018-02-19','2019-09-02 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(239,5,'1','2018-02-19','2019-09-09 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(240,5,'1','2018-02-19','2019-09-16 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(241,5,'1','2018-02-19','2019-09-23 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(242,5,'1','2018-02-19','2019-09-30 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(243,5,'1','2018-02-19','2019-10-07 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(244,5,'1','2018-02-19','2019-10-14 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(245,5,'1','2018-02-19','2019-10-21 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(246,5,'1','2018-02-19','2019-10-28 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(247,5,'1','2018-02-19','2019-11-04 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(248,5,'1','2018-02-19','2019-11-11 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(249,5,'1','2018-02-19','2019-11-18 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(250,5,'1','2018-02-19','2019-11-25 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(251,5,'1','2018-02-19','2019-12-02 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(252,5,'1','2018-02-19','2019-12-09 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(253,5,'1','2018-02-19','2019-12-16 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(254,5,'1','2018-02-19','2019-12-23 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(255,5,'1','2018-02-19','2019-12-30 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(256,5,'1','2018-02-19','2020-01-06 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(257,5,'1','2018-02-19','2020-01-13 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(258,5,'1','2018-02-19','2020-01-20 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(259,5,'1','2018-02-19','2020-01-27 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(260,5,'1','2018-02-19','2020-02-03 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(261,5,'1','2018-02-19','2020-02-10 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(262,5,'1','2018-02-19','2020-02-17 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(263,5,'1','2018-02-19','2020-02-24 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(264,5,'1','2018-02-19','2020-03-02 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(265,5,'1','2018-02-19','2020-03-09 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(266,5,'1','2018-02-19','2020-03-16 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(267,5,'1','2018-02-19','2020-03-23 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(268,5,'1','2018-02-19','2020-03-30 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(269,5,'1','2018-02-19','2020-04-06 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(270,5,'1','2018-02-19','2020-04-13 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(271,5,'1','2018-02-19','2020-04-20 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(272,5,'1','2018-02-19','2020-04-27 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(273,5,'1','2018-02-19','2020-05-04 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(274,5,'1','2018-02-19','2020-05-11 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(275,5,'1','2018-02-19','2020-05-18 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(276,5,'1','2018-02-19','2020-05-25 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(277,5,'1','2018-02-19','2020-06-01 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(278,5,'1','2018-02-19','2020-06-08 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(279,5,'1','2018-02-19','2020-06-15 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(280,5,'1','2018-02-19','2020-06-22 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(281,5,'1','2018-02-19','2020-06-29 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(282,5,'1','2018-02-19','2020-07-06 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(283,5,'1','2018-02-19','2020-07-13 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(284,5,'1','2018-02-19','2020-07-20 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(285,5,'1','2018-02-19','2020-07-27 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(286,5,'1','2018-02-19','2020-08-03 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(287,5,'1','2018-02-19','2020-08-10 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(288,5,'1','2018-02-19','2020-08-17 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(289,5,'1','2018-02-19','2020-08-24 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(290,5,'1','2018-02-19','2020-08-31 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(291,5,'1','2018-02-19','2020-09-07 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(292,5,'1','2018-02-19','2020-09-14 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(293,5,'1','2018-02-19','2020-09-21 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(294,5,'1','2018-02-19','2020-09-28 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(295,5,'1','2018-02-19','2020-10-05 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(296,5,'1','2018-02-19','2020-10-12 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(297,5,'1','2018-02-19','2020-10-19 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(298,5,'1','2018-02-19','2020-10-26 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(299,5,'1','2018-02-19','2020-11-02 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(300,5,'1','2018-02-19','2020-11-09 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(301,5,'1','2018-02-19','2020-11-16 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(302,5,'1','2018-02-19','2020-11-23 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(303,5,'1','2018-02-19','2020-11-30 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(304,5,'1','2018-02-19','2020-12-07 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(305,5,'1','2018-02-19','2020-12-14 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(306,5,'1','2018-02-19','2020-12-21 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(307,5,'1','2018-02-19','2020-12-28 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(308,5,'1','2018-02-19','2021-01-04 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(309,5,'1','2018-02-19','2021-01-11 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(310,5,'1','2018-02-19','2021-01-18 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(311,5,'1','2018-02-19','2021-01-25 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(312,5,'1','2018-02-19','2021-02-01 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(313,5,'1','2018-02-19','2021-02-08 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(314,5,'1','2018-02-19','2021-02-15 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(315,5,'1','2018-02-19','2021-02-22 03:30:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(316,5,'1','2018-02-19','2018-02-19 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(317,5,'1','2018-02-19','2018-02-26 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(318,5,'1','2018-02-19','2018-03-07 08:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(319,5,'1','2018-02-19','2018-03-12 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,240,12,0),(320,5,'1','2018-02-19','2018-03-19 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(321,5,'1','2018-02-19','2018-03-26 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(322,5,'1','2018-02-19','2018-04-02 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(323,5,'1','2018-02-19','2018-04-09 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(324,5,'1','2018-02-19','2018-04-16 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(325,5,'1','2018-02-19','2018-04-23 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(326,5,'1','2018-02-19','2018-04-30 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(327,5,'1','2018-02-19','2018-05-07 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(328,5,'1','2018-02-19','2018-05-14 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(329,5,'1','2018-02-19','2018-05-21 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(330,5,'1','2018-02-19','2018-05-28 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(331,5,'1','2018-02-19','2018-06-04 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(332,5,'1','2018-02-19','2018-06-11 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(333,5,'1','2018-02-19','2018-06-18 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(334,5,'1','2018-02-19','2018-06-25 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(335,5,'1','2018-02-19','2018-07-02 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(336,5,'1','2018-02-19','2018-07-09 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(337,5,'1','2018-02-19','2018-07-16 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(338,5,'1','2018-02-19','2018-07-23 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(339,5,'1','2018-02-19','2018-07-30 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(340,5,'1','2018-02-19','2018-08-06 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(341,5,'1','2018-02-19','2018-08-13 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,2),(342,5,'1','2018-02-19','2018-08-20 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(343,5,'1','2018-02-19','2018-08-27 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(344,5,'1','2018-02-19','2018-09-03 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(345,5,'1','2018-02-19','2018-09-10 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(346,5,'1','2018-02-19','2018-09-17 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(347,5,'1','2018-02-19','2018-09-24 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(348,5,'1','2018-02-19','2018-10-01 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(349,5,'1','2018-02-19','2018-10-08 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(350,5,'1','2018-02-19','2018-10-15 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(351,5,'1','2018-02-19','2018-10-22 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(352,5,'1','2018-02-19','2018-10-29 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(353,5,'1','2018-02-19','2018-11-05 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(354,5,'1','2018-02-19','2018-11-12 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(355,5,'1','2018-02-19','2018-11-19 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(356,5,'1','2018-02-19','2018-11-26 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(357,5,'1','2018-02-19','2018-12-03 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(358,5,'1','2018-02-19','2018-12-10 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(359,5,'1','2018-02-19','2018-12-17 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(360,5,'1','2018-02-19','2018-12-24 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(361,5,'1','2018-02-19','2018-12-31 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(362,5,'1','2018-02-19','2019-01-07 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(363,5,'1','2018-02-19','2019-01-14 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(364,5,'1','2018-02-19','2019-01-21 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(365,5,'1','2018-02-19','2019-01-28 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(366,5,'1','2018-02-19','2019-02-04 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(367,5,'1','2018-02-19','2019-02-11 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(368,5,'1','2018-02-19','2019-02-18 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(369,5,'1','2018-02-19','2019-02-25 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(370,5,'1','2018-02-19','2019-03-04 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(371,5,'1','2018-02-19','2019-03-11 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(372,5,'1','2018-02-19','2019-03-18 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(373,5,'1','2018-02-19','2019-03-25 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(374,5,'1','2018-02-19','2019-04-01 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(375,5,'1','2018-02-19','2019-04-08 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(376,5,'1','2018-02-19','2019-04-15 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(377,5,'1','2018-02-19','2019-04-22 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(378,5,'1','2018-02-19','2019-04-29 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(379,5,'1','2018-02-19','2019-05-06 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(380,5,'1','2018-02-19','2019-05-13 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(381,5,'1','2018-02-19','2019-05-20 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(382,5,'1','2018-02-19','2019-05-27 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(383,5,'1','2018-02-19','2019-06-03 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(384,5,'1','2018-02-19','2019-06-10 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(385,5,'1','2018-02-19','2019-06-17 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(386,5,'1','2018-02-19','2019-06-24 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(387,5,'1','2018-02-19','2019-07-01 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(388,5,'1','2018-02-19','2019-07-08 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(389,5,'1','2018-02-19','2019-07-15 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(390,5,'1','2018-02-19','2019-07-22 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(391,5,'1','2018-02-19','2019-07-29 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(392,5,'1','2018-02-19','2019-08-05 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(393,5,'1','2018-02-19','2019-08-12 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(394,5,'1','2018-02-19','2019-08-19 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(395,5,'1','2018-02-19','2019-08-26 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(396,5,'1','2018-02-19','2019-09-02 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(397,5,'1','2018-02-19','2019-09-09 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(398,5,'1','2018-02-19','2019-09-16 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(399,5,'1','2018-02-19','2019-09-23 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(400,5,'1','2018-02-19','2019-09-30 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(401,5,'1','2018-02-19','2019-10-07 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(402,5,'1','2018-02-19','2019-10-14 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(403,5,'1','2018-02-19','2019-10-21 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(404,5,'1','2018-02-19','2019-10-28 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(405,5,'1','2018-02-19','2019-11-04 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(406,5,'1','2018-02-19','2019-11-11 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(407,5,'1','2018-02-19','2019-11-18 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(408,5,'1','2018-02-19','2019-11-25 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(409,5,'1','2018-02-19','2019-12-02 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(410,5,'1','2018-02-19','2019-12-09 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(411,5,'1','2018-02-19','2019-12-16 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(412,5,'1','2018-02-19','2019-12-23 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(413,5,'1','2018-02-19','2019-12-30 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(414,5,'1','2018-02-19','2020-01-06 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(415,5,'1','2018-02-19','2020-01-13 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(416,5,'1','2018-02-19','2020-01-20 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(417,5,'1','2018-02-19','2020-01-27 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(418,5,'1','2018-02-19','2020-02-03 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(419,5,'1','2018-02-19','2020-02-10 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(420,5,'1','2018-02-19','2020-02-17 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(421,5,'1','2018-02-19','2020-02-24 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,12,'3',4,60,12,0),(422,4,'1','2018-02-19','2018-02-20 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(423,4,'1','2018-02-19','2018-03-05 07:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,150,11,0),(424,4,'1','2018-02-19','2018-03-22 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(425,4,'1','2018-02-19','2018-04-06 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(426,4,'1','2018-02-19','2018-04-21 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(427,4,'1','2018-02-19','2018-05-06 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(428,4,'1','2018-02-19','2018-05-21 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(429,4,'1','2018-02-19','2018-06-05 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(430,4,'1','2018-02-19','2018-06-20 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(431,4,'1','2018-02-19','2018-07-05 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(432,4,'1','2018-02-19','2018-07-20 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(433,4,'1','2018-02-19','2018-08-04 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,2),(434,4,'1','2018-02-19','2018-08-19 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(435,4,'1','2018-02-19','2018-09-03 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(436,4,'1','2018-02-19','2018-09-18 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(437,4,'1','2018-02-19','2018-10-03 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(438,4,'1','2018-02-19','2018-10-18 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(439,4,'1','2018-02-19','2018-11-02 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(440,4,'1','2018-02-19','2018-11-17 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(441,4,'1','2018-02-19','2018-12-02 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(442,4,'1','2018-02-19','2018-12-17 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(443,4,'1','2018-02-19','2019-01-01 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(444,4,'1','2018-02-19','2019-01-16 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(445,4,'1','2018-02-19','2019-01-31 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(446,4,'1','2018-02-19','2019-02-15 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(447,4,'1','2018-02-19','2019-03-02 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(448,4,'1','2018-02-19','2019-03-17 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(449,4,'1','2018-02-19','2019-04-01 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(450,4,'1','2018-02-19','2019-04-16 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(451,4,'1','2018-02-19','2019-05-01 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(452,4,'1','2018-02-19','2019-05-16 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(453,4,'1','2018-02-19','2019-05-31 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(454,4,'1','2018-02-19','2019-06-15 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(455,4,'1','2018-02-19','2019-06-30 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(456,4,'1','2018-02-19','2019-07-15 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(457,4,'1','2018-02-19','2019-07-30 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(458,4,'1','2018-02-19','2019-08-14 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(459,4,'1','2018-02-19','2019-08-29 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(460,4,'1','2018-02-19','2019-09-13 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(461,4,'1','2018-02-19','2019-09-28 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(462,4,'1','2018-02-19','2019-10-13 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(463,4,'1','2018-02-19','2019-10-28 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(464,4,'1','2018-02-19','2019-11-12 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(465,4,'1','2018-02-19','2019-11-27 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(466,4,'1','2018-02-19','2019-12-12 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(467,4,'1','2018-02-19','2019-12-27 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(468,4,'1','2018-02-19','2020-01-11 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(469,4,'1','2018-02-19','2020-01-26 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(470,4,'1','2018-02-19','2020-02-10 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(471,4,'1','2018-02-19','2020-02-25 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(472,4,'1','2018-02-19','2020-03-11 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(473,4,'1','2018-02-19','2020-03-26 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(474,4,'1','2018-02-19','2020-04-10 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(475,4,'1','2018-02-19','2020-04-25 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(476,4,'1','2018-02-19','2020-05-10 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(477,4,'1','2018-02-19','2020-05-25 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(478,4,'1','2018-02-19','2020-06-09 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(479,4,'1','2018-02-19','2020-06-24 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(480,4,'1','2018-02-19','2020-07-09 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(481,4,'1','2018-02-19','2020-07-24 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(482,4,'1','2018-02-19','2020-08-08 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(483,4,'1','2018-02-19','2020-08-23 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(484,4,'1','2018-02-19','2020-09-07 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(485,4,'1','2018-02-19','2020-09-22 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(486,4,'1','2018-02-19','2020-10-07 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(487,4,'1','2018-02-19','2020-10-22 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(488,4,'1','2018-02-19','2020-11-06 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(489,4,'1','2018-02-19','2020-11-21 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(490,4,'1','2018-02-19','2020-12-06 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(491,4,'1','2018-02-19','2020-12-21 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(492,4,'1','2018-02-19','2021-01-05 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(493,4,'1','2018-02-19','2021-01-20 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(494,4,'1','2018-02-19','2021-02-04 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(495,4,'1','2018-02-19','2021-02-19 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(496,4,'1','2018-02-19','2021-03-06 09:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.',1,'C',1,1,1,1,0,11,'3',6,60,11,0),(497,16,'1','2018-02-19','2018-02-19 12:02:00','2018-02-10 00:00:00','2018-03-01 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'As',3,1,1,1,0,8,'5',4,60,8,0),(498,16,'1','2018-02-19','2018-02-28 12:02:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,0),(499,16,'1','2018-02-19','2018-03-30 12:02:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,0),(500,16,'1','2018-02-19','2018-04-29 12:02:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,0),(501,16,'1','2018-02-19','2018-05-29 12:02:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,2),(502,16,'1','2018-02-19','2018-02-21 11:23:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,0),(503,16,'1','2018-02-19','2018-03-23 11:23:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,0),(504,16,'1','2018-02-19','2018-04-22 11:23:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,0),(505,16,'1','2018-02-19','2018-02-22 12:22:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,0),(506,16,'1','2018-02-19','2018-03-24 12:22:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,0),(507,16,'1','2018-02-19','2018-04-23 12:22:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,0),(508,16,'1','2018-02-19','2018-05-23 12:22:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',3,1,1,1,0,8,'5',4,60,8,2),(509,12,'1','2018-02-26','2018-02-14 11:00:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL DEPÓSITO DE COMBUSTIBLE.',1,'C',1,1,1,1,0,14,'4',4,60,14,0),(510,1,'1','2018-02-26','2018-02-05 15:00:00','2018-02-05 19:01:38','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','bateria descargada\n\n',1,'C',1,1,1,1,0,13,'2',9,60,13,0),(511,1,'1','2018-02-26','2018-02-23 17:00:00','2018-02-08 14:38:14','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Ruido en cuerpo de bomba int 0057A',1,'C',1,1,1,1,0,17,'2',10,60,17,0),(512,1,'1','2018-02-26','2018-02-21 22:00:00','2018-02-05 19:01:38','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','bateria descargada\n\n',1,'C',1,1,1,1,0,13,'2',9,60,13,0),(513,5,'1','2018-02-26','2018-02-23 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,0),(514,5,'1','2018-02-26','2018-03-25 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(515,5,'1','2018-02-26','2018-04-24 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(516,5,'1','2018-02-26','2018-05-24 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(517,5,'1','2018-02-26','2018-06-23 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(518,5,'1','2018-02-26','2018-07-23 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(519,5,'1','2018-02-26','2018-08-22 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(520,5,'1','2018-02-26','2018-09-21 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(521,5,'1','2018-02-26','2018-10-21 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(522,5,'1','2018-02-26','2018-11-20 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(523,5,'1','2018-02-26','2018-12-20 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(524,5,'1','2018-02-26','2019-01-19 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(525,5,'1','2018-02-26','2019-02-18 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(526,5,'1','2018-02-26','2019-03-20 16:00:00','2018-01-25 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','REVISE LA BOMBA DE AGUA',1,'C',1,1,1,1,0,22,'3',6,60,22,2),(527,12,'1','2018-02-26','2018-02-22 19:00:00','2018-02-10 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','LIMPIE EL DEPÓSITO DE COMBUSTIBLE.',1,'C',1,1,1,1,0,14,'4',4,60,14,2),(528,8,'1','2018-03-09','2018-03-22 02:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','CAMBIE EL ACEITE DE MOTOR. ACEITE 15W40',1,'C',1,1,1,1,0,16,'3',4,30,16,2),(529,9,'1','2018-03-10','2018-03-14 00:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','CAMBIE LOS FILTROS DE ACEITE.',1,'C',1,1,1,1,0,17,'3',4,0,17,2),(530,8,'1','2018-03-12','2018-03-12 01:00:00','2018-01-18 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','CAMBIE EL ACEITE DE MOTOR. ACEITE 15W40',1,'C',1,1,1,1,0,16,'3',4,0,16,2),(531,NULL,'','0000-00-00','0000-00-00 00:00:00','2018-03-12 05:28:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','weqeqwqweqweqwewqeqwe\neqweqweqwe\nqweqw',1,'C',1,1,0,1,2,0,'1',4,0,NULL,2),(532,NULL,'','0000-00-00','0000-00-00 00:00:00','2018-03-12 14:17:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','hdlhcfdlachlhcls',1,'C',1,1,0,1,1,0,'1',8,0,NULL,2),(533,15,'1','2018-07-24','2018-07-27 23:00:00','0002-07-08 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',1,1,1,1,0,7,'5',4,0,7,2),(534,15,'1','2018-07-24','2018-07-24 11:00:00','0002-07-08 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',1,1,1,1,0,7,'5',4,0,7,2),(535,15,'1','2018-07-26','2018-07-26 18:00:00','0002-07-08 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',1,1,1,1,0,7,'5',4,0,7,2),(536,15,'1','2018-07-28','2018-07-29 08:00:00','0002-07-08 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',1,1,1,1,0,7,'5',4,0,7,2),(537,15,'1','2018-07-28','2018-09-18 08:00:00','0002-07-08 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',1,1,1,1,0,7,'5',4,0,7,2),(538,15,'1','2018-07-28','2018-11-08 08:00:00','0002-07-08 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',1,1,1,1,0,7,'5',4,0,7,2),(539,15,'1','2018-07-28','2018-12-29 08:00:00','0002-07-08 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',1,1,1,1,0,7,'5',4,0,7,2),(540,15,'1','2018-07-28','2019-02-18 08:00:00','0002-07-08 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',1,1,1,1,0,7,'5',4,0,7,2),(541,15,'1','2018-07-28','2019-04-10 08:00:00','0002-07-08 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',1,1,1,1,0,7,'5',4,0,7,2),(542,15,'1','2018-07-28','2019-05-31 08:00:00','0002-07-08 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',1,1,1,1,0,7,'5',4,0,7,2),(543,15,'1','2018-07-28','2019-07-21 08:00:00','0002-07-08 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',1,1,1,1,0,7,'5',4,0,7,2),(544,15,'1','2018-07-28','2019-09-10 08:00:00','0002-07-08 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','Predictivo',1,'C',1,1,1,1,0,7,'5',4,0,7,2);
/*!40000 ALTER TABLE `orden_trabajo` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametroequipo`
--

LOCK TABLES `parametroequipo` WRITE;
/*!40000 ALTER TABLE `parametroequipo` DISABLE KEYS */;
INSERT INTO `parametroequipo` VALUES (1,8,1,'67','2017-11-09 16:09:02',2),(2,8,1,'56','2017-11-16 08:57:55',2),(3,8,1,'23','2017-11-21 11:44:46',2),(4,8,1,'150','2017-11-29 04:38:11',2),(5,8,2,'222','2017-11-29 04:39:02',2),(6,8,2,'34','2017-12-02 03:01:45',2),(7,8,2,'34','2017-12-02 03:02:41',2),(8,8,2,'45','2017-12-02 03:02:59',2),(9,4,2,'34','2017-12-02 03:26:30',2),(10,4,2,'45','2017-12-02 03:33:22',2),(11,4,2,'444','2017-12-02 03:43:37',2),(12,4,2,'56','2017-12-02 03:45:01',2),(13,4,2,'56','2017-12-02 03:45:59',2),(14,4,3,'45','2017-12-02 03:50:41',2),(15,4,3,'55555','2017-12-02 04:25:07',2),(16,4,3,'444','2017-12-02 04:27:55',2),(17,3,3,'445','2017-12-02 04:58:08',2),(18,1,3,'12','2017-12-02 05:02:48',2),(19,1,3,'45','2017-12-02 06:46:42',2),(20,1,1,'78','2017-12-11 04:50:13',2),(21,1,2,'12','2017-12-11 04:50:23',2),(22,1,1,'25','2017-12-11 04:56:50',2),(23,8,2,'34','2017-12-11 11:28:24',2),(24,8,2,'45','2017-12-11 11:28:40',2),(25,1,2,'34','2017-12-11 11:29:00',2),(26,2,1,'44','2017-12-11 11:29:15',2),(27,8,2,'444','2017-12-11 11:29:29',2),(28,8,4,'45','2018-02-08 17:55:28',2),(29,8,4,'67','2018-02-08 17:56:05',2),(30,0,0,'','0000-00-00 00:00:00',0),(31,0,0,'','0000-00-00 00:00:00',0),(32,8,1,'13','2018-07-21 02:55:00',0),(33,8,1,'23','2018-07-22 17:57:34',0),(34,8,2,'12','2018-07-22 17:57:59',0),(35,8,2,'25','2018-07-22 17:58:20',0),(36,8,1,'23','2018-07-22 18:17:33',0),(37,8,1,'12','2018-07-22 18:31:30',0),(38,8,1,'33','2018-07-22 18:33:02',0),(39,8,1,'12','2018-07-22 18:33:53',0),(40,8,1,'33','2018-07-22 18:34:04',0),(41,8,1,'12','2018-07-22 18:39:43',0),(42,8,2,'13','2018-07-22 18:39:56',0),(43,8,2,'9','2018-07-22 18:40:05',0),(44,8,1,'12','2018-07-22 18:42:17',0),(45,8,1,'12','2018-07-22 18:43:11',0),(46,8,1,'12','2018-07-22 18:44:46',0),(47,8,2,'12','2018-07-22 18:45:32',0),(48,8,1,'33','2018-07-22 20:23:36',0),(49,8,1,'33','2018-07-22 20:25:50',0);
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
  `estado` varchar(45) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`paramId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametros`
--

LOCK TABLES `parametros` WRITE;
/*!40000 ALTER TABLE `parametros` DISABLE KEYS */;
INSERT INTO `parametros` VALUES (8,'Temperatura',NULL,'AN',2),(13,'Humedad',NULL,'AC',2),(14,'Presión',NULL,'AC',2),(15,'Vibración',NULL,'AC',2),(16,'asdasd',NULL,'AN',2),(17,'test',NULL,'AN',2);
/*!40000 ALTER TABLE `parametros` ENABLE KEYS */;
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
  `pred_canth` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`predId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predictivo`
--

LOCK TABLES `predictivo` WRITE;
/*!40000 ALTER TABLE `predictivo` DISABLE KEYS */;
INSERT INTO `predictivo` VALUES (1,1,'nueva tarea ','2017-11-07','Diario',30,NULL,'C',0,0,2),(2,2,'tarea 2:prueba','0000-00-00','Diario',15,NULL,'C',0,0,2),(3,1,'1','0000-00-00','Periodos',15,NULL,'C',0,0,2),(4,1,'1','2017-11-24','Diario',15,NULL,'AN',0,0,2),(5,1,'1','2017-12-09','Diario',23,NULL,'C',0,0,2),(6,2,'1','2017-12-11','Diario',20,5,'C',0,0,2),(7,4,'15','0002-07-08','Mensual',51,1,'C',0,0,2),(8,4,'16','2018-02-10','Diario',30,0,'C',0,0,2);
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
  `horash` time DEFAULT NULL,
  `estadoprev` char(255) DEFAULT NULL,
  `prev_duracion` double NOT NULL,
  `prev_canth` double NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`prevId`),
  KEY `id_equipo` (`id_equipo`),
  KEY `id_tarea` (`id_tarea`),
  KEY `id_componente` (`id_componente`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preventivo`
--

LOCK TABLES `preventivo` WRITE;
/*!40000 ALTER TABLE `preventivo` DISABLE KEYS */;
INSERT INTO `preventivo` VALUES (1,1,1,'diario',30,'2017-10-01',1,29,NULL,'00:00:00','AN',0,0,2),(2,1,1,'diario',30,'2017-11-23',1,20,NULL,'00:00:00','AN',0,0,2),(3,1,2,'diario',15,'0000-00-00',1,0,NULL,'00:00:15','AN',0,0,2),(4,3,1,'diario',90,'2017-12-04',3,0,NULL,'00:00:00','AN',0,0,2),(5,3,1,'diario',30,'2017-12-05',4,0,NULL,'00:00:00','C',0,0,2),(6,3,1,'diario',45,'2017-12-05',3,0,NULL,'00:00:00','C',0,0,2),(7,3,2,'diario',30,'2017-12-05',3,0,NULL,'00:00:00','C',0,0,2),(8,3,2,'diario',30,'2017-12-06',3,0,NULL,'00:00:00','C',0,0,2),(9,1,1,'diario',30,'2018-01-18',1,0,NULL,'00:00:00','AN',0,0,2),(10,3,1,'diario',23,'2018-01-18',4,0,NULL,'00:00:23','C',0,0,2),(11,6,4,'diario',15,'2018-01-18',13,0,NULL,'00:00:00','C',0,0,2),(12,4,5,'diario',7,'2018-01-18',13,0,NULL,'00:00:00','C',0,0,2),(13,4,6,'diario',7,'2018-01-18',13,0,NULL,'16:00:15','C',0,0,2),(14,4,5,'diario',30,'2018-01-18',13,0,NULL,'00:00:00','C',0,0,2),(15,1,7,'diario',30,'2018-01-18',13,0,NULL,'00:00:00','AN',0,0,2),(16,4,8,'diario',60,'2018-01-18',13,0,NULL,'00:00:02','C',0,0,2),(17,4,9,'diario',60,'2018-01-18',13,0,NULL,'00:00:01','C',0,0,2),(18,4,10,'diario',60,'2018-01-18',13,0,NULL,'00:00:00','C',0,0,2),(19,4,12,'diario',365,'2018-01-18',13,0,NULL,'00:00:08','C',0,0,2),(20,4,13,'diario',7,'2018-01-18',13,0,NULL,'00:00:00','C',0,0,2),(21,4,14,'diario',7,'2018-01-18',13,0,NULL,'00:00:00','C',0,0,2),(22,6,5,'diario',30,'2018-01-25',13,0,NULL,'15:00:15','C',0,0,2);
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
  `id_empresa` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  `estado` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id_proceso`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proceso`
--

LOCK TABLES `proceso` WRITE;
/*!40000 ALTER TABLE `proceso` DISABLE KEYS */;
INSERT INTO `proceso` VALUES (1,'un proceso nuevo 1','2','AC'),(2,'Proceso 00-2017','2','AC'),(3,'Extracción y Transporte','2','AC'),(4,'666','2','AN'),(5,'Proceso 01','2','AN'),(6,'747','2','AN');
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
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`remitoId`),
  KEY `provid` (`provid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remitos`
--

LOCK TABLES `remitos` WRITE;
/*!40000 ALTER TABLE `remitos` DISABLE KEYS */;
INSERT INTO `remitos` VALUES (1,'0000-00-00 00:00:00',1,'233',2),(2,'0000-00-00 00:00:00',1,'',2),(3,'2018-07-01 00:00:00',1,'123',2),(4,'2018-06-29 00:00:00',2,'4555',2),(5,'2018-07-02 00:00:00',1,'234',2),(6,'2018-07-02 00:00:00',2,'123',2);
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
  `estado` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_sector`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (1,'Planta','AC',2),(3,'Administración','AC',2),(4,'Perforación','AC',2),(5,'test','AN',2),(6,'Auxiliar','AC',2),(12,'666','AC',2),(13,'Sector A4','AN',2),(14,'sector 56','AN',2),(15,'747','AC',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguro`
--

LOCK TABLES `seguro` WRITE;
/*!40000 ALTER TABLE `seguro` DISABLE KEYS */;
INSERT INTO `seguro` VALUES (1,'empresa xxx',1111111,11112221,'2017-07-10 00:00:00','2017-07-18 00:00:00','12 dias',5),(2,'1',123,123,'2017-07-10 00:00:00','2017-07-25 00:00:00','1234',6),(3,'123 juan peres',1234,12345,'2017-07-10 00:00:00','2017-07-10 00:00:00','123456',1),(4,'gemma empresa',33333321,2147483647,'2017-07-12 00:00:00','2017-07-12 00:00:00','A',0),(5,'gemme empresa2',52652,500001,'2017-07-12 00:00:00','2017-07-12 00:00:00','A',0),(242,'empres hugo pepe',1414,14145,'2017-07-12 00:00:00','2017-07-12 00:00:00','12 dias',0),(243,'gemma nueva empresa',56213,56213000,'2017-07-12 00:00:00','2017-07-12 00:00:00','1 meses',0),(244,'nueva emresa julieta 34434',45454,45454,'2017-07-12 00:00:00','2017-07-12 00:00:00','10 dias',0),(245,'gemma nueva emresa 41 poliza',54540,545401,'2017-07-12 00:00:00','2017-07-26 00:00:00','5 dias',242);
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
  KEY `id_equipo` (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setupparam`
--

LOCK TABLES `setupparam` WRITE;
/*!40000 ALTER TABLE `setupparam` DISABLE KEYS */;
INSERT INTO `setupparam` VALUES (1,11,96,20,2),(2,11,80,10,2),(2,11,39,56,2),(4,8,10,20,2),(2,8,12,3,2),(4,15,12,3,6),(1,8,120,80,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisgroups`
--

LOCK TABLES `sisgroups` WRITE;
/*!40000 ALTER TABLE `sisgroups` DISABLE KEYS */;
INSERT INTO `sisgroups` VALUES (1,'Administrador','Otrabajo',2),(2,'Vendedores','Sservicio',2),(3,'Depósito','Sservicio',2),(4,'Operario1','Sservicio',2),(5,'Supervisor de Taller','Sservicio',2),(7,'GRUPO TEST','Grafica',2),(8,'666','Cliente',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=1014 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisgroupsactions`
--

LOCK TABLES `sisgroupsactions` WRITE;
/*!40000 ALTER TABLE `sisgroupsactions` DISABLE KEYS */;
INSERT INTO `sisgroupsactions` VALUES (154,151,1),(158,158,1),(159,159,1),(160,160,1),(841,1,6),(842,1,7),(843,1,8),(844,1,9),(845,1,10),(846,1,11),(847,1,12),(848,1,13),(849,1,14),(850,1,15),(851,1,16),(852,1,17),(853,1,18),(854,1,19),(855,1,20),(856,1,21),(857,1,23),(858,1,24),(859,1,25),(860,1,151),(861,1,26),(862,1,27),(863,1,28),(864,1,29),(865,1,30),(866,1,31),(867,1,32),(868,1,33),(869,1,34),(870,1,35),(871,1,36),(872,1,37),(873,1,38),(874,1,39),(875,1,40),(876,1,41),(877,1,42),(878,1,43),(879,1,115),(880,1,116),(881,1,117),(882,1,155),(883,1,156),(884,1,157),(885,1,118),(886,1,119),(887,1,120),(888,1,121),(889,1,122),(890,1,123),(891,1,152),(892,1,153),(893,1,154),(894,1,177),(895,1,178),(896,1,179),(897,1,180),(898,1,64),(899,1,65),(900,1,66),(901,1,67),(902,1,68),(903,1,69),(904,1,70),(905,1,71),(906,1,72),(907,1,73),(908,1,74),(909,1,75),(910,1,79),(911,1,80),(912,1,81),(913,1,1),(914,1,2),(915,1,3),(916,1,4),(917,1,85),(918,1,86),(919,1,87),(920,1,88),(921,1,90),(922,1,91),(923,1,92),(924,1,93),(925,1,94),(926,1,95),(927,1,96),(928,1,97),(929,1,98),(930,1,99),(931,1,100),(932,1,101),(933,1,102),(934,1,103),(935,1,104),(936,1,105),(937,1,106),(938,1,107),(939,1,108),(940,1,109),(941,1,110),(942,1,111),(943,1,170),(944,1,171),(945,1,172),(946,1,127),(947,1,128),(948,1,129),(949,1,130),(950,1,132),(951,1,136),(952,1,137),(953,1,138),(954,1,139),(955,1,140),(956,1,141),(957,1,142),(958,1,143),(959,1,144),(960,1,145),(961,1,146),(962,1,147),(963,1,148),(964,1,149),(965,1,150),(966,1,45),(967,1,46),(968,1,47),(969,1,48),(970,1,49),(971,1,50),(972,1,54),(973,1,55),(974,1,56),(975,1,57),(976,1,58),(977,1,59),(978,1,60),(979,2,10),(980,2,11),(981,2,12),(982,2,13),(983,7,6),(984,7,7),(985,7,8),(986,7,9),(987,7,13),(988,7,14),(989,7,15),(990,7,16),(991,7,17),(992,1,89),(993,1,181),(994,1,182),(995,1,183),(996,1,184),(997,1,185),(998,1,186),(999,1,187),(1000,1,188),(1001,1,189),(1002,1,190),(1003,1,191),(1004,1,192),(1005,1,193),(1006,1,194),(1007,1,195),(1008,1,196),(1009,1,167),(1010,8,10),(1011,8,11),(1012,8,12),(1013,8,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sismenu`
--

LOCK TABLES `sismenu` WRITE;
/*!40000 ALTER TABLE `sismenu` DISABLE KEYS */;
INSERT INTO `sismenu` VALUES (2,NULL,'Seguridad','fa fa-lock','',2,2),(3,2,'Usuarios','fa fa-fw fa-user','user',2,2),(4,2,'Grupos','fa fa-fw fa-users','group',1,2),(5,2,'Menu','fa fa-fw fa-bars','menu',3,2),(6,2,'Database','fa fa-fw fa-database','backup',4,2),(7,NULL,'Mantenimiento','fa  fa-wrench ','',3,2),(8,7,'Equipos','fa fa-cogs','Equipo',1,2),(9,7,'Componentes','fa fa-cogs','Componente',2,2),(10,7,'Preventivo','fa fa-tasks','Preventivo',4,2),(12,7,'Backlog','fa fa-tasks','Backlog',5,2),(13,7,'Registro_de_Parametros','fa fa-tasks','Lectura',10,2),(14,7,'Predictivo','fa fa-tasks','Predictivo',7,2),(15,7,'Solicitud_de_Servicio','fa fa-sitemap','Sservicio',3,2),(16,NULL,'Pañol','fa fa-briefcase','',4,2),(17,59,'Articulos','fa fa-barcode ','Article',1,2),(18,59,'Stock','fa fa-cubes','Lote',2,2),(20,59,'Orden_Insumos','fa fa-check','Ordeninsumo',3,2),(21,59,'Remitos','fa fa-paperclip ','Remito',4,2),(23,16,'Herramientas','fa fa-sign-out ','Herramienta',5,2),(24,16,'Salida_Herramientas','fa fa-paper-plane','Order',6,2),(25,16,'Entrada_Herramientas','fa fa-paper-plane','Unload',7,2),(26,16,'Trazabilidad_Componentes','fa fa-exchange','Trazacomp',8,2),(28,16,'Punto_Pedido','fa fa-bookmark','Lote/puntoPedList',10,2),(29,NULL,'ABM','fa fa-book','',6,2),(30,29,'ABM_Grupo','fa fa-server ','Grupo',2,2),(31,29,'ABM_Sector','fa fa-sitemap ','Sector',3,2),(32,29,'ABM_Contratista','fa fa-life-ring','Contratista',4,2),(33,29,'Parametrizar_Predictivo','fa fa-bullhorn','Parametro',1,2),(34,29,'ABM_Deposito','fa fa-qrcode','Deposito',5,2),(35,29,'ABM_Tareas','fa fa-street-view','Tarea',6,2),(36,29,'ABM_Parametros','fa fa-adjust','Altparametro',6,2),(37,29,'ABM_Proveedor','fa fa-truck','Proveedor',7,2),(38,29,'ABM_Familia','fa fa-check-square','Family',8,2),(40,7,' Ordenes_de_trabajo','fa fa-tasks','Otrabajo/listorden',8,2),(41,7,'Administrar_Ordenes','fa fa-thumbs-up','Envio',10,2),(43,7,'Alta_Nota_Pedido','fa fa-cart-plus','Notapedido',11,2),(44,NULL,'Compras','fa fa-shopping-cart ','',5,2),(45,44,'Enviar_Pedidos','fa fa-envelope-open-o','',1,2),(46,44,'Recepción_pedidos','fa fa-check','Administracion',2,2),(47,NULL,'Reportes',' fa fa-line-chart ','',8,2),(49,47,'Rep_Informe_de_Servicios','fa fa-file-text-o ','Reporte',3,2),(50,47,'Rep_Ordenes_de_trabajo','fa fa-file-text-o ','Reporteorden',2,2),(51,47,'Grafica_de_predictivos','fa fa-pie-chart ','Grafica',1,2),(52,47,'Rep_Articulos','fa fa-file-text-o','Reportepedido',4,2),(53,29,'ABM_modelos','','',0,2),(54,7,'Plan_de_Mantenimiento','fa fa-calendar','calendario/indexot',9,2),(55,7,'trazabilidad_ Activos','fa fa-exchange','fa fa-calendar',0,2),(58,NULL,'Equipos','fa fa-exchange','',0,2),(59,NULL,'Almacenes','fa fa-check','',4,2),(60,29,'ABM Marca','fa fa-sitemap','Marca',9,2),(61,47,'Rep_articulos_pedidos','fa fa-file-text-o ','Reportepedido',6,2),(62,29,'ABM Clientes','','Cliente',10,2),(63,29,'ABM Area','','Area',10,2),(64,29,'ABM Criticidad','','Criticidad',11,2),(65,29,'ABM Procesos','','Proceso',12,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sismenuactions`
--

LOCK TABLES `sismenuactions` WRITE;
/*!40000 ALTER TABLE `sismenuactions` DISABLE KEYS */;
INSERT INTO `sismenuactions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,3,1),(7,3,2),(8,3,3),(9,3,4),(10,4,1),(11,4,2),(12,4,3),(13,4,4),(14,5,1),(15,5,2),(16,5,3),(17,5,4),(18,6,1),(19,6,2),(20,6,3),(21,6,4),(22,7,1),(23,8,1),(24,8,2),(25,8,3),(26,9,1),(27,9,2),(28,9,3),(29,10,1),(30,10,2),(31,10,3),(32,12,1),(33,12,2),(34,12,3),(35,13,1),(36,13,2),(37,13,3),(38,14,1),(39,14,2),(40,14,3),(41,15,1),(42,15,2),(43,15,3),(44,16,1),(45,17,1),(46,17,2),(47,17,3),(48,18,1),(49,18,2),(50,18,3),(51,19,1),(52,19,2),(53,19,3),(54,20,1),(55,20,2),(56,20,3),(57,21,1),(58,21,2),(59,21,3),(60,21,4),(61,22,1),(62,22,2),(63,22,3),(64,23,1),(65,23,2),(66,23,3),(67,24,1),(68,24,2),(69,24,3),(70,25,1),(71,25,2),(72,25,3),(73,26,1),(74,26,2),(75,26,3),(76,27,1),(77,27,2),(78,27,3),(79,28,1),(80,28,2),(81,28,3),(82,29,1),(83,29,2),(84,29,3),(85,30,1),(86,30,2),(87,30,3),(88,31,1),(89,31,2),(90,31,3),(91,32,1),(92,32,2),(93,32,3),(94,33,1),(95,33,2),(96,33,3),(97,34,1),(98,34,2),(99,34,3),(100,35,1),(101,35,2),(102,35,3),(103,36,1),(104,36,2),(105,36,3),(106,37,1),(107,37,2),(108,37,3),(109,38,1),(110,38,2),(111,38,3),(112,39,1),(113,39,2),(114,39,3),(115,40,1),(116,40,2),(117,40,3),(118,41,1),(119,41,2),(120,41,3),(121,43,1),(122,43,2),(123,43,3),(124,44,1),(125,44,2),(126,44,3),(127,45,1),(128,45,2),(129,45,3),(130,46,1),(131,46,52),(132,46,3),(133,47,1),(134,47,2),(135,47,3),(136,48,1),(137,48,2),(138,48,3),(139,49,1),(140,49,2),(141,49,3),(142,50,1),(143,50,2),(144,50,3),(145,51,1),(146,51,2),(147,51,3),(148,52,1),(149,52,2),(150,52,3),(151,8,13),(152,54,1),(153,54,2),(154,54,3),(155,40,9),(156,40,7),(157,40,10),(158,55,1),(159,55,2),(160,55,3),(161,56,1),(162,56,2),(163,56,3),(164,58,1),(165,58,2),(166,58,3),(167,58,4),(168,59,1),(170,60,1),(171,60,2),(172,60,3),(173,47,1),(174,47,2),(175,47,3),(176,54,13),(177,54,14),(178,54,15),(179,54,16),(180,54,17),(181,31,4),(182,62,1),(183,62,2),(184,62,3),(185,62,4),(186,63,1),(187,63,2),(188,63,3),(189,63,4),(190,64,1),(191,64,2),(192,64,3),(193,64,4),(194,65,1),(195,65,2),(196,65,3),(197,65,4);
/*!40000 ALTER TABLE `sismenuactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisusers`
--

DROP TABLE IF EXISTS `sisusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisusers` (
  `usrId` int(11) NOT NULL AUTO_INCREMENT,
  `usrNick` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usrName` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usrLastName` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `usrComision` int(11) NOT NULL,
  `usrPassword` varchar(5000) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `grpId` int(11) NOT NULL,
  `usrimag` blob NOT NULL,
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`usrId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisusers`
--

LOCK TABLES `sisusers` WRITE;
/*!40000 ALTER TABLE `sisusers` DISABLE KEYS */;
INSERT INTO `sisusers` VALUES (1,'admin','admin','admin',0,'21232f297a57a5a743894a0e4a801fc3',1,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\�\0\0\0\�\0\0\0�}ĵ\0\07<IDATx\�\�}�w׶���y\�\��rg\�[3���;\�7s\��\�cccl��k����l�,�\�A$�@A$��H\"H$\"c�\�9Z �\�w\�.��>����t�j��Rw\�9u�wv\�\'\�yA-Je*�Q�\��:����f͚QӦM\�\�\��gz\�7\���\�k޼9�jՊ���kOԶm[���\�\���~\����\�\���{�\�\�~_~���]�>�\�[��\�O�߱R�-�u\�\�Ԯ];\�sL4a�X��\�CjS��e��\�\�.�/\�;\�#�f�)\0\��\�{O\�\0\�7n\�X�\�s�~˖-M\�\r6\�|�\�7C\�	a��L�\�ק?�Pl6���@\�&��bC:��K7j\�\�u%�\"�L\���\�թSǔ�N\�l߾=}�\�WT�q�de�\0�^H�}\'z뭷�A�l�~7�\�\0\\Y}^3�R\�O	\����|H	�\�2�>�\����\0R���96�\��ǻQIu�-\�ﬦ,%�U2���\n&�AXEt\Z$�\Z>�\�x�\��&�6l��\0Z2%Z�,#�\�d0�̬�\��ց\�` ]\�2lPo��Y\0\0�\r�tqr���oU�b�M&s�#\�qr`0�\0B�\�??7\ṅm9����\�\�\�\�	/p\0�ҶQ�M	�l�dp\�1!��\n�\�d��\�1\�d����P[�K�p%\\\��gp\���4��e�\"�# K�:m@x`���+4��\� S�&Ml�\��KU`YA�\�G	�%�\�\�x��\n\��#A=`[@��\�Ǚ v����r*$\�H�{c\��g\'��?vb0�\r�?qʉ���\�\�;�.\�ҿ�\�oa�B�\r;<PW\�66\'G���f�fA\0�8Ŵ�\\\�n\���0=�*\�2\Z��\�iDȨ��&?��u�	a�AuK��� \0�τ�b4R����\�\��X��\r@\�\nY�Y� ��\�|\�-�\�9oq\0.�m-�R�\��Q?THvKˁVH>Į �\0(d�\�\��\�Z\�s\��~SM=\�H�\�R�x\Zڸ?Ɓ�ZN��[���4�H�$$@\���\�೉HV��\�s����Z��i�׵��lvǚ\�\�Q%\�FC���,�b\"������-��_��]Yw5ǁ\"\�B���\�\���r*�d��\�\�Uua�7��.�*\�sv���\0\\~�\�u�?rS9\�\r`��*�6rus��\0g��\�w\�Lt�;3&�{3tvd�j  ����p�\0�\�)T��òdLei�J\�\r-���\�\�fO�t򪱍�I��T\�Aj{%�\�TG\��\�\nh0h��_�\�=5JKpq�~�\�\nr��ސ3>��\'TOn�iٿ�yO*��KStΜ\�T\��gn4j\�H\0*��1\0�w�\�6nL\�D��\n�ɪ���͂Ε\�����{	#Uab��n$��^�z,P���\��]\0R�o*�w��\�+#�ƿ�6\��ށ�\��\�_|!\�\�Dmڴ	IPv\ZTUYuM)Ɓe]��V\���G�Ғh�٥>�O7\�\��-m�3�\��(i\�\��;!��u�\�\��!���\�e\�!e�;D\�$��H�<Ii\�(����뼨�\�)J�\�ׯW�&�\�DǖM�ʽ9��\�޸\'{\�9\�~�p�nr`�9N\�%n\�^)\0�Hr	\�j��U�}��������!Q\�J\�VO�o\�\'O\�X�AML[LW\�+CG��\�2U\�	$d$]l�~�>unٌf\�N�9�\���9��\�/z�}�P7w-C+��L��Q��^���� \�d�T\��K/\�\�^��\�-��\��\�\�N��ڽ�	��\�\'h�hiŤ�ԳcsS3\�7x\�8a���&q/��62t���\�\�\�+f\0�$\�\�\�wӄ�T<c�I%F�x�ЍM�\�P\�Z3y�\�D\�6���r�\�C\�=\�&r\�C��ÌT��8Q;g��b>H��}\��lK�\�O1\�\�\�i5Xv\��AZp��5�\�\�\�#�䣔t\n�sΡN\�\�2R\�\�®��;\0(�s��\�\�s�\�y�����sk<��@\'\r\�c8l�2[�&g�\��\���.�^ڀˋ��\�3NMcd\�\�3�w\�\�\rS\�Ş����rv`\��\�z/]\��Z��;<\�ŷ�1��A���ը�ֳ���\�H���Q#u���3\�\Z��\�z֖*h\n`}�\�g\�\�\�J-�^/\0\�]Y;]\�l�f�`�\�g\�ű�C#\���	�l+��_�\�\�h�֓M\�P\�ImD0َ��.1/-��jD��n[�:�1Z�82\�G�C�%\�ѡK��]�u�\�v\�\Z�*�pO�\�*a\�Ȉ;�\�Ȏ�d���SY�\�2�^�ǐd^�F\�~���\n\�\�-3\�O��\�^\�D�9\�]\��\�\�/;�{�K&\�\�TB�\�D��Ł\�\Z.\�\�%!\�\�\�B0�S�:5o��K�|;,Qj\"�_��\��\�\�8\�N\r�f�#�\�\n��K�������Q\��\�5��\��r�Y���\�SJ�g۲&\�@M�\��j���\"C�F�9`^�7eg�\\�@\�h�i��\��|\����5rv4mX?�Q)\';\�\�l���\0W�w\�GRfg��c1���N�P�\�zR\�P��X$ld�捫Z\'���\�<�\�rgb�d\�j�j<��z\n����K\�\�\�Z~\�P	��\�ҏ~\�>G�V\�&�w�^pjy	\"\��\r/mԠb\'�k�\�\�bp���]\��V���=ߝ�NG\��\��:9�\ZL��\�C\rtp/���\�I%\�[z�u��&����\�Z\���r��\�:z\n�6h\��s7Y86켄�3C_z�yF��!��93X��\�Y�v�B��h�\��\�2\�!՜���3Co���N�O�\rnG^\�5\Z\\*O!�ĭ��ff�^8��;5�f��<�\"Vi���q���\"�FKF�S\�.H9�� YWs���������\�\�e����TpEr\����e\�aw95<�.\��\�\�r�\��r\n�v{�\�\�\n<��\�1dpTHfB\�&!oЩWG\0.���\�%a�\�\��\�\�k�\�^��0��egsAU\�3\�\�MVi=�aiMoPm®*��\���2�\�qǻ�j!}\�J�\�R⟲ಞ#e��\r�^\���\�|Θ5\�0\0W\�m\�<F�π�S\'\�\�q.��Q����+�^��j$\�\�\�cg�]ձp\��b���\�B��\\Li\0Y�c\\�\�-tKgapa7��\�4�F4�j&�Xr\�rNW҃\�n�\�\�q)�|\��K՛0\0W��\�K\0�{\�\�r�P\��\�-\�ܪ�(�^�{Ns�K{\nJ�S�*v\�)9��\�Y\r�X-\�!�0\�Y�n�.\0J,\\\�\�\��I�b[<p\�r�dR�\�m\�T�\n�y�\�j�S�+��\�%�I��jZ���\�\� \�YhX\�S\�\�r�q\�JMp�\�N�\�\�R􉷺\�5jdVh��x|\�1\��+%��5e��	1Q8��@SA�\�\'m��\�\��8�\�A\0��\�v\�r�q\�JMpaM\�C箽\0�*��KK5m�Ū!�e\��\�\�Y�$\�\�t\�Jop!n�J�\�\�y�\�|��k\r\�\�ХyU^C�EU�lw�	\��һ`\�\�\�\�\�m\0FΈG�`\0.\�\�K�[\�S\0�\��] ٭\�N�\n��[\�]աw�\�\\�oF\��I�\�\'m�\�%����\0\\\�.\�-U�.7W<�D\0�\�T�V \�J?pq��Q��.�OZ��UCk@\�\�1\�\�\�\0\\\�.�uE.x�p�����\�\�\�,��\n9\0Wz��c]rN��tj�%�X5\�KU����\�\\�X�[n�.�Ij.�2>�A�s\�O\�	.U/\r��x�Z�i	.r\�T�!2\�e5!H\�M_p�U�5\�\�\\:ժ5�\�w\rW\r�3R]\�L\r/\������\�	t�`d]\���.N\�fK�;ߏ�\�p�[��}9T�|ps�o,��߃\�;\0a\�\�w\���*p�\�n\�?\���%�T��p��Lv;�\�K�?\�JV*\����\�\��\�M:�cS:=�uU�\�\�3�@+��,\�\��i�\�F\�\��g�i\�\�;\0a�vc0+�w\�\r[7U�\�\r\\:u}\�\\�j��\�s�\�K%�����\����\� y~H.�|O~��Y�$\'�[O:�+�t;\��\�)�P[p�j�j^ê!�6\�zh���;�t�\�\�bHu���\r\�+�p��\�\�D�\�nWy�u:�U{p�j�jd�\��^�?=\��[����\�1&\�N=L��r�b�\\\��\�V\�\�����Oڂ\�-S�7�B��-\�v\�XL,�RE��c:3�]�\�ːj#\���q!�\�]�\�Ϥ����	����\�;\�%��\����`\�y�g~6W�]\\\���@�=>�w��\�J)\� t\�R�N�A�\�\n�L\�@�Aa-�:\n^X�c\�\0\\�QZ�%�P�@2t}�\Z\�HT`�\��OW7�\�\���?\�99�EР�[\�E�ƺ�Y\Z0����\�Z�ˮ��\\\�\�=\�\�uw\�\���\�N|+HB*�w,I��^�ڕ�|\�؍�Aʵ\�X�HN�\�\'��%�C�TC7w��U\�E��J�\�j�R�\���)=��\�\�4�Oީmҟ��\�\����}\�$\�KE�\Z�%�	*���\�`��z2\�3�f\r��\��jM?�n\�:�wk�ߘ\�\��4�oί|�O��#6;lz�r�\�ƺ\"l�\0\\>d\�C5t\�{bps�u��\"�\"/*\0+���?�\��G�F\�\�\�,��u�]���TvhX+l�*p\�\�������\�ϫE�\�\n3~뽡N�B.3�z�`�O�\����C;s�[7��F�\�@\�v�msGz�E\�\����U��\�0�w\�\�aĶ�\�@�X\�&�\05��?���5|�ukOc\�F3��qׁ�)1\����9!s��T\�\��fJ�+KGV��p|ș\��Ɂd�\n:�\\\�٧��p��;Y�h_�ZJV߆\�Ly\�\��\����\�5��d\�\�WR⏾0�_�\�`!]ؾ�f��=\���1B�E�2�z�lB\�FR\�ɢzQ�5�s\�\�\�S1��_|d�\�YQVر��@�pq*�\�\�P\�S�\�n#S張\�7��y\�C�!\�\�và��W����AJ\�Ѓ=ts\���\�F\�\�{W�m4Ap�d\r\��K\�N\�x��\�\�\Zҋ*Ol\rӳCk��[��X�|n��Mv\�F$\�y���\�+���K�\��\�\'��h��\�3�\�\'\0=ʩ��TԹe3\�Y^�?�nY\Z,f\�OώUӉ]�\�\�!Tq\�==SJ����k\�\n|�;W\�\�[\�ɉ\�\�g�\�G���\ZTB�g���\�vj�Y\�*���p�:XV�M��wV\���x�*����\'\�_\�ã�\���\r�\�\�\��-a\��Y����\\�\��\"\�Y8\�{Ǥ]�\��e.�\�*\�\Z\"\�	b~o\�hp][\�,\�e)��<�6\�Ş\"�ǰ�Gu�\��Ń;\�ŕ\�@v\�(^OOo�J�ݽI�wl����d\�r*5h˲�V\�fS�\�l*\\�C�7ж�Kh��Ǐ_O�^�xsw!=:^,�ɩ�ß��\�O�Tyf���X5t��\�r�%��P�\��1=�t���;D�\��\�\�c�\�Xn\�\�B�\�+\�1�\�\�E�\�|vlX.\�9�\�\�/0\�kM\�\\@�7.��\�s\�\�\��\��<8}D�s\ny�ˌg�痏\��>]�\�Q:\�>71L\'p�\�jլQH\�(\��[5\Z\\\��k�i1N�\�����ݡ�W%�\��?�;l!a\�W^�fh���ů\'\���.\0�[�\�d��\�~�U�i��e�kc�^�\�d<+m]�/\0�e\�:r`?\�\�\��傩\�*1H .s\�￩$�\�!\�2$�<?+a�׷��\�;V�\0˜\�z\�q9�\�[`;\�\"x�9b#\�}\�6l�_\�\�\�q�t�\\v�.U%2k-�9�Bx��q�[5\Z\\lo��:e�=��2���\ZV��j!�&�ÅJƃ\Zxc�Zzt\�L(n^�FW\�\�\�*��*6v���\�ں��׽�R0H�`]-�R\��`�\�ݽ;z�\�\�\�A\0�\�ὰ9nX\�q�\�Q�b�\�\�B\��\�\�c�mhwJ6 �\�\�PW\��װq���sO\�6\�u�\�`\�\�!M�ݕtp�v���\�\�\�Go���p3H/\�2аG䅇�5\�\�t\�x��\�t\�\�	��ö��\�`<\��{�6�\���\�&\��6�\�y\�x���B���[!,TF\��nn\��\0P\rI(\��VK�c�\�\����BH�\�K�̱��lW\�R�V�:��\n\�\��>ۍ\�+���6g\�\\Y;\�\\\�\Z\r.v�\�\��ތLq�[~R\�ה�yU9�\��g{p1^:L�O\�6��&\�l\'H.׭\�m��\�P�\\G��\�u�d=9��\�� y�\r	,#~\�4FL�?��V��L}��)�`�.�	\�ڿc=ݿsS\�q�\�e.s,�\���m\�g]߶�*�m6ǣ\�\�\�\�<�Kegwo𚲔��\�\n\�BK=2\�\�2�T�\�^н�\�\�6�;��u����ˠ���҃�G\�\�*șMٓ�\�ӇТ��iX\�\�4仮!4f`oZ2k\�\�Js\��\�\�\�\�\�ų\'t�(?�><V\'`\�\�\0�\�sr\�?<w\�q�k�\�7\�8g\������\r\�G˲��9\�u�#\��f����B���v��Ԓ�e��������\�`쒯�j!�Kvh���Ќ΍\� \�H\�Fb���\�\��M\�.,��\�\�\�u\�\�M�<�\�\Zٛ\���M\�G\�Jv1�+\�֓`\�חf\�E\�\nr]\���\��0�h\�\�\�\��\�\�\�E��F+v�L\�s\�6h܀\�4^̱\��ݫ9~/\�ae��w��\�p\�\�\�B�׋=�\�\�A.d\�XX\�;�M����Z\Z5\\r\��.�\�\�w\�/�\��������k\�[$H0;\Z\�/��.��o�]\�\�r�\�\�K�G��pB?Z<���l\�\��R\�辴o\�fw��sI0�u,H[b\����\�T�s5y\�?\�\�\�.�[�\�˧]f�#\0\�\�\�<\����֯r�X\0�Ɏ\Zy~��Ÿ8��˲\�B2\�_H�bpq�c~oq�W//ɜ .UG\�4�ldO\�wx\�j\�:�\�\�\�p�\n��Yc[\�	L\0;\�\�cTq��-\�=���V/�-Y��\�(\\Hvm�\'��K+x\�G�U&\�]�p=\�:�&wo\�>�W��\�UW�:z�vm\��#~޻u�\�_8AON\�秋m\��hLcl\nN�:2HXl��W\\ +�I���p�\�k|�9`�2P�.�Y5��:���C��\\v\�j�t�Kdz�%=:��n\�\\I�/�q�ۅ]�\��\"�&\�\�V�C\"ҼB���ҩ��M\�N\�9B� ��{�b��n\�\�Ow���G%��m�\"�\'Y\�+\�K\�\�F0�;\0�7Z���&s�+P���\�-�+yg�\���w4\�\�\�l\���cN��8�luj�QE�6\����5_\�7�nN0�	�+\�D���@��v�qC\�{+FA�K\�mn07�\�\�\�bn�ݼ\��w�̓����\�\�6\�\�\�QU����n\�k56Q\�#����G\�w\";Â\�]ɩ��ak�&�uY�\�Oom\�]\���E�\�VgiD\0.[\�[�2%9\�\�v[	c�\�%�Rv\n@-ڕ��)�=I/�m7�h\�Y�f^�J(�eS\�/\�\�Qe��fv���[\�\�+σ\�\�WtaD�\�%�,�;/�_�/�:Sa�*p�\��.V\r��^�$x�x\\�GE^����O�\�0%\�u\�e~��P��:y��x&\�*�.k�\�#�T\0�W���x�U�3�Et��\�N�H���p�\�G\Z�.�\�Y�P[ᜈ\\�\0\0׽���\�\�@Y�\Z\�oݜ�՛\�+/(\�N\�\�*dk��\�����r\�<\n&��D\�L\r�j�����C_��\�VW({׃\�\�E`�\Z	�\�f<VA��#\�\�^4[��϶W�\��\��\��Zj\�\�93\�\��mCD\�\�bo�J�\�\�\��%ǻd\��9ЫCܴ}	�a$�\��ʱ!1�H��	��5�6Tħ�\�\�\�NCE��y��w\�}�8Q㑋?�z\nep\rh\�\\�2\�\�\\�\�?��OV	�\�\�\\7��UC�]\�/N\rx�:��e窒\\\�j���~�Aui�a�$z��xG\�X\"=�%��\��\�\�ܾ��4N��ţL�%c~P\����?�:�`X\�x��:�m���J8��g!\�\�XOٙ!��\�\0\\=\�W���e\���H\��\�Po�ӂ=\\3A,�	�r\�l0E���\�$Z��g��|�T�h�uc\�@.�\0�7���0z��4\�U[\�\�\�Ɓ�Y\�]7O!�����խy�f��%�KV	�K�TC~qT�Ae�\����gp=Z7�\��;,��bY\��E\�]�Ỹ�k�eb\�S����\���!\\w�K곡\"M\�\'$��+\�h\�\��<7k�6-���Kړ\n\\v6=�\�͈C6:��ځK\�ְ���\�Ǝ�(�]ð\�Y�ń\�b�\�e�\�\�\���X\�y!??\ZG�l�\�\�j\�\\?\��as�a\�\� ��\�6\'U����QY+�!E�6b4\�\�<y@\�gdpɁc�>i\���\'AN�a �wy\�z&�\�z\�p�\Z\��\0\r*#���\�H�Ǵޭ�XR9�\�-�\�-�3Y\�b}<7\0!�y�p��mk;K_\�awn\�\�ѾUXW^9\��%\�őڃKN\�E�����\"�\�\�(!Y5�}\�	x`$7\�\�\�3�UD�\"�U%�D5//s�\�\�PM�P7O�\n\\9\�4R�^#���C���\��[����n\�\�\�M\Z�{Yp�\�f,z�\0�܎��B\'�\��\�\�E:\'��w�\�bU\�;pAj!�b��\\��K+�\�8��x\�KxD9\n�\�8��l\��\�E5I����\\�\�=\\;1���\r�8]\��8A �\�!\�o�2��l��XKp\�1/���kd�O�ϧ\�E,-���w�ŀ���f�n���d�	.�\�\�\�$�\��\�m\ZniO2��aBjY�\"\�5\�1����p̋�\�Te\�\\v0�͇1��UF�G+Q̇g�,�j�1#�&A ��m\'�B\�\�<\��3*\�!���v-\�Y%\�%\�)e��*�W�����Q��\Z\'R\�`F0=���h�vZ0�j��i�q˪����p\�2\���b�U\�Ǹ\�I�ۋ3CT�gv���56{��T{\�K�Sl+%�uubx@Y\�8\�\�Z�\�JƉ��\���Xgp\�\�ޏyqfp���UU\�(1\n[?Cr]UB��%���K^u85���l\�(�\�\�IV\r\��\�#QQ��dթ�\�2侖��;�\�ɒ\�D^Ut�\�J�ԋHUK7paN�jhM9J6y\�̰�Y\�\�D֌\�v�����R\�S-�v9;J�\�o\�L\r&?bh~ۅ^׆��U\�����&LYpq*��gh\�akAj\�\�\�v��g+ٶI\��܈�u%\�;�{��K^�9����\�h��vy��\�Ѝ�w��s����Ƣx���e%�\��BL&\�0�*��ʒ|\�j\�\�\�&��~P@yg\�p}\�V�\�I8f�\�\r��m\����瞆V�\\\�ԣ��{#����\�D\�ETyj�g�H\0\��\�\���h,/����K��\�Xs����g�\��)\rJ\�1�\�\�s\�dX�H�\�\� ՑIl7�޾����\�.�<��\nl.�\�O��!~>5����\�\�1�[Tc]A\"���e�]�R\\r\�5kG(�t��\�\�Um�\�1T�\�J,��\�A�>Z7)$�\��\�\��TY��*�o�\�ҥ�G��o\"�\��N\�R�Pl;?�Zo�T�ga��\�K\0�8������\�\�5[�\"�\��]${����\�]�g~!\0\�Y�~�J�l+U0\�9\�\�\�.Y\�\�n�ZD\�5�\ZZ�d\r�K\�{�`\�\�2�v���S.k|\�\n\�C�?L){\�\�+u\�\�2�{��\���\��+Ʋ��R��a�?\Zƻ^=\r\\�ߟ�v�b\�\��\�\'|c0�Zr-\0\�\�:�\�G)coA\�\�x�ʋ�Zg\�\��S\n\\Hk\�h\�\�\�\�Ǵ�����w=\�>O�\�|a\�h*\�V�.L\�,�p5\�g���3�ُʦ��c��C[۪��l*�+K�\�y�\���NN\�Ae���3�Aw�d�\�V\�^�e|\�N%�ۘt9l!e�Bz�ח.{\r��\�g�t\�|�\�`\�\�&*\�F%Y?	R�\rt0g$]\�,8.\0\�c�FPY\�\�\�\�QY\�X1��&ӵ�3\�♖�J�:M\�� ���\�/�Kz\�X~�^s\r�\�3�4\0�Hg\n&ѡţ#fx\':�|�,3aC���|\���qtq\�T��q���~rF���5T\��T*�\��VJ�Kn��s9CZ&���\�$�2� �fr+\�۩r\0�\�@�K�h\�I�$\��1T?�\�%K�NO)	..?�\�DP#Y��\�ym�\�$��l~30\0ª#\�\�v�\�eL���\'\�\�\0��@\���\Z�pg\rcݼ�3>�\�)&i.k񤊐*Ş#��W\�\�K�v01��WFdƖ��\��jW�\�c`��`$ �z/�u���\049��\"\�\����]CI7�\�ϰɬ���Jz�y�1\n��ӎ�&\�o&6�� �\�\�<O��,�5\�ֺ޺�OKpEӃ\�k:��K\�\�y\0FL�\�Khv ��\��\�KRE\Z಴	��rr\�\�\�YP�\�X^6\')���\�u:�$\0W�12O�\r�����a�t\";���\�嵤�c[�vo\n�\��	���d^�jh�sC]�<�uZX]R\�h�	��t2��Ű\'#Q\r�d�s[<]\�/�C�̋cC�\ZB���F���:)�B��Kv��\�\�P�l0^TBvd\�\\I�˅P�\�\�-�P\r\�\�H�� 7�\Z)\\(j�Tz!I#\�{1�\0�Lv�l|c�}ݒd\�\�h��\��$5\\�)^���a�]N`$\��A ��!5�`��*\�=R\�BC\0ܮT\'pY]�^�����\nY�<�彔�X\�~�K���\�Y����	@��\�!K�Dz�I�^TB�C�K�\Z.�.\�\�qr��]ւ\�Jw�./�	\���\�R�ƀK\�$\�Ez\�\��N	�5\\\�<�./�\�k�ԪQ\��Dz\�e(N9v5\\vS9\�奼���\�-�p\�(��xٱ\���D��s\�Y*^�\�si~\0�x����\�Y��\�9u\\^�\�p\\K�\�\�\0\\>Ľ�dm����\�[\�q(�\�T��\r\�-#��Ϥka\0.Eֆ� k��rڵQ��#w`#��.�띃Ƈz5vL�3\�6�{[g{.�Թ\�`\0�8\��e̗\�I�S��L\�\\\�v�M-��|\�\�<I\�K�g,��\Z��\�Z뭫S:�9\��\�5t\�p_�rc9\�j\��\�����߇�Gbo�,A\�W�wT9\�)��p�\�\��\�{.w$\�\�\�\��%�\�˩5Y����N\�\�ك\���q�:�+:�\�ړ�\�X򞈮�\�{�\�\�\�.�\r�x\���\��p\� \�C���.--�h\�ܡ��IG�tq�cñZڱw�&���$\�!��B\��J�L�\����Vw8��\�j\�\�C`�\�w���ҹ/F\0��\"Z�k&���w\�ϥ~˭\�(��Ȭl0�>�\�R\�J�p\�hY;�23�\��pl8�s�\�\��\0�]\�N;pA�\�t;+\0�K_zk��H��z\���ڤ\�\��nv���\�yp��JIjRF\0�(:F�n`��X\�Tv\�C?m/�̈x=\�\�֒\�A�_�G�80ҹ\�L\0.�˲�=�2\�y��:e�\�3`\�!d\�Lp�\���\��\0\\��v}\�0Ʋ���\�~\�@Nn�x��ة��wP&\�XH��\'\0�\�C\�9\�\0\0\�3�?\�9(�,\ZE\r@\�T�l|\�\�n��\�\��[\�Wݷt�\��N\�e�6\�\�,�\0\\Q�Kv-�\��.\0\�7kPퟝIUI,�N\�\00�qX\�\�F���5�nm���\'N��\��clOZ\��\�	�+\0W\�\�b�mlY���y�v�\�i�j�:o(\�F\�K\�Ӄ��Q\�[���ѣ���\�l�u8w�\�6W\�?�E\�ڪ��\��+\0W\�\�\�lN�_Ԧ|��v�\�I��\n��󇊀�����=2�ݭ�m\�\�F\��\�yz@uc\�L:a�\�\�^�\r\�:G\��\���:\��+\0�\'z��=�x�j.P\�Δ\�ܐ`-\�P\�Я\�\��\�:��3[2Ζ \�.N�ͳ]\�a}\�L��{x!<\�!1e½\�>�b�\��1\�\�0_\�tx|\�\�\0��\�k\�őq/\�\�\�z���\��\�`�<\�\�c�\�Rc�\�7v\�u�>��S�ѡ��M:�`�h�����\��a��/\��\�[31\\���\�\�e\�z��q�O����L.Y�ge�\�\0v|�\�T:��\��-1v�e�\�=��\�\�`*3\�Ĳ	)E(�\�y�<�\�I}\�Ԣ\�u�K!\�\�\�\�\�O\�zE\�NkwU�\�\�L\�\n�d�:�5��g���\�k	\�6���=\�Q���\\>A{\�8�.2�\��>7綮{#1_��\�*��x�,��uE�\�^����\�Vp��_.�d��X6��vI\����w\\*0�\�2cw_\��C*����� \�3�Z>Q[\���.f�\�_mH)\�geۺ!�tLu\�\�ݹTy��\�;���+�Z\�\�#\�\0{�v2]Y6��\�Ȝ������\�ڂ�j)~/Ȑ�\�\0G�n�q�81�{E�:bz4�\�\�\�\��72�^V<s}g5]ze�V.y�*�\��%���\'	\�-V<�#�4���`\�\�\�\�Ҿ1]\�\�A�����+\'iC�\r\�^kl7hאv\��\'s�\�MK\Zء^���N\�\�\�V$v\�g\n\�\�\�\�獤��is�ƴ\�ڂ\�u�O�\�v���\�E\�VN��$��|�\���0>+\�}l^&�\\4Lؖa-�9L�^Ϸ|��FƵ�|G\�^*O\"�Y�\'���\�4���Kf�48W0A�+%��ܓ���q\�c\�ص!��=�2@uu�X��\�\�P�_ܾ\�{�f�+pdD�+\�\�a\��\�⯆Mvh|7Z�u]Zm01?g��\��_X5Ydoě��3i\�\��us,\r�\�U�岱!`\�a\'�e;:.\\%}\rvld*al\��\�\�B*��j\�U0336hK��t\�\0\�\���t�p�\�tj\�q\�s��j\"~	{�`�T¾2\�_/��@5�E;\�}N#\'���?O�\�g\�_�\�ѡ��\�&\�\�\�a��_3Z\��\r*lQۤ-]о�m\��\�~t~\�hQ[)��7�ʦ��\�_��\��_צ��Nf� 2M��d?Vį���T\�\�+�q\�LZ4�:��q\0�t��ߧ5Y�\�1�Tw`6�\�^C�\�b����|���\�\�>\�~�����ֵ�e� ��v����n\�J�\\�\��;\�@;5����\�nc�U\r��{O*\�/Cw���?|�Jlnӧ��]\0� \�X�.#G\�_�燁IE�7��`P�͍d܇\��\�\�t�\�f�\�\�z��UmQ\�R\�#\�\��1���NM\�N\��٪{JPm�N�v\�\�\���.�.>\�i ٠Q\0l����+��`\�eU��\�\�\�O|�\�\�\r\�|-�^\�^\0��Jn\�vR�S�y\��$�^\��w�Y[v=\�u����4�\0\\qV�۩x�P��%�\�\�\�Ugm\�\�\�A:D4_h\�Tq�*@�\� E�\�\�\"z�졯�Ɔ��˯5�&�M4\�T\�\�\�\��\�\�z��꺊��S>�?�ݿF%\�\'�L\ri��A�\"HMH\'܀\��L@� �.�˜M\�)\�o<֍\�6�Β-C\'{	/,\�`\�K\�n��ֳL�o\�.�{��Q<�\�_J\�\n2�\�\�\�\�v�F>�\�wi\�\���\�\�\����\��]J�\�mM\\���ڍN`K\Z��OG\�|����\�\n!���}v�T\�wQ1\����<�\"y\'�@Z�j���\'~u}\�X�	6�xI7��m�d:H2m;a\���\�\��\�u�U��\��\��o�R,nt�\�WO`�\�ݐ��\�{q\�\�Z�\�?v^7\�,2#Q6\�v<^\�M^��\�T@���++�?�I�g\��j>qC\�\�_P�,S�A��_\��=��e\�T��ʝ\0�\�:�/*Ѵ�\�(��\nqUU@�\�\�y\��uPI7�UIhP�h).\�qT�_;ͧ��%`\�\n��ov�\�x���u\�\�-�\�\�.vv�_\�,�YF<�~Ţ��û	\�D\�\'m�d\\19<�X\�x�\r6\�ﺯ\�\n`��+V50Y��R<c_� �q\�;Ƞ�%T|\��,\��\n#�o�?�\�\"xW[pE�\n\�(��##�4��\0��\��2��P\�\�U��l\�5x��\r\�l\���@�\�w3<u���-\�K:\\!�{�\��s��m(K	`)��a��ͯ+\��\�v@%2 \�d�,\0e%\�ɾ�\�\��\���\��%5�e!7/��W�\�\�\0ϫ	`��-�-Uv�\�\�\r�u\�\�}�\ra�t�\�KUL�z�\�Gօ�\Z\�\�\Z�J�T\\�A��.\�| �)KMvտ|t��d��\�\�%i\�L`�wы�k\�t\�\��3/Tq(k��K�\�\0S�\�\�\�\�F0�\���R��͸\��\�q�P\������8�+V\�aF��C5\0Np�y\�&0}<�ӗoRϹ\�\�w��*�;���\�sX�OϞ=�\�0\�u�\�N�\�\��\�X*p!Ff0$�&\\rL��]��u\"��(~2,\�A9\�]��\�=�V��o��.%tC�T�3������\�\�\�H8�d�\�����\Z��\�\��\�g�\�x����T�˰��7\�\�!m�Z�su\0R�T\�L\�\�f�aka`��阛�v�\\\�5�\�{\�d����O�v��3\�o�a�/\�f�=�X���\�T�k>#V�\';\�\"vS\�\�b\�4{GB��jx��m��\�3N<v`�x\��%�3N�e��.\�\0l\�\�6$\�!%\�h\�����Bz��N\�c�ٹ,\�<�n\��\�\0���Uz%\\r�[G�=7�	}7\�.\��^���ӷ��_O�{P�\�̥i\r,+/��\n �\�+��\0��\�f/^U\�tX�72W;&���\�\0Ut\�\�\��\�+�(��q�tŻ\�ec�f\�\�\���T\�Tvj\�\�9{_BR�\�V�\�_�ɚu2auI�\0�.�#\�ɱiRoF,��Hs倲=/� c�X��BBr�>�\�\��qX!]]\�nZ��:96\"\�\�Ȉ�^+\�\�v)��\�\���K�i��\��B\�o��\�ݲ\�\��\�ɱI\�aD\��[�E\�T���T�\�W��uN5����c�6}r�BbU\�6�1�<\�t�\\���u�Қ\�3��\�tɲ( W���c\�KP��[\�\�e\�*\�\0\0\0\0IEND�B`��PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\�\0\0\0\�\0\0\0�}ĵ\0\07<IDATx\�\�}�w׶���y\�\��rg\�[3���;\�7s\��\�cccl��k����l�,�\�A$�@A$��H\"H$\"c�\�9Z �\�w\�.��>����t�j��Rw\�9u�wv\�\'\�yA-Je*�Q�\��:����f͚QӦM\�\�\��gz\�7\���\�k޼9�jՊ���kOԶm[���\�\���~\����\�\���{�\�\�~_~���]�>�\�[��\�O�߱R�-�u\�\�Ԯ];\�sL4a�X��\�CjS��e��\�\�.�/\�;\�#�f�)\0\��\�{O\�\0\�7n\�X�\�s�~˖-M\�\r6\�|�\�7C\�	a��L�\�ק?�Pl6���@\�&��bC:��K7j\�\�u%�\"�L\���\�թSǔ�N\�l߾=}�\�WT�q�de�\0�^H�}\'z뭷�A�l�~7�\�\0\\Y}^3�R\�O	\����|H	�\�2�>�\����\0R���96�\��ǻQIu�-\�ﬦ,%�U2���\n&�AXEt\Z$�\Z>�\�x�\��&�6l��\0Z2%Z�,#�\�d0�̬�\��ց\�` ]\�2lPo��Y\0\0�\r�tqr���oU�b�M&s�#\�qr`0�\0B�\�??7\ṅm9����\�\�\�\�	/p\0�ҶQ�M	�l�dp\�1!��\n�\�d��\�1\�d����P[�K�p%\\\��gp\���4��e�\"�# K�:m@x`���+4��\� S�&Ml�\��KU`YA�\�G	�%�\�\�x��\n\��#A=`[@��\�Ǚ v����r*$\�H�{c\��g\'��?vb0�\r�?qʉ���\�\�;�.\�ҿ�\�oa�B�\r;<PW\�66\'G���f�fA\0�8Ŵ�\\\�n\���0=�*\�2\Z��\�iDȨ��&?��u�	a�AuK��� \0�τ�b4R����\�\��X��\r@\�\nY�Y� ��\�|\�-�\�9oq\0.�m-�R�\��Q?THvKˁVH>Į �\0(d�\�\��\�Z\�s\��~SM=\�H�\�R�x\Zڸ?Ɓ�ZN��[���4�H�$$@\���\�೉HV��\�s����Z��i�׵��lvǚ\�\�Q%\�FC���,�b\"������-��_��]Yw5ǁ\"\�B���\�\���r*�d��\�\�Uua�7��.�*\�sv���\0\\~�\�u�?rS9\�\r`��*�6rus��\0g��\�w\�Lt�;3&�{3tvd�j  ����p�\0�\�)T��òdLei�J\�\r-���\�\�fO�t򪱍�I��T\�Aj{%�\�TG\��\�\nh0h��_�\�=5JKpq�~�\�\nr��ސ3>��\'TOn�iٿ�yO*��KStΜ\�T\��gn4j\�H\0*��1\0�w�\�6nL\�D��\n�ɪ���͂Ε\�����{	#Uab��n$��^�z,P���\��]\0R�o*�w��\�+#�ƿ�6\��ށ�\��\�_|!\�\�Dmڴ	IPv\ZTUYuM)Ɓe]��V\���G�Ғh�٥>�O7\�\��-m�3�\��(i\�\��;!��u�\�\��!���\�e\�!e�;D\�$��H�<Ii\�(����뼨�\�)J�\�ׯW�&�\�DǖM�ʽ9��\�޸\'{\�9\�~�p�nr`�9N\�%n\�^)\0�Hr	\�j��U�}��������!Q\�J\�VO�o\�\'O\�X�AML[LW\�+CG��\�2U\�	$d$]l�~�>unٌf\�N�9�\���9��\�/z�}�P7w-C+��L��Q��^���� \�d�T\��K/\�\�^��\�-��\��\�\�N��ڽ�	��\�\'h�hiŤ�ԳcsS3\�7x\�8a���&q/��62t���\�\�\�+f\0�$\�\�\�wӄ�T<c�I%F�x�ЍM�\�P\�Z3y�\�D\�6���r�\�C\�=\�&r\�C��ÌT��8Q;g��b>H��}\��lK�\�O1\�\�\�i5Xv\��AZp��5�\�\�\�#�䣔t\n�sΡN\�\�2R\�\�®��;\0(�s��\�\�s�\�y�����sk<��@\'\r\�c8l�2[�&g�\��\���.�^ڀˋ��\�3NMcd\�\�3�w\�\�\rS\�Ş����rv`\��\�z/]\��Z��;<\�ŷ�1��A���ը�ֳ���\�H���Q#u���3\�\Z��\�z֖*h\n`}�\�g\�\�\�J-�^/\0\�]Y;]\�l�f�`�\�g\�ű�C#\���	�l+��_�\�\�h�֓M\�P\�ImD0َ��.1/-��jD��n[�:�1Z�82\�G�C�%\�ѡK��]�u�\�v\�\Z�*�pO�\�*a\�Ȉ;�\�Ȏ�d���SY�\�2�^�ǐd^�F\�~���\n\�\�-3\�O��\�^\�D�9\�]\��\�\�/;�{�K&\�\�TB�\�D��Ł\�\Z.\�\�%!\�\�\�B0�S�:5o��K�|;,Qj\"�_��\��\�\�8\�N\r�f�#�\�\n��K�������Q\��\�5��\��r�Y���\�SJ�g۲&\�@M�\��j���\"C�F�9`^�7eg�\\�@\�h�i��\��|\����5rv4mX?�Q)\';\�\�l���\0W�w\�GRfg��c1���N�P�\�zR\�P��X$ld�捫Z\'���\�<�\�rgb�d\�j�j<��z\n����K\�\�\�Z~\�P	��\�ҏ~\�>G�V\�&�w�^pjy	\"\��\r/mԠb\'�k�\�\�bp���]\��V���=ߝ�NG\��\��:9�\ZL��\�C\rtp/���\�I%\�[z�u��&����\�Z\���r��\�:z\n�6h\��s7Y86켄�3C_z�yF��!��93X��\�Y�v�B��h�\��\�2\�!՜���3Co���N�O�\rnG^\�5\Z\\*O!�ĭ��ff�^8��;5�f��<�\"Vi���q���\"�FKF�S\�.H9�� YWs���������\�\�e����TpEr\����e\�aw95<�.\��\�\�r�\��r\n�v{�\�\�\n<��\�1dpTHfB\�&!oЩWG\0.���\�%a�\�\��\�\�k�\�^��0��egsAU\�3\�\�MVi=�aiMoPm®*��\���2�\�qǻ�j!}\�J�\�R⟲ಞ#e��\r�^\���\�|Θ5\�0\0W\�m\�<F�π�S\'\�\�q.��Q����+�^��j$\�\�\�cg�]ձp\��b���\�B��\\Li\0Y�c\\�\�-tKgapa7��\�4�F4�j&�Xr\�rNW҃\�n�\�\�q)�|\��K՛0\0W��\�K\0�{\�\�r�P\��\�-\�ܪ�(�^�{Ns�K{\nJ�S�*v\�)9��\�Y\r�X-\�!�0\�Y�n�.\0J,\\\�\�\��I�b[<p\�r�dR�\�m\�T�\n�y�\�j�S�+��\�%�I��jZ���\�\� \�YhX\�S\�\�r�q\�JMp�\�N�\�\�R􉷺\�5jdVh��x|\�1\��+%��5e��	1Q8��@SA�\�\'m��\�\��8�\�A\0��\�v\�r�q\�JMpaM\�C箽\0�*��KK5m�Ū!�e\��\�\�Y�$\�\�t\�Jop!n�J�\�\�y�\�|��k\r\�\�ХyU^C�EU�lw�	\��һ`\�\�\�\�\�m\0FΈG�`\0.\�\�K�[\�S\0�\��] ٭\�N�\n��[\�]աw�\�\\�oF\��I�\�\'m�\�%����\0\\\�.\�-U�.7W<�D\0�\�T�V \�J?pq��Q��.�OZ��UCk@\�\�1\�\�\�\0\\\�.�uE.x�p�����\�\�\�,��\n9\0Wz��c]rN��tj�%�X5\�KU����\�\\�X�[n�.�Ij.�2>�A�s\�O\�	.U/\r��x�Z�i	.r\�T�!2\�e5!H\�M_p�U�5\�\�\\:ժ5�\�w\rW\r�3R]\�L\r/\������\�	t�`d]\���.N\�fK�;ߏ�\�p�[��}9T�|ps�o,��߃\�;\0a\�\�w\���*p�\�n\�?\���%�T��p��Lv;�\�K�?\�JV*\����\�\��\�M:�cS:=�uU�\�\�3�@+��,\�\��i�\�F\�\��g�i\�\�;\0a�vc0+�w\�\r[7U�\�\r\\:u}\�\\�j��\�s�\�K%�����\����\� y~H.�|O~��Y�$\'�[O:�+�t;\��\�)�P[p�j�j^ê!�6\�zh���;�t�\�\�bHu���\r\�+�p��\�\�D�\�nWy�u:�U{p�j�jd�\��^�?=\��[����\�1&\�N=L��r�b�\\\��\�V\�\�����Oڂ\�-S�7�B��-\�v\�XL,�RE��c:3�]�\�ːj#\���q!�\�]�\�Ϥ����	����\�;\�%��\����`\�y�g~6W�]\\\���@�=>�w��\�J)\� t\�R�N�A�\�\n�L\�@�Aa-�:\n^X�c\�\0\\�QZ�%�P�@2t}�\Z\�HT`�\��OW7�\�\���?\�99�EР�[\�E�ƺ�Y\Z0����\�Z�ˮ��\\\�\�=\�\�uw\�\���\�N|+HB*�w,I��^�ڕ�|\�؍�Aʵ\�X�HN�\�\'��%�C�TC7w��U\�E��J�\�j�R�\���)=��\�\�4�Oީmҟ��\�\����}\�$\�KE�\Z�%�	*���\�`��z2\�3�f\r��\��jM?�n\�:�wk�ߘ\�\��4�oί|�O��#6;lz�r�\�ƺ\"l�\0\\>d\�C5t\�{bps�u��\"�\"/*\0+���?�\��G�F\�\�\�,��u�]���TvhX+l�*p\�\�������\�ϫE�\�\n3~뽡N�B.3�z�`�O�\����C;s�[7��F�\�@\�v�msGz�E\�\����U��\�0�w\�\�aĶ�\�@�X\�&�\05��?���5|�ukOc\�F3��qׁ�)1\����9!s��T\�\��fJ�+KGV��p|ș\��Ɂd�\n:�\\\�٧��p��;Y�h_�ZJV߆\�Ly\�\��\����\�5��d\�\�WR⏾0�_�\�`!]ؾ�f��=\���1B�E�2�z�lB\�FR\�ɢzQ�5�s\�\�\�S1��_|d�\�YQVر��@�pq*�\�\�P\�S�\�n#S張\�7��y\�C�!\�\�và��W����AJ\�Ѓ=ts\���\�F\�\�{W�m4Ap�d\r\��K\�N\�x��\�\�\Zҋ*Ol\rӳCk��[��X�|n��Mv\�F$\�y���\�+���K�\��\�\'��h��\�3�\�\'\0=ʩ��TԹe3\�Y^�?�nY\Z,f\�OώUӉ]�\�\�!Tq\�==SJ����k\�\n|�;W\�\�[\�ɉ\�\�g�\�G���\ZTB�g���\�vj�Y\�*���p�:XV�M��wV\���x�*����\'\�_\�ã�\���\r�\�\�\��-a\��Y����\\�\��\"\�Y8\�{Ǥ]�\��e.�\�*\�\Z\"\�	b~o\�hp][\�,\�e)��<�6\�Ş\"�ǰ�Gu�\��Ń;\�ŕ\�@v\�(^OOo�J�ݽI�wl����d\�r*5h˲�V\�fS�\�l*\\�C�7ж�Kh��Ǐ_O�^�xsw!=:^,�ɩ�ß��\�O�Tyf���X5t��\�r�%��P�\��1=�t���;D�\��\�\�c�\�Xn\�\�B�\�+\�1�\�\�E�\�|vlX.\�9�\�\�/0\�kM\�\\@�7.��\�s\�\�\��\��<8}D�s\ny�ˌg�痏\��>]�\�Q:\�>71L\'p�\�jլQH\�(\��[5\Z\\\��k�i1N�\�����ݡ�W%�\��?�;l!a\�W^�fh���ů\'\���.\0�[�\�d��\�~�U�i��e�kc�^�\�d<+m]�/\0�e\�:r`?\�\�\��傩\�*1H .s\�￩$�\�!\�2$�<?+a�׷��\�;V�\0˜\�z\�q9�\�[`;\�\"x�9b#\�}\�6l�_\�\�\�q�t�\\v�.U%2k-�9�Bx��q�[5\Z\\lo��:e�=��2���\ZV��j!�&�ÅJƃ\Zxc�Zzt\�L(n^�FW\�\�\�*��*6v���\�ں��׽�R0H�`]-�R\��`�\�ݽ;z�\�\�\�A\0�\�ὰ9nX\�q�\�Q�b�\�\�B\��\�\�c�mhwJ6 �\�\�PW\��װq���sO\�6\�u�\�`\�\�!M�ݕtp�v���\�\�\�Go���p3H/\�2аG䅇�5\�\�t\�x��\�t\�\�	��ö��\�`<\��{�6�\���\�&\��6�\�y\�x���B���[!,TF\��nn\��\0P\rI(\��VK�c�\�\����BH�\�K�̱��lW\�R�V�:��\n\�\��>ۍ\�+���6g\�\\Y;\�\\\�\Z\r.v�\�\��ތLq�[~R\�ה�yU9�\��g{p1^:L�O\�6��&\�l\'H.׭\�m��\�P�\\G��\�u�d=9��\�� y�\r	,#~\�4FL�?��V��L}��)�`�.�	\�ڿc=ݿsS\�q�\�e.s,�\���m\�g]߶�*�m6ǣ\�\�\�\�<�Kegwo𚲔��\�\n\�BK=2\�\�2�T�\�^н�\�\�6�;��u����ˠ���҃�G\�\�*șMٓ�\�ӇТ��iX\�\�4仮!4f`oZ2k\�\�Js\��\�\�\�\�\�ų\'t�(?�><V\'`\�\�\0�\�sr\�?<w\�q�k�\�7\�8g\������\r\�G˲��9\�u�#\��f����B���v��Ԓ�e��������\�`쒯�j!�Kvh���Ќ΍\� \�H\�Fb���\�\��M\�.,��\�\�\�u\�\�M�<�\�\Zٛ\���M\�G\�Jv1�+\�֓`\�חf\�E\�\nr]\���\��0�h\�\�\�\��\�\�\�E��F+v�L\�s\�6h܀\�4^̱\��ݫ9~/\�ae��w��\�p\�\�\�B�׋=�\�\�A.d\�XX\�;�M����Z\Z5\\r\��.�\�\�w\�/�\��������k\�[$H0;\Z\�/��.��o�]\�\�r�\�\�K�G��pB?Z<���l\�\��R\�辴o\�fw��sI0�u,H[b\����\�T�s5y\�?\�\�\�.�[�\�˧]f�#\0\�\�\�<\����֯r�X\0�Ɏ\Zy~��Ÿ8��˲\�B2\�_H�bpq�c~oq�W//ɜ .UG\�4�ldO\�wx\�j\�:�\�\�\�p�\n��Yc[\�	L\0;\�\�cTq��-\�=���V/�-Y��\�(\\Hvm�\'��K+x\�G�U&\�]�p=\�:�&wo\�>�W��\�UW�:z�vm\��#~޻u�\�_8AON\�秋m\��hLcl\nN�:2HXl��W\\ +�I���p�\�k|�9`�2P�.�Y5��:���C��\\v\�j�t�Kdz�%=:��n\�\\I�/�q�ۅ]�\��\"�&\�\�V�C\"ҼB���ҩ��M\�N\�9B� ��{�b��n\�\�Ow���G%��m�\"�\'Y\�+\�K\�\�F0�;\0�7Z���&s�+P���\�-�+yg�\���w4\�\�\�l\���cN��8�luj�QE�6\����5_\�7�nN0�	�+\�D���@��v�qC\�{+FA�K\�mn07�\�\�\�bn�ݼ\��w�̓����\�\�6\�\�\�QU����n\�k56Q\�#����G\�w\";Â\�]ɩ��ak�&�uY�\�Oom\�]\���E�\�VgiD\0.[\�[�2%9\�\�v[	c�\�%�Rv\n@-ڕ��)�=I/�m7�h\�Y�f^�J(�eS\�/\�\�Qe��fv���[\�\�+σ\�\�WtaD�\�%�,�;/�_�/�:Sa�*p�\��.V\r��^�$x�x\\�GE^����O�\�0%\�u\�e~��P��:y��x&\�*�.k�\�#�T\0�W���x�U�3�Et��\�N�H���p�\�G\Z�.�\�Y�P[ᜈ\\�\0\0׽���\�\�@Y�\Z\�oݜ�՛\�+/(\�N\�\�*dk��\�����r\�<\n&��D\�L\r�j�����C_��\�VW({׃\�\�E`�\Z	�\�f<VA��#\�\�^4[��϶W�\��\��\��Zj\�\�93\�\��mCD\�\�bo�J�\�\�\��%ǻd\��9ЫCܴ}	�a$�\��ʱ!1�H��	��5�6Tħ�\�\�\�NCE��y��w\�}�8Q㑋?�z\nep\rh\�\\�2\�\�\\�\�?��OV	�\�\�\\7��UC�]\�/N\rx�:��e窒\\\�j���~�Aui�a�$z��xG\�X\"=�%��\��\�\�ܾ��4N��ţL�%c~P\����?�:�`X\�x��:�m���J8��g!\�\�XOٙ!��\�\0\\=\�W���e\���H\��\�Po�ӂ=\\3A,�	�r\�l0E���\�$Z��g��|�T�h�uc\�@.�\0�7���0z��4\�U[\�\�\�Ɓ�Y\�]7O!�����խy�f��%�KV	�K�TC~qT�Ae�\����gp=Z7�\��;,��bY\��E\�]�Ỹ�k�eb\�S����\���!\\w�K곡\"M\�\'$��+\�h\�\��<7k�6-���Kړ\n\\v6=�\�͈C6:��ځK\�ְ���\�Ǝ�(�]ð\�Y�ń\�b�\�e�\�\�\���X\�y!??\ZG�l�\�\�j\�\\?\��as�a\�\� ��\�6\'U����QY+�!E�6b4\�\�<y@\�gdpɁc�>i\���\'AN�a �wy\�z&�\�z\�p�\Z\��\0\r*#���\�H�Ǵޭ�XR9�\�-�\�-�3Y\�b}<7\0!�y�p��mk;K_\�awn\�\�ѾUXW^9\��%\�őڃKN\�E�����\"�\�\�(!Y5�}\�	x`$7\�\�\�3�UD�\"�U%�D5//s�\�\�PM�P7O�\n\\9\�4R�^#���C���\��[����n\�\�\�M\Z�{Yp�\�f,z�\0�܎��B\'�\��\�\�E:\'��w�\�bU\�;pAj!�b��\\��K+�\�8��x\�KxD9\n�\�8��l\��\�E5I����\\�\�=\\;1���\r�8]\��8A �\�!\�o�2��l��XKp\�1/���kd�O�ϧ\�E,-���w�ŀ���f�n���d�	.�\�\�\�$�\��\�m\ZniO2��aBjY�\"\�5\�1����p̋�\�Te\�\\v0�͇1��UF�G+Q̇g�,�j�1#�&A ��m\'�B\�\�<\��3*\�!���v-\�Y%\�%\�)e��*�W�����Q��\Z\'R\�`F0=���h�vZ0�j��i�q˪����p\�2\���b�U\�Ǹ\�I�ۋ3CT�gv���56{��T{\�K�Sl+%�uubx@Y\�8\�\�Z�\�JƉ��\���Xgp\�\�ޏyqfp���UU\�(1\n[?Cr]UB��%���K^u85���l\�(�\�\�IV\r\��\�#QQ��dթ�\�2侖��;�\�ɒ\�D^Ut�\�J�ԋHUK7paN�jhM9J6y\�̰�Y\�\�D֌\�v�����R\�S-�v9;J�\�o\�L\r&?bh~ۅ^׆��U\�����&LYpq*��gh\�akAj\�\�\�v��g+ٶI\��܈�u%\�;�{��K^�9����\�h��vy��\�Ѝ�w��s����Ƣx���e%�\��BL&\�0�*��ʒ|\�j\�\�\�&��~P@yg\�p}\�V�\�I8f�\�\r��m\����瞆V�\\\�ԣ��{#����\�D\�ETyj�g�H\0\��\�\���h,/����K��\�Xs����g�\��)\rJ\�1�\�\�s\�dX�H�\�\� ՑIl7�޾����\�.�<��\nl.�\�O��!~>5����\�\�1�[Tc]A\"���e�]�R\\r\�5kG(�t��\�\�Um�\�1T�\�J,��\�A�>Z7)$�\��\�\��TY��*�o�\�ҥ�G��o\"�\��N\�R�Pl;?�Zo�T�ga��\�K\0�8������\�\�5[�\"�\��]${����\�]�g~!\0\�Y�~�J�l+U0\�9\�\�\�.Y\�\�n�ZD\�5�\ZZ�d\r�K\�{�`\�\�2�v���S.k|\�\n\�C�?L){\�\�+u\�\�2�{��\���\��+Ʋ��R��a�?\Zƻ^=\r\\�ߟ�v�b\�\��\�\'|c0�Zr-\0\�\�:�\�G)coA\�\�x�ʋ�Zg\�\��S\n\\Hk\�h\�\�\�\�Ǵ�����w=\�>O�\�|a\�h*\�V�.L\�,�p5\�g���3�ُʦ��c��C[۪��l*�+K�\�y�\���NN\�Ae���3�Aw�d�\�V\�^�e|\�N%�ۘt9l!e�Bz�ח.{\r��\�g�t\�|�\�`\�\�&*\�F%Y?	R�\rt0g$]\�,8.\0\�c�FPY\�\�\�\�QY\�X1��&ӵ�3\�♖�J�:M\�� ���\�/�Kz\�X~�^s\r�\�3�4\0�Hg\n&ѡţ#fx\':�|�,3aC���|\���qtq\�T��q���~rF���5T\��T*�\��VJ�Kn��s9CZ&���\�$�2� �fr+\�۩r\0�\�@�K�h\�I�$\��1T?�\�%K�NO)	..?�\�DP#Y��\�ym�\�$��l~30\0ª#\�\�v�\�eL���\'\�\�\0��@\���\Z�pg\rcݼ�3>�\�)&i.k񤊐*Ş#��W\�\�K�v01��WFdƖ��\��jW�\�c`��`$ �z/�u���\049��\"\�\����]CI7�\�ϰɬ���Jz�y�1\n��ӎ�&\�o&6�� �\�\�<O��,�5\�ֺ޺�OKpEӃ\�k:��K\�\�y\0FL�\�Khv ��\��\�KRE\Z಴	��rr\�\�\�YP�\�X^6\')���\�u:�$\0W�12O�\r�����a�t\";���\�嵤�c[�vo\n�\��	���d^�jh�sC]�<�uZX]R\�h�	��t2��Ű\'#Q\r�d�s[<]\�/�C�̋cC�\ZB���F���:)�B��Kv��\�\�P�l0^TBvd\�\\I�˅P�\�\�-�P\r\�\�H�� 7�\Z)\\(j�Tz!I#\�{1�\0�Lv�l|c�}ݒd\�\�h��\��$5\\�)^���a�]N`$\��A ��!5�`��*\�=R\�BC\0ܮT\'pY]�^�����\nY�<�彔�X\�~�K���\�Y����	@��\�!K�Dz�I�^TB�C�K�\Z.�.\�\�qr��]ւ\�Jw�./�	\���\�R�ƀK\�$\�Ez\�\��N	�5\\\�<�./�\�k�ԪQ\��Dz\�e(N9v5\\vS9\�奼���\�-�p\�(��xٱ\���D��s\�Y*^�\�si~\0�x����\�Y��\�9u\\^�\�p\\K�\�\�\0\\>Ľ�dm����\�[\�q(�\�T��\r\�-#��Ϥka\0.Eֆ� k��rڵQ��#w`#��.�띃Ƈz5vL�3\�6�{[g{.�Թ\�`\0�8\��e̗\�I�S��L\�\\\�v�M-��|\�\�<I\�K�g,��\Z��\�Z뭫S:�9\��\�5t\�p_�rc9\�j\��\�����߇�Gbo�,A\�W�wT9\�)��p�\�\��\�{.w$\�\�\�\��%�\�˩5Y����N\�\�ك\���q�:�+:�\�ړ�\�X򞈮�\�{�\�\�\�.�\r�x\���\��p\� \�C���.--�h\�ܡ��IG�tq�cñZڱw�&���$\�!��B\��J�L�\����Vw8��\�j\�\�C`�\�w���ҹ/F\0��\"Z�k&���w\�ϥ~˭\�(��Ȭl0�>�\�R\�J�p\�hY;�23�\��pl8�s�\�\��\0�]\�N;pA�\�t;+\0�K_zk��H��z\���ڤ\�\��nv���\�yp��JIjRF\0�(:F�n`��X\�Tv\�C?m/�̈x=\�\�֒\�A�_�G�80ҹ\�L\0.�˲�=�2\�y��:e�\�3`\�!d\�Lp�\���\��\0\\��v}\�0Ʋ���\�~\�@Nn�x��ة��wP&\�XH��\'\0�\�C\�9\�\0\0\�3�?\�9(�,\ZE\r@\�T�l|\�\�n��\�\��[\�Wݷt�\��N\�e�6\�\�,�\0\\Q�Kv-�\��.\0\�7kPퟝIUI,�N\�\00�qX\�\�F���5�nm���\'N��\��clOZ\��\�	�+\0W\�\�b�mlY���y�v�\�i�j�:o(\�F\�K\�Ӄ��Q\�[���ѣ���\�l�u8w�\�6W\�?�E\�ڪ��\��+\0W\�\�\�lN�_Ԧ|��v�\�I��\n��󇊀�����=2�ݭ�m\�\�F\��\�yz@uc\�L:a�\�\�^�\r\�:G\��\���:\��+\0�\'z��=�x�j.P\�Δ\�ܐ`-\�P\�Я\�\��\�:��3[2Ζ \�.N�ͳ]\�a}\�L��{x!<\�!1e½\�>�b�\��1\�\�0_\�tx|\�\�\0��\�k\�őq/\�\�\�z���\��\�`�<\�\�c�\�Rc�\�7v\�u�>��S�ѡ��M:�`�h�����\��a��/\��\�[31\\���\�\�e\�z��q�O����L.Y�ge�\�\0v|�\�T:��\��-1v�e�\�=��\�\�`*3\�Ĳ	)E(�\�y�<�\�I}\�Ԣ\�u�K!\�\�\�\�\�O\�zE\�NkwU�\�\�L\�\n�d�:�5��g���\�k	\�6���=\�Q���\\>A{\�8�.2�\��>7綮{#1_��\�*��x�,��uE�\�^����\�Vp��_.�d��X6��vI\����w\\*0�\�2cw_\��C*����� \�3�Z>Q[\���.f�\�_mH)\�geۺ!�tLu\�\�ݹTy��\�;���+�Z\�\�#\�\0{�v2]Y6��\�Ȝ������\�ڂ�j)~/Ȑ�\�\0G�n�q�81�{E�:bz4�\�\�\�\��72�^V<s}g5]ze�V.y�*�\��%���\'	\�-V<�#�4���`\�\�\�\�Ҿ1]\�\�A�����+\'iC�\r\�^kl7hאv\��\'s�\�MK\Zء^���N\�\�\�V$v\�g\n\�\�\�\�獤��is�ƴ\�ڂ\�u�O�\�v���\�E\�VN��$��|�\���0>+\�}l^&�\\4Lؖa-�9L�^Ϸ|��FƵ�|G\�^*O\"�Y�\'���\�4���Kf�48W0A�+%��ܓ���q\�c\�ص!��=�2@uu�X��\�\�P�_ܾ\�{�f�+pdD�+\�\�a\��\�⯆Mvh|7Z�u]Zm01?g��\��_X5Ydoě��3i\�\��us,\r�\�U�岱!`\�a\'�e;:.\\%}\rvld*al\��\�\�B*��j\�U0336hK��t\�\0\�\���t�p�\�tj\�q\�s��j\"~	{�`�T¾2\�_/��@5�E;\�}N#\'���?O�\�g\�_�\�ѡ��\�&\�\�\�a��_3Z\��\r*lQۤ-]о�m\��\�~t~\�hQ[)��7�ʦ��\�_��\��_צ��Nf� 2M��d?Vį���T\�\�+�q\�LZ4�:��q\0�t��ߧ5Y�\�1�Tw`6�\�^C�\�b����|���\�\�>\�~�����ֵ�e� ��v����n\�J�\\�\��;\�@;5����\�nc�U\r��{O*\�/Cw���?|�Jlnӧ��]\0� \�X�.#G\�_�燁IE�7��`P�͍d܇\��\�\�t�\�f�\�\�z��UmQ\�R\�#\�\��1���NM\�N\��٪{JPm�N�v\�\�\���.�.>\�i ٠Q\0l����+��`\�eU��\�\�\�O|�\�\�\r\�|-�^\�^\0��Jn\�vR�S�y\��$�^\��w�Y[v=\�u����4�\0\\qV�۩x�P��%�\�\�\�Ugm\�\�\�A:D4_h\�Tq�*@�\� E�\�\�\"z�졯�Ɔ��˯5�&�M4\�T\�\�\�\��\�\�z��꺊��S>�?�ݿF%\�\'�L\ri��A�\"HMH\'܀\��L@� �.�˜M\�)\�o<֍\�6�Β-C\'{	/,\�`\�K\�n��ֳL�o\�.�{��Q<�\�_J\�\n2�\�\�\�\�v�F>�\�wi\�\���\�\�\����\��]J�\�mM\\���ڍN`K\Z��OG\�|����\�\n!���}v�T\�wQ1\����<�\"y\'�@Z�j���\'~u}\�X�	6�xI7��m�d:H2m;a\���\�\��\�u�U��\��\��o�R,nt�\�WO`�\�ݐ��\�{q\�\�Z�\�?v^7\�,2#Q6\�v<^\�M^��\�T@���++�?�I�g\��j>qC\�\�_P�,S�A��_\��=��e\�T��ʝ\0�\�:�/*Ѵ�\�(��\nqUU@�\�\�y\��uPI7�UIhP�h).\�qT�_;ͧ��%`\�\n��ov�\�x���u\�\�-�\�\�.vv�_\�,�YF<�~Ţ��û	\�D\�\'m�d\\19<�X\�x�\r6\�ﺯ\�\n`��+V50Y��R<c_� �q\�;Ƞ�%T|\��,\��\n#�o�?�\�\"xW[pE�\n\�(��##�4��\0��\��2��P\�\�U��l\�5x��\r\�l\���@�\�w3<u���-\�K:\\!�{�\��s��m(K	`)��a��ͯ+\��\�v@%2 \�d�,\0e%\�ɾ�\�\��\���\��%5�e!7/��W�\�\�\0ϫ	`��-�-Uv�\�\�\r�u\�\�}�\ra�t�\�KUL�z�\�Gօ�\Z\�\�\Z�J�T\\�A��.\�| �)KMvտ|t��d��\�\�%i\�L`�wы�k\�t\�\��3/Tq(k��K�\�\0S�\�\�\�\�F0�\���R��͸\��\�q�P\������8�+V\�aF��C5\0Np�y\�&0}<�ӗoRϹ\�\�w��*�;���\�sX�OϞ=�\�0\�u�\�N�\�\��\�X*p!Ff0$�&\\rL��]��u\"��(~2,\�A9\�]��\�=�V��o��.%tC�T�3������\�\�\�H8�d�\�����\Z��\�\��\�g�\�x����T�˰��7\�\�!m�Z�su\0R�T\�L\�\�f�aka`��阛�v�\\\�5�\�{\�d����O�v��3\�o�a�/\�f�=�X���\�T�k>#V�\';\�\"vS\�\�b\�4{GB��jx��m��\�3N<v`�x\��%�3N�e��.\�\0l\�\�6$\�!%\�h\�����Bz��N\�c�ٹ,\�<�n\��\�\0���Uz%\\r�[G�=7�	}7\�.\��^���ӷ��_O�{P�\�̥i\r,+/��\n �\�+��\0��\�f/^U\�tX�72W;&���\�\0Ut\�\�\��\�+�(��q�tŻ\�ec�f\�\�\���T\�Tvj\�\�9{_BR�\�V�\�_�ɚu2auI�\0�.�#\�ɱiRoF,��Hs倲=/� c�X��BBr�>�\�\��qX!]]\�nZ��:96\"\�\�Ȉ�^+\�\�v)��\�\���K�i��\��B\�o��\�ݲ\�\��\�ɱI\�aD\��[�E\�T���T�\�W��uN5����c�6}r�BbU\�6�1�<\�t�\\���u�Қ\�3��\�tɲ( W���c\�KP��[\�\�e\�*\�\0\0\0\0IEND�B`�',2),(2,'uco','Operario','Operario',0,'ee11cbb19052e40b07aac0ca060c23ee',4,'',2),(3,'soporte','Soporte','Trazalog',0,'855fa866d6d3f72f6a50bc213244e36d',1,'',2),(4,'insumos','Insumos','Pañol',0,'3c6ff27f8f4c3efa42bcee681d78589f',3,'',2),(5,'supervisor','Supervisor','Supervisor',0,'09348c20a019be0318387c08df7a783d',5,'',2),(6,'superadmin','Super','Admin',0,'21232f297a57a5a743894a0e4a801fc3',1,'�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0	( %!1!%)+...383,7(-.+\n\n\n\r\Z-\"%/--/------//5/-7-+---5------.-+-/.------/---------��\0\0\�\0\�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0G\0	\0\0\0\0!1AQ\"aq��2BR��#r���\�3Cb\�$s���\�%ct�\�\�\���\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0,\0\0\0\0\0\0\0\0\0!1AQ\"2aqB�3��\�\���\�\0\0\0?\0���\"\"\0��hi�*�JF�\�粪=�s�W�nW���؀�w\0ɞk�Ƕ.��\����\�C\��5�\�a\0\�\�T\�T\�k����ئO6�8\r_7\�r\���m����[�\�\�\�&�l&l��Dӏ#:���_2��E\�y���<�F�0#\�\��&R̖%�N\�ݖFǁ\"\�Sbu��\\��ě\"�\�OH\�N�͍�\�+o�3��\�\�)\�	;�\�S5 \�\�X�\�}lw������\�&\�;���$����G�m�\�	\�es��;H$�\��¨m�o|\�6\�t\�\"ɣ�5�3al��\�8�\Z\���>sb$[\�W�����>\�ϗ|\�\��ʘZ�%��%+\�jc\�~G\�Z\�Ӹ�\0{�H`�:\�\����ӏ-�\��0Ҵ^4^����*\�7S��XoV\�6\�h�$pu�_\�=�e\�\�*\�\�\�wOJV\\��#u�\�1\0DDD@\0DN���\'�@*\Z��\�)�S��J�p�~&Jdf�\�m6\�\�7w\��\0X5ޥs���:�\�\�\�X�\��\��Ni\�`�\�[70\�\�f� ��̆�\"\"\0\�A\��\�P����Đ\"\"@\0MJə\�m\�X��\��U�}�+�ݠ\��c\�Rl;�6y�M\�yX����Z�\�k���\���F�=�ڞϓ��qKtLYa�G�DD��DDD@\0H=tĚx*�\�ԇ}C��\'\�NJ��Կ�S\�j5C���x\n�\�E\�p<� ����\0���\0��P̚��\Z��\0K6b\"RZ\"\"\0��\" ��\"\"\0�j�\�Yn�sUq\�M6��\\L��\��\�\�ѧ�S��zN�ĊԒ�\�譗�\0fĂԊ�X\n?\�?#���vi2���\"\"\0��\" 	H\�s|UʕC\�\�?Iw�Mr?\�W���\�\0�\�5�)\���\���J�2ӂ}�~`�P�Lէ|4mDD\�\\\"\"\0��\" ��\"\"\0���v�c\�[��Z���M�r\niӮ3\�)�G\�|3���Q\�C\�,ү\������\0*KD\�g\0DDD@���le3΋\�Qyx�\�|�j\�w\�*�\�X}\n� &\�r�90\��1T\\ٿa\�#�B]\�\�>�\�Ͷ\�\�\�\�\'{q�.�1\�$KV\�J�c|�(��~�]���\��\\|䤌m*\�.\Z��V\�kb���SV\�i�wU�6��d�f�(.\�\�\�\�\�}D٥��M\�v\�~\�\�ee\�5p�w��V߈\�[�M\\V��L]�Q\�=5\n�ܕn\�:ٓ\�9��<Ţv��a���?x�\�t\�\0�\�A���\�\�+�\�Ք\�8��|.�̧\�,z���\nl6�]�\�Br�hN�\�Y1��|BSwU؁�������o���\�v�\�ƭr�%��D^\�3\� �aK��7���\�\�a\�\�^\�\�� �\�\�;�CIɖ*�\�H{4\���_\�k�q\'١\�\��\�CU�*a\��4*Էf\�U��\�\�\�\�\nU׉Ò�h��7pk�\��y=��0/\�Ω����p\���\�\�\���:\�r�ŗ2;J��:�uڦ\��\�\�z��Շ#�؜�\�\�\����,-jwR{JD��x6\�\�\�6{</�[��Ŧ\�F�\\\�<�3�	;E�\���\0��yת|����\�\rE[`i��\�o�\�}d�\�d\0DDD@ ��L6\Z��b�j6\�\r�<Z\�xy\�~�\��\�iի�j���S{){����\�p�:q���5\'�J�~\�o�\0\�i\�T�_�6��kKf\�ezïk+\�	�So/\�\�ia�ʿ��t(��?Y/G|�\�/�	\���%\�{C�Fo��?\�DF�OY�\�J*���tɺ6�Z*\�\�=�\�xQ�l�\�P4p�\�\�\�\�S�\�\0*���`�g]J��\\�Z�\"�\�\�\�\Z)�bSYc�V��+���\��\�\�5M�9\�\�+(�\'Xը�Y�ŭ����$�\r4���6��Y���Z�\�\�p�����U�brk\�N|\�Ά\�t�U�%��[p�������tq�ty��\�l��b���Qw�5G&\�	�\�7A�\�ؕ�A*%\�\�\��6\�V\n�AĜ�)��c���q\�;\'�h�b�C��LU\�Z�ڭ\nOSe�GJ�@���\\\�G�dN�&3��\�%p\�%~\Z+Giï\�Ԝ�\0ڭ�z\�m!\�\�G��\�i^\�u�\����z7��Ϭm\�;\r��q�\0f\�G3\�� �z\0��T\0�\0�ܽ\�(\�*��\���\�\�\�z�j�{���)��^\�v	3��mV�\�\Z\�X캐U�s�\�Xમ�c��ue�ѧ�n�w�\�&�It���ݯk��\�v\r�\�ت�v%R\��2�\�\�Y\�=\n�HA\n�\�܋b2\�N]���՜\�r\�\�b\�u�\�:dVA\�Q`+\�Пgl�ccqm\�I\�ꔪ\�Z��du�\��\'Ŏ\�~����7Q\�UE\���u�)Q\�\'9\"�GX\�\'\�\�ސ:i�Y\�%��\�\�[\� X��\�Lw�����\�\'Q���Xl^�i\��QX\� \�\�\�\�X�\�%�Ec�E*�\��#��q+HjRdZ���\�$\�\�k\\\�Hs��1�R?ˬ�w\��a�\�^γ�<w\�z�Z�\"l0��\"\"\0��+KS�s\�V�_�#�?9���E%F\�`�u~{�g:\�ݕ1�\�Q;V\�q�y^tѸ\�L:n;\�x�0d[f�\0�\�\�[�&�p\���un�z\�\'����ZO����O�\�\�S��\�|UC0\�b2IJV�\�\�4�I\�\�zGڥ_�w\�z�殦L�+xھ��8�~��Q\\�\�\�\�\�?\�k+\0)\���\r�\��#�0�䄫�����s�y\�=�g�\�P8���\'V����K_�\�9nӚW�P��z�.(Ӿ�7�|4\�\�xo\"`ѸA�\�l\�m\�\�\"\�ĵG?y�\�\�Z�B�\�?D�\Z7PIk\�\�3�a\�\�\����\�\�l�}�\"�\�32\�N�\�z!\��ha��@\�\\*ߍ/�sne?�^\�p\��K�\�]�3\�k.\�rJ�PO�W�9\�ݻ8��B\"\'G \����\�\�T�b\�g��S�\�I�ưi6�\Z$EA\�\�)�\���xy�8\�G`օ�������Ow�\�\'��f�*�&6��\�u0m�+\'\�F�\�\�\�Vqrt@���-�Y\�9$�b\�z&�t�ژ\�l�\�\�̏#1jYq85co+��k\��\�ӣ@Z�N��\�\��\0ib\�\�\�t����Ŏg��7;�Nim\�O\�%i爈�\"\"\0��Q��\Zʆ#+pZ���\0\�yKĊ\�m\�XvA\��\���2�\�\�;/\�\�\�>z|?�\�U��\�\�\�\�s&��\���r��4���\�\�z.��\�\�S�q�t�ҩ����|\�\��g�8��c��=�05�f\�g^���\�D?ʨ�jC�l\�\�	`Ü�\�E�\�\�(u\��\0�\�\��<\�\�\�2�to5�]\'��,�iп�Z��㺕\"T���\'��\�e<�b){dF�\�!Y��;��\�T\�\�\rʶ\�pE\�v�\�:�;*��\�x	�5uB\�Wo�.@V\�kp\�y\�u��\n\�E\'~ȿ}�~s,\���\�k:��ֶ\�|\�~\�~PGlǌ\�\n�T�n �Az�;��4���\'V�+\�\�B�7W��p	U䬭n�\�\00N�\�Y�C{A/\��ߤ\�ex�\r.�t\�a�X�i[\n\�\�Z��0&:�CW%�O>7a^�\�ji\���\�G��s�PQ�~�o\�E/l�\��i\\���\�\�T;Ujl܇�Gs�V�\�\�gH\�Q�An@�!y�\�S\�\Z��\�=F=�/\�\�9\���0\�y�������m�\�GDܐ��.aTfs\�~Bq��.K\�\�\����K�\Z��ڣ�\�`粃+�\\�9n��\��*(��\0�2OG6F�/.O�7!��D@\0DDN\�\�Hg(]�g�����\�o�\�\\���Pw�\���V�\�BJ~���G\��O\�ԏ\�2j �RF\�4ܢ\�\�\\�_s�Q\r��r�Y!+�[K;Tjt�aT쳁v-\�R�\07Ϻu�:Er���X\�S*�\�B��2�R��w��u��\0Q�->�\0����W��-T1\�f���@�s\�9\�M�M�R��0=�vQk\�m������q�Tu�\��\�\'Uè7\"\�w�fǼ�N����U\�䴦�\�1�\�R�\�7Q\��\�\rǘ��\�;�|m:Ѡ\�R&�\�L\�x��|D\�\��\�h�ĉкM��N����# \��\�A\�;D��J-:e馭	�LڪlԜ3��Z^�M[��\�i�\�\��ڗ-�(\��-��\�{\�\�+:�K�\�U�\�\�^�~�\��\0W��M:h*\�S��MA>\��\"\"i1���\"\"\0��\" ��%W^0d-<R�\�\�w�~�Z�W@��X�� �\"q8o�E��8II,=e��\�\�q7\�Ă\�8&\�\�K\0[\n\�\�cû\�\�%0\�����#u�\��O�\�i5�=by�Vn�$mTe\�yv�\�3�\�3\�%I(\�\�x\n\�\�CP|\��0��.etOQ\�\�B�4\���)c\�I�\����?\�\�>�JD��.\\tD.�a��ߝ�\0y�u?��\�]��b\�\��\�DӬ\�\�d@\�\�\�\�7�\�31<X\��yHR}J*�δ�U�hR�i��\Z5\reEVN�*�h\\v_\�	3:WF\�?C:�i\�ĕ�J��f��W\�\�Ϛ�m�\� |�\�U5M6���Q_:��_���XK3?��\n�Lx�\�\"�\�7��[\�=TK\�|Ϗƭ%.\�/�<�jֈz�/��4\�\�81O>R�7�\ZmB;�\�\�Lꮋ�l2��ۮ���\�x	1=\�ER<\�\�\�NOȈ�\'\"\" ��\"\"\0��\" ��c�Ej)V���;�3\���݉4�i\�d\�@I��e��J6�\�!�@��3j�\�~M�)|\�>�\��\���Su;�\�yHM*\�1�	�ǻ0\�\�\��G�ƥ\r\�ڤw\���M\n��^�Cb.��N�ձw�i\�ʙf�c�ue�$F�i��F\�\�)�\r����|�{{ė�\�:d\'jЉ��Jb\�ʣ�>��֢�F���G��I�i\���q\� }\�\��\"nJֱczJ�EM\���x��	�B;�G�\�\�\�U,��\�\�\0�\�oiM&�Wi\�~\�\�����:��m\�`(\�-���6/G��J��P���\�Ns\�\�i\�q�\�XuA6!���\�RޡNa���\�.R?W��J�\0	>J��1AF<3d�\�\�DD��DDD@\0DD��u\�G\�+⩫p\��\�Q���L0�\�\�kU\�ϳIO̟�g�D�\�H�i\�U/\�Q\�Q.��\\�\��eo\�I\�/�tz\�Nǐ ^�D���%�\�L\�\�\�ZxF�k�/�\�}g\�\�\�Y�\�إ��\�7%E\��\�=�\0W\�SZ\nԟ�Z�i\�|{\\fmE�^\r�jI�\��q[W�s�\�6��ETu\����\�)l�*\�U�g\�3\�\�\����E):\�U�\�#�ȃ��� �%\�MWٷ\���[桭�����bƥ\�\�%c\�8\�!\�\�j&Ր\�<ϲ{�q�\"ᓳ�,}te �\Z���x\�\0\�\�6�\�b\�\��JEխābh�\�7Ă�q�N0(\�!m\�\�9e*��wd�/J\�*�\��\�?��>�(��\�Q�Q�\0q?��s\�L\�\�Э��Y~6���ͼ$\�CS\�+;�ͮ\�\�8C�U)\�\Z\��Gɫ�p\n[{�l@\�Ǘ`\�$�#G�\�\�*�\�ey��s��\�\�X!O�m�6�>�f\�\�x^�bEL>it=�O���G�zW�M�Ю\�V�}�\0\��[\�܄��c��;�X�ڣ\0X��P\�f\�2n<��z��ۋ\���\�O��~�t�&\���\����ۼ��\�\�N�\���\�jf\�u\�_\�KJu�\��+\�F���a[y\�M��\�\�����\��Xz�\�4`\�v\�\�舀\"\"\0��z嬴�f\r�5s\�\�n/P�(<�\�\0�~�k\�DR�ޫ�\0������+\�\�-}\�\ZN�%sJ���к-�c{��2��t�\\S\�\�\�n�Srx�Tp\0enɉN\��Aڝ]\��3$�\\�A&r\�kVm��\�\�;D�vqpvG�ip\�xm�\�T\�1� \�\�.��\�\�v\�]�Sk\��\0c2R��YE���&D���Jm;G\�\Z;OIj\�u�M�\�)��ǲlϗ�.�\�`��!cv]�\���\�z.���N�	���*n\�t(��̾#\�d�)G�M��F]�=B�{Ue\�\�/�c\�}&\�(\"\��sR��\��6*����\"� �:\�\�t�Ѻ@T\�Z\��\��;G\�P��_(qh\�\�#M�\nW��;QєP\�h\��E�\�m\��3�eT�5�2\n�m]��\nmw?\�|\�ج�1Gen����Ò��������\�կN�Q�0v��-\�3�r\�\�5~bvV�\�\\�h\�}s�Y�\�\�S\�n\��W�\�y��zZ�T�\�4�\�\�U\0���fy��H5�ٙ\�\�5F$�nd��_\�2O2�g\�ZF�6�bk�5N@[���p\�hԮFV\��\�s�)\�\�\�\'qn���n�&j\�\�f��F���\�̷��\0؜R���\�I\�\�\�w0;+��j_�L^�<h��*lj\0u\��8\�9�\�{\�zJ�*�֡QjSquu\�xx\�i�\�3j�9\�\�Ǣ\�t:/)\�o�\�\�\�u\r��9}�\�A��N�b ��󇦍e8\�#\�\�oCu<���φK�O9\�:٤��\�\�Av�E\�~�So��#}��If�s$�$�LWX��C�\�\�ng\0D\"\"\0��t�L�|gx�b���\�Ͽ�eZ�݇�\�\'V@w�j\�6Iڛ\řT�\�$�\re\�\�p\�r��v\n\�\�$g\� E{$�\�8j������\�h\�2�zt^�\�~�̢{M�\�c\�zGҕ�jJ?��~�\�7�7g����s\�xH\�C|��<~�c�ձ��qUm�=�[e\"�\'\0;O��\�\�\��8\�nrRH�\�\����Acٻ\�tm����!��\�	̒[t\�\"\0��\" Uާ�Y��ԃ:Z\�\�s�}\�_[}k\�\��\�L����z6���\'\���e7Ve���E\�w|A��\�',2),(12,'prueba','gemma','gonzalez',0,'21232f297a57a5a743894a0e4a801fc3',1,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\�\0\0\0\�\0\0\0	m\"H\0\0�PLTE����д# AABϞw��#\���\0\0\0ۯ��ֹ\�vz�IM �ҷ�\�1͛s\0\0�ٻ\Z989\0\0\r\0\0���)&\'==>323%\"#\�Ƨ⻚ߞ�ԥ\�ƭ\�\�\�434ܲ�\�\�\�}q̙q\�ov���\0Ѹ����KEB_y\0�����s\�{}���\�\�\�TMI���\0{ma�q\\��R���ɱ��wii_X���l�kii�����!�\\`t9\0gVI`^_�ko�NR��*�\�.cbbI��C\�\�\�\�\�\�</\'˦��v=ߪ���fZMCwuv��pԗ�\�\�\�\�\�\�ܯ��iXЉ���{խ��ac����}w49×�\�\�\����༼�jk�\�\�ۗ���U��Ry�7bz|�\�ӷ��J��t��|��cEN)Tb( ­v���Ӷ���6MZ(.1%��fBH2sG&\�´�qKA0&g\0K.\Z�Z:</(d@\'@!_4�\Z\�f\0\0�IDATx�\�]�\�V��0��D\n�l@0\�&���\�qN;\�\�	�\�L;ݝ�\�{f�\�\�c���Ӵ���s��z\"���ϧ\�֎���\�y�{\�\�\��#�H?ҏ��D+�ںF�\�EO&Z�\�\�:�\�L\�\�۬J\�k��\�<�y{}\�\�65\�n\�=�Ҫ\��|\� �ey\r\0�u\�n�_�$C\��\��5��Ls�\�%Ϸ���\�Qz�]�G�\\^\���y\�n�]�N	:z�u\��H\�G\�\�\�h�e\���ure��Jk\��틆\�K+G1V	\rOc\�\�\���i\�g�¦�\�\�k\�\�\�0߹h8�\�cW#�\�>�aE;�\�\�CZco^4*�n�E%��l\�\�:nW\�P�BS��D~r�`���FP�P�\n�tnѠtU.8Q�l�\�C��\�Z��\�E\��\�\��;���\�X\�\�Q\��vF�\�݋x{j\n([A\�\�\\��M\�@\ne,���h�\�U��\��1\ZT\�\n%�VF�mW+\�(c�0��\�r\�3@�\Z���\�\��\�Y^� �Hؕ/\�`,�v�\�\�p{Z4eR\�ŕ�M}L\�!ޛ/��\�mL���:#��\'\�\�\�<\�\\��	I�}DU\�H��\�Zs��Q$�\�bU�:&�6?.>ߎ\0 �\�\�xC~e\�\�k�sx3��4U\�\�\�\�K���9qq\Z+S@h���QT��|\�]c\�?��y�b��{zz	�`2�jUF��\�\�/ޛ2\�V%0G\�3�\Z4FC\�9\�e�\�\�ִJț\�@69ib\�i� �31\�θ�_�:�1�LIE��B\�\nD\'c\�l3�\�<!��\�QQ���@]\�d\"�e������hM\��v�s\n�\�\�bmJ��F��B����\�\�(8�ٞ]a#��\"�\nr>_M\�r��db$��1\�ݐf�\�\�B�ǲ�0\Z��(ʆE��ښ�6U\\�e���\�5Co�\n4i�\�fkf��wi_\�r.\Z\�R\�\�Et�F.������\�fR\r_�e�\��d\�UQ�1ohcN��|\�MLc<;9=�\n3h\�\'w�\03_\�L�\�Ƨ\��\�\�0-G�f\�f͸\�BPς�������6�y���\�@\�\�i\�L)��2ق:\�\�(e?V\Z�*�\�\�}l��x	���	@\"B�6S{	7\0Hx3� �\�\n\��q\"E�Z�h\�\'�94H\�dn�\�@l��f@j\��Fp\�\\�\0��N�{�8J�&\n�NT����AZ\�Qi��A�m��\�B�`M	�iad�W�m\0�J::�f\�X��/hJ�$��2�\�ZJn .`l�A^]tL4\r������\�\�GϚy�+�\�*5�^��+���i\�\��\0�⋸A\�\�G\�\0g@�\��\�CdL���\�Z����?�\��Db3�(\�\��\�Gi\�\�d�\���\�n��\�\� \�}T�\'\�EA�b�����\��\�ųB7J^�v�MYʨ]X͌\�-+ʨ��F%�2\0q\";G/Ҋ4�Vp\��V#YV<\�b\nZ\�焁��CK�\��\�\�YW\Zk}TMp)@�S$Y�\�[\��9����v|L`&�<z$�\�$���\�v5p#m��\�2\�Q��Pw��˥8\n\�\�YaH\"�cA�:=B\�\�h\�\�be$�1q����\�@N�w\�\�1N�\Z\�\�LokV;CdS�2���/ʉ23�����,���g$j�!�\�\�l\�v�\�e����\�JI\�u\�\��\nk:��\��i3a�<�v&��Z	AD\'��k��\�*�Lݣ|a�i\�\Zmg\njfA˨�\0�P+\�\�j\�#\�#,z�VL��;��+\�eT71!\r�jd��c�l��!-�\�\���Ҏ\�\�$K#-�\�	�شb�b<��f��`F:� bP!\�̠U�}tӕ֦Z�2\�=)�5�\�Lw7�\�`l?3쪲��;B%7\rB}�ܽ��Dsh�Y|\�7�	�e�|\�\�joN\Z��e[M�*FL���Dc`�\��N\�GYeM<3��d�:M�8��x\ni֌:1�]�\�_haNwT~$M�pu�\��8Ŵ\�\nc\\b�bDc\��<M��\�yywe䧨�=׳{\�\Z���OL��4FT\�]��|�]I�\�\�K\��<��iC\�� U��M���v�<x{Yx�h�^�0�@R�Y�PFu�E�\0v\�q`�\�1|\ZlkM���t��cD6�6B��\�B�Y���fV\nff�`\�b�*�|�&\0k0�|,,\�cˎ�jڙn;Z3CAd \���v!\"l\�b\�\�\�Z\�s��\0Flfh�%bp�X\�ŰK�5���f	�0r3CA,�QR�*�U�\�\Z\�;�(#mRf\�BB�V\�v3���$�\�ٶp\�ړ/��x>K\"�M=/t\�X}݄M�l�TօTy_�-5e�����\�\�]�ԣ�;�5\�m�QNˏ\�f\ZJ\��4J\�Wg��*D\�3�\�xs\�B��G���¿�A�1B�\�ˬk���+3\�ل3\�	��6\�\Z�\�\����AR�T�cU1�˷�C� ��>\nb|\�j[����\�B\�\�U�Ҕ\����4>df��\�&<R���	5Z��^o�~0��F	\�*0N�^\�4*)��X~\�+�\�¶#\�N �6\0\�\�奤$IRR\�\�nr|3�7����\�:�\nyU���\�i8�w]v\�\�̗�\�,m\�yE\�\�\�\�D�R�z>K���\�(�E���\�\n�\�\�*M��r�^2�\�\�%v8.�7\�f\�\�Fd;\r��2�\�g>~?$B��M|A\�H�J\'C�#JER2z\�rf\�(��/�ΞAڕBL\�d%m\�:�\'\"�m&�Cx\�\ra��RnP@��\�aP�0L�\�8\�\�Y��+fzA����\�zEb\�^ШTp���\�\�L\�\"�\�cl�DH	)\�J\�\�\�e�w���F=�\�Y�\�A����&fs�FJ����IFLW�HT\�;��.\�B(\�L!\Z �JrXq(\':I�7�V|��kt��4�q8��\�\�ߚj2\�G���n\���\�+1)\�nP8�\�G1\���(�$|\n:\�\�mN��aJs��#:�\�s#&\�zR,9�\�/�Mbv\����W�l�\�\�[�FU��-�\�g���.�qCXh\Z\�X�\�f�\0�D\��\\���\"\�~~�c�\"�Ɵ\�cxib�\�\�\�\��\��/7��\0�J}�\�\��\�z\� f��\�MoM�H\�Pyd�\nV\��2$bw�X�\"T�b�Ӭ��&�\�]<��{Y�1w�M;\�\"�}�\�\�J�\�\�D^	�\��I#\�rCv�Lj��JA^\�\05\Z�m\�C(�����?�i����c��\�5t١\�ywUC�����B\�1h�\�a\'-�l6�\�fY�\�\�\�[�4L�\��M�\�NU\�N�f��\�N\�(�q�\'�\�ڢ*�f�\�\�ϐ\�I\�f�\�\�B\�\\��=%��\" ���(.��[!���\�i0z���7\�}$\�\�\�U�	\�T�9l�\�1\\j\�\Z�*R�8Ԑ�R̀3�V�^\�\Z\0�#�`\\5�P�$\�]B\�\�?8h!!O;y6�pJ\�\�AÍ�(�\0��&�Y��n1��\���{\�\���|2ۭvz�Q�i�p�\��[�l\��\�PR���߼d\�\'�@09�h\Z�:\�\�j	I���a�\�\\\�*U\�*�z��\�\��3,\�@�jk�9%u\�E\�\\+\�K�ذ\��Y����&\�\\j�<eP@<\�H�&N\�\�l3�\�\�>L+-IB\�\�xh,��v-�&{��\�\�P��t�+\�1���uX7_zJ�}\�y����<\�@\�\�#I?�^�L\�rg\'`e/\�4/\�~J��АB�\�\�R*a\�Z�\�\�\�I�A�{`J;\�\\n��ߪؘ\�UzYϤGjZ#R\�>�`g8\��^\�5ٖ0���L+���̍k�]f�0\��f�l�ppQ\�ЖR�x�,�y`\�{��\�B�4\�K9栩$\�\�o�nT%Qj�׵A\�p�\�(���SS\�\"j^Fz�Rև�2����j�q`E<//c��J\��4��A.,\'\�\�\0�`)؈\"���e�侞O\�7�_�=>j�B%2ƣ�% L\�!\�t\���ݛw\�OON^i�|�i����[_���h��\�.��\�\�\����G�rk��\�\Zަy���׫\�4\��\�1j\�R^*c�pVH*3DɅ\�ީz�\�\0���ZV�-[���\�\�\�	\�7\'_����Z�p\��\�%&\0\�KK\�\0���\�\�b�\"�4jU�Iլ���\�isyx�-\�b%y`I<��CNy���\�\�H��\�kuԳ�~I��o\�B�]B%�½,vC\�:&,*@�\�7��I4��=r\�\�\����\�\�P\�:�y]`J�:+S��ߜ��I�<1�5AS�\�\�2L%�͋4��E�����\�L�f�\�_\Zڃ�O���~xB�\�W1�{fDSI�6e��o��\�g\�W��O��>1��\�ڌ\�����\���_�\�)vD\Z\�b��\�</\�v\�LChtj�-�ߝ��\n�����O\�!4cDɨ\0{�W\'�ز�E\Z\�\�e����%�m��0\�/M��l\"�/m�\�\�\�\�\�L(&�R��x����\�\��C1� L�\�]\\#cA\�(\n��\�\�ν5����5\�Bz[\�IէX�ɘ����\�F�<0�ț��؆kW�|C8@����\'������D�2}N�J��R�a\�Ó��XS���Ҽq�P\0c�\�n��7!N��)ꢀ/O��M�&�9��\�a�Z1y�\��8K\�a��yO\�|IB%=\�}\�,i~i\�QdP�U���j	\\�\�t`�a��q@\�(�=�1�!�!\�\�A�ݧm=\��p>�%.�>�`\"�|\�\�\�C��\�K�\0\"L�0�)�u7\"B���a�<%�F\�0\�=xD ʊz��\�?���\�\�\�&\�Q,!L\�4é�>�rGVQ�{E��EFU)͢`&j\�V�\0�@ɨ:6NO�!d�\�\�!n\���\�\�\�\'Z`X�J��\�\�\r�\�v�\�r0:]y�\�\�~Bd��\�f,$,\�-�>�\ZE\�o\��!��#\�R���H���0x{}a~�|�Er�E\rP+\�R΃�q�\�V�\�\��\���\��9}b\�0U^YL\�9��ii:�LI�R��\\G\�\�\���<\��\�͛�[:��Z�o�w싢%�`�nL\�q��\�>0�������\'VE�yr\�˚��\n����@\�\�m���{O\�N-w�>;c�\�u)�O\�b�ȣb\n�A�=�ܸpz�d\�ٔd\���$�3Ԑ		pa��0\�\� u3=�Q(�����O�^7\���6��4�\�4X^��a�E���\�\���\�Z\���F�\����U�J6�Qױ�=\0�U�\�x�G\��iC�wN������\�\�J�:I�\�v\�\�l��ۘ\�\��s�m\�jB;��r&RNP\�pJ���!�wIG\�\�:\�A\Zd���\"5l�rI��^�\Z׃\�\�@�6�W\�\rћ\�C�\�\�F\�Y\�rC1\��霜8t�S\�|�5� ��=a��iD�\�o\�\"\�\�oN��!$qH�\�\�:Jҹ\�\rSvj�\� CE5V T�R�Ȝ��\�A�\�\�\�x��m��r(\����t\�az�*\�\�\�o%pªG�67������?s`E\�y\�V\�7Ŧ�uUD7J5W$��A%Ah��VmWy�32464@]L\�\�\���\�\�6o\�ZY\�}��\��>��bhO�\�[ë\�jM)�e�l\�\�Z���\�axqY�md�(�֥�����N\�\�E��.��\�\�~\'\�P���눒��u!\�@t�Tܴ6GN	\�\nQX\�[1ЛU�L-UOJnfF�\�僽(xO���\�\�\0!q�r\�%�\�[��d�\�O�~�r\�\'\�!r��QJF\0p\�9U�(�+�k&�~V)�u�a%X\n\0��d4s���\�=!E�١~���0�A\�ǋ�s�^R)�i\�%!�15��\�$\\I\�U�\�\'\�j�RZ�e1A\�EK(|5\�hJ�<�\�	4u_�J��`\��oj\�䈎\�;^V2}������6&�}��	�2��5\�\��\"�IE�[��J\'�\Z\��\�9\0�P\�FuZ2\�48\�\�J�\"�2\�d�.s8�1�f\'�\�\'\�}�\���\�<6�	�lE�4�\�G��\�\��\�2�u�f\�f�b�@	��gP\�e%)3�\'\����HҰ\� A4&�f�ӂ,&)�(](\�q珒J��{�-|b7\�\�+�pTH���\�����Y`gS3�\r	���.�SrV%�\�\�?���0\�\"#Uh!\�2\�*\�\���;\�\�\�ī5Y\�\�\��Pβ,�!]?\��Uh\�~�Õ��!nK��\0��~I\�\��:�\�Ƈ\�\"�B�\�-/�i�\�=ҏ\��\��ʋ��e�\�\�\\\�\�\��=4\ZOV#���?\�#\��{j\�kƢ6F\�Fr+ט\�Q~R�ډ\�\�\�\�A�RQ�\�h\�f82z�9�\�I\��\�\�i�� �L$\�\�\r�p\�Ͱ��5����{�݉ڊ8~��\�\�\��\�\�\�ANci�_X4�ߵ\����8E�p�p����\�6\'Q���Ԃ��T\�@\n��8e�h�\0�j��LR)�B\\2 �>���7�D�\���\�P��&Bo\'\r\0�a\��\�\�X&$@\\�\��\�\�7X\�P�E4�\\[\�d\�$\�nF\\a\��%�ŧ��S��X\�bpԤ��\"�H���/7DI�ާ\�o\�\�df{�2����.\�(�)w#�	�9�&b4��?<\r��)=�\�c\� �#�ɠ�:>\�\�\�H;O��;�Õ��%���\�|t��\�nН\�*�\�\0I#󇗓_[\�=\�tg\��\�%��\�\�N7�O �f\�;\�O���Tl�$�� �R�����H/_\�\\\��i穚\�/	��=f\�)t���a\�eQ»�y�+>0;����~i�\�+�_�\����\�΍+`tR\��\�\�\�m55��/\�\�̨D\�I�\���m����V\\�\0��\�\�;�CeL!4�\�~f\� \�h\�Oy\��0�\�㷮^}\��\��\�w\rL�\������^��\�\�q&G�\'D�E�)27��}�U%B\�\0�\�\���@%���･��7��\�l\�~\'\"\�\�\�JzD\���W}\�\�Wv\�\�c:Fq\�_\�FZ1sa<�bw�<~\�\��\�{M憫��}\'$�\�\�bu\�\�D<�/��S�(MsG\�L�&\'\�|�\�A\�c\�\�Ƿ��\� W�\0F]}�-���qk���\0y��(\�[H�}���\��f\0H@?��\�I�\�7Ư\�\�\\yy���w\0&\�Dz�؈\��7��E3/ژ�F\�E�xe\��u\r�=2��2��\�/sNZ�b�V�\��UF�xC�\�@\�\�A�Zڋr�i\�ϓP��G\�ŝ�7^��\Z�e�\�ά\�5��b�Ɏ�M��ʇׯ[�bn_|�a\�*)���\0\�\�:\��j~#\�o�Y0\�W��1P\���\�$\�\�\� ��()-�Ӑ�~�&��\'>-�f�\\+�tl��i\�\� ףM�L\�\�7�\�\��b�s\�7/\�>\�\�\�xڌ��\"P\�\��yZR$���%K\�KJ\rrNE�v\�w<��\�JD��Oȕ�L=\�q\�\��|\�\�a���)=\�H{9Ǉ;\�:<՜\�\�<u�\�R�\�%N���G�*�!\'ǹi|S?��O�f�`�\�s��4\�t\nG��\��\��\�����7�\�OZ�\�h1ƛ�Aȡ���\��q`?��w/��\�Hh\Z+9�\Z�\�zN\�%\�,\�\��_�*|��\�\�\�\� 9\�\�6�\�\�X��P|I\�����~�__�x��y;\�l�\�X�H��\�S��x4\�g������\�\�ܲ_�nV�\�:���:�\���A��|S.���(��B�\�\�{���skG�\�&�\�\�6�\�W_&\�Zw\��\� A=\���K*\�/\"o��Յ!\�W�O�kq\�q\�\�\�\��\�\Z\�\�1\�(�6-/\���@�f=n�\���R\�TsX]�\�\�\��\�\�\0\�(\�Y\�2{d+�L�I\���ժ?�.���ߥK��\ret\�{�10���}|\�$��\�\�t^� �\�W\�>\�Q�����\�:��\��Dh@L�K.|T\� ~���ܱr1���-�\�c�|\�R^X9<��\�1^�f�%�h9�E�4�I�d�x듅b\�\�\�j08H\�m\�uo\��l\0TR\�	\0Y46\�\�ϫ{\"��6�5��c�#\�ӠX6�#����\�\�ß\�3L\�/\� \"\�\�xyic��G1Z\�\�\��w.ݷA�s��-\�0S\�\�[,U	\�GJrn���\�\�\�o\��\\Exy#>�e�̎��\�\�BM|�ER1e\�\�&�\�\��k��E�\"��N��0�\�^!Ļ��\���5\�޺�\�O�\��\�@��E�\�7TV��\r �\�[�Q�wg\�2\�K\�\��]Gݺt\�\�奄7\�%]�/\�B\0��>�;\�V/W�\�\�T\\\�5!��?Q=٘(\�l\�\�;xH��>�]v\�.���U>��m\r!���\�e�oPpü \�d!��G}�\�y���M-�x\�>\0��\"]N��юo���\�.,$uέ�\�٘\�wU��\"��>21�a�x�\�w\�̋�@we!�,SN\�\�\�hbкM)��fFGH��!\�\�\�Ryi\���O\�#&�\�\��[���\�Ԙ��;B�ȃ���O��\�\�?���M\��D�j�6��g��v\�\�V����rj�4~\0oYe�\'\�0Vcs�d�А\�\�\���\��n�\�P?\0&�~z\�\�_��e��c�\�\�\�\��K\�n\rg8�!\0\0\0\0IEND�B`�',2),(13,'22','weqeqw','wqeewq',0,'d41d8cd98f00b204e9800998ecf8427e',2,'',2),(14,'Usrtest','usuario','usuario',0,'f8032d5cae3de20fcec887f395ec9a6a',1,'',2),(15,'Juan','Juan','Perez',0,'a94652aa97c7211ba8954dd15a3cf838',6,'',2);
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
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`id_solicitud`),
  KEY `id_equipo` (`id_equipo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_reparacion`
--

LOCK TABLES `solicitud_reparacion` WRITE;
/*!40000 ALTER TABLE `solicitud_reparacion` DISABLE KEYS */;
INSERT INTO `solicitud_reparacion` VALUES (1,NULL,NULL,NULL,'Jose Perez','2017-11-08 10:44:25','2017-11-09','08:00:00',1,NULL,'rotura de rueda',NULL,'C',3,'0000-00-00','',NULL,NULL,NULL,NULL,2),(2,NULL,NULL,NULL,'wqewqe','2017-11-08 10:45:54','2017-11-09','08:00:00',1,NULL,'assdas',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,NULL,2),(3,NULL,NULL,NULL,'asdsadasd','2017-11-08 10:46:39','2017-11-09','08:00:00',1,NULL,'asdad',NULL,'S',1,'0000-00-00','',NULL,NULL,NULL,NULL,2),(4,NULL,NULL,NULL,'sssss','2017-11-08 10:47:21','2017-11-09','08:00:00',1,NULL,'sadasdas',NULL,'T',1,'2018-01-30','trabajo terminado',NULL,NULL,NULL,NULL,2),(5,NULL,NULL,NULL,'huggo','2017-11-08 12:53:19','2017-11-09','08:00:00',1,NULL,'observc test2',NULL,'C',1,'0000-00-00','',NULL,NULL,NULL,NULL,2),(6,NULL,NULL,NULL,'Hugo Gallardo','2017-11-14 15:23:31','2017-11-15','08:00:00',2,NULL,'Rotura de llanta',NULL,'C',5,'0000-00-00','',NULL,NULL,NULL,NULL,2),(7,NULL,NULL,NULL,'Hugo Gallardo','2017-12-01 05:35:25','2017-12-04','08:00:00',2,NULL,'Falla test sobre RS-0001 (01-12)',NULL,'C',3,'0000-00-00','',NULL,NULL,NULL,NULL,2),(8,NULL,NULL,NULL,'hugo gallardo','2018-01-13 21:54:50','2018-01-14','08:00:00',2,NULL,'rotura de equipo test',NULL,'S',5,'0000-00-00','',NULL,NULL,NULL,NULL,2),(9,NULL,NULL,NULL,'juan perez','2018-01-17 13:38:28','2018-01-19','08:00:00',4,NULL,'mancha de aceite abajo del equipo ',NULL,'AN',1,'0000-00-00','',NULL,NULL,NULL,NULL,2),(10,NULL,NULL,NULL,'1','2018-01-18 18:05:53','2018-01-18','18:04:00',8,NULL,'ccg','18:04','AN',0,'2018-02-08','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',2),(11,NULL,NULL,NULL,'1','2018-01-18 18:07:20','2018-01-18','18:06:00',6,NULL,'mancha de aceite debajo del equipo','18:06','',0,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',2),(12,NULL,NULL,NULL,'1','2018-01-30 14:06:43','2018-01-30','14:03:00',9,NULL,'No tiene fuerza para levantar la carga','14:03','AN',0,'2018-02-08','ok\r\n',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',2),(13,NULL,NULL,NULL,'3','2018-02-05 19:01:38','2018-02-05','18:59:00',9,NULL,'bateria descargada\n\n','18:59','',0,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',2),(14,NULL,NULL,NULL,'1','2018-02-05 19:42:17','2018-02-07','05:41:00',9,NULL,'fhjh','05:41','AN',0,'2018-02-08','Trabajo OK ',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(15,NULL,NULL,NULL,'1','2018-02-05 19:46:36','2018-02-17','05:41:00',6,NULL,'ggggjffufjffg','05:41','AN',0,'0000-00-00','',NULL,NULL,NULL,'assets/files/reclamos/15.jpg',6),(16,NULL,NULL,NULL,'1','2018-02-07 12:36:19','2018-02-16','12:35:00',7,NULL,'fff','12:35','AN',0,'2018-02-08','',NULL,NULL,NULL,'assets/files/reclamos/16.jpg',6),(17,NULL,NULL,NULL,'1','2018-02-08 14:38:14','2018-02-08','14:35:00',10,NULL,'Ruido en cuerpo de bomba int 0057A','14:35','',0,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6),(18,NULL,NULL,NULL,'1','2018-02-08 14:46:00','2018-02-08','14:45:00',6,NULL,'Gets con desgaste excesivo','14:45','',0,'0000-00-00','',NULL,NULL,NULL,'assets/files/orders/sinImagen.jpg',6);
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
  PRIMARY KEY (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,'mmmm','4253133','desamparados',1,'Casa central');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tareas`
--

LOCK TABLES `tareas` WRITE;
/*!40000 ALTER TABLE `tareas` DISABLE KEYS */;
INSERT INTO `tareas` VALUES (4,'LIMPIE EL CUERPO DEL RADIADOR. UTILICE AIRE COMPRIMIDO.','AC',2),(5,'REVISE LA BOMBA DE AGUA','AC',2),(6,'LIMPIE EL FILTRO DE ADMISIÓN DE AIRE. SE PUEDE LIMPIAR COMO MÁXIMO 6 VECES, LUEGO CAMBIAR.','AC',2),(7,'CAMBIE EL FILTRO DE ADMISIÓN DE AIRE','AC',2),(8,'CAMBIE EL ACEITE DE MOTOR. ACEITE 5W40','AC',2),(9,'CAMBIE LOS FILTROS DE ACEITE.','AC',2),(12,'Limpié el depósito de combustible','AC',2),(13,'COMPRUEBE EL MOTOR DE ARRANQUE','AC',2),(14,'REVISE EL SENSOR DE TEMPERATURA.','AC',2),(15,'TOMAR MUESTRA DE ACEITE PARA ANÁLISIS DE LABORATORIO. USAR PROCEDIMIENTO PR0004EM','AC',2),(16,'REALIZAR ANÁLISIS DE TEMPERATURA. UTIIZAR CÁMARA TERMOMÉTRICA O PIRÓMETRO','AC',2),(18,'tarea de prueba','AN',2);
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
  PRIMARY KEY (`backId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_back`
--

LOCK TABLES `tbl_back` WRITE;
/*!40000 ALTER TABLE `tbl_back` DISABLE KEYS */;
INSERT INTO `tbl_back` VALUES (1,125,'tarea backlog','2017-11-23',5,'AN',0,0,2),(2,368,'nueva tarea2','2017-11-22',5,'C',0,0,2),(3,1,'nueva prueba 1','2017-11-23',0,'C',0,0,2),(4,1,'1','2017-11-24',0,'AN',0,0,2),(5,1,'2','2017-12-01',0,'AN',0,0,2),(6,2,'1','2017-11-30',0,'AN',0,0,2),(7,1,'1','2017-11-30',0,'AN',0,0,2),(8,3,'1','2017-12-07',0,'C',0,0,2),(9,2,'2','2017-12-12',52,'C',0,0,2),(10,1,'1','2017-12-11',15,'C',0,0,2),(11,2,'1','2018-01-20',40,'C',0,0,2),(12,4,'4','0000-00-00',0,'C',0,0,2),(13,4,'5','2018-01-20',0,'C',0,0,2),(14,4,'12','2018-02-10',48,'C',0,0,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detanotapedido`
--

LOCK TABLES `tbl_detanotapedido` WRITE;
/*!40000 ALTER TABLE `tbl_detanotapedido` DISABLE KEYS */;
INSERT INTO `tbl_detanotapedido` VALUES (60,57,3,2,1,'2017-11-14','2017-11-14',454554,'E'),(61,58,1,15,1,'2017-11-21','2017-11-21',1,'P'),(62,59,1,15,1,'2017-12-01','2017-12-01',879797,'E'),(63,60,1,0,2,'2018-01-30','2018-01-30',1,'P'),(64,60,4,2,1,'2018-01-30','2018-01-30',1,'P'),(65,61,1,2,2,'2018-07-23','2018-07-23',1,'P'),(66,62,1,3,4,'2018-07-22','2018-07-22',1,'P'),(67,63,1,3,1,'2018-07-23','2018-07-23',1,'P');
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
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`detavaledid`),
  KEY `equipid` (`herrId`) USING BTREE,
  KEY `valedid` (`valedid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detavaledescarga`
--

LOCK TABLES `tbl_detavaledescarga` WRITE;
/*!40000 ALTER TABLE `tbl_detavaledescarga` DISABLE KEYS */;
INSERT INTO `tbl_detavaledescarga` VALUES (1,1,1,NULL,NULL,2),(2,1,8,NULL,NULL,2),(3,2,57,NULL,NULL,2);
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
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`detavid`),
  KEY `equiid` (`herrId`) USING BTREE,
  KEY `valesid` (`valesid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_detavalesalida`
--

LOCK TABLES `tbl_detavalesalida` WRITE;
/*!40000 ALTER TABLE `tbl_detavalesalida` DISABLE KEYS */;
INSERT INTO `tbl_detavalesalida` VALUES (1,1,8,NULL,NULL,2),(2,2,1,NULL,NULL,2),(3,4,2,NULL,NULL,2),(4,5,1,NULL,NULL,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estanteria`
--

LOCK TABLES `tbl_estanteria` WRITE;
/*!40000 ALTER TABLE `tbl_estanteria` DISABLE KEYS */;
INSERT INTO `tbl_estanteria` VALUES (1,'estanteria 1','1','dd1',2),(2,'estanteria 2','1','dd2',2),(3,'estanteria 3','1','dd3',2),(4,'estanteria 4','1','dd4',2),(5,'estanteria 5','1','d5',2),(6,'Estantería de prueba','24','ESTANTERIA 01 TEST',2),(7,'Estanterías nro 2 de prueba','6','ESTANTERIA 02 TEST',2),(8,'dgfgfgdgdfgdg','123','sdfgsfdgf',2),(9,'estantería de prueba 001','12','estanteria de prueba 001',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_listarea`
--

LOCK TABLES `tbl_listarea` WRITE;
/*!40000 ALTER TABLE `tbl_listarea` DISABLE KEYS */;
INSERT INTO `tbl_listarea` VALUES (1,1,'tarea 12',NULL,NULL,'IN'),(2,1,'tarea1212',NULL,NULL,'C'),(3,1,'tarea130',NULL,NULL,'IN'),(4,1,'tareanueva1',NULL,NULL,'C'),(5,1,'tarea gemma1',NULL,NULL,'1'),(6,1,'TAREA2',NULL,NULL,'6'),(7,1,'TAREA 25',NULL,NULL,'6'),(8,1,'nombre de tarea 1 ',NULL,NULL,'5'),(9,1,'nuevatrea30',NULL,NULL,'5'),(10,1,'tarea de gemma',NULL,NULL,'5'),(11,1,'nueva tarea 34 ',NULL,NULL,'5'),(12,1,'nueva tarea 50',3,NULL,'5'),(13,0,'nueva tares 45 45',NULL,NULL,'5'),(14,1,'nueva tarea12',1,NULL,'6'),(15,1,'gemmma belen tarea',3,NULL,'5'),(16,1,'nueva tare ',NULL,NULL,'5'),(17,1,'nueva tarea ',NULL,NULL,'5'),(18,1,'TAREA 10 ',NULL,NULL,'5'),(19,1,'hhu',NULL,NULL,'5'),(20,1,'hyhy12',NULL,NULL,'5'),(21,1,'dedede',NULL,NULL,'5'),(22,1,'genemmma ',NULL,NULL,'6'),(23,1,'gemma',NULL,NULL,'6'),(24,1,'fefefef',NULL,NULL,'5'),(25,1,'fefeenueva ',NULL,NULL,'6'),(26,1,'gemama',NULL,NULL,'5'),(27,1,'geegegegegeg',NULL,NULL,'5'),(28,1,'nueva traea gemma',NULL,NULL,'6'),(29,1,'gemma ingresi ntarea',NULL,NULL,'6'),(30,1,'hola ',NULL,NULL,'6'),(31,1,'vuev tarea maruicio',NULL,NULL,'5'),(32,1,'tarea AHORA SI',2,NULL,'5'),(33,1,'TAREA SI12',1,NULL,'5'),(34,1,'TAREA 100',2,NULL,'5'),(35,8,'sASA',NULL,NULL,'C'),(36,8,'asSa',NULL,NULL,'C'),(37,8,'ASA',NULL,NULL,'C'),(38,22,'desarme',NULL,NULL,'C'),(39,22,'limpieza ',NULL,NULL,'C'),(40,22,'armado',1,NULL,'C'),(41,22,'limpieza',2,NULL,'C'),(42,22,'desarme',3,NULL,'C'),(43,16,'DDFDS',NULL,NULL,'C'),(44,16,'SDFSF',3,'2017-12-11','C'),(45,16,'nueva tarea: Limpieza ',1,'2017-12-11','RE'),(46,17,'jadfñjdskjfd',NULL,NULL,'C'),(47,16,'saadsa',6,'2017-12-13','C'),(48,16,'sadadasd',NULL,NULL,'C'),(49,16,'sdadasdsa',3,NULL,'C'),(50,16,'1111',NULL,NULL,'C'),(51,16,'2222',3,NULL,'C'),(52,16,'dedede',1,NULL,'RE'),(53,16,'gegeg',1,NULL,'RE'),(54,21,'tarea 1',1,NULL,'C'),(55,21,'tarea2',3,NULL,'C'),(56,21,'tarea3',NULL,NULL,'C'),(57,21,'tarea4',NULL,NULL,'C'),(58,21,'tarea6',1,NULL,'RE'),(59,37,'dsadadad',1,'2017-12-20','C'),(60,34,'fsdfsfsd',1,'2017-12-29','C'),(61,34,'qwewqeqw',1,'2017-12-29','C'),(62,47,'sdadsad',NULL,NULL,'C'),(63,47,'sadad',NULL,NULL,'C'),(64,47,'dasdd',NULL,NULL,'RE'),(65,47,'dthdhgd',NULL,NULL,'RE'),(66,73,'dffgrrb',NULL,NULL,'C'),(67,73,'geegtgt',5,NULL,'C'),(68,73,'evefvev',1,NULL,'C');
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
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`loteid`),
  KEY `depositoid` (`depositoid`),
  KEY `artId` (`artId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lote`
--

LOCK TABLES `tbl_lote` WRITE;
/*!40000 ALTER TABLE `tbl_lote` DISABLE KEYS */;
INSERT INTO `tbl_lote` VALUES (1,NULL,'2017-11-06','27',1,'AC',1,NULL,2),(2,NULL,'2017-12-20','12',2,'AC',2,NULL,2);
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
  PRIMARY KEY (`id_notaPedido`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notapedido`
--

LOCK TABLES `tbl_notapedido` WRITE;
/*!40000 ALTER TABLE `tbl_notapedido` DISABLE KEYS */;
INSERT INTO `tbl_notapedido` VALUES (57,'2017-11-14',1),(58,'2017-11-21',4),(59,'2017-11-30',4),(60,'2018-01-30',5),(61,'2018-07-22',3),(62,'2018-07-22',1),(63,'2018-07-22',3);
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
  `id_empresa` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prevId` (`prevId`),
  KEY `tbl_preventivoherramientas_ibfk_2` (`herrId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_preventivoherramientas`
--

LOCK TABLES `tbl_preventivoherramientas` WRITE;
/*!40000 ALTER TABLE `tbl_preventivoherramientas` DISABLE KEYS */;
INSERT INTO `tbl_preventivoherramientas` VALUES (1,22,20,1,'2');
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
  PRIMARY KEY (`id`),
  KEY `prevId` (`prevId`),
  KEY `artId` (`artId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_preventivoinsumos`
--

LOCK TABLES `tbl_preventivoinsumos` WRITE;
/*!40000 ALTER TABLE `tbl_preventivoinsumos` DISABLE KEYS */;
INSERT INTO `tbl_preventivoinsumos` VALUES (1,22,3,45);
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
  PRIMARY KEY (`id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_trazacomponente`
--

LOCK TABLES `tbl_trazacomponente` WRITE;
/*!40000 ALTER TABLE `tbl_trazacomponente` DISABLE KEYS */;
INSERT INTO `tbl_trazacomponente` VALUES (1,19,1,2,'2017-10-05 07:29:05','2017-10-05 07:31:25','Balderramo','T','se lleva balderrama para reparar bomba inyectora',5,2),(2,21,2,3,'2017-10-05 07:29:05','2017-10-05 07:29:05','Sr Perez','REC','recibo radiador para reparar',5,2),(3,22,1,1,'2017-12-02 07:12:21','2017-12-02 07:12:21','pedro perez','C','sadadsa',1,2),(4,29,1,1,'2017-12-02 07:12:53','2017-12-02 07:12:53','motores balderramo','C','dasdasd',1,2),(5,19,6,2,'2018-07-02 21:41:47','2018-07-02 21:41:47','comerciante 01','T','recibo de prueba...',1,2),(6,19,NULL,NULL,NULL,'2018-07-02 21:57:33','msosa','T','otra prueba...',1,2),(7,37,NULL,NULL,NULL,'2018-07-02 21:58:32','asdasd','T','asdadadsdd',1,2),(8,19,9,7,'2018-07-03 00:22:08','2018-07-03 00:22:08','qwerwrrewr','C','qewrwerwrer',1,2),(9,41,NULL,NULL,NULL,'2018-07-03 00:22:50','asdfasdf','T','asdfasdf',1,2),(10,46,NULL,NULL,NULL,'2018-07-03 00:24:05','zxcv','T','zxcv',1,2),(11,37,NULL,NULL,NULL,'2018-07-03 00:30:18','wwww','T','wwww',1,2),(12,37,6,5,'2018-07-03 00:31:10','2018-07-03 00:31:10','rrrr','C','rrrr',1,0);
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
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`id_unidadmedida`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_unidadmedida`
--

LOCK TABLES `tbl_unidadmedida` WRITE;
/*!40000 ALTER TABLE `tbl_unidadmedida` DISABLE KEYS */;
INSERT INTO `tbl_unidadmedida` VALUES (1,'Unidad',2),(2,'Litro',2),(3,'Kg',2);
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
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`valedid`),
  KEY `usrId` (`usrId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_valedesacarga`
--

LOCK TABLES `tbl_valedesacarga` WRITE;
/*!40000 ALTER TABLE `tbl_valedesacarga` DISABLE KEYS */;
INSERT INTO `tbl_valedesacarga` VALUES (1,'2018-06-25 00:00:00',1,'JJ Lopez','Taller',2),(2,'2018-07-01 00:00:00',1,'Miguel Cantilo','Pedro y Pablo',2);
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
  `id_empresa` int(10) NOT NULL,
  PRIMARY KEY (`valesid`),
  KEY `repid` (`usrId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_valesalida`
--

LOCK TABLES `tbl_valesalida` WRITE;
/*!40000 ALTER TABLE `tbl_valesalida` DISABLE KEYS */;
INSERT INTO `tbl_valesalida` VALUES (1,'2017-11-14',NULL,'Roberto Pérez','Obra 1',2),(2,'2017-11-14',NULL,'Francisco Rodriguez','Obra 2',2),(4,'2017-11-14',5,NULL,NULL,2),(5,'2018-07-01',1,'Hugo Gallardo','Deposito 1',2);
/*!40000 ALTER TABLE `tbl_valesalida` ENABLE KEYS */;
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
  `id_empresa` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id_unidad`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad_industrial`
--

LOCK TABLES `unidad_industrial` WRITE;
/*!40000 ALTER TABLE `unidad_industrial` DISABLE KEYS */;
INSERT INTO `unidad_industrial` VALUES (1,'Veladero','2'),(2,'Unidad Insdutrial Nº2','2'),(3,'UP Rodeo','2'),(4,'La Laja','2'),(5,'UP TEST','2');
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
  `unidaddescrip` varchar(45) NOT NULL,
  `id_empresa` varchar(45) NOT NULL,
  PRIMARY KEY (`id_unidad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad_tiempo`
--

LOCK TABLES `unidad_tiempo` WRITE;
/*!40000 ALTER TABLE `unidad_tiempo` DISABLE KEYS */;
INSERT INTO `unidad_tiempo` VALUES (1,'minutos','2'),(2,'horas','2'),(3,'dias','2');
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
INSERT INTO `usuarioasempresa` VALUES (2,1,'2018-09-18 00:00:00',1,1),(6,17,'2018-09-18 00:00:00',1,0),(7,16,'2018-09-17 00:00:00',1,0),(7,18,'2018-09-21 00:00:00',1,7),(7,19,'2018-09-12 00:00:00',1,1);
/*!40000 ALTER TABLE `usuarioasempresa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-24 23:38:55
