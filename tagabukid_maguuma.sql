/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.37-log : Database - tagabukid_maguuma
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tagabukid_maguuma` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tagabukid_maguuma`;

/*Table structure for table `agri_farmerprofile` */

DROP TABLE IF EXISTS `agri_farmerprofile`;

CREATE TABLE `agri_farmerprofile` (
  `objid` varchar(50) NOT NULL,
  `farmer_objid` varchar(50) DEFAULT NULL,
  `farmer_name` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `createby_objid` varchar(50) DEFAULT NULL,
  `createby_name` varchar(100) DEFAULT NULL,
  `datecreated` date DEFAULT NULL,
  `farmer_address_municipalityid` varchar(50) DEFAULT NULL,
  `farmer_address_barangayid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `agri_farmerprofile` */

/*Table structure for table `agri_farmerspouse` */

DROP TABLE IF EXISTS `agri_farmerspouse`;

CREATE TABLE `agri_farmerspouse` (
  `objid` varchar(50) NOT NULL,
  `spouse_objid` varchar(50) DEFAULT NULL,
  `spouse_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `spouse_objid` (`spouse_objid`),
  CONSTRAINT `agri_farmerspouse_ibfk_1` FOREIGN KEY (`spouse_objid`) REFERENCES `etracs254_pagrilantapan`.`entityindividual` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `agri_farmerspouse` */

/*Table structure for table `commodity` */

DROP TABLE IF EXISTS `commodity`;

CREATE TABLE `commodity` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `commodity` */

insert  into `commodity`(`objid`,`name`,`code`,`description`) values ('COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','IC','INDUSTRIAL CROPS'),('COM-3d1be689:164f0ef922d:-7f8e','ORNAMENTAL','ORNAMENTALS','ORNAMENTALS'),('COM-3d1be689:164f0ef922d:-7f99','FISHERIES','FISHERIES','FISHERIES'),('COM-3d1be689:164f0ef922d:-7fa4','RICE','RICE','RICE'),('COM-3d1be689:164f0ef922d:-7faf','VEGETABLE','VEG','VEGETABLE'),('COM-3d1be689:164f0ef922d:-7fc2','ADLAI','ADLAI','ADLAI'),('COM-3d1be689:164f0ef922d:-7fd2','CORN','CORN','CORN'),('COM-d83e8e2:164f8681111:-7e71','FRUITS','FRUITS','FRUITS');

/*Table structure for table `commodity_type` */

DROP TABLE IF EXISTS `commodity_type`;

CREATE TABLE `commodity_type` (
  `objid` varchar(50) NOT NULL,
  `commodity_objid` varchar(50) DEFAULT NULL,
  `commodity_name` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `commodity_objid` (`commodity_objid`),
  KEY `commodity_name` (`commodity_name`),
  CONSTRAINT `commodity_type_ibfk_1` FOREIGN KEY (`commodity_objid`) REFERENCES `commodity` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `commodity_type` */

insert  into `commodity_type`(`objid`,`commodity_objid`,`commodity_name`,`name`,`code`,`description`,`unit`) values ('COM-TYPE-2556ac6a:164f1b3a38a:-7fd2','COM-3d1be689:164f0ef922d:-7fc2','ADLAI','ADLAI','AD','ADLAI','AREA'),('COM-TYPE-d83e8e2:164f8681111:-7c21','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','COCONUT','CC','COCONUT','HILLS'),('COM-TYPE-d83e8e2:164f8681111:-7c47','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','CACAO','CACAO','CACAO','AREA'),('COM-TYPE-d83e8e2:164f8681111:-7c6d','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','PALM OIL','PO','PALM OIL','AREA'),('COM-TYPE-d83e8e2:164f8681111:-7c97','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','COFFEE','COFFEE','COFFEE','AREA'),('COM-TYPE-d83e8e2:164f8681111:-7cb9','COM-d83e8e2:164f8681111:-7e71','FRUITS','DURIAN','DR','DURIAN','HILLS'),('COM-TYPE-d83e8e2:164f8681111:-7ce3','COM-d83e8e2:164f8681111:-7e71','FRUITS','GUAVA','GUAVA','GUAVA','HILLS'),('COM-TYPE-d83e8e2:164f8681111:-7d09','COM-d83e8e2:164f8681111:-7e71','FRUITS','CALAMANSI','CAL','CALAMANSI','HILLS'),('COM-TYPE-d83e8e2:164f8681111:-7d2b','COM-d83e8e2:164f8681111:-7e71','FRUITS','CASHEW','CS','CASHEW','HILLS'),('COM-TYPE-d83e8e2:164f8681111:-7d62','COM-d83e8e2:164f8681111:-7e71','FRUITS','PAPAYA','PPY','PAPAYA','HILLS'),('COM-TYPE-d83e8e2:164f8681111:-7d86','COM-d83e8e2:164f8681111:-7e71','FRUITS','MARANG','MARANG','MARANG','HILLS'),('COM-TYPE-d83e8e2:164f8681111:-7dae','COM-d83e8e2:164f8681111:-7e71','FRUITS','POMELO','POMELO','POMELO','HILLS'),('COM-TYPE-d83e8e2:164f8681111:-7dd2','COM-d83e8e2:164f8681111:-7e71','FRUITS','LANZONES','LZ','LANZONES','HILLS'),('COM-TYPE-d83e8e2:164f8681111:-7df6','COM-d83e8e2:164f8681111:-7e71','FRUITS','RAMBUTAN','RB','RAMBUTAN','HILLS'),('COM-TYPE-d83e8e2:164f8681111:-7e1a','COM-d83e8e2:164f8681111:-7e71','FRUITS','MANGO','MMG','MANGO','HILLS'),('COM-TYPE-d83e8e2:164f8681111:-7e48','COM-d83e8e2:164f8681111:-7e71','FRUITS','JACKFRUIT','JF','JACKFRUIT','HILLS'),('COM-TYPE-d83e8e2:164f8681111:-7e9a','COM-d83e8e2:164f8681111:-7e71','FRUITS','DRAGON FRUITS','DF','DRAGON FRUITS','HILLS'),('COM-TYPE-d83e8e2:164f8681111:-7ed3','COM-3d1be689:164f0ef922d:-7f99','FISHERIES','PANGASUIS','PNG','PANGASUIS','AREA'),('COM-TYPE-d83e8e2:164f8681111:-7ef7','COM-3d1be689:164f0ef922d:-7f99','FISHERIES','FRESHWATER SHRIMP','FWS','FRESHWATER SHRIMP','AREA'),('COM-TYPE-d83e8e2:164f8681111:-7f1b','COM-3d1be689:164f0ef922d:-7f99','FISHERIES','CARP','CARP','CARP','AREA'),('COM-TYPE-d83e8e2:164f8681111:-7f40','COM-3d1be689:164f0ef922d:-7f99','FISHERIES','HITO','HITO','HITO','AREA'),('COM-TYPE-d83e8e2:164f8681111:-7f70','COM-3d1be689:164f0ef922d:-7f99','FISHERIES','TILIPIA','TILIPIA','TILIPIA','AREA'),('COM-TYPE-d83e8e2:164f8681111:-7f94','COM-3d1be689:164f0ef922d:-7fd2','CORN','WHITE','WHITE','WHITE','AREA'),('COM-TYPE-d83e8e2:164f8681111:-7fb8','COM-3d1be689:164f0ef922d:-7fd2','CORN','YELLOW','YELLOW','YELLOW','AREA'),('COM-TYPE56fcd71a:164f8874309:-7be4','COM-3d1be689:164f0ef922d:-7faf','VEGETABLE','ROOTCROPS','ROOTCROPS','ROOTCROPS','AREA'),('COM-TYPE56fcd71a:164f8874309:-7c0a','COM-3d1be689:164f0ef922d:-7faf','VEGETABLE','HIGH VALUE VEGETABLE','HVV','HIGH VALUE VEGETABLE','AREA'),('COM-TYPE56fcd71a:164f8874309:-7c49','COM-3d1be689:164f0ef922d:-7faf','VEGETABLE','LEGUMES','LG','LEGUMES','AREA'),('COM-TYPE56fcd71a:164f8874309:-7c73','COM-3d1be689:164f0ef922d:-7faf','VEGETABLE','ROOT','ROOT','ROOT','AREA'),('COM-TYPE56fcd71a:164f8874309:-7cad','COM-3d1be689:164f0ef922d:-7faf','VEGETABLE','HERB','HERB','HERB','HILLS'),('COM-TYPE56fcd71a:164f8874309:-7cd7','COM-3d1be689:164f0ef922d:-7faf','VEGETABLE','FRUIT','FRUIT','FRUIT','AREA'),('COM-TYPE56fcd71a:164f8874309:-7d05','COM-3d1be689:164f0ef922d:-7faf','VEGETABLE','LEAFY','LEAFY','LEAFY','AREA'),('COM-TYPE56fcd71a:164f8874309:-7d2b','COM-3d1be689:164f0ef922d:-7faf','VEGETABLE','TREE VEGETABLE','TV','TREE VEGETABLE','HILLS'),('COM-TYPE56fcd71a:164f8874309:-7d63','COM-3d1be689:164f0ef922d:-7faf','VEGETABLE','SPICES','SPICES','SPICES','AREA'),('COM-TYPE56fcd71a:164f8874309:-7e91','COM-3d1be689:164f0ef922d:-7fa4','RICE','IRRIGATED RICE','IR','IRRIGATED RICE','AREA'),('COM-TYPE56fcd71a:164f8874309:-7ebd','COM-3d1be689:164f0ef922d:-7fa4','RICE','RAINFED','RF','RAINFED','AREA'),('COM-TYPE56fcd71a:164f8874309:-7ee5','COM-3d1be689:164f0ef922d:-7fa4','RICE','UPLAND','UL','UPLAND','AREA'),('COM-TYPE56fcd71a:164f8874309:-7f21','COM-3d1be689:164f0ef922d:-7f8e','ORNAMENTAL','CUT FOLTAGE','CFG','CUT FOLTAGE','AREA'),('COM-TYPE56fcd71a:164f8874309:-7f45','COM-3d1be689:164f0ef922d:-7f8e','ORNAMENTAL','CUTFLOWERS','CFL','CUTFLOWERS','AREA'),('COM-TYPE56fcd71a:164f8874309:-7f6d','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','CASSAVA','CSV','CASSAVA','AREA'),('COM-TYPE56fcd71a:164f8874309:-7fa6','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','CITRUS','CIT','CITRUS','HILLS'),('COM-TYPE706ef02d:164f8808486:-7e7c','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','MANGOSTEEN','MNGSTN','MANGOSTEEN','HILLS'),('COM-TYPE706ef02d:164f8808486:-7e9e','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','SANTOL','SAN','SANTOL','HILLS'),('COM-TYPE706ef02d:164f8808486:-7ec4','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','AVOCADO','AVO','AVOCADO','HILLS'),('COM-TYPE706ef02d:164f8808486:-7ee6','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','GUYABANO','GUYA','GUYABANO','HILLS'),('COM-TYPE706ef02d:164f8808486:-7f08','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','FALCATA','FAL','FALCATA','HILLS'),('COM-TYPE706ef02d:164f8808486:-7f2a','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','RUBBER','RUBBER','RUBBER','AREA'),('COM-TYPE706ef02d:164f8808486:-7f52','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','ABACA','ABACA','ABACA','AREA'),('COM-TYPE706ef02d:164f8808486:-7f74','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','SUGARCANE','SC','SUGARCANE','AREA'),('COM-TYPE706ef02d:164f8808486:-7f98','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','BANANA','BN','BANANA','HILLS'),('COM-TYPE706ef02d:164f8808486:-7fd0','COM-3d1be689:164f0ef922d:-7f83','INDUSTRIAL CROPS','PINEAPPLE','PP','PINEAPPLE','AREA');

/*Table structure for table `commodity_variety` */

DROP TABLE IF EXISTS `commodity_variety`;

CREATE TABLE `commodity_variety` (
  `objid` varchar(50) NOT NULL,
  `commoditytype_objid` varchar(50) DEFAULT NULL,
  `commoditytype_name` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `commoditytype_objid` (`commoditytype_objid`),
  CONSTRAINT `commodity_variety_ibfk_1` FOREIGN KEY (`commoditytype_objid`) REFERENCES `commodity_type` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `commodity_variety` */

insert  into `commodity_variety`(`objid`,`commoditytype_objid`,`commoditytype_name`,`name`,`code`,`description`) values ('COM-VAR1db0027d:164f8d3f47d:-761d','COM-TYPE-d83e8e2:164f8681111:-7fb8','YELLOW','HYBRID SEEDS','HS','HYBRID SEEDS'),('COM-VAR1db0027d:164f8d3f47d:-763c','COM-TYPE-d83e8e2:164f8681111:-7fb8','YELLOW','OPV','OPV','OPV'),('COM-VAR1db0027d:164f8d3f47d:-765b','COM-TYPE-d83e8e2:164f8681111:-7fb8','YELLOW','SIGE-SIGE','SIGE-SIGE','SIGE-SIGE'),('COM-VAR1db0027d:164f8d3f47d:-768a','COM-TYPE-d83e8e2:164f8681111:-7fb8','YELLOW','GMO','GMO','GMO'),('COM-VAR1db0027d:164f8d3f47d:-76a9','COM-TYPE-d83e8e2:164f8681111:-7f94','WHITE','OPV','OPV','OPV'),('COM-VAR1db0027d:164f8d3f47d:-76c8','COM-TYPE-d83e8e2:164f8681111:-7f94','WHITE','GMO','GMO','GMO'),('COM-VAR1db0027d:164f8d3f47d:-76e7','COM-TYPE-d83e8e2:164f8681111:-7f94','WHITE','SIGE-SIGE','SIGE-SIGE','SIGE-SIGE'),('COM-VAR1db0027d:164f8d3f47d:-7706','COM-TYPE-d83e8e2:164f8681111:-7f94','WHITE','HYBRID SEEDS','HS','HYBRID SEEDS'),('COM-VAR1db0027d:164f8d3f47d:-773c','COM-TYPE56fcd71a:164f8874309:-7ee5','UPLAND','CERTIFIED SEEDS','CS','CERTIFIED SEEDS'),('COM-VAR1db0027d:164f8d3f47d:-775c','COM-TYPE56fcd71a:164f8874309:-7ee5','UPLAND','GOOD SEEDS','GS','GOOD SEEDS'),('COM-VAR1db0027d:164f8d3f47d:-779f','COM-TYPE56fcd71a:164f8874309:-7ee5','UPLAND','FARMERS SAVED SEEDS','FSS','FARMERS SAVED SEEDS'),('COM-VAR1db0027d:164f8d3f47d:-77be','COM-TYPE56fcd71a:164f8874309:-7ee5','UPLAND','HYBRID SEEDS','HS','HYBRID SEEDS'),('COM-VAR1db0027d:164f8d3f47d:-77f3','COM-TYPE56fcd71a:164f8874309:-7d2b','TREE VEGETABLE','MALUNGGAY','MGY','MALUNGGAY'),('COM-VAR1db0027d:164f8d3f47d:-7812','COM-TYPE56fcd71a:164f8874309:-7d63','SPICES','GINGER','GINGER','GINGER'),('COM-VAR1db0027d:164f8d3f47d:-7831','COM-TYPE56fcd71a:164f8874309:-7d63','SPICES','BULB ONION','BO','BULB ONION'),('COM-VAR1db0027d:164f8d3f47d:-7850','COM-TYPE56fcd71a:164f8874309:-7d63','SPICES','GARLIC','GARLIC','GARLIC'),('COM-VAR1db0027d:164f8d3f47d:-786f','COM-TYPE56fcd71a:164f8874309:-7d63','SPICES','BLACK PEPPER','BP','BLACK PEPPER'),('COM-VAR1db0027d:164f8d3f47d:-788f','COM-TYPE56fcd71a:164f8874309:-7d63','SPICES','HERB','HERB','HERB'),('COM-VAR1db0027d:164f8d3f47d:-78ae','COM-TYPE56fcd71a:164f8874309:-7d63','SPICES','PARSLEY','PR','PARSLEY'),('COM-VAR1db0027d:164f8d3f47d:-78cd','COM-TYPE56fcd71a:164f8874309:-7d63','SPICES','CELERY','CY','CELERY'),('COM-VAR1db0027d:164f8d3f47d:-78ec','COM-TYPE56fcd71a:164f8874309:-7be4','ROOTCROPS','TARO','TARO','TARO'),('COM-VAR1db0027d:164f8d3f47d:-790b','COM-TYPE56fcd71a:164f8874309:-7be4','ROOTCROPS','UBE','UBE','UBE'),('COM-VAR1db0027d:164f8d3f47d:-7940','COM-TYPE56fcd71a:164f8874309:-7be4','ROOTCROPS','GABI','GB','GABI'),('COM-VAR1db0027d:164f8d3f47d:-795f','COM-TYPE56fcd71a:164f8874309:-7be4','ROOTCROPS','SWEET POTATO','SWP','SWEET POTATO'),('COM-VAR1db0027d:164f8d3f47d:-7980','COM-TYPE56fcd71a:164f8874309:-7c73','ROOT','RADDISH','RADDISH','RADDISH'),('COM-VAR1db0027d:164f8d3f47d:-79a1','COM-TYPE56fcd71a:164f8874309:-7c73','ROOT','CARROTS','CARROTS','CARROTS'),('COM-VAR1db0027d:164f8d3f47d:-79c2','COM-TYPE56fcd71a:164f8874309:-7c73','ROOT','SINGKAMAS','SINGKAMAS','SINGKAMAS'),('COM-VAR1db0027d:164f8d3f47d:-79e3','COM-TYPE56fcd71a:164f8874309:-7c73','ROOT','WHITE POTATO','WP','WHITE POTATO'),('COM-VAR1db0027d:164f8d3f47d:-7a12','COM-TYPE56fcd71a:164f8874309:-7ebd','RAINFED','CERTIFIED SEEDS','CS','CERITIFIED SEEDS'),('COM-VAR1db0027d:164f8d3f47d:-7a47','COM-TYPE56fcd71a:164f8874309:-7ebd','RAINFED','GOOD SEEDS','GS','GOOD SEEDS'),('COM-VAR1db0027d:164f8d3f47d:-7a68','COM-TYPE56fcd71a:164f8874309:-7ebd','RAINFED','FARMERS SAVED SEEDS','FSS','FARMERS SAVED SEEDS'),('COM-VAR1db0027d:164f8d3f47d:-7a87','COM-TYPE56fcd71a:164f8874309:-7ebd','RAINFED','HYBRID SEEDS','HS','HYBRID SEEDS'),('COM-VAR1db0027d:164f8d3f47d:-7aa6','COM-TYPE56fcd71a:164f8874309:-7c49','LEGUMES','COWPEA','CP','COWPEA'),('COM-VAR1db0027d:164f8d3f47d:-7ac5','COM-TYPE56fcd71a:164f8874309:-7c49','LEGUMES','SOY BEANS','SB','SOY BEANS'),('COM-VAR1db0027d:164f8d3f47d:-7ae4','COM-TYPE56fcd71a:164f8874309:-7c49','LEGUMES','WING BEANS','WB','WING BEANS'),('COM-VAR1db0027d:164f8d3f47d:-7b1b','COM-TYPE56fcd71a:164f8874309:-7c49','LEGUMES','STRING BEANS','SBN','STRING BEANS'),('COM-VAR1db0027d:164f8d3f47d:-7b3a','COM-TYPE56fcd71a:164f8874309:-7c49','LEGUMES','WHITE BEANS','WBN','WHITE BEANS'),('COM-VAR1db0027d:164f8d3f47d:-7b59','COM-TYPE56fcd71a:164f8874309:-7c49','LEGUMES','SWEET PEAS','SWP','SWEET PEAS'),('COM-VAR1db0027d:164f8d3f47d:-7b79','COM-TYPE56fcd71a:164f8874309:-7c49','LEGUMES','BAGUIO BEANS','BBN','BAGUIO BEANS'),('COM-VAR1db0027d:164f8d3f47d:-7b99','COM-TYPE56fcd71a:164f8874309:-7c49','LEGUMES','MUNGBEANS','MBN','MUNGBEANS'),('COM-VAR1db0027d:164f8d3f47d:-7bbe','COM-TYPE56fcd71a:164f8874309:-7c49','LEGUMES','PEANUT','PT','PEANUT'),('COM-VAR1db0027d:164f8d3f47d:-7bdd','COM-TYPE56fcd71a:164f8874309:-7c49','LEGUMES','RED BEANS','RBN','RED BEANS'),('COM-VAR1db0027d:164f8d3f47d:-7bfc','COM-TYPE56fcd71a:164f8874309:-7d05','LEAFY','PECHAY','PECHAY','PECHAY'),('COM-VAR1db0027d:164f8d3f47d:-7c1b','COM-TYPE56fcd71a:164f8874309:-7d05','LEAFY','ASSORTED LEAFY','AL','ASSORTED LEAFY'),('COM-VAR1db0027d:164f8d3f47d:-7c44','COM-TYPE56fcd71a:164f8874309:-7d05','LEAFY','CHINESE PECHAY','CP','CHINESE PECHAY'),('COM-VAR1db0027d:164f8d3f47d:-7c63','COM-TYPE56fcd71a:164f8874309:-7d05','LEAFY','ALUGBATI','ALU','ALUGBATI'),('COM-VAR1db0027d:164f8d3f47d:-7c82','COM-TYPE56fcd71a:164f8874309:-7e91','IRRIGATED RICE','CERTIFIED SEEDS','CS','CERTIFIED SEEDS'),('COM-VAR1db0027d:164f8d3f47d:-7ca2','COM-TYPE56fcd71a:164f8874309:-7e91','IRRIGATED RICE','HYBRID SEEDS','HS','HYBRID SEEDS'),('COM-VAR1db0027d:164f8d3f47d:-7cc1','COM-TYPE56fcd71a:164f8874309:-7e91','IRRIGATED RICE','FARMERS SAVED SEEDS','FSS','FARMERS SAVED SEEDS'),('COM-VAR1db0027d:164f8d3f47d:-7ce0','COM-TYPE56fcd71a:164f8874309:-7e91','IRRIGATED RICE','GOOD SEEDS','GS','GOOD SEEDS'),('COM-VAR1db0027d:164f8d3f47d:-7cff','COM-TYPE56fcd71a:164f8874309:-7c0a','HIGH VALUE VEGETABLE','CAULIFLOWER','CF','CAULIFLOWER'),('COM-VAR1db0027d:164f8d3f47d:-7d1e','COM-TYPE56fcd71a:164f8874309:-7c0a','HIGH VALUE VEGETABLE','CHINESE CABBAGE','CC','CHINESE CABBAGE'),('COM-VAR1db0027d:164f8d3f47d:-7d53','COM-TYPE56fcd71a:164f8874309:-7c0a','HIGH VALUE VEGETABLE','LETTUCE','LETTUCE','LETTUCE'),('COM-VAR1db0027d:164f8d3f47d:-7d72','COM-TYPE56fcd71a:164f8874309:-7c0a','HIGH VALUE VEGETABLE','CABBAGE','CABBAGE','CABBAGE'),('COM-VAR1db0027d:164f8d3f47d:-7d93','COM-TYPE56fcd71a:164f8874309:-7c0a','HIGH VALUE VEGETABLE','BROCCOLI','BRCI','BROCCOLI'),('COM-VAR1db0027d:164f8d3f47d:-7db4','COM-TYPE56fcd71a:164f8874309:-7cd7','FRUIT','SQUASH','SQUASH','SQUASH'),('COM-VAR1db0027d:164f8d3f47d:-7dd5','COM-TYPE56fcd71a:164f8874309:-7cd7','FRUIT','WATERMELON','WM','WATERMELON'),('COM-VAR1db0027d:164f8d3f47d:-7dfd','COM-TYPE56fcd71a:164f8874309:-7cd7','FRUIT','SWEET PEPPER','SP','SWEET PEPPER'),('COM-VAR1db0027d:164f8d3f47d:-7e23','COM-TYPE56fcd71a:164f8874309:-7cd7','FRUIT','CUCUMBER','CU','CUCUMBER'),('COM-VAR1db0027d:164f8d3f47d:-7e4a','COM-TYPE56fcd71a:164f8874309:-7cd7','FRUIT','AMPALAYA','AMP','AMPALAYA'),('COM-VAR1db0027d:164f8d3f47d:-7e70','COM-TYPE56fcd71a:164f8874309:-7cd7','FRUIT','OKRA','OKRA','OKRA'),('COM-VAR1db0027d:164f8d3f47d:-7e96','COM-TYPE56fcd71a:164f8874309:-7cd7','FRUIT','ZUCCHINI','ZC','ZUCCHINI'),('COM-VAR1db0027d:164f8d3f47d:-7ebc','COM-TYPE56fcd71a:164f8874309:-7cd7','FRUIT','SAYOTE','SAYOTE','SAYOTE'),('COM-VAR1db0027d:164f8d3f47d:-7ef6','COM-TYPE56fcd71a:164f8874309:-7cd7','FRUIT','EGGPLANT','EP','EGGPLANT'),('COM-VAR1db0027d:164f8d3f47d:-7f1c','COM-TYPE56fcd71a:164f8874309:-7cd7','FRUIT','PATOLA','PP','PATOLA'),('COM-VAR1db0027d:164f8d3f47d:-7f47','COM-TYPE56fcd71a:164f8874309:-7cd7','FRUIT','TOMATO','TM','TOMATO'),('COM-VAR1db0027d:164f8d3f47d:-7f7c','COM-TYPE706ef02d:164f8808486:-7f98','BANANA','CARDAVA','CAR','CARDAVA'),('COM-VAR1db0027d:164f8d3f47d:-7fa6','COM-TYPE706ef02d:164f8808486:-7f98','BANANA','TUNDAN','TUND','TUNDAN'),('COM-VAR1db0027d:164f8d3f47d:-7fd2','COM-TYPE706ef02d:164f8808486:-7f98','BANANA','LAKATAN','LAKA','LAKATAN');

/*Table structure for table `facility` */

DROP TABLE IF EXISTS `facility`;

CREATE TABLE `facility` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `facility` */

insert  into `facility`(`objid`,`name`,`code`,`description`) values ('FAL-152aa30c:1650d3b42c4:-7f0d','WATER PUMP','WP','WATER PUMP'),('FAL-152aa30c:1650d3b42c4:-7f18','WAREHOUSE','WH','WAREHOUSE'),('FAL-152aa30c:1650d3b42c4:-7f23','TRACTOR','TR','TRACTOR'),('FAL-152aa30c:1650d3b42c4:-7f2e','RICE THRESHER','RT','RICE THRESHER'),('FAL-152aa30c:1650d3b42c4:-7f39','RICE MILL','RM','RICE MILL'),('FAL-152aa30c:1650d3b42c4:-7f44','PLOW','PLO','PLOW'),('FAL-152aa30c:1650d3b42c4:-7f4f','PALAY SHED','PS','PALAY SHED'),('FAL-152aa30c:1650d3b42c4:-7f5a','MUDBOAT','MB','MUDBOAT'),('FAL-152aa30c:1650d3b42c4:-7f65','MPDP','MPDP','MPDP'),('FAL-152aa30c:1650d3b42c4:-7f70','MECHANICAL DRYER','MD','MECHANICAL DRYER'),('FAL-152aa30c:1650d3b42c4:-7f7b','KULIGLIG','KG','KULIGLIG'),('FAL-152aa30c:1650d3b42c4:-7f86','GRAIN SHELTER','GS','GRAIN SHELTER'),('FAL-152aa30c:1650d3b42c4:-7f91','CORN SHELTER','CS','CORN SHELTER'),('FAL-152aa30c:1650d3b42c4:-7f9c','CORN MILL','CM','CORN MILL'),('FAL-152aa30c:1650d3b42c4:-7fa7','COLLAPSIBLE DRYER','CD','COLLAPSIBLE DRYER'),('FAL-152aa30c:1650d3b42c4:-7fb2','COFFEE DEHULLIER','CD','COFFEE DEHULLIER'),('FAL-152aa30c:1650d3b42c4:-7fbd','CASSAVA GRATER','CGR','CASSAVA GRATER'),('FAL-152aa30c:1650d3b42c4:-7fc8','CASSAVA GRANULATOR','CG','CASSAVA GRANULATOR'),('FAL-152aa30c:1650d3b42c4:-7fd3','CASSAVA CHIPPER','CC','CASSAVA CHIPPER');

/*Table structure for table `farmer_commodity` */

DROP TABLE IF EXISTS `farmer_commodity`;

CREATE TABLE `farmer_commodity` (
  `objid` varchar(50) NOT NULL,
  `location_id` varchar(50) DEFAULT NULL,
  `variety_objid` varchar(50) DEFAULT NULL,
  `commodity` varchar(100) DEFAULT NULL,
  `area` varchar(200) DEFAULT NULL,
  `commodity_start` date DEFAULT NULL,
  `commodity_end` date DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `location_id` (`location_id`),
  KEY `variet_objid` (`variety_objid`),
  CONSTRAINT `farmer_commodity_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `pagrifarmer_location` (`objid`),
  CONSTRAINT `farmer_commodity_ibfk_2` FOREIGN KEY (`variety_objid`) REFERENCES `commodity_variety` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `farmer_commodity` */

/*Table structure for table `farmer_livestock` */

DROP TABLE IF EXISTS `farmer_livestock`;

CREATE TABLE `farmer_livestock` (
  `objid` varchar(50) NOT NULL,
  `location_id` varchar(50) DEFAULT NULL,
  `breed_objid` varchar(100) DEFAULT NULL,
  `livestock` varchar(100) DEFAULT NULL,
  `seeding` date DEFAULT NULL,
  `harvesting` date DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `location_id` (`location_id`),
  KEY `breed_objid` (`breed_objid`),
  CONSTRAINT `farmer_livestock_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `pagrifarmer_location` (`objid`),
  CONSTRAINT `farmer_livestock_ibfk_2` FOREIGN KEY (`breed_objid`) REFERENCES `livestock_breed` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `farmer_livestock` */

/*Table structure for table `livestock_breed` */

DROP TABLE IF EXISTS `livestock_breed`;

CREATE TABLE `livestock_breed` (
  `objid` varchar(50) NOT NULL,
  `species_objid` varchar(50) DEFAULT NULL,
  `species_name` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `species_objid` (`species_objid`),
  CONSTRAINT `livestock_breed_ibfk_1` FOREIGN KEY (`species_objid`) REFERENCES `livestock_species` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `livestock_breed` */

insert  into `livestock_breed`(`objid`,`species_objid`,`species_name`,`name`,`code`,`description`) values ('LIV-54c8a6b0:16508f38966:-7cb8','COM-3107ced3:164fe21087f:-7f77','GOAT','ALPINE','ALPINE','ALPINE'),('LIV-54c8a6b0:16508f38966:-7cee','COM-3107ced3:164fe21087f:-7f84','SHEEP','MERINO','MERINO','MERINO'),('LIV-54c8a6b0:16508f38966:-7d13','COM-3107ced3:164fe21087f:-7fb8','SWINE','PIETRAIN','PIETRAIN','PIETRAIN'),('LIV-54c8a6b0:16508f38966:-7d4e','COM-3107ced3:164fe21087f:-7fb8','SWINE','HAMPSHIRE','HAMPSHIRE','HAMPSHIRE'),('LIV-54c8a6b0:16508f38966:-7d6d','COM-3107ced3:164fe21087f:-7fb8','SWINE','BERKSHIRE','BERKSHIRE','BERKSHIRE'),('LIV-54c8a6b0:16508f38966:-7d8c','COM-3107ced3:164fe21087f:-7fb8','SWINE','LARGE WHITE','LW','LARGE WHITE'),('LIV-54c8a6b0:16508f38966:-7db1','COM-3107ced3:164fe21087f:-7f91','CATTLE','STEER','STEER','STEER'),('LIV-54c8a6b0:16508f38966:-7dd0','COM-3107ced3:164fe21087f:-7f91','CATTLE','BULL','BULL','BULL'),('LIV-54c8a6b0:16508f38966:-7def','COM-3107ced3:164fe21087f:-7f91','CATTLE','COW','COW','COW'),('LIV-54c8a6b0:16508f38966:-7e0e','COM-3107ced3:164fe21087f:-7fc5','CARABAO','ALBINO','ALBINO','ALBINO'),('LIV-54c8a6b0:16508f38966:-7e2d','COM-3107ced3:164fe21087f:-7fc5','CARABAO','WATER BUFFALO','WB','WATER BUFFALO'),('LIV-54c8a6b0:16508f38966:-7e50','COM-3107ced3:164fe21087f:-7fab','HORSE','LIGHT HORSE','LH','LIGHT HORSE'),('LIV-54c8a6b0:16508f38966:-7e6f','COM-3107ced3:164fe21087f:-7fab','HORSE','STALLION','STALLION','STALLION'),('LIV-54c8a6b0:16508f38966:-7e94','COM-3107ced3:164fe21087f:-7fab','HORSE','PONY','PONY','PONY'),('LIV-54c8a6b0:16508f38966:-7eb4','COM-3107ced3:164fe21087f:-7f6a','DOG','CANINE','CANINE','CANINE'),('LIV-54c8a6b0:16508f38966:-7ed3','COM-3107ced3:164fe21087f:-7f6a','DOG','ASPINE','ASPINE','ASPINE'),('LIV-54c8a6b0:16508f38966:-7f06','COM-3107ced3:164fe21087f:-7fd2','CAT','FELINE','FELINE','FELINE'),('LIV-54c8a6b0:16508f38966:-7f25','COM-3107ced3:164fe21087f:-7f9e','POULTRY','CHICKEN','CHK','CHICKEN'),('LIV-54c8a6b0:16508f38966:-7f46','COM-3107ced3:164fe21087f:-7f9e','POULTRY','DUCK','DCK','DUCK'),('LIV-54c8a6b0:16508f38966:-7f67','COM-3107ced3:164fe21087f:-7f9e','POULTRY','GOOSE','GSE','GOOSE'),('LIV-54c8a6b0:16508f38966:-7f88','COM-3107ced3:164fe21087f:-7f9e','POULTRY','TURKEY','TKY','TURKEY'),('LIV-54c8a6b0:16508f38966:-7fad','COM-3107ced3:164fe21087f:-7f9e','POULTRY','QUAIL','QUA','QUAIL');

/*Table structure for table `livestock_species` */

DROP TABLE IF EXISTS `livestock_species`;

CREATE TABLE `livestock_species` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `unit` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `livestock_species` */

insert  into `livestock_species`(`objid`,`name`,`code`,`description`,`unit`) values ('COM-3107ced3:164fe21087f:-7f6a','DOG','DOG','DOG','HEADS'),('COM-3107ced3:164fe21087f:-7f77','GOAT','GOAT','GOAT','HEADS'),('COM-3107ced3:164fe21087f:-7f84','SHEEP','SHEEP','SHEEP','HEADS'),('COM-3107ced3:164fe21087f:-7f91','CATTLE','CATTLE','CATTLE','HEADS'),('COM-3107ced3:164fe21087f:-7f9e','POULTRY','POULTRY','POULTRY','HEADS'),('COM-3107ced3:164fe21087f:-7fab','HORSE','HORSE','HORSE','HEADS'),('COM-3107ced3:164fe21087f:-7fb8','SWINE','SW','SWINE','HEADS'),('COM-3107ced3:164fe21087f:-7fc5','CARABAO','CARABAO','CARABAO','HEADS'),('COM-3107ced3:164fe21087f:-7fd2','CAT','CAT','CAT','HEADS');

/*Table structure for table `pagrifarmer_facility` */

DROP TABLE IF EXISTS `pagrifarmer_facility`;

CREATE TABLE `pagrifarmer_facility` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `faclity_objid` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `facility_number` int(20) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `parentid` (`parentid`),
  KEY `faclity_objid` (`faclity_objid`),
  CONSTRAINT `pagrifarmer_facility_ibfk_1` FOREIGN KEY (`parentid`) REFERENCES `agri_farmerprofile` (`objid`),
  CONSTRAINT `pagrifarmer_facility_ibfk_2` FOREIGN KEY (`faclity_objid`) REFERENCES `facility` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pagrifarmer_facility` */

/*Table structure for table `pagrifarmer_location` */

DROP TABLE IF EXISTS `pagrifarmer_location`;

CREATE TABLE `pagrifarmer_location` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `area` varchar(200) DEFAULT NULL,
  `pin` varchar(100) DEFAULT NULL,
  `mode_acquisition` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `parentid` (`parentid`),
  CONSTRAINT `pagrifarmer_location_ibfk_1` FOREIGN KEY (`parentid`) REFERENCES `agri_farmerprofile` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pagrifarmer_location` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
