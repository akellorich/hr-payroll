/*
SQLyog Enterprise v13.1.1 (64 bit)
MySQL - 10.4.27-MariaDB : Database - hrpayroll
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hrpayroll` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `hrpayroll`;

/*Table structure for table `audittrail` */

DROP TABLE IF EXISTS `audittrail`;

CREATE TABLE `audittrail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `operation` varchar(50) DEFAULT NULL,
  `narration` varchar(5000) DEFAULT NULL,
  `platform` varchar(1000) DEFAULT NULL,
  `originalvalues` mediumtext DEFAULT NULL,
  `updatedvalues` mediumtext DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10657 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `audittrail` */

insert  into `audittrail`(`id`,`timestamp`,`userid`,`operation`,`narration`,`platform`,`originalvalues`,`updatedvalues`,`branchid`) values 
(10633,'2024-12-29 13:05:36',5,'insert','Created new shift id:1 name:Day Shift type:day','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10634,'2024-12-29 13:56:01',5,'insert','Created new shift id:2 name:Day Shift type:day','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10635,'2024-12-29 14:00:43',5,'insert','Created new shift id:3 name:Day Shift type:day','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10636,'2024-12-29 14:02:05',5,'insert','Created new shift id:4 name:Day Shift type:day','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10637,'2024-12-29 14:04:13',5,'insert','Created new shift id:5 name:Day Shift type:day','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10638,'2024-12-29 14:06:44',5,'insert','Created new shift id:6 name:Day Shift type:day','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10639,'2024-12-29 14:08:53',5,'insert','Created new shift id:7 name:Day Shift type:day','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10640,'2024-12-29 14:08:53',5,'insert','Created shift detail for 7 - Day Shift, shift type day for weekday Monday','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10641,'2024-12-29 14:08:53',5,'insert','Created shift detail for 7 - Day Shift, shift type day for weekday Tuesday','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10642,'2024-12-29 14:08:53',5,'insert','Created shift detail for 7 - Day Shift, shift type day for weekday Wednesday','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10643,'2024-12-29 14:08:53',5,'insert','Created shift detail for 7 - Day Shift, shift type day for weekday Thursday','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10644,'2024-12-29 14:08:53',5,'insert','Created shift detail for 7 - Day Shift, shift type day for weekday Friday','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10645,'2024-12-29 14:08:53',5,'insert','Created shift detail for 7 - Day Shift, shift type day for weekday Saturday','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10646,'2024-12-29 14:08:53',5,'insert','Created shift detail for 7 - Day Shift, shift type day for weekday Sunday','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10647,'2024-12-29 14:15:05',5,'insert','Created new shift id:8 name:Night Shift type:night','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10648,'2024-12-29 14:18:26',5,'insert','Created new shift id:9 name:Night Shift type:night','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10649,'2024-12-29 14:18:26',5,'insert','Created shift detail for 9 - Night Shift, shift type night for weekday Monday','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10650,'2024-12-29 14:18:26',5,'insert','Created shift detail for 9 - Night Shift, shift type night for weekday Tuesday','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10651,'2024-12-29 14:18:26',5,'insert','Created shift detail for 9 - Night Shift, shift type night for weekday Wednesday','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10652,'2024-12-29 14:18:26',5,'insert','Created shift detail for 9 - Night Shift, shift type night for weekday Thursday','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10653,'2024-12-29 14:18:26',5,'insert','Created shift detail for 9 - Night Shift, shift type night for weekday Friday','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10654,'2024-12-29 14:18:26',5,'insert','Created shift detail for 9 - Night Shift, shift type night for weekday Saturday','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10655,'2024-12-29 14:18:26',5,'insert','Created shift detail for 9 - Night Shift, shift type night for weekday Sunday','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','','',NULL),
(10656,'2024-12-30 08:31:07',5,'update','Updated employee details for id :1 staff no:NT0001 names:Richard Onyango Akelo','{\"browser\":\"Chrome\",\"browser_version\":\"131.0.0.0\",\"os_platform\":\"windows\",\"device\":\"Desktop\"}','{\"employeeid\": 1, \"staffno\": \"NT0001\", \"firstname\": \"Richard\", \"middlename\": \"Onyango\", \"lastname\": \"Akelo\", \"termid\": 4, \"categoryid\": 2, \"departmentid\": 10, \"religionid\": 1, \"salutationid\": 1, \"iddocumentid\": 1, \"iddocreferenceno\": \"23657524\", \"iddocexpirydate\": \"0000-00-00\", \"dateofbirth\": \"1983-01-11\", \"gender\": \"male\", \"pinno\": \"A00389875\", \"nssfno\": \"7487854\", \"nhifno\": \"N9879347\", \"disabled\": 0, \"disabilitytype\": \"none\", \"disabilitydescription\": \"\", \"disabilitycertificateno\": \"\", \"onpayroll\": 0, \"fixedpaye\": 0, \"status\": \"active\", \"positionid\": 6, \"jobgroupid\": 10, \"notchid\": 8, \"bankbranchid\": 3, \"bankaccountnumber\": \"0250190497310\", \"employmentdate\": \"2009-06-17\", \"separationdate\": null, \"separationreason\": null, \"physicaladdress\": \"Kandisi, Ongata Rongai, Opp SGR\", \"postaladdress\": \"52428\", \"town\": \"Nairobi\", \"postalcode\": \"00200\", \"mobile\": \"0727709772\", \"emailaddress\": \"akellorich@gmail.com\", \"alternativemobile\": \"\", \"alternativeemailaddress\": \"\", \"dateadded\": \"2024-06-15 13:32:58\", \"addedby\": 5}','{\"employeeid\": 1, \"staffno\": \"NT0001\", \"firstname\": \"Richard\", \"middlename\": \"Onyango\", \"lastname\": \"Akelo\", \"termid\": 5, \"categoryid\": 2, \"departmentid\": 10, \"religionid\": 1, \"salutationid\": 1, \"iddocumentid\": 1, \"iddocreferenceno\": \"23657524\", \"iddocexpirydate\": \"0000-00-00\", \"dateofbirth\": \"1983-01-11\", \"gender\": \"male\", \"pinno\": \"A00389875\", \"nssfno\": \"7487854\", \"nhifno\": \"N9879347\", \"disabled\": 0, \"disabilitytype\": \"none\", \"disabilitydescription\": \"\", \"disabilitycertificateno\": \"\", \"onpayroll\": 0, \"fixedpaye\": 0, \"status\": \"active\", \"positionid\": 6, \"jobgroupid\": 10, \"notchid\": 8, \"bankbranchid\": 3, \"bankaccountnumber\": \"0250190497310\", \"employmentdate\": \"2009-06-17\", \"separationdate\": null, \"separationreason\": null, \"physicaladdress\": \"Kandisi, Ongata Rongai, Opp SGR\", \"postaladdress\": \"52428\", \"town\": \"Nairobi\", \"postalcode\": \"00200\", \"mobile\": \"0727709772\", \"emailaddress\": \"akellorich@gmail.com\", \"alternativemobile\": \"\", \"alternativeemailaddress\": \"\", \"dateadded\": \"2024-06-15 13:32:58\", \"addedby\": 5}',NULL);

/*Table structure for table `bankbranches` */

DROP TABLE IF EXISTS `bankbranches`;

CREATE TABLE `bankbranches` (
  `branchid` int(11) NOT NULL AUTO_INCREMENT,
  `bankid` int(11) DEFAULT NULL,
  `branchcode` varchar(50) DEFAULT NULL,
  `branchname` varchar(50) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`branchid`),
  KEY `branchid` (`branchid`)
) ENGINE=InnoDB AUTO_INCREMENT=1989 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `bankbranches` */

insert  into `bankbranches`(`branchid`,`bankid`,`branchcode`,`branchname`,`dateadded`,`addedby`,`datedeleted`,`deletedby`,`deleted`) values 
(1,1,'01340','Karen Waterfront Platinum','2024-05-23 19:26:33',5,NULL,NULL,0),
(2,1,'01341','KCB Ngong Branch','2024-05-23 19:27:05',5,NULL,NULL,0),
(3,1,'01325','Garden City Mall','2024-05-23 19:27:26',5,NULL,NULL,0),
(4,1,'01TEST','Test Branch','2024-05-23 19:29:08',5,'2024-05-23 19:38:24',5,1),
(5,7,'012003','Harambee Avenue','2024-08-09 13:47:33',5,NULL,NULL,0),
(6,1,'001340','Karen Waterfront Platinum','2024-07-31 15:12:20',5,NULL,NULL,0),
(7,1,'001341','KCB Ngong Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(8,1,'001325','Garden City','2024-07-31 15:12:20',5,NULL,NULL,0),
(9,1,'001326','JKIA','2024-07-31 15:12:20',5,NULL,NULL,0),
(10,1,'001327','Makutano','2024-07-31 15:12:20',5,NULL,NULL,0),
(11,1,'001330','KCB NextGen','2024-07-31 15:12:20',5,NULL,NULL,0),
(12,1,'001331','KCB Mogotio','2024-07-31 15:12:20',5,NULL,NULL,0),
(13,1,'001329','Two Rivers','2024-07-31 15:12:20',5,NULL,NULL,0),
(14,1,'001332','KCB Upperhill Platinum','2024-07-31 15:12:20',5,NULL,NULL,0),
(15,1,'001337','KCB Kilimani Platinum','2024-07-31 15:12:20',5,NULL,NULL,0),
(16,1,'001339','KCB Utawala','2024-07-31 15:12:20',5,NULL,NULL,0),
(17,1,'001302','Diaspora','2024-07-31 15:12:20',5,NULL,NULL,0),
(18,1,'001303','Kisii West','2024-07-31 15:12:20',5,NULL,NULL,0),
(19,1,'001304','Mbita','2024-07-31 15:12:20',5,NULL,NULL,0),
(20,1,'001305','Sori','2024-07-31 15:12:20',5,NULL,NULL,0),
(21,1,'001306','Hurlingham','2024-07-31 15:12:20',5,NULL,NULL,0),
(22,1,'001307','Kibera','2024-07-31 15:12:20',5,NULL,NULL,0),
(23,1,'001308','Thika Road Mall Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(24,1,'001309','Kasarani Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(25,1,'001310','KCB Maasai Mara','2024-07-31 15:12:20',5,NULL,NULL,0),
(26,1,'001311','KCB Kabartonjo','2024-07-31 15:12:20',5,NULL,NULL,0),
(27,1,'001312','KCB Eldoret East','2024-07-31 15:12:20',5,NULL,NULL,0),
(28,1,'001313','Kikim','2024-07-31 15:12:20',5,NULL,NULL,0),
(29,1,'001314','KCB JKUAT','2024-07-31 15:12:20',5,NULL,NULL,0),
(30,1,'001315','KCB Changamwe','2024-07-31 15:12:20',5,NULL,NULL,0),
(31,1,'001316','KCB Makongeni','2024-07-31 15:12:20',5,NULL,NULL,0),
(32,1,'001317','KCB Syokimau','2024-07-31 15:12:20',5,NULL,NULL,0),
(33,1,'001318','KCB Moi Referral Hospital','2024-07-31 15:12:20',5,NULL,NULL,0),
(34,1,'001319','KCB Kitale Advantage','2024-07-31 15:12:20',5,NULL,NULL,0),
(35,1,'001320','KCB Lavington','2024-07-31 15:12:20',5,NULL,NULL,0),
(36,1,'001322','KCB Riverside Advantage','2024-07-31 15:12:20',5,NULL,NULL,0),
(37,1,'001323','KCB Gigiri Square','2024-07-31 15:12:20',5,NULL,NULL,0),
(38,1,'001324','Kayole','2024-07-31 15:12:20',5,NULL,NULL,0),
(39,1,'001214','Gatundu','2024-07-31 15:12:20',5,NULL,NULL,0),
(40,1,'001215','Emali','2024-07-31 15:12:20',5,NULL,NULL,0),
(41,1,'001216','Isiolo','2024-07-31 15:12:20',5,NULL,NULL,0),
(42,1,'001217','KCB Flamingo','2024-07-31 15:12:20',5,NULL,NULL,0),
(43,1,'001218','Njoro','2024-07-31 15:12:20',5,NULL,NULL,0),
(44,1,'001219','Mutomo','2024-07-31 15:12:20',5,NULL,NULL,0),
(45,1,'001220','Mariakani','2024-07-31 15:12:20',5,NULL,NULL,0),
(46,1,'001221','Mpeketoni','2024-07-31 15:12:20',5,NULL,NULL,0),
(47,1,'001222','Mtitu Andei','2024-07-31 15:12:20',5,NULL,NULL,0),
(48,1,'001223','Mtwapa','2024-07-31 15:12:20',5,NULL,NULL,0),
(49,1,'001224','Taveta','2024-07-31 15:12:20',5,NULL,NULL,0),
(50,1,'001225','Kengeleni','2024-07-31 15:12:20',5,NULL,NULL,0),
(51,1,'001226','Garsen','2024-07-31 15:12:20',5,NULL,NULL,0),
(52,1,'001227','Watamu','2024-07-31 15:12:20',5,NULL,NULL,0),
(53,1,'001228','Bondo','2024-07-31 15:12:20',5,NULL,NULL,0),
(54,1,'001229','Busia','2024-07-31 15:12:20',5,NULL,NULL,0),
(55,1,'001230','Homa Bay','2024-07-31 15:12:20',5,NULL,NULL,0),
(56,1,'001231','Kapsowar','2024-07-31 15:12:20',5,NULL,NULL,0),
(57,1,'001232','Kehancha','2024-07-31 15:12:20',5,NULL,NULL,0),
(58,1,'001233','Keroka','2024-07-31 15:12:20',5,NULL,NULL,0),
(59,1,'001234','Kilgoris','2024-07-31 15:12:20',5,NULL,NULL,0),
(60,1,'001235','Kimilili','2024-07-31 15:12:20',5,NULL,NULL,0),
(61,1,'001236','Litein','2024-07-31 15:12:20',5,NULL,NULL,0),
(62,1,'001237','Londiani Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(63,1,'001238','Luanda','2024-07-31 15:12:20',5,NULL,NULL,0),
(64,1,'001239','Malaba','2024-07-31 15:12:20',5,NULL,NULL,0),
(65,1,'001240','Muhoroni','2024-07-31 15:12:20',5,NULL,NULL,0),
(66,1,'001241','Oyugis','2024-07-31 15:12:20',5,NULL,NULL,0),
(67,1,'001242','Ugunja','2024-07-31 15:12:20',5,NULL,NULL,0),
(68,1,'001243','United Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(69,1,'001244','Serem','2024-07-31 15:12:20',5,NULL,NULL,0),
(70,1,'001245','Sondu','2024-07-31 15:12:20',5,NULL,NULL,0),
(71,1,'001246','Kisumu West','2024-07-31 15:12:20',5,NULL,NULL,0),
(72,1,'001247','Marigat','2024-07-31 15:12:20',5,NULL,NULL,0),
(73,1,'001248','Mois Bridge','2024-07-31 15:12:20',5,NULL,NULL,0),
(74,1,'001249','Mashariki','2024-07-31 15:12:20',5,NULL,NULL,0),
(75,1,'001250','Naro Moro','2024-07-31 15:12:20',5,NULL,NULL,0),
(76,1,'001251','Kiriaini','2024-07-31 15:12:20',5,NULL,NULL,0),
(77,1,'001252','Egerton University','2024-07-31 15:12:20',5,NULL,NULL,0),
(78,1,'001253','Maua','2024-07-31 15:12:20',5,NULL,NULL,0),
(79,1,'001254','Kawangare','2024-07-31 15:12:20',5,NULL,NULL,0),
(80,1,'001255','Kimathi','2024-07-31 15:12:20',5,NULL,NULL,0),
(81,1,'001256','Namanga','2024-07-31 15:12:20',5,NULL,NULL,0),
(82,1,'001288','Haile Selassie','2024-07-31 15:12:20',5,NULL,NULL,0),
(83,1,'001289','Salama House Mortgage Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(84,1,'001290','Garden Plaza','2024-07-31 15:12:20',5,NULL,NULL,0),
(85,1,'001291','Sarit Centre Mortgage Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(86,1,'001292','Cpc Bulk Corporate Cheques','2024-07-31 15:12:20',5,NULL,NULL,0),
(87,1,'001293','Trade Services','2024-07-31 15:12:20',5,NULL,NULL,0),
(88,1,'001295','Nairobi High Court','2024-07-31 15:12:20',5,NULL,NULL,0),
(89,1,'001296','Mombasa High Court','2024-07-31 15:12:20',5,NULL,NULL,0),
(90,1,'001297','Kisumu Airport','2024-07-31 15:12:20',5,NULL,NULL,0),
(91,1,'001298','Port Victoria','2024-07-31 15:12:20',5,NULL,NULL,0),
(92,1,'001300','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(93,1,'001301','Westgate Advantage','2024-07-31 15:12:20',5,NULL,NULL,0),
(94,1,'001287','Kisauni','2024-07-31 15:12:20',5,NULL,NULL,0),
(95,1,'001257','Gikomba','2024-07-31 15:12:20',5,NULL,NULL,0),
(96,1,'001258','Kwale','2024-07-31 15:12:20',5,NULL,NULL,0),
(97,1,'001259','Prestige Plaza','2024-07-31 15:12:20',5,NULL,NULL,0),
(98,1,'001260','Kariobangi','2024-07-31 15:12:20',5,NULL,NULL,0),
(99,1,'001263','Biashara Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(100,1,'001266','Ngara','2024-07-31 15:12:20',5,NULL,NULL,0),
(101,1,'001267','Kyuso','2024-07-31 15:12:20',5,NULL,NULL,0),
(102,1,'001270','Masii','2024-07-31 15:12:20',5,NULL,NULL,0),
(103,1,'001271','Menengai Crater','2024-07-31 15:12:20',5,NULL,NULL,0),
(104,1,'001272','Town Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(105,1,'001278','Makindu','2024-07-31 15:12:20',5,NULL,NULL,0),
(106,1,'001283','Rongo','2024-07-31 15:12:20',5,NULL,NULL,0),
(107,1,'001284','Isibania','2024-07-31 15:12:20',5,NULL,NULL,0),
(108,1,'001285','Kiserian','2024-07-31 15:12:20',5,NULL,NULL,0),
(109,1,'001286','Mwembe Tayari','2024-07-31 15:12:20',5,NULL,NULL,0),
(110,1,'001342','Imara Daima','2024-07-31 15:12:20',5,NULL,NULL,0),
(111,1,'001343','Takaba Town','2024-07-31 15:12:20',5,NULL,NULL,0),
(112,1,'001163','Eldama Ravine','2024-07-31 15:12:20',5,NULL,NULL,0),
(113,1,'001164','Kibwezi','2024-07-31 15:12:20',5,NULL,NULL,0),
(114,1,'001166','Kapsabet','2024-07-31 15:12:20',5,NULL,NULL,0),
(115,1,'001167','University Way','2024-07-31 15:12:20',5,NULL,NULL,0),
(116,1,'001168','KCB Eldoret West','2024-07-31 15:12:20',5,NULL,NULL,0),
(117,1,'001169','Garissa','2024-07-31 15:12:20',5,NULL,NULL,0),
(118,1,'001124','Mumias','2024-07-31 15:12:20',5,NULL,NULL,0),
(119,1,'001125','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(120,1,'001127','Moyale','2024-07-31 15:12:20',5,NULL,NULL,0),
(121,1,'001129','Kikuyu','2024-07-31 15:12:20',5,NULL,NULL,0),
(122,1,'001130','Tala','2024-07-31 15:12:20',5,NULL,NULL,0),
(123,1,'001131','Kajiado','2024-07-31 15:12:20',5,NULL,NULL,0),
(124,1,'001133','KCB Custody services','2024-07-31 15:12:20',5,NULL,NULL,0),
(125,1,'001134','Matuu','2024-07-31 15:12:20',5,NULL,NULL,0),
(126,1,'001135','Kitui','2024-07-31 15:12:20',5,NULL,NULL,0),
(127,1,'001136','Mvita','2024-07-31 15:12:20',5,NULL,NULL,0),
(128,1,'001137','Jogoo Rd Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(129,1,'001139','Card Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(130,1,'001140','Marsabit','2024-07-31 15:12:20',5,NULL,NULL,0),
(131,1,'001141','Sarit Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(132,1,'001142','Loitokitok','2024-07-31 15:12:20',5,NULL,NULL,0),
(133,1,'001143','Nandi Hills','2024-07-31 15:12:20',5,NULL,NULL,0),
(134,1,'001144','Lodwar','2024-07-31 15:12:20',5,NULL,NULL,0),
(135,1,'001145','Un Gigiri','2024-07-31 15:12:20',5,NULL,NULL,0),
(136,1,'001146','Hola','2024-07-31 15:12:20',5,NULL,NULL,0),
(137,1,'001147','Ruiru','2024-07-31 15:12:20',5,NULL,NULL,0),
(138,1,'001148','Mwingi','2024-07-31 15:12:20',5,NULL,NULL,0),
(139,1,'001149','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(140,1,'001150','Mandera','2024-07-31 15:12:20',5,NULL,NULL,0),
(141,1,'001151','Kapenguria','2024-07-31 15:12:20',5,NULL,NULL,0),
(142,1,'001152','Kabarnet','2024-07-31 15:12:20',5,NULL,NULL,0),
(143,1,'001153','Wajir','2024-07-31 15:12:20',5,NULL,NULL,0),
(144,1,'001154','Maralal','2024-07-31 15:12:20',5,NULL,NULL,0),
(145,1,'001155','Limuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(146,1,'001157','Ukunda','2024-07-31 15:12:20',5,NULL,NULL,0),
(147,1,'001158','Iten','2024-07-31 15:12:20',5,NULL,NULL,0),
(148,1,'001159','Gilgil','2024-07-31 15:12:20',5,NULL,NULL,0),
(149,1,'001161','Ongata Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(150,1,'001162','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(151,1,'001338','KCB Langata','2024-07-31 15:12:20',5,NULL,NULL,0),
(152,1,'001344','KCB Rumuruti Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(153,1,'001091','Eastleigh','2024-07-31 15:12:20',5,NULL,NULL,0),
(154,1,'001092','KCB CPC','2024-07-31 15:12:20',5,NULL,NULL,0),
(155,1,'001094','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(156,1,'001095','Wote','2024-07-31 15:12:20',5,NULL,NULL,0),
(157,1,'001096','Head Office Finance','2024-07-31 15:12:20',5,NULL,NULL,0),
(158,1,'001100','Moi Avenue Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(159,1,'001101','Kipande House','2024-07-31 15:12:20',5,NULL,NULL,0),
(160,1,'001102','Treasury Sq Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(161,1,'001103','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(162,1,'001104','Kicc','2024-07-31 15:12:20',5,NULL,NULL,0),
(163,1,'001105','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(164,1,'001106','Kericho','2024-07-31 15:12:20',5,NULL,NULL,0),
(165,1,'001107','Tom Mboya','2024-07-31 15:12:20',5,NULL,NULL,0),
(166,1,'001108','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(167,1,'001109','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(168,1,'001110','Kakamega','2024-07-31 15:12:20',5,NULL,NULL,0),
(169,1,'001111','Kilindini Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(170,1,'001112','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(171,1,'001113','Industrial Area Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(172,1,'001114','River Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(173,1,'001115','Muranga','2024-07-31 15:12:20',5,NULL,NULL,0),
(174,1,'001116','Embu','2024-07-31 15:12:20',5,NULL,NULL,0),
(175,1,'001117','Kangema','2024-07-31 15:12:20',5,NULL,NULL,0),
(176,1,'001119','Kiambu','2024-07-31 15:12:20',5,NULL,NULL,0),
(177,1,'001120','Karatina','2024-07-31 15:12:20',5,NULL,NULL,0),
(178,1,'001121','Siaya','2024-07-31 15:12:20',5,NULL,NULL,0),
(179,1,'001122','Nyahururu','2024-07-31 15:12:20',5,NULL,NULL,0),
(180,1,'001123','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(181,1,'001173','Lamu','2024-07-31 15:12:20',5,NULL,NULL,0),
(182,1,'001174','Kilifi','2024-07-31 15:12:20',5,NULL,NULL,0),
(183,1,'001175','Milimani','2024-07-31 15:12:20',5,NULL,NULL,0),
(184,1,'001176','Nyamira','2024-07-31 15:12:20',5,NULL,NULL,0),
(185,1,'001177','Mukuruweini','2024-07-31 15:12:20',5,NULL,NULL,0),
(186,1,'001180','Village Market','2024-07-31 15:12:20',5,NULL,NULL,0),
(187,1,'001181','Bomet','2024-07-31 15:12:20',5,NULL,NULL,0),
(188,1,'001183','Mbale','2024-07-31 15:12:20',5,NULL,NULL,0),
(189,1,'001184','Narok','2024-07-31 15:12:20',5,NULL,NULL,0),
(190,1,'001185','Othaya','2024-07-31 15:12:20',5,NULL,NULL,0),
(191,1,'001186','Voi','2024-07-31 15:12:20',5,NULL,NULL,0),
(192,1,'001188','Webuye','2024-07-31 15:12:20',5,NULL,NULL,0),
(193,1,'001189','Sotik','2024-07-31 15:12:20',5,NULL,NULL,0),
(194,1,'001190','Naivasha','2024-07-31 15:12:20',5,NULL,NULL,0),
(195,1,'001191','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(196,1,'001192','Migori','2024-07-31 15:12:20',5,NULL,NULL,0),
(197,1,'001193','Githunguri','2024-07-31 15:12:20',5,NULL,NULL,0),
(198,1,'001194','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(199,1,'001195','Kerugoya','2024-07-31 15:12:20',5,NULL,NULL,0),
(200,1,'001196','Chuka','2024-07-31 15:12:20',5,NULL,NULL,0),
(201,1,'001197','Bungoma','2024-07-31 15:12:20',5,NULL,NULL,0),
(202,1,'001198','Wundanyi','2024-07-31 15:12:20',5,NULL,NULL,0),
(203,1,'001199','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(204,1,'001201','Capital Hill','2024-07-31 15:12:20',5,NULL,NULL,0),
(205,1,'001202','Karen','2024-07-31 15:12:20',5,NULL,NULL,0),
(206,1,'001203','Lokichogio','2024-07-31 15:12:20',5,NULL,NULL,0),
(207,1,'001204','Gateway Msa Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(208,1,'001205','Buruburu','2024-07-31 15:12:20',5,NULL,NULL,0),
(209,1,'001206','Chogoria','2024-07-31 15:12:20',5,NULL,NULL,0),
(210,1,'001207','Kangare','2024-07-31 15:12:20',5,NULL,NULL,0),
(211,1,'001208','Kianyaga','2024-07-31 15:12:20',5,NULL,NULL,0),
(212,1,'001209','Nkubu','2024-07-31 15:12:20',5,NULL,NULL,0),
(213,1,'001210','Ol Kalou','2024-07-31 15:12:20',5,NULL,NULL,0),
(214,1,'001211','Makuyu','2024-07-31 15:12:20',5,NULL,NULL,0),
(215,1,'001212','Mwea','2024-07-31 15:12:20',5,NULL,NULL,0),
(216,1,'001213','Njambini','2024-07-31 15:12:20',5,NULL,NULL,0),
(217,1,'001333','Kakuma Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(218,1,'001334','KCB Parklands','2024-07-31 15:12:20',5,NULL,NULL,0),
(219,1,'001335','KCB Diani','2024-07-31 15:12:20',5,NULL,NULL,0),
(220,1,'001336','KCB Eldoret Advantage Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(221,2,'002000','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(222,2,'002001','Kericho','2024-07-31 15:12:20',5,NULL,NULL,0),
(223,2,'002002','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(224,2,'002003','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(225,2,'002004','Treasury Square','2024-07-31 15:12:20',5,NULL,NULL,0),
(226,2,'002005','Kilindini','2024-07-31 15:12:20',5,NULL,NULL,0),
(227,2,'002006','Kenyatta Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(228,2,'002008','Moi Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(229,2,'002009','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(230,2,'002010','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(231,2,'002011','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(232,2,'002012','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(233,2,'002015','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(234,2,'002016','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(235,2,'002017','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(236,2,'002019','Harambee Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(237,2,'002053','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(238,2,'002054','Kakamega','2024-07-31 15:12:20',5,NULL,NULL,0),
(239,2,'002064','Koinage','2024-07-31 15:12:20',5,NULL,NULL,0),
(240,2,'002071','Yaya Centre Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(241,2,'002072','Ruaraka','2024-07-31 15:12:20',5,NULL,NULL,0),
(242,2,'002073','Langata','2024-07-31 15:12:20',5,NULL,NULL,0),
(243,2,'002074','Makupa','2024-07-31 15:12:20',5,NULL,NULL,0),
(244,2,'002075','Karen','2024-07-31 15:12:20',5,NULL,NULL,0),
(245,2,'002076','Muthaiga','2024-07-31 15:12:20',5,NULL,NULL,0),
(246,2,'002078','C.o.u','2024-07-31 15:12:20',5,NULL,NULL,0),
(247,2,'002079','Ukay','2024-07-31 15:12:20',5,NULL,NULL,0),
(248,2,'002080','Two Rivers Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(249,2,'002081','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(250,2,'002082','Upper Hill Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(251,2,'002083','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(252,2,'002084','Chiromo','2024-07-31 15:12:20',5,NULL,NULL,0),
(253,2,'002085','Greenspan','2024-07-31 15:12:20',5,NULL,NULL,0),
(254,2,'002086','The T-Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(255,2,'002087','The Junction','2024-07-31 15:12:20',5,NULL,NULL,0),
(256,2,'002089','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(257,2,'002090','Bungoma','2024-07-31 15:12:20',5,NULL,NULL,0),
(258,2,'002091','Thika Road Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(259,2,'002092','UN Gigiri','2024-07-31 15:12:20',5,NULL,NULL,0),
(260,5,'003140','Two Rivers','2024-07-31 15:12:20',5,NULL,NULL,0),
(261,5,'003007','Kericho Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(262,5,'003008','Kisii Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(263,5,'003009','Kisumu Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(264,5,'003010','South C Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(265,5,'003011','Limuru Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(266,5,'003012','Malindi Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(267,5,'003013','Meru Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(268,5,'003014','Eastleigh Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(269,5,'003015','Kitui Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(270,5,'003016','Nkrumah Road Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(271,5,'003017','Garissa Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(272,5,'003018','Nyamira Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(273,5,'003019','Kilifi Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(274,5,'003020','Office Park Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(275,5,'003026','Kakamega Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(276,5,'003001','Head Office - Vpc','2024-07-31 15:12:20',5,NULL,NULL,0),
(277,5,'003002','Kapsabet Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(278,5,'003003','Eldoret Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(279,5,'003004','Embu Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(280,5,'003005','Murang A Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(281,5,'003006','Kapenguria Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(282,5,'003021','Barclaycard Operations','2024-07-31 15:12:20',5,NULL,NULL,0),
(283,5,'003022','Paymants And International Services','2024-07-31 15:12:20',5,NULL,NULL,0),
(284,5,'003023','Gilgil Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(285,5,'003024','Thika Road Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(286,5,'003049','Lavington Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(287,5,'003050','Tala','2024-07-31 15:12:20',5,NULL,NULL,0),
(288,5,'003051','Homa Bay Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(289,5,'003052','Ongata Rongai Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(290,5,'003053','Othaya Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(291,5,'003054','Voi Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(292,5,'003055','Muthaiga Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(293,5,'003056','Barclays Advisory And Reg. Services','2024-07-31 15:12:20',5,NULL,NULL,0),
(294,5,'003057','Githunguri Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(295,5,'003058','Webuye Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(296,5,'003059','Kasarani Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(297,5,'003060','Chuka Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(298,5,'003061','Nakumatt-westgate Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(299,5,'003062','Kabarnet Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(300,5,'003063','Kerugoya Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(301,5,'003064','Taveta Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(302,5,'003065','Karen Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(303,5,'003066','Wundanyi Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(304,5,'003067','Ruaraka Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(305,5,'003068','Kitengela Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(306,5,'003069','Wote Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(307,5,'003070','Enterprise Road Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(308,5,'003071','Nakumatt Meru Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(309,5,'003072','Juja Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(310,5,'003073','Westlands Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(311,5,'003074','Kikuyu Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(312,5,'003075','Moi Avenue-nairobi Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(313,5,'003076','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(314,5,'003077','Absa Towers Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(315,5,'003034','Kawangware','2024-07-31 15:12:20',5,NULL,NULL,0),
(316,5,'003035','Mbale','2024-07-31 15:12:20',5,NULL,NULL,0),
(317,5,'003036','Plaza Premier Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(318,5,'003037','River Road Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(319,5,'003038','Chomba House-river Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(320,5,'003039','Mumias Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(321,5,'003040','Machakos Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(322,5,'003041','Narok Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(323,5,'003042','Isiolo Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(324,5,'003043','Ngong Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(325,5,'003044','Maua Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(326,5,'003045','Hurlingham Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(327,5,'003046','Makupa Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(328,5,'003047','Development House Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(329,5,'003048','Bungoma','2024-07-31 15:12:20',5,NULL,NULL,0),
(330,5,'003027','Nakuru East','2024-07-31 15:12:20',5,NULL,NULL,0),
(331,5,'003028','Buruburu','2024-07-31 15:12:20',5,NULL,NULL,0),
(332,5,'003029','Bomet','2024-07-31 15:12:20',5,NULL,NULL,0),
(333,5,'003030','Nyeri Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(334,5,'003031','Thika Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(335,5,'003032','Port Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(336,5,'003033','Gikomba','2024-07-31 15:12:20',5,NULL,NULL,0),
(337,5,'003128','Bamburi Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(338,5,'003130','Harambee Ave - Premier Life Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(339,5,'003132','Kitale Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(340,5,'003139','Nyahururu Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(341,5,'003144','Treasury Operations','2024-07-31 15:12:20',5,NULL,NULL,0),
(342,5,'003145','Moi Avenue Mombasa -  Premier Life Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(343,5,'003151','Cash Monitoring Unit','2024-07-31 15:12:20',5,NULL,NULL,0),
(344,5,'003190','Nanyuki Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(345,5,'003206','Karatina Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(346,5,'003220','Mombasa Nyerere Ave -  Premier Life Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(347,5,'003273','Consumer Operations','2024-07-31 15:12:20',5,NULL,NULL,0),
(348,5,'003300','Finance Department','2024-07-31 15:12:20',5,NULL,NULL,0),
(349,5,'003337','Documents And Securities  Dsc','2024-07-31 15:12:20',5,NULL,NULL,0),
(350,5,'003340','Retail Credit Team','2024-07-31 15:12:20',5,NULL,NULL,0),
(351,5,'003354','Credit Operations','2024-07-31 15:12:20',5,NULL,NULL,0),
(352,5,'003400','Head office','2024-07-31 15:12:20',5,NULL,NULL,0),
(353,5,'003078','Kiriaini Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(354,5,'003079','Butere Road Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(355,5,'003080','Migori Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(356,5,'003081','Digo Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(357,5,'003082','Haile Selassie Avenue Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(358,5,'003083','Nairobi University Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(359,5,'003084','Bunyala Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(360,5,'003086','Nairobi West Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(361,5,'003087','Parklands','2024-07-31 15:12:20',5,NULL,NULL,0),
(362,5,'003088','Busia','2024-07-31 15:12:20',5,NULL,NULL,0),
(363,5,'003089','Pangani Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(364,5,'003090','Abc Premier Life Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(365,5,'003093','Kariobangi Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(366,5,'003094','Queensway House Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(367,5,'003095','Nakumatt Embakasi Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(368,5,'003096','Barclays Merchant Finance Ltd.','2024-07-31 15:12:20',5,NULL,NULL,0),
(369,5,'003097','Barclays Securities Services (k','2024-07-31 15:12:20',5,NULL,NULL,0),
(370,5,'003100','Diani Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(371,5,'003103','Nairobi J.k.i.a Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(372,5,'003105','Village Market - Premier Life Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(373,5,'003106','Sarit Centre - Premier Life Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(374,5,'003109','Yaya Centre- Premier Life Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(375,5,'003111','Naivasha Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(376,5,'003113','Market Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(377,5,'003114','Changamwe Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(378,5,'003117','Rahimtulla Trust Towers - Premier Life Center','2024-07-31 15:12:20',5,NULL,NULL,0),
(379,5,'003125','Nakuru West Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(380,6,'005000','Kenyatta Avenue , Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(381,6,'005001','Nkrumah Road , Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(382,6,'005002','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(383,6,'005003','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(384,6,'005005','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(385,8,'006017','Muthithi road','2024-07-31 15:12:20',5,NULL,NULL,0),
(386,8,'006000','Nairobi Main','2024-07-31 15:12:20',5,NULL,NULL,0),
(387,8,'006002','Digo Road, Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(388,8,'006004','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(389,8,'006005','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(390,8,'006006','Sarit Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(391,8,'006007','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(392,8,'006008','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(393,8,'006009','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(394,8,'006010','Kakamega','2024-07-31 15:12:20',5,NULL,NULL,0),
(395,8,'006011','Nyali Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(396,8,'006012','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(397,8,'006015','Diamond Plaza','2024-07-31 15:12:20',5,NULL,NULL,0),
(398,8,'006016','Mombasa Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(399,9,'007209','Mwembe Tayari','2024-07-31 15:12:20',5,NULL,NULL,0),
(400,9,'007208','Ruiru Eastern Bypass','2024-07-31 15:12:20',5,NULL,NULL,0),
(401,9,'007206','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(402,9,'007207','Karatina','2024-07-31 15:12:20',5,NULL,NULL,0),
(403,9,'007210','Kakamega','2024-07-31 15:12:20',5,NULL,NULL,0),
(404,9,'007033','River Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(405,9,'007034','Karen Hub','2024-07-31 15:12:20',5,NULL,NULL,0),
(406,9,'007211','Kericho','2024-07-31 15:12:20',5,NULL,NULL,0),
(407,9,'007213','Bungoma','2024-07-31 15:12:20',5,NULL,NULL,0),
(408,9,'007212','Embu','2024-07-31 15:12:20',5,NULL,NULL,0),
(409,9,'007216','Gikomba','2024-07-31 15:12:20',5,NULL,NULL,0),
(410,9,'007214','Ngong','2024-07-31 15:12:20',5,NULL,NULL,0),
(411,9,'007215','Kiambu','2024-07-31 15:12:20',5,NULL,NULL,0),
(412,9,'007217','Naivasha','2024-07-31 15:12:20',5,NULL,NULL,0),
(413,9,'007035','Garden City','2024-07-31 15:12:20',5,NULL,NULL,0),
(414,9,'007036','Two Rivers Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(415,9,'007101','City Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(416,9,'007102','NIC House','2024-07-31 15:12:20',5,NULL,NULL,0),
(417,9,'007103','Harbour House','2024-07-31 15:12:20',5,NULL,NULL,0),
(418,9,'007105','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(419,9,'007106','The Junction Br.','2024-07-31 15:12:20',5,NULL,NULL,0),
(420,9,'007107','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(421,9,'007110','Harambee','2024-07-31 15:12:20',5,NULL,NULL,0),
(422,9,'007111','Prestige-Ngong Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(423,9,'007112','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(424,9,'007113','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(425,9,'007114','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(426,9,'007118','Sameer Park','2024-07-31 15:12:20',5,NULL,NULL,0),
(427,9,'007119','Karen','2024-07-31 15:12:20',5,NULL,NULL,0),
(428,9,'007121','Taj Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(429,9,'007122','ABC','2024-07-31 15:12:20',5,NULL,NULL,0),
(430,9,'007123','Thika Road Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(431,9,'007124','Changamwe Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(432,9,'007125','Kenyatta Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(433,9,'007126','Riverside','2024-07-31 15:12:20',5,NULL,NULL,0),
(434,9,'007127','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(435,9,'007128','Lunga Lunga Square','2024-07-31 15:12:20',5,NULL,NULL,0),
(436,9,'007129','Kilimani','2024-07-31 15:12:20',5,NULL,NULL,0),
(437,9,'007130','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(438,9,'007146','Kilifi','2024-07-31 15:12:20',5,NULL,NULL,0),
(439,9,'007147','Watamu','2024-07-31 15:12:20',5,NULL,NULL,0),
(440,9,'007148','Diani','2024-07-31 15:12:20',5,NULL,NULL,0),
(441,9,'007149','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(442,9,'007200','Narok Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(443,9,'007201','Lavington Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(444,9,'007500','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(445,9,'007501','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(446,9,'007502','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(447,9,'007503','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(448,9,'007600','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(449,9,'007131','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(450,9,'007132','KMA Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(451,9,'007133','Buru Buru','2024-07-31 15:12:20',5,NULL,NULL,0),
(452,9,'007134','CPA Centre, Ruaraka','2024-07-31 15:12:20',5,NULL,NULL,0),
(453,9,'007135','Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(454,9,'007141','Rosslyn Riviera','2024-07-31 15:12:20',5,NULL,NULL,0),
(455,9,'007142','Ciata Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(456,9,'007143','Parklands','2024-07-31 15:12:20',5,NULL,NULL,0),
(457,9,'007144','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(458,9,'007145','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(459,9,'007005','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(460,9,'007006','Mamlaka','2024-07-31 15:12:20',5,NULL,NULL,0),
(461,9,'007007','Village Market','2024-07-31 15:12:20',5,NULL,NULL,0),
(462,9,'007008','Cargo Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(463,9,'007009','Park Side','2024-07-31 15:12:20',5,NULL,NULL,0),
(464,9,'007026','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(465,9,'007027','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(466,9,'007028','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(467,9,'007029','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(468,9,'007030','Yaya Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(469,9,'007031','Lavington','2024-07-31 15:12:20',5,NULL,NULL,0),
(470,9,'007032','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(471,9,'007016','Galleria Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(472,9,'007017','Junction','2024-07-31 15:12:20',5,NULL,NULL,0),
(473,9,'007018','Thika Road Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(474,9,'007019','Greenspan Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(475,9,'007020','Moi Avenue Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(476,9,'007021','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(477,9,'007022','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(478,9,'007023','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(479,9,'007024','Diani','2024-07-31 15:12:20',5,NULL,NULL,0),
(480,9,'007025','Changamwe','2024-07-31 15:12:20',5,NULL,NULL,0),
(481,9,'007219','Busia','2024-07-31 15:12:20',5,NULL,NULL,0),
(482,9,'007223','Kenol Town','2024-07-31 15:12:20',5,NULL,NULL,0),
(483,9,'007222','Utawala Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(484,9,'007221','Eastleigh Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(485,9,'007033','River Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(486,9,'007218','Muranga','2024-07-31 15:12:20',5,NULL,NULL,0),
(487,9,'007224','Kahawa Sukari','2024-07-31 15:12:20',5,NULL,NULL,0),
(488,9,'007220','Chwele','2024-07-31 15:12:20',5,NULL,NULL,0),
(489,9,'007226','Migori Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(490,9,'007225','Wote Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(491,9,'007115','Galleria (Bomas)','2024-07-31 15:12:20',5,NULL,NULL,0),
(492,9,'007116','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(493,9,'007117','Village Market','2024-07-31 15:12:20',5,NULL,NULL,0),
(494,9,'007000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(495,9,'007001','Upper Hill','2024-07-31 15:12:20',5,NULL,NULL,0),
(496,9,'007002','Wabera Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(497,9,'007003','Mama Ngina','2024-07-31 15:12:20',5,NULL,NULL,0),
(498,9,'007004','Westlands Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(499,9,'007104','Head Office-Fargo','2024-07-31 15:12:20',5,NULL,NULL,0),
(500,9,'007108','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(501,9,'007109','Nkrumah Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(502,9,'007204','Sarit Centre Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(503,10,'009008','Kisii Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(504,10,'009000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(505,10,'009001','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(506,10,'009002','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(507,10,'009003','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(508,10,'009004','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(509,10,'009006','Nakuru Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(510,11,'010021','Two Rivers','2024-07-31 15:12:20',5,NULL,NULL,0),
(511,11,'010023','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(512,11,'010024','Lavington Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(513,11,'010022','UAP Towers','2024-07-31 15:12:20',5,NULL,NULL,0),
(514,11,'010000','H/o Riverside','2024-07-31 15:12:20',5,NULL,NULL,0),
(515,11,'010001','Kenindia','2024-07-31 15:12:20',5,NULL,NULL,0),
(516,11,'010002','Biashara','2024-07-31 15:12:20',5,NULL,NULL,0),
(517,11,'010003','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(518,11,'010004','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(519,11,'010005','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(520,11,'010006','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(521,11,'010007','Parklands','2024-07-31 15:12:20',5,NULL,NULL,0),
(522,11,'010008','Riverside Drive','2024-07-31 15:12:20',5,NULL,NULL,0),
(523,11,'010009','Card Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(524,11,'010010','Hurlingham','2024-07-31 15:12:20',5,NULL,NULL,0),
(525,11,'010011','Capital Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(526,11,'010012','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(527,11,'010014','Kamukunji','2024-07-31 15:12:20',5,NULL,NULL,0),
(528,11,'010015','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(529,11,'010016','Karen','2024-07-31 15:12:20',5,NULL,NULL,0),
(530,11,'010017','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(531,11,'010020','Garden City','2024-07-31 15:12:20',5,NULL,NULL,0),
(532,11,'010019','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(533,11,'010027','Baba Dogo','2024-07-31 15:12:20',5,NULL,NULL,0),
(534,11,'010025','Village Market','2024-07-31 15:12:20',5,NULL,NULL,0),
(535,11,'010026','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(536,12,'011170','Kamulu Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(537,12,'011156','Ridgeways Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(538,12,'011157','Two Rivers Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(539,12,'011158','JKIA','2024-07-31 15:12:20',5,NULL,NULL,0),
(540,12,'011154','Gikomba Area 42','2024-07-31 15:12:20',5,NULL,NULL,0),
(541,12,'011166','Kapenguria Sub - Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(542,12,'011162','Litein','2024-07-31 15:12:20',5,NULL,NULL,0),
(543,12,'011161','Kilimani','2024-07-31 15:12:20',5,NULL,NULL,0),
(544,12,'011159','Emali','2024-07-31 15:12:20',5,NULL,NULL,0),
(545,12,'011163','Thika Makongeni','2024-07-31 15:12:20',5,NULL,NULL,0),
(546,12,'011160','Kangema','2024-07-31 15:12:20',5,NULL,NULL,0),
(547,12,'011155','Utawala','2024-07-31 15:12:20',5,NULL,NULL,0),
(548,12,'011020','Eastleigh','2024-07-31 15:12:20',5,NULL,NULL,0),
(549,12,'011021','Kiambu','2024-07-31 15:12:20',5,NULL,NULL,0),
(550,12,'011022','Homa Bay','2024-07-31 15:12:20',5,NULL,NULL,0),
(551,12,'011023','Embu','2024-07-31 15:12:20',5,NULL,NULL,0),
(552,12,'011024','Kericho','2024-07-31 15:12:20',5,NULL,NULL,0),
(553,12,'011025','Bungoma','2024-07-31 15:12:20',5,NULL,NULL,0),
(554,12,'011026','Muranga','2024-07-31 15:12:20',5,NULL,NULL,0),
(555,12,'011027','Kayole','2024-07-31 15:12:20',5,NULL,NULL,0),
(556,12,'011028','Karatina','2024-07-31 15:12:20',5,NULL,NULL,0),
(557,12,'011029','Ukunda','2024-07-31 15:12:20',5,NULL,NULL,0),
(558,12,'011030','Mtwapa','2024-07-31 15:12:20',5,NULL,NULL,0),
(559,12,'011031','University Way','2024-07-31 15:12:20',5,NULL,NULL,0),
(560,12,'011032','Buru Buru','2024-07-31 15:12:20',5,NULL,NULL,0),
(561,12,'011033','Athi River','2024-07-31 15:12:20',5,NULL,NULL,0),
(562,12,'011034','Mumias','2024-07-31 15:12:20',5,NULL,NULL,0),
(563,12,'011038','Ongata Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(564,12,'011039','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(565,12,'011040','Nacico','2024-07-31 15:12:20',5,NULL,NULL,0),
(566,12,'011041','Kariobangi','2024-07-31 15:12:20',5,NULL,NULL,0),
(567,12,'011042','Kawangware','2024-07-31 15:12:20',5,NULL,NULL,0),
(568,12,'011043','Makutano','2024-07-31 15:12:20',5,NULL,NULL,0),
(569,12,'011044','Parliament road','2024-07-31 15:12:20',5,NULL,NULL,0),
(570,12,'011045','Kimathi Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(571,12,'011046','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(572,12,'011047','Githurai','2024-07-31 15:12:20',5,NULL,NULL,0),
(573,12,'011048','Maua','2024-07-31 15:12:20',5,NULL,NULL,0),
(574,12,'011049','City  Hall','2024-07-31 15:12:20',5,NULL,NULL,0),
(575,12,'011050','Digo Rd','2024-07-31 15:12:20',5,NULL,NULL,0),
(576,12,'011051','Nbc','2024-07-31 15:12:20',5,NULL,NULL,0),
(577,12,'011000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(578,12,'011001','Finance And Accounts','2024-07-31 15:12:20',5,NULL,NULL,0),
(579,12,'011002','Co-op House','2024-07-31 15:12:20',5,NULL,NULL,0),
(580,12,'011003','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(581,12,'011004','Nkurumah Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(582,12,'011005','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(583,12,'011006','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(584,12,'011007','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(585,12,'011008','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(586,12,'011009','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(587,12,'011010','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(588,12,'011011','Ukulima','2024-07-31 15:12:20',5,NULL,NULL,0),
(589,12,'011012','Kerugoya','2024-07-31 15:12:20',5,NULL,NULL,0),
(590,12,'011013','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(591,12,'011014','Moi Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(592,12,'011015','Naivasha','2024-07-31 15:12:20',5,NULL,NULL,0),
(593,12,'011017','Nyahururu','2024-07-31 15:12:20',5,NULL,NULL,0),
(594,12,'011018','Chuka','2024-07-31 15:12:20',5,NULL,NULL,0),
(595,12,'011019','Wakulima Market','2024-07-31 15:12:20',5,NULL,NULL,0),
(596,12,'011062','Zimmerman','2024-07-31 15:12:20',5,NULL,NULL,0),
(597,12,'011063','Kenyatta Avenue Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(598,12,'011064','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(599,12,'011065','Aga Khan Walk','2024-07-31 15:12:20',5,NULL,NULL,0),
(600,12,'011066','Narok','2024-07-31 15:12:20',5,NULL,NULL,0),
(601,12,'011067','Kitui','2024-07-31 15:12:20',5,NULL,NULL,0),
(602,12,'011068','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(603,12,'011069','Embakasi','2024-07-31 15:12:20',5,NULL,NULL,0),
(604,12,'011070','Kibera','2024-07-31 15:12:20',5,NULL,NULL,0),
(605,12,'011071','Siakago','2024-07-31 15:12:20',5,NULL,NULL,0),
(606,12,'011072','Kapsabet','2024-07-31 15:12:20',5,NULL,NULL,0),
(607,12,'011073','Mbita','2024-07-31 15:12:20',5,NULL,NULL,0),
(608,12,'011074','Kangemi','2024-07-31 15:12:20',5,NULL,NULL,0),
(609,12,'011075','Dandora','2024-07-31 15:12:20',5,NULL,NULL,0),
(610,12,'011076','Kajiado','2024-07-31 15:12:20',5,NULL,NULL,0),
(611,12,'011077','Tala','2024-07-31 15:12:20',5,NULL,NULL,0),
(612,12,'011078','Gikomba','2024-07-31 15:12:20',5,NULL,NULL,0),
(613,12,'011079','River Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(614,12,'011080','Nyamira','2024-07-31 15:12:20',5,NULL,NULL,0),
(615,12,'011081','Garisa','2024-07-31 15:12:20',5,NULL,NULL,0),
(616,12,'011082','Bomet','2024-07-31 15:12:20',5,NULL,NULL,0),
(617,12,'011083','Keroka','2024-07-31 15:12:20',5,NULL,NULL,0),
(618,12,'011084','Gilgil','2024-07-31 15:12:20',5,NULL,NULL,0),
(619,12,'011085','Tom Mboya','2024-07-31 15:12:20',5,NULL,NULL,0),
(620,12,'011086','Likoni','2024-07-31 15:12:20',5,NULL,NULL,0),
(621,12,'011087','Donholm','2024-07-31 15:12:20',5,NULL,NULL,0),
(622,12,'011088','Mwingi','2024-07-31 15:12:20',5,NULL,NULL,0),
(623,12,'011089','Ruaka','2024-07-31 15:12:20',5,NULL,NULL,0),
(624,12,'011090','Webuye','2024-07-31 15:12:20',5,NULL,NULL,0),
(625,12,'011094','Sacco Clearing Unit','2024-07-31 15:12:20',5,NULL,NULL,0),
(626,12,'011097','Clearing Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(627,12,'011100','Ndhiwa','2024-07-31 15:12:20',5,NULL,NULL,0),
(628,12,'011101','Oyugis','2024-07-31 15:12:20',5,NULL,NULL,0),
(629,12,'011102','Isiolo','2024-07-31 15:12:20',5,NULL,NULL,0),
(630,12,'011103','Uganda Road Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(631,12,'011104','Changamwe','2024-07-31 15:12:20',5,NULL,NULL,0),
(632,12,'011105','Kondele','2024-07-31 15:12:20',5,NULL,NULL,0),
(633,12,'011106','Githurai Kimbo','2024-07-31 15:12:20',5,NULL,NULL,0),
(634,12,'011107','Mlolongo','2024-07-31 15:12:20',5,NULL,NULL,0),
(635,12,'011108','Kilifi','2024-07-31 15:12:20',5,NULL,NULL,0),
(636,12,'011109','Ol Kalau','2024-07-31 15:12:20',5,NULL,NULL,0),
(637,12,'011110','Mbale','2024-07-31 15:12:20',5,NULL,NULL,0),
(638,12,'011111','Kimilili','2024-07-31 15:12:20',5,NULL,NULL,0),
(639,12,'011035','Stima Plaza','2024-07-31 15:12:20',5,NULL,NULL,0),
(640,12,'011036','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(641,12,'011037','Upper Hill','2024-07-31 15:12:20',5,NULL,NULL,0),
(642,12,'011137','Gatundu','2024-07-31 15:12:20',5,NULL,NULL,0),
(643,12,'011138','Ruiru','2024-07-31 15:12:20',5,NULL,NULL,0),
(644,12,'011139','Nyali Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(645,12,'011140','Yala','2024-07-31 15:12:20',5,NULL,NULL,0),
(646,12,'011141','Maasai Mall - Ongata Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(647,12,'011142','Thika Road Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(648,12,'011143','Kiserian','2024-07-31 15:12:20',5,NULL,NULL,0),
(649,12,'011144','Nandi Hills','2024-07-31 15:12:20',5,NULL,NULL,0),
(650,12,'011145','Lodwar','2024-07-31 15:12:20',5,NULL,NULL,0),
(651,12,'011147','Engineer','2024-07-31 15:12:20',5,NULL,NULL,0),
(652,12,'011148','Rongo','2024-07-31 15:12:20',5,NULL,NULL,0),
(653,12,'011149','Lavington Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(654,12,'011150','Bondo','2024-07-31 15:12:20',5,NULL,NULL,0),
(655,12,'011151','Gigiri Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(656,12,'011152','United Mall, Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(657,12,'011153','Green House Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(658,12,'011228','Shares Operations','2024-07-31 15:12:20',5,NULL,NULL,0),
(659,12,'011247','Back Office Operations','2024-07-31 15:12:20',5,NULL,NULL,0),
(660,12,'011250','E- Channels Unit','2024-07-31 15:12:20',5,NULL,NULL,0),
(661,12,'011254','Diaspora Banking','2024-07-31 15:12:20',5,NULL,NULL,0),
(662,12,'011266','Kilindini Port','2024-07-31 15:12:20',5,NULL,NULL,0),
(663,12,'011270','Money Transfers Agency','2024-07-31 15:12:20',5,NULL,NULL,0),
(664,12,'011052','Kakamega','2024-07-31 15:12:20',5,NULL,NULL,0),
(665,12,'011053','Migori','2024-07-31 15:12:20',5,NULL,NULL,0),
(666,12,'011054','Kenyatta Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(667,12,'011055','Nkubu','2024-07-31 15:12:20',5,NULL,NULL,0),
(668,12,'011056','Enterprise Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(669,12,'011057','Busia','2024-07-31 15:12:20',5,NULL,NULL,0),
(670,12,'011058','Siaya','2024-07-31 15:12:20',5,NULL,NULL,0),
(671,12,'011059','Voi','2024-07-31 15:12:20',5,NULL,NULL,0),
(672,12,'011060','Mariakani','2024-07-31 15:12:20',5,NULL,NULL,0),
(673,12,'011061','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(674,12,'011128','Marsabit','2024-07-31 15:12:20',5,NULL,NULL,0),
(675,12,'011130','Dagoretti','2024-07-31 15:12:20',5,NULL,NULL,0),
(676,12,'011131','Othaya','2024-07-31 15:12:20',5,NULL,NULL,0),
(677,12,'011132','Limuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(678,12,'011133','Kikuyu','2024-07-31 15:12:20',5,NULL,NULL,0),
(679,12,'011134','Githunguri','2024-07-31 15:12:20',5,NULL,NULL,0),
(680,12,'011135','Karen','2024-07-31 15:12:20',5,NULL,NULL,0),
(681,12,'011136','Mpeketoni','2024-07-31 15:12:20',5,NULL,NULL,0),
(682,12,'011112','Kisii Highway','2024-07-31 15:12:20',5,NULL,NULL,0),
(683,12,'011113','Kilgoris','2024-07-31 15:12:20',5,NULL,NULL,0),
(684,12,'011114','Wote','2024-07-31 15:12:20',5,NULL,NULL,0),
(685,12,'011116','Malaba','2024-07-31 15:12:20',5,NULL,NULL,0),
(686,12,'011117','Molo','2024-07-31 15:12:20',5,NULL,NULL,0),
(687,12,'011118','Mwea','2024-07-31 15:12:20',5,NULL,NULL,0),
(688,12,'011119','Kutus','2024-07-31 15:12:20',5,NULL,NULL,0),
(689,12,'011120','Umoja','2024-07-31 15:12:20',5,NULL,NULL,0),
(690,12,'011121','Embakasi Junction','2024-07-31 15:12:20',5,NULL,NULL,0),
(691,12,'011122','Kongowea','2024-07-31 15:12:20',5,NULL,NULL,0),
(692,12,'011123','Langata Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(693,12,'011124','Juja','2024-07-31 15:12:20',5,NULL,NULL,0),
(694,12,'011125','Ngong','2024-07-31 15:12:20',5,NULL,NULL,0),
(695,12,'011126','Kawangware 46','2024-07-31 15:12:20',5,NULL,NULL,0),
(696,12,'011127','Mombasa Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(697,12,'011092','Kabarnet Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(698,12,'011091','Iten','2024-07-31 15:12:20',5,NULL,NULL,0),
(699,12,'011115','Kasarani Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(700,12,'011129','Kamakis','2024-07-31 15:12:20',5,NULL,NULL,0),
(701,12,'011173','Chwele','2024-07-31 15:12:20',5,NULL,NULL,0),
(702,12,'011093','Hindi Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(703,12,'011174','THIKA KWAME NKRUMAH BRANCH','2024-07-31 15:12:20',5,NULL,NULL,0),
(704,12,'011146','Kenol-Makuyu Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(705,12,'011169','Eldoret - Kenyatta Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(706,12,'011171','Bamburi Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(707,12,'011165','Chogoria','2024-07-31 15:12:20',5,NULL,NULL,0),
(708,12,'011164','Kenyatta Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(709,12,'011167','Maralal','2024-07-31 15:12:20',5,NULL,NULL,0),
(710,12,'011172','GREENWOOD MALL BRANCH','2024-07-31 15:12:20',5,NULL,NULL,0),
(711,7,'012000','Central Business Unit','2024-07-31 15:12:20',5,NULL,NULL,0),
(712,7,'012002','Kenyatta','2024-07-31 15:12:20',5,NULL,NULL,0),
(713,7,'012003','Harambee','2024-07-31 15:12:20',5,NULL,NULL,0),
(714,7,'012004','Hill','2024-07-31 15:12:20',5,NULL,NULL,0),
(715,7,'012005','Busia','2024-07-31 15:12:20',5,NULL,NULL,0),
(716,7,'012006','Kiambu','2024-07-31 15:12:20',5,NULL,NULL,0),
(717,7,'012007','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(718,7,'012008','Karatina','2024-07-31 15:12:20',5,NULL,NULL,0),
(719,7,'012009','Narok','2024-07-31 15:12:20',5,NULL,NULL,0),
(720,7,'012010','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(721,7,'012011','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(722,7,'012012','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(723,7,'012013','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(724,7,'012015','Eastleigh','2024-07-31 15:12:20',5,NULL,NULL,0),
(725,7,'012016','Limuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(726,7,'012017','Kitui','2024-07-31 15:12:20',5,NULL,NULL,0),
(727,7,'012018','Molo','2024-07-31 15:12:20',5,NULL,NULL,0),
(728,7,'012019','Bungoma','2024-07-31 15:12:20',5,NULL,NULL,0),
(729,7,'012020','Nkrumah','2024-07-31 15:12:20',5,NULL,NULL,0),
(730,7,'012021','Kapsabet','2024-07-31 15:12:20',5,NULL,NULL,0),
(731,7,'012022','Awendo','2024-07-31 15:12:20',5,NULL,NULL,0),
(732,7,'012023','Portway-msa','2024-07-31 15:12:20',5,NULL,NULL,0),
(733,7,'012082','Mwea Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(734,7,'012025','Hospital Br.','2024-07-31 15:12:20',5,NULL,NULL,0),
(735,7,'012026','Ruiru','2024-07-31 15:12:20',5,NULL,NULL,0),
(736,7,'012027','Ongata Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(737,7,'012028','Embu','2024-07-31 15:12:20',5,NULL,NULL,0),
(738,7,'012029','Kakamega','2024-07-31 15:12:20',5,NULL,NULL,0),
(739,7,'012030','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(740,7,'012031','Ukunda','2024-07-31 15:12:20',5,NULL,NULL,0),
(741,7,'012032','Upper Hill','2024-07-31 15:12:20',5,NULL,NULL,0),
(742,7,'012033','Nandi Hills','2024-07-31 15:12:20',5,NULL,NULL,0),
(743,7,'012034','Migori','2024-07-31 15:12:20',5,NULL,NULL,0),
(744,7,'012035','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(745,7,'012036','Times Tower','2024-07-31 15:12:20',5,NULL,NULL,0),
(746,7,'012037','Maua','2024-07-31 15:12:20',5,NULL,NULL,0),
(747,7,'012038','WILSON AIRPORT','2024-07-31 15:12:20',5,NULL,NULL,0),
(748,7,'012039','J.K.I.A.','2024-07-31 15:12:20',5,NULL,NULL,0),
(749,7,'012040','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(750,7,'012056','Bomet','2024-07-31 15:12:20',5,NULL,NULL,0),
(751,7,'012058','Greenspan','2024-07-31 15:12:20',5,NULL,NULL,0),
(752,7,'012059','Sameer Park','2024-07-31 15:12:20',5,NULL,NULL,0),
(753,7,'012060','SEKU','2024-07-31 15:12:20',5,NULL,NULL,0),
(754,7,'012061','Ngong Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(755,7,'012062','Moi Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(756,7,'012063','Mountain Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(757,7,'012065','Nyali Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(758,7,'012066','Kilifi','2024-07-31 15:12:20',5,NULL,NULL,0),
(759,7,'012067','South C Branch- KEBS','2024-07-31 15:12:20',5,NULL,NULL,0),
(760,7,'012068','Kericho','2024-07-31 15:12:20',5,NULL,NULL,0),
(761,7,'012070','Isiolo','2024-07-31 15:12:20',5,NULL,NULL,0),
(762,7,'012071','South C - Red Cross','2024-07-31 15:12:20',5,NULL,NULL,0),
(763,7,'012072','National Bank Premium Banking Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(764,7,'012073','Yaya Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(765,7,'012074','Gigiri','2024-07-31 15:12:20',5,NULL,NULL,0),
(766,7,'012253','Narok Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(767,7,'012254','Ngong Rd Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(768,7,'012255','Nkuruma Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(769,7,'012256','Nyali Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(770,7,'012257','Nyeri Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(771,7,'012258','Ongata Rongai Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(772,7,'012259','Portway Hse Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(773,7,'012260','Ruiru Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(774,7,'012261','Sameer Park Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(775,7,'012262','SEKU Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(776,7,'012263','South C Red Cross Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(777,7,'012264','St. Pauls University Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(778,7,'012265','Technical Univ of MSA Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(779,7,'012266','Thika Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(780,7,'012093','Wajir','2024-07-31 15:12:20',5,NULL,NULL,0),
(781,7,'012094','Bondeni','2024-07-31 15:12:20',5,NULL,NULL,0),
(782,7,'012096','Mandera','2024-07-31 15:12:20',5,NULL,NULL,0),
(783,7,'012098','Card Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(784,7,'012099','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(785,7,'012198','Central CLearing Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(786,7,'012200','Head Office Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(787,7,'012201','Card Centre Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(788,7,'012202','Eastleigh Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(789,7,'012203','Kenyatta Ave Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(790,7,'012204','Wajir Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(791,7,'012205','Bondeni Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(792,7,'012206','Garissa Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(793,7,'012207','Mandera Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(794,7,'012208','Isiolo Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(795,7,'012209','Awendo Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(796,7,'012210','Bomet Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(797,7,'012211','Bungoma Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(798,7,'012212','Busia Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(799,7,'012213','Changamwe Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(800,7,'012214','Eldoret Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(801,7,'012215','Embu Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(802,7,'012216','Gigiri Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(803,7,'012217','Greenspan Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(804,7,'012218','Harambee Ave Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(805,7,'012219','Hill Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(806,7,'012220','Hospital Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(807,7,'012221','JKIA Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(808,7,'012222','Kakamega Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(809,7,'012223','Kapsabet Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(810,7,'012224','Karatina Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(811,7,'012225','Kenyatta Ave Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(812,7,'012226','Kenyatta University Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(813,7,'012227','Kericho Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(814,7,'012228','Kiambu Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(815,7,'012229','Kianjai Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(816,7,'012230','Kilifi Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(817,7,'012231','Kisii Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(818,7,'012232','Kisumu Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(819,7,'012267','Times Tower Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(820,7,'012268','TSC Upper Hill Building Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(821,7,'012269','Ukunda Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(822,7,'012270','Westlands Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(823,7,'012271','Wilson Airport NRI Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(824,7,'012272','Yaya Centre Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(825,7,'012233','Kisumu Premium Centre Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(826,7,'012234','Kitale Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(827,7,'012235','Kitengela Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(828,7,'012236','Kitui Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(829,7,'012237','Limuru Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(830,7,'012238','Lunga Lunga Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(831,7,'012239','Machakos Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(832,7,'012240','Malindi Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(833,7,'012241','Maua Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(834,7,'012242','Meru Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(835,7,'012243','Migori Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(836,7,'012244','Moi Ave Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(837,7,'012245','Moi University Eldoret Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(838,7,'012246','Mois Bridge Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(839,7,'012247','Molo Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(840,7,'012248','Mountain Mall Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(841,7,'012249','Mtwapa Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(842,7,'012250','Mutomo Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(843,7,'012251','Nakuru Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(844,7,'012252','Nandi Hills Amanah','2024-07-31 15:12:20',5,NULL,NULL,0),
(845,7,'012041','MOIS BRIDGE','2024-07-31 15:12:20',5,NULL,NULL,0),
(846,7,'012042','MUTOMO','2024-07-31 15:12:20',5,NULL,NULL,0),
(847,7,'012043','KIANJAI','2024-07-31 15:12:20',5,NULL,NULL,0),
(848,7,'012044','KENYATTA UNIVERSITY','2024-07-31 15:12:20',5,NULL,NULL,0),
(849,7,'012045','ST PAULS UNIVERSITY','2024-07-31 15:12:20',5,NULL,NULL,0),
(850,7,'012046','MOI UNIVERSITY ELDORET','2024-07-31 15:12:20',5,NULL,NULL,0),
(851,7,'012047','MOI INT AIRPORT MOMBASA','2024-07-31 15:12:20',5,NULL,NULL,0),
(852,7,'012048','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(853,7,'012049','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(854,7,'012050','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(855,7,'012051','Mtwapa','2024-07-31 15:12:20',5,NULL,NULL,0),
(856,7,'012052','Changamwe','2024-07-31 15:12:20',5,NULL,NULL,0),
(857,7,'012053','Garissa','2024-07-31 15:12:20',5,NULL,NULL,0),
(858,7,'012054','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(859,7,'012055','Momasa Polytechnic University College','2024-07-31 15:12:20',5,NULL,NULL,0),
(860,7,'012075','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(861,7,'012078','Wote','2024-07-31 15:12:20',5,NULL,NULL,0),
(862,7,'012079','Lodwar','2024-07-31 15:12:20',5,NULL,NULL,0),
(863,7,'012081','Gikomba','2024-07-31 15:12:20',5,NULL,NULL,0),
(864,13,'014011','Sameer Business Park','2024-07-31 15:12:20',5,NULL,NULL,0),
(865,13,'014000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(866,13,'014001','Koinange Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(867,13,'014004','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(868,13,'014005','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(869,13,'014006','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(870,13,'014007','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(871,13,'014010','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(872,14,'016000','Head Office , Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(873,14,'016400','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(874,14,'016500','Gigiri Agency','2024-07-31 15:12:20',5,NULL,NULL,0),
(875,14,'016700','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(876,15,'017000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(877,15,'017001','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(878,15,'017002','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(879,15,'017003','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(880,15,'017004','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(881,16,'018000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(882,16,'018001','Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(883,16,'018002','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(884,16,'018003','Milimani','2024-07-31 15:12:20',5,NULL,NULL,0),
(885,16,'018004','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(886,16,'018005','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(887,17,'019043','Ukunda','2024-07-31 15:12:20',5,NULL,NULL,0),
(888,17,'019000','Reinsurance Plaza Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(889,17,'019001','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(890,17,'019002','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(891,17,'019003','Uhuru Highway','2024-07-31 15:12:20',5,NULL,NULL,0),
(892,17,'019004','River Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(893,17,'019005','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(894,17,'019006','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(895,17,'019007','Ruaraka','2024-07-31 15:12:20',5,NULL,NULL,0),
(896,17,'019008','Monrovia Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(897,17,'019009','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(898,17,'019010','Ngong Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(899,17,'019011','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(900,17,'019012','Embakasi','2024-07-31 15:12:20',5,NULL,NULL,0),
(901,17,'019014','Ongata Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(902,17,'019015','Changamwe','2024-07-31 15:12:20',5,NULL,NULL,0),
(903,17,'019016','Bungoma','2024-07-31 15:12:20',5,NULL,NULL,0),
(904,17,'019017','KISII','2024-07-31 15:12:20',5,NULL,NULL,0),
(905,17,'019018','MERU','2024-07-31 15:12:20',5,NULL,NULL,0),
(906,17,'019019','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(907,17,'019020','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(908,17,'019021','Galleria','2024-07-31 15:12:20',5,NULL,NULL,0),
(909,17,'019022','Greenspan Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(910,17,'019023','Upper Hilll','2024-07-31 15:12:20',5,NULL,NULL,0),
(911,17,'019024','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(912,17,'019026','Kenyatta Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(913,17,'019027','Sameer Business Park','2024-07-31 15:12:20',5,NULL,NULL,0),
(914,17,'019028','Moi Avenue, Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(915,17,'019029','Ongata Rongai II','2024-07-31 15:12:20',5,NULL,NULL,0),
(916,17,'019030','Gikomba','2024-07-31 15:12:20',5,NULL,NULL,0),
(917,17,'019031','Githurai','2024-07-31 15:12:20',5,NULL,NULL,0),
(918,17,'019032','Embu','2024-07-31 15:12:20',5,NULL,NULL,0),
(919,17,'019033','Gateway Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(920,17,'019034','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(921,17,'019035','South B','2024-07-31 15:12:20',5,NULL,NULL,0),
(922,17,'019036','Digo Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(923,17,'019037','Outering Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(924,17,'019038','Likoni Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(925,17,'019039','Thika Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(926,17,'019040','Narok','2024-07-31 15:12:20',5,NULL,NULL,0),
(927,18,'023000','Harambee Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(928,18,'023001','Muranga','2024-07-31 15:12:20',5,NULL,NULL,0),
(929,18,'023002','Embu','2024-07-31 15:12:20',5,NULL,NULL,0),
(930,18,'023003','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(931,18,'023004','Koinange Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(932,18,'023005','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(933,18,'023006','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(934,18,'023007','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(935,18,'023008','Laare','2024-07-31 15:12:20',5,NULL,NULL,0),
(936,18,'023009','Maua','2024-07-31 15:12:20',5,NULL,NULL,0),
(937,18,'023010','Isiolo','2024-07-31 15:12:20',5,NULL,NULL,0),
(938,18,'023011','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(939,18,'023012','Corporate','2024-07-31 15:12:20',5,NULL,NULL,0),
(940,18,'023013','Umoja','2024-07-31 15:12:20',5,NULL,NULL,0),
(941,18,'023014','River Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(942,18,'023015','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(943,18,'023016','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(944,18,'023017','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(945,18,'023018','Taj Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(946,19,'025016','Ngong Road Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(947,19,'025017','Meru Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(948,19,'025018','Nkuruma','2024-07-31 15:12:20',5,NULL,NULL,0),
(949,19,'025500','Sumac Koinange','2024-07-31 15:12:20',5,NULL,NULL,0),
(950,19,'025019','One Africa','2024-07-31 15:12:20',5,NULL,NULL,0),
(951,19,'025000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(952,19,'025001','Koinange Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(953,19,'025002','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(954,19,'025003','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(955,19,'025004','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(956,19,'025005','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(957,19,'025006','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(958,19,'025008','Nakuru, Kenyatta Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(959,19,'025009','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(960,19,'025010','Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(961,19,'025011','Mombasa- Nyali Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(962,19,'025012','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(963,19,'025013','Lavington Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(964,19,'025014','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(965,19,'025015','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(966,20,'026020','Flax','2024-07-31 15:12:20',5,NULL,NULL,0),
(967,20,'026021','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(968,20,'026024','Marigat','2024-07-31 15:12:20',5,NULL,NULL,0),
(969,20,'026022','Burnt Forest','2024-07-31 15:12:20',5,NULL,NULL,0),
(970,20,'026025','Kapcherop','2024-07-31 15:12:20',5,NULL,NULL,0),
(971,20,'026026','Kapenguria','2024-07-31 15:12:20',5,NULL,NULL,0),
(972,20,'026027','Kaptumo','2024-07-31 15:12:20',5,NULL,NULL,0),
(973,20,'026028','Eldama Ravine','2024-07-31 15:12:20',5,NULL,NULL,0),
(974,20,'026001','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(975,20,'026002','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(976,20,'026003','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(977,20,'026004','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(978,20,'026005','Mia','2024-07-31 15:12:20',5,NULL,NULL,0),
(979,20,'026006','Jkia','2024-07-31 15:12:20',5,NULL,NULL,0),
(980,20,'026007','Kirinyaga Rd Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(981,20,'026008','Kabarak','2024-07-31 15:12:20',5,NULL,NULL,0),
(982,20,'026009','Olenguruone','2024-07-31 15:12:20',5,NULL,NULL,0),
(983,20,'026010','Kericho','2024-07-31 15:12:20',5,NULL,NULL,0),
(984,20,'026011','Nandi Hills','2024-07-31 15:12:20',5,NULL,NULL,0),
(985,20,'026012','Epz','2024-07-31 15:12:20',5,NULL,NULL,0),
(986,20,'026013','Sheikh Karume','2024-07-31 15:12:20',5,NULL,NULL,0),
(987,20,'026014','Kabarnet','2024-07-31 15:12:20',5,NULL,NULL,0),
(988,20,'026015','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(989,20,'026016','Narok','2024-07-31 15:12:20',5,NULL,NULL,0),
(990,20,'026017','Bomet','2024-07-31 15:12:20',5,NULL,NULL,0),
(991,20,'026018','Iten','2024-07-31 15:12:20',5,NULL,NULL,0),
(992,20,'026019','Lessos','2024-07-31 15:12:20',5,NULL,NULL,0),
(993,20,'026023','Kiptagich','2024-07-31 15:12:20',5,NULL,NULL,0),
(994,21,'031030','The Hub','2024-07-31 15:12:20',5,NULL,NULL,0),
(995,21,'031031','Two Rivers','2024-07-31 15:12:20',5,NULL,NULL,0),
(996,21,'031001','CFC Stanbic Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(997,21,'031002','Kenyatta Ave','2024-07-31 15:12:20',5,NULL,NULL,0),
(998,21,'031021','Garden city','2024-07-31 15:12:20',5,NULL,NULL,0),
(999,21,'031022','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1000,21,'031023','Karen','2024-07-31 15:12:20',5,NULL,NULL,0),
(1001,21,'031018','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1002,21,'031019','Buruburu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1003,21,'031020','Gikomba','2024-07-31 15:12:20',5,NULL,NULL,0),
(1004,21,'031003','Digo road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1005,21,'031004','Waiyaki Way','2024-07-31 15:12:20',5,NULL,NULL,0),
(1006,21,'031005','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(1007,21,'031006','Harambee Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(1008,21,'031007','Chiromo Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1009,21,'031008','International House','2024-07-31 15:12:20',5,NULL,NULL,0),
(1010,21,'031010','Upper Hill','2024-07-31 15:12:20',5,NULL,NULL,0),
(1011,21,'031011','Naivasha','2024-07-31 15:12:20',5,NULL,NULL,0),
(1012,21,'031012','Westgate','2024-07-31 15:12:20',5,NULL,NULL,0),
(1013,21,'031013','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1014,21,'031014','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1015,21,'031015','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(1016,21,'031017','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(1017,21,'031024','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(1018,21,'031025','Warwick','2024-07-31 15:12:20',5,NULL,NULL,0),
(1019,21,'031026','Private Clients','2024-07-31 15:12:20',5,NULL,NULL,0),
(1020,21,'031027','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(1021,21,'031028','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1022,21,'031029','Changamwe','2024-07-31 15:12:20',5,NULL,NULL,0),
(1023,21,'031999','Central Processing H/o','2024-07-31 15:12:20',5,NULL,NULL,0),
(1024,21,'031032','Imaara Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1025,21,'031033','Kericho Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1026,21,'031034','Expressway Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1027,22,'035011','Green House Mall(GHM)','2024-07-31 15:12:20',5,NULL,NULL,0),
(1028,22,'035010','Thika Road Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(1029,22,'035000','Head Office/koinange St.','2024-07-31 15:12:20',5,NULL,NULL,0),
(1030,22,'035001','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1031,22,'035002','Industrial Area Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1032,22,'035003','Nkrumah Road Branch/mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1033,22,'035004','Kisumu Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1034,22,'035005','Eldoret Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1035,22,'035006','Meru Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1036,22,'035007','Libra House','2024-07-31 15:12:20',5,NULL,NULL,0),
(1037,22,'035008','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1038,22,'035101','Central Operations 1','2024-07-31 15:12:20',5,NULL,NULL,0),
(1039,22,'035102','Central Operations 2','2024-07-31 15:12:20',5,NULL,NULL,0),
(1040,22,'035103','Central Operations 3','2024-07-31 15:12:20',5,NULL,NULL,0),
(1041,22,'035104','Central Operations 4','2024-07-31 15:12:20',5,NULL,NULL,0),
(1042,22,'035105','Central Operations 5','2024-07-31 15:12:20',5,NULL,NULL,0),
(1043,23,'043030','Fortis Office Park','2024-07-31 15:12:20',5,NULL,NULL,0),
(1044,23,'043000','Fedha Branch , Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1045,23,'043001','Moi Avenue Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1046,23,'043002','Akiba Hse Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1047,23,'043003','Plaza 2000','2024-07-31 15:12:20',5,NULL,NULL,0),
(1048,23,'043004','Westminister','2024-07-31 15:12:20',5,NULL,NULL,0),
(1049,23,'043005','Chambers','2024-07-31 15:12:20',5,NULL,NULL,0),
(1050,23,'043006','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(1051,23,'043018','Busia','2024-07-31 15:12:20',5,NULL,NULL,0),
(1052,23,'043019','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1053,23,'043020','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1054,23,'043021','Gikomba','2024-07-31 15:12:20',5,NULL,NULL,0),
(1055,23,'043022','UpperHill','2024-07-31 15:12:20',5,NULL,NULL,0),
(1056,23,'043023','Valley Arcade','2024-07-31 15:12:20',5,NULL,NULL,0),
(1057,23,'043024','Karen','2024-07-31 15:12:20',5,NULL,NULL,0),
(1058,23,'043025','Nyali Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1059,23,'043026','Ongata Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1060,23,'043027','Embakasi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1061,23,'043028','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(1062,23,'043029','Thika Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(1063,23,'043100','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1064,23,'043007','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1065,23,'043008','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1066,23,'043009','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(1067,23,'043010','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(1068,23,'043011','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(1069,23,'043012','Karatina','2024-07-31 15:12:20',5,NULL,NULL,0),
(1070,23,'043013','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1071,23,'043014','United Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(1072,23,'043015','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1073,23,'043016','Jomo Kenyatta Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(1074,23,'043017','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1075,24,'049017','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(1076,24,'049000','Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1077,24,'049001','Nyerere','2024-07-31 15:12:20',5,NULL,NULL,0),
(1078,24,'049002','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1079,24,'049004','Mombasa Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1080,24,'049005','Chester','2024-07-31 15:12:20',5,NULL,NULL,0),
(1081,24,'049007','Waiyaki Way','2024-07-31 15:12:20',5,NULL,NULL,0),
(1082,24,'049008','Kakamega','2024-07-31 15:12:20',5,NULL,NULL,0),
(1083,24,'049009','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1084,24,'049010','Senator Cards','2024-07-31 15:12:20',5,NULL,NULL,0),
(1085,24,'049011','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(1086,24,'049012','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1087,24,'049013','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(1088,24,'049015','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1089,24,'049016','Ongata Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1090,25,'050001','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1091,25,'050002','Parklands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1092,25,'050003','Koinange Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(1093,25,'050004','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1094,25,'050006','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1095,25,'050007','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(1096,25,'050008','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1097,25,'050000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1098,26,'051409','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(1099,26,'051502','Ongata Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1100,26,'051503','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(1101,26,'051507','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1102,26,'051603','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1103,26,'051000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1104,26,'051001','Koinange Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(1105,26,'051100','Kiongozi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1106,26,'051101','Kayole','2024-07-31 15:12:20',5,NULL,NULL,0),
(1107,26,'051102','Eastleigh','2024-07-31 15:12:20',5,NULL,NULL,0),
(1108,26,'051105','Kawangware','2024-07-31 15:12:20',5,NULL,NULL,0),
(1109,26,'051106','Kibera','2024-07-31 15:12:20',5,NULL,NULL,0),
(1110,26,'051107','Kariobangi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1111,26,'051114','Funzi Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1112,26,'051115','Ngong Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1113,26,'051116','Kirinyaga Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1114,26,'051209','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(1115,26,'051210','Mtwapa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1116,26,'051213','Kiritiri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1117,26,'051301','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(1118,26,'051303','Muranga','2024-07-31 15:12:20',5,NULL,NULL,0),
(1119,26,'051305','Wangige','2024-07-31 15:12:20',5,NULL,NULL,0),
(1120,26,'051306','Kikuyu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1121,26,'051307','Banana','2024-07-31 15:12:20',5,NULL,NULL,0),
(1122,26,'051308','Kiambu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1123,26,'051310','Utawala','2024-07-31 15:12:20',5,NULL,NULL,0),
(1124,26,'051316','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1125,26,'051402','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1126,26,'051318','SACCO Clearing Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1127,26,'051111','Central Clearing Center','2024-07-31 15:12:20',5,NULL,NULL,0),
(1128,26,'051401','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1129,27,'053000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1130,27,'053001','Kimathi Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(1131,27,'053002','Ind Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(1132,27,'053003','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1133,27,'053008','Muthaiga','2024-07-31 15:12:20',5,NULL,NULL,0),
(1134,27,'053009','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(1135,27,'053010','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(1136,27,'053011','Gikomba','2024-07-31 15:12:20',5,NULL,NULL,0),
(1137,27,'053012','Ngong Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1138,27,'053013','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1139,27,'053014','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(1140,27,'053015','Sky Park','2024-07-31 15:12:20',5,NULL,NULL,0),
(1141,27,'053016','Karen','2024-07-31 15:12:20',5,NULL,NULL,0),
(1142,27,'053004','Lavington','2024-07-31 15:12:20',5,NULL,NULL,0),
(1143,27,'053005','Nkrumah Road , Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1144,27,'053006','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1145,27,'053007','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1146,28,'054004','Ruaraka Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1147,28,'054001','Victoria Towers, Upperhill','2024-07-31 15:12:20',5,NULL,NULL,0),
(1148,28,'054002','Riverside Drive','2024-07-31 15:12:20',5,NULL,NULL,0),
(1149,28,'054003','Lunga Lunga Square','2024-07-31 15:12:20',5,NULL,NULL,0),
(1150,28,'054005','Two Rivers','2024-07-31 15:12:20',5,NULL,NULL,0),
(1151,29,'055001','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1152,29,'055002','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1153,29,'055003','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1154,29,'055004','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1155,29,'055005','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1156,29,'055006','Moi Ave','2024-07-31 15:12:20',5,NULL,NULL,0),
(1157,29,'055007','Mombasa Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1158,29,'055008','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(1159,29,'055009','Ngong Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1160,29,'055010','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1161,30,'057036','Spring Valley','2024-07-31 15:12:20',5,NULL,NULL,0),
(1162,30,'057037','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1163,30,'057000','Kenyatta Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(1164,30,'057001','2nd Ngong Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(1165,30,'057002','Sarit Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1166,30,'057003','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1167,30,'057019','Riverside Drive Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1168,30,'057020','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(1169,30,'057021','Changamwe','2024-07-31 15:12:20',5,NULL,NULL,0),
(1170,30,'057022','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1171,30,'057023','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1172,30,'057024','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(1173,30,'057025','Gigiri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1174,30,'057026','Mtwapa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1175,30,'057027','Lavington Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(1176,30,'057028','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(1177,30,'057029','Lunga Lunga','2024-07-31 15:12:20',5,NULL,NULL,0),
(1178,30,'057030','Yaya Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1179,30,'057031','Gateway Mall, Syokimau','2024-07-31 15:12:20',5,NULL,NULL,0),
(1180,30,'057032','Ruaraka','2024-07-31 15:12:20',5,NULL,NULL,0),
(1181,30,'057098','Card Center','2024-07-31 15:12:20',5,NULL,NULL,0),
(1182,30,'057004','Biashara St','2024-07-31 15:12:20',5,NULL,NULL,0),
(1183,30,'057005','Nyerere Avenue, Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1184,30,'057006','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(1185,30,'057007','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1186,30,'057008','Karen','2024-07-31 15:12:20',5,NULL,NULL,0),
(1187,30,'057009','Panari Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1188,30,'057010','Parklands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1189,30,'057011','Wilson Airport','2024-07-31 15:12:20',5,NULL,NULL,0),
(1190,30,'057012','Ongata Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1191,30,'057013','South C Shopping Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1192,30,'057014','Nyali Cinemax','2024-07-31 15:12:20',5,NULL,NULL,0),
(1193,30,'057015','Langata Link','2024-07-31 15:12:20',5,NULL,NULL,0),
(1194,30,'057016','Valley Arcade','2024-07-31 15:12:20',5,NULL,NULL,0),
(1195,30,'057017','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1196,30,'057018','NAKURU','2024-07-31 15:12:20',5,NULL,NULL,0),
(1197,30,'057034','Cross Road Off River Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1198,30,'057035','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(1199,30,'057038','Eldama Park','2024-07-31 15:12:20',5,NULL,NULL,0),
(1200,30,'057039','Banda Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(1201,30,'057040','Dunga Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1202,30,'057041','Ridge Court','2024-07-31 15:12:20',5,NULL,NULL,0),
(1203,30,'057042','Bandari Plaza','2024-07-31 15:12:20',5,NULL,NULL,0),
(1204,30,'057043','Mombasa, Moi Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(1205,31,'059000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1206,31,'059001','Loita Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(1207,31,'059002','Ngong Road Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1208,32,'060078','Card Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1209,32,'060100','Head Office - IPS Clearing Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1210,32,'060079','Gikomba Xpress','2024-07-31 15:12:20',5,NULL,NULL,0),
(1211,32,'060081','Jubilee Arcade Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1212,32,'060023','Buru Buru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1213,32,'060024','Strathmore','2024-07-31 15:12:20',5,NULL,NULL,0),
(1214,32,'060025','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(1215,32,'060026','Virtual','2024-07-31 15:12:20',5,NULL,NULL,0),
(1216,32,'060027','Rafiki DTM Clearing Center','2024-07-31 15:12:20',5,NULL,NULL,0),
(1217,32,'060028','Chase Xpress - Ngong Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1218,32,'060029','Chase Elite ABC Place','2024-07-31 15:12:20',5,NULL,NULL,0),
(1219,32,'060030','Sameer Business Park','2024-07-31 15:12:20',5,NULL,NULL,0),
(1220,32,'060031','Mtwapa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1221,32,'060032','Ongata Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1222,32,'060033','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1223,32,'060034','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(1224,32,'060035','Mombasa Old Town','2024-07-31 15:12:20',5,NULL,NULL,0),
(1225,32,'060036','River Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1226,32,'060037','Lunga Lunga','2024-07-31 15:12:20',5,NULL,NULL,0),
(1227,32,'060038','Chase Xpress Dagoretti Corner','2024-07-31 15:12:20',5,NULL,NULL,0),
(1228,32,'060039','Chase Xpress Madaraka Corner','2024-07-31 15:12:20',5,NULL,NULL,0),
(1229,32,'060040','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(1230,32,'060041','Kimathi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1231,32,'060042','Narok','2024-07-31 15:12:20',5,NULL,NULL,0),
(1232,32,'060043','SACCO Processing Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1233,32,'060044','Garissa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1234,32,'060045','KPA','2024-07-31 15:12:20',5,NULL,NULL,0),
(1235,32,'060046','Lavington','2024-07-31 15:12:20',5,NULL,NULL,0),
(1236,32,'060047','Kericho','2024-07-31 15:12:20',5,NULL,NULL,0),
(1237,32,'060048','Karen','2024-07-31 15:12:20',5,NULL,NULL,0),
(1238,32,'060049','Kilimani','2024-07-31 15:12:20',5,NULL,NULL,0),
(1239,32,'060050','Kasuku Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1240,32,'060051','Kilifi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1241,32,'060052','Kisumu Naivas','2024-07-31 15:12:20',5,NULL,NULL,0),
(1242,32,'060053','Ruaka','2024-07-31 15:12:20',5,NULL,NULL,0),
(1243,32,'060054','Garden City','2024-07-31 15:12:20',5,NULL,NULL,0),
(1244,32,'060055','Xpress Jomvu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1245,32,'060056','Xpress Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(1246,32,'060057','Kayole','2024-07-31 15:12:20',5,NULL,NULL,0),
(1247,32,'060058','Xpress Limuru Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1248,32,'060059','Xpress Pangani','2024-07-31 15:12:20',5,NULL,NULL,0),
(1249,32,'060060','Xpress Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1250,32,'060061','Xpress Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1251,32,'060062','Ngong Milele','2024-07-31 15:12:20',5,NULL,NULL,0),
(1252,32,'060063','Corner House','2024-07-31 15:12:20',5,NULL,NULL,0),
(1253,32,'060064','Eastleigh III','2024-07-31 15:12:20',5,NULL,NULL,0),
(1254,32,'060022','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(1255,32,'060000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1256,32,'060070','City Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1257,32,'060065','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1258,32,'060066','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(1259,32,'060067','Diani','2024-07-31 15:12:20',5,NULL,NULL,0),
(1260,32,'060071','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1261,32,'060068','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1262,32,'060076','Changamwe','2024-07-31 15:12:20',5,NULL,NULL,0),
(1263,32,'060069','Kilimani','2024-07-31 15:12:20',5,NULL,NULL,0),
(1264,32,'060075','New Muthaiga','2024-07-31 15:12:20',5,NULL,NULL,0),
(1265,32,'060072','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(1266,32,'060073','Sameer','2024-07-31 15:12:20',5,NULL,NULL,0),
(1267,32,'060074','Highridge','2024-07-31 15:12:20',5,NULL,NULL,0),
(1268,32,'060077','Garden City','2024-07-31 15:12:20',5,NULL,NULL,0),
(1269,32,'060016','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1270,32,'060001','City Centre Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1271,32,'060003','Village Market','2024-07-31 15:12:20',5,NULL,NULL,0),
(1272,32,'060004','Mombasa Moi Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(1273,32,'060005','Hurlingham','2024-07-31 15:12:20',5,NULL,NULL,0),
(1274,32,'060006','Eastleigh','2024-07-31 15:12:20',5,NULL,NULL,0),
(1275,32,'060007','Parklands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1276,32,'060008','Riverside Mews','2024-07-31 15:12:20',5,NULL,NULL,0),
(1277,32,'060010','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(1278,32,'060011','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1279,32,'060012','Donholm','2024-07-31 15:12:20',5,NULL,NULL,0),
(1280,32,'060013','Bondeni','2024-07-31 15:12:20',5,NULL,NULL,0),
(1281,32,'060014','Ngara Mini','2024-07-31 15:12:20',5,NULL,NULL,0),
(1282,32,'060015','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1283,32,'060017','Diamond Plaza','2024-07-31 15:12:20',5,NULL,NULL,0),
(1284,32,'060018','Windsor','2024-07-31 15:12:20',5,NULL,NULL,0),
(1285,32,'060019','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1286,32,'060020','Embakasi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1287,32,'060021','Upper Hill','2024-07-31 15:12:20',5,NULL,NULL,0),
(1288,33,'061024','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(1289,33,'061019','Hurlingham','2024-07-31 15:12:20',5,NULL,NULL,0),
(1290,33,'061020','Riveroad','2024-07-31 15:12:20',5,NULL,NULL,0),
(1291,33,'061250','Ongata Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1292,33,'061022','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(1293,33,'061025','Embu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1294,33,'061016','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(1295,33,'061017','Naivasha','2024-07-31 15:12:20',5,NULL,NULL,0),
(1296,33,'061018','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(1297,33,'061100','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1298,33,'061200','Rehani House','2024-07-31 15:12:20',5,NULL,NULL,0),
(1299,33,'061210','Kenyatta Market','2024-07-31 15:12:20',5,NULL,NULL,0),
(1300,33,'061220','Gill House','2024-07-31 15:12:20',5,NULL,NULL,0),
(1301,33,'061230','Buru Buru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1302,33,'061260','Thika Road Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(1303,33,'061270','Sameer Business Park','2024-07-31 15:12:20',5,NULL,NULL,0),
(1304,33,'061280','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1305,33,'061300','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1306,33,'061310','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(1307,33,'061400','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1308,33,'061410','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1309,33,'061500','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(1310,33,'061510','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1311,33,'061520','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1312,33,'061600','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1313,33,'061023','Komarock','2024-07-31 15:12:20',5,NULL,NULL,0),
(1314,34,'062066','Garissa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1315,34,'062075','Gilgil','2024-07-31 15:12:20',5,NULL,NULL,0),
(1316,34,'062085','Homa Bay','2024-07-31 15:12:20',5,NULL,NULL,0),
(1317,34,'062095','Isiolo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1318,34,'062096','Iten','2024-07-31 15:12:20',5,NULL,NULL,0),
(1319,34,'062100','Kabarnet','2024-07-31 15:12:20',5,NULL,NULL,0),
(1320,34,'062107','Kajiado','2024-07-31 15:12:20',5,NULL,NULL,0),
(1321,34,'062109','Kakamega','2024-07-31 15:12:20',5,NULL,NULL,0),
(1322,34,'062111','Kangundo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1323,34,'062113','Kapenguria','2024-07-31 15:12:20',5,NULL,NULL,0),
(1324,34,'062115','Karuri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1325,34,'062116','Kapsabet','2024-07-31 15:12:20',5,NULL,NULL,0),
(1326,34,'062119','Karatina','2024-07-31 15:12:20',5,NULL,NULL,0),
(1327,34,'062121','Karen','2024-07-31 15:12:20',5,NULL,NULL,0),
(1328,34,'062128','Kericho','2024-07-31 15:12:20',5,NULL,NULL,0),
(1329,34,'062308','Naivasha','2024-07-31 15:12:20',5,NULL,NULL,0),
(1330,34,'062309','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1331,34,'062312','Nandi Hills','2024-07-31 15:12:20',5,NULL,NULL,0),
(1332,34,'062314','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(1333,34,'062315','Narok','2024-07-31 15:12:20',5,NULL,NULL,0),
(1334,34,'062327','Ngara Rd Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1335,34,'062329','Ngong','2024-07-31 15:12:20',5,NULL,NULL,0),
(1336,34,'062333','Nyahururu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1337,34,'062341','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1338,34,'062001','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1339,34,'062007','Athi River','2024-07-31 15:12:20',5,NULL,NULL,0),
(1340,34,'062013','Bomet','2024-07-31 15:12:20',5,NULL,NULL,0),
(1341,34,'062023','Bungoma','2024-07-31 15:12:20',5,NULL,NULL,0),
(1342,34,'062025','Busia','2024-07-31 15:12:20',5,NULL,NULL,0),
(1343,34,'062037','Chuka','2024-07-31 15:12:20',5,NULL,NULL,0),
(1344,34,'062047','Eastleigh','2024-07-31 15:12:20',5,NULL,NULL,0),
(1345,34,'062050','Eldama Ravine','2024-07-31 15:12:20',5,NULL,NULL,0),
(1346,34,'062051','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1347,34,'062056','Embu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1348,34,'062058','Enterprise Rd','2024-07-31 15:12:20',5,NULL,NULL,0),
(1349,34,'062249','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1350,34,'062272','Molo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1351,34,'062273','Savani Hse Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1352,34,'062291','Mumias','2024-07-31 15:12:20',5,NULL,NULL,0),
(1353,34,'062293','Muranga','2024-07-31 15:12:20',5,NULL,NULL,0),
(1354,34,'062298','Mwingi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1355,34,'062347','Nyamira','2024-07-31 15:12:20',5,NULL,NULL,0),
(1356,34,'062357','Oyugis','2024-07-31 15:12:20',5,NULL,NULL,0),
(1357,34,'062378','Ruiru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1358,34,'062387','Sare Awendo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1359,34,'062397','Siaya','2024-07-31 15:12:20',5,NULL,NULL,0),
(1360,34,'062409','Suna Migori','2024-07-31 15:12:20',5,NULL,NULL,0),
(1361,34,'062414','Taveta','2024-07-31 15:12:20',5,NULL,NULL,0),
(1362,34,'062416','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(1363,34,'062428','Ukunda','2024-07-31 15:12:20',5,NULL,NULL,0),
(1364,34,'062436','Viwandani','2024-07-31 15:12:20',5,NULL,NULL,0),
(1365,34,'062437','Voi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1366,34,'062440','Mwea','2024-07-31 15:12:20',5,NULL,NULL,0),
(1367,34,'062442','Watamu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1368,34,'062444','Webuye','2024-07-31 15:12:20',5,NULL,NULL,0),
(1369,34,'062448','Westlands Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1370,34,'062476','Emali','2024-07-31 15:12:20',5,NULL,NULL,0),
(1371,34,'062560','Chaani','2024-07-31 15:12:20',5,NULL,NULL,0),
(1372,34,'062592','Uthiru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1373,34,'062605','Canon Hse Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1374,34,'062705','Afya Hse Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1375,34,'062707','Githurai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1376,34,'062716','Mtwapa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1377,34,'062731','Moi Ave Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1378,34,'062133','Keruguya','2024-07-31 15:12:20',5,NULL,NULL,0),
(1379,34,'062135','Keroka','2024-07-31 15:12:20',5,NULL,NULL,0),
(1380,34,'062139','Kahancha','2024-07-31 15:12:20',5,NULL,NULL,0),
(1381,34,'062141','Kiambu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1382,34,'062142','Kibwezi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1383,34,'062151','Kikuyu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1384,34,'062152','Kilifi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1385,34,'062159','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(1386,34,'062161','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1387,34,'062163','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(1388,34,'062164','Kitui','2024-07-31 15:12:20',5,NULL,NULL,0),
(1389,34,'062198','Likoni','2024-07-31 15:12:20',5,NULL,NULL,0),
(1390,34,'062199','Limuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1391,34,'062202','Lodwar','2024-07-31 15:12:20',5,NULL,NULL,0),
(1392,34,'062208','Luanda','2024-07-31 15:12:20',5,NULL,NULL,0),
(1393,34,'062213','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(1394,34,'062222','Matuu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1395,34,'062223','Makueni','2024-07-31 15:12:20',5,NULL,NULL,0),
(1396,34,'062226','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1397,34,'062228','Mbale','2024-07-31 15:12:20',5,NULL,NULL,0),
(1398,34,'062232','Mariakani','2024-07-31 15:12:20',5,NULL,NULL,0),
(1399,34,'062236','Marsabit','2024-07-31 15:12:20',5,NULL,NULL,0),
(1400,34,'062239','Maua','2024-07-31 15:12:20',5,NULL,NULL,0),
(1401,34,'062746','NACICO Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1402,34,'062755','Ongata Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1403,34,'062771','Kisauni Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1404,34,'062782','Mlolongo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1405,34,'062785','Adams Acade Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1406,34,'062786','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(1407,34,'062787','Kariobangi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1408,34,'062794','Mbita','2024-07-31 15:12:20',5,NULL,NULL,0),
(1409,34,'062795','Bodo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1410,34,'062796','Maralal','2024-07-31 15:12:20',5,NULL,NULL,0),
(1411,34,'062797','Kawangware','2024-07-31 15:12:20',5,NULL,NULL,0),
(1412,35,'063064','Watamu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1413,35,'063065','Riverside','2024-07-31 15:12:20',5,NULL,NULL,0),
(1414,35,'063066','Rivaan Center','2024-07-31 15:12:20',5,NULL,NULL,0),
(1415,35,'063061','Narok','2024-07-31 15:12:20',5,NULL,NULL,0),
(1416,35,'063070','Mwanzi Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1417,35,'063069','Koinange Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(1418,35,'063071','Enterprise Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1419,35,'063072','Nkuruma Road Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1420,35,'063067','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1421,35,'063052','DTB Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1422,35,'063053','South C','2024-07-31 15:12:20',5,NULL,NULL,0),
(1423,35,'063054','Lavington','2024-07-31 15:12:20',5,NULL,NULL,0),
(1424,35,'063056','Biashara street, Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1425,35,'063059','Embu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1426,35,'063060','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(1427,35,'063027','Kakamega','2024-07-31 15:12:20',5,NULL,NULL,0),
(1428,35,'063028','Kericho','2024-07-31 15:12:20',5,NULL,NULL,0),
(1429,35,'063029','Upper Hill','2024-07-31 15:12:20',5,NULL,NULL,0),
(1430,35,'063030','Wabera Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(1431,35,'063031','Karen','2024-07-31 15:12:20',5,NULL,NULL,0),
(1432,35,'063032','Voi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1433,35,'063033','Shimanzi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1434,35,'063034','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1435,35,'063035','Diamond Plaza','2024-07-31 15:12:20',5,NULL,NULL,0),
(1436,35,'063036','crossroad','2024-07-31 15:12:20',5,NULL,NULL,0),
(1437,35,'063037','JKIA','2024-07-31 15:12:20',5,NULL,NULL,0),
(1438,35,'063038','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(1439,35,'063039','Migori Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1440,35,'063040','Madina Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(1441,35,'063000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1442,35,'063001','Nation Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1443,35,'063002','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1444,35,'063003','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1445,35,'063005','Parklands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1446,35,'063006','Westgate','2024-07-31 15:12:20',5,NULL,NULL,0),
(1447,35,'063008','Mombasa Rd','2024-07-31 15:12:20',5,NULL,NULL,0),
(1448,35,'063009','Ind Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(1449,35,'063010','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(1450,35,'063011','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1451,35,'063012','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(1452,35,'063013','Otc','2024-07-31 15:12:20',5,NULL,NULL,0),
(1453,35,'063041','Courtyard Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1454,35,'063042','Mtwapa Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1455,35,'063043','Lamu Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1456,35,'063044','Kilifi Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1457,35,'063045','Mariakani Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1458,35,'063046','Thika Road Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(1459,35,'063047','Ronald Ngala','2024-07-31 15:12:20',5,NULL,NULL,0),
(1460,35,'063048','Busia','2024-07-31 15:12:20',5,NULL,NULL,0),
(1461,35,'063049','West End Mall - Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1462,35,'063050','Tom Mboya','2024-07-31 15:12:20',5,NULL,NULL,0),
(1463,35,'063077','Imaara Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(1464,35,'063074','Kahawa Sukari','2024-07-31 15:12:20',5,NULL,NULL,0),
(1465,35,'063076','Kamakis','2024-07-31 15:12:20',5,NULL,NULL,0),
(1466,35,'063080','Greenspan Mall Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1467,35,'063079','Likoni Mall Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1468,35,'063075','Sarit Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1469,35,'063014','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1470,35,'063016','Changamwe','2024-07-31 15:12:20',5,NULL,NULL,0),
(1471,35,'063017','T-mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(1472,35,'063018','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1473,35,'063019','Village Market','2024-07-31 15:12:20',5,NULL,NULL,0),
(1474,35,'063020','Diani','2024-07-31 15:12:20',5,NULL,NULL,0),
(1475,35,'063021','Bungoma','2024-07-31 15:12:20',5,NULL,NULL,0),
(1476,35,'063022','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(1477,35,'063023','Prestige','2024-07-31 15:12:20',5,NULL,NULL,0),
(1478,35,'063024','Buru Buru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1479,35,'063025','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(1480,35,'063026','Jomo Kenyatta Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1481,35,'063078','Kayole Junction','2024-07-31 15:12:20',5,NULL,NULL,0),
(1482,35,'063081','Kiambu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1483,35,'063083','Kijabe Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(1484,35,'063085','Kenol Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1485,35,'063087','Ol-Kalou Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1486,35,'063090','Githurai Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1487,35,'063082','New Eastleigh Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1488,35,'063084','Baba Dogo Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1489,35,'063088','Ongata Rongai Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1490,36,'065005','Industrial Area Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1491,36,'065004','Eldoret Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1492,36,'065000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1493,36,'065001','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1494,36,'065002','Mayfair Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1495,36,'065003','Nyali','2024-07-31 15:12:20',5,NULL,NULL,0),
(1496,36,'065006','Upperhill','2024-07-31 15:12:20',5,NULL,NULL,0),
(1497,37,'066051','Sameer Park','2024-07-31 15:12:20',5,NULL,NULL,0),
(1498,37,'066052','River Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1499,37,'066053','Two Rivers','2024-07-31 15:12:20',5,NULL,NULL,0),
(1500,37,'066054','The Mall Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1501,37,'066000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1502,37,'066001','Main Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1503,37,'066002','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1504,37,'066003','Kenyatta Ave Nbi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1505,37,'066004','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1506,37,'066005','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1507,37,'066006','Buruburu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1508,37,'066007','Embu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1509,37,'066008','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1510,37,'066009','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1511,37,'066010','Kericho','2024-07-31 15:12:20',5,NULL,NULL,0),
(1512,37,'066011','Mlolongo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1513,37,'066012','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(1514,37,'066013','Kerugoya','2024-07-31 15:12:20',5,NULL,NULL,0),
(1515,37,'066014','Kenyatta Market','2024-07-31 15:12:20',5,NULL,NULL,0),
(1516,37,'066015','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(1517,37,'066016','CHUKA','2024-07-31 15:12:20',5,NULL,NULL,0),
(1518,37,'066017','Kitui','2024-07-31 15:12:20',5,NULL,NULL,0),
(1519,37,'066018','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(1520,37,'066019','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(1521,37,'066020','Kangemi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1522,37,'066021','Email','2024-07-31 15:12:20',5,NULL,NULL,0),
(1523,37,'066022','Naivasha','2024-07-31 15:12:20',5,NULL,NULL,0),
(1524,37,'066023','Nyahururu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1525,37,'066024','Isiolo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1526,37,'066025','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1527,37,'066026','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(1528,37,'066027','Kibwezi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1529,37,'066028','Bungoma','2024-07-31 15:12:20',5,NULL,NULL,0),
(1530,37,'066029','Kajiado','2024-07-31 15:12:20',5,NULL,NULL,0),
(1531,37,'066030','Nkubu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1532,37,'066031','Mtwapa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1533,37,'066032','Busia','2024-07-31 15:12:20',5,NULL,NULL,0),
(1534,37,'066033','Moi Nbi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1535,37,'066034','Mwea','2024-07-31 15:12:20',5,NULL,NULL,0),
(1536,37,'066035','Kengeleni','2024-07-31 15:12:20',5,NULL,NULL,0),
(1537,37,'066036','Kilimani','2024-07-31 15:12:20',5,NULL,NULL,0),
(1538,37,'066037','Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1539,37,'066100','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1540,37,'066058','Gikomba','2024-07-31 15:12:20',5,NULL,NULL,0),
(1541,37,'066059','Kamakis','2024-07-31 15:12:20',5,NULL,NULL,0),
(1542,38,'068175','Garden City','2024-07-31 15:12:20',5,NULL,NULL,0),
(1543,38,'068178','Wangige Sub Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1544,38,'068176','Mlolongo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1545,38,'068177','Embassy House','2024-07-31 15:12:20',5,NULL,NULL,0),
(1546,38,'068180','Kawangware sub Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1547,38,'068179','Utawala','2024-07-31 15:12:20',5,NULL,NULL,0),
(1548,38,'068190','Engineer','2024-07-31 15:12:20',5,NULL,NULL,0),
(1549,38,'068191','Njabini','2024-07-31 15:12:20',5,NULL,NULL,0),
(1550,38,'068011','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1551,38,'068012','Tom Mboya','2024-07-31 15:12:20',5,NULL,NULL,0),
(1552,38,'068013','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1553,38,'068014','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1554,38,'068015','Mama Ngina','2024-07-31 15:12:20',5,NULL,NULL,0),
(1555,38,'068016','Nyahururu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1556,38,'068017','Community','2024-07-31 15:12:20',5,NULL,NULL,0),
(1557,38,'068018','Community Corporate','2024-07-31 15:12:20',5,NULL,NULL,0),
(1558,38,'068019','Embu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1559,38,'068020','Naivasha','2024-07-31 15:12:20',5,NULL,NULL,0),
(1560,38,'068021','Chuka','2024-07-31 15:12:20',5,NULL,NULL,0),
(1561,38,'068084','Eastleigh','2024-07-31 15:12:20',5,NULL,NULL,0),
(1562,38,'068085','Namanga','2024-07-31 15:12:20',5,NULL,NULL,0),
(1563,38,'068086','Kajiado','2024-07-31 15:12:20',5,NULL,NULL,0),
(1564,38,'068087','Ruiru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1565,38,'068088','Otc','2024-07-31 15:12:20',5,NULL,NULL,0),
(1566,38,'068089','Kenol','2024-07-31 15:12:20',5,NULL,NULL,0),
(1567,38,'068090','Tala','2024-07-31 15:12:20',5,NULL,NULL,0),
(1568,38,'068091','Ngara','2024-07-31 15:12:20',5,NULL,NULL,0),
(1569,38,'068092','Nandi Hills','2024-07-31 15:12:20',5,NULL,NULL,0),
(1570,38,'068093','Githunguri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1571,38,'068094','Tea Room','2024-07-31 15:12:20',5,NULL,NULL,0),
(1572,38,'068095','Buru Buru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1573,38,'068096','Mbale','2024-07-31 15:12:20',5,NULL,NULL,0),
(1574,38,'068097','Siaya','2024-07-31 15:12:20',5,NULL,NULL,0),
(1575,38,'068098','Homa Bay','2024-07-31 15:12:20',5,NULL,NULL,0),
(1576,38,'068022','Muranga','2024-07-31 15:12:20',5,NULL,NULL,0),
(1577,38,'068023','Molo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1578,38,'068024','Harambee Avenu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1579,38,'068025','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1580,38,'068026','Kimathi Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(1581,38,'068027','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(1582,38,'068028','Kericho','2024-07-31 15:12:20',5,NULL,NULL,0),
(1583,38,'068029','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1584,38,'068030','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1585,38,'068031','Nakuru Kenyatta Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(1586,38,'068032','Kariobangi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1587,38,'068033','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(1588,38,'068034','Thika Kenyatta Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(1589,38,'068035','Knut House','2024-07-31 15:12:20',5,NULL,NULL,0),
(1590,38,'068036','Narok','2024-07-31 15:12:20',5,NULL,NULL,0),
(1591,38,'068037','Nkubu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1592,38,'068038','Mwea','2024-07-31 15:12:20',5,NULL,NULL,0),
(1593,38,'068039','Matuu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1594,38,'068040','Maua','2024-07-31 15:12:20',5,NULL,NULL,0),
(1595,38,'068041','Isiolo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1596,38,'068042','Kagio','2024-07-31 15:12:20',5,NULL,NULL,0),
(1597,38,'068043','Gikomba','2024-07-31 15:12:20',5,NULL,NULL,0),
(1598,38,'068044','Ukunda','2024-07-31 15:12:20',5,NULL,NULL,0),
(1599,38,'068045','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1600,38,'068046','Mombasa Digo Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1601,38,'068047','Moi Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(1602,38,'068048','Bungoma','2024-07-31 15:12:20',5,NULL,NULL,0),
(1603,38,'068049','Kapsabet','2024-07-31 15:12:20',5,NULL,NULL,0),
(1604,38,'068050','Kakamega','2024-07-31 15:12:20',5,NULL,NULL,0),
(1605,38,'068051','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(1606,38,'068052','Nyamira','2024-07-31 15:12:20',5,NULL,NULL,0),
(1607,38,'068053','Litein','2024-07-31 15:12:20',5,NULL,NULL,0),
(1608,38,'068054','Equity Centre Diaspora','2024-07-31 15:12:20',5,NULL,NULL,0),
(1609,38,'068055','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1610,38,'068056','Industrial Area Kenpipe Plaza','2024-07-31 15:12:20',5,NULL,NULL,0),
(1611,38,'068057','Kikuyu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1612,38,'068058','Garissa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1613,38,'068059','Mwingi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1614,38,'068060','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(1615,38,'068061','Ongata Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1616,38,'068062','Ol-kalao','2024-07-31 15:12:20',5,NULL,NULL,0),
(1617,38,'068063','Kawangware','2024-07-31 15:12:20',5,NULL,NULL,0),
(1618,38,'068064','Kiambu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1619,38,'068065','Kayole','2024-07-31 15:12:20',5,NULL,NULL,0),
(1620,38,'068066','Gatundu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1621,38,'068067','Wote','2024-07-31 15:12:20',5,NULL,NULL,0),
(1622,38,'068068','Mumias','2024-07-31 15:12:20',5,NULL,NULL,0),
(1623,38,'068069','Limuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1624,38,'068070','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(1625,38,'068071','Githurai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1626,38,'068072','Kitui','2024-07-31 15:12:20',5,NULL,NULL,0),
(1627,38,'068073','Ngong','2024-07-31 15:12:20',5,NULL,NULL,0),
(1628,38,'068074','Loitoktok','2024-07-31 15:12:20',5,NULL,NULL,0),
(1629,38,'068075','Bondo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1630,38,'068076','Mbita','2024-07-31 15:12:20',5,NULL,NULL,0),
(1631,38,'068077','Gilgil','2024-07-31 15:12:20',5,NULL,NULL,0),
(1632,38,'068078','Busia','2024-07-31 15:12:20',5,NULL,NULL,0),
(1633,38,'068079','Voi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1634,38,'068080','Enterprise Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1635,38,'068081','Equity Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1636,38,'068082','Donholm','2024-07-31 15:12:20',5,NULL,NULL,0),
(1637,38,'068083','Mukurwe-ini','2024-07-31 15:12:20',5,NULL,NULL,0),
(1638,38,'068006','Murarandia','2024-07-31 15:12:20',5,NULL,NULL,0),
(1639,38,'068007','Kangari','2024-07-31 15:12:20',5,NULL,NULL,0),
(1640,38,'068008','Othaya','2024-07-31 15:12:20',5,NULL,NULL,0),
(1641,38,'068009','Thika / Equity Plaza','2024-07-31 15:12:20',5,NULL,NULL,0),
(1642,38,'068010','Kerugoya','2024-07-31 15:12:20',5,NULL,NULL,0),
(1643,38,'068116','Migori','2024-07-31 15:12:20',5,NULL,NULL,0),
(1644,38,'068117','Kibera','2024-07-31 15:12:20',5,NULL,NULL,0),
(1645,38,'068118','Kasarani','2024-07-31 15:12:20',5,NULL,NULL,0),
(1646,38,'068119','Mtwapa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1647,38,'068120','Changamwe','2024-07-31 15:12:20',5,NULL,NULL,0),
(1648,38,'068121','Hola','2024-07-31 15:12:20',5,NULL,NULL,0),
(1649,38,'068122','Bomet','2024-07-31 15:12:20',5,NULL,NULL,0),
(1650,38,'068123','Kilgoris','2024-07-31 15:12:20',5,NULL,NULL,0),
(1651,38,'068124','Keroka','2024-07-31 15:12:20',5,NULL,NULL,0),
(1652,38,'068125','KAREN','2024-07-31 15:12:20',5,NULL,NULL,0),
(1653,38,'068126','KISUMU ANGAWA AVE','2024-07-31 15:12:20',5,NULL,NULL,0),
(1654,38,'068127','MPEKETONI','2024-07-31 15:12:20',5,NULL,NULL,0),
(1655,38,'068128','NAIROBI WEST','2024-07-31 15:12:20',5,NULL,NULL,0),
(1656,38,'068129','KENYATTA AVENUE','2024-07-31 15:12:20',5,NULL,NULL,0),
(1657,38,'068130','City Hall','2024-07-31 15:12:20',5,NULL,NULL,0),
(1658,38,'068131','Eldama Ravine','2024-07-31 15:12:20',5,NULL,NULL,0),
(1659,38,'068132','Embakasi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1660,38,'068133','KPCU','2024-07-31 15:12:20',5,NULL,NULL,0),
(1661,38,'068134','Ridgeways','2024-07-31 15:12:20',5,NULL,NULL,0),
(1662,38,'068135','Runyenjes Sub Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1663,38,'068136','Dadaad','2024-07-31 15:12:20',5,NULL,NULL,0),
(1664,38,'068137','Kangemi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1665,38,'068138','Nyali Centre Corporate','2024-07-31 15:12:20',5,NULL,NULL,0),
(1666,38,'068139','Kabarnet','2024-07-31 15:12:20',5,NULL,NULL,0),
(1667,38,'068140','Westlands Corporate','2024-07-31 15:12:20',5,NULL,NULL,0),
(1668,38,'068141','Lavington Corporate','2024-07-31 15:12:20',5,NULL,NULL,0),
(1669,38,'068142','Taita Taveta','2024-07-31 15:12:20',5,NULL,NULL,0),
(1670,38,'068143','Awendo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1671,38,'068144','Ruai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1672,38,'068145','Kilimani','2024-07-31 15:12:20',5,NULL,NULL,0),
(1673,38,'068146','Nakuru Westside Mall','2024-07-31 15:12:20',5,NULL,NULL,0),
(1674,38,'068147','Kilimani Supreme','2024-07-31 15:12:20',5,NULL,NULL,0),
(1675,38,'068148','JKIA Cargo Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1676,38,'068149','EPZ Athi River','2024-07-31 15:12:20',5,NULL,NULL,0),
(1677,38,'068150','Oyugis','2024-07-31 15:12:20',5,NULL,NULL,0),
(1678,38,'068151','Mayfair Supreme Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1679,38,'068152','Juja','2024-07-31 15:12:20',5,NULL,NULL,0),
(1680,38,'068153','Iten','2024-07-31 15:12:20',5,NULL,NULL,0),
(1681,38,'068154','Nyali Supreme Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1682,38,'068155','Thika Supreme Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1683,38,'068156','Mombasa Supreme Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1684,38,'068157','Kapsowar Sub-Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1685,38,'068158','Kwale','2024-07-31 15:12:20',5,NULL,NULL,0),
(1686,38,'068159','Lamu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1687,38,'068000','Equity Bank Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1688,38,'068001','Equity Bank Corporate','2024-07-31 15:12:20',5,NULL,NULL,0),
(1689,38,'068002','Equity Bank Fourways','2024-07-31 15:12:20',5,NULL,NULL,0),
(1690,38,'068003','Kangema','2024-07-31 15:12:20',5,NULL,NULL,0),
(1691,38,'068004','Karatina','2024-07-31 15:12:20',5,NULL,NULL,0),
(1692,38,'068005','Kiriaini','2024-07-31 15:12:20',5,NULL,NULL,0),
(1693,38,'068174','Ruaka','2024-07-31 15:12:20',5,NULL,NULL,0),
(1694,38,'068777','Equity Hapo Hapo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1695,38,'068099','Lodwar','2024-07-31 15:12:20',5,NULL,NULL,0),
(1696,38,'068100','Mandera','2024-07-31 15:12:20',5,NULL,NULL,0),
(1697,38,'068101','Marsabit','2024-07-31 15:12:20',5,NULL,NULL,0),
(1698,38,'068102','Moyale','2024-07-31 15:12:20',5,NULL,NULL,0),
(1699,38,'068103','Wajir','2024-07-31 15:12:20',5,NULL,NULL,0),
(1700,38,'068104','Meru Makutano','2024-07-31 15:12:20',5,NULL,NULL,0),
(1701,38,'068105','Malaba Town','2024-07-31 15:12:20',5,NULL,NULL,0),
(1702,38,'068106','Kilifi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1703,38,'068107','Kapenguria','2024-07-31 15:12:20',5,NULL,NULL,0),
(1704,38,'068108','Mombasa Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1705,38,'068109','Eldoret Market','2024-07-31 15:12:20',5,NULL,NULL,0),
(1706,38,'068110','Maralal','2024-07-31 15:12:20',5,NULL,NULL,0),
(1707,38,'068111','Kimende','2024-07-31 15:12:20',5,NULL,NULL,0),
(1708,38,'068112','Luanda','2024-07-31 15:12:20',5,NULL,NULL,0),
(1709,38,'068113','Ku Sub Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1710,38,'068114','Kengeleni','2024-07-31 15:12:20',5,NULL,NULL,0),
(1711,38,'068115','Nyeri Kimathi Way','2024-07-31 15:12:20',5,NULL,NULL,0),
(1712,38,'068160','Kenyatta Avenue Supreme','2024-07-31 15:12:20',5,NULL,NULL,0),
(1713,38,'068161','KPA Sub-Branch Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1714,38,'068162','Gigiri Supreme Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1715,38,'068163','Karen Supreme Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1716,38,'068164','Eldoret Supreme Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1717,38,'068165','Kakuma','2024-07-31 15:12:20',5,NULL,NULL,0),
(1718,38,'068166','Archers Post','2024-07-31 15:12:20',5,NULL,NULL,0),
(1719,38,'068167','Mutomo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1720,38,'068168','Kiserian Sub Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1721,38,'068169','Dagoretti Corner','2024-07-31 15:12:20',5,NULL,NULL,0),
(1722,38,'068170','Kisumu Supreme Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1723,38,'068171','Thika Makongeni','2024-07-31 15:12:20',5,NULL,NULL,0),
(1724,38,'068172','Kutus Sub - Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1725,38,'068173','Kibwezi Sub - Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1726,38,'068192','Kahawa West','2024-07-31 15:12:20',5,NULL,NULL,0),
(1727,38,'068194','Chaka','2024-07-31 15:12:20',5,NULL,NULL,0),
(1728,38,'068185','Isinya','2024-07-31 15:12:20',5,NULL,NULL,0),
(1729,38,'068187','Isibania','2024-07-31 15:12:20',5,NULL,NULL,0),
(1730,38,'068188','Kenyatta Market','2024-07-31 15:12:20',5,NULL,NULL,0),
(1731,38,'068189','Inland Container Depot (ICD) Embakasi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1732,38,'068182','Kagwe Sub - Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1733,38,'068181','Emali Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1734,38,'068183','Rumuruti Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1735,38,'068184','Sotik','2024-07-31 15:12:20',5,NULL,NULL,0),
(1736,38,'068186','Laare','2024-07-31 15:12:20',5,NULL,NULL,0),
(1737,39,'070030','Kangemi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1738,39,'070010','JKIA','2024-07-31 15:12:20',5,NULL,NULL,0),
(1739,39,'070020','Kutus','2024-07-31 15:12:20',5,NULL,NULL,0),
(1740,39,'070070','Isiolo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1741,39,'070000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1742,39,'070001','Kiambu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1743,39,'070002','Githunguri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1744,39,'070003','Sonalux','2024-07-31 15:12:20',5,NULL,NULL,0),
(1745,39,'070004','Gatundu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1746,39,'070005','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(1747,39,'070006','Muranga','2024-07-31 15:12:20',5,NULL,NULL,0),
(1748,39,'070007','Kangari','2024-07-31 15:12:20',5,NULL,NULL,0),
(1749,39,'070008','Kiria-ini','2024-07-31 15:12:20',5,NULL,NULL,0),
(1750,39,'070009','Kangema','2024-07-31 15:12:20',5,NULL,NULL,0),
(1751,39,'070011','Othaya','2024-07-31 15:12:20',5,NULL,NULL,0),
(1752,39,'070012','Kenyatta Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(1753,39,'070014','Cargen House','2024-07-31 15:12:20',5,NULL,NULL,0),
(1754,39,'070015','Laptrust','2024-07-31 15:12:20',5,NULL,NULL,0),
(1755,39,'070016','City Hall Annex','2024-07-31 15:12:20',5,NULL,NULL,0),
(1756,39,'070017','Kasarani','2024-07-31 15:12:20',5,NULL,NULL,0),
(1757,39,'070018','Nakuru Finance House','2024-07-31 15:12:20',5,NULL,NULL,0),
(1758,39,'070019','Nakuru Market','2024-07-31 15:12:20',5,NULL,NULL,0),
(1759,39,'070021','Dagoretti','2024-07-31 15:12:20',5,NULL,NULL,0),
(1760,39,'070022','Kericho','2024-07-31 15:12:20',5,NULL,NULL,0),
(1761,39,'070023','Nyahururu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1762,39,'070024','Ruiru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1763,39,'070025','Kisumu Reliance','2024-07-31 15:12:20',5,NULL,NULL,0),
(1764,39,'070026','Nyamira','2024-07-31 15:12:20',5,NULL,NULL,0),
(1765,39,'070027','Kisii','2024-07-31 15:12:20',5,NULL,NULL,0),
(1766,39,'070028','Kisumu Al Imran','2024-07-31 15:12:20',5,NULL,NULL,0),
(1767,39,'070029','Narok','2024-07-31 15:12:20',5,NULL,NULL,0),
(1768,39,'070031','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(1769,39,'070032','Thika Makongeni','2024-07-31 15:12:20',5,NULL,NULL,0),
(1770,39,'070033','Donholm','2024-07-31 15:12:20',5,NULL,NULL,0),
(1771,39,'070034','Utawala','2024-07-31 15:12:20',5,NULL,NULL,0),
(1772,39,'070035','Fourways Retail Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1773,39,'070036','Mlolongo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1774,39,'070037','Olkalou','2024-07-31 15:12:20',5,NULL,NULL,0),
(1775,39,'070038','Ktda Plaza','2024-07-31 15:12:20',5,NULL,NULL,0),
(1776,39,'070039','Gateway Mall Nairobi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1777,39,'070041','Kariobangi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1778,39,'070042','Gikomba Area 42','2024-07-31 15:12:20',5,NULL,NULL,0),
(1779,39,'070043','Sokoni','2024-07-31 15:12:20',5,NULL,NULL,0),
(1780,39,'070044','Kahawa West','2024-07-31 15:12:20',5,NULL,NULL,0),
(1781,39,'070045','Githurai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1782,39,'070046','Yaya','2024-07-31 15:12:20',5,NULL,NULL,0),
(1783,39,'070047','Limuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1784,39,'070066','Ongata Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1785,39,'070067','Kajiado','2024-07-31 15:12:20',5,NULL,NULL,0),
(1786,39,'070068','Fourways Corporate Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1787,39,'070069','Ngara','2024-07-31 15:12:20',5,NULL,NULL,0),
(1788,39,'070071','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(1789,39,'070072','Kitui','2024-07-31 15:12:20',5,NULL,NULL,0),
(1790,39,'070073','Mackakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(1791,39,'070074','Migori','2024-07-31 15:12:20',5,NULL,NULL,0),
(1792,39,'070075','Embu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1793,39,'070076','Mwea','2024-07-31 15:12:20',5,NULL,NULL,0),
(1794,39,'070077','Bungoma','2024-07-31 15:12:20',5,NULL,NULL,0),
(1795,39,'070078','Kakamega','2024-07-31 15:12:20',5,NULL,NULL,0),
(1796,39,'070079','Busia','2024-07-31 15:12:20',5,NULL,NULL,0),
(1797,39,'070081','Mumias','2024-07-31 15:12:20',5,NULL,NULL,0),
(1798,39,'070082','Eldoret West','2024-07-31 15:12:20',5,NULL,NULL,0),
(1799,39,'070083','Molo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1800,39,'070084','Bomet','2024-07-31 15:12:20',5,NULL,NULL,0),
(1801,39,'070085','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1802,39,'070086','Maua','2024-07-31 15:12:20',5,NULL,NULL,0),
(1803,39,'070087','Litein','2024-07-31 15:12:20',5,NULL,NULL,0),
(1804,39,'070088','Wote','2024-07-31 15:12:20',5,NULL,NULL,0),
(1805,39,'070089','Bamburi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1806,39,'070091','Ukunda','2024-07-31 15:12:20',5,NULL,NULL,0),
(1807,39,'070092','Digo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1808,39,'070093','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(1809,39,'070094','Mtwapa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1810,39,'070095','Mombasa Nkrumah Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1811,39,'070096','Mombasa Jomo Kenyatta Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(1812,39,'070097','Kapsabet','2024-07-31 15:12:20',5,NULL,NULL,0),
(1813,39,'070098','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1814,39,'070102','Kikuyu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1815,39,'070048','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1816,39,'070049','Kagwe','2024-07-31 15:12:20',5,NULL,NULL,0),
(1817,39,'070051','Banana','2024-07-31 15:12:20',5,NULL,NULL,0),
(1818,39,'070052','Ruaka','2024-07-31 15:12:20',5,NULL,NULL,0),
(1819,39,'070053','Naivasha','2024-07-31 15:12:20',5,NULL,NULL,0),
(1820,39,'070054','Chuka','2024-07-31 15:12:20',5,NULL,NULL,0),
(1821,39,'070055','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1822,39,'070056','Karatina','2024-07-31 15:12:20',5,NULL,NULL,0),
(1823,39,'070057','Kerugoya','2024-07-31 15:12:20',5,NULL,NULL,0),
(1824,39,'070058','Tom Mboya','2024-07-31 15:12:20',5,NULL,NULL,0),
(1825,39,'070059','River Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1826,39,'070061','Kayole','2024-07-31 15:12:20',5,NULL,NULL,0),
(1827,39,'070062','Nkubu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1828,39,'070063','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1829,39,'070064','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(1830,39,'070065','Ktda Plaza Corporate','2024-07-31 15:12:20',5,NULL,NULL,0),
(1831,39,'070703','Stima Sacco Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1832,39,'070099','Eastleigh Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1833,39,'070101','Wangige -Kiambu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1834,40,'072019','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1835,40,'072020','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1836,40,'072000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1837,40,'072001','Central Clearing Centre','2024-07-31 15:12:20',5,NULL,NULL,0),
(1838,40,'072002','Upperhill','2024-07-31 15:12:20',5,NULL,NULL,0),
(1839,40,'072003','Eastleigh','2024-07-31 15:12:20',5,NULL,NULL,0),
(1840,40,'072004','Kenyatta Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(1841,40,'072005','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1842,40,'072006','Garissa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1843,40,'072007','Lamu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1844,40,'072008','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1845,40,'072009','Muthaiga','2024-07-31 15:12:20',5,NULL,NULL,0),
(1846,40,'072010','Bondeni','2024-07-31 15:12:20',5,NULL,NULL,0),
(1847,40,'072011','Eastleigh 7th Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(1848,40,'072012','Eastleigh Athumani Kipanga Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(1849,40,'072014','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(1850,40,'072015','Jomo Kenyatta Avenue','2024-07-31 15:12:20',5,NULL,NULL,0),
(1851,40,'072017','Mombasa Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1852,40,'072018','Annisaa Bondeni','2024-07-31 15:12:20',5,NULL,NULL,0),
(1853,41,'074001','Wabera Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(1854,41,'074002','Eastleigh 1','2024-07-31 15:12:20',5,NULL,NULL,0),
(1855,41,'074003','Mombasa 1','2024-07-31 15:12:20',5,NULL,NULL,0),
(1856,41,'074004','Garissa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1857,41,'074005','Eastleigh 2 - General Waruinge','2024-07-31 15:12:20',5,NULL,NULL,0),
(1858,41,'074006','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1859,41,'074007','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1860,41,'074008','Kimathi Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(1861,41,'074009','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1862,41,'074010','South C','2024-07-31 15:12:20',5,NULL,NULL,0),
(1863,41,'074011','Industrial Area','2024-07-31 15:12:20',5,NULL,NULL,0),
(1864,41,'074012','Masalani','2024-07-31 15:12:20',5,NULL,NULL,0),
(1865,41,'074013','Habasweni','2024-07-31 15:12:20',5,NULL,NULL,0),
(1866,41,'074014','Wajir','2024-07-31 15:12:20',5,NULL,NULL,0),
(1867,41,'074015','Moyale','2024-07-31 15:12:20',5,NULL,NULL,0),
(1868,41,'074016','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1869,41,'074017','Imaara Building','2024-07-31 15:12:20',5,NULL,NULL,0),
(1870,41,'074018','Lunga Lunga','2024-07-31 15:12:20',5,NULL,NULL,0),
(1871,41,'074019','Isiolo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1872,41,'074020','Mihrab','2024-07-31 15:12:20',5,NULL,NULL,0),
(1873,41,'074999','Head Office/clearing Center','2024-07-31 15:12:20',5,NULL,NULL,0),
(1874,42,'075004','Eastleigh','2024-07-31 15:12:20',5,NULL,NULL,0),
(1875,42,'075005','Bondeni','2024-07-31 15:12:20',5,NULL,NULL,0),
(1876,42,'075000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1877,42,'075006','Banda Street','2024-07-31 15:12:20',5,NULL,NULL,0),
(1878,42,'075003','Moi Avenue Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1879,42,'075001','Upper Hill Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1880,42,'075002','Sarit Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1881,43,'076005','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1882,43,'076004','Mombasa','2024-07-31 15:12:20',5,NULL,NULL,0),
(1883,43,'076003','Upper Hill','2024-07-31 15:12:20',5,NULL,NULL,0),
(1884,43,'076099','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1885,43,'076001','Westlands','2024-07-31 15:12:20',5,NULL,NULL,0),
(1886,43,'076002','Enterprise Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1887,44,'078001','Kakamega Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1888,44,'078002','Eldoret Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1889,44,'078003','Nyeri Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1890,44,'078004','Mombasa Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1891,44,'078005','River Rd Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1892,44,'078006','Malindi Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1893,44,'078007','Kericho Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1894,44,'078008','Machakos Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1895,44,'078009','Embu Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1896,44,'078010','Kisii Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1897,44,'078011','Nanyuki Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1898,44,'078012','Migori Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1899,44,'078013','Thika Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1900,44,'078014','Kitale Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1901,44,'078000','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1902,44,'078023','Kitui','2024-07-31 15:12:20',5,NULL,NULL,0),
(1903,44,'078015','Nakuru Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1904,44,'078016','Emali Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1905,44,'078017','Voi Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1906,44,'078018','Kisumu Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1907,44,'078019','Meru Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1908,44,'078020','Diani Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1909,44,'078021','Upperhill Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1910,44,'078022','Naivasha Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1911,44,'078024','Busia Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1912,44,'078027','Kariobangi Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1913,44,'078028','Bungoma Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1914,44,'078029','Bomet Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1915,44,'078031','Kawangware Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1916,44,'078032','Gikomba Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1917,44,'078033','Kiambu Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1918,44,'078034','Rongai Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1919,44,'078041','Marsabit Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1920,44,'078043','Lodwar Branch','2024-07-31 15:12:20',5,NULL,NULL,0),
(1921,45,'079003','Kariobangi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1922,45,'079004','Githurai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1923,45,'079046','Kawangware','2024-07-31 15:12:20',5,NULL,NULL,0),
(1924,45,'079047','Kayole','2024-07-31 15:12:20',5,NULL,NULL,0),
(1925,45,'079048','Matuu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1926,45,'079049','Mwea','2024-07-31 15:12:20',5,NULL,NULL,0),
(1927,45,'079050','Makutano','2024-07-31 15:12:20',5,NULL,NULL,0),
(1928,45,'079051','Mumias','2024-07-31 15:12:20',5,NULL,NULL,0),
(1929,45,'079052','Kiserian','2024-07-31 15:12:20',5,NULL,NULL,0),
(1930,45,'079053','Rongai','2024-07-31 15:12:20',5,NULL,NULL,0),
(1931,45,'079055','Migori','2024-07-31 15:12:20',5,NULL,NULL,0),
(1932,45,'079062','Kilifi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1933,45,'079080','Kibera','2024-07-31 15:12:20',5,NULL,NULL,0),
(1934,45,'079084','Moi Avenue MSA','2024-07-31 15:12:20',5,NULL,NULL,0),
(1935,45,'079079','Kimathi St','2024-07-31 15:12:20',5,NULL,NULL,0),
(1936,45,'079005','Machakos','2024-07-31 15:12:20',5,NULL,NULL,0),
(1937,45,'079006','Ngong Road','2024-07-31 15:12:20',5,NULL,NULL,0),
(1938,45,'079002','OTC','2024-07-31 15:12:20',5,NULL,NULL,0),
(1939,45,'079007','Kiambu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1940,45,'079008','Nakuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1941,45,'079009','Nyahururu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1942,45,'079010','Molo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1943,45,'079013','Naivasha','2024-07-31 15:12:20',5,NULL,NULL,0),
(1944,45,'079015','Eldoret','2024-07-31 15:12:20',5,NULL,NULL,0),
(1945,45,'079016','Bungoma','2024-07-31 15:12:20',5,NULL,NULL,0),
(1946,45,'079017','Kitale','2024-07-31 15:12:20',5,NULL,NULL,0),
(1947,45,'079018','Mois Bridge','2024-07-31 15:12:20',5,NULL,NULL,0),
(1948,45,'079019','Kisumu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1949,45,'079020','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1950,45,'079021','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(1951,45,'079022','Meru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1952,45,'079025','Malindi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1953,45,'079027','Kitengela','2024-07-31 15:12:20',5,NULL,NULL,0),
(1954,45,'079023','Embu','2024-07-31 15:12:20',5,NULL,NULL,0),
(1955,45,'079024','Mombasa Central','2024-07-31 15:12:20',5,NULL,NULL,0),
(1956,45,'079029','Narok','2024-07-31 15:12:20',5,NULL,NULL,0),
(1957,45,'079031','Kabarnet','2024-07-31 15:12:20',5,NULL,NULL,0),
(1958,45,'079032','Karatina','2024-07-31 15:12:20',5,NULL,NULL,0),
(1959,45,'079035','Muranga','2024-07-31 15:12:20',5,NULL,NULL,0),
(1960,45,'079036','Nanyuki','2024-07-31 15:12:20',5,NULL,NULL,0),
(1961,45,'079039','Maua','2024-07-31 15:12:20',5,NULL,NULL,0),
(1962,45,'079042','Litein','2024-07-31 15:12:20',5,NULL,NULL,0),
(1963,45,'079043','Kengeleni','2024-07-31 15:12:20',5,NULL,NULL,0),
(1964,45,'079083','Jevanjee','2024-07-31 15:12:20',5,NULL,NULL,0),
(1965,45,'079034','Kitui','2024-07-31 15:12:20',5,NULL,NULL,0),
(1966,45,'079033','Mwingi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1967,45,'079041','Kakamega','2024-07-31 15:12:20',5,NULL,NULL,0),
(1968,45,'079011','Bomet','2024-07-31 15:12:20',5,NULL,NULL,0),
(1969,45,'079044','Changamwe','2024-07-31 15:12:20',5,NULL,NULL,0),
(1970,45,'079058','Ukunda','2024-07-31 15:12:20',5,NULL,NULL,0),
(1971,45,'079054','Bondo','2024-07-31 15:12:20',5,NULL,NULL,0),
(1972,45,'079086','Gikomba','2024-07-31 15:12:20',5,NULL,NULL,0),
(1973,45,'079056','Ugunja','2024-07-31 15:12:20',5,NULL,NULL,0),
(1974,45,'079065','Kapenguria','2024-07-31 15:12:20',5,NULL,NULL,0),
(1975,45,'079045','Voi','2024-07-31 15:12:20',5,NULL,NULL,0),
(1976,45,'079085','Homabay','2024-07-31 15:12:20',5,NULL,NULL,0),
(1977,45,'079074','Busia','2024-07-31 15:12:20',5,NULL,NULL,0),
(1978,45,'079060','Limuru','2024-07-31 15:12:20',5,NULL,NULL,0),
(1979,45,'079012','Kericho','2024-07-31 15:12:20',5,NULL,NULL,0),
(1980,46,'080001','Head Office','2024-07-31 15:12:20',5,NULL,NULL,0),
(1981,46,'080002','Cardinal Otunga Plaza','2024-07-31 15:12:20',5,NULL,NULL,0),
(1982,46,'080003','Cardinal Otunga Annex','2024-07-31 15:12:20',5,NULL,NULL,0),
(1983,46,'080004','Kawangware','2024-07-31 15:12:20',5,NULL,NULL,0),
(1984,46,'080005','Donholm','2024-07-31 15:12:20',5,NULL,NULL,0),
(1985,46,'080006','Thika','2024-07-31 15:12:20',5,NULL,NULL,0),
(1986,46,'080007','Karuri','2024-07-31 15:12:20',5,NULL,NULL,0),
(1987,46,'080008','Karen','2024-07-31 15:12:20',5,NULL,NULL,0),
(1988,46,'080009','Nyeri','2024-07-31 15:12:20',5,NULL,NULL,0);

/*Table structure for table `banks` */

DROP TABLE IF EXISTS `banks`;

CREATE TABLE `banks` (
  `bankid` int(11) NOT NULL AUTO_INCREMENT,
  `bankcode` varchar(50) DEFAULT NULL,
  `bankname` varchar(50) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedy` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`bankid`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `banks` */

insert  into `banks`(`bankid`,`bankcode`,`bankname`,`dateadded`,`addedby`,`datedeleted`,`deletedy`,`deleted`) values 
(1,'001','KCB','2024-05-17 09:01:34',5,NULL,NULL,0),
(2,'002','Standard Chartered Bank Kenya Ltd','2024-05-17 09:05:38',5,NULL,NULL,0),
(5,'003','Absa Bank Kenya Plc','2024-05-23 12:21:42',5,NULL,NULL,0),
(6,'005','Bank of India','2024-05-23 12:22:06',5,NULL,NULL,0),
(7,'012','National Bank of Kenya','2024-08-09 13:46:59',5,NULL,NULL,0),
(8,'006','Bank of Baroda(Kenya Ltd)','2024-07-31 14:29:56',5,NULL,NULL,0),
(9,'007','NCBA Bank Kenya Plc','2024-07-31 14:29:56',5,NULL,NULL,0),
(10,'009','Central Bank Of Kenya','2024-07-31 14:29:56',5,NULL,NULL,0),
(11,'010','Prime Bank Limited','2024-07-31 14:29:56',5,NULL,NULL,0),
(12,'011','Co-operative Bank of Kenya Limited','2024-07-31 14:29:56',5,NULL,NULL,0),
(13,'014','M-Oriental Bank Limited','2024-07-31 14:29:56',5,NULL,NULL,0),
(14,'016','CITI BANK N A','2024-07-31 14:29:56',5,NULL,NULL,0),
(15,'017','Habib Bank AG Zurich','2024-07-31 14:29:56',5,NULL,NULL,0),
(16,'018','Middle East Bank Kenya Limited','2024-07-31 14:29:56',5,NULL,NULL,0),
(17,'019','Bank of  Africa Kenya Limited','2024-07-31 14:29:56',5,NULL,NULL,0),
(18,'023','Consolidated Bank of Kenya Ltd','2024-07-31 14:29:56',5,NULL,NULL,0),
(19,'025','Credit Bank PLC','2024-07-31 14:29:56',5,NULL,NULL,0),
(20,'026','Access Bank Kenya PLC','2024-07-31 14:29:56',5,NULL,NULL,0),
(21,'031','Stanbic Bank Plc','2024-07-31 14:29:56',5,NULL,NULL,0),
(22,'035','African Banking Corporation Limited','2024-07-31 14:29:56',5,NULL,NULL,0),
(23,'043','ECO Bank Kenya LTD','2024-07-31 14:29:56',5,NULL,NULL,0),
(24,'049','Spire Bank','2024-07-31 14:29:56',5,NULL,NULL,0),
(25,'050','Paramount Bank Limited','2024-07-31 14:29:56',5,NULL,NULL,0),
(26,'051','Kingdom Bank Limited','2024-07-31 14:29:56',5,NULL,NULL,0),
(27,'053','Guaranty Trust Bank ( Kenya) Ltd','2024-07-31 14:29:56',5,NULL,NULL,0),
(28,'054','Victoria Commercial Bank','2024-07-31 14:29:56',5,NULL,NULL,0),
(29,'055','Guardian Bank Limited','2024-07-31 14:29:56',5,NULL,NULL,0),
(30,'057','I&M BANK (KENYA) LTD','2024-07-31 14:29:56',5,NULL,NULL,0),
(31,'059','Development Bank of Kenya Limited','2024-07-31 14:29:56',5,NULL,NULL,0),
(32,'060','State Bank of Mauritius Kenya','2024-07-31 14:29:56',5,NULL,NULL,0),
(33,'061','Housing Finance Bank','2024-07-31 14:29:56',5,NULL,NULL,0),
(34,'062','Kenya Post Office Savings Bank','2024-07-31 14:29:56',5,NULL,NULL,0),
(35,'063','Diamond Trust Bank Limited','2024-07-31 14:29:56',5,NULL,NULL,0),
(36,'065','Mayfair CIB Bank','2024-07-31 14:29:56',5,NULL,NULL,0),
(37,'066','Sidian Bank Limited','2024-07-31 14:29:56',5,NULL,NULL,0),
(38,'068','Equity Bank Limited','2024-07-31 14:29:56',5,NULL,NULL,0),
(39,'070','Family Bank Ltd','2024-07-31 14:29:56',5,NULL,NULL,0),
(40,'072','Gulf African Bank Ltd','2024-07-31 14:29:56',5,NULL,NULL,0),
(41,'074','Premier Bank Kenya Limited','2024-07-31 14:29:56',5,NULL,NULL,0),
(42,'075','DIB Bank Kenya Limited','2024-07-31 14:29:56',5,NULL,NULL,0),
(43,'076','UBA Kenya Bank Ltd','2024-07-31 14:29:56',5,NULL,NULL,0),
(44,'078','Kenya Women Microfinance Bank','2024-07-31 14:29:56',5,NULL,NULL,0),
(45,'079','Faulu Microfinance Bank Ltd','2024-07-31 14:29:56',5,NULL,NULL,0),
(46,'080','Caritas Microfinance Bank Ltd','2024-07-31 14:29:56',5,NULL,NULL,0);

/*Table structure for table `chargeableitems` */

DROP TABLE IF EXISTS `chargeableitems`;

CREATE TABLE `chargeableitems` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(50) DEFAULT NULL,
  `recurring` tinyint(1) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `refundable` tinyint(1) DEFAULT NULL,
  `percentage` tinyint(1) DEFAULT NULL,
  `percentageitemid` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `chargeableitems` */

insert  into `chargeableitems`(`itemid`,`itemname`,`recurring`,`amount`,`refundable`,`percentage`,`percentageitemid`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,'Rent',0,0.00,0,0,0,'2024-01-04 11:02:43',5,1,'2024-01-04 11:33:04',5),
(2,'Rent Deposit',0,100.00,1,1,11,'2024-01-04 11:24:42',5,0,NULL,NULL),
(3,'Water Bill',1,0.00,0,0,0,'2024-01-04 11:24:54',5,0,NULL,NULL),
(4,'Electricity',1,0.00,0,0,0,'2024-01-04 11:25:02',5,0,NULL,NULL),
(5,'Electricity Deposit',0,2000.00,1,1,4,'2024-01-04 11:28:38',5,0,NULL,NULL),
(6,'Water Bill Deposit',0,2000.00,1,1,3,'2024-01-04 11:29:09',5,0,NULL,NULL),
(7,'Garbage Collection',1,200.00,0,0,0,'2024-01-04 11:29:21',5,0,NULL,NULL),
(8,'Security',1,200.00,0,0,0,'2024-01-04 11:29:27',5,0,NULL,NULL),
(9,'Common Lighting',1,0.00,0,0,0,'2024-01-04 11:29:34',5,1,'2024-01-04 12:02:46',5),
(10,'Test entry',0,0.00,0,0,0,'2024-01-04 12:03:50',5,1,'2024-03-26 11:33:31',5),
(11,'Rent Monthly',1,0.00,0,0,0,'2024-03-26 09:40:08',5,0,NULL,NULL),
(12,'Agreement Fees',0,1500.00,0,0,2,'2024-10-30 12:05:10',5,0,NULL,NULL);

/*Table structure for table `courselevels` */

DROP TABLE IF EXISTS `courselevels`;

CREATE TABLE `courselevels` (
  `levelid` int(11) NOT NULL AUTO_INCREMENT,
  `levelname` varchar(50) DEFAULT NULL,
  `hierarchy` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`levelid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `courselevels` */

insert  into `courselevels`(`levelid`,`levelname`,`hierarchy`,`deleted`) values 
(1,'KCPE',1,0),
(2,'KCSE',2,0),
(3,'Craft Certificate',3,0),
(4,'Certificate',4,0),
(5,'Diploma',5,0),
(6,'Higher Diploma',6,0),
(7,'Bachelors Degree',7,0),
(8,'Masters Degree',8,0),
(9,'PhD',9,0),
(10,'Other',0,0);

/*Table structure for table `creditors` */

DROP TABLE IF EXISTS `creditors`;

CREATE TABLE `creditors` (
  `creditorid` int(11) NOT NULL AUTO_INCREMENT,
  `referenceno` varchar(50) DEFAULT NULL,
  `creditorname` varchar(50) DEFAULT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `physicaladdress` varchar(100) DEFAULT NULL,
  `postaladdress` varchar(50) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `postalcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `emailaddress` varchar(100) DEFAULT NULL,
  `payrollcreditor` tinyint(1) DEFAULT 0,
  `regularcreditor` tinyint(1) DEFAULT 0,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`creditorid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `creditors` */

insert  into `creditors`(`creditorid`,`referenceno`,`creditorname`,`shortname`,`physicaladdress`,`postaladdress`,`town`,`postalcode`,`telephone`,`emailaddress`,`payrollcreditor`,`regularcreditor`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,'A00567','Kenya Revenue Authority','KRA','Times Tower, Haile Sellasie Avenue, Nairobi','52428','00200, Nairobi',NULL,'0727709772','akellorich@gmail.com',1,0,'2024-06-09 20:35:46',5,0,NULL,NULL),
(2,'N001653','National Social Security Fund','NSSF','NSSF Building, Upper Hill Nairobi Kenya','52428','Nairobi, 00200',NULL,'0727709773','akellorich@yahoo.com',1,0,'2024-06-09 20:39:10',5,0,NULL,NULL),
(3,'NH0813','National Hospital Insurance Fund','NHIF','NHIF Building, Community Area, Ragati Road​','30443 - 00100','Nairobi, Kenya',NULL,'0800720601','info@nhif.or.ke',1,0,'2024-06-09 20:41:46',5,0,NULL,NULL),
(4,'SC001','Community Sacco Ltd','Community','Ambassador Building, 3rd Floor Suite 501','56987, 00100','Nairobi',NULL,'0727709774','communitysacco@gmail.com',1,0,'2024-06-09 20:43:16',5,1,'2024-06-09 20:45:31',5),
(5,'KCB001','Kenya Commercial Bank','KCB','Kencom House Building','48400-00100','Nairobi Kenya',NULL,'0711087000','info@kcb.co.ke',1,0,'2024-06-09 20:50:12',5,0,NULL,NULL),
(6,'COO1098','Cooperative Bank of Kenya Ltd','Coop Bank','Co-operative House, Haile Selassie Avenue, Nairobi, Kenya','48231 - 00100','Nairobi, kenya',NULL,'020 277 6000','customerservice@co-opbank.co.ke',1,0,'2024-06-09 20:52:18',5,0,NULL,NULL),
(7,'JB02943','Jubilee Insurance','Jubilee','Jubilee Insurance House, Wabera Street, CBD, Nairobi','48597, 00100','Nairobi, Kenya',NULL,'0709949000','info@JubileeKenya.com',1,0,'2024-06-09 20:54:18',5,0,NULL,NULL),
(8,'PL001','Polytech Sacco Limited','Poltech','Technical University of Kenya, haile Sellasie Avenue','52428, 00200','Nairobi',NULL,'08976756','poltechsacco@gmail.com',1,0,'2024-06-10 19:06:11',5,0,NULL,NULL),
(9,'MW001','Mwalimu national sacco','Mwalimu','Tom Mboya Street Nairobi','59847','Nairobi, Kenya',NULL,'0792345678','mwalimunational@gmail.com',1,0,'2024-06-12 17:15:35',5,0,NULL,NULL);

/*Table structure for table `departments` */

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `departmentid` int(50) NOT NULL AUTO_INCREMENT,
  `departmentname` varchar(50) DEFAULT NULL,
  `departmenthead` int(50) DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `addedby` int(50) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(50) DEFAULT NULL,
  PRIMARY KEY (`departmentid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `departments` */

insert  into `departments`(`departmentid`,`departmentname`,`departmenthead`,`extension`,`addedby`,`dateadded`,`deleted`,`datedeleted`,`deletedby`) values 
(1,'Finance',0,'254',5,'2024-05-30 20:20:40',0,NULL,NULL),
(2,'HR',0,'254',5,'2024-05-30 20:20:57',0,NULL,NULL),
(3,'admin',0,'254',5,'2024-05-30 20:24:59',1,'2024-06-13 20:15:35',5),
(4,'exams',0,'254',5,'2024-05-30 20:26:04',1,'2024-06-13 20:15:37',5),
(5,'salary',0,'254',5,'2024-05-30 20:27:12',1,'2024-06-13 20:15:44',5),
(6,'TVET',0,'254',5,'2024-05-30 20:28:10',1,'2024-06-13 20:15:49',5),
(7,'PROFESSSORTS',0,'254',5,'2024-05-30 20:42:32',1,'2024-06-13 20:15:47',5),
(8,'transport',0,'254',5,'2024-05-31 08:54:19',1,'2024-06-13 20:15:52',5),
(9,'Test Department',0,'',5,'2024-06-13 20:09:40',1,'2024-06-13 20:15:23',5),
(10,'SCIT',0,'12345',5,'2024-06-13 20:19:33',0,NULL,NULL),
(11,'Test1 Department',0,'',5,'2024-06-14 16:01:15',1,'2024-06-14 16:01:20',5),
(12,'ICT',0,'',5,'2024-06-20 18:26:41',0,NULL,NULL);

/*Table structure for table `disciplinarycategories` */

DROP TABLE IF EXISTS `disciplinarycategories`;

CREATE TABLE `disciplinarycategories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(100) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `disciplinarycategories` */

insert  into `disciplinarycategories`(`categoryid`,`categoryname`,`description`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,'Attendance and Punctuality Issue','Absenteeism: Frequent or unauthorized absences from work.\nTardiness: Regular lateness or failure to report to work on time.\nEarly Departure: Leaving work before the scheduled end time without authorization.','2024-08-24 13:23:27',NULL,0,NULL,NULL),
(2,'Behavioral Misconduct','Insubordination: Refusing to follow legitimate instructions from a supervisor or manager.\nDisrespectful Behavior: Rudeness or inappropriate communication with colleagues, supervisors, or clients.\nHarassment: Engaging in sexual harassment, bullying, or other forms of harassment in the workplace.\nDiscrimination: Treating colleagues or customers unfairly based on race, gender, religion, age, etc.\nWorkplace Violence: Physical altercations, threats, or intimidation toward others in the workplace.','2024-08-24 13:24:01',NULL,0,NULL,NULL),
(3,'Performance-Related Issue','Negligence: Careless or inadequate performance of duties leading to errors or safety risks.\nIncompetence: Failure to meet performance standards or the inability to perform job duties effectively.\nInattentiveness: Lack of focus or attention to work tasks, leading to mistakes or reduced productivity.','2024-08-24 13:24:25',NULL,0,NULL,NULL),
(4,'Integrity and Ethical Violation','Dishonesty: Lying, falsifying records, or misrepresenting information.\nTheft or Fraud: Stealing company property, embezzling funds, or engaging in fraudulent activities.\nConflict of Interest: Engaging in activities that create a conflict with the interests of the employer.\nBreach of Confidentiality: Unauthorized disclosure of company or client information.','2024-08-24 13:24:50',NULL,0,NULL,NULL),
(5,'Policy and Procedure Violation','Violation of Company Policies: Breaking established rules, such as IT policies, dress code, etc.\nSafety Violations: Failing to adhere to safety guidelines and procedures, putting oneself or others at risk.\nSubstance Abuse: Use of drugs or alcohol at work, or being under the influence while on duty.','2024-08-24 13:25:25',NULL,0,NULL,NULL),
(6,'Absence Without Leave (AWOL)','Unauthorized Absence: Failing to report to work without notifying the employer or obtaining approval.','2024-08-24 13:25:47',NULL,0,NULL,NULL),
(7,'Misuse of Company Resources','Misuse of Company Time: Engaging in non-work-related activities during work hours.\nMisuse of Company Property: Using company resources or equipment for personal purposes without permission.\nAbuse of IT Systems: Unauthorized access, downloading inappropriate content, or using company systems for illegal activities.','2024-08-24 13:26:26',NULL,0,NULL,NULL),
(8,'Professionalism and Conduct','Unprofessional Conduct: Behavior that is deemed unprofessional or damaging to the company’s reputation.\nPoor Customer Service: Inadequate handling of customer interactions leading to complaints or dissatisfaction.','2024-08-24 13:26:52',NULL,0,NULL,NULL),
(9,'Legal and Regulatory Violation','Non-Compliance with Laws: Engaging in actions that violate legal or regulatory requirements.\nFailure to Report: Not reporting incidents, accidents, or violations that should be disclosed to management or authorities.','2024-08-24 13:27:17',NULL,0,NULL,NULL),
(10,'Gross Misconduct','Serious offenses: Actions that are severe enough to warrant immediate dismissal, such as serious breaches of trust, criminal activity, or gross negligence.','2024-08-24 13:27:49',NULL,0,NULL,NULL),
(11,'Cybersecurity Violation','Data Breaches: Inadvertently or deliberately causing data breaches.\nUnauthorized Access: Accessing confidential information or systems without proper authorization.','2024-08-24 13:28:12',NULL,0,NULL,NULL),
(12,'Health and Safety Violation','Endangering Others: Failing to follow health and safety protocols, leading to risk or harm to oneself or others.\nFailure to Use PPE: Not wearing or using personal protective equipment as required.','2024-08-24 13:28:43',NULL,0,NULL,NULL);

/*Table structure for table `disciplinaryrequiredactions` */

DROP TABLE IF EXISTS `disciplinaryrequiredactions`;

CREATE TABLE `disciplinaryrequiredactions` (
  `actionid` int(10) NOT NULL AUTO_INCREMENT,
  `actionname` varchar(100) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`actionid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `disciplinaryrequiredactions` */

insert  into `disciplinaryrequiredactions`(`actionid`,`actionname`,`description`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,'Acknowledge the Incident Report','Immediate Acknowledgment: The employee should acknowledge that they have been informed of the reported incident, typically by signing an acknowledgment form or responding to an official communication.\nReceipt of Documentation: The employee may be provided with documentation related to the incident, such as a formal notice or summary of the allegations. They should confirm receipt of these documents.','2024-08-24 13:49:21',NULL,0,NULL,NULL),
(2,'Participate in the Investigation Process','Provide a Statement: The employee is usually required to provide their version of events either verbally or in writing. This statement should address the specific allegations made against them.\nCooperate with Investigators: The employee should fully cooperate with any internal or external investigators. This might include answering questions, providing evidence, or participating in interviews.\nSubmit Evidence: If the employee has any evidence (e.g., emails, messages, documents) that could support their side of the story, they should submit it to the investigators.','2024-08-24 13:49:48',NULL,0,NULL,NULL),
(3,'Attend Disciplinary Meetings\n','Attend a Disciplinary Hearing: If the investigation leads to a formal disciplinary hearing, the employee is typically required to attend. They may be allowed to bring a representative, such as a union representative or colleague, depending on company policy.\nPresent a Defense: During the hearing, the employee will have the opportunity to present their defense, explain their actions, and respond to any questions from the disciplinary panel.\nReview Evidence: The employee may be given the opportunity to review the evidence against them and challenge any inaccuracies or inconsistencies.','2024-08-24 13:50:10',NULL,0,NULL,NULL),
(4,'Adhere to Interim Measures','Temporary Reassignment or Suspension: In some cases, the employee may be placed on temporary reassignment, suspension, or administrative leave during the investigation. They must comply with these interim measures.\nRestriction of Duties: The employee might be required to avoid certain tasks, projects, or interactions with specific colleagues while the investigation is ongoing.','2024-08-24 13:50:37',NULL,0,NULL,NULL),
(5,'Accept and Comply with Disciplinary Actions','Adhere to Sanctions: If the outcome of the investigation leads to disciplinary action (e.g., a warning, suspension, demotion), the employee must comply with the terms of the sanction.\nFollow Corrective Action Plans: The employee may be required to follow a corrective action plan, which could include additional training, behavioral changes, or performance improvement tasks.\nSubmit a Formal Apology: In some cases, the employee might be asked to submit a formal apology to any affected parties.','2024-08-24 13:51:19',NULL,0,NULL,NULL),
(6,'Commit to Behavior Change','Commit to Policy Adherence: The employee may need to reaffirm their commitment to adhering to company policies and procedures going forward.\nComplete Training: If the incident was due to a lack of knowledge or understanding, the employee might be required to complete specific training courses (e.g., on harassment, ethics, or safety).','2024-08-24 13:51:45',NULL,0,NULL,NULL),
(7,'Appeal the Decision','File an Appeal: If the employee believes the disciplinary action is unjust or the process was flawed, they may have the right to appeal the decision. The appeal must typically be filed within a specific time frame and according to the company’s procedures.\nParticipate in an Appeal Hearing: If the appeal is granted, the employee may need to attend an appeal hearing where they can present new evidence or argue their case.','2024-08-24 13:52:09',NULL,0,NULL,NULL),
(8,'Documentation and Record-Keeping','Maintain Personal Records: The employee should keep copies of all documents related to the incident, including their statements, evidence, notices, and any decisions made by the company.\nSign Off on Resolutions: If the case is resolved or closed, the employee may be required to sign documents indicating their agreement with the resolution or the actions taken.','2024-08-24 13:52:41',NULL,0,NULL,NULL),
(9,'Compliance with Follow-Up Actions','Participate in Follow-Up Reviews: After the disciplinary action, there may be follow-up meetings or reviews to ensure compliance with the disciplinary measures and assess any progress.\nImprove Performance or Behavior: The employee may be monitored for improvement in behavior or performance over a specified period, and they must demonstrate commitment to making the necessary changes.','2024-08-24 13:53:16',NULL,0,NULL,NULL);

/*Table structure for table `disciplinarytypes` */

DROP TABLE IF EXISTS `disciplinarytypes`;

CREATE TABLE `disciplinarytypes` (
  `typeid` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(100) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `dateadded` timestamp NULL DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deleteby` int(11) DEFAULT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `disciplinarytypes` */

insert  into `disciplinarytypes`(`typeid`,`typename`,`description`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deleteby`) values 
(1,'Warning','Description: A formal notice issued to the employee that outlines the nature of the misconduct or performance issue, the company’s expectations, and the consequences of failing to improve.\nUsage: Used when verbal notifications have not resulted in improvement or for more serious issues, such as repeated lateness, failure to meet job standards, or breaches of policy.\nDocumentation: Documented and placed in the employee’s personnel file.','2024-08-24 14:17:59',NULL,0,NULL,NULL),
(2,'Show Cause Notice','Description: A formal letter asking the employee to explain or justify their actions. The employee is given the opportunity to present their side before any disciplinary action is decided.\nUsage: Used in cases of serious misconduct where dismissal or severe disciplinary action is being considered, such as fraud, theft, or gross insubordination.\nDocumentation: The employee’s response and the notice are documented and kept in the personnel file.','2024-08-24 14:18:36',NULL,0,NULL,NULL),
(3,'Final Warning','Description: This is a more severe form of a written warning, often indicating that the next step will be termination if there is no improvement.\nUsage: Used when previous warnings have been issued and there has been little or no improvement, or in cases of serious misconduct where the employee is given one last chance to rectify their behavior.\nDocumentation: Placed in the employee’s personnel file, with a clear statement that further issues will result in dismissal.',NULL,NULL,0,NULL,NULL);

/*Table structure for table `emailconfiguration` */

DROP TABLE IF EXISTS `emailconfiguration`;

CREATE TABLE `emailconfiguration` (
  `emailaddress` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `smtpserver` varchar(100) DEFAULT NULL,
  `usessl` tinyint(4) DEFAULT NULL,
  `smtpport` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `emailconfiguration` */

insert  into `emailconfiguration`(`emailaddress`,`password`,`smtpserver`,`usessl`,`smtpport`) values 
('insurance@cuvva.co.ke','New@Old-Man','mail.cuvva.co.ke',1,465);

/*Table structure for table `emailqueue` */

DROP TABLE IF EXISTS `emailqueue`;

CREATE TABLE `emailqueue` (
  `mailid` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(1000) DEFAULT NULL,
  `to` varchar(1000) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `message` blob DEFAULT NULL,
  `attachment` blob DEFAULT NULL,
  `status` varchar(100) DEFAULT 'pending',
  `dateadded` datetime DEFAULT NULL,
  `datesent` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `errormessage` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`mailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `emailqueue` */

/*Table structure for table `employeeattachabledocuments` */

DROP TABLE IF EXISTS `employeeattachabledocuments`;

CREATE TABLE `employeeattachabledocuments` (
  `documentid` int(11) NOT NULL AUTO_INCREMENT,
  `documentname` varchar(50) DEFAULT NULL,
  `expires` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`documentid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `employeeattachabledocuments` */

insert  into `employeeattachabledocuments`(`documentid`,`documentname`,`expires`) values 
(1,'ID Front',0),
(2,'ID Back',0),
(3,'KRA PIN Certificate',0),
(4,'Passport Photo',0),
(5,'Offer Letter',0),
(6,'Work permit',1),
(7,'Drivers License',1);

/*Table structure for table `employeeattachments` */

DROP TABLE IF EXISTS `employeeattachments`;

CREATE TABLE `employeeattachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documentid` int(11) NOT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `documentexpires` tinyint(1) DEFAULT 0,
  `expirydate` date DEFAULT NULL,
  `attachment` varchar(2000) DEFAULT NULL,
  `narration` varchar(1000) DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `employeeattachments` */

insert  into `employeeattachments`(`id`,`documentid`,`employeeid`,`documentexpires`,`expirydate`,`attachment`,`narration`,`addedby`,`dateadded`,`deletedby`,`deleted`,`datedeleted`) values 
(1,1,6,0,'1970-01-01','','',5,'2024-08-26 15:55:02',5,1,'2024-08-26 16:02:38'),
(2,2,6,0,'1970-01-01','','The ID is a 1st Generation',5,'2024-08-26 16:03:09',NULL,0,NULL),
(3,1,6,0,'1970-01-01','../employee_uploads/document_attachments/Richard Onyango _6_85653be542d73b4e69db_Richard_CV.pdf','This is a coloure copy of the ID front',5,'2024-08-26 20:02:24',NULL,0,NULL);

/*Table structure for table `employeebeneficiaries` */

DROP TABLE IF EXISTS `employeebeneficiaries`;

CREATE TABLE `employeebeneficiaries` (
  `beneficiaryid` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) DEFAULT NULL,
  `idnumber` varchar(50) DEFAULT NULL,
  `mobilenumber` varchar(50) DEFAULT NULL,
  `emailaddress` varchar(50) DEFAULT NULL,
  `percentage` decimal(18,2) DEFAULT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `relationshipid` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`beneficiaryid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `employeebeneficiaries` */

insert  into `employeebeneficiaries`(`beneficiaryid`,`fullname`,`idnumber`,`mobilenumber`,`emailaddress`,`percentage`,`employeeid`,`relationshipid`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,'Madam Janice','45749878','0745784125','madamjanice@gmail.com',50.00,1,6,'2024-08-19 18:07:48',5,0,NULL,NULL),
(2,'Professor X','14564','','',10.00,1,3,'2024-08-19 18:44:46',5,0,NULL,NULL),
(3,'Storm Breaker','5476865','','',20.00,1,5,'2024-08-19 18:52:15',5,1,'2024-08-20 10:57:47',5),
(4,'Mr Asgard','789789','','',20.00,1,7,'2024-08-20 10:59:58',5,1,'2024-08-20 11:00:03',5);

/*Table structure for table `employeedependants` */

DROP TABLE IF EXISTS `employeedependants`;

CREATE TABLE `employeedependants` (
  `dependantid` int(11) NOT NULL AUTO_INCREMENT,
  `employeeid` int(11) DEFAULT NULL,
  `dependantname` varchar(100) DEFAULT NULL,
  `iddocumentid` int(11) DEFAULT NULL,
  `iddocumentno` varchar(50) DEFAULT NULL,
  `relationshipid` int(11) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `passportphoto` varchar(1000) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`dependantid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `employeedependants` */

insert  into `employeedependants`(`dependantid`,`employeeid`,`dependantname`,`iddocumentid`,`iddocumentno`,`relationshipid`,`dateofbirth`,`gender`,`passportphoto`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,1,'Michael Marsden',1,'23657524',4,'2024-01-11','male','../employee_uploads/dependant_6_Charles Angels_f3abc03d2fad2906914a_blankavatar.jpg','2024-07-22 00:00:00',5,0,'2024-08-03 14:01:16',5),
(3,1,'Charles Angels',1,'349876576',3,'2024-05-01','female','../employee_uploads/dependant_6_Charles Angels_f3abc03d2fad2906914a_blankavatar.jpg','2024-07-22 00:00:00',5,1,'2024-08-03 14:02:29',5),
(4,6,'Shonelle Atieno',1,'123456',5,'2013-02-17','female','../employee_uploads/dependant_6_Shonelle Atieno_e602ceac7436509cd40d_logo.jpg','2024-08-03 14:13:32',5,0,NULL,NULL),
(5,6,'Mary Claire',1,'6579856',1,'2024-06-30','female','../employee_uploads/dependant_6_Mary Claire_5dacfa31e787e57df86f_allpack_logo.png','2024-08-03 14:15:23',5,0,NULL,NULL),
(6,6,'Test Dependant',3,'5467897',7,'2008-08-04','male','../employee_uploads/dependants/dependant_6_Test Dependant_fb4da3cdd3c100ba8bac_marolalogo.bmp','2024-08-27 09:46:46',5,0,NULL,NULL);

/*Table structure for table `employeedisciplinarycases` */

DROP TABLE IF EXISTS `employeedisciplinarycases`;

CREATE TABLE `employeedisciplinarycases` (
  `incidentid` int(11) NOT NULL AUTO_INCREMENT,
  `employeeid` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `actionid` int(11) DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `dateadded` datetime DEFAULT NULL,
  `deleteby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `incidentdescription` varchar(5000) DEFAULT NULL,
  `attachment` varchar(2000) DEFAULT NULL,
  `incidentdate` date DEFAULT NULL,
  `actiondate` date DEFAULT NULL,
  `status` varchar(50) DEFAULT 'open',
  `resolution` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`incidentid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `employeedisciplinarycases` */

insert  into `employeedisciplinarycases`(`incidentid`,`employeeid`,`typeid`,`categoryid`,`actionid`,`addedby`,`deleted`,`dateadded`,`deleteby`,`datedeleted`,`incidentdescription`,`attachment`,`incidentdate`,`actiondate`,`status`,`resolution`) values 
(2,6,1,1,1,5,1,'2024-08-24 19:16:48',5,'2024-08-24 19:35:25','<p><strong>Re: Warning Letter for Tardiness</strong></p>\r\n<p>This letter serves as a formal warning regarding your recent pattern of arriving late to work. It has come to our attention that you have been late on multiple occasions, specifically on the following dates:</p>\r\n<ul>\r\n<li>03-06 Aug 2024</li>\r\n</ul>\r\n<p>Punctuality is a crucial part of your role, and it is essential that you adhere to the established working hours. Repeated lateness disrupts workflow and affects the overall productivity of the team.</p>\r\n<p>As per company policy, all employees are expected to arrive on time and be ready to begin work at the designated start time. Your continued tardiness is a violation of this policy and must be addressed immediately.</p>\r\n<p>Please consider this letter an official warning. You are expected to take corrective action to improve your punctuality. Continued lateness may lead to further disciplinary action, including suspension or possible termination of employment.</p>\r\n<p>If there are any underlying issues affecting your ability to arrive on time, please discuss these with your supervisor or the HR department. We are committed to working with you to resolve any challenges you may be facing.</p>\r\n<p>We trust that you will take this matter seriously and take the necessary steps to improve your punctuality.</p>','','2024-08-23','2024-08-30','open',NULL),
(3,6,1,6,1,5,0,'2024-08-26 12:09:34',NULL,NULL,'<p>This is a test entry</p>','','2024-08-26','2024-09-02','open',NULL),
(4,6,1,6,1,5,0,'2024-08-26 20:04:42',NULL,NULL,'<p>This is a test case</p>','../employee_uploads/disciplinary/Richard_Onyango__6_74a1c32cbd66d20a958f_TutsGalaxy.com.txt','2024-08-26','2024-08-31','open',NULL);

/*Table structure for table `employeeexternalworkingexperience` */

DROP TABLE IF EXISTS `employeeexternalworkingexperience`;

CREATE TABLE `employeeexternalworkingexperience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeid` int(11) DEFAULT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `duties` varchar(4000) DEFAULT NULL,
  `narration` varchar(4000) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `employeeexternalworkingexperience` */

insert  into `employeeexternalworkingexperience`(`id`,`employeeid`,`organization`,`position`,`startdate`,`enddate`,`duties`,`narration`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,6,'Broadband Communications Ltd','IT Specialist','2006-01-01','2007-12-31','<h3>Roles:</h3>\n<ol>\n<li><strong>System Management</strong>: Maintain and manage computer systems, networks, and software.</li>\n<li><strong>Technical Support</strong>: Provide technical support to end-users for hardware, software, and network issues.</li>\n<li><strong>Security Management</strong>: Implement and monitor cybersecurity measures to protect data and systems.</li>\n<li><strong>System Upgrades</strong>: Plan and execute system upgrades, installations, and configurations.</li>\n<li><strong>Data Management</strong>: Ensure the integrity, availability, and security of organizational data.</li>\n</ol>\n<h3>Responsibilities:</h3>\n<ol>\n<li><strong>System Maintenance</strong>: Regularly update and maintain IT systems and infrastructure.</li>\n<li><strong>User Support</strong>: Respond to and resolve technical issues raised by users in a timely manner.</li>\n<li><strong>Network Management</strong>: Monitor and manage the organization\'s network to ensure smooth and secure operations.</li>\n<li><strong>Security Implementation</strong>: Install and manage firewalls, antivirus software, and other security tools to protect against cyber threats.</li>\n<li><strong>Data Backup</strong>: Ensure regular data backups and disaster recovery procedures are in place.</li>\n<li><strong>Software Installation</strong>: Install, configure, and troubleshoot software applications.</li>\n<li><strong>Documentation</strong>: Maintain accurate records of system configurations, changes, and IT policies.</li>\n<li><strong>Training</strong>: Provide training to staff on IT systems, software, and security best practices.</li>\n</ol>',NULL,'2024-08-21 11:13:58',5,1,'2024-08-21 11:40:54',5),
(2,6,'Broadband Communications Ltd','IT Manager','2008-01-01','2008-12-31','<h3>Roles:</h3>\n<ol>\n<li><strong>System Management</strong>: Maintain and manage computer systems, networks, and software.</li>\n<li><strong>Technical Support</strong>: Provide technical support to end-users for hardware, software, and network issues.</li>\n<li><strong>Security Management</strong>: Implement and monitor cybersecurity measures to protect data and systems.</li>\n<li><strong>System Upgrades</strong>: Plan and execute system upgrades, installations, and configurations.</li>\n<li><strong>Data Management</strong>: Ensure the integrity, availability, and security of organizational data.</li>\n</ol>\n<h3>Responsibilities:</h3>\n<ol>\n<li><strong>System Maintenance</strong>: Regularly update and maintain IT systems and infrastructure.</li>\n<li><strong>User Support</strong>: Respond to and resolve technical issues raised by users in a timely manner.</li>\n<li><strong>Network Management</strong>: Monitor and manage the organization\'s network to ensure smooth and secure operations.</li>\n<li><strong>Security Implementation</strong>: Install and manage firewalls, antivirus software, and other security tools to protect against cyber threats.</li>\n<li><strong>Data Backup</strong>: Ensure regular data backups and disaster recovery procedures are in place.</li>\n<li><strong>Software Installation</strong>: Install, configure, and troubleshoot software applications.</li>\n<li><strong>Documentation</strong>: Maintain accurate records of system configurations, changes, and IT policies.</li>\n<li><strong>Training</strong>: Provide training to staff on IT systems, software, and security best practices.</li>\n</ol>',NULL,'2024-08-21 11:20:18',5,0,NULL,NULL),
(3,6,'Broadband Communications Ltd','Strategic Manager','2009-01-01','2009-12-31','<h3>Roles:</h3>\n<ol>\n<li><strong>System Management</strong>: Maintain and manage computer systems, networks, and software.</li>\n<li><strong>Technical Support</strong>: Provide technical support to end-users for hardware, software, and network issues.</li>\n<li><strong>Security Management</strong>: Implement and monitor cybersecurity measures to protect data and systems.</li>\n<li><strong>System Upgrades</strong>: Plan and execute system upgrades, installations, and configurations.</li>\n<li><strong>Data Management</strong>: Ensure the integrity, availability, and security of organizational data.</li>\n</ol>\n<h3>Responsibilities:</h3>\n<ol>\n<li><strong>System Maintenance</strong>: Regularly update and maintain IT systems and infrastructure.</li>\n<li><strong>User Support</strong>: Respond to and resolve technical issues raised by users in a timely manner.</li>\n<li><strong>Network Management</strong>: Monitor and manage the organization\'s network to ensure smooth and secure operations.</li>\n<li><strong>Security Implementation</strong>: Install and manage firewalls, antivirus software, and other security tools to protect against cyber threats.</li>\n<li><strong>Data Backup</strong>: Ensure regular data backups and disaster recovery procedures are in place.</li>\n<li><strong>Software Installation</strong>: Install, configure, and troubleshoot software applications.</li>\n<li><strong>Documentation</strong>: Maintain accurate records of system configurations, changes, and IT policies.</li>\n<li><strong>Training</strong>: Provide training to staff on IT systems, software, and security best practices.</li>\n</ol>',NULL,'2024-08-21 11:26:26',5,0,NULL,NULL),
(4,6,'Kenya Polytechnic','Tutorial Fellow','2006-01-02','2006-12-31','<p>This is a test entry</p>',NULL,'2024-08-21 11:45:25',5,1,'2024-08-21 11:45:32',5);

/*Table structure for table `employeegrievances` */

DROP TABLE IF EXISTS `employeegrievances`;

CREATE TABLE `employeegrievances` (
  `grievanceid` int(11) NOT NULL AUTO_INCREMENT,
  `employeeid` int(11) DEFAULT NULL,
  `grievancetypeid` varchar(50) DEFAULT NULL,
  `grievanceremedyid` int(50) DEFAULT NULL,
  `grievanceremedynarration` varchar(1000) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`grievanceid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `employeegrievances` */

insert  into `employeegrievances`(`grievanceid`,`employeeid`,`grievancetypeid`,`grievanceremedyid`,`grievanceremedynarration`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(4,1,'3',2,'test','2024-09-11 20:47:48',38,0,NULL,NULL),
(5,1,'3',2,'jjj','2024-09-12 14:27:55',38,0,NULL,NULL),
(6,1,'1',2,'The corruption in the payments plans','2024-09-12 19:33:59',38,0,NULL,NULL),
(7,1,'6',16,'help text','2024-09-12 22:56:31',38,0,NULL,NULL),
(8,1,'1',1,'The discrimination','2024-09-12 23:01:58',38,0,NULL,NULL),
(9,1,'1',1,'Allow all members of staff to have same ','2024-09-17 12:52:36',38,0,NULL,NULL),
(10,1,'1',2,'All bonuses should be paid equally regardless of job group','2024-09-17 13:02:52',38,0,NULL,NULL);

/*Table structure for table `employeeinternalworkingexperience` */

DROP TABLE IF EXISTS `employeeinternalworkingexperience`;

CREATE TABLE `employeeinternalworkingexperience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeid` int(11) DEFAULT NULL,
  `departmentid` int(11) DEFAULT NULL,
  `positionid` int(11) DEFAULT NULL,
  `duties` varchar(4000) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `currentlyhere` tinyint(1) DEFAULT 1,
  `dateadded` date DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deleteby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `employeeinternalworkingexperience` */

insert  into `employeeinternalworkingexperience`(`id`,`employeeid`,`departmentid`,`positionid`,`duties`,`startdate`,`enddate`,`currentlyhere`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deleteby`) values 
(1,6,10,13,'<p><strong>Duties</strong></p>\n<ul>\n<li>Teaching students</li>\n<li>Marking Exams</li>\n<li>Marks Entry</li>\n</ul>\n<p><strong>Responsibilities</strong></p>\n<ul>\n<li>Class attendance recording</li>\n<li>Exam supervision</li>\n</ul>\n<p>&nbsp;</p>','2009-06-01','2013-01-01',0,'2024-08-20',5,1,'2024-08-20 17:00:11',5),
(2,6,2,6,'<h3>Roles:</h3>\n<ol>\n<li><strong>Recruitment and Staffing</strong>: Oversee the hiring process, from sourcing candidates to onboarding new employees.</li>\n<li><strong>Employee Relations</strong>: Manage employee relations, including conflict resolution and fostering a positive workplace culture.</li>\n<li><strong>Training and Development</strong>: Organize training programs to enhance employee skills and career growth.</li>\n<li><strong>Compliance</strong>: Ensure the organization complies with labor laws and employment regulations.</li>\n<li><strong>Performance Management</strong>: Implement and monitor performance evaluation systems.</li>\n<li><strong>Compensation and Benefits</strong>: Manage payroll, benefits, and compensation packages.</li>\n<li><strong>HR Policy Development</strong>: Develop and update HR policies and procedures.</li>\n</ol>\n<h3>Responsibilities:</h3>\n<ol>\n<li><strong>Hiring</strong>: Identify staffing needs, conduct interviews, and select suitable candidates.</li>\n<li><strong>Onboarding</strong>: Facilitate the smooth onboarding of new employees.</li>\n<li><strong>Employee Engagement</strong>: Promote initiatives that enhance employee satisfaction and retention.</li>\n<li><strong>Training</strong>: Coordinate and deliver training sessions to staff.</li>\n<li><strong>Policy Enforcement</strong>: Ensure all HR policies are followed consistently.</li>\n<li><strong>Records Management</strong>: Maintain accurate employee records.</li>\n<li><strong>Conflict Resolution</strong>: Address and resolve employee issues and disputes.</li>\n</ol>','2009-01-01','2010-07-30',0,'2024-08-20',5,0,NULL,NULL),
(3,6,10,13,'<h3>Roles:</h3>\n<ol>\n<li><strong>Teaching Assistance</strong>: Support lead instructors by conducting tutorials and discussion sessions.</li>\n<li><strong>Student Support</strong>: Provide academic guidance and mentorship to students.</li>\n<li><strong>Assessment</strong>: Assist in preparing, administering, and grading assessments.</li>\n<li><strong>Research Support</strong>: Collaborate on research projects and assist in academic writing.</li>\n<li><strong>Course Development</strong>: Contribute to the development and updating of course materials.</li>\n</ol>\n<h3>Responsibilities:</h3>\n<ol>\n<li><strong>Tutorials</strong>: Lead small group sessions to reinforce lecture material.</li>\n<li><strong>Office Hours</strong>: Offer regular office hours to address student questions and concerns.</li>\n<li><strong>Assignment Grading</strong>: Help grade assignments, quizzes, and exams accurately and fairly.</li>\n<li><strong>Academic Feedback</strong>: Provide constructive feedback to students on their academic performance.</li>\n<li><strong>Research Collaboration</strong>: Assist faculty members with research activities, including data collection and analysis.</li>\n<li><strong>Curriculum Input</strong>: Participate in discussions to improve and update course content.</li>\n<li><strong>Academic Administration</strong>: Handle administrative tasks related to course management, such as attendance tracking and record-keeping.</li>\n</ol>','2010-08-01','2012-12-31',0,'2024-08-20',5,0,NULL,NULL),
(4,6,12,14,'<h3>Roles:</h3>\n<ol>\n<li><strong>Technical Oversight</strong>: Supervise and guide junior technicians and staff.</li>\n<li><strong>Equipment Maintenance</strong>: Ensure proper functioning and maintenance of technical equipment.</li>\n<li><strong>Troubleshooting</strong>: Diagnose and resolve complex technical issues.</li>\n<li><strong>Installation and Setup</strong>: Oversee the installation, configuration, and setup of systems and equipment.</li>\n<li><strong>Safety Compliance</strong>: Ensure all operations adhere to safety standards and regulations.</li>\n</ol>\n<h3>Responsibilities:</h3>\n<ol>\n<li><strong>Supervision</strong>: Provide guidance and support to junior technicians, delegating tasks as needed.</li>\n<li><strong>Equipment Repair</strong>: Perform advanced repairs and maintenance on technical equipment and systems.</li>\n<li><strong>Technical Support</strong>: Offer expert troubleshooting for equipment malfunctions or system failures.</li>\n<li><strong>Installation</strong>: Lead the installation and configuration of new systems and equipment.</li>\n<li><strong>Documentation</strong>: Maintain detailed records of maintenance, repairs, and technical procedures.</li>\n<li><strong>Training</strong>: Train junior staff on proper use and maintenance of equipment.</li>\n<li><strong>Safety Checks</strong>: Conduct regular safety inspections to ensure compliance with safety protocols.</li>\n</ol>','2013-01-01','2024-08-20',1,'2024-08-20',5,0,NULL,NULL);

/*Table structure for table `employeeleaveallocation` */

DROP TABLE IF EXISTS `employeeleaveallocation`;

CREATE TABLE `employeeleaveallocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeid` int(11) DEFAULT NULL,
  `leavetypeid` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `allocation` decimal(3,2) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deleteby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `employeeleaveallocation` */

insert  into `employeeleaveallocation`(`id`,`employeeid`,`leavetypeid`,`year`,`allocation`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deleteby`) values 
(1,1,2,2024,9.99,'2024-08-04 17:06:45',25,0,NULL,NULL),
(2,2,2,2024,9.99,'2024-08-04 17:06:45',25,0,NULL,NULL),
(3,3,2,2024,9.99,'2024-08-04 17:06:45',25,0,NULL,NULL),
(4,4,2,2024,9.99,'2024-08-04 17:06:45',25,0,NULL,NULL),
(5,5,2,2024,9.99,'2024-08-04 17:06:45',25,0,NULL,NULL),
(8,7,2,2024,9.99,'2024-08-11 23:26:32',25,0,NULL,NULL),
(9,6,2,2024,1.75,'2024-08-15 11:25:12',25,0,NULL,NULL),
(10,1,2,2024,7.00,'2024-12-28 12:15:46',25,0,NULL,NULL),
(11,2,2,2024,7.00,'2024-12-28 12:15:46',25,0,NULL,NULL),
(12,3,2,2024,7.00,'2024-12-28 12:15:46',25,0,NULL,NULL),
(13,4,2,2024,7.00,'2024-12-28 12:15:46',25,0,NULL,NULL),
(14,5,2,2024,7.00,'2024-12-28 12:15:46',25,0,NULL,NULL),
(15,7,2,2024,7.00,'2024-12-28 12:15:46',25,0,NULL,NULL),
(16,6,2,2024,7.00,'2024-12-28 12:15:46',25,0,NULL,NULL),
(17,9,2,2024,3.50,'2024-12-28 12:15:46',25,0,NULL,NULL),
(18,10,2,2024,3.50,'2024-12-28 12:15:46',25,0,NULL,NULL),
(19,11,2,2024,3.50,'2024-12-28 12:15:46',25,0,NULL,NULL),
(25,1,2,2024,7.00,'2024-12-29 00:05:01',25,0,NULL,NULL),
(26,2,2,2024,7.00,'2024-12-29 00:05:01',25,0,NULL,NULL),
(27,3,2,2024,7.00,'2024-12-29 00:05:01',25,0,NULL,NULL),
(28,4,2,2024,7.00,'2024-12-29 00:05:01',25,0,NULL,NULL),
(29,5,2,2024,7.00,'2024-12-29 00:05:01',25,0,NULL,NULL),
(30,7,2,2024,7.00,'2024-12-29 00:05:01',25,0,NULL,NULL),
(31,6,2,2024,7.00,'2024-12-29 00:05:01',25,0,NULL,NULL);

/*Table structure for table `employeepayrollitems` */

DROP TABLE IF EXISTS `employeepayrollitems`;

CREATE TABLE `employeepayrollitems` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `payrollitemid` int(11) DEFAULT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `duration` int(11) DEFAULT 0,
  `amount` decimal(18,2) DEFAULT NULL,
  `periodic` tinyint(1) DEFAULT 0,
  `applyrelief` tinyint(1) DEFAULT 0,
  `attachment` varchar(1000) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `targetamount` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `employeepayrollitems` */

insert  into `employeepayrollitems`(`itemid`,`payrollitemid`,`employeeid`,`startdate`,`duration`,`amount`,`periodic`,`applyrelief`,`attachment`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`,`targetamount`) values 
(1,5,1,'2024-01-01',0,0.00,0,0,'','2024-06-16 21:26:20',5,NULL,NULL,NULL,0.00),
(2,5,1,'2024-01-01',0,150000.00,0,0,'','2024-06-17 03:56:48',5,1,'2024-06-22 19:44:42',5,0.00),
(3,2,1,'2024-01-01',0,0.00,0,0,'','2024-06-22 13:28:34',5,0,NULL,NULL,0.00),
(4,9,1,'2024-01-01',0,0.00,0,0,'','2024-06-22 13:28:34',5,0,NULL,NULL,0.00),
(5,3,1,'2024-01-01',0,0.00,0,0,'','2024-06-22 13:28:34',5,0,NULL,NULL,0.00),
(6,4,1,'2024-01-01',0,0.00,0,0,'','2024-06-22 13:28:34',5,0,NULL,NULL,0.00),
(7,2,5,'2024-01-01',0,0.00,0,0,'','2024-06-22 13:55:49',5,0,NULL,NULL,0.00),
(8,9,5,'2024-01-01',0,0.00,0,0,'','2024-06-22 13:55:49',5,0,NULL,NULL,0.00),
(9,3,5,'2024-01-01',0,0.00,0,0,'','2024-06-22 13:55:49',5,0,NULL,NULL,0.00),
(10,4,5,'2024-01-01',0,0.00,0,0,'','2024-06-22 13:55:49',5,0,NULL,NULL,0.00),
(11,2,2,'2024-01-01',0,0.00,0,0,'','2024-06-22 14:00:03',5,0,NULL,NULL,0.00),
(12,9,2,'2024-01-01',0,0.00,0,0,'','2024-06-22 14:00:03',5,0,NULL,NULL,0.00),
(13,3,2,'2024-01-01',0,0.00,0,0,'','2024-06-22 14:00:03',5,0,NULL,NULL,0.00),
(14,4,2,'2024-01-01',0,0.00,0,0,'','2024-06-22 14:00:08',5,0,NULL,NULL,0.00),
(15,2,3,'2024-01-01',0,0.00,0,0,'','2024-06-22 14:32:37',5,0,NULL,NULL,0.00),
(16,9,3,'2024-01-01',0,0.00,0,0,'','2024-06-22 14:32:37',5,0,NULL,NULL,0.00),
(17,3,3,'2024-01-01',0,0.00,0,0,'','2024-06-22 14:32:37',5,0,NULL,NULL,0.00),
(18,4,3,'2024-01-01',0,0.00,0,0,'','2024-06-22 14:32:37',5,0,NULL,NULL,0.00),
(19,2,4,'2024-01-01',0,0.00,0,0,'','2024-06-22 14:32:56',5,0,NULL,NULL,0.00),
(20,9,4,'2024-01-01',0,0.00,0,0,'','2024-06-22 14:32:56',5,0,NULL,NULL,0.00),
(21,3,4,'2024-01-01',0,0.00,0,0,'','2024-06-22 14:32:56',5,0,NULL,NULL,0.00),
(22,4,4,'2024-01-01',0,0.00,0,0,'','2024-06-22 14:32:56',5,0,NULL,NULL,0.00),
(23,5,1,'2024-01-01',0,132500.00,0,0,'','2024-06-22 19:45:36',5,0,NULL,NULL,0.00),
(24,7,1,'2024-01-01',0,14000.00,0,0,'','2024-06-22 19:45:36',5,0,NULL,NULL,0.00),
(25,6,1,'2024-01-01',0,45800.00,0,0,'','2024-06-22 19:45:36',5,0,NULL,NULL,0.00),
(26,5,3,'2024-01-01',0,162800.00,0,0,'','2024-06-23 09:46:28',5,1,'2024-07-14 12:01:59',5,0.00),
(27,7,3,'2024-01-01',0,14000.00,0,0,'','2024-06-23 09:46:28',5,0,NULL,NULL,0.00),
(28,6,3,'2024-01-01',0,56800.00,0,0,'','2024-06-23 09:46:29',5,0,NULL,NULL,0.00),
(29,5,5,'2024-01-01',0,162800.00,0,0,'','2024-06-23 09:47:36',5,0,NULL,NULL,0.00),
(30,7,5,'2024-01-01',0,14000.00,0,0,'','2024-06-23 09:47:36',5,0,NULL,NULL,0.00),
(31,6,5,'2024-01-01',0,56800.00,0,0,'','2024-06-23 09:47:36',5,0,NULL,NULL,0.00),
(32,5,2,'2024-01-01',0,132500.00,0,0,'','2024-06-23 09:49:19',5,0,NULL,NULL,0.00),
(33,7,2,'2024-01-01',0,14000.00,0,0,'','2024-06-23 09:49:19',5,1,'2024-07-14 13:02:29',5,0.00),
(34,6,2,'2024-01-01',0,45800.00,0,0,'','2024-06-23 09:49:19',5,0,NULL,NULL,0.00),
(35,5,4,'2024-01-01',0,48500.00,0,0,'','2024-06-23 09:49:38',5,0,NULL,NULL,0.00),
(36,6,4,'2024-01-01',0,13200.00,0,0,'','2024-06-23 09:53:12',5,0,NULL,NULL,0.00),
(37,7,0,'2024-01-01',0,9000.00,0,0,'','2024-06-23 09:53:23',5,0,NULL,NULL,0.00),
(38,7,4,'2024-01-01',0,9000.00,0,0,'','2024-06-23 09:54:10',5,1,'2024-07-14 12:02:21',5,0.00),
(39,11,1,'2024-01-01',0,0.00,0,0,'','2024-06-23 12:14:07',5,1,'2024-07-15 19:27:31',5,0.00),
(40,10,2,'2024-01-01',0,2884.50,0,0,'','2024-07-02 17:27:49',5,0,NULL,NULL,0.00),
(41,10,1,'2024-01-01',0,2983.88,0,0,'','2024-07-02 17:27:49',5,0,NULL,NULL,0.00),
(42,10,4,'2024-01-01',0,1060.50,0,0,'','2024-07-02 17:27:49',5,0,NULL,NULL,0.00),
(43,10,5,'2024-01-01',0,3504.00,0,0,'','2024-07-02 17:27:49',5,0,NULL,NULL,0.00),
(44,10,3,'2024-01-01',0,3504.00,0,0,'','2024-07-02 17:27:49',5,0,NULL,NULL,0.00),
(45,14,1,'2024-01-01',0,15000.00,0,0,'','2024-07-14 12:01:03',5,0,NULL,NULL,0.00),
(46,5,3,'2024-01-01',0,148500.00,0,0,'','2024-07-14 12:02:03',5,0,NULL,NULL,0.00),
(47,7,4,'2024-01-01',0,14000.00,0,0,'','2024-07-14 12:02:33',5,0,NULL,NULL,0.00),
(48,14,4,'2024-01-01',0,25200.00,0,0,'','2024-07-14 12:36:00',5,0,NULL,NULL,0.00),
(49,11,2,'2024-01-01',0,2884.50,0,0,'','2024-07-15 19:27:10',5,1,'2024-07-15 19:27:31',5,0.00),
(50,11,4,'2024-01-01',0,1060.50,0,0,'','2024-07-15 19:27:10',5,1,'2024-07-15 19:27:31',5,0.00),
(51,11,5,'2024-01-01',0,3504.00,0,0,'','2024-07-15 19:27:10',5,1,'2024-07-15 19:27:31',5,0.00),
(52,11,3,'2024-01-01',0,3504.00,0,0,'','2024-07-15 19:27:10',5,1,'2024-07-15 19:27:31',5,0.00),
(53,11,2,'2024-01-01',0,2884.50,0,0,'','2024-07-15 19:27:31',5,0,NULL,NULL,0.00),
(54,11,1,'2024-01-01',0,2983.88,0,0,'','2024-07-15 19:27:31',5,0,NULL,NULL,0.00),
(55,11,4,'2024-01-01',0,1060.50,0,0,'','2024-07-15 19:27:31',5,0,NULL,NULL,0.00),
(56,11,5,'2024-01-01',0,3504.00,0,0,'','2024-07-15 19:27:31',5,0,NULL,NULL,0.00),
(57,11,3,'2024-01-01',0,3504.00,0,0,'','2024-07-15 19:27:31',5,0,NULL,NULL,0.00),
(58,2,7,'2024-05-30',0,0.00,0,0,'','2024-05-30 13:05:37',5,0,NULL,NULL,0.00),
(59,9,7,'2024-05-30',0,0.00,0,0,'','2024-05-30 13:05:37',5,0,NULL,NULL,0.00),
(60,4,7,'2024-05-30',0,0.00,0,0,'','2024-05-30 13:05:37',5,0,NULL,NULL,0.00),
(61,5,7,'2024-05-30',0,145200.00,0,0,'','2024-05-30 13:08:23',5,0,NULL,NULL,0.00),
(62,6,0,'2024-05-30',0,54100.00,0,0,'','2024-05-30 13:08:39',5,0,NULL,NULL,0.00),
(63,6,7,'2024-05-30',0,54100.00,0,0,'','2024-05-30 13:09:24',5,0,NULL,NULL,0.00),
(64,14,7,'2024-01-01',0,13880.00,0,0,'','2024-05-30 13:10:45',5,0,NULL,NULL,0.00),
(65,3,7,'2024-05-30',0,0.00,0,0,'','2024-05-30 13:12:34',5,0,NULL,NULL,0.00),
(66,15,1,'2024-08-15',1,51376.90,1,0,'','2024-08-15 20:17:36',5,1,'2024-08-15 20:17:56',5,0.00),
(67,15,4,'2024-08-15',1,12909.40,1,0,'','2024-08-15 20:17:36',5,1,'2024-08-15 20:17:56',5,0.00),
(68,15,5,'2024-08-15',1,61779.40,1,0,'','2024-08-15 20:17:36',5,1,'2024-08-15 20:17:56',5,0.00),
(69,15,3,'2024-08-15',1,61779.40,1,0,'','2024-08-15 20:17:36',5,1,'2024-08-15 20:17:56',5,0.00),
(70,15,1,'2024-08-15',1,51376.90,1,0,'','2024-08-15 20:17:56',5,1,'2024-08-15 20:21:53',5,0.00),
(71,15,4,'2024-08-15',1,12909.40,1,0,'','2024-08-15 20:17:56',5,1,'2024-08-15 20:21:53',5,0.00),
(72,15,5,'2024-08-15',1,61779.40,1,0,'','2024-08-15 20:17:56',5,1,'2024-08-15 20:21:53',5,0.00),
(73,15,3,'2024-08-15',1,61779.40,1,0,'','2024-08-15 20:17:56',5,1,'2024-08-15 20:21:53',5,0.00),
(74,15,1,'2024-08-15',1,51376.90,1,0,'','2024-08-15 20:21:53',5,1,'2024-08-15 20:24:29',5,0.00),
(75,15,4,'2024-08-15',1,12909.40,1,0,'','2024-08-15 20:21:53',5,1,'2024-08-15 20:24:29',5,0.00),
(76,15,5,'2024-08-15',1,61779.40,1,0,'','2024-08-15 20:21:53',5,1,'2024-08-15 20:24:29',5,0.00),
(77,15,3,'2024-08-15',1,61779.40,1,0,'','2024-08-15 20:21:53',5,1,'2024-08-15 20:24:29',5,0.00),
(78,15,1,'2024-08-15',1,51376.90,1,0,'','2024-08-15 20:24:29',5,0,NULL,NULL,0.00),
(79,15,4,'2024-08-15',1,12909.40,1,0,'','2024-08-15 20:24:29',5,0,NULL,NULL,0.00),
(80,15,5,'2024-08-15',1,61779.40,1,0,'','2024-08-15 20:24:29',5,0,NULL,NULL,0.00),
(81,15,3,'2024-08-15',1,61779.40,1,0,'','2024-08-15 20:24:29',5,0,NULL,NULL,0.00),
(82,6,8,'2024-08-31',0,20000.00,0,0,'','2024-08-19 14:22:52',5,0,NULL,NULL,0.00);

/*Table structure for table `employeerecords` */

DROP TABLE IF EXISTS `employeerecords`;

CREATE TABLE `employeerecords` (
  `employeeid` int(11) NOT NULL AUTO_INCREMENT,
  `staffno` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `departmentid` int(11) DEFAULT NULL,
  `religionid` int(11) DEFAULT NULL,
  `salutationid` int(11) DEFAULT NULL,
  `iddocumentid` int(11) DEFAULT NULL,
  `iddocreferenceno` varchar(50) DEFAULT NULL,
  `iddocexpirydate` date DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `pinno` varchar(50) DEFAULT NULL,
  `nssfno` varchar(50) DEFAULT NULL,
  `nhifno` varchar(50) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT 1,
  `disabilitytype` varchar(50) DEFAULT NULL,
  `disabilitydescription` varchar(100) DEFAULT NULL,
  `disabilitycertificateno` varchar(50) DEFAULT NULL,
  `onpayroll` tinyint(1) DEFAULT NULL,
  `fixedpaye` tinyint(1) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `positionid` int(11) DEFAULT NULL,
  `jobgroupid` int(11) DEFAULT NULL,
  `notchid` int(11) DEFAULT NULL,
  `bankbranchid` int(11) DEFAULT NULL,
  `bankaccountnumber` varchar(50) DEFAULT NULL,
  `employmentdate` date DEFAULT NULL,
  `separationdate` date DEFAULT NULL,
  `separationreason` varchar(50) DEFAULT NULL,
  `physicaladdress` varchar(100) DEFAULT NULL,
  `postaladdress` varchar(50) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `postalcode` varchar(50) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `emailaddress` varchar(100) DEFAULT NULL,
  `alternativemobile` varchar(100) DEFAULT NULL,
  `alternativeemailaddress` varchar(100) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`employeeid`),
  CONSTRAINT `CONSTRAINT_1` CHECK (`gender` in ('male','female','other')),
  CONSTRAINT `CONSTRAINT_2` CHECK (`status` in ('active','suspended','withdrawn')),
  CONSTRAINT `CONSTRAINT_3` CHECK (`disabilitytype` in ('temporary','permanent','none'))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `employeerecords` */

insert  into `employeerecords`(`employeeid`,`staffno`,`firstname`,`middlename`,`lastname`,`termid`,`categoryid`,`departmentid`,`religionid`,`salutationid`,`iddocumentid`,`iddocreferenceno`,`iddocexpirydate`,`dateofbirth`,`gender`,`pinno`,`nssfno`,`nhifno`,`disabled`,`disabilitytype`,`disabilitydescription`,`disabilitycertificateno`,`onpayroll`,`fixedpaye`,`status`,`positionid`,`jobgroupid`,`notchid`,`bankbranchid`,`bankaccountnumber`,`employmentdate`,`separationdate`,`separationreason`,`physicaladdress`,`postaladdress`,`town`,`postalcode`,`mobile`,`emailaddress`,`alternativemobile`,`alternativeemailaddress`,`dateadded`,`addedby`) values 
(1,'NT0001','Richard','Onyango','Akelo',5,2,10,1,1,1,'23657524','0000-00-00','1983-01-11','male','A00389875','7487854','N9879347',0,'none','','',0,0,'active',6,10,8,3,'0250190497310','2009-06-17',NULL,NULL,'Kandisi, Ongata Rongai, Opp SGR','52428','Nairobi','00200','0727709772','akellorich@gmail.com','','','2024-06-15 13:32:58',5),
(2,'AC0001','Martin','Lawrence','Jameson',4,1,2,1,2,1,'3487674','0000-00-00','2005-06-01','male','A743657534H','2638764','N27979287',0,'none','',NULL,1,0,'active',10,10,8,3,'0111250456897','2018-01-01',NULL,NULL,'New York','99832','New York','801210','0734556677','akellorich1@gmail.com','','','2024-06-15 13:48:18',5),
(3,'TST001','James','Marsden','Cain',4,1,2,1,2,1,'34876747','0000-00-00','2005-06-01','male','A743657534HY','2638764J','N27979287U',1,'permanent','Clubfoot','85796767',1,0,'active',1,10,4,3,'0111250456897','2018-01-01',NULL,NULL,'New York','99832','New York','801210','0734556674','akellorich1@gmail.com','','','2024-06-15 13:50:28',5),
(4,'NT0002','Patrice','Lumumba','Emery',4,2,1,1,3,1,'5786547','0000-00-00','1974-03-31','male','A3476865H','873464','R827647',0,'none','','',1,0,'active',12,10,6,2,'1115456','1990-01-01',NULL,NULL,'Gatsabo District, Nyarutarama, Kigali','4587','Kigali, Rwanda','89089','256789456123','akellorich1@gmail.com','','','2024-06-15 15:04:58',5),
(5,'NT0003','Marion','Jones','Mayers',4,2,1,1,2,1,'456789798','0000-00-00','1980-04-01','female','A45876465H','376487654','N736746U',0,'none','','',1,0,'active',2,10,4,2,'11156789422','1992-06-01',NULL,NULL,'Beverly Hills, Carlifonia','9485908','Beverly Hills','810210','254753601502','akellorich1@gmail.com','','','2024-06-15 15:11:35',5),
(6,'AC0002','Richard','Onyango','',6,1,1,4,3,1,'878976986','0000-00-00','2024-07-15','male','7576545','75876','8766',1,'temporary','Fisheye','8579676709',1,0,'active',7,5,5,1,'79877698765','2024-07-15',NULL,NULL,'','','','','0727709773','akellorich1@gmail.com','','','2024-07-15 19:33:31',5),
(7,'ST0321','Leila','Charles','Achieng',4,2,1,1,1,1,'11840101','0000-00-00','2005-08-01','female','A0098749875H','-','-',0,'none','','',1,0,'active',1,11,9,5,'01020017043300','2023-08-01',NULL,NULL,'Haile Sellasie Avenue','52428','Nairobi','00200','0727477757','akellorich1@gmail.com','','','2024-08-09 12:54:36',5),
(8,'AC0003','Sam','Mosabi','Mungeli',4,1,12,1,1,1,'37966232','0000-00-00','2005-08-03','male','A009876545','7654321','1234567',0,'temporary','','',1,1,'withdrawn',2,20,10,621,'0987654321','2024-08-19',NULL,NULL,'Donholm','1725','Nairobi','00100','0725162889','sommosabi2@gmail.com','','','2024-08-19 14:19:45',5),
(9,'NT0004','Robert','Mugabe','Snr',4,2,12,1,1,1,'8797897','0000-00-00','1964-02-12','male','A874676587Q','S765754','N34776456',0,'none','','',1,0,'active',10,9,8,1807,'54679876598756','2024-10-01',NULL,NULL,'Haile Sellasie Avenue','52428','Nairobi','00200','0722000000','akellorich@yahoo.com','','','2024-10-08 14:33:30',5),
(10,'AC0004','Daniel','Middle','Boy',4,1,12,1,1,1,'39654412','0000-00-00','1979-10-09','male','A0123456','98087696','9808765',0,'none','','',1,0,'active',9,8,14,675,'0001232525154','2024-10-16',NULL,NULL,'Embakasi','00501','Nairobi','00100','0725162888','cthis999@gmail.com','','','2024-10-16 14:18:58',5),
(11,'TST0001','John','Kamau','Ndirangu',4,6,12,1,1,1,'12345','0000-00-00','1966-10-12','male','12345','4567890','654321',0,'none','','',1,0,'active',15,2,14,621,'098765432','2024-10-28',NULL,NULL,'Embakasi','0501','Nairobi','0100','0712345678','john23@gmail.com','','','2024-10-28 14:01:49',5);

/*Table structure for table `employeetraining` */

DROP TABLE IF EXISTS `employeetraining`;

CREATE TABLE `employeetraining` (
  `trainingid` int(11) NOT NULL AUTO_INCREMENT,
  `employeeid` int(11) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `coursename` varchar(50) DEFAULT NULL,
  `levelid` int(11) DEFAULT NULL,
  `coursemajor` varchar(50) DEFAULT NULL,
  `gradeattained` varchar(50) DEFAULT NULL,
  `institutionname` varchar(100) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `currentlyattending` tinyint(1) DEFAULT 0,
  `certificateno` varchar(50) DEFAULT NULL,
  `certificateattachment` varchar(2000) DEFAULT NULL,
  `certificateexpires` tinyint(1) DEFAULT 0,
  `certificateexpirydate` date DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`trainingid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `employeetraining` */

insert  into `employeetraining`(`trainingid`,`employeeid`,`category`,`coursename`,`levelid`,`coursemajor`,`gradeattained`,`institutionname`,`startdate`,`enddate`,`currentlyattending`,`certificateno`,`certificateattachment`,`certificateexpires`,`certificateexpirydate`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,6,'academic','Primary School',1,'-','520','Jospeh Apudo Primary School','1990-01-01','1998-12-31',0,'7543876754','',0,'2100-01-01','2024-08-21 19:22:33',5,1,'2024-08-21 19:31:12',5),
(2,6,'academic','Diploma in Computer Studies',5,'IT','Pass','Kenya Polytechnic','2004-01-01','2005-12-31',0,'35476543','',0,'2100-01-01','2024-08-21 19:42:19',5,0,NULL,NULL),
(3,6,'academic','KCPE',1,'Primary Certificate','541','Maranda Primary','1990-01-01','1997-12-31',0,'467354','../employee_uploads/trainings/Richard_Onyango__6_c121d299423a2721b76e_Richard_CV.pdf',0,'2100-01-01','2024-08-26 20:07:06',5,0,NULL,NULL),
(4,1,'academic','Test Training',10,'Test Major','Pass','Training school','2020-08-02','2024-05-31',0,'45876754','../employee_uploads/trainings/Richard_Onyango_Akelo_1_bec13d4a757dee00d6cd_marolalogo.bmp',0,'2100-01-01','2024-08-26 20:13:31',5,0,NULL,NULL),
(5,1,'professional','Network ++',10,'Netwoking','Pass','IAT','2020-01-01','2020-08-31',0,'547686','../employee_uploads/trainings/Richard_Onyango_Akelo_1_0905cdb807a0d0129b57_console.log',0,'2100-01-01','2024-08-26 20:23:31',5,0,NULL,NULL);

/*Table structure for table `employmentterms` */

DROP TABLE IF EXISTS `employmentterms`;

CREATE TABLE `employmentterms` (
  `termid` int(11) NOT NULL AUTO_INCREMENT,
  `termname` varchar(50) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`termid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `employmentterms` */

insert  into `employmentterms`(`termid`,`termname`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,'Permanent','2024-05-27 16:34:22',5,1,'2024-05-27 17:22:18',5),
(2,'Contracts','2024-05-27 16:37:45',5,1,'2024-05-27 17:22:14',5),
(3,'Casuals','2024-05-27 16:37:52',5,1,'2024-05-27 17:20:37',5),
(4,'Permanent','2024-06-07 21:45:58',5,0,NULL,NULL),
(5,'Contract','2024-06-07 21:46:08',5,0,NULL,NULL),
(6,'Casual','2024-06-07 21:46:30',5,0,NULL,NULL);

/*Table structure for table `grievancecategory` */

DROP TABLE IF EXISTS `grievancecategory`;

CREATE TABLE `grievancecategory` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `grievancecategory` */

insert  into `grievancecategory`(`categoryid`,`categoryname`,`description`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,'Compensation and Benefits','Salary disputes or discrepancies,Unfair bonus or incentive distribution,Lack of benefits (health insurance, retirement plans)',NULL,NULL,0,NULL,NULL),
(2,'Work Conditions','Unsafe or unhealthy working environment,Inadequate equipment or resources,overwork or long hours without compensation',NULL,NULL,0,NULL,NULL),
(3,'Discrimination and Harassment','Discrimination based on gender, race, age, religion, or disability,Sexual harassment,Bullying or hostile work environment',NULL,NULL,0,NULL,NULL),
(4,'Workplace Policies','Unclear or unfair policies on leaves, breaks, or working hours. Disagreements over performance appraisals. Unfair disciplinary actions',NULL,NULL,0,NULL,NULL),
(5,'Job Security','Unjustified termination or layoffs. Lack of job stability or contracts not honoured. Demotions without cause or poor handling of promotions',NULL,NULL,0,NULL,NULL),
(6,'Management and Leadership','Unfair treatment or favouritism by managers. Lack of clear communication from leadership. Inconsistent or poor decision-making by supervisors',NULL,NULL,0,NULL,NULL),
(7,'Work-life Balance','Excessive workloads or unreasonable deadlines. Lack of support for flexible work arrangements. Denial of vacation or personal time off',NULL,NULL,0,NULL,NULL),
(8,'Interpersonal Conflicts','Conflicts between co-worker’s Poor team dynamics or communication breakdowns. Unresolved disputes or personal differences affecting work',NULL,NULL,0,NULL,NULL);

/*Table structure for table `grievanceremedies` */

DROP TABLE IF EXISTS `grievanceremedies`;

CREATE TABLE `grievanceremedies` (
  `remedyid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `remedyname` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`remedyid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `grievanceremedies` */

insert  into `grievanceremedies`(`remedyid`,`categoryid`,`remedyname`,`description`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,1,'Conduct regular salary reviews',NULL,NULL,NULL,0,NULL,NULL),
(2,1,'Clear benefits communication',NULL,NULL,NULL,0,NULL,NULL),
(3,1,'Equitable distribution of bonuses',NULL,NULL,NULL,0,NULL,NULL),
(4,2,'Improve safety protocols',NULL,NULL,NULL,0,NULL,NULL),
(5,2,'Adequate resources',NULL,NULL,NULL,0,NULL,NULL),
(6,2,'Limit excessive hours',NULL,NULL,NULL,0,NULL,NULL),
(7,3,'Zero-tolerance policy',NULL,NULL,NULL,0,NULL,NULL),
(8,3,'Diversity and inclusion training',NULL,NULL,NULL,0,NULL,NULL),
(9,3,'Effective grievance procedures',NULL,NULL,NULL,0,NULL,NULL),
(10,4,'Policy clarity',NULL,NULL,NULL,0,NULL,NULL),
(11,4,'Fair performance appraisals',NULL,NULL,NULL,0,NULL,NULL),
(12,4,'Consistent disciplinary actions',NULL,NULL,NULL,0,NULL,NULL),
(13,5,'Transparent communication about layoffs',NULL,NULL,NULL,0,NULL,NULL),
(14,5,'Fair termination procedures',NULL,NULL,NULL,0,NULL,NULL),
(15,5,'Support during restructuring',NULL,NULL,NULL,0,NULL,NULL),
(16,6,'Leadership training',NULL,NULL,NULL,0,NULL,NULL),
(17,6,'Transparent decision-making',NULL,NULL,NULL,0,NULL,NULL),
(18,6,'Address favouritism',NULL,NULL,NULL,0,NULL,NULL),
(19,7,'Encourage time off',NULL,NULL,NULL,0,NULL,NULL),
(20,7,'Flexible work arrangements',NULL,NULL,NULL,0,NULL,NULL),
(21,7,'Reasonable workloads',NULL,NULL,NULL,0,NULL,NULL),
(22,8,'Conflict resolution training',NULL,NULL,NULL,0,NULL,NULL),
(23,8,'Team-building activities',NULL,NULL,NULL,0,NULL,NULL),
(24,8,'Prompt action on disputes',NULL,NULL,NULL,0,NULL,NULL);

/*Table structure for table `grievancetypes` */

DROP TABLE IF EXISTS `grievancetypes`;

CREATE TABLE `grievancetypes` (
  `typeid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `typename` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `grievancetypes` */

insert  into `grievancetypes`(`typeid`,`categoryid`,`typename`,`description`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,1,'Salary disputes or discrepancies',NULL,NULL,NULL,0,NULL,NULL),
(2,1,'Unfair bonus or incentive distribution',NULL,NULL,NULL,0,NULL,NULL),
(3,1,'Lack of benefits (health insurance, retirement plans)',NULL,NULL,NULL,0,NULL,NULL),
(4,2,'Unsafe or unhealthy working environment',NULL,NULL,NULL,0,NULL,NULL),
(5,2,'Inadequate equipment or resources',NULL,NULL,NULL,0,NULL,NULL),
(6,2,'Overwork or long hours without compensation',NULL,NULL,NULL,0,NULL,NULL),
(7,3,'Discrimination based on gender, race, age, religion, or disability',NULL,NULL,NULL,0,NULL,NULL),
(8,3,'Sexual harassment',NULL,NULL,NULL,0,NULL,NULL),
(9,3,'Bullying or hostile work environment',NULL,NULL,NULL,0,NULL,NULL),
(10,4,'Unclear or unfair policies on leaves, breaks, or working hours. ',NULL,NULL,NULL,0,NULL,NULL),
(11,4,'Disagreements over performance appraisals',NULL,NULL,NULL,0,NULL,NULL),
(12,4,'Unfair disciplinary actions',NULL,NULL,NULL,0,NULL,NULL),
(13,5,'Unjustified termination or layoffs',NULL,NULL,NULL,0,NULL,NULL),
(14,5,'Lack of job stability or contracts not honoured.',NULL,NULL,NULL,0,NULL,NULL),
(15,5,'Demotions without cause or poor handling of promotions',NULL,NULL,NULL,0,NULL,NULL),
(16,6,'Unfair treatment or favouritism by managers. ',NULL,NULL,NULL,0,NULL,NULL),
(17,6,'Lack of clear communication from leadership. ',NULL,NULL,NULL,0,NULL,NULL),
(18,6,'Inconsistent or poor decision-making by supervisors',NULL,NULL,NULL,0,NULL,NULL),
(19,7,'Excessive workloads or unreasonable deadlines',NULL,NULL,NULL,0,NULL,NULL),
(20,7,'. Lack of support for flexible work arrangements.',NULL,NULL,NULL,0,NULL,NULL),
(21,7,'Denial of vacation or personal time off',NULL,NULL,NULL,0,NULL,NULL),
(22,8,'Conflicts between co-worker’s',NULL,NULL,NULL,0,NULL,NULL),
(23,8,'Poor team dynamics or communication breakdowns.',NULL,NULL,NULL,0,NULL,NULL),
(24,8,'Unresolved disputes or personal differences affecting work',NULL,NULL,NULL,0,NULL,NULL);

/*Table structure for table `institution` */

DROP TABLE IF EXISTS `institution`;

CREATE TABLE `institution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(1000) DEFAULT NULL,
  `companyname` varchar(50) DEFAULT NULL,
  `physicaladdress` varchar(100) DEFAULT NULL,
  `postaladdress` varchar(1000) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `postalcode` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `baseurl` varchar(1000) DEFAULT NULL,
  `pinno` varchar(50) DEFAULT NULL,
  `nssfno` varchar(50) DEFAULT NULL,
  `nhifno` varchar(50) DEFAULT NULL,
  `supportemail` varchar(100) DEFAULT NULL,
  `supportphone` varchar(100) DEFAULT NULL,
  `essportalurl` varchar(100) DEFAULT NULL,
  `tssportalurl` varchar(100) DEFAULT NULL,
  `appurl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `institution` */

insert  into `institution`(`id`,`logo`,`companyname`,`physicaladdress`,`postaladdress`,`town`,`postalcode`,`mobile`,`email`,`baseurl`,`pinno`,`nssfno`,`nhifno`,`supportemail`,`supportphone`,`essportalurl`,`tssportalurl`,`appurl`) values 
(1,'company/logo.jpg','Wolfenberg International Limited','Industrial Area Dhanjal House 4th Floor Suite 401','58558','Nairobi','00200','+254741661005','info@wolfenberginternational.com','wolfenberginternational.com/doccheck','A00569898H','86457','N873647F','akellorich@gmail.com','254727709772','http://localhost/rentwise/ess',NULL,NULL);

/*Table structure for table `jobcategories` */

DROP TABLE IF EXISTS `jobcategories`;

CREATE TABLE `jobcategories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `numberingprefix` varchar(50) DEFAULT NULL,
  `currentnumber` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `retirementage` int(11) DEFAULT NULL,
  `retirementagewithdisability` int(11) DEFAULT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `jobcategories` */

insert  into `jobcategories`(`categoryid`,`categoryname`,`deleted`,`numberingprefix`,`currentnumber`,`dateadded`,`addedby`,`datedeleted`,`deletedby`,`retirementage`,`retirementagewithdisability`) values 
(1,'Teaching',0,'AC',5,'2024-06-13 17:01:57',5,NULL,NULL,70,75),
(2,'Non-Teaching',0,'NT',5,'2024-06-13 17:02:19',5,NULL,NULL,60,65),
(3,'Contract Staff',0,'CT',1,'2024-06-13 17:02:27',5,NULL,NULL,60,65),
(4,'Test',1,'TC',1,'2024-06-13 17:07:51',5,'2024-06-13 17:10:05',5,60,65),
(5,'Part-Time',0,'PT',1,'2024-06-15 12:22:07',5,NULL,NULL,60,65),
(6,'Test',0,'TST',2,'2024-10-28 13:54:31',5,NULL,NULL,60,65);

/*Table structure for table `jobgroups` */

DROP TABLE IF EXISTS `jobgroups`;

CREATE TABLE `jobgroups` (
  `jobgroupid` int(11) NOT NULL AUTO_INCREMENT,
  `jobgroupname` varchar(50) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`jobgroupid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `jobgroups` */

insert  into `jobgroups`(`jobgroupid`,`jobgroupname`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,'AI','2024-06-08 16:58:04',5,1,'2024-06-08 17:02:54',5),
(2,'II','2024-06-08 17:00:42',5,0,NULL,NULL),
(3,'III','2024-06-08 17:00:42',5,0,NULL,NULL),
(4,'IV','2024-06-08 17:00:42',5,0,NULL,NULL),
(5,'V','2024-06-08 17:00:42',5,0,NULL,NULL),
(6,'VI','2024-06-08 17:00:42',5,0,NULL,NULL),
(7,'VII','2024-06-08 17:00:42',5,0,NULL,NULL),
(8,'VIII','2024-06-08 17:00:42',5,0,NULL,NULL),
(9,'IX','2024-06-08 17:00:42',5,0,NULL,NULL),
(10,'X','2024-06-08 17:00:42',5,0,NULL,NULL),
(11,'XI','2024-06-08 17:00:42',5,0,NULL,NULL),
(12,'XII','2024-06-08 17:00:42',5,0,NULL,NULL),
(13,'XIII','2024-06-08 17:00:42',5,0,NULL,NULL),
(14,'XIV','2024-06-08 17:00:42',5,0,NULL,NULL),
(15,'XV','2024-06-08 17:00:42',5,0,NULL,NULL),
(16,'XVI','2024-06-08 17:00:42',5,0,NULL,NULL),
(17,'XVII','2024-06-08 17:00:42',5,0,NULL,NULL),
(18,'XVIII','2024-06-08 17:00:42',5,0,NULL,NULL),
(19,'XIX','2024-06-08 17:00:42',5,0,NULL,NULL),
(20,'XX','2024-06-08 17:00:42',5,0,NULL,NULL),
(21,'XXI','2024-06-08 17:00:42',5,1,'2024-06-08 17:04:30',5),
(22,'I','2024-06-08 17:03:12',5,1,'2024-06-08 17:04:36',5);

/*Table structure for table `jobnotches` */

DROP TABLE IF EXISTS `jobnotches`;

CREATE TABLE `jobnotches` (
  `notchid` int(11) NOT NULL AUTO_INCREMENT,
  `notchname` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  PRIMARY KEY (`notchid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `jobnotches` */

insert  into `jobnotches`(`notchid`,`notchname`,`deleted`,`dateadded`,`addedby`,`deletedby`,`datedeleted`) values 
(1,'1A',1,'2024-06-08 22:45:08',5,5,'2024-06-09 11:05:28'),
(2,'2',0,'2024-06-09 11:01:34',5,NULL,NULL),
(3,'3',0,'2024-06-09 11:01:34',5,NULL,NULL),
(4,'4',0,'2024-06-09 11:01:34',5,NULL,NULL),
(5,'5',0,'2024-06-09 11:01:34',5,NULL,NULL),
(6,'6',0,'2024-06-09 11:01:34',5,NULL,NULL),
(7,'7',0,'2024-06-09 11:01:34',5,NULL,NULL),
(8,'8',0,'2024-06-09 11:01:34',5,NULL,NULL),
(9,'9',0,'2024-06-09 11:01:34',5,NULL,NULL),
(10,'10',0,'2024-06-09 11:01:34',5,NULL,NULL),
(11,'TEST',1,'2024-06-09 11:07:19',5,5,'2024-06-09 11:07:32'),
(12,'Another Test',1,'2024-06-09 11:10:27',5,5,'2024-06-09 11:14:47'),
(13,'Yet Another Test',1,'2024-06-09 11:14:43',5,5,'2024-06-09 11:14:50'),
(14,'1',0,'2024-06-09 11:25:31',5,NULL,NULL);

/*Table structure for table `jobpositions` */

DROP TABLE IF EXISTS `jobpositions`;

CREATE TABLE `jobpositions` (
  `positionid` int(11) NOT NULL AUTO_INCREMENT,
  `positionname` varchar(100) DEFAULT NULL,
  `establishment` int(11) DEFAULT NULL,
  `reportsto` int(11) DEFAULT NULL,
  `startjobgroupid` int(11) DEFAULT NULL,
  `startnotchid` int(11) DEFAULT NULL,
  `endjobgroupid` int(11) DEFAULT NULL,
  `endnotchid` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `systemlabel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`positionid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `jobpositions` */

insert  into `jobpositions`(`positionid`,`positionname`,`establishment`,`reportsto`,`startjobgroupid`,`startnotchid`,`endjobgroupid`,`endnotchid`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`,`systemlabel`) values 
(1,'Vice-Chancellor',1,0,19,8,20,10,'2024-06-09 14:18:00',5,0,NULL,NULL,'SENIOR MANAGEMENT'),
(2,'DVC (Finance)',1,1,18,7,18,10,'2024-06-09 14:54:20',5,0,NULL,NULL,NULL),
(3,'DVC (Academic)',1,1,18,7,18,10,'2024-06-09 14:54:46',5,0,NULL,NULL,NULL),
(4,'DVC (Infrastructure)',1,1,18,7,18,10,'2024-06-09 15:59:11',5,0,NULL,NULL,NULL),
(5,'Director Finance',1,4,15,2,15,10,'2024-06-09 15:59:43',5,0,NULL,NULL,NULL),
(6,'Director Human Resource',1,4,15,2,15,10,'2024-06-09 16:00:11',5,0,NULL,NULL,'HR MANAGER'),
(7,'Director Procurement',1,2,15,2,15,10,'2024-06-09 16:01:53',5,0,NULL,NULL,NULL),
(8,'Director Faculty',5,3,15,2,15,10,'2024-06-09 16:02:38',5,0,NULL,NULL,NULL),
(9,'Senior Lecturer',30,8,14,14,14,10,'2024-06-09 16:03:25',5,0,NULL,NULL,NULL),
(10,'Lecturer',50,8,13,2,13,10,'2024-06-09 16:03:54',5,0,NULL,NULL,NULL),
(11,'Tutorial Fellows',30,9,12,2,12,10,'2024-06-09 16:04:44',5,1,'2024-06-09 16:11:26',5,NULL),
(12,'Graduate Assistants',20,8,11,2,11,10,'2024-06-09 16:05:15',5,0,NULL,NULL,NULL),
(13,'Tutorial Fellow',10,8,11,2,12,10,'2024-06-09 16:13:11',5,0,NULL,NULL,NULL),
(14,'Senior Technician',5,8,11,5,12,5,'2024-06-09 16:13:46',5,0,NULL,NULL,NULL),
(15,'Technician',25,14,8,2,10,10,'2024-06-09 16:14:19',5,0,NULL,NULL,NULL),
(16,'Sales Manager',1,2,11,10,12,10,'2024-08-09 12:51:31',5,0,NULL,NULL,NULL);

/*Table structure for table `jobsalarystructures` */

DROP TABLE IF EXISTS `jobsalarystructures`;

CREATE TABLE `jobsalarystructures` (
  `structureid` int(11) NOT NULL AUTO_INCREMENT,
  `jobgroupid` int(11) DEFAULT NULL,
  `notchid` int(11) DEFAULT NULL,
  `payrollitemid` int(11) DEFAULT NULL,
  `minimumvalue` decimal(18,2) DEFAULT NULL,
  `maximumvalue` decimal(18,2) DEFAULT NULL,
  `annualincrement` decimal(18,2) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`structureid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `jobsalarystructures` */

insert  into `jobsalarystructures`(`structureid`,`jobgroupid`,`notchid`,`payrollitemid`,`minimumvalue`,`maximumvalue`,`annualincrement`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,2,14,5,11000.00,11560.00,560.00,'2024-06-12 14:52:18',5,0,NULL,NULL),
(2,2,14,6,7800.00,8500.00,500.00,'2024-06-12 15:04:45',5,0,NULL,NULL),
(3,2,14,7,10000.00,10000.00,1.00,'2024-06-12 15:07:55',5,1,'2024-06-12 15:14:13',5),
(4,10,8,5,132500.00,136000.00,1500.00,'2024-06-22 15:39:33',5,0,NULL,NULL),
(5,10,8,6,45800.00,45800.00,1.00,'2024-06-22 15:39:56',5,0,NULL,NULL),
(6,10,8,7,14000.00,14000.00,1.00,'2024-06-22 15:40:20',5,0,NULL,NULL),
(7,10,4,5,162800.00,165500.00,1500.00,'2024-06-23 09:44:42',5,0,NULL,NULL),
(8,10,4,6,56800.00,56800.00,1.00,'2024-06-23 09:45:07',5,0,NULL,NULL),
(9,10,4,7,14000.00,14000.00,1.00,'2024-06-23 09:45:24',5,0,NULL,NULL);

/*Table structure for table `leaveallowableallocation` */

DROP TABLE IF EXISTS `leaveallowableallocation`;

CREATE TABLE `leaveallowableallocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leaveid` int(11) DEFAULT NULL,
  `allocation` int(11) DEFAULT NULL,
  `percentagepayable` decimal(3,2) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `reasondeleted` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `leaveallowableallocation` */

insert  into `leaveallowableallocation`(`id`,`leaveid`,`allocation`,`percentagepayable`,`deleted`,`datedeleted`,`deletedby`,`reasondeleted`) values 
(1,5,30,3.00,0,NULL,NULL,NULL),
(2,5,15,1.00,0,NULL,NULL,NULL);

/*Table structure for table `leaveapplications` */

DROP TABLE IF EXISTS `leaveapplications`;

CREATE TABLE `leaveapplications` (
  `applicationid` int(11) NOT NULL AUTO_INCREMENT,
  `employeeid` int(11) DEFAULT NULL,
  `leavetypeid` int(11) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `daystaken` decimal(3,2) DEFAULT NULL,
  `attachment` varchar(1000) DEFAULT NULL,
  `narration` varchar(1000) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  `addedby` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `relieverid` int(11) DEFAULT NULL,
  `supervisorid` int(11) DEFAULT NULL,
  `approvalflowid` int(11) DEFAULT NULL,
  PRIMARY KEY (`applicationid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `leaveapplications` */

insert  into `leaveapplications`(`applicationid`,`employeeid`,`leavetypeid`,`startdate`,`enddate`,`daystaken`,`attachment`,`narration`,`status`,`addedby`,`dateadded`,`deleted`,`datedeleted`,`deletedby`,`relieverid`,`supervisorid`,`approvalflowid`) values 
(11,5,2,'2024-08-16','2024-08-20',3.00,'','To be contacted via 0727709772 or akellorich@gmail.com','pending',5,'2024-08-15 18:40:00',0,NULL,NULL,7,3,1),
(12,5,2,'2024-08-26','2024-08-28',3.00,'../employee_uploads/leaveapplications/employeeid_5_Annual Leave_26-Aug-2024_28-Aug-2024_e569a2a5b01fd7b79efa_akinyi_face_photo.png','Need to attend to an emergency at home in Nyahururu, can be contacted via phone or email','pending',5,'2024-08-18 13:15:44',0,NULL,NULL,4,3,1),
(15,5,2,'2024-08-26','2024-08-28',3.00,'','Attending prize giving day for daughter on tuesday in Mombasa','pending',5,'2024-08-18 16:11:16',0,NULL,NULL,4,3,1),
(16,5,2,'2024-09-01','2024-09-04',3.00,'../employee_uploads/leaveapplications/employeeid_5_Annual Leave_01-Sep-2024_04-Sep-2024_a67df1f0342b852e163d_My_PIN_Certificate.pdf','Going for  daughters prize giving day in Mombasa, can be reached via personal email','pending',5,'2024-08-20 18:13:30',0,NULL,NULL,6,7,1);

/*Table structure for table `leaveapproval` */

DROP TABLE IF EXISTS `leaveapproval`;

CREATE TABLE `leaveapproval` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicationid` int(11) DEFAULT NULL,
  `approvallevelid` int(11) DEFAULT NULL,
  `approvaluser` int(11) DEFAULT NULL,
  `narration` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'approved',
  `statusdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `leaveapproval` */

insert  into `leaveapproval`(`id`,`applicationid`,`approvallevelid`,`approvaluser`,`narration`,`status`,`statusdate`) values 
(6,11,1,5,'The employee has met all application requirements','approved','2024-08-17 15:29:42'),
(7,11,2,5,'The employee has met all application requirements','approved','2024-08-17 15:29:53'),
(8,11,3,5,'The employee has met all application requirements','approved','2024-08-17 15:30:00'),
(9,12,1,5,'The user has some work pending','cancelled','2024-08-18 14:28:48'),
(10,15,1,5,'The user did not properly inform the reliever','cancelled','2024-08-18 16:56:16'),
(11,16,1,5,'Kindly handover roles to Maryjane instead','approved','2024-08-20 18:34:05'),
(12,16,2,5,'Enjoy your holidays and stay safe','approved','2024-08-20 18:41:39'),
(13,16,3,5,'Kindly hand over all tasks as directed by your sup','approved','2024-08-20 18:42:11');

/*Table structure for table `leaveapprovalflows` */

DROP TABLE IF EXISTS `leaveapprovalflows`;

CREATE TABLE `leaveapprovalflows` (
  `flowid` int(11) NOT NULL AUTO_INCREMENT,
  `flowname` varchar(50) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `deletedby` int(11) DEFAULT NULL,
  `datedelete` datetime DEFAULT NULL,
  PRIMARY KEY (`flowid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `leaveapprovalflows` */

insert  into `leaveapprovalflows`(`flowid`,`flowname`,`dateadded`,`addedby`,`deleted`,`deletedby`,`datedelete`) values 
(1,'General Flow','2024-07-29 14:15:11',5,0,NULL,NULL),
(2,'Test Flow','2024-07-29 14:33:22',5,1,5,'2024-07-29 15:35:27'),
(3,'Supervisor Only','2024-08-04 08:46:42',5,0,NULL,NULL);

/*Table structure for table `leaveapprovallevels` */

DROP TABLE IF EXISTS `leaveapprovallevels`;

CREATE TABLE `leaveapprovallevels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flowid` int(11) DEFAULT NULL,
  `approvallevel` varchar(50) DEFAULT NULL,
  `escalationduration` int(11) DEFAULT NULL,
  `colourcode` varchar(50) DEFAULT NULL,
  `hierarchy` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `reasondeleted` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `leaveapprovallevels` */

insert  into `leaveapprovallevels`(`id`,`flowid`,`approvallevel`,`escalationduration`,`colourcode`,`hierarchy`,`deleted`,`datedeleted`,`deletedby`,`reasondeleted`) values 
(1,1,'supervisor',120,'#f91010',1,0,NULL,NULL,NULL),
(2,1,'hrmanager',120,'#1c19e1',2,0,NULL,NULL,NULL),
(3,1,'topmanagement',120,'#40981b',3,0,NULL,NULL,NULL),
(4,2,'supervisor',120,'#f10909',1,0,NULL,NULL,NULL),
(5,3,'supervisor',-1,'#3cda10',1,0,NULL,NULL,NULL);

/*Table structure for table `leavepolicy` */

DROP TABLE IF EXISTS `leavepolicy`;

CREATE TABLE `leavepolicy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cutoffdate` date DEFAULT NULL,
  `prorateallocations` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `leavepolicy` */

insert  into `leavepolicy`(`id`,`cutoffdate`,`prorateallocations`) values 
(1,'2024-01-01',1);

/*Table structure for table `leavetypes` */

DROP TABLE IF EXISTS `leavetypes`;

CREATE TABLE `leavetypes` (
  `leaveid` int(11) NOT NULL AUTO_INCREMENT,
  `leavename` varchar(50) DEFAULT NULL,
  `allocationdays` int(11) DEFAULT NULL,
  `probationperiod` int(11) DEFAULT NULL,
  `canbesplit` tinyint(1) DEFAULT 1,
  `halfdayapplication` tinyint(1) DEFAULT NULL,
  `skipsholidays` tinyint(1) DEFAULT NULL,
  `applywithoutallocation` tinyint(1) DEFAULT 0,
  `requiresattachment` tinyint(1) DEFAULT 1,
  `approvalflow` int(11) DEFAULT NULL,
  `allowancepayable` tinyint(1) DEFAULT 0,
  `allowancepayrollitemid` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `addedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `systemlabel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`leaveid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `leavetypes` */

insert  into `leavetypes`(`leaveid`,`leavename`,`allocationdays`,`probationperiod`,`canbesplit`,`halfdayapplication`,`skipsholidays`,`applywithoutallocation`,`requiresattachment`,`approvalflow`,`allowancepayable`,`allowancepayrollitemid`,`dateadded`,`deleted`,`addedby`,`datedeleted`,`deletedby`,`systemlabel`) values 
(1,'Annual Leave',21,60,1,1,1,0,0,1,1,16,'2024-08-03 17:31:01',1,5,'2024-08-03 17:45:21',5,NULL),
(2,'Annual Leave',21,60,1,1,1,0,0,1,1,16,'2024-08-03 21:26:23',0,5,NULL,NULL,'ANNUAL LEAVE'),
(3,'Maternity Leave',90,60,0,0,0,1,0,1,0,0,'2024-08-03 21:26:52',0,5,NULL,NULL,'MATERNITY LEAVE'),
(4,'Paternity Leave',14,60,0,0,0,0,1,1,0,0,'2024-08-03 21:27:22',0,5,NULL,NULL,'PATERNITY LEAVE'),
(5,'Sick Leave',45,60,1,1,0,1,1,1,0,0,'2024-08-03 21:28:14',0,5,NULL,NULL,'SICK LEAVE'),
(6,'Off Days',1,1,1,1,0,1,0,1,0,0,'2024-08-03 21:31:52',0,5,NULL,NULL,NULL);

/*Table structure for table `maritalstatuses` */

DROP TABLE IF EXISTS `maritalstatuses`;

CREATE TABLE `maritalstatuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maritalstatus` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `maritalstatuses` */

insert  into `maritalstatuses`(`id`,`maritalstatus`,`deleted`) values 
(1,'Single',0),
(2,'Married',0),
(3,'Divorced',0),
(4,'Widowed',0);

/*Table structure for table `objects` */

DROP TABLE IF EXISTS `objects`;

CREATE TABLE `objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `restricted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `objects` */

insert  into `objects`(`id`,`description`,`module`,`restricted`) values 
(1,'View members list','bosa',0),
(2,'Manage member details','bosa',0),
(3,'View suppliers list','bosa',0),
(4,'Manage member people','bosa',0),
(5,'View users list','admin',0),
(6,'Manage user details','admin',0),
(7,'View member statements','bosa',0),
(8,'Manage member schedule','bosa',0),
(9,'Manage member loan application','bosa',0),
(10,'Manage member documents','bosa',0),
(11,'Withdraw member','bosa',0),
(12,'Manage member notes','bosa',0),
(13,'Approve loan','bosa',0),
(14,'Manage system settings','admin',0),
(15,'Manage chart of accounts','finance',0),
(16,'Manage financial periods','finance',0),
(17,'Manage journals','finance',0),
(18,'Manage payments','finance',0),
(19,'Reject member loans','bosa',0),
(20,'Generate report by company','reports',0),
(21,'Reschedule member loan','reports',0),
(22,'Receive member individual payments','reports',0),
(23,'Refund member savings','reports',0),
(24,'Receive member company payments','reports',0),
(25,'Print member receipts','reports',0),
(26,'Manage Companies','admin',0),
(27,'Manage bankings','finance',0),
(28,'Manage Chart of Accounts','finance',0),
(29,'Manage Payments','finance',0),
(30,'Manage customer accounts','fosa',0),
(31,'Manage FOSA transactions','fosa',0),
(32,'Manage FOSA float','fosa',0),
(33,'Generate FOSA statements','fosa',0),
(34,'View Trial Balance','reports',0),
(35,'View Profit and Loss Account','reports',0),
(36,'View Balance Sheet','reports',0),
(37,'Manage FOSA account type','fosa',0),
(38,'Manage FOSA charges','fosa',0),
(39,'Manage system settings','admin',0),
(40,'Generate loan analysis report','reports',0),
(41,'Generate dividend report','reports',0),
(42,'Disburse dividends','bosa',0),
(43,'Generate grade A loans report','reports',0),
(44,'Generate portfolio at risk report','reports',0),
(45,'Generate qualitative analysis report','reports',0),
(46,'Generate quantitative analysis report','reports',0),
(47,'Generate company membership report','reports',0),
(48,'View System Dashboard','reports',0),
(49,'Manage Loans','bosa',0),
(50,'Manage Recoveries','bosa',0),
(51,'Manage FOSA','fosa',0),
(52,'Manage Communications','bosa',0),
(53,'Manage System Users','admin',0),
(54,'Manage deliveries','bosa',0),
(55,'Manage member recoveries','bosa',0),
(56,'View reports','bosa',0),
(57,'Manage finance','finance',0),
(58,'Manage customer deliveries','bosa',0),
(59,'Save member details','bosa',0);

/*Table structure for table `payetaxtable` */

DROP TABLE IF EXISTS `payetaxtable`;

CREATE TABLE `payetaxtable` (
  `payeid` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `personalrelief` decimal(18,2) DEFAULT NULL,
  `disabilityallowable` decimal(18,2) DEFAULT NULL,
  `motgageinterestmaxallowable` decimal(18,2) DEFAULT NULL,
  `pensionmaxallowable` decimal(18,2) DEFAULT NULL,
  `insurancereliefrate` decimal(18,2) DEFAULT NULL,
  `insurancereliefmaxamount` decimal(18,2) DEFAULT NULL,
  `hospmaxallowable` decimal(18,2) DEFAULT NULL,
  `current` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`payeid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `payetaxtable` */

insert  into `payetaxtable`(`payeid`,`label`,`startdate`,`enddate`,`personalrelief`,`disabilityallowable`,`motgageinterestmaxallowable`,`pensionmaxallowable`,`insurancereliefrate`,`insurancereliefmaxamount`,`hospmaxallowable`,`current`) values 
(1,'2024','2024-01-01',NULL,2400.00,150000.00,25000.00,20000.00,15.00,5000.00,NULL,1);

/*Table structure for table `payetaxtabledetails` */

DROP TABLE IF EXISTS `payetaxtabledetails`;

CREATE TABLE `payetaxtabledetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payeid` int(11) DEFAULT NULL,
  `minvalue` decimal(18,2) DEFAULT NULL,
  `maxvalue` decimal(18,2) DEFAULT NULL,
  `rate` decimal(18,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `payetaxtabledetails` */

insert  into `payetaxtabledetails`(`id`,`payeid`,`minvalue`,`maxvalue`,`rate`) values 
(1,1,0.00,24000.00,10.00),
(2,1,24001.00,32333.00,25.00),
(3,1,32334.00,500000.00,30.00),
(4,1,500001.00,800000.00,32.50),
(5,1,800001.00,100000000.00,35.00);

/*Table structure for table `paymentmodes` */

DROP TABLE IF EXISTS `paymentmodes`;

CREATE TABLE `paymentmodes` (
  `paymentmodeid` int(11) NOT NULL AUTO_INCREMENT,
  `paymentmodename` varchar(50) DEFAULT NULL,
  `requiresref` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `dateadded` timestamp NULL DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`paymentmodeid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `paymentmodes` */

insert  into `paymentmodes`(`paymentmodeid`,`paymentmodename`,`requiresref`,`deleted`,`dateadded`,`addedby`,`datedeleted`,`deletedby`) values 
(1,'Cash',0,0,NULL,NULL,NULL,NULL),
(2,'MPESA',1,0,NULL,NULL,NULL,NULL),
(3,'Deposit Slip',1,0,NULL,NULL,NULL,NULL),
(4,'Cheque',1,0,NULL,NULL,NULL,NULL),
(5,'EFT',1,0,NULL,NULL,NULL,NULL),
(6,'Airtel Money',1,0,NULL,NULL,NULL,NULL);

/*Table structure for table `payrollbankremittances` */

DROP TABLE IF EXISTS `payrollbankremittances`;

CREATE TABLE `payrollbankremittances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payrollid` int(11) DEFAULT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `branchid` int(11) DEFAULT NULL,
  `accountno` varchar(50) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `deletedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `verificationid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `payrollbankremittances` */

insert  into `payrollbankremittances`(`id`,`payrollid`,`employeeid`,`branchid`,`accountno`,`amount`,`deleted`,`deletedby`,`datedeleted`,`verificationid`) values 
(9,3,1,3,'0250190497310',140584.22,1,5,'2024-06-30 13:32:04',NULL),
(10,3,2,3,'0111250456897',136046.10,1,5,'2024-06-30 13:32:04',NULL),
(11,3,3,3,'0111250456897',164336.60,1,5,'2024-06-30 13:32:04',NULL),
(12,3,4,2,'1115456',53050.10,1,5,'2024-06-30 13:32:04',NULL),
(13,3,5,2,'11156789422',164336.60,1,5,'2024-06-30 13:32:04',NULL),
(14,3,1,3,'0250190497310',140584.22,1,5,'2024-06-30 13:32:04',NULL),
(15,3,2,3,'0111250456897',136046.10,1,5,'2024-06-30 13:32:04',NULL),
(16,3,3,3,'0111250456897',164336.60,1,5,'2024-06-30 13:32:04',NULL),
(17,3,4,2,'1115456',53050.10,1,5,'2024-06-30 13:32:04',NULL),
(18,3,5,2,'11156789422',164336.60,1,5,'2024-06-30 13:32:04',NULL),
(19,4,1,3,'0250190497310',133627.97,1,5,'2024-07-31 13:33:23','0d48927392d08b5e8fa0548e9ddd8cb5f6c6357d'),
(20,4,2,3,'0111250456897',129089.85,1,5,'2024-07-31 13:33:23','0f062eb1cb0a553881f31133453b5c65fcd063cc'),
(21,4,3,3,'0111250456897',155789.60,1,5,'2024-07-31 13:33:23','1976f835638f6d312b13da01b544752b6c59f7e6'),
(22,4,4,2,'1115456',50503.85,1,5,'2024-07-31 13:33:23','120a41414998eece8c4f9f1fb714fa4f51f4eadc'),
(23,4,5,2,'11156789422',155789.60,1,5,'2024-07-31 13:33:23','f84450ba164aa67e5041407b1089e8fa995bdd7a'),
(24,4,1,3,'0250190497310',133627.97,1,5,'2024-07-31 13:33:23','5500e75695f6b8d8a7e157647db5001c07d5d3f0'),
(25,4,2,3,'0111250456897',129089.85,1,5,'2024-07-31 13:33:23','cee7c1427b9f6d39acfc0b1e1e3f3ea969a31b95'),
(26,4,3,3,'0111250456897',155789.60,1,5,'2024-07-31 13:33:23','82023859b9c3a2920e088eedd13d592abab9ddd5'),
(27,4,4,2,'1115456',50503.85,1,5,'2024-07-31 13:33:23','d32419c80d3fb1dc7c3a787f9e3bd5436d86e553'),
(28,4,5,2,'11156789422',155789.60,1,5,'2024-07-31 13:33:23','2ce6f1733e40a12e8a6c16d55096e6ff41d78ab4'),
(29,4,2,3,'0111250456897',129089.85,1,5,'2024-07-31 13:33:23','f1783f1976f88791f9f7f8135a475bc4f2f46a35'),
(30,4,3,3,'0111250456897',155789.60,1,5,'2024-07-31 13:33:23','a95707f019b7d694fc991dd1b08aca1ca0b1192a'),
(31,4,4,2,'1115456',50503.85,1,5,'2024-07-31 13:33:23','dffa94e112274162e1c11294ffa2fb15b242c530'),
(32,4,5,2,'11156789422',155789.60,1,5,'2024-07-31 13:33:23','4723f9fc1fdb5034fe6d9337b059664254823ac5'),
(33,4,2,3,'0111250456897',129089.85,1,5,'2024-07-31 13:33:23','e34b477c1a8a94371c8ceb395fdf338435ebf799'),
(34,4,3,3,'0111250456897',146744.85,1,5,'2024-07-31 13:33:23','b6c7383a12344c875ea086c6cd63024e5a056f2d'),
(35,4,4,2,'1115456',53928.85,1,5,'2024-07-31 13:33:23','8b0caf4cec5cc10d67afdd6f045e4fcc63d470fb'),
(36,4,5,2,'11156789422',155789.60,1,5,'2024-07-31 13:33:23','739d50214ba93608ae0a65f37768715ec8051798'),
(37,4,1,3,'0250190497310',143902.97,1,5,'2024-07-31 13:33:23','882bdac0d932bba3b4622b204ae1e31b7d6a521b'),
(38,4,2,3,'0111250456897',129089.85,1,5,'2024-07-31 13:33:23','924f98e9e6afa6ffb4031f989a8ee163027d0ed7'),
(39,4,3,3,'0111250456897',146744.85,1,5,'2024-07-31 13:33:23','b85d9330570d12b47f165a5a84e3b3d53a4cad27'),
(40,4,4,2,'1115456',53928.85,1,5,'2024-07-31 13:33:23','89534fc523c81c15f2bbd57231aa84f47f4de451'),
(41,4,5,2,'11156789422',155789.60,1,5,'2024-07-31 13:33:23','0022993de589fa6f3f42d83e9989aec8a74d59b4'),
(42,4,1,3,'0250190497310',143902.97,1,5,'2024-07-31 13:33:23','f2b09648d1e0b2c3744e45e125bc62e2176b716c'),
(43,4,2,3,'0111250456897',129089.85,1,5,'2024-07-31 13:33:23','d3e86ffa125881f0294dceac02e319134628b7f4'),
(44,4,3,3,'0111250456897',146744.85,1,5,'2024-07-31 13:33:23','5627b5f8caf1f412ce44d24adfa83bffcc574693'),
(45,4,4,2,'1115456',70890.85,1,5,'2024-07-31 13:33:23','29726bdd01f5eaed38ee2baca9b6058017ecf8d1'),
(46,4,5,2,'11156789422',155789.60,1,5,'2024-07-31 13:33:23','c7058ff923fdbd6f7d4496e2d6006fa188b1c21f'),
(47,4,1,3,'0250190497310',143902.97,1,5,'2024-07-31 13:33:23','9bed9e14c17addb19bbebccd97914a8b1de39816'),
(48,4,2,3,'0111250456897',119499.85,1,5,'2024-07-31 13:33:23','e0ce0029ce4f70f82b3259efee2fb5ffe50a8029'),
(49,4,3,3,'0111250456897',146744.85,1,5,'2024-07-31 13:33:23','e71eabb6d5e3c3555c652f2439db52b8cd32a3ca'),
(50,4,4,2,'1115456',70890.85,1,5,'2024-07-31 13:33:23','fa9288dd27e7dcf4c55eea6890e2af9aa66ce675'),
(51,4,5,2,'11156789422',155789.60,1,5,'2024-07-31 13:33:23','76034513324b850cf496947056845dc58d865fea'),
(52,4,2,3,'0111250456897',124037.97,1,5,'2024-07-31 13:33:23','f3a6f20235fcea6db226be2bea0a18e5bf9659dd'),
(53,4,3,3,'0111250456897',151830.97,1,5,'2024-07-31 13:33:23','5c58d2f4f1dfbec8dfe03e2332ab4c9fef97e66c'),
(54,4,4,2,'1115456',72551.97,1,5,'2024-07-31 13:33:23','fc97ce1373634f89dd0c1094db95c3f644d9a604'),
(55,4,5,2,'11156789422',161365.50,1,5,'2024-07-31 13:33:23','b81c016bf8880cca4092f90019d6a539e48a0d5d'),
(56,4,6,1,'79877698765',0.00,1,5,'2024-07-31 13:33:23','8d5ab61ba52d699cbf42ac9810e12da258ffc007'),
(57,4,2,3,'0111250456897',124037.97,1,5,'2024-07-31 13:33:23','be2d0b39b6d4cd56cf79992770e2fd3f4568870b'),
(58,4,3,3,'0111250456897',151830.97,1,5,'2024-07-31 13:33:23','da45f65cee0126f1f37c22a0f69d25c02fc5318a'),
(59,4,4,2,'1115456',72551.97,1,5,'2024-07-31 13:33:23','f5d0a2c2e3e7784564a259ab687bf376e1587db0'),
(60,4,5,2,'11156789422',161365.50,1,5,'2024-07-31 13:33:23','b7f6ba9708dae453b38cc21e749f28186d6a2b8c'),
(61,4,6,1,'79877698765',0.00,1,5,'2024-07-31 13:33:23','bc7b50a24c904515ed502c811a0a9b2e1740abb4'),
(62,4,2,3,'0111250456897',124037.97,1,5,'2024-07-31 13:33:23','dba6d5d796932b6c751015cf0d71399c18e2caae'),
(63,4,3,3,'0111250456897',151830.97,1,5,'2024-07-31 13:33:23','bb2b12bc795be2cfe1de564c1ffc650e9b416591'),
(64,4,4,2,'1115456',72551.97,1,5,'2024-07-31 13:33:23','ff6c6e6a42f8dc9e05ac68a5514d70bfbd5a9e26'),
(65,4,5,2,'11156789422',161365.50,1,5,'2024-07-31 13:33:23','456e1277680dfe3444e25d4bd81aa23585dc9ada'),
(66,4,6,1,'79877698765',0.00,1,5,'2024-07-31 13:33:23','24f0ef37242c3361b00d3df515ae5024508b0924'),
(67,4,2,3,'0111250456897',124037.97,1,5,'2024-07-31 13:33:23','2d82099fb123308ca4a9afff016ae3e247662763'),
(68,4,3,3,'0111250456897',196830.97,1,5,'2024-07-31 13:33:23','8e20cccf6584e7cdbf4bb90c8ada0ea205407bc0'),
(69,4,4,2,'1115456',72551.97,1,5,'2024-07-31 13:33:23','ff8e233ba2234bd83081c8f7fde1823c2e6cfb17'),
(70,4,5,2,'11156789422',161365.50,1,5,'2024-07-31 13:33:23','288b194d1121fda5415be5b5042e20d4c3378d40'),
(71,4,6,1,'79877698765',0.00,1,5,'2024-07-31 13:33:23','74c09f1455309cef40b498880273be3ae49e8352'),
(72,4,2,3,'0111250456897',124037.97,1,5,'2024-07-31 13:33:23','2d8cde957e3cf5fa0428df097ae5ecd819900bc5'),
(73,4,3,3,'0111250456897',196830.97,1,5,'2024-07-31 13:33:23','0c08dfa7e878a6476f0a356dd86879ca4fdc8a5f'),
(74,4,4,2,'1115456',72551.97,1,5,'2024-07-31 13:33:23','93ce65dcb9a3b90c536a836ecbf774623087217b'),
(75,4,5,2,'11156789422',161365.50,1,5,'2024-07-31 13:33:23','4bd863dd63c7c07832a84eef47bc19a749318389'),
(76,4,6,1,'79877698765',0.00,1,5,'2024-07-31 13:33:23','beef892f7c08952c2310373b03d0d6443328d41b'),
(77,4,2,3,'0111250456897',124037.97,1,5,'2024-07-31 13:33:23','90c3917bce1fb23e942a70ceb176525acdfbfd20'),
(78,4,3,3,'0111250456897',196830.97,1,5,'2024-07-31 13:33:23','82d4035304282ebdc95d72fc505e35de85614f16'),
(79,4,4,2,'1115456',72551.97,1,5,'2024-07-31 13:33:23','94c79be15a2213fb5f46b519d9389966d1ec5b72'),
(80,4,5,2,'11156789422',161365.50,1,5,'2024-07-31 13:33:23','482685b465b96be67e4f09fe102ab8fad63c51e8'),
(81,4,6,1,'79877698765',0.00,1,5,'2024-07-31 13:33:23','128004cbafb3c8aac7c265132ee8c40745e03783'),
(82,4,2,3,'0111250456897',124037.97,1,5,'2024-07-31 13:33:23','d5b8a8bd84cae39ff174c8dbdab610e3865a4606'),
(83,4,3,3,'0111250456897',196830.97,1,5,'2024-07-31 13:33:23','924a6618b0df2c060bb71aef2b5bfd31436f2add'),
(84,4,4,2,'1115456',72551.97,1,5,'2024-07-31 13:33:23','cc84e8ab961171a5d9b56f5d92fa5b9fbbbe4972'),
(85,4,5,2,'11156789422',161365.50,1,5,'2024-07-31 13:33:23','c880affcdeee54d38a16afb0b25e8aa7ba49e033'),
(86,4,6,1,'79877698765',0.00,1,5,'2024-07-31 13:33:23','008f77b6405253131b8dfb174e4fcd277d6cfd09'),
(87,4,2,3,'0111250456897',124037.97,1,5,'2024-07-31 13:33:23','a27173c62231cc314718528bcd5b39b6166e8521'),
(88,4,3,3,'0111250456897',196830.97,1,5,'2024-07-31 13:33:23','ea0a0dbe1fb684a4ec7e1080b1513e537ecddd44'),
(89,4,4,2,'1115456',72551.97,1,5,'2024-07-31 13:33:23','de474fd47a2bf79111be98439940ce4ad18f6e13'),
(90,4,5,2,'11156789422',161365.50,1,5,'2024-07-31 13:33:23','90dac4b3530017c4722655cdb16ddef876f4f978'),
(91,4,6,1,'79877698765',0.00,1,5,'2024-07-31 13:33:23','95fd800d59f66491e0c0ccdc51fe1bf0986b556c'),
(92,4,2,3,'0111250456897',124037.97,1,5,'2024-07-31 13:33:23','9d78aa74e7b91b09ff6ecbe6980d55f1c417155f'),
(93,4,3,3,'0111250456897',196830.97,1,5,'2024-07-31 13:33:23','562431f9dfa05b2b33b879d1fa8cd3b82726c63d'),
(94,4,4,2,'1115456',72551.97,1,5,'2024-07-31 13:33:23','57ca373dc20862f67627e0367f4cff5d082912ee'),
(95,4,5,2,'11156789422',161365.50,1,5,'2024-07-31 13:33:23','ee44146ca98f888e52bafd548c53a055b781db27'),
(96,4,6,1,'79877698765',0.00,1,5,'2024-07-31 13:33:23','0a89909688dd9fbaee47c29edaed153af2792401'),
(97,4,2,3,'0111250456897',124037.97,1,5,'2024-07-31 13:33:23','4b9fa922484f27366d188bdf36ddd26302e60f47'),
(98,4,3,3,'0111250456897',196830.97,1,5,'2024-07-31 13:33:23','d25321b7b45b6457f33109a6017a0ff5aa0ce5f7'),
(99,4,4,2,'1115456',72551.97,1,5,'2024-07-31 13:33:23','322671869a6e391376dd882db64aa243d262ddef'),
(100,4,5,2,'11156789422',161365.50,1,5,'2024-07-31 13:33:23','f85cf11746e770cd53eda5f2cc99dbdff4de362c'),
(101,4,6,1,'79877698765',NULL,1,5,'2024-07-31 13:33:23','6a9a84d0f28a37a74a84a2231b5b106f20c5c417'),
(102,4,2,3,'0111250456897',124037.97,1,5,'2024-07-31 13:33:23','e17f7ea17184d04412a2516af106208924147ea2'),
(103,4,3,3,'0111250456897',196830.97,1,5,'2024-07-31 13:33:23','38bbd0db04a4dcb6ff7343a279de6a30922b5bcd'),
(104,4,4,2,'1115456',72551.97,1,5,'2024-07-31 13:33:23','5c1cb9bd6b8a6f8519827e52ff9be442d8485c60'),
(105,4,5,2,'11156789422',161365.50,1,5,'2024-07-31 13:33:23','1143dc61bc0b3063046a3efc1519ee7a303aadd0'),
(106,4,6,1,'79877698765',NULL,1,5,'2024-07-31 13:33:23','7d80923d95a05d7b368ae4717ffe57db0d59427a'),
(107,5,2,3,'0111250456897',124037.97,1,5,'2024-08-03 23:31:57','516b7a516bb994a30eb63e84e9ef115bb5c890a5'),
(108,5,3,3,'0111250456897',196830.97,1,5,'2024-08-03 23:31:57','6d9e57afb646b62f6f1cf0867fb2eada16a2d97d'),
(109,5,4,2,'1115456',72551.97,1,5,'2024-08-03 23:31:57','9115a035001c663767ea15b3290e2e8303472c34'),
(110,5,5,2,'11156789422',161365.50,1,5,'2024-08-03 23:31:57','8b32cf474fe115df541d0373e68b3f9001b59c58'),
(111,5,6,1,'79877698765',NULL,1,5,'2024-08-03 23:31:57','7233f7d0e02e514d5d0a48abfe34eabf44ad8983'),
(112,5,2,3,'0111250456897',124037.97,0,NULL,NULL,'7532f71a31adf24b63e8cf8df299f03d039b2a0e'),
(113,5,3,3,'0111250456897',196830.97,0,NULL,NULL,'679e71b8ba27f6b9eb0a7012fdf929de84f92d47'),
(114,5,4,2,'1115456',72551.97,0,NULL,NULL,'aa110a80c4060556161a7d2708d59068da1efe11'),
(115,5,5,2,'11156789422',161365.50,0,NULL,NULL,'830c41dceb03fa9d80f039c6ab7c4b74550f0b6a'),
(116,5,6,1,'79877698765',NULL,0,NULL,NULL,'d4c83e5e440822b1e89cefc3922ea22da6b209c2'),
(117,6,2,3,'0111250456897',NULL,1,5,'2024-05-30 13:12:40','d6f15d97edb23ebe210783b81f6f8ff09b46f38e'),
(118,6,3,3,'0111250456897',NULL,1,5,'2024-05-30 13:12:40','fdca0748b3f1c90ce4515959cb951c8a96b4793e'),
(119,6,4,2,'1115456',NULL,1,5,'2024-05-30 13:12:40','3dc194b9696d1b8daaaf69f3275080602dd4bbe8'),
(120,6,5,2,'11156789422',NULL,1,5,'2024-05-30 13:12:40','282ac18ec961223b50db49989b85088d57013d65'),
(121,6,7,3,'011178948789',NULL,1,5,'2024-05-30 13:12:40','c35964adcae9a2a898677499ccbdb1a78aef0b8c'),
(122,6,2,3,'0111250456897',124037.97,1,5,'2024-05-30 13:12:40','6b9b71162dc2f9832367be25e121a3da3f2b22dd'),
(123,6,3,3,'0111250456897',196830.97,1,5,'2024-05-30 13:12:40','f47263e5ad80123df47559cb2d5d5f97d903a6f4'),
(124,6,4,2,'1115456',72551.97,1,5,'2024-05-30 13:12:40','2040bcb9a7d48a11aa857defac847403dd726f29'),
(125,6,5,2,'11156789422',161365.50,1,5,'2024-05-30 13:12:40','f6cc6d2475c4606de50d12ce8e6bea39fb212f1c'),
(126,6,7,3,'011178948789',NULL,1,5,'2024-05-30 13:12:40','503aa4994fe1ec1aad9e679c77f121e0118198e7'),
(127,6,2,3,'0111250456897',124037.97,1,5,'2024-05-30 13:12:40','9735724b7011c2e13ca55d7e32d13a212994809a'),
(128,6,3,3,'0111250456897',196830.97,1,5,'2024-05-30 13:12:40','287c261414f7a54c6cc7bc218a64a2eea5d29c5b'),
(129,6,4,2,'1115456',72551.97,1,5,'2024-05-30 13:12:40','c6419314e8748a2a129bfb33b21ca616a1ccdbc9'),
(130,6,5,2,'11156789422',161365.50,1,5,'2024-05-30 13:12:40','b4b7ada5cf8e88b011774dd124161aeb07bc8dd0'),
(131,6,7,3,'011178948789',208282.30,1,5,'2024-05-30 13:12:40','1cf284985adeda9a9018f9890eacde5a9db10b56'),
(132,6,2,3,'0111250456897',124037.97,0,NULL,NULL,'62550ba253f1ec070848437e8ba33cd573da0990'),
(133,6,3,3,'0111250456897',196830.97,0,NULL,NULL,'206f7f9047e0543e949d5ecf6ada27a7fd4d5081'),
(134,6,4,2,'1115456',72551.97,0,NULL,NULL,'d06c4764b402dea6d55f0b4c9d01cc35ab45309e'),
(135,6,5,2,'11156789422',161365.50,0,NULL,NULL,'71fa600fd69be86f57f982a5de72996efc59a440'),
(136,6,7,5,'01020017043300',150348.90,0,NULL,NULL,'26534a3c5b706e3c1d0a8c72c68e5787965ada4e'),
(137,3,2,3,'0111250456897',124037.97,0,NULL,NULL,'eed710d15989f63ad9dee02b53fe4e6d7f43cbb8'),
(138,3,3,3,'0111250456897',196830.97,0,NULL,NULL,'dd7ad52380260cf848d5b9257662b7e29c5f80b5'),
(139,3,4,2,'1115456',72551.97,0,NULL,NULL,'77d314cde4c2b2cbcf5366bd77a939fa7e1954dd'),
(140,3,5,2,'11156789422',161365.50,0,NULL,NULL,'20b24f087c39ceb4648c84f0572cc63393140ca6'),
(141,3,7,5,'01020017043300',150348.90,0,NULL,NULL,'30f69652878b72fa227b415e674df9aafec16852'),
(142,4,2,3,'0111250456897',124037.97,0,NULL,NULL,'15812e243fd9a94f9304da736f00a886b17ce39a'),
(143,4,3,3,'0111250456897',196830.97,0,NULL,NULL,'e38f9b6616d534bca6ff6a1a418fdf770d238770'),
(144,4,4,2,'1115456',72551.97,0,NULL,NULL,'65ad43ba3c3c86d5d0ed7db14e1561296182a5f9'),
(145,4,5,2,'11156789422',161365.50,0,NULL,NULL,'49d50adbbe5d682ac4a60944c78e5dd77e65172d'),
(146,4,6,1,'79877698765',NULL,0,NULL,NULL,'ffb9cfcc8c29c35d51d9a26e215200a3a8de7c23'),
(147,4,7,5,'01020017043300',150348.90,0,NULL,NULL,'1be348fa130e900c35e2013b955e818a27da5f53'),
(148,7,2,3,'0111250456897',124037.97,1,5,'2024-10-28 13:52:59','cc6254fb19037206d7ae537c7dce752b1b7948d1'),
(149,7,3,3,'0111250456897',196830.97,1,5,'2024-10-28 13:52:59','e8c31070a433c5297dc83e364ea7fa2a0d36e8c1'),
(150,7,4,2,'1115456',72551.97,1,5,'2024-10-28 13:52:59','a098c43083f478f9850ab0f062219450c81ccfea'),
(151,7,5,2,'11156789422',161365.50,1,5,'2024-10-28 13:52:59','d2c03b3091402d89d69db77103f2b869107e0466'),
(152,7,6,1,'79877698765',NULL,1,5,'2024-10-28 13:52:59','1258dccc6da98a7af7bbe4324acd7dc9d5c398af'),
(153,7,7,5,'01020017043300',150348.90,1,5,'2024-10-28 13:52:59','9147a3995a01635e410221467aa26366c86491e7'),
(154,8,2,3,'0111250456897',124037.97,0,NULL,NULL,'ae31586f0e137db209a8d8aad4bb7fd0e508f1ea'),
(155,8,3,3,'0111250456897',196830.97,0,NULL,NULL,'6220f681bd1f025ba900a0accfa9dfbf7c551bcd'),
(156,8,4,2,'1115456',72551.97,0,NULL,NULL,'3c235e2ee2ed14cf0f776b2f281a500b9d3443d6'),
(157,8,5,2,'11156789422',161365.50,0,NULL,NULL,'32f89930a1319e5774ff706a771a0821338bff43'),
(158,8,6,1,'79877698765',NULL,0,NULL,NULL,'2d4bc4e7df0b756e7882503b10e13a7e04f1c7eb'),
(159,8,7,5,'01020017043300',150348.90,0,NULL,NULL,'036e536522a44cb0fc293049d8466382e364094c'),
(160,7,2,3,'0111250456897',124037.97,0,NULL,NULL,'3e3d3d99a0a62b1ed68fe26a6699bf46dbd16d50'),
(161,7,3,3,'0111250456897',196830.97,0,NULL,NULL,'c7795c1494ddf3e8a4c80177fb1bf812cf4c3eb6'),
(162,7,4,2,'1115456',72551.97,0,NULL,NULL,'92ddea231b919ef1c47773377f257516e71bec5e'),
(163,7,5,2,'11156789422',161365.50,0,NULL,NULL,'b8819ca10a533133c5bac5e43c6b15bffca47d1b'),
(164,7,6,1,'79877698765',NULL,0,NULL,NULL,'6b022b3a07e9c791a9cca58f532d889cc0a0f26e'),
(165,7,7,5,'01020017043300',150348.90,0,NULL,NULL,'720d2a893933cc254e57a8f3fa564c731fec12bb'),
(166,7,9,1807,'54679876598756',NULL,0,NULL,NULL,'6b6f94876d5301f6d873297729e30a98d5139759'),
(167,7,10,675,'0001232525154',NULL,0,NULL,NULL,'b21b28e94d66436bf2ba0b86b68246a3fd7058a3'),
(168,9,2,3,'0111250456897',124037.97,0,NULL,NULL,'f966b4535cd4091f1c0a7b1e613a361458d68a9d'),
(169,9,3,3,'0111250456897',196830.97,0,NULL,NULL,'a939527d8db6506ba3f09a44f3b52894bded7581'),
(170,9,4,2,'1115456',72551.97,0,NULL,NULL,'1b8b6d6ba9c7ad12b03da5d456f89e15be1e4279'),
(171,9,5,2,'11156789422',161365.50,0,NULL,NULL,'ef59de365094d028f916835654f6de2b7a6dc93a'),
(172,9,6,1,'79877698765',NULL,0,NULL,NULL,'fb555c9236b836fb14f6377f69b78eb6eab9ba9f'),
(173,9,7,5,'01020017043300',150348.90,0,NULL,NULL,'3ec5726b35a7016ec37b6e2e01ae84814cf4d792'),
(174,9,9,1807,'54679876598756',NULL,0,NULL,NULL,'3ae4f1257b89fc319183a031b6c25ecd1e22504b'),
(175,9,10,675,'0001232525154',NULL,0,NULL,NULL,'cdd1b33e9704a6c11e1b227b905ed67b2b7ec809'),
(176,9,11,621,'098765432',NULL,0,NULL,NULL,'03aac2ccff4041fd2ea71c9b1f8ab824f8e8cf9a'),
(177,10,2,3,'0111250456897',124037.97,1,5,'2024-12-13 19:03:44','da472516673e3daad95a9691023bad6567e06b9f'),
(178,10,3,3,'0111250456897',196830.97,1,5,'2024-12-13 19:03:44','6339a740b7477b945403d8508066283f1d459205'),
(179,10,4,2,'1115456',72551.97,1,5,'2024-12-13 19:03:44','3fb46ab3e9e3df92cd9cc0ab56e4841d20aad127'),
(180,10,5,2,'11156789422',161365.50,1,5,'2024-12-13 19:03:44','5ac3f8d0e4fffdc8a88c0c71c87a3e52b5aa99f7'),
(181,10,6,1,'79877698765',NULL,1,5,'2024-12-13 19:03:44','2c286c3bda404cbae75d5a2be20ff829cf7bdbf8'),
(182,10,7,5,'01020017043300',150348.90,1,5,'2024-12-13 19:03:44','081dff25638cd3778e282ea9c2e652173f927e83'),
(183,10,9,1807,'54679876598756',NULL,1,5,'2024-12-13 19:03:44','4d9cfbbd42a7d9917608c222063ed19df76a1c3a'),
(184,10,10,675,'0001232525154',NULL,1,5,'2024-12-13 19:03:44','caa92a22c3336f5b19a087d65c7f17407b33e205'),
(185,10,11,621,'098765432',NULL,1,5,'2024-12-13 19:03:44','677dacc360e9aed844269edadea225662d05704b'),
(186,10,2,3,'0111250456897',124037.97,0,NULL,NULL,'3818b4c0ad2ab07b13dae0f7c7a329f1834caba2'),
(187,10,3,3,'0111250456897',196830.97,0,NULL,NULL,'ba29ac1700905616b1d90d34e991931b63808a58'),
(188,10,4,2,'1115456',72551.97,0,NULL,NULL,'0dad93593c55bce054fffc0943c384c0fd4af55a'),
(189,10,5,2,'11156789422',161365.50,0,NULL,NULL,'b1b71c660c67c8952c2d2fc3da0d528d104ac5ef'),
(190,10,6,1,'79877698765',NULL,0,NULL,NULL,'87d5b2a239cbf505288d2763ed62c90e5cde0c05'),
(191,10,7,5,'01020017043300',150348.90,0,NULL,NULL,'8ef3010f82fc457b22315bebc0a34de52fe97cce'),
(192,10,9,1807,'54679876598756',NULL,0,NULL,NULL,'908bb938e530e0a83b387d2532d9fe74a8a15a06'),
(193,10,10,675,'0001232525154',NULL,0,NULL,NULL,'8009f71b5d9713e2ecc6ce2432585b236a383694'),
(194,10,11,621,'098765432',NULL,0,NULL,NULL,'79dae6253e02b730612b23f014a3962da4561c2a');

/*Table structure for table `payrollcategories` */

DROP TABLE IF EXISTS `payrollcategories`;

CREATE TABLE `payrollcategories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(50) DEFAULT NULL,
  `numberprefix` varchar(10) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `currentnumber` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `payrollcategories` */

insert  into `payrollcategories`(`categoryid`,`categoryname`,`numberprefix`,`dateadded`,`addedby`,`currentnumber`,`deleted`) values 
(1,'Teaching','AC','2024-06-01 10:32:41',5,1,0),
(2,'Teaching','AC','2024-06-01 10:33:11',5,1,0);

/*Table structure for table `payrolldetails` */

DROP TABLE IF EXISTS `payrolldetails`;

CREATE TABLE `payrolldetails` (
  `payrollid` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'open',
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `payrolldate` date GENERATED ALWAYS AS (str_to_date(concat(`year`,'-',field(`month`,'January','February','March','April','May','June','July','August','September','October','November','December'),'-','01'),'%Y-%m-%d')) VIRTUAL,
  PRIMARY KEY (`payrollid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `payrolldetails` */

insert  into `payrolldetails`(`payrollid`,`month`,`year`,`status`,`dateadded`,`addedby`) values 
(3,'June',2024,'closed','2024-06-23 20:51:01',5),
(4,'July',2024,'closed','2024-07-04 08:41:01',5),
(5,'August',2024,'closed','2024-08-02 10:28:14',5),
(6,'May',2024,'closed','2024-05-30 12:55:30',5),
(7,'October',2024,'closed','2024-10-07 17:13:03',5),
(8,'September',2024,'closed','2024-10-07 19:07:50',5),
(9,'November',2024,'closed','2024-11-13 16:14:34',5),
(10,'December',2024,'open','2024-12-11 00:20:08',5);

/*Table structure for table `payrollemployees` */

DROP TABLE IF EXISTS `payrollemployees`;

CREATE TABLE `payrollemployees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payrollid` int(11) DEFAULT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `hasdisability` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `deletedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `refno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `payrollemployees` */

insert  into `payrollemployees`(`id`,`payrollid`,`employeeid`,`hasdisability`,`deleted`,`deletedby`,`datedeleted`,`refno`) values 
(1,4,2,0,1,5,'2024-07-31 13:33:23',NULL),
(2,4,3,0,1,5,'2024-07-31 13:33:23',NULL),
(3,4,4,0,1,5,'2024-07-31 13:33:23',NULL),
(4,4,5,0,1,5,'2024-07-31 13:33:23',NULL),
(5,4,6,0,1,5,'2024-07-31 13:33:23',NULL),
(6,4,2,0,1,5,'2024-07-31 13:33:23',NULL),
(7,4,3,1,1,5,'2024-07-31 13:33:23',NULL),
(8,4,4,0,1,5,'2024-07-31 13:33:23',NULL),
(9,4,5,0,1,5,'2024-07-31 13:33:23',NULL),
(10,4,6,0,1,5,'2024-07-31 13:33:23',NULL),
(11,4,2,0,1,5,'2024-07-31 13:33:23',NULL),
(12,4,3,1,1,5,'2024-07-31 13:33:23',NULL),
(13,4,4,0,1,5,'2024-07-31 13:33:23',NULL),
(14,4,5,0,1,5,'2024-07-31 13:33:23',NULL),
(15,4,6,0,1,5,'2024-07-31 13:33:23',NULL),
(16,4,2,0,1,5,'2024-07-31 13:33:23',NULL),
(17,4,3,1,1,5,'2024-07-31 13:33:23',NULL),
(18,4,4,0,1,5,'2024-07-31 13:33:23',NULL),
(19,4,5,0,1,5,'2024-07-31 13:33:23',NULL),
(20,4,6,0,1,5,'2024-07-31 13:33:23',NULL),
(21,4,2,0,1,5,'2024-07-31 13:33:23',NULL),
(22,4,3,1,1,5,'2024-07-31 13:33:23',NULL),
(23,4,4,0,1,5,'2024-07-31 13:33:23',NULL),
(24,4,5,0,1,5,'2024-07-31 13:33:23',NULL),
(25,4,6,0,1,5,'2024-07-31 13:33:23',NULL),
(26,4,2,0,1,5,'2024-07-31 13:33:23','d5b8a8bd84cae39ff174c8dbdab610e3865a4606'),
(27,4,3,1,1,5,'2024-07-31 13:33:23','924a6618b0df2c060bb71aef2b5bfd31436f2add'),
(28,4,4,0,1,5,'2024-07-31 13:33:23','cc84e8ab961171a5d9b56f5d92fa5b9fbbbe4972'),
(29,4,5,0,1,5,'2024-07-31 13:33:23','c880affcdeee54d38a16afb0b25e8aa7ba49e033'),
(30,4,6,0,1,5,'2024-07-31 13:33:23','008f77b6405253131b8dfb174e4fcd277d6cfd09'),
(31,4,2,0,1,5,'2024-07-31 13:33:23','a27173c62231cc314718528bcd5b39b6166e8521'),
(32,4,3,1,1,5,'2024-07-31 13:33:23','ea0a0dbe1fb684a4ec7e1080b1513e537ecddd44'),
(33,4,4,0,1,5,'2024-07-31 13:33:23','de474fd47a2bf79111be98439940ce4ad18f6e13'),
(34,4,5,0,1,5,'2024-07-31 13:33:23','90dac4b3530017c4722655cdb16ddef876f4f978'),
(35,4,6,0,1,5,'2024-07-31 13:33:23','95fd800d59f66491e0c0ccdc51fe1bf0986b556c'),
(36,4,2,0,1,5,'2024-07-31 13:33:23','9d78aa74e7b91b09ff6ecbe6980d55f1c417155f'),
(37,4,3,1,1,5,'2024-07-31 13:33:23','562431f9dfa05b2b33b879d1fa8cd3b82726c63d'),
(38,4,4,0,1,5,'2024-07-31 13:33:23','57ca373dc20862f67627e0367f4cff5d082912ee'),
(39,4,5,0,1,5,'2024-07-31 13:33:23','ee44146ca98f888e52bafd548c53a055b781db27'),
(40,4,6,1,1,5,'2024-07-31 13:33:23','0a89909688dd9fbaee47c29edaed153af2792401'),
(41,4,2,0,1,5,'2024-07-31 13:33:23','99ed424c7dcb840b33127a9a3c90490e5677781f'),
(42,4,2,0,1,5,'2024-07-31 13:33:23','4b9fa922484f27366d188bdf36ddd26302e60f47'),
(43,4,3,1,1,5,'2024-07-31 13:33:23','d25321b7b45b6457f33109a6017a0ff5aa0ce5f7'),
(44,4,4,0,1,5,'2024-07-31 13:33:23','322671869a6e391376dd882db64aa243d262ddef'),
(45,4,5,0,1,5,'2024-07-31 13:33:23','f85cf11746e770cd53eda5f2cc99dbdff4de362c'),
(46,4,6,1,1,5,'2024-07-31 13:33:23','6a9a84d0f28a37a74a84a2231b5b106f20c5c417'),
(47,4,2,0,1,5,'2024-07-31 13:33:23','582cdda0e002d4257ff184e345964a935c4e743d'),
(48,4,2,0,1,5,'2024-07-31 13:33:23','7a62ec3c4ee61bece5bc9ea5dfc1c489df74e9f2'),
(49,4,2,0,1,5,'2024-07-31 13:33:23','0a1c0a588563367786e7a68aee400d4f73dfa846'),
(50,4,2,0,1,5,'2024-07-31 13:33:23','e17f7ea17184d04412a2516af106208924147ea2'),
(51,4,3,1,1,5,'2024-07-31 13:33:23','38bbd0db04a4dcb6ff7343a279de6a30922b5bcd'),
(52,4,4,0,1,5,'2024-07-31 13:33:23','5c1cb9bd6b8a6f8519827e52ff9be442d8485c60'),
(53,4,5,0,1,5,'2024-07-31 13:33:23','1143dc61bc0b3063046a3efc1519ee7a303aadd0'),
(54,4,6,1,1,5,'2024-07-31 13:33:23','7d80923d95a05d7b368ae4717ffe57db0d59427a'),
(55,5,2,0,1,5,'2024-08-03 23:31:57','516b7a516bb994a30eb63e84e9ef115bb5c890a5'),
(56,5,3,1,1,5,'2024-08-03 23:31:57','6d9e57afb646b62f6f1cf0867fb2eada16a2d97d'),
(57,5,4,0,1,5,'2024-08-03 23:31:57','9115a035001c663767ea15b3290e2e8303472c34'),
(58,5,5,0,1,5,'2024-08-03 23:31:57','8b32cf474fe115df541d0373e68b3f9001b59c58'),
(59,5,6,1,1,5,'2024-08-03 23:31:57','7233f7d0e02e514d5d0a48abfe34eabf44ad8983'),
(60,5,2,0,0,NULL,NULL,'7532f71a31adf24b63e8cf8df299f03d039b2a0e'),
(61,5,3,1,0,NULL,NULL,'679e71b8ba27f6b9eb0a7012fdf929de84f92d47'),
(62,5,4,0,0,NULL,NULL,'aa110a80c4060556161a7d2708d59068da1efe11'),
(63,5,5,0,0,NULL,NULL,'830c41dceb03fa9d80f039c6ab7c4b74550f0b6a'),
(64,5,6,1,0,NULL,NULL,'d4c83e5e440822b1e89cefc3922ea22da6b209c2'),
(65,6,2,0,1,5,'2024-05-30 13:12:40','d6f15d97edb23ebe210783b81f6f8ff09b46f38e'),
(66,6,3,1,1,5,'2024-05-30 13:12:40','fdca0748b3f1c90ce4515959cb951c8a96b4793e'),
(67,6,4,0,1,5,'2024-05-30 13:12:40','3dc194b9696d1b8daaaf69f3275080602dd4bbe8'),
(68,6,5,0,1,5,'2024-05-30 13:12:40','282ac18ec961223b50db49989b85088d57013d65'),
(69,6,7,0,1,5,'2024-05-30 13:12:40','c35964adcae9a2a898677499ccbdb1a78aef0b8c'),
(70,6,2,0,1,5,'2024-05-30 13:12:40','6b9b71162dc2f9832367be25e121a3da3f2b22dd'),
(71,6,3,1,1,5,'2024-05-30 13:12:40','f47263e5ad80123df47559cb2d5d5f97d903a6f4'),
(72,6,4,0,1,5,'2024-05-30 13:12:40','2040bcb9a7d48a11aa857defac847403dd726f29'),
(73,6,5,0,1,5,'2024-05-30 13:12:40','f6cc6d2475c4606de50d12ce8e6bea39fb212f1c'),
(74,6,7,0,1,5,'2024-05-30 13:12:40','503aa4994fe1ec1aad9e679c77f121e0118198e7'),
(75,6,2,0,1,5,'2024-05-30 13:12:40','9735724b7011c2e13ca55d7e32d13a212994809a'),
(76,6,3,1,1,5,'2024-05-30 13:12:40','287c261414f7a54c6cc7bc218a64a2eea5d29c5b'),
(77,6,4,0,1,5,'2024-05-30 13:12:40','c6419314e8748a2a129bfb33b21ca616a1ccdbc9'),
(78,6,5,0,1,5,'2024-05-30 13:12:40','b4b7ada5cf8e88b011774dd124161aeb07bc8dd0'),
(79,6,7,0,1,5,'2024-05-30 13:12:40','1cf284985adeda9a9018f9890eacde5a9db10b56'),
(80,6,2,0,0,NULL,NULL,'62550ba253f1ec070848437e8ba33cd573da0990'),
(81,6,3,1,0,NULL,NULL,'206f7f9047e0543e949d5ecf6ada27a7fd4d5081'),
(82,6,4,0,0,NULL,NULL,'d06c4764b402dea6d55f0b4c9d01cc35ab45309e'),
(83,6,5,0,0,NULL,NULL,'71fa600fd69be86f57f982a5de72996efc59a440'),
(84,6,7,0,0,NULL,NULL,'26534a3c5b706e3c1d0a8c72c68e5787965ada4e'),
(85,3,2,0,0,NULL,NULL,'eed710d15989f63ad9dee02b53fe4e6d7f43cbb8'),
(86,3,3,1,0,NULL,NULL,'dd7ad52380260cf848d5b9257662b7e29c5f80b5'),
(87,3,4,0,0,NULL,NULL,'77d314cde4c2b2cbcf5366bd77a939fa7e1954dd'),
(88,3,5,0,0,NULL,NULL,'20b24f087c39ceb4648c84f0572cc63393140ca6'),
(89,3,7,0,0,NULL,NULL,'30f69652878b72fa227b415e674df9aafec16852'),
(90,4,2,0,0,NULL,NULL,'15812e243fd9a94f9304da736f00a886b17ce39a'),
(91,4,3,1,0,NULL,NULL,'e38f9b6616d534bca6ff6a1a418fdf770d238770'),
(92,4,4,0,0,NULL,NULL,'65ad43ba3c3c86d5d0ed7db14e1561296182a5f9'),
(93,4,5,0,0,NULL,NULL,'49d50adbbe5d682ac4a60944c78e5dd77e65172d'),
(94,4,6,1,0,NULL,NULL,'ffb9cfcc8c29c35d51d9a26e215200a3a8de7c23'),
(95,4,7,0,0,NULL,NULL,'1be348fa130e900c35e2013b955e818a27da5f53'),
(96,7,2,0,1,5,'2024-10-28 13:52:59','cc6254fb19037206d7ae537c7dce752b1b7948d1'),
(97,7,3,1,1,5,'2024-10-28 13:52:59','e8c31070a433c5297dc83e364ea7fa2a0d36e8c1'),
(98,7,4,0,1,5,'2024-10-28 13:52:59','a098c43083f478f9850ab0f062219450c81ccfea'),
(99,7,5,0,1,5,'2024-10-28 13:52:59','d2c03b3091402d89d69db77103f2b869107e0466'),
(100,7,6,1,1,5,'2024-10-28 13:52:59','1258dccc6da98a7af7bbe4324acd7dc9d5c398af'),
(101,7,7,0,1,5,'2024-10-28 13:52:59','9147a3995a01635e410221467aa26366c86491e7'),
(102,8,2,0,0,NULL,NULL,'ae31586f0e137db209a8d8aad4bb7fd0e508f1ea'),
(103,8,3,1,0,NULL,NULL,'6220f681bd1f025ba900a0accfa9dfbf7c551bcd'),
(104,8,4,0,0,NULL,NULL,'3c235e2ee2ed14cf0f776b2f281a500b9d3443d6'),
(105,8,5,0,0,NULL,NULL,'32f89930a1319e5774ff706a771a0821338bff43'),
(106,8,6,1,0,NULL,NULL,'2d4bc4e7df0b756e7882503b10e13a7e04f1c7eb'),
(107,8,7,0,0,NULL,NULL,'036e536522a44cb0fc293049d8466382e364094c'),
(108,7,2,0,0,NULL,NULL,'3e3d3d99a0a62b1ed68fe26a6699bf46dbd16d50'),
(109,7,3,1,0,NULL,NULL,'c7795c1494ddf3e8a4c80177fb1bf812cf4c3eb6'),
(110,7,4,0,0,NULL,NULL,'92ddea231b919ef1c47773377f257516e71bec5e'),
(111,7,5,0,0,NULL,NULL,'b8819ca10a533133c5bac5e43c6b15bffca47d1b'),
(112,7,6,1,0,NULL,NULL,'6b022b3a07e9c791a9cca58f532d889cc0a0f26e'),
(113,7,7,0,0,NULL,NULL,'720d2a893933cc254e57a8f3fa564c731fec12bb'),
(114,7,9,0,0,NULL,NULL,'6b6f94876d5301f6d873297729e30a98d5139759'),
(115,7,10,0,0,NULL,NULL,'b21b28e94d66436bf2ba0b86b68246a3fd7058a3'),
(116,9,2,0,0,NULL,NULL,'f966b4535cd4091f1c0a7b1e613a361458d68a9d'),
(117,9,3,1,0,NULL,NULL,'a939527d8db6506ba3f09a44f3b52894bded7581'),
(118,9,4,0,0,NULL,NULL,'1b8b6d6ba9c7ad12b03da5d456f89e15be1e4279'),
(119,9,5,0,0,NULL,NULL,'ef59de365094d028f916835654f6de2b7a6dc93a'),
(120,9,6,1,0,NULL,NULL,'fb555c9236b836fb14f6377f69b78eb6eab9ba9f'),
(121,9,7,0,0,NULL,NULL,'3ec5726b35a7016ec37b6e2e01ae84814cf4d792'),
(122,9,9,0,0,NULL,NULL,'3ae4f1257b89fc319183a031b6c25ecd1e22504b'),
(123,9,10,0,0,NULL,NULL,'cdd1b33e9704a6c11e1b227b905ed67b2b7ec809'),
(124,9,11,0,0,NULL,NULL,'03aac2ccff4041fd2ea71c9b1f8ab824f8e8cf9a'),
(125,10,2,0,1,5,'2024-12-13 19:03:44','da472516673e3daad95a9691023bad6567e06b9f'),
(126,10,3,1,1,5,'2024-12-13 19:03:44','6339a740b7477b945403d8508066283f1d459205'),
(127,10,4,0,1,5,'2024-12-13 19:03:44','3fb46ab3e9e3df92cd9cc0ab56e4841d20aad127'),
(128,10,5,0,1,5,'2024-12-13 19:03:44','5ac3f8d0e4fffdc8a88c0c71c87a3e52b5aa99f7'),
(129,10,6,1,1,5,'2024-12-13 19:03:44','2c286c3bda404cbae75d5a2be20ff829cf7bdbf8'),
(130,10,7,0,1,5,'2024-12-13 19:03:44','081dff25638cd3778e282ea9c2e652173f927e83'),
(131,10,9,0,1,5,'2024-12-13 19:03:44','4d9cfbbd42a7d9917608c222063ed19df76a1c3a'),
(132,10,10,0,1,5,'2024-12-13 19:03:44','caa92a22c3336f5b19a087d65c7f17407b33e205'),
(133,10,11,0,1,5,'2024-12-13 19:03:44','677dacc360e9aed844269edadea225662d05704b'),
(134,10,2,0,0,NULL,NULL,'3818b4c0ad2ab07b13dae0f7c7a329f1834caba2'),
(135,10,3,1,0,NULL,NULL,'ba29ac1700905616b1d90d34e991931b63808a58'),
(136,10,4,0,0,NULL,NULL,'0dad93593c55bce054fffc0943c384c0fd4af55a'),
(137,10,5,0,0,NULL,NULL,'b1b71c660c67c8952c2d2fc3da0d528d104ac5ef'),
(138,10,6,1,0,NULL,NULL,'87d5b2a239cbf505288d2763ed62c90e5cde0c05'),
(139,10,7,0,0,NULL,NULL,'8ef3010f82fc457b22315bebc0a34de52fe97cce'),
(140,10,9,0,0,NULL,NULL,'908bb938e530e0a83b387d2532d9fe74a8a15a06'),
(141,10,10,0,0,NULL,NULL,'8009f71b5d9713e2ecc6ce2432585b236a383694'),
(142,10,11,0,0,NULL,NULL,'79dae6253e02b730612b23f014a3962da4561c2a');

/*Table structure for table `payrollitembracket` */

DROP TABLE IF EXISTS `payrollitembracket`;

CREATE TABLE `payrollitembracket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payrollitemid` int(11) DEFAULT NULL,
  `lowerbracket` decimal(18,2) DEFAULT NULL,
  `upperbracket` decimal(18,2) DEFAULT NULL,
  `value` decimal(18,2) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `payrollitembracket` */

insert  into `payrollitembracket`(`id`,`payrollitemid`,`lowerbracket`,`upperbracket`,`value`,`valid`) values 
(1,2,1.00,100000000.00,1.50,1),
(2,4,1.00,24000.00,10.00,1),
(3,4,24001.00,32333.00,25.00,1),
(4,4,32334.00,500000.00,30.00,1),
(5,4,500001.00,800000.00,32.50,1),
(6,4,800001.00,100000000.00,35.00,1),
(7,9,1.00,5999.00,150.00,1),
(8,9,6000.00,7999.00,300.00,1),
(9,9,8000.00,11999.00,400.00,1),
(10,9,12000.00,14999.00,500.00,1),
(11,9,15000.00,19999.00,600.00,1),
(12,9,20000.00,24999.00,750.00,1),
(13,9,25000.00,29999.00,850.00,1),
(14,9,30000.00,34999.00,950.00,1),
(15,9,40000.00,44999.00,1000.00,1),
(16,9,45000.00,49999.00,1100.00,1),
(17,9,50000.00,59999.00,1200.00,1),
(18,9,60000.00,69999.00,1300.00,1),
(19,9,70000.00,79999.00,1400.00,1),
(20,9,80000.00,89999.00,1500.00,1),
(21,9,90000.00,99999.00,1600.00,1),
(22,9,100000.00,50000000.00,1700.00,1),
(38,10,1.00,50000000.00,7.50,1),
(39,3,1.00,500000000.00,6.00,1),
(40,11,1.00,500000000.00,5.00,1),
(41,12,1.00,5000000.00,15.00,1);

/*Table structure for table `payrollitemgroups` */

DROP TABLE IF EXISTS `payrollitemgroups`;

CREATE TABLE `payrollitemgroups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) DEFAULT NULL,
  `itemtype` varchar(50) DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `payrollitemgroups` */

insert  into `payrollitemgroups`(`groupid`,`groupname`,`itemtype`,`addedby`,`dateadded`,`deleted`,`datedeleted`,`deletedby`) values 
(1,'Other Allowances','payment',5,'2024-07-21 15:45:46',0,NULL,NULL),
(2,'Saccos','deduction',5,'2024-07-21 15:46:12',0,NULL,NULL),
(3,'Banks','deduction',5,'2024-07-21 15:46:19',0,NULL,NULL),
(4,'Insurance','deduction',5,'2024-07-21 15:46:27',0,NULL,NULL),
(5,'Test Group','payment',5,'2024-07-21 15:52:56',1,'2024-07-21 15:53:01',5);

/*Table structure for table `payrollitems` */

DROP TABLE IF EXISTS `payrollitems`;

CREATE TABLE `payrollitems` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(50) DEFAULT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `sortorder` int(11) DEFAULT 100,
  `itemtype` varchar(50) DEFAULT NULL,
  `statutory` tinyint(1) DEFAULT 0,
  `creditorid` int(11) DEFAULT NULL,
  `display` varchar(50) DEFAULT NULL,
  `showonpayroll` tinyint(1) DEFAULT 1,
  `taxable` tinyint(1) DEFAULT NULL,
  `isaloan` tinyint(1) DEFAULT NULL,
  `defaultamount` decimal(18,2) DEFAULT NULL,
  `allowablededuction` tinyint(1) DEFAULT NULL,
  `allowabledeductionlowerlimit` decimal(18,2) DEFAULT NULL,
  `allowabledeductionupperlimit` decimal(18,2) DEFAULT NULL,
  `allowabledeductionvalue` decimal(18,2) DEFAULT NULL,
  `allowabledeductionpercentage` tinyint(1) DEFAULT NULL,
  `bracketed` tinyint(1) DEFAULT NULL,
  `bracketedongross` tinyint(1) DEFAULT NULL,
  `bracketeditem` varchar(50) DEFAULT NULL,
  `employertomatch` tinyint(1) DEFAULT 0,
  `employermatchfactor` decimal(18,2) DEFAULT NULL,
  `applyrelief` tinyint(1) DEFAULT 0,
  `reliefitem` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `bracketispercentage` tinyint(1) DEFAULT 0,
  `systemitem` tinyint(1) DEFAULT 0,
  `bracketlowerlimit` decimal(18,2) DEFAULT NULL,
  `bracketupperlimit` decimal(18,2) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `itemgroupid` int(11) DEFAULT NULL,
  `autorelief` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `payrollitems` */

insert  into `payrollitems`(`itemid`,`itemname`,`shortname`,`sortorder`,`itemtype`,`statutory`,`creditorid`,`display`,`showonpayroll`,`taxable`,`isaloan`,`defaultamount`,`allowablededuction`,`allowabledeductionlowerlimit`,`allowabledeductionupperlimit`,`allowabledeductionvalue`,`allowabledeductionpercentage`,`bracketed`,`bracketedongross`,`bracketeditem`,`employertomatch`,`employermatchfactor`,`applyrelief`,`reliefitem`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`,`bracketispercentage`,`systemitem`,`bracketlowerlimit`,`bracketupperlimit`,`description`,`itemgroupid`,`autorelief`) values 
(1,'NSSF','NSSF',2,'deduction',1,2,'none',1,1,0,0.00,1,1.00,2280.00,6.00,1,0,1,'1',1,1.00,0,0,'2024-06-11 19:46:55',5,1,'2024-06-11 20:03:16',5,0,0,0.00,0.00,NULL,NULL,0),
(2,'Housing Levy','H-Levy',4,'deduction',1,1,'none',1,1,0,0.00,0,0.00,0.00,0.00,0,1,1,'0',1,1.00,0,0,'2024-06-11 19:57:21',5,0,NULL,NULL,1,0,0.00,0.00,NULL,NULL,0),
(3,'NSSF','NSSF',2,'deduction',1,2,'none',1,1,1,0.00,1,1.00,2280.00,6.00,0,1,1,'0',0,0.00,0,0,'2024-06-11 20:04:52',5,0,NULL,NULL,1,0,0.00,2280.00,'NSSF',NULL,0),
(4,'PAYE','PAYE',1,'deduction',1,1,'none',1,1,0,0.00,0,0.00,0.00,0.00,0,1,1,'0',1,1.00,0,0,'2024-06-11 20:17:26',5,0,NULL,NULL,1,0,0.00,0.00,'PAYE',NULL,0),
(5,'Basic Salary','Basic',1,'payment',0,0,'none',1,1,0,0.00,0,0.00,0.00,0.00,0,0,0,'0',0,0.00,0,0,'2024-06-12 07:40:16',5,0,NULL,NULL,0,0,0.00,0.00,'BASIC',NULL,0),
(6,'House Allowance','House',2,'payment',0,0,'none',1,1,0,0.00,0,0.00,0.00,0.00,0,0,0,'0',0,0.00,0,0,'2024-06-12 07:40:46',5,0,NULL,NULL,0,0,0.00,0.00,'HOUSE',NULL,0),
(7,'Commuter Allowance','Commuter',3,'payment',0,0,'none',1,1,0,0.00,0,0.00,0.00,0.00,0,0,0,'0',0,0.00,0,0,'2024-06-12 07:41:08',5,0,NULL,NULL,0,0,0.00,0.00,'COMMUTER',NULL,0),
(8,'Personal Relief','P-REL',100,'relief',0,0,'none',0,0,0,2400.00,0,0.00,0.00,0.00,0,0,0,'0',0,0.00,0,0,'2024-06-12 07:43:59',5,0,NULL,NULL,0,1,0.00,2400.00,'PERSONAL RELIEF',NULL,0),
(9,'NHIF','NHIF',3,'deduction',1,3,'none',1,1,0,0.00,0,0.00,0.00,0.00,0,1,1,'0',1,1.00,0,0,'2024-06-22 12:44:42',5,0,NULL,NULL,0,0,0.00,0.00,'NHIF',NULL,1),
(10,'Pension','Pension',100,'deduction',0,8,'accumulating',1,1,0,0.00,1,1.00,20000.00,1.00,1,1,0,'5',1,1.00,0,0,'2024-06-23 10:00:34',5,0,NULL,NULL,1,0,0.00,0.00,NULL,NULL,0),
(11,'Commission','Commission',100,'payment',0,0,'none',1,1,0,0.00,0,0.00,0.00,0.00,0,1,0,'5',0,0.00,0,0,'2024-06-23 12:13:41',5,0,NULL,NULL,1,0,0.00,0.00,NULL,1,0),
(12,'Insurance Relief','I-REL',100,'relief',0,0,'none',0,0,0,0.00,0,0.00,0.00,0.00,0,1,1,'0',0,0.00,0,0,'2024-06-23 14:48:50',5,0,NULL,NULL,1,0,1.00,5000.00,'INSURANCE RELIEF',NULL,0),
(13,'NSSF Voluntary','NSSF-V',100,'deduction',0,2,'none',1,1,0,0.00,1,1.00,20000.00,1.00,0,0,0,'0',0,0.00,0,0,'2024-06-26 11:31:00',5,0,NULL,NULL,0,0,0.00,0.00,'NSSF VOLUNTARY',NULL,0),
(14,'Acting Allowance','Acting',100,'payment',0,0,'none',1,1,0,0.00,0,0.00,0.00,0.00,0,0,0,'0',0,0.00,0,0,'2024-07-14 12:00:42',5,0,NULL,NULL,0,0,0.00,0.00,NULL,1,0),
(15,'Arrears','Arrears',100,'payment',0,0,'none',1,1,0,0.00,0,0.00,0.00,0.00,0,0,0,'0',0,0.00,0,0,'2024-07-19 14:19:25',5,0,NULL,NULL,0,0,0.00,0.00,'ARREARS',NULL,0),
(16,'Leave Allowances','Leave Allow',100,'payment',0,0,'none',1,1,0,0.00,0,0.00,0.00,0.00,0,0,0,'0',0,0.00,0,0,'2024-08-03 11:01:47',5,0,NULL,NULL,0,0,0.00,0.00,NULL,1,0);

/*Table structure for table `payslipinformation` */

DROP TABLE IF EXISTS `payslipinformation`;

CREATE TABLE `payslipinformation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payrollid` int(11) DEFAULT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `payrollitemid` int(11) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `deletedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `payslipinformation` */

insert  into `payslipinformation`(`id`,`payrollid`,`employeeid`,`payrollitemid`,`amount`,`reference`,`deleted`,`deletedby`,`datedeleted`) values 
(1,3,1,5,132500.00,NULL,1,5,'2024-06-30 13:32:04'),
(2,3,1,7,14000.00,NULL,1,5,'2024-06-30 13:32:04'),
(3,3,1,6,45800.00,NULL,1,5,'2024-06-30 13:32:04'),
(4,3,1,11,6625.00,NULL,1,5,'2024-06-30 13:32:04'),
(5,3,1,2,2983.88,NULL,1,5,'2024-06-30 13:32:04'),
(6,3,1,9,1700.00,NULL,1,5,'2024-06-30 13:32:04'),
(7,3,1,3,2280.00,NULL,1,5,'2024-06-30 13:32:04'),
(8,3,1,4,51376.90,NULL,1,5,'2024-06-30 13:32:04'),
(9,3,1,8,2400.00,NULL,1,5,'2024-06-30 13:32:04'),
(16,3,2,5,132500.00,NULL,1,5,'2024-06-30 13:32:04'),
(17,3,2,7,14000.00,NULL,1,5,'2024-06-30 13:32:04'),
(18,3,2,6,45800.00,NULL,1,5,'2024-06-30 13:32:04'),
(19,3,2,2,2884.50,NULL,1,5,'2024-06-30 13:32:04'),
(20,3,2,9,1700.00,NULL,1,5,'2024-06-30 13:32:04'),
(21,3,2,3,2280.00,NULL,1,5,'2024-06-30 13:32:04'),
(22,3,2,4,49389.40,NULL,1,5,'2024-06-30 13:32:04'),
(23,3,2,8,2400.00,NULL,1,5,'2024-06-30 13:32:04'),
(31,3,3,5,162800.00,NULL,1,5,'2024-06-30 13:32:04'),
(32,3,3,7,14000.00,NULL,1,5,'2024-06-30 13:32:04'),
(33,3,3,6,56800.00,NULL,1,5,'2024-06-30 13:32:04'),
(34,3,3,2,3504.00,NULL,1,5,'2024-06-30 13:32:04'),
(35,3,3,9,1700.00,NULL,1,5,'2024-06-30 13:32:04'),
(36,3,3,3,2280.00,NULL,1,5,'2024-06-30 13:32:04'),
(37,3,3,4,61779.40,NULL,1,5,'2024-06-30 13:32:04'),
(38,3,3,8,2400.00,NULL,1,5,'2024-06-30 13:32:04'),
(46,3,4,5,48500.00,NULL,1,5,'2024-06-30 13:32:04'),
(47,3,4,6,13200.00,NULL,1,5,'2024-06-30 13:32:04'),
(48,3,4,7,9000.00,NULL,1,5,'2024-06-30 13:32:04'),
(49,3,4,2,1060.50,NULL,1,5,'2024-06-30 13:32:04'),
(50,3,4,9,1400.00,NULL,1,5,'2024-06-30 13:32:04'),
(51,3,4,3,2280.00,NULL,1,5,'2024-06-30 13:32:04'),
(52,3,4,4,12909.40,NULL,1,5,'2024-06-30 13:32:04'),
(53,3,4,8,2400.00,NULL,1,5,'2024-06-30 13:32:04'),
(61,3,5,5,162800.00,NULL,1,5,'2024-06-30 13:32:04'),
(62,3,5,7,14000.00,NULL,1,5,'2024-06-30 13:32:04'),
(63,3,5,6,56800.00,NULL,1,5,'2024-06-30 13:32:04'),
(64,3,5,2,3504.00,NULL,1,5,'2024-06-30 13:32:04'),
(65,3,5,9,1700.00,NULL,1,5,'2024-06-30 13:32:04'),
(66,3,5,3,2280.00,NULL,1,5,'2024-06-30 13:32:04'),
(67,3,5,4,61779.40,NULL,1,5,'2024-06-30 13:32:04'),
(68,4,1,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(69,4,1,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(70,4,1,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(71,4,1,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(72,4,1,2,2983.88,NULL,1,5,'2024-07-31 13:33:23'),
(73,4,1,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(74,4,1,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(75,4,1,4,48395.65,NULL,1,5,'2024-07-31 13:33:23'),
(76,4,1,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(77,4,1,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(83,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(84,4,2,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(85,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(86,4,2,2,2884.50,NULL,1,5,'2024-07-31 13:33:23'),
(87,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(88,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(89,4,2,4,46408.15,NULL,1,5,'2024-07-31 13:33:23'),
(90,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(91,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(98,4,3,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(99,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(100,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(101,4,3,2,3504.00,NULL,1,5,'2024-07-31 13:33:23'),
(102,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(103,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(104,4,3,4,58116.40,NULL,1,5,'2024-07-31 13:33:23'),
(105,4,3,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(106,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(113,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(114,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(115,4,4,7,9000.00,NULL,1,5,'2024-07-31 13:33:23'),
(116,4,4,2,1060.50,NULL,1,5,'2024-07-31 13:33:23'),
(117,4,4,9,1400.00,NULL,1,5,'2024-07-31 13:33:23'),
(118,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(119,4,4,4,11818.15,NULL,1,5,'2024-07-31 13:33:23'),
(120,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(121,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(128,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(129,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(130,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(131,4,5,2,3504.00,NULL,1,5,'2024-07-31 13:33:23'),
(132,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(133,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(134,4,5,4,58116.40,NULL,1,5,'2024-07-31 13:33:23'),
(135,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(143,4,1,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(144,4,1,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(145,4,1,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(146,4,1,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(147,4,1,2,2983.88,NULL,1,5,'2024-07-31 13:33:23'),
(148,4,1,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(149,4,1,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(150,4,1,4,48395.65,NULL,1,5,'2024-07-31 13:33:23'),
(151,4,1,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(152,4,1,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(158,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(159,4,2,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(160,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(161,4,2,2,2884.50,NULL,1,5,'2024-07-31 13:33:23'),
(162,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(163,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(164,4,2,4,46408.15,NULL,1,5,'2024-07-31 13:33:23'),
(165,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(166,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(173,4,3,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(174,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(175,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(176,4,3,2,3504.00,NULL,1,5,'2024-07-31 13:33:23'),
(177,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(178,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(179,4,3,4,58116.40,NULL,1,5,'2024-07-31 13:33:23'),
(180,4,3,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(181,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(188,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(189,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(190,4,4,7,9000.00,NULL,1,5,'2024-07-31 13:33:23'),
(191,4,4,2,1060.50,NULL,1,5,'2024-07-31 13:33:23'),
(192,4,4,9,1400.00,NULL,1,5,'2024-07-31 13:33:23'),
(193,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(194,4,4,4,11818.15,NULL,1,5,'2024-07-31 13:33:23'),
(195,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(196,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(203,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(204,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(205,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(206,4,5,2,3504.00,NULL,1,5,'2024-07-31 13:33:23'),
(207,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(208,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(209,4,5,4,58116.40,NULL,1,5,'2024-07-31 13:33:23'),
(210,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(218,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(219,4,2,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(220,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(221,4,2,2,2884.50,NULL,1,5,'2024-07-31 13:33:23'),
(222,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(223,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(224,4,2,4,46408.15,NULL,1,5,'2024-07-31 13:33:23'),
(225,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(226,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(233,4,3,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(234,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(235,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(236,4,3,2,3504.00,NULL,1,5,'2024-07-31 13:33:23'),
(237,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(238,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(239,4,3,4,58116.40,NULL,1,5,'2024-07-31 13:33:23'),
(240,4,3,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(241,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(248,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(249,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(250,4,4,7,9000.00,NULL,1,5,'2024-07-31 13:33:23'),
(251,4,4,2,1060.50,NULL,1,5,'2024-07-31 13:33:23'),
(252,4,4,9,1400.00,NULL,1,5,'2024-07-31 13:33:23'),
(253,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(254,4,4,4,11818.15,NULL,1,5,'2024-07-31 13:33:23'),
(255,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(256,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(263,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(264,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(265,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(266,4,5,2,3504.00,NULL,1,5,'2024-07-31 13:33:23'),
(267,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(268,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(269,4,5,4,58116.40,NULL,1,5,'2024-07-31 13:33:23'),
(270,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(278,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(279,4,2,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(280,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(281,4,2,2,2884.50,NULL,1,5,'2024-07-31 13:33:23'),
(282,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(283,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(284,4,2,4,46408.15,NULL,1,5,'2024-07-31 13:33:23'),
(285,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(286,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(293,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(294,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(295,4,3,5,148500.00,NULL,1,5,'2024-07-31 13:33:23'),
(296,4,3,2,3289.50,NULL,1,5,'2024-07-31 13:33:23'),
(297,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(298,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(299,4,3,4,54148.15,NULL,1,5,'2024-07-31 13:33:23'),
(300,4,3,10,11137.50,NULL,1,5,'2024-07-31 13:33:23'),
(301,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(308,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(309,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(310,4,4,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(311,4,4,2,1135.50,NULL,1,5,'2024-07-31 13:33:23'),
(312,4,4,9,1400.00,NULL,1,5,'2024-07-31 13:33:23'),
(313,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(314,4,4,4,13318.15,NULL,1,5,'2024-07-31 13:33:23'),
(315,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(316,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(323,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(324,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(325,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(326,4,5,2,3504.00,NULL,1,5,'2024-07-31 13:33:23'),
(327,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(328,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(329,4,5,4,58116.40,NULL,1,5,'2024-07-31 13:33:23'),
(330,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(338,4,1,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(339,4,1,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(340,4,1,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(341,4,1,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(342,4,1,14,15000.00,NULL,1,5,'2024-07-31 13:33:23'),
(343,4,1,2,3208.88,NULL,1,5,'2024-07-31 13:33:23'),
(344,4,1,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(345,4,1,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(346,4,1,4,52895.65,NULL,1,5,'2024-07-31 13:33:23'),
(347,4,1,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(348,4,1,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(353,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(354,4,2,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(355,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(356,4,2,2,2884.50,NULL,1,5,'2024-07-31 13:33:23'),
(357,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(358,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(359,4,2,4,46408.15,NULL,1,5,'2024-07-31 13:33:23'),
(360,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(361,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(368,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(369,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(370,4,3,5,148500.00,NULL,1,5,'2024-07-31 13:33:23'),
(371,4,3,2,3289.50,NULL,1,5,'2024-07-31 13:33:23'),
(372,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(373,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(374,4,3,4,54148.15,NULL,1,5,'2024-07-31 13:33:23'),
(375,4,3,10,11137.50,NULL,1,5,'2024-07-31 13:33:23'),
(376,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(383,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(384,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(385,4,4,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(386,4,4,2,1135.50,NULL,1,5,'2024-07-31 13:33:23'),
(387,4,4,9,1400.00,NULL,1,5,'2024-07-31 13:33:23'),
(388,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(389,4,4,4,13318.15,NULL,1,5,'2024-07-31 13:33:23'),
(390,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(391,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(398,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(399,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(400,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(401,4,5,2,3504.00,NULL,1,5,'2024-07-31 13:33:23'),
(402,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(403,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(404,4,5,4,58116.40,NULL,1,5,'2024-07-31 13:33:23'),
(405,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(413,4,1,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(414,4,1,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(415,4,1,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(416,4,1,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(417,4,1,14,15000.00,NULL,1,5,'2024-07-31 13:33:23'),
(418,4,1,2,3208.88,NULL,1,5,'2024-07-31 13:33:23'),
(419,4,1,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(420,4,1,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(421,4,1,4,52895.65,NULL,1,5,'2024-07-31 13:33:23'),
(422,4,1,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(423,4,1,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(428,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(429,4,2,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(430,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(431,4,2,2,2884.50,NULL,1,5,'2024-07-31 13:33:23'),
(432,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(433,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(434,4,2,4,46408.15,NULL,1,5,'2024-07-31 13:33:23'),
(435,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(436,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(443,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(444,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(445,4,3,5,148500.00,NULL,1,5,'2024-07-31 13:33:23'),
(446,4,3,2,3289.50,NULL,1,5,'2024-07-31 13:33:23'),
(447,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(448,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(449,4,3,4,54148.15,NULL,1,5,'2024-07-31 13:33:23'),
(450,4,3,10,11137.50,NULL,1,5,'2024-07-31 13:33:23'),
(451,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(458,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(459,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(460,4,4,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(461,4,4,14,25200.00,NULL,1,5,'2024-07-31 13:33:23'),
(462,4,4,2,1513.50,NULL,1,5,'2024-07-31 13:33:23'),
(463,4,4,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(464,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(465,4,4,4,20878.15,NULL,1,5,'2024-07-31 13:33:23'),
(466,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(467,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(473,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(474,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(475,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(476,4,5,2,3504.00,NULL,1,5,'2024-07-31 13:33:23'),
(477,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(478,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(479,4,5,4,58116.40,NULL,1,5,'2024-07-31 13:33:23'),
(480,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(488,4,1,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(489,4,1,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(490,4,1,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(491,4,1,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(492,4,1,14,15000.00,NULL,1,5,'2024-07-31 13:33:23'),
(493,4,1,2,3208.88,NULL,1,5,'2024-07-31 13:33:23'),
(494,4,1,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(495,4,1,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(496,4,1,4,52895.65,NULL,1,5,'2024-07-31 13:33:23'),
(497,4,1,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(498,4,1,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(503,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(504,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(505,4,2,2,2674.50,NULL,1,5,'2024-07-31 13:33:23'),
(506,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(507,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(508,4,2,4,42208.15,NULL,1,5,'2024-07-31 13:33:23'),
(509,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(510,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(518,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(519,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(520,4,3,5,148500.00,NULL,1,5,'2024-07-31 13:33:23'),
(521,4,3,2,3289.50,NULL,1,5,'2024-07-31 13:33:23'),
(522,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(523,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(524,4,3,4,54148.15,NULL,1,5,'2024-07-31 13:33:23'),
(525,4,3,10,11137.50,NULL,1,5,'2024-07-31 13:33:23'),
(526,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(533,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(534,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(535,4,4,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(536,4,4,14,25200.00,NULL,1,5,'2024-07-31 13:33:23'),
(537,4,4,2,1513.50,NULL,1,5,'2024-07-31 13:33:23'),
(538,4,4,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(539,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(540,4,4,4,20878.15,NULL,1,5,'2024-07-31 13:33:23'),
(541,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(542,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(548,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(549,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(550,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(551,4,5,2,3504.00,NULL,1,5,'2024-07-31 13:33:23'),
(552,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(553,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(554,4,5,4,58116.40,NULL,1,5,'2024-07-31 13:33:23'),
(555,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(563,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(564,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(565,4,2,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(566,4,2,2,2773.88,NULL,1,5,'2024-07-31 13:33:23'),
(567,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(568,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(569,4,2,4,44195.65,NULL,1,5,'2024-07-31 13:33:23'),
(570,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(571,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(578,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(579,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(580,4,3,5,148500.00,NULL,1,5,'2024-07-31 13:33:23'),
(581,4,3,11,7425.00,NULL,1,5,'2024-07-31 13:33:23'),
(582,4,3,2,3400.88,NULL,1,5,'2024-07-31 13:33:23'),
(583,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(584,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(585,4,3,4,56375.65,NULL,1,5,'2024-07-31 13:33:23'),
(586,4,3,10,11137.50,NULL,1,5,'2024-07-31 13:33:23'),
(587,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(593,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(594,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(595,4,4,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(596,4,4,14,25200.00,NULL,1,5,'2024-07-31 13:33:23'),
(597,4,4,11,2425.00,NULL,1,5,'2024-07-31 13:33:23'),
(598,4,4,2,1549.88,NULL,1,5,'2024-07-31 13:33:23'),
(599,4,4,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(600,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(601,4,4,4,21605.65,NULL,1,5,'2024-07-31 13:33:23'),
(602,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(603,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(608,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(609,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(610,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(611,4,5,11,8140.00,NULL,1,5,'2024-07-31 13:33:23'),
(612,4,5,2,3626.10,NULL,1,5,'2024-07-31 13:33:23'),
(613,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(614,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(615,4,5,4,60558.40,NULL,1,5,'2024-07-31 13:33:23'),
(616,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(623,4,6,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(624,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(625,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(626,4,2,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(627,4,2,2,2773.88,NULL,1,5,'2024-07-31 13:33:23'),
(628,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(629,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(630,4,2,4,44195.65,NULL,1,5,'2024-07-31 13:33:23'),
(631,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(632,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(639,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(640,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(641,4,3,5,148500.00,NULL,1,5,'2024-07-31 13:33:23'),
(642,4,3,11,7425.00,NULL,1,5,'2024-07-31 13:33:23'),
(643,4,3,2,3400.88,NULL,1,5,'2024-07-31 13:33:23'),
(644,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(645,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(646,4,3,4,56375.65,NULL,1,5,'2024-07-31 13:33:23'),
(647,4,3,10,11137.50,NULL,1,5,'2024-07-31 13:33:23'),
(648,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(654,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(655,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(656,4,4,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(657,4,4,14,25200.00,NULL,1,5,'2024-07-31 13:33:23'),
(658,4,4,11,2425.00,NULL,1,5,'2024-07-31 13:33:23'),
(659,4,4,2,1549.88,NULL,1,5,'2024-07-31 13:33:23'),
(660,4,4,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(661,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(662,4,4,4,21605.65,NULL,1,5,'2024-07-31 13:33:23'),
(663,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(664,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(669,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(670,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(671,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(672,4,5,11,8140.00,NULL,1,5,'2024-07-31 13:33:23'),
(673,4,5,2,3626.10,NULL,1,5,'2024-07-31 13:33:23'),
(674,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(675,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(676,4,5,4,60558.40,NULL,1,5,'2024-07-31 13:33:23'),
(677,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(684,4,6,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(685,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(686,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(687,4,2,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(688,4,2,2,2773.88,NULL,1,5,'2024-07-31 13:33:23'),
(689,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(690,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(691,4,2,4,44195.65,NULL,1,5,'2024-07-31 13:33:23'),
(692,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(693,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(700,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(701,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(702,4,3,5,148500.00,NULL,1,5,'2024-07-31 13:33:23'),
(703,4,3,11,7425.00,NULL,1,5,'2024-07-31 13:33:23'),
(704,4,3,2,3400.88,NULL,1,5,'2024-07-31 13:33:23'),
(705,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(706,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(707,4,3,4,56375.65,NULL,1,5,'2024-07-31 13:33:23'),
(708,4,3,10,11137.50,NULL,1,5,'2024-07-31 13:33:23'),
(709,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(715,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(716,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(717,4,4,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(718,4,4,14,25200.00,NULL,1,5,'2024-07-31 13:33:23'),
(719,4,4,11,2425.00,NULL,1,5,'2024-07-31 13:33:23'),
(720,4,4,2,1549.88,NULL,1,5,'2024-07-31 13:33:23'),
(721,4,4,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(722,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(723,4,4,4,21605.65,NULL,1,5,'2024-07-31 13:33:23'),
(724,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(725,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(730,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(731,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(732,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(733,4,5,11,8140.00,NULL,1,5,'2024-07-31 13:33:23'),
(734,4,5,2,3626.10,NULL,1,5,'2024-07-31 13:33:23'),
(735,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(736,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(737,4,5,4,60558.40,NULL,1,5,'2024-07-31 13:33:23'),
(738,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(745,4,6,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(746,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(747,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(748,4,2,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(749,4,2,2,2773.88,NULL,1,5,'2024-07-31 13:33:23'),
(750,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(751,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(752,4,2,4,44195.65,NULL,1,5,'2024-07-31 13:33:23'),
(753,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(754,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(761,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(762,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(763,4,3,5,148500.00,NULL,1,5,'2024-07-31 13:33:23'),
(764,4,3,11,7425.00,NULL,1,5,'2024-07-31 13:33:23'),
(765,4,3,2,3400.88,NULL,1,5,'2024-07-31 13:33:23'),
(766,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(767,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(768,4,3,4,11375.65,NULL,1,5,'2024-07-31 13:33:23'),
(769,4,3,10,11137.50,NULL,1,5,'2024-07-31 13:33:23'),
(770,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(776,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(777,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(778,4,4,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(779,4,4,14,25200.00,NULL,1,5,'2024-07-31 13:33:23'),
(780,4,4,11,2425.00,NULL,1,5,'2024-07-31 13:33:23'),
(781,4,4,2,1549.88,NULL,1,5,'2024-07-31 13:33:23'),
(782,4,4,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(783,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(784,4,4,4,21605.65,NULL,1,5,'2024-07-31 13:33:23'),
(785,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(786,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(791,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(792,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(793,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(794,4,5,11,8140.00,NULL,1,5,'2024-07-31 13:33:23'),
(795,4,5,2,3626.10,NULL,1,5,'2024-07-31 13:33:23'),
(796,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(797,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(798,4,5,4,60558.40,NULL,1,5,'2024-07-31 13:33:23'),
(799,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(806,4,6,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(807,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(808,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(809,4,2,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(810,4,2,2,2773.88,NULL,1,5,'2024-07-31 13:33:23'),
(811,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(812,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(813,4,2,4,44195.65,NULL,1,5,'2024-07-31 13:33:23'),
(814,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(815,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(822,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(823,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(824,4,3,5,148500.00,NULL,1,5,'2024-07-31 13:33:23'),
(825,4,3,11,7425.00,NULL,1,5,'2024-07-31 13:33:23'),
(826,4,3,2,3400.88,NULL,1,5,'2024-07-31 13:33:23'),
(827,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(828,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(829,4,3,4,11375.65,NULL,1,5,'2024-07-31 13:33:23'),
(830,4,3,10,11137.50,NULL,1,5,'2024-07-31 13:33:23'),
(831,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(837,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(838,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(839,4,4,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(840,4,4,14,25200.00,NULL,1,5,'2024-07-31 13:33:23'),
(841,4,4,11,2425.00,NULL,1,5,'2024-07-31 13:33:23'),
(842,4,4,2,1549.88,NULL,1,5,'2024-07-31 13:33:23'),
(843,4,4,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(844,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(845,4,4,4,21605.65,NULL,1,5,'2024-07-31 13:33:23'),
(846,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(847,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(852,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(853,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(854,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(855,4,5,11,8140.00,NULL,1,5,'2024-07-31 13:33:23'),
(856,4,5,2,3626.10,NULL,1,5,'2024-07-31 13:33:23'),
(857,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(858,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(859,4,5,4,60558.40,NULL,1,5,'2024-07-31 13:33:23'),
(860,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(867,4,6,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(868,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(869,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(870,4,2,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(871,4,2,2,2773.88,NULL,1,5,'2024-07-31 13:33:23'),
(872,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(873,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(874,4,2,4,44195.65,NULL,1,5,'2024-07-31 13:33:23'),
(875,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(876,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(883,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(884,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(885,4,3,5,148500.00,NULL,1,5,'2024-07-31 13:33:23'),
(886,4,3,11,7425.00,NULL,1,5,'2024-07-31 13:33:23'),
(887,4,3,2,3400.88,NULL,1,5,'2024-07-31 13:33:23'),
(888,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(889,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(890,4,3,4,11375.65,NULL,1,5,'2024-07-31 13:33:23'),
(891,4,3,10,11137.50,NULL,1,5,'2024-07-31 13:33:23'),
(892,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(898,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(899,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(900,4,4,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(901,4,4,14,25200.00,NULL,1,5,'2024-07-31 13:33:23'),
(902,4,4,11,2425.00,NULL,1,5,'2024-07-31 13:33:23'),
(903,4,4,2,1549.88,NULL,1,5,'2024-07-31 13:33:23'),
(904,4,4,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(905,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(906,4,4,4,21605.65,NULL,1,5,'2024-07-31 13:33:23'),
(907,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(908,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(913,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(914,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(915,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(916,4,5,11,8140.00,NULL,1,5,'2024-07-31 13:33:23'),
(917,4,5,2,3626.10,NULL,1,5,'2024-07-31 13:33:23'),
(918,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(919,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(920,4,5,4,60558.40,NULL,1,5,'2024-07-31 13:33:23'),
(921,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(928,4,6,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(929,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(930,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(931,4,2,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(932,4,2,2,2773.88,NULL,1,5,'2024-07-31 13:33:23'),
(933,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(934,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(935,4,2,4,44195.65,NULL,1,5,'2024-07-31 13:33:23'),
(936,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(937,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(944,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(945,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(946,4,3,5,148500.00,NULL,1,5,'2024-07-31 13:33:23'),
(947,4,3,11,7425.00,NULL,1,5,'2024-07-31 13:33:23'),
(948,4,3,2,3400.88,NULL,1,5,'2024-07-31 13:33:23'),
(949,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(950,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(951,4,3,4,11375.65,NULL,1,5,'2024-07-31 13:33:23'),
(952,4,3,10,11137.50,NULL,1,5,'2024-07-31 13:33:23'),
(953,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(959,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(960,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(961,4,4,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(962,4,4,14,25200.00,NULL,1,5,'2024-07-31 13:33:23'),
(963,4,4,11,2425.00,NULL,1,5,'2024-07-31 13:33:23'),
(964,4,4,2,1549.88,NULL,1,5,'2024-07-31 13:33:23'),
(965,4,4,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(966,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(967,4,4,4,21605.65,NULL,1,5,'2024-07-31 13:33:23'),
(968,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(969,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(974,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(975,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(976,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(977,4,5,11,8140.00,NULL,1,5,'2024-07-31 13:33:23'),
(978,4,5,2,3626.10,NULL,1,5,'2024-07-31 13:33:23'),
(979,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(980,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(981,4,5,4,60558.40,NULL,1,5,'2024-07-31 13:33:23'),
(982,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(989,4,6,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(990,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(991,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(992,4,2,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(993,4,2,2,2773.88,NULL,1,5,'2024-07-31 13:33:23'),
(994,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(995,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(996,4,2,4,44195.65,NULL,1,5,'2024-07-31 13:33:23'),
(997,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(998,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1005,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(1006,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(1007,4,3,5,148500.00,NULL,1,5,'2024-07-31 13:33:23'),
(1008,4,3,11,7425.00,NULL,1,5,'2024-07-31 13:33:23'),
(1009,4,3,2,3400.88,NULL,1,5,'2024-07-31 13:33:23'),
(1010,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(1011,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(1012,4,3,4,11375.65,NULL,1,5,'2024-07-31 13:33:23'),
(1013,4,3,10,11137.50,NULL,1,5,'2024-07-31 13:33:23'),
(1014,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1020,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(1021,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(1022,4,4,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(1023,4,4,14,25200.00,NULL,1,5,'2024-07-31 13:33:23'),
(1024,4,4,11,2425.00,NULL,1,5,'2024-07-31 13:33:23'),
(1025,4,4,2,1549.88,NULL,1,5,'2024-07-31 13:33:23'),
(1026,4,4,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(1027,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(1028,4,4,4,21605.65,NULL,1,5,'2024-07-31 13:33:23'),
(1029,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(1030,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1035,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(1036,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(1037,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(1038,4,5,11,8140.00,NULL,1,5,'2024-07-31 13:33:23'),
(1039,4,5,2,3626.10,NULL,1,5,'2024-07-31 13:33:23'),
(1040,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(1041,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(1042,4,5,4,60558.40,NULL,1,5,'2024-07-31 13:33:23'),
(1043,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(1050,4,6,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1051,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(1052,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(1053,4,2,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(1054,4,2,2,2773.88,NULL,1,5,'2024-07-31 13:33:23'),
(1055,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(1056,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(1057,4,2,4,44195.65,NULL,1,5,'2024-07-31 13:33:23'),
(1058,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(1059,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1066,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(1067,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(1068,4,3,5,148500.00,NULL,1,5,'2024-07-31 13:33:23'),
(1069,4,3,11,7425.00,NULL,1,5,'2024-07-31 13:33:23'),
(1070,4,3,2,3400.88,NULL,1,5,'2024-07-31 13:33:23'),
(1071,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(1072,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(1073,4,3,4,11375.65,NULL,1,5,'2024-07-31 13:33:23'),
(1074,4,3,10,11137.50,NULL,1,5,'2024-07-31 13:33:23'),
(1075,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1081,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(1082,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(1083,4,4,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(1084,4,4,14,25200.00,NULL,1,5,'2024-07-31 13:33:23'),
(1085,4,4,11,2425.00,NULL,1,5,'2024-07-31 13:33:23'),
(1086,4,4,2,1549.88,NULL,1,5,'2024-07-31 13:33:23'),
(1087,4,4,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(1088,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(1089,4,4,4,21605.65,NULL,1,5,'2024-07-31 13:33:23'),
(1090,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(1091,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1096,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(1097,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(1098,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(1099,4,5,11,8140.00,NULL,1,5,'2024-07-31 13:33:23'),
(1100,4,5,2,3626.10,NULL,1,5,'2024-07-31 13:33:23'),
(1101,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(1102,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(1103,4,5,4,60558.40,NULL,1,5,'2024-07-31 13:33:23'),
(1104,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(1105,4,5,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1111,4,6,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1112,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(1113,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(1114,4,2,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(1115,4,2,2,2773.88,NULL,1,5,'2024-07-31 13:33:23'),
(1116,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(1117,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(1118,4,2,4,44195.65,NULL,1,5,'2024-07-31 13:33:23'),
(1119,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(1120,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1127,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(1128,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(1129,4,3,5,148500.00,NULL,1,5,'2024-07-31 13:33:23'),
(1130,4,3,11,7425.00,NULL,1,5,'2024-07-31 13:33:23'),
(1131,4,3,2,3400.88,NULL,1,5,'2024-07-31 13:33:23'),
(1132,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(1133,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(1134,4,3,4,11375.65,NULL,1,5,'2024-07-31 13:33:23'),
(1135,4,3,10,11137.50,NULL,1,5,'2024-07-31 13:33:23'),
(1136,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1142,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(1143,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(1144,4,4,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(1145,4,4,14,25200.00,NULL,1,5,'2024-07-31 13:33:23'),
(1146,4,4,11,2425.00,NULL,1,5,'2024-07-31 13:33:23'),
(1147,4,4,2,1549.88,NULL,1,5,'2024-07-31 13:33:23'),
(1148,4,4,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(1149,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(1150,4,4,4,21605.65,NULL,1,5,'2024-07-31 13:33:23'),
(1151,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(1152,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1157,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(1158,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(1159,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(1160,4,5,11,8140.00,NULL,1,5,'2024-07-31 13:33:23'),
(1161,4,5,2,3626.10,NULL,1,5,'2024-07-31 13:33:23'),
(1162,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(1163,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(1164,4,5,4,60558.40,NULL,1,5,'2024-07-31 13:33:23'),
(1165,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(1166,4,5,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1172,4,2,5,132500.00,NULL,1,5,'2024-07-31 13:33:23'),
(1173,4,2,6,45800.00,NULL,1,5,'2024-07-31 13:33:23'),
(1174,4,2,11,6625.00,NULL,1,5,'2024-07-31 13:33:23'),
(1175,4,2,2,2773.88,NULL,1,5,'2024-07-31 13:33:23'),
(1176,4,2,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(1177,4,2,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(1178,4,2,4,44195.65,NULL,1,5,'2024-07-31 13:33:23'),
(1179,4,2,10,9937.50,NULL,1,5,'2024-07-31 13:33:23'),
(1180,4,2,12,255.00,NULL,1,5,'2024-07-31 13:33:23'),
(1181,4,2,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1187,4,3,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(1188,4,3,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(1189,4,3,5,148500.00,NULL,1,5,'2024-07-31 13:33:23'),
(1190,4,3,11,7425.00,NULL,1,5,'2024-07-31 13:33:23'),
(1191,4,3,2,3400.88,NULL,1,5,'2024-07-31 13:33:23'),
(1192,4,3,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(1193,4,3,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(1194,4,3,4,11375.65,NULL,1,5,'2024-07-31 13:33:23'),
(1195,4,3,10,11137.50,NULL,1,5,'2024-07-31 13:33:23'),
(1196,4,3,12,255.00,NULL,1,5,'2024-07-31 13:33:23'),
(1197,4,3,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1202,4,4,5,48500.00,NULL,1,5,'2024-07-31 13:33:23'),
(1203,4,4,6,13200.00,NULL,1,5,'2024-07-31 13:33:23'),
(1204,4,4,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(1205,4,4,14,25200.00,NULL,1,5,'2024-07-31 13:33:23'),
(1206,4,4,11,2425.00,NULL,1,5,'2024-07-31 13:33:23'),
(1207,4,4,2,1549.88,NULL,1,5,'2024-07-31 13:33:23'),
(1208,4,4,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(1209,4,4,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(1210,4,4,4,21605.65,NULL,1,5,'2024-07-31 13:33:23'),
(1211,4,4,10,3637.50,NULL,1,5,'2024-07-31 13:33:23'),
(1212,4,4,12,255.00,NULL,1,5,'2024-07-31 13:33:23'),
(1213,4,4,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1217,4,5,5,162800.00,NULL,1,5,'2024-07-31 13:33:23'),
(1218,4,5,7,14000.00,NULL,1,5,'2024-07-31 13:33:23'),
(1219,4,5,6,56800.00,NULL,1,5,'2024-07-31 13:33:23'),
(1220,4,5,11,8140.00,NULL,1,5,'2024-07-31 13:33:23'),
(1221,4,5,2,3626.10,NULL,1,5,'2024-07-31 13:33:23'),
(1222,4,5,9,1700.00,NULL,1,5,'2024-07-31 13:33:23'),
(1223,4,5,3,2280.00,NULL,1,5,'2024-07-31 13:33:23'),
(1224,4,5,4,60558.40,NULL,1,5,'2024-07-31 13:33:23'),
(1225,4,5,10,12210.00,NULL,1,5,'2024-07-31 13:33:23'),
(1226,4,5,12,255.00,NULL,1,5,'2024-07-31 13:33:23'),
(1227,4,5,8,2400.00,NULL,1,5,'2024-07-31 13:33:23'),
(1228,5,2,5,132500.00,NULL,1,5,'2024-08-03 23:31:57'),
(1229,5,2,6,45800.00,NULL,1,5,'2024-08-03 23:31:57'),
(1230,5,2,11,6625.00,NULL,1,5,'2024-08-03 23:31:57'),
(1231,5,2,2,2773.88,NULL,1,5,'2024-08-03 23:31:57'),
(1232,5,2,9,1700.00,NULL,1,5,'2024-08-03 23:31:57'),
(1233,5,2,3,2280.00,NULL,1,5,'2024-08-03 23:31:57'),
(1234,5,2,4,44195.65,NULL,1,5,'2024-08-03 23:31:57'),
(1235,5,2,10,9937.50,NULL,1,5,'2024-08-03 23:31:57'),
(1236,5,2,12,255.00,NULL,1,5,'2024-08-03 23:31:57'),
(1237,5,2,8,2400.00,NULL,1,5,'2024-08-03 23:31:57'),
(1243,5,3,7,14000.00,NULL,1,5,'2024-08-03 23:31:57'),
(1244,5,3,6,56800.00,NULL,1,5,'2024-08-03 23:31:57'),
(1245,5,3,5,148500.00,NULL,1,5,'2024-08-03 23:31:57'),
(1246,5,3,11,7425.00,NULL,1,5,'2024-08-03 23:31:57'),
(1247,5,3,2,3400.88,NULL,1,5,'2024-08-03 23:31:57'),
(1248,5,3,9,1700.00,NULL,1,5,'2024-08-03 23:31:57'),
(1249,5,3,3,2280.00,NULL,1,5,'2024-08-03 23:31:57'),
(1250,5,3,4,11375.65,NULL,1,5,'2024-08-03 23:31:57'),
(1251,5,3,10,11137.50,NULL,1,5,'2024-08-03 23:31:57'),
(1252,5,3,12,255.00,NULL,1,5,'2024-08-03 23:31:57'),
(1253,5,3,8,2400.00,NULL,1,5,'2024-08-03 23:31:57'),
(1258,5,4,5,48500.00,NULL,1,5,'2024-08-03 23:31:57'),
(1259,5,4,6,13200.00,NULL,1,5,'2024-08-03 23:31:57'),
(1260,5,4,7,14000.00,NULL,1,5,'2024-08-03 23:31:57'),
(1261,5,4,14,25200.00,NULL,1,5,'2024-08-03 23:31:57'),
(1262,5,4,11,2425.00,NULL,1,5,'2024-08-03 23:31:57'),
(1263,5,4,2,1549.88,NULL,1,5,'2024-08-03 23:31:57'),
(1264,5,4,9,1700.00,NULL,1,5,'2024-08-03 23:31:57'),
(1265,5,4,3,2280.00,NULL,1,5,'2024-08-03 23:31:57'),
(1266,5,4,4,21605.65,NULL,1,5,'2024-08-03 23:31:57'),
(1267,5,4,10,3637.50,NULL,1,5,'2024-08-03 23:31:57'),
(1268,5,4,12,255.00,NULL,1,5,'2024-08-03 23:31:57'),
(1269,5,4,8,2400.00,NULL,1,5,'2024-08-03 23:31:57'),
(1273,5,5,5,162800.00,NULL,1,5,'2024-08-03 23:31:57'),
(1274,5,5,7,14000.00,NULL,1,5,'2024-08-03 23:31:57'),
(1275,5,5,6,56800.00,NULL,1,5,'2024-08-03 23:31:57'),
(1276,5,5,11,8140.00,NULL,1,5,'2024-08-03 23:31:57'),
(1277,5,5,2,3626.10,NULL,1,5,'2024-08-03 23:31:57'),
(1278,5,5,9,1700.00,NULL,1,5,'2024-08-03 23:31:57'),
(1279,5,5,3,2280.00,NULL,1,5,'2024-08-03 23:31:57'),
(1280,5,5,4,60558.40,NULL,1,5,'2024-08-03 23:31:57'),
(1281,5,5,10,12210.00,NULL,1,5,'2024-08-03 23:31:57'),
(1282,5,5,12,255.00,NULL,1,5,'2024-08-03 23:31:57'),
(1283,5,5,8,2400.00,NULL,1,5,'2024-08-03 23:31:57'),
(1288,5,2,5,132500.00,NULL,0,NULL,NULL),
(1289,5,2,6,45800.00,NULL,0,NULL,NULL),
(1290,5,2,11,6625.00,NULL,0,NULL,NULL),
(1291,5,2,2,2773.88,NULL,0,NULL,NULL),
(1292,5,2,9,1700.00,NULL,0,NULL,NULL),
(1293,5,2,3,2280.00,NULL,0,NULL,NULL),
(1294,5,2,4,44195.65,NULL,0,NULL,NULL),
(1295,5,2,10,9937.50,NULL,0,NULL,NULL),
(1296,5,2,12,255.00,NULL,0,NULL,NULL),
(1297,5,2,8,2400.00,NULL,0,NULL,NULL),
(1303,5,3,7,14000.00,NULL,0,NULL,NULL),
(1304,5,3,6,56800.00,NULL,0,NULL,NULL),
(1305,5,3,5,148500.00,NULL,0,NULL,NULL),
(1306,5,3,11,7425.00,NULL,0,NULL,NULL),
(1307,5,3,2,3400.88,NULL,0,NULL,NULL),
(1308,5,3,9,1700.00,NULL,0,NULL,NULL),
(1309,5,3,3,2280.00,NULL,0,NULL,NULL),
(1310,5,3,4,11375.65,NULL,0,NULL,NULL),
(1311,5,3,10,11137.50,NULL,0,NULL,NULL),
(1312,5,3,12,255.00,NULL,0,NULL,NULL),
(1313,5,3,8,2400.00,NULL,0,NULL,NULL),
(1318,5,4,5,48500.00,NULL,0,NULL,NULL),
(1319,5,4,6,13200.00,NULL,0,NULL,NULL),
(1320,5,4,7,14000.00,NULL,0,NULL,NULL),
(1321,5,4,14,25200.00,NULL,0,NULL,NULL),
(1322,5,4,11,2425.00,NULL,0,NULL,NULL),
(1323,5,4,2,1549.88,NULL,0,NULL,NULL),
(1324,5,4,9,1700.00,NULL,0,NULL,NULL),
(1325,5,4,3,2280.00,NULL,0,NULL,NULL),
(1326,5,4,4,21605.65,NULL,0,NULL,NULL),
(1327,5,4,10,3637.50,NULL,0,NULL,NULL),
(1328,5,4,12,255.00,NULL,0,NULL,NULL),
(1329,5,4,8,2400.00,NULL,0,NULL,NULL),
(1333,5,5,5,162800.00,NULL,0,NULL,NULL),
(1334,5,5,7,14000.00,NULL,0,NULL,NULL),
(1335,5,5,6,56800.00,NULL,0,NULL,NULL),
(1336,5,5,11,8140.00,NULL,0,NULL,NULL),
(1337,5,5,2,3626.10,NULL,0,NULL,NULL),
(1338,5,5,9,1700.00,NULL,0,NULL,NULL),
(1339,5,5,3,2280.00,NULL,0,NULL,NULL),
(1340,5,5,4,60558.40,NULL,0,NULL,NULL),
(1341,5,5,10,12210.00,NULL,0,NULL,NULL),
(1342,5,5,12,255.00,NULL,0,NULL,NULL),
(1343,5,5,8,2400.00,NULL,0,NULL,NULL),
(1348,6,2,5,132500.00,NULL,1,5,'2024-05-30 13:12:40'),
(1349,6,2,6,45800.00,NULL,1,5,'2024-05-30 13:12:40'),
(1350,6,2,11,6625.00,NULL,1,5,'2024-05-30 13:12:40'),
(1351,6,2,2,2773.88,NULL,1,5,'2024-05-30 13:12:40'),
(1352,6,2,9,1700.00,NULL,1,5,'2024-05-30 13:12:40'),
(1353,6,2,3,2280.00,NULL,1,5,'2024-05-30 13:12:40'),
(1354,6,2,4,44195.65,NULL,1,5,'2024-05-30 13:12:40'),
(1355,6,2,10,9937.50,NULL,1,5,'2024-05-30 13:12:40'),
(1356,6,2,12,255.00,NULL,1,5,'2024-05-30 13:12:40'),
(1357,6,2,8,2400.00,NULL,1,5,'2024-05-30 13:12:40'),
(1363,6,3,7,14000.00,NULL,1,5,'2024-05-30 13:12:40'),
(1364,6,3,6,56800.00,NULL,1,5,'2024-05-30 13:12:40'),
(1365,6,3,5,148500.00,NULL,1,5,'2024-05-30 13:12:40'),
(1366,6,3,11,7425.00,NULL,1,5,'2024-05-30 13:12:40'),
(1367,6,3,2,3400.88,NULL,1,5,'2024-05-30 13:12:40'),
(1368,6,3,9,1700.00,NULL,1,5,'2024-05-30 13:12:40'),
(1369,6,3,3,2280.00,NULL,1,5,'2024-05-30 13:12:40'),
(1370,6,3,4,11375.65,NULL,1,5,'2024-05-30 13:12:40'),
(1371,6,3,10,11137.50,NULL,1,5,'2024-05-30 13:12:40'),
(1372,6,3,12,255.00,NULL,1,5,'2024-05-30 13:12:40'),
(1373,6,3,8,2400.00,NULL,1,5,'2024-05-30 13:12:40'),
(1378,6,4,5,48500.00,NULL,1,5,'2024-05-30 13:12:40'),
(1379,6,4,6,13200.00,NULL,1,5,'2024-05-30 13:12:40'),
(1380,6,4,7,14000.00,NULL,1,5,'2024-05-30 13:12:40'),
(1381,6,4,14,25200.00,NULL,1,5,'2024-05-30 13:12:40'),
(1382,6,4,11,2425.00,NULL,1,5,'2024-05-30 13:12:40'),
(1383,6,4,2,1549.88,NULL,1,5,'2024-05-30 13:12:40'),
(1384,6,4,9,1700.00,NULL,1,5,'2024-05-30 13:12:40'),
(1385,6,4,3,2280.00,NULL,1,5,'2024-05-30 13:12:40'),
(1386,6,4,4,21605.65,NULL,1,5,'2024-05-30 13:12:40'),
(1387,6,4,10,3637.50,NULL,1,5,'2024-05-30 13:12:40'),
(1388,6,4,12,255.00,NULL,1,5,'2024-05-30 13:12:40'),
(1389,6,4,8,2400.00,NULL,1,5,'2024-05-30 13:12:40'),
(1393,6,5,5,162800.00,NULL,1,5,'2024-05-30 13:12:40'),
(1394,6,5,7,14000.00,NULL,1,5,'2024-05-30 13:12:40'),
(1395,6,5,6,56800.00,NULL,1,5,'2024-05-30 13:12:40'),
(1396,6,5,11,8140.00,NULL,1,5,'2024-05-30 13:12:40'),
(1397,6,5,2,3626.10,NULL,1,5,'2024-05-30 13:12:40'),
(1398,6,5,9,1700.00,NULL,1,5,'2024-05-30 13:12:40'),
(1399,6,5,3,2280.00,NULL,1,5,'2024-05-30 13:12:40'),
(1400,6,5,4,60558.40,NULL,1,5,'2024-05-30 13:12:40'),
(1401,6,5,10,12210.00,NULL,1,5,'2024-05-30 13:12:40'),
(1402,6,5,12,255.00,NULL,1,5,'2024-05-30 13:12:40'),
(1403,6,5,8,2400.00,NULL,1,5,'2024-05-30 13:12:40'),
(1408,6,2,5,132500.00,NULL,1,5,'2024-05-30 13:12:40'),
(1409,6,2,6,45800.00,NULL,1,5,'2024-05-30 13:12:40'),
(1410,6,2,11,6625.00,NULL,1,5,'2024-05-30 13:12:40'),
(1411,6,2,2,2773.88,NULL,1,5,'2024-05-30 13:12:40'),
(1412,6,2,9,1700.00,NULL,1,5,'2024-05-30 13:12:40'),
(1413,6,2,3,2280.00,NULL,1,5,'2024-05-30 13:12:40'),
(1414,6,2,4,44195.65,NULL,1,5,'2024-05-30 13:12:40'),
(1415,6,2,10,9937.50,NULL,1,5,'2024-05-30 13:12:40'),
(1416,6,2,12,255.00,NULL,1,5,'2024-05-30 13:12:40'),
(1417,6,2,8,2400.00,NULL,1,5,'2024-05-30 13:12:40'),
(1423,6,3,7,14000.00,NULL,1,5,'2024-05-30 13:12:40'),
(1424,6,3,6,56800.00,NULL,1,5,'2024-05-30 13:12:40'),
(1425,6,3,5,148500.00,NULL,1,5,'2024-05-30 13:12:40'),
(1426,6,3,11,7425.00,NULL,1,5,'2024-05-30 13:12:40'),
(1427,6,3,2,3400.88,NULL,1,5,'2024-05-30 13:12:40'),
(1428,6,3,9,1700.00,NULL,1,5,'2024-05-30 13:12:40'),
(1429,6,3,3,2280.00,NULL,1,5,'2024-05-30 13:12:40'),
(1430,6,3,4,11375.65,NULL,1,5,'2024-05-30 13:12:40'),
(1431,6,3,10,11137.50,NULL,1,5,'2024-05-30 13:12:40'),
(1432,6,3,12,255.00,NULL,1,5,'2024-05-30 13:12:40'),
(1433,6,3,8,2400.00,NULL,1,5,'2024-05-30 13:12:40'),
(1438,6,4,5,48500.00,NULL,1,5,'2024-05-30 13:12:40'),
(1439,6,4,6,13200.00,NULL,1,5,'2024-05-30 13:12:40'),
(1440,6,4,7,14000.00,NULL,1,5,'2024-05-30 13:12:40'),
(1441,6,4,14,25200.00,NULL,1,5,'2024-05-30 13:12:40'),
(1442,6,4,11,2425.00,NULL,1,5,'2024-05-30 13:12:40'),
(1443,6,4,2,1549.88,NULL,1,5,'2024-05-30 13:12:40'),
(1444,6,4,9,1700.00,NULL,1,5,'2024-05-30 13:12:40'),
(1445,6,4,3,2280.00,NULL,1,5,'2024-05-30 13:12:40'),
(1446,6,4,4,21605.65,NULL,1,5,'2024-05-30 13:12:40'),
(1447,6,4,10,3637.50,NULL,1,5,'2024-05-30 13:12:40'),
(1448,6,4,12,255.00,NULL,1,5,'2024-05-30 13:12:40'),
(1449,6,4,8,2400.00,NULL,1,5,'2024-05-30 13:12:40'),
(1453,6,5,5,162800.00,NULL,1,5,'2024-05-30 13:12:40'),
(1454,6,5,7,14000.00,NULL,1,5,'2024-05-30 13:12:40'),
(1455,6,5,6,56800.00,NULL,1,5,'2024-05-30 13:12:40'),
(1456,6,5,11,8140.00,NULL,1,5,'2024-05-30 13:12:40'),
(1457,6,5,2,3626.10,NULL,1,5,'2024-05-30 13:12:40'),
(1458,6,5,9,1700.00,NULL,1,5,'2024-05-30 13:12:40'),
(1459,6,5,3,2280.00,NULL,1,5,'2024-05-30 13:12:40'),
(1460,6,5,4,60558.40,NULL,1,5,'2024-05-30 13:12:40'),
(1461,6,5,10,12210.00,NULL,1,5,'2024-05-30 13:12:40'),
(1462,6,5,12,255.00,NULL,1,5,'2024-05-30 13:12:40'),
(1463,6,5,8,2400.00,NULL,1,5,'2024-05-30 13:12:40'),
(1468,6,7,5,145200.00,NULL,1,5,'2024-05-30 13:12:40'),
(1469,6,7,6,54100.00,NULL,1,5,'2024-05-30 13:12:40'),
(1470,6,7,14,13880.00,NULL,1,5,'2024-05-30 13:12:40'),
(1471,6,7,2,3197.70,NULL,1,5,'2024-05-30 13:12:40'),
(1472,6,7,9,1700.00,NULL,1,5,'2024-05-30 13:12:40'),
(1473,6,7,4,NULL,NULL,1,5,'2024-05-30 13:12:40'),
(1474,6,7,12,255.00,NULL,1,5,'2024-05-30 13:12:40'),
(1475,6,2,5,132500.00,NULL,0,NULL,NULL),
(1476,6,2,6,45800.00,NULL,0,NULL,NULL),
(1477,6,2,11,6625.00,NULL,0,NULL,NULL),
(1478,6,2,2,2773.88,NULL,0,NULL,NULL),
(1479,6,2,9,1700.00,NULL,0,NULL,NULL),
(1480,6,2,3,2280.00,NULL,0,NULL,NULL),
(1481,6,2,4,44195.65,NULL,0,NULL,NULL),
(1482,6,2,10,9937.50,NULL,0,NULL,NULL),
(1483,6,2,12,255.00,NULL,0,NULL,NULL),
(1484,6,2,8,2400.00,NULL,0,NULL,NULL),
(1490,6,3,7,14000.00,NULL,0,NULL,NULL),
(1491,6,3,6,56800.00,NULL,0,NULL,NULL),
(1492,6,3,5,148500.00,NULL,0,NULL,NULL),
(1493,6,3,11,7425.00,NULL,0,NULL,NULL),
(1494,6,3,2,3400.88,NULL,0,NULL,NULL),
(1495,6,3,9,1700.00,NULL,0,NULL,NULL),
(1496,6,3,3,2280.00,NULL,0,NULL,NULL),
(1497,6,3,4,11375.65,NULL,0,NULL,NULL),
(1498,6,3,10,11137.50,NULL,0,NULL,NULL),
(1499,6,3,12,255.00,NULL,0,NULL,NULL),
(1500,6,3,8,2400.00,NULL,0,NULL,NULL),
(1505,6,4,5,48500.00,NULL,0,NULL,NULL),
(1506,6,4,6,13200.00,NULL,0,NULL,NULL),
(1507,6,4,7,14000.00,NULL,0,NULL,NULL),
(1508,6,4,14,25200.00,NULL,0,NULL,NULL),
(1509,6,4,11,2425.00,NULL,0,NULL,NULL),
(1510,6,4,2,1549.88,NULL,0,NULL,NULL),
(1511,6,4,9,1700.00,NULL,0,NULL,NULL),
(1512,6,4,3,2280.00,NULL,0,NULL,NULL),
(1513,6,4,4,21605.65,NULL,0,NULL,NULL),
(1514,6,4,10,3637.50,NULL,0,NULL,NULL),
(1515,6,4,12,255.00,NULL,0,NULL,NULL),
(1516,6,4,8,2400.00,NULL,0,NULL,NULL),
(1520,6,5,5,162800.00,NULL,0,NULL,NULL),
(1521,6,5,7,14000.00,NULL,0,NULL,NULL),
(1522,6,5,6,56800.00,NULL,0,NULL,NULL),
(1523,6,5,11,8140.00,NULL,0,NULL,NULL),
(1524,6,5,2,3626.10,NULL,0,NULL,NULL),
(1525,6,5,9,1700.00,NULL,0,NULL,NULL),
(1526,6,5,3,2280.00,NULL,0,NULL,NULL),
(1527,6,5,4,60558.40,NULL,0,NULL,NULL),
(1528,6,5,10,12210.00,NULL,0,NULL,NULL),
(1529,6,5,12,255.00,NULL,0,NULL,NULL),
(1530,6,5,8,2400.00,NULL,0,NULL,NULL),
(1535,6,7,5,145200.00,NULL,0,NULL,NULL),
(1536,6,7,6,54100.00,NULL,0,NULL,NULL),
(1537,6,7,14,13880.00,NULL,0,NULL,NULL),
(1538,6,7,2,3197.70,NULL,0,NULL,NULL),
(1539,6,7,9,1700.00,NULL,0,NULL,NULL),
(1540,6,7,4,55653.40,NULL,0,NULL,NULL),
(1541,6,7,3,2280.00,NULL,0,NULL,NULL),
(1542,6,7,12,255.00,NULL,0,NULL,NULL),
(1543,6,7,8,2400.00,NULL,0,NULL,NULL),
(1550,3,2,5,132500.00,NULL,0,NULL,NULL),
(1551,3,2,6,45800.00,NULL,0,NULL,NULL),
(1552,3,2,11,6625.00,NULL,0,NULL,NULL),
(1553,3,2,2,2773.88,NULL,0,NULL,NULL),
(1554,3,2,9,1700.00,NULL,0,NULL,NULL),
(1555,3,2,3,2280.00,NULL,0,NULL,NULL),
(1556,3,2,4,44195.65,NULL,0,NULL,NULL),
(1557,3,2,10,9937.50,NULL,0,NULL,NULL),
(1558,3,2,12,255.00,NULL,0,NULL,NULL),
(1559,3,2,8,2400.00,NULL,0,NULL,NULL),
(1565,3,3,7,14000.00,NULL,0,NULL,NULL),
(1566,3,3,6,56800.00,NULL,0,NULL,NULL),
(1567,3,3,5,148500.00,NULL,0,NULL,NULL),
(1568,3,3,11,7425.00,NULL,0,NULL,NULL),
(1569,3,3,2,3400.88,NULL,0,NULL,NULL),
(1570,3,3,9,1700.00,NULL,0,NULL,NULL),
(1571,3,3,3,2280.00,NULL,0,NULL,NULL),
(1572,3,3,4,11375.65,NULL,0,NULL,NULL),
(1573,3,3,10,11137.50,NULL,0,NULL,NULL),
(1574,3,3,12,255.00,NULL,0,NULL,NULL),
(1575,3,3,8,2400.00,NULL,0,NULL,NULL),
(1580,3,4,5,48500.00,NULL,0,NULL,NULL),
(1581,3,4,6,13200.00,NULL,0,NULL,NULL),
(1582,3,4,7,14000.00,NULL,0,NULL,NULL),
(1583,3,4,14,25200.00,NULL,0,NULL,NULL),
(1584,3,4,11,2425.00,NULL,0,NULL,NULL),
(1585,3,4,2,1549.88,NULL,0,NULL,NULL),
(1586,3,4,9,1700.00,NULL,0,NULL,NULL),
(1587,3,4,3,2280.00,NULL,0,NULL,NULL),
(1588,3,4,4,21605.65,NULL,0,NULL,NULL),
(1589,3,4,10,3637.50,NULL,0,NULL,NULL),
(1590,3,4,12,255.00,NULL,0,NULL,NULL),
(1591,3,4,8,2400.00,NULL,0,NULL,NULL),
(1595,3,5,5,162800.00,NULL,0,NULL,NULL),
(1596,3,5,7,14000.00,NULL,0,NULL,NULL),
(1597,3,5,6,56800.00,NULL,0,NULL,NULL),
(1598,3,5,11,8140.00,NULL,0,NULL,NULL),
(1599,3,5,2,3626.10,NULL,0,NULL,NULL),
(1600,3,5,9,1700.00,NULL,0,NULL,NULL),
(1601,3,5,3,2280.00,NULL,0,NULL,NULL),
(1602,3,5,4,60558.40,NULL,0,NULL,NULL),
(1603,3,5,10,12210.00,NULL,0,NULL,NULL),
(1604,3,5,12,255.00,NULL,0,NULL,NULL),
(1605,3,5,8,2400.00,NULL,0,NULL,NULL),
(1610,3,7,5,145200.00,NULL,0,NULL,NULL),
(1611,3,7,6,54100.00,NULL,0,NULL,NULL),
(1612,3,7,14,13880.00,NULL,0,NULL,NULL),
(1613,3,7,2,3197.70,NULL,0,NULL,NULL),
(1614,3,7,9,1700.00,NULL,0,NULL,NULL),
(1615,3,7,4,55653.40,NULL,0,NULL,NULL),
(1616,3,7,3,2280.00,NULL,0,NULL,NULL),
(1617,3,7,12,255.00,NULL,0,NULL,NULL),
(1618,3,7,8,2400.00,NULL,0,NULL,NULL),
(1625,4,2,5,132500.00,NULL,0,NULL,NULL),
(1626,4,2,6,45800.00,NULL,0,NULL,NULL),
(1627,4,2,11,6625.00,NULL,0,NULL,NULL),
(1628,4,2,2,2773.88,NULL,0,NULL,NULL),
(1629,4,2,9,1700.00,NULL,0,NULL,NULL),
(1630,4,2,3,2280.00,NULL,0,NULL,NULL),
(1631,4,2,4,44195.65,NULL,0,NULL,NULL),
(1632,4,2,10,9937.50,NULL,0,NULL,NULL),
(1633,4,2,12,255.00,NULL,0,NULL,NULL),
(1634,4,2,8,2400.00,NULL,0,NULL,NULL),
(1640,4,3,7,14000.00,NULL,0,NULL,NULL),
(1641,4,3,6,56800.00,NULL,0,NULL,NULL),
(1642,4,3,5,148500.00,NULL,0,NULL,NULL),
(1643,4,3,11,7425.00,NULL,0,NULL,NULL),
(1644,4,3,2,3400.88,NULL,0,NULL,NULL),
(1645,4,3,9,1700.00,NULL,0,NULL,NULL),
(1646,4,3,3,2280.00,NULL,0,NULL,NULL),
(1647,4,3,4,11375.65,NULL,0,NULL,NULL),
(1648,4,3,10,11137.50,NULL,0,NULL,NULL),
(1649,4,3,12,255.00,NULL,0,NULL,NULL),
(1650,4,3,8,2400.00,NULL,0,NULL,NULL),
(1655,4,4,5,48500.00,NULL,0,NULL,NULL),
(1656,4,4,6,13200.00,NULL,0,NULL,NULL),
(1657,4,4,7,14000.00,NULL,0,NULL,NULL),
(1658,4,4,14,25200.00,NULL,0,NULL,NULL),
(1659,4,4,11,2425.00,NULL,0,NULL,NULL),
(1660,4,4,2,1549.88,NULL,0,NULL,NULL),
(1661,4,4,9,1700.00,NULL,0,NULL,NULL),
(1662,4,4,3,2280.00,NULL,0,NULL,NULL),
(1663,4,4,4,21605.65,NULL,0,NULL,NULL),
(1664,4,4,10,3637.50,NULL,0,NULL,NULL),
(1665,4,4,12,255.00,NULL,0,NULL,NULL),
(1666,4,4,8,2400.00,NULL,0,NULL,NULL),
(1670,4,5,5,162800.00,NULL,0,NULL,NULL),
(1671,4,5,7,14000.00,NULL,0,NULL,NULL),
(1672,4,5,6,56800.00,NULL,0,NULL,NULL),
(1673,4,5,11,8140.00,NULL,0,NULL,NULL),
(1674,4,5,2,3626.10,NULL,0,NULL,NULL),
(1675,4,5,9,1700.00,NULL,0,NULL,NULL),
(1676,4,5,3,2280.00,NULL,0,NULL,NULL),
(1677,4,5,4,60558.40,NULL,0,NULL,NULL),
(1678,4,5,10,12210.00,NULL,0,NULL,NULL),
(1679,4,5,12,255.00,NULL,0,NULL,NULL),
(1680,4,5,8,2400.00,NULL,0,NULL,NULL),
(1685,4,7,5,145200.00,NULL,0,NULL,NULL),
(1686,4,7,6,54100.00,NULL,0,NULL,NULL),
(1687,4,7,14,13880.00,NULL,0,NULL,NULL),
(1688,4,7,2,3197.70,NULL,0,NULL,NULL),
(1689,4,7,9,1700.00,NULL,0,NULL,NULL),
(1690,4,7,4,55653.40,NULL,0,NULL,NULL),
(1691,4,7,3,2280.00,NULL,0,NULL,NULL),
(1692,4,7,12,255.00,NULL,0,NULL,NULL),
(1693,4,7,8,2400.00,NULL,0,NULL,NULL),
(1694,7,2,5,132500.00,NULL,1,5,'2024-10-28 13:52:59'),
(1695,7,2,6,45800.00,NULL,1,5,'2024-10-28 13:52:59'),
(1696,7,2,11,6625.00,NULL,1,5,'2024-10-28 13:52:59'),
(1697,7,2,2,2773.88,NULL,1,5,'2024-10-28 13:52:59'),
(1698,7,2,9,1700.00,NULL,1,5,'2024-10-28 13:52:59'),
(1699,7,2,3,2280.00,NULL,1,5,'2024-10-28 13:52:59'),
(1700,7,2,4,44195.65,NULL,1,5,'2024-10-28 13:52:59'),
(1701,7,2,10,9937.50,NULL,1,5,'2024-10-28 13:52:59'),
(1702,7,2,12,255.00,NULL,1,5,'2024-10-28 13:52:59'),
(1703,7,2,8,2400.00,NULL,1,5,'2024-10-28 13:52:59'),
(1709,7,3,7,14000.00,NULL,1,5,'2024-10-28 13:52:59'),
(1710,7,3,6,56800.00,NULL,1,5,'2024-10-28 13:52:59'),
(1711,7,3,5,148500.00,NULL,1,5,'2024-10-28 13:52:59'),
(1712,7,3,11,7425.00,NULL,1,5,'2024-10-28 13:52:59'),
(1713,7,3,2,3400.88,NULL,1,5,'2024-10-28 13:52:59'),
(1714,7,3,9,1700.00,NULL,1,5,'2024-10-28 13:52:59'),
(1715,7,3,3,2280.00,NULL,1,5,'2024-10-28 13:52:59'),
(1716,7,3,4,11375.65,NULL,1,5,'2024-10-28 13:52:59'),
(1717,7,3,10,11137.50,NULL,1,5,'2024-10-28 13:52:59'),
(1718,7,3,12,255.00,NULL,1,5,'2024-10-28 13:52:59'),
(1719,7,3,8,2400.00,NULL,1,5,'2024-10-28 13:52:59'),
(1724,7,4,5,48500.00,NULL,1,5,'2024-10-28 13:52:59'),
(1725,7,4,6,13200.00,NULL,1,5,'2024-10-28 13:52:59'),
(1726,7,4,7,14000.00,NULL,1,5,'2024-10-28 13:52:59'),
(1727,7,4,14,25200.00,NULL,1,5,'2024-10-28 13:52:59'),
(1728,7,4,11,2425.00,NULL,1,5,'2024-10-28 13:52:59'),
(1729,7,4,2,1549.88,NULL,1,5,'2024-10-28 13:52:59'),
(1730,7,4,9,1700.00,NULL,1,5,'2024-10-28 13:52:59'),
(1731,7,4,3,2280.00,NULL,1,5,'2024-10-28 13:52:59'),
(1732,7,4,4,21605.65,NULL,1,5,'2024-10-28 13:52:59'),
(1733,7,4,10,3637.50,NULL,1,5,'2024-10-28 13:52:59'),
(1734,7,4,12,255.00,NULL,1,5,'2024-10-28 13:52:59'),
(1735,7,4,8,2400.00,NULL,1,5,'2024-10-28 13:52:59'),
(1739,7,5,5,162800.00,NULL,1,5,'2024-10-28 13:52:59'),
(1740,7,5,7,14000.00,NULL,1,5,'2024-10-28 13:52:59'),
(1741,7,5,6,56800.00,NULL,1,5,'2024-10-28 13:52:59'),
(1742,7,5,11,8140.00,NULL,1,5,'2024-10-28 13:52:59'),
(1743,7,5,2,3626.10,NULL,1,5,'2024-10-28 13:52:59'),
(1744,7,5,9,1700.00,NULL,1,5,'2024-10-28 13:52:59'),
(1745,7,5,3,2280.00,NULL,1,5,'2024-10-28 13:52:59'),
(1746,7,5,4,60558.40,NULL,1,5,'2024-10-28 13:52:59'),
(1747,7,5,10,12210.00,NULL,1,5,'2024-10-28 13:52:59'),
(1748,7,5,12,255.00,NULL,1,5,'2024-10-28 13:52:59'),
(1749,7,5,8,2400.00,NULL,1,5,'2024-10-28 13:52:59'),
(1754,7,7,5,145200.00,NULL,1,5,'2024-10-28 13:52:59'),
(1755,7,7,6,54100.00,NULL,1,5,'2024-10-28 13:52:59'),
(1756,7,7,14,13880.00,NULL,1,5,'2024-10-28 13:52:59'),
(1757,7,7,2,3197.70,NULL,1,5,'2024-10-28 13:52:59'),
(1758,7,7,9,1700.00,NULL,1,5,'2024-10-28 13:52:59'),
(1759,7,7,4,55653.40,NULL,1,5,'2024-10-28 13:52:59'),
(1760,7,7,3,2280.00,NULL,1,5,'2024-10-28 13:52:59'),
(1761,7,7,12,255.00,NULL,1,5,'2024-10-28 13:52:59'),
(1762,7,7,8,2400.00,NULL,1,5,'2024-10-28 13:52:59'),
(1769,8,2,5,132500.00,NULL,0,NULL,NULL),
(1770,8,2,6,45800.00,NULL,0,NULL,NULL),
(1771,8,2,11,6625.00,NULL,0,NULL,NULL),
(1772,8,2,2,2773.88,NULL,0,NULL,NULL),
(1773,8,2,9,1700.00,NULL,0,NULL,NULL),
(1774,8,2,3,2280.00,NULL,0,NULL,NULL),
(1775,8,2,4,44195.65,NULL,0,NULL,NULL),
(1776,8,2,10,9937.50,NULL,0,NULL,NULL),
(1777,8,2,12,255.00,NULL,0,NULL,NULL),
(1778,8,2,8,2400.00,NULL,0,NULL,NULL),
(1784,8,3,7,14000.00,NULL,0,NULL,NULL),
(1785,8,3,6,56800.00,NULL,0,NULL,NULL),
(1786,8,3,5,148500.00,NULL,0,NULL,NULL),
(1787,8,3,11,7425.00,NULL,0,NULL,NULL),
(1788,8,3,2,3400.88,NULL,0,NULL,NULL),
(1789,8,3,9,1700.00,NULL,0,NULL,NULL),
(1790,8,3,3,2280.00,NULL,0,NULL,NULL),
(1791,8,3,4,11375.65,NULL,0,NULL,NULL),
(1792,8,3,10,11137.50,NULL,0,NULL,NULL),
(1793,8,3,12,255.00,NULL,0,NULL,NULL),
(1794,8,3,8,2400.00,NULL,0,NULL,NULL),
(1799,8,4,5,48500.00,NULL,0,NULL,NULL),
(1800,8,4,6,13200.00,NULL,0,NULL,NULL),
(1801,8,4,7,14000.00,NULL,0,NULL,NULL),
(1802,8,4,14,25200.00,NULL,0,NULL,NULL),
(1803,8,4,11,2425.00,NULL,0,NULL,NULL),
(1804,8,4,2,1549.88,NULL,0,NULL,NULL),
(1805,8,4,9,1700.00,NULL,0,NULL,NULL),
(1806,8,4,3,2280.00,NULL,0,NULL,NULL),
(1807,8,4,4,21605.65,NULL,0,NULL,NULL),
(1808,8,4,10,3637.50,NULL,0,NULL,NULL),
(1809,8,4,12,255.00,NULL,0,NULL,NULL),
(1810,8,4,8,2400.00,NULL,0,NULL,NULL),
(1814,8,5,5,162800.00,NULL,0,NULL,NULL),
(1815,8,5,7,14000.00,NULL,0,NULL,NULL),
(1816,8,5,6,56800.00,NULL,0,NULL,NULL),
(1817,8,5,11,8140.00,NULL,0,NULL,NULL),
(1818,8,5,2,3626.10,NULL,0,NULL,NULL),
(1819,8,5,9,1700.00,NULL,0,NULL,NULL),
(1820,8,5,3,2280.00,NULL,0,NULL,NULL),
(1821,8,5,4,60558.40,NULL,0,NULL,NULL),
(1822,8,5,10,12210.00,NULL,0,NULL,NULL),
(1823,8,5,12,255.00,NULL,0,NULL,NULL),
(1824,8,5,8,2400.00,NULL,0,NULL,NULL),
(1829,8,7,5,145200.00,NULL,0,NULL,NULL),
(1830,8,7,6,54100.00,NULL,0,NULL,NULL),
(1831,8,7,14,13880.00,NULL,0,NULL,NULL),
(1832,8,7,2,3197.70,NULL,0,NULL,NULL),
(1833,8,7,9,1700.00,NULL,0,NULL,NULL),
(1834,8,7,4,55653.40,NULL,0,NULL,NULL),
(1835,8,7,3,2280.00,NULL,0,NULL,NULL),
(1836,8,7,12,255.00,NULL,0,NULL,NULL),
(1837,8,7,8,2400.00,NULL,0,NULL,NULL),
(1838,7,2,5,132500.00,NULL,0,NULL,NULL),
(1839,7,2,6,45800.00,NULL,0,NULL,NULL),
(1840,7,2,11,6625.00,NULL,0,NULL,NULL),
(1841,7,2,2,2773.88,NULL,0,NULL,NULL),
(1842,7,2,9,1700.00,NULL,0,NULL,NULL),
(1843,7,2,3,2280.00,NULL,0,NULL,NULL),
(1844,7,2,4,44195.65,NULL,0,NULL,NULL),
(1845,7,2,10,9937.50,NULL,0,NULL,NULL),
(1846,7,2,12,255.00,NULL,0,NULL,NULL),
(1847,7,2,8,2400.00,NULL,0,NULL,NULL),
(1853,7,3,7,14000.00,NULL,0,NULL,NULL),
(1854,7,3,6,56800.00,NULL,0,NULL,NULL),
(1855,7,3,5,148500.00,NULL,0,NULL,NULL),
(1856,7,3,11,7425.00,NULL,0,NULL,NULL),
(1857,7,3,2,3400.88,NULL,0,NULL,NULL),
(1858,7,3,9,1700.00,NULL,0,NULL,NULL),
(1859,7,3,3,2280.00,NULL,0,NULL,NULL),
(1860,7,3,4,11375.65,NULL,0,NULL,NULL),
(1861,7,3,10,11137.50,NULL,0,NULL,NULL),
(1862,7,3,12,255.00,NULL,0,NULL,NULL),
(1863,7,3,8,2400.00,NULL,0,NULL,NULL),
(1868,7,4,5,48500.00,NULL,0,NULL,NULL),
(1869,7,4,6,13200.00,NULL,0,NULL,NULL),
(1870,7,4,7,14000.00,NULL,0,NULL,NULL),
(1871,7,4,14,25200.00,NULL,0,NULL,NULL),
(1872,7,4,11,2425.00,NULL,0,NULL,NULL),
(1873,7,4,2,1549.88,NULL,0,NULL,NULL),
(1874,7,4,9,1700.00,NULL,0,NULL,NULL),
(1875,7,4,3,2280.00,NULL,0,NULL,NULL),
(1876,7,4,4,21605.65,NULL,0,NULL,NULL),
(1877,7,4,10,3637.50,NULL,0,NULL,NULL),
(1878,7,4,12,255.00,NULL,0,NULL,NULL),
(1879,7,4,8,2400.00,NULL,0,NULL,NULL),
(1883,7,5,5,162800.00,NULL,0,NULL,NULL),
(1884,7,5,7,14000.00,NULL,0,NULL,NULL),
(1885,7,5,6,56800.00,NULL,0,NULL,NULL),
(1886,7,5,11,8140.00,NULL,0,NULL,NULL),
(1887,7,5,2,3626.10,NULL,0,NULL,NULL),
(1888,7,5,9,1700.00,NULL,0,NULL,NULL),
(1889,7,5,3,2280.00,NULL,0,NULL,NULL),
(1890,7,5,4,60558.40,NULL,0,NULL,NULL),
(1891,7,5,10,12210.00,NULL,0,NULL,NULL),
(1892,7,5,12,255.00,NULL,0,NULL,NULL),
(1893,7,5,8,2400.00,NULL,0,NULL,NULL),
(1898,7,7,5,145200.00,NULL,0,NULL,NULL),
(1899,7,7,6,54100.00,NULL,0,NULL,NULL),
(1900,7,7,14,13880.00,NULL,0,NULL,NULL),
(1901,7,7,2,3197.70,NULL,0,NULL,NULL),
(1902,7,7,9,1700.00,NULL,0,NULL,NULL),
(1903,7,7,4,55653.40,NULL,0,NULL,NULL),
(1904,7,7,3,2280.00,NULL,0,NULL,NULL),
(1905,7,7,12,255.00,NULL,0,NULL,NULL),
(1906,7,7,8,2400.00,NULL,0,NULL,NULL),
(1907,9,2,5,132500.00,NULL,0,NULL,NULL),
(1908,9,2,6,45800.00,NULL,0,NULL,NULL),
(1909,9,2,11,6625.00,NULL,0,NULL,NULL),
(1910,9,2,2,2773.88,NULL,0,NULL,NULL),
(1911,9,2,9,1700.00,NULL,0,NULL,NULL),
(1912,9,2,3,2280.00,NULL,0,NULL,NULL),
(1913,9,2,4,44195.65,NULL,0,NULL,NULL),
(1914,9,2,10,9937.50,NULL,0,NULL,NULL),
(1915,9,2,12,255.00,NULL,0,NULL,NULL),
(1916,9,2,8,2400.00,NULL,0,NULL,NULL),
(1922,9,3,7,14000.00,NULL,0,NULL,NULL),
(1923,9,3,6,56800.00,NULL,0,NULL,NULL),
(1924,9,3,5,148500.00,NULL,0,NULL,NULL),
(1925,9,3,11,7425.00,NULL,0,NULL,NULL),
(1926,9,3,2,3400.88,NULL,0,NULL,NULL),
(1927,9,3,9,1700.00,NULL,0,NULL,NULL),
(1928,9,3,3,2280.00,NULL,0,NULL,NULL),
(1929,9,3,4,11375.65,NULL,0,NULL,NULL),
(1930,9,3,10,11137.50,NULL,0,NULL,NULL),
(1931,9,3,12,255.00,NULL,0,NULL,NULL),
(1932,9,3,8,2400.00,NULL,0,NULL,NULL),
(1937,9,4,5,48500.00,NULL,0,NULL,NULL),
(1938,9,4,6,13200.00,NULL,0,NULL,NULL),
(1939,9,4,7,14000.00,NULL,0,NULL,NULL),
(1940,9,4,14,25200.00,NULL,0,NULL,NULL),
(1941,9,4,11,2425.00,NULL,0,NULL,NULL),
(1942,9,4,2,1549.88,NULL,0,NULL,NULL),
(1943,9,4,9,1700.00,NULL,0,NULL,NULL),
(1944,9,4,3,2280.00,NULL,0,NULL,NULL),
(1945,9,4,4,21605.65,NULL,0,NULL,NULL),
(1946,9,4,10,3637.50,NULL,0,NULL,NULL),
(1947,9,4,12,255.00,NULL,0,NULL,NULL),
(1948,9,4,8,2400.00,NULL,0,NULL,NULL),
(1952,9,5,5,162800.00,NULL,0,NULL,NULL),
(1953,9,5,7,14000.00,NULL,0,NULL,NULL),
(1954,9,5,6,56800.00,NULL,0,NULL,NULL),
(1955,9,5,11,8140.00,NULL,0,NULL,NULL),
(1956,9,5,2,3626.10,NULL,0,NULL,NULL),
(1957,9,5,9,1700.00,NULL,0,NULL,NULL),
(1958,9,5,3,2280.00,NULL,0,NULL,NULL),
(1959,9,5,4,60558.40,NULL,0,NULL,NULL),
(1960,9,5,10,12210.00,NULL,0,NULL,NULL),
(1961,9,5,12,255.00,NULL,0,NULL,NULL),
(1962,9,5,8,2400.00,NULL,0,NULL,NULL),
(1967,9,7,5,145200.00,NULL,0,NULL,NULL),
(1968,9,7,6,54100.00,NULL,0,NULL,NULL),
(1969,9,7,14,13880.00,NULL,0,NULL,NULL),
(1970,9,7,2,3197.70,NULL,0,NULL,NULL),
(1971,9,7,9,1700.00,NULL,0,NULL,NULL),
(1972,9,7,4,55653.40,NULL,0,NULL,NULL),
(1973,9,7,3,2280.00,NULL,0,NULL,NULL),
(1974,9,7,12,255.00,NULL,0,NULL,NULL),
(1975,9,7,8,2400.00,NULL,0,NULL,NULL),
(1976,10,2,5,132500.00,NULL,1,5,'2024-12-13 19:03:44'),
(1977,10,2,6,45800.00,NULL,1,5,'2024-12-13 19:03:44'),
(1978,10,2,11,6625.00,NULL,1,5,'2024-12-13 19:03:44'),
(1979,10,2,2,2773.88,NULL,1,5,'2024-12-13 19:03:44'),
(1980,10,2,9,1700.00,NULL,1,5,'2024-12-13 19:03:44'),
(1981,10,2,3,2280.00,NULL,1,5,'2024-12-13 19:03:44'),
(1982,10,2,4,44195.65,NULL,1,5,'2024-12-13 19:03:44'),
(1983,10,2,10,9937.50,NULL,1,5,'2024-12-13 19:03:44'),
(1984,10,2,12,255.00,NULL,1,5,'2024-12-13 19:03:44'),
(1985,10,2,8,2400.00,NULL,1,5,'2024-12-13 19:03:44'),
(1991,10,3,7,14000.00,NULL,1,5,'2024-12-13 19:03:44'),
(1992,10,3,6,56800.00,NULL,1,5,'2024-12-13 19:03:44'),
(1993,10,3,5,148500.00,NULL,1,5,'2024-12-13 19:03:44'),
(1994,10,3,11,7425.00,NULL,1,5,'2024-12-13 19:03:44'),
(1995,10,3,2,3400.88,NULL,1,5,'2024-12-13 19:03:44'),
(1996,10,3,9,1700.00,NULL,1,5,'2024-12-13 19:03:44'),
(1997,10,3,3,2280.00,NULL,1,5,'2024-12-13 19:03:44'),
(1998,10,3,4,11375.65,NULL,1,5,'2024-12-13 19:03:44'),
(1999,10,3,10,11137.50,NULL,1,5,'2024-12-13 19:03:44'),
(2000,10,3,12,255.00,NULL,1,5,'2024-12-13 19:03:44'),
(2001,10,3,8,2400.00,NULL,1,5,'2024-12-13 19:03:44'),
(2006,10,4,5,48500.00,NULL,1,5,'2024-12-13 19:03:44'),
(2007,10,4,6,13200.00,NULL,1,5,'2024-12-13 19:03:44'),
(2008,10,4,7,14000.00,NULL,1,5,'2024-12-13 19:03:44'),
(2009,10,4,14,25200.00,NULL,1,5,'2024-12-13 19:03:44'),
(2010,10,4,11,2425.00,NULL,1,5,'2024-12-13 19:03:44'),
(2011,10,4,2,1549.88,NULL,1,5,'2024-12-13 19:03:44'),
(2012,10,4,9,1700.00,NULL,1,5,'2024-12-13 19:03:44'),
(2013,10,4,3,2280.00,NULL,1,5,'2024-12-13 19:03:44'),
(2014,10,4,4,21605.65,NULL,1,5,'2024-12-13 19:03:44'),
(2015,10,4,10,3637.50,NULL,1,5,'2024-12-13 19:03:44'),
(2016,10,4,12,255.00,NULL,1,5,'2024-12-13 19:03:44'),
(2017,10,4,8,2400.00,NULL,1,5,'2024-12-13 19:03:44'),
(2021,10,5,5,162800.00,NULL,1,5,'2024-12-13 19:03:44'),
(2022,10,5,7,14000.00,NULL,1,5,'2024-12-13 19:03:44'),
(2023,10,5,6,56800.00,NULL,1,5,'2024-12-13 19:03:44'),
(2024,10,5,11,8140.00,NULL,1,5,'2024-12-13 19:03:44'),
(2025,10,5,2,3626.10,NULL,1,5,'2024-12-13 19:03:44'),
(2026,10,5,9,1700.00,NULL,1,5,'2024-12-13 19:03:44'),
(2027,10,5,3,2280.00,NULL,1,5,'2024-12-13 19:03:44'),
(2028,10,5,4,60558.40,NULL,1,5,'2024-12-13 19:03:44'),
(2029,10,5,10,12210.00,NULL,1,5,'2024-12-13 19:03:44'),
(2030,10,5,12,255.00,NULL,1,5,'2024-12-13 19:03:44'),
(2031,10,5,8,2400.00,NULL,1,5,'2024-12-13 19:03:44'),
(2036,10,7,5,145200.00,NULL,1,5,'2024-12-13 19:03:44'),
(2037,10,7,6,54100.00,NULL,1,5,'2024-12-13 19:03:44'),
(2038,10,7,14,13880.00,NULL,1,5,'2024-12-13 19:03:44'),
(2039,10,7,2,3197.70,NULL,1,5,'2024-12-13 19:03:44'),
(2040,10,7,9,1700.00,NULL,1,5,'2024-12-13 19:03:44'),
(2041,10,7,4,55653.40,NULL,1,5,'2024-12-13 19:03:44'),
(2042,10,7,3,2280.00,NULL,1,5,'2024-12-13 19:03:44'),
(2043,10,7,12,255.00,NULL,1,5,'2024-12-13 19:03:44'),
(2044,10,7,8,2400.00,NULL,1,5,'2024-12-13 19:03:44'),
(2051,10,2,5,132500.00,NULL,0,NULL,NULL),
(2052,10,2,6,45800.00,NULL,0,NULL,NULL),
(2053,10,2,11,6625.00,NULL,0,NULL,NULL),
(2054,10,2,2,2773.88,NULL,0,NULL,NULL),
(2055,10,2,9,1700.00,NULL,0,NULL,NULL),
(2056,10,2,3,2280.00,NULL,0,NULL,NULL),
(2057,10,2,4,44195.65,NULL,0,NULL,NULL),
(2058,10,2,10,9937.50,NULL,0,NULL,NULL),
(2059,10,2,12,255.00,NULL,0,NULL,NULL),
(2060,10,2,8,2400.00,NULL,0,NULL,NULL),
(2066,10,3,7,14000.00,NULL,0,NULL,NULL),
(2067,10,3,6,56800.00,NULL,0,NULL,NULL),
(2068,10,3,5,148500.00,NULL,0,NULL,NULL),
(2069,10,3,11,7425.00,NULL,0,NULL,NULL),
(2070,10,3,2,3400.88,NULL,0,NULL,NULL),
(2071,10,3,9,1700.00,NULL,0,NULL,NULL),
(2072,10,3,3,2280.00,NULL,0,NULL,NULL),
(2073,10,3,4,11375.65,NULL,0,NULL,NULL),
(2074,10,3,10,11137.50,NULL,0,NULL,NULL),
(2075,10,3,12,255.00,NULL,0,NULL,NULL),
(2076,10,3,8,2400.00,NULL,0,NULL,NULL),
(2081,10,4,5,48500.00,NULL,0,NULL,NULL),
(2082,10,4,6,13200.00,NULL,0,NULL,NULL),
(2083,10,4,7,14000.00,NULL,0,NULL,NULL),
(2084,10,4,14,25200.00,NULL,0,NULL,NULL),
(2085,10,4,11,2425.00,NULL,0,NULL,NULL),
(2086,10,4,2,1549.88,NULL,0,NULL,NULL),
(2087,10,4,9,1700.00,NULL,0,NULL,NULL),
(2088,10,4,3,2280.00,NULL,0,NULL,NULL),
(2089,10,4,4,21605.65,NULL,0,NULL,NULL),
(2090,10,4,10,3637.50,NULL,0,NULL,NULL),
(2091,10,4,12,255.00,NULL,0,NULL,NULL),
(2092,10,4,8,2400.00,NULL,0,NULL,NULL),
(2096,10,5,5,162800.00,NULL,0,NULL,NULL),
(2097,10,5,7,14000.00,NULL,0,NULL,NULL),
(2098,10,5,6,56800.00,NULL,0,NULL,NULL),
(2099,10,5,11,8140.00,NULL,0,NULL,NULL),
(2100,10,5,2,3626.10,NULL,0,NULL,NULL),
(2101,10,5,9,1700.00,NULL,0,NULL,NULL),
(2102,10,5,3,2280.00,NULL,0,NULL,NULL),
(2103,10,5,4,60558.40,NULL,0,NULL,NULL),
(2104,10,5,10,12210.00,NULL,0,NULL,NULL),
(2105,10,5,12,255.00,NULL,0,NULL,NULL),
(2106,10,5,8,2400.00,NULL,0,NULL,NULL),
(2111,10,7,5,145200.00,NULL,0,NULL,NULL),
(2112,10,7,6,54100.00,NULL,0,NULL,NULL),
(2113,10,7,14,13880.00,NULL,0,NULL,NULL),
(2114,10,7,2,3197.70,NULL,0,NULL,NULL),
(2115,10,7,9,1700.00,NULL,0,NULL,NULL),
(2116,10,7,4,55653.40,NULL,0,NULL,NULL),
(2117,10,7,3,2280.00,NULL,0,NULL,NULL),
(2118,10,7,12,255.00,NULL,0,NULL,NULL),
(2119,10,7,8,2400.00,NULL,0,NULL,NULL);

/*Table structure for table `peoplecategories` */

DROP TABLE IF EXISTS `peoplecategories`;

CREATE TABLE `peoplecategories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `peoplecategories` */

insert  into `peoplecategories`(`categoryid`,`categoryname`) values 
(1,'Individual'),
(2,'Corporate');

/*Table structure for table `publicholidays` */

DROP TABLE IF EXISTS `publicholidays`;

CREATE TABLE `publicholidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `holidayname` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `repeatsannually` tinyint(1) DEFAULT NULL,
  `skipweekends` tinyint(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `publicholidays` */

insert  into `publicholidays`(`id`,`holidayname`,`date`,`repeatsannually`,`skipweekends`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(1,'New Mashujaa Day','2024-10-10',1,1,'2024-06-04 19:24:26',5,1,'2024-06-04 19:44:08',5),
(2,'Jamuhuri Day','2024-12-12',1,1,'2024-06-04 19:38:28',5,0,NULL,NULL),
(3,'Christmas Day','2024-12-25',1,0,'2024-06-04 19:47:57',5,0,NULL,NULL),
(4,'Boxing Day','2024-12-26',1,1,'2024-06-04 19:48:12',5,0,NULL,NULL),
(5,'New Years Day','2025-01-01',1,1,'2024-06-04 19:48:30',5,0,NULL,NULL);

/*Table structure for table `registrationdocuments` */

DROP TABLE IF EXISTS `registrationdocuments`;

CREATE TABLE `registrationdocuments` (
  `documentid` int(11) NOT NULL AUTO_INCREMENT,
  `documenttypename` varchar(100) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `expires` tinyint(1) DEFAULT 0,
  `addedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`documentid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `registrationdocuments` */

insert  into `registrationdocuments`(`documentid`,`documenttypename`,`dateadded`,`deleted`,`expires`,`addedby`,`datedeleted`,`deletedby`) values 
(1,'National ID',NULL,0,0,NULL,NULL,NULL),
(2,'Passport',NULL,0,1,NULL,NULL,NULL),
(3,'Allien Card',NULL,0,1,NULL,NULL,NULL),
(4,'Drivers Licence',NULL,0,1,NULL,NULL,NULL);

/*Table structure for table `relationships` */

DROP TABLE IF EXISTS `relationships`;

CREATE TABLE `relationships` (
  `relationshipid` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`relationshipid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `relationships` */

insert  into `relationships`(`relationshipid`,`description`) values 
(1,'Spouse'),
(2,'Parent'),
(3,'Sibling'),
(4,'Son'),
(5,'Daughter'),
(6,'Caregiver'),
(7,'Other');

/*Table structure for table `religions` */

DROP TABLE IF EXISTS `religions`;

CREATE TABLE `religions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `religionname` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `religions` */

insert  into `religions`(`id`,`religionname`,`deleted`) values 
(1,'Christian',0),
(2,'Muslim',0),
(3,'Islam',0),
(4,'Budhist',0),
(5,'Hindu',0);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) DEFAULT NULL,
  `roledescription` varchar(50) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `lastdatemodified` datetime DEFAULT NULL,
  `lastmodifiedby` int(11) DEFAULT NULL,
  `institutionid` int(11) DEFAULT NULL,
  PRIMARY KEY (`roleid`),
  KEY `addedby` (`addedby`),
  KEY `lastmodifiedby` (`lastmodifiedby`),
  KEY `institutionid` (`institutionid`),
  CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`addedby`) REFERENCES `user` (`userid`),
  CONSTRAINT `roles_ibfk_2` FOREIGN KEY (`lastmodifiedby`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `roles` */

insert  into `roles`(`roleid`,`rolename`,`roledescription`,`deleted`,`addedby`,`dateadded`,`lastdatemodified`,`lastmodifiedby`,`institutionid`) values 
(1,'Backup administrators','Backup administrators','\0',5,'2019-09-06 12:11:18',NULL,NULL,NULL),
(2,'Configuration Manager','Configuration Manager','\0',5,'2019-09-06 12:22:41',NULL,NULL,NULL),
(3,'Cashiers','Cashiers','\0',5,'2019-09-06 12:48:02','2021-10-19 18:39:51',8,NULL),
(4,'Field Engineers','Field Engineers','\0',5,'2019-09-06 12:50:43',NULL,NULL,NULL),
(5,'Data Entry Clerk','Data Entry Clerk','\0',5,'2019-09-06 12:51:29','2021-10-19 18:38:54',8,NULL),
(6,'Project Manager','Project Manager','\0',5,'2019-09-06 12:52:06',NULL,NULL,NULL),
(7,'Approval Officer','Approval Officer','\0',5,'2019-09-06 12:52:43','2019-09-07 18:46:33',5,NULL),
(8,'Test Role','Testing','\0',5,'2021-02-02 15:51:00',NULL,NULL,NULL);

/*Table structure for table `roleusers` */

DROP TABLE IF EXISTS `roleusers`;

CREATE TABLE `roleusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleid` (`roleid`),
  KEY `userid` (`userid`),
  KEY `addedby` (`addedby`),
  KEY `deletedby` (`deletedby`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `roleusers` */

insert  into `roleusers`(`id`,`roleid`,`userid`,`dateadded`,`addedby`,`deleted`,`deletedby`) values 
(1,7,2,'2019-09-07 16:46:46',1,'',1),
(2,1,2,'2019-09-07 16:46:46',1,'',1),
(3,3,2,'2019-09-07 16:49:12',1,'',1),
(4,2,2,'2019-09-07 17:01:44',1,'',1),
(5,5,2,'2019-09-07 17:01:44',1,'',1),
(6,4,2,'2019-09-07 23:47:44',1,'',1),
(7,6,2,'2019-09-07 23:47:44',1,'',1),
(8,5,4,'2019-09-10 08:56:06',1,NULL,NULL),
(9,5,3,'2019-09-10 10:18:11',1,'',1),
(10,7,3,'2019-09-18 14:47:33',1,NULL,NULL),
(11,1,3,'2019-09-18 14:47:33',1,NULL,NULL),
(12,3,3,'2019-09-18 14:47:33',1,NULL,NULL),
(13,3,5,'2019-12-10 17:17:15',1,NULL,NULL),
(14,5,5,'2019-12-10 17:17:15',1,NULL,NULL);

/*Table structure for table `salutations` */

DROP TABLE IF EXISTS `salutations`;

CREATE TABLE `salutations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salutation` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `salutations` */

insert  into `salutations`(`id`,`salutation`,`deleted`) values 
(1,'Mr',0),
(2,'Mrs',0),
(3,'Dr',0),
(4,'Prof',0),
(5,'Miss',0),
(6,'Eng',0),
(7,'Pst',0),
(8,'Fr',0);

/*Table structure for table `shiftdetails` */

DROP TABLE IF EXISTS `shiftdetails`;

CREATE TABLE `shiftdetails` (
  `shiftdetailid` int(11) NOT NULL AUTO_INCREMENT,
  `shiftid` int(11) DEFAULT NULL,
  `dayofweek` varchar(50) DEFAULT NULL,
  `starts` time DEFAULT NULL,
  `ends` time DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `break` float DEFAULT NULL,
  PRIMARY KEY (`shiftdetailid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `shiftdetails` */

insert  into `shiftdetails`(`shiftdetailid`,`shiftid`,`dayofweek`,`starts`,`ends`,`status`,`break`) values 
(4,7,'Monday','08:00:00','17:00:00','workingday',30),
(5,7,'Tuesday','08:00:00','17:00:00','workingday',30),
(6,7,'Wednesday','08:00:00','17:00:00','workingday',30),
(7,7,'Thursday','08:00:00','17:00:00','workingday',30),
(8,7,'Friday','08:00:00','17:00:00','workingday',30),
(9,7,'Saturday','08:00:00','17:00:00','workingday',30),
(10,7,'Sunday','08:00:00','17:00:00','workingday',30),
(11,8,'Monday','08:00:00','17:00:00','workingday',30),
(12,9,'Monday','08:00:00','17:00:00','workingday',30),
(13,9,'Tuesday','08:00:00','17:00:00','workingday',30),
(14,9,'Wednesday','08:00:00','17:00:00','workingday',30),
(15,9,'Thursday','08:00:00','17:00:00','workingday',30),
(16,9,'Friday','08:00:00','17:00:00','workingday',30),
(17,9,'Saturday','08:00:00','17:00:00','workingday',30),
(18,9,'Sunday','08:00:00','17:00:00','offday',30);

/*Table structure for table `shiftmaster` */

DROP TABLE IF EXISTS `shiftmaster`;

CREATE TABLE `shiftmaster` (
  `shiftid` int(11) NOT NULL AUTO_INCREMENT,
  `shiftname` varchar(50) DEFAULT NULL,
  `shifttype` varchar(50) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`shiftid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `shiftmaster` */

insert  into `shiftmaster`(`shiftid`,`shiftname`,`shifttype`,`dateadded`,`addedby`,`deleted`,`datedeleted`,`deletedby`) values 
(7,'Day Shift','day','2024-12-29 14:08:53',5,0,NULL,NULL),
(9,'Night Shift','night','2024-12-29 14:18:26',5,0,NULL,NULL);

/*Table structure for table `staffshifts` */

DROP TABLE IF EXISTS `staffshifts`;

CREATE TABLE `staffshifts` (
  `staffshiftid` int(11) NOT NULL AUTO_INCREMENT,
  `employeeid` int(11) DEFAULT NULL,
  `shiftid` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `deletedreason` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`staffshiftid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `staffshifts` */

/*Table structure for table `templates` */

DROP TABLE IF EXISTS `templates`;

CREATE TABLE `templates` (
  `templateid` int(11) NOT NULL AUTO_INCREMENT,
  `templatename` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`templateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `templates` */

/*Table structure for table `templleaveallowableallocation` */

DROP TABLE IF EXISTS `templleaveallowableallocation`;

CREATE TABLE `templleaveallowableallocation` (
  `refno` varchar(50) DEFAULT NULL,
  `allocation` int(11) DEFAULT NULL,
  `percentagepayable` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `templleaveallowableallocation` */

insert  into `templleaveallowableallocation`(`refno`,`allocation`,`percentagepayable`) values 
('2ca6b29e8d6a8c98bb36',30,3.00),
('2ca6b29e8d6a8c98bb36',15,1.00),
('ad04c4a54cbb68683df0',30,3.00),
('ad04c4a54cbb68683df0',15,1.00),
('72fe73aa3ee608b1262d',30,9.99),
('72fe73aa3ee608b1262d',15,9.99);

/*Table structure for table `templleaveapprovallevel` */

DROP TABLE IF EXISTS `templleaveapprovallevel`;

CREATE TABLE `templleaveapprovallevel` (
  `refno` varchar(50) DEFAULT NULL,
  `approvallevel` varchar(50) DEFAULT NULL,
  `escallationduration` int(11) DEFAULT NULL,
  `colourcode` varchar(50) DEFAULT NULL,
  `hierarchy` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datededleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL,
  `reasondeleted` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `templleaveapprovallevel` */

insert  into `templleaveapprovallevel`(`refno`,`approvallevel`,`escallationduration`,`colourcode`,`hierarchy`,`deleted`,`datededleted`,`deletedby`,`reasondeleted`) values 
('b9548737ccab02db57a1','supervisor',120,'#f91010',1,0,NULL,NULL,NULL),
('b9548737ccab02db57a1','hrmanager',120,'#1c19e1',2,0,NULL,NULL,NULL),
('b9548737ccab02db57a1','topmanagement',120,'#40981b',3,0,NULL,NULL,NULL);

/*Table structure for table `temppayrollitembracket` */

DROP TABLE IF EXISTS `temppayrollitembracket`;

CREATE TABLE `temppayrollitembracket` (
  `refno` varchar(50) DEFAULT NULL,
  `lowerbracket` decimal(18,2) DEFAULT NULL,
  `upperbracket` decimal(18,2) DEFAULT NULL,
  `value` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `temppayrollitembracket` */

insert  into `temppayrollitembracket`(`refno`,`lowerbracket`,`upperbracket`,`value`) values 
('c0a3db8609fe916eb0a3',38000.00,1.00,6.00),
('6cdb552dcde87946fc70',38000.00,1.00,6.00),
('bdd0688638b987a19c01',38000.00,1.00,6.00),
('0b6310749632443a4512',38000.00,1.00,6.00),
('d37ea99aef3ac95f3d47',38000.00,1.00,6.00),
('2c70cac381a05b447fa6',50000000.00,1.00,6.00);

/*Table structure for table `temppayslipinfo` */

DROP TABLE IF EXISTS `temppayslipinfo`;

CREATE TABLE `temppayslipinfo` (
  `refno` varchar(50) DEFAULT NULL,
  `payrollitemid` int(11) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `temppayslipinfo` */

insert  into `temppayslipinfo`(`refno`,`payrollitemid`,`amount`) values 
('99ed424c7dcb840b33127a9a3c90490e5677781f',5,132500.00),
('99ed424c7dcb840b33127a9a3c90490e5677781f',6,45800.00),
('99ed424c7dcb840b33127a9a3c90490e5677781f',11,6625.00),
('99ed424c7dcb840b33127a9a3c90490e5677781f',2,2773.88),
('99ed424c7dcb840b33127a9a3c90490e5677781f',9,1700.00),
('99ed424c7dcb840b33127a9a3c90490e5677781f',3,2280.00),
('99ed424c7dcb840b33127a9a3c90490e5677781f',4,55477.50),
('99ed424c7dcb840b33127a9a3c90490e5677781f',10,9937.50),
('582cdda0e002d4257ff184e345964a935c4e743d',5,132500.00),
('582cdda0e002d4257ff184e345964a935c4e743d',6,45800.00),
('582cdda0e002d4257ff184e345964a935c4e743d',11,6625.00),
('582cdda0e002d4257ff184e345964a935c4e743d',2,2773.88),
('582cdda0e002d4257ff184e345964a935c4e743d',9,1700.00),
('582cdda0e002d4257ff184e345964a935c4e743d',3,2280.00),
('582cdda0e002d4257ff184e345964a935c4e743d',4,55477.50),
('582cdda0e002d4257ff184e345964a935c4e743d',10,9937.50),
('7a62ec3c4ee61bece5bc9ea5dfc1c489df74e9f2',5,132500.00),
('7a62ec3c4ee61bece5bc9ea5dfc1c489df74e9f2',6,45800.00),
('7a62ec3c4ee61bece5bc9ea5dfc1c489df74e9f2',11,6625.00),
('7a62ec3c4ee61bece5bc9ea5dfc1c489df74e9f2',2,2773.88),
('7a62ec3c4ee61bece5bc9ea5dfc1c489df74e9f2',9,1700.00),
('7a62ec3c4ee61bece5bc9ea5dfc1c489df74e9f2',3,2280.00),
('7a62ec3c4ee61bece5bc9ea5dfc1c489df74e9f2',4,55477.50),
('7a62ec3c4ee61bece5bc9ea5dfc1c489df74e9f2',10,9937.50),
('0a1c0a588563367786e7a68aee400d4f73dfa846',5,132500.00),
('0a1c0a588563367786e7a68aee400d4f73dfa846',6,45800.00),
('0a1c0a588563367786e7a68aee400d4f73dfa846',11,6625.00),
('0a1c0a588563367786e7a68aee400d4f73dfa846',2,2773.88),
('0a1c0a588563367786e7a68aee400d4f73dfa846',9,1700.00),
('0a1c0a588563367786e7a68aee400d4f73dfa846',3,2280.00),
('0a1c0a588563367786e7a68aee400d4f73dfa846',4,55477.50),
('0a1c0a588563367786e7a68aee400d4f73dfa846',10,9937.50);

/*Table structure for table `tempprivilege` */

DROP TABLE IF EXISTS `tempprivilege`;

CREATE TABLE `tempprivilege` (
  `refno` varchar(50) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `objectid` int(11) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `tempprivilege` */

/*Table structure for table `tempstaffshifts` */

DROP TABLE IF EXISTS `tempstaffshifts`;

CREATE TABLE `tempstaffshifts` (
  `refno` varchar(50) DEFAULT NULL,
  `employeeid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tempstaffshifts` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `accountexpires` tinyint(1) DEFAULT 0,
  `accountexpirydate` datetime DEFAULT NULL,
  `changepasswordonlogon` tinyint(1) DEFAULT 0,
  `accountactive` tinyint(1) DEFAULT 1,
  `reasoninactive` varchar(200) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `lastmodifiedon` datetime DEFAULT NULL,
  `lastmodifiedby` int(11) DEFAULT NULL,
  `systemadmin` tinyint(1) DEFAULT 0,
  `profilephoto` varchar(1000) DEFAULT NULL,
  `institutionid` int(11) DEFAULT NULL,
  `salt` varchar(50) DEFAULT NULL,
  `systemlabel` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT 'system',
  `emailactivationcode` varchar(50) DEFAULT NULL,
  `phoneactivationcode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userid`,`email`),
  KEY `institutionid` (`institutionid`),
  KEY `addedby` (`addedby`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`addedby`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `user` */

insert  into `user`(`userid`,`username`,`firstname`,`middlename`,`lastname`,`email`,`mobile`,`password`,`accountexpires`,`accountexpirydate`,`changepasswordonlogon`,`accountactive`,`reasoninactive`,`dateadded`,`addedby`,`lastmodifiedon`,`lastmodifiedby`,`systemadmin`,`profilephoto`,`institutionid`,`salt`,`systemlabel`,`category`,`emailactivationcode`,`phoneactivationcode`) values 
(5,'admin','System','Administrator','','akellorich@gmail.com','254780480253','7b885174f1eb08747da64cf6a8f4f4425c4ed41bd480c27dc571dd7d113e9d95',0,'0000-00-00 00:00:00',0,1,'Account deleted',NULL,NULL,'2023-04-18 14:16:46',5,1,NULL,NULL,'067bd2e06b5244ff340ed31def78bc',NULL,'system',NULL,NULL),
(8,'Member','Sacco','Member','(Self)','obwakam@yahoo.com','254780480253','2627c1667de25285f721f12fb6aebf26',NULL,NULL,0,1,NULL,'2020-01-09 17:43:10',5,'2021-01-23 18:21:58',5,1,NULL,NULL,NULL,NULL,'system',NULL,NULL),
(8,'Self','Sacco','Member','','obwakam@ymail.com','254780480253','1c986a5f526fda89666cdb2a9547a436',NULL,NULL,0,1,NULL,'2020-01-09 17:43:10',5,'2023-03-22 22:43:26',5,1,NULL,NULL,'d41d8cd98f00b204e9800998ecf8427e',NULL,'system',NULL,NULL),
(25,'SYSTEM','Inbuilt','System','Account','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'INBUILT SYSTEM ACCOUNT','system',NULL,NULL),
(38,'NT0002','Patrice','Lumumba','Emery','akellorich@gmail.com','0727709772','7b885174f1eb08747da64cf6a8f4f4425c4ed41bd480c27dc571dd7d113e9d95',0,NULL,0,1,NULL,'2024-09-04 11:42:22',25,NULL,NULL,0,NULL,NULL,'067bd2e06b5244ff340ed31def78bc',NULL,'employee','35efd','5f339'),
(39,'NT0001','Richard','Onyango','Akelo','akellorich@gmail.com','0727709772','ea75a17b7f34e26b4731a41931955c628562511119eb755305662cf943233787',0,NULL,0,1,NULL,'2024-10-07 21:07:57',25,NULL,NULL,0,NULL,NULL,'ec11f3bf13c4cb7877ab3cad8fc402',NULL,'employee','4f475','e05b7'),
(40,'AC0004','Daniel','Middle','Boy','cthis999@gmail.com','0725162888','558a5fdf256daeebc4982fb051a16827e57395d9bcbe10012a13f7c611d4b00b',0,NULL,0,1,NULL,'2024-10-16 14:22:01',25,NULL,NULL,0,NULL,NULL,'f7e7401d1c2b319ed76b94b2df4b48',NULL,'employee','7993c','b8195'),
(41,'AC0003','Sam','Mosabi','Mungeli','sommosabi2@gmail.com','0725162889','c826f944e5277fcaea442faee83b3157b85f63d4c5966d58f27e031a13c8f4ba',0,NULL,0,1,NULL,'2024-11-04 13:03:39',25,NULL,NULL,0,NULL,NULL,'51d9940b9bd59052eb506f0a60bdae',NULL,'employee','f20dc','d1e6b');

/*Table structure for table `userprivileges` */

DROP TABLE IF EXISTS `userprivileges`;

CREATE TABLE `userprivileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `allowed` tinyint(1) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL,
  `lastdateupdated` datetime DEFAULT NULL,
  `lastupdatedby` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1914 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `userprivileges` */

insert  into `userprivileges`(`id`,`objectid`,`userid`,`allowed`,`dateadded`,`addedby`,`lastdateupdated`,`lastupdatedby`) values 
(145,20,10,1,NULL,5,'2020-02-26 16:59:00',5),
(146,30,10,1,NULL,5,'2020-02-26 16:59:00',5),
(147,8,10,1,NULL,5,'2020-02-26 16:59:00',5),
(148,11,10,1,NULL,5,'2020-02-26 16:59:00',5),
(149,37,10,1,NULL,5,'2020-02-26 16:59:00',5),
(150,9,10,1,NULL,5,'2020-02-26 16:59:00',5),
(151,27,10,1,NULL,5,'2020-02-26 16:59:00',5),
(152,28,10,1,NULL,5,'2020-02-26 16:59:00',5),
(153,2,10,1,NULL,5,'2020-02-26 16:59:00',5),
(154,29,10,1,NULL,5,'2020-02-26 16:59:00',5),
(155,15,10,1,NULL,5,'2020-02-26 16:59:00',5),
(156,17,10,1,NULL,5,'2020-02-26 16:59:00',5),
(157,19,10,1,NULL,5,'2020-02-26 16:59:00',5),
(158,4,10,1,NULL,5,'2020-02-26 16:59:00',5),
(159,6,10,1,NULL,5,'2020-02-26 16:59:00',5),
(160,12,10,1,NULL,5,'2020-02-26 16:59:00',5),
(161,13,10,1,NULL,5,'2020-02-26 16:59:00',5),
(162,33,10,1,NULL,5,'2020-02-26 16:59:00',5),
(163,32,10,1,NULL,5,'2020-02-26 16:59:00',5),
(164,36,10,1,NULL,5,'2020-02-26 16:59:00',5),
(165,1,10,1,NULL,5,'2020-02-26 16:59:00',5),
(166,22,10,1,NULL,5,'2020-02-26 16:59:00',5),
(167,31,10,1,NULL,5,'2020-02-26 16:59:00',5),
(168,10,10,1,NULL,5,'2020-02-26 16:59:00',5),
(169,14,10,1,NULL,5,'2020-02-26 16:59:00',5),
(170,21,10,1,NULL,5,'2020-02-26 16:59:00',5),
(171,25,10,1,NULL,5,'2020-02-26 16:59:00',5),
(172,16,10,1,NULL,5,'2020-02-26 16:59:00',5),
(173,18,10,1,NULL,5,'2020-02-26 16:59:00',5),
(174,23,10,1,NULL,5,'2020-02-26 16:59:00',5),
(175,35,10,1,NULL,5,'2020-02-26 16:59:00',5),
(176,24,10,1,NULL,5,'2020-02-26 16:59:00',5),
(177,7,10,1,NULL,5,'2020-02-26 16:59:00',5),
(178,26,10,1,NULL,5,'2020-02-26 16:59:00',5),
(179,3,10,1,NULL,5,'2020-02-26 16:59:00',5),
(180,34,10,1,NULL,5,'2020-02-26 16:59:00',5),
(181,5,10,1,NULL,5,'2020-02-26 16:59:00',5),
(447,40,6,1,NULL,5,'2021-01-20 12:15:03',5),
(448,20,6,1,NULL,5,'2021-01-20 12:15:03',5),
(449,30,6,1,NULL,5,'2021-01-20 12:15:03',5),
(450,8,6,1,NULL,5,'2021-01-20 12:15:03',5),
(451,42,6,1,NULL,5,'2021-01-20 12:15:03',5),
(452,43,6,1,NULL,5,'2021-01-20 12:15:03',5),
(453,11,6,1,NULL,5,'2021-01-20 12:15:03',5),
(454,37,6,1,NULL,5,'2021-01-20 12:15:03',5),
(455,9,6,1,NULL,5,'2021-01-20 12:15:03',5),
(456,27,6,1,NULL,5,'2021-01-20 12:15:03',5),
(457,28,6,1,NULL,5,'2021-01-20 12:15:03',5),
(458,39,6,1,NULL,5,'2021-01-20 12:15:03',5),
(459,2,6,1,NULL,5,'2021-01-20 12:15:03',5),
(460,29,6,1,NULL,5,'2021-01-20 12:15:03',5),
(461,38,6,1,NULL,5,'2021-01-20 12:15:03',5),
(462,15,6,1,NULL,5,'2021-01-20 12:15:03',5),
(463,17,6,1,NULL,5,'2021-01-20 12:15:03',5),
(464,19,6,1,NULL,5,'2021-01-20 12:15:03',5),
(465,4,6,1,NULL,5,'2021-01-20 12:15:03',5),
(466,6,6,1,NULL,5,'2021-01-20 12:15:03',5),
(467,12,6,1,NULL,5,'2021-01-20 12:15:03',5),
(468,41,6,1,NULL,5,'2021-01-20 12:15:03',5),
(469,13,6,1,NULL,5,'2021-01-20 12:15:03',5),
(470,33,6,1,NULL,5,'2021-01-20 12:15:03',5),
(471,32,6,1,NULL,5,'2021-01-20 12:15:03',5),
(472,36,6,1,NULL,5,'2021-01-20 12:15:03',5),
(473,1,6,1,NULL,5,'2021-01-20 12:15:03',5),
(474,22,6,1,NULL,5,'2021-01-20 12:15:03',5),
(475,31,6,1,NULL,5,'2021-01-20 12:15:03',5),
(476,10,6,1,NULL,5,'2021-01-20 12:15:03',5),
(477,14,6,1,NULL,5,'2021-01-20 12:15:03',5),
(478,21,6,1,NULL,5,'2021-01-20 12:15:03',5),
(479,25,6,1,NULL,5,'2021-01-20 12:15:03',5),
(480,16,6,1,NULL,5,'2021-01-20 12:15:03',5),
(481,18,6,1,NULL,5,'2021-01-20 12:15:03',5),
(482,23,6,1,NULL,5,'2021-01-20 12:15:03',5),
(483,35,6,1,NULL,5,'2021-01-20 12:15:03',5),
(484,24,6,1,NULL,5,'2021-01-20 12:15:03',5),
(485,7,6,1,NULL,5,'2021-01-20 12:15:03',5),
(486,26,6,1,NULL,5,'2021-01-20 12:15:03',5),
(487,3,6,1,NULL,5,'2021-01-20 12:15:03',5),
(488,34,6,1,NULL,5,'2021-01-20 12:15:03',5),
(489,5,6,1,NULL,5,'2021-01-20 12:15:03',5),
(573,40,8,1,NULL,5,'2021-01-23 18:21:59',5),
(574,20,8,1,NULL,5,'2021-01-23 18:21:59',5),
(575,30,8,1,NULL,5,'2021-01-23 18:21:59',5),
(576,8,8,1,NULL,5,'2021-01-23 18:21:59',5),
(577,42,8,1,NULL,5,'2021-01-23 18:21:59',5),
(578,43,8,1,NULL,5,'2021-01-23 18:21:59',5),
(579,11,8,1,NULL,5,'2021-01-23 18:21:59',5),
(580,37,8,1,NULL,5,'2021-01-23 18:21:59',5),
(581,9,8,1,NULL,5,'2021-01-23 18:21:59',5),
(582,27,8,1,NULL,5,'2021-01-23 18:21:59',5),
(583,28,8,1,NULL,5,'2021-01-23 18:21:59',5),
(584,39,8,1,NULL,5,'2021-01-23 18:21:59',5),
(585,2,8,1,NULL,5,'2021-01-23 18:21:59',5),
(586,29,8,1,NULL,5,'2021-01-23 18:21:59',5),
(587,38,8,1,NULL,5,'2021-01-23 18:21:59',5),
(588,15,8,1,NULL,5,'2021-01-23 18:21:59',5),
(589,17,8,1,NULL,5,'2021-01-23 18:21:59',5),
(590,19,8,1,NULL,5,'2021-01-23 18:21:59',5),
(591,4,8,1,NULL,5,'2021-01-23 18:21:59',5),
(592,6,8,1,NULL,5,'2021-01-23 18:21:59',5),
(593,12,8,1,NULL,5,'2021-01-23 18:21:59',5),
(594,41,8,1,NULL,5,'2021-01-23 18:21:59',5),
(595,13,8,1,NULL,5,'2021-01-23 18:21:59',5),
(596,33,8,1,NULL,5,'2021-01-23 18:21:59',5),
(597,32,8,1,NULL,5,'2021-01-23 18:21:59',5),
(598,36,8,1,NULL,5,'2021-01-23 18:21:59',5),
(599,1,8,1,NULL,5,'2021-01-23 18:21:59',5),
(600,22,8,1,NULL,5,'2021-01-23 18:21:59',5),
(601,31,8,1,NULL,5,'2021-01-23 18:21:59',5),
(602,10,8,1,NULL,5,'2021-01-23 18:21:59',5),
(603,14,8,1,NULL,5,'2021-01-23 18:21:59',5),
(604,21,8,1,NULL,5,'2021-01-23 18:21:59',5),
(605,25,8,1,NULL,5,'2021-01-23 18:21:59',5),
(606,16,8,1,NULL,5,'2021-01-23 18:21:59',5),
(607,18,8,1,NULL,5,'2021-01-23 18:21:59',5),
(608,23,8,1,NULL,5,'2021-01-23 18:21:59',5),
(609,35,8,1,NULL,5,'2021-01-23 18:21:59',5),
(610,24,8,1,NULL,5,'2021-01-23 18:21:59',5),
(611,7,8,1,NULL,5,'2021-01-23 18:21:59',5),
(612,26,8,1,NULL,5,'2021-01-23 18:21:59',5),
(613,3,8,1,NULL,5,'2021-01-23 18:21:59',5),
(614,34,8,1,NULL,5,'2021-01-23 18:21:59',5),
(615,5,8,1,NULL,5,'2021-01-23 18:21:59',5),
(990,40,9,1,NULL,8,'2021-09-03 06:48:25',8),
(991,20,9,1,NULL,8,'2021-09-03 06:48:25',8),
(992,30,9,1,NULL,8,'2021-09-03 06:48:25',8),
(993,42,9,1,NULL,8,'2021-09-03 06:48:25',8),
(994,43,9,1,NULL,8,'2021-09-03 06:48:25',8),
(995,11,9,1,NULL,8,'2021-09-03 06:48:25',8),
(996,37,9,1,NULL,8,'2021-09-03 06:48:25',8),
(997,9,9,1,NULL,8,'2021-09-03 06:48:25',8),
(998,28,9,1,NULL,8,'2021-09-03 06:48:25',8),
(999,39,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1000,2,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1001,38,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1002,15,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1003,17,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1004,19,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1005,4,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1006,12,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1007,41,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1008,13,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1009,33,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1010,32,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1011,36,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1012,1,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1013,22,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1014,31,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1015,10,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1016,14,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1017,21,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1018,25,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1019,16,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1020,18,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1021,23,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1022,24,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1023,7,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1024,26,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1025,3,9,1,NULL,8,'2021-09-03 06:48:25',8),
(1257,8,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1258,28,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1259,33,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1260,32,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1261,36,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1262,1,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1263,22,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1264,31,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1265,10,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1266,14,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1267,21,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1268,25,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1269,16,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1270,18,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1271,23,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1272,35,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1273,24,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1274,7,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1275,26,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1276,3,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1277,34,11,1,NULL,8,'2021-10-19 18:34:09',8),
(1288,13,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1289,33,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1290,32,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1291,36,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1292,1,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1293,22,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1294,31,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1295,10,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1296,14,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1297,21,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1298,25,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1299,16,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1300,18,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1301,23,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1302,35,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1303,24,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1304,7,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1305,26,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1306,3,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1307,34,14,1,NULL,8,'2021-10-19 18:40:38',8),
(1319,40,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1320,20,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1321,30,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1322,8,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1323,42,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1324,43,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1325,11,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1326,37,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1327,9,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1328,27,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1329,28,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1330,39,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1331,2,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1332,29,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1333,38,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1334,15,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1335,17,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1336,19,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1337,4,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1338,6,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1339,12,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1340,41,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1341,13,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1342,33,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1343,32,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1344,36,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1345,1,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1346,22,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1347,31,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1348,10,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1349,14,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1350,21,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1351,25,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1352,16,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1353,18,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1354,23,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1355,35,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1356,24,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1357,7,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1358,26,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1359,3,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1360,34,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1361,5,12,1,NULL,8,'2021-10-21 22:15:14',8),
(1362,40,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1363,20,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1364,30,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1365,8,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1366,42,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1367,43,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1368,11,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1369,37,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1370,9,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1371,27,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1372,28,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1373,39,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1374,2,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1375,29,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1376,38,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1377,15,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1378,17,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1379,19,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1380,4,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1381,6,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1382,12,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1383,41,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1384,13,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1385,33,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1386,32,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1387,36,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1388,1,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1389,22,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1390,31,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1391,10,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1392,14,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1393,21,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1394,25,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1395,16,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1396,18,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1397,23,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1398,35,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1399,24,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1400,7,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1401,26,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1402,3,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1403,34,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1404,5,15,1,NULL,5,'2021-12-05 13:53:31',5),
(1425,40,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1426,20,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1427,30,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1428,8,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1429,42,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1430,43,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1431,11,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1432,37,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1433,9,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1434,27,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1435,28,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1436,39,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1437,2,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1438,29,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1439,38,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1440,15,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1441,17,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1442,19,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1443,4,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1444,6,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1445,12,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1446,41,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1447,13,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1448,33,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1449,32,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1450,36,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1451,1,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1452,22,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1453,31,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1454,10,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1455,14,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1456,21,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1457,25,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1458,16,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1459,18,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1460,23,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1461,35,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1462,24,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1463,7,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1464,26,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1465,3,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1466,34,13,1,NULL,8,'2021-12-06 14:13:34',8),
(1530,13,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1531,42,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1532,47,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1533,41,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1534,33,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1535,43,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1536,40,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1537,44,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1538,45,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1539,46,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1540,20,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1541,27,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1542,28,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1543,15,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1544,52,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1545,26,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1546,30,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1547,58,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1548,54,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1549,57,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1550,16,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1551,51,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1552,37,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1553,38,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1554,32,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1555,31,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1556,17,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1557,49,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1558,2,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1559,10,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1560,9,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1561,12,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1562,4,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1563,55,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1564,8,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1565,18,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1566,29,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1567,50,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1568,39,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1569,14,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1570,53,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1571,6,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1572,25,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1573,24,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1574,22,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1575,23,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1576,19,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1577,21,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1578,36,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1579,7,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1580,1,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1581,35,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1582,56,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1583,3,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1584,48,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1585,34,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1586,5,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1587,11,5,1,NULL,5,'2023-04-18 14:16:48',5),
(1588,13,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1589,42,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1590,47,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1591,41,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1592,33,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1593,43,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1594,40,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1595,44,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1596,45,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1597,46,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1598,20,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1599,27,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1600,28,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1601,15,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1602,52,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1603,26,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1604,30,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1605,58,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1606,54,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1607,57,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1608,16,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1609,51,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1610,37,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1611,38,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1612,32,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1613,31,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1614,17,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1615,49,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1616,2,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1617,10,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1618,9,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1619,12,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1620,4,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1621,55,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1622,8,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1623,18,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1624,29,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1625,50,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1626,39,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1627,14,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1628,53,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1629,6,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1630,25,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1631,24,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1632,22,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1633,23,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1634,19,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1635,21,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1636,59,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1637,36,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1638,7,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1639,1,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1640,35,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1641,56,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1642,3,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1643,48,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1644,34,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1645,5,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1646,11,5,1,NULL,5,'2023-05-02 13:20:41',5),
(1651,2,17,1,NULL,5,'2023-05-02 13:23:06',5),
(1652,10,17,1,NULL,5,'2023-05-02 13:23:06',5),
(1653,9,17,1,NULL,5,'2023-05-02 13:23:06',5),
(1654,4,17,1,NULL,5,'2023-05-02 13:23:06',5),
(1655,7,17,1,NULL,5,'2023-05-02 13:23:06',5),
(1656,1,17,1,NULL,5,'2023-05-02 13:23:06',5),
(1657,56,17,1,NULL,5,'2023-05-02 13:23:06',5),
(1689,13,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1690,42,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1691,33,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1692,28,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1693,52,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1694,26,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1695,58,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1696,54,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1697,16,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1698,49,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1699,2,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1700,10,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1701,9,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1702,12,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1703,4,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1704,55,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1705,8,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1706,50,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1707,14,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1708,19,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1709,59,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1710,7,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1711,1,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1712,56,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1713,3,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1714,11,11,1,NULL,5,'2023-05-02 13:27:47',5),
(1743,13,9,1,NULL,5,'2023-05-02 15:24:29',5),
(1744,49,9,1,NULL,5,'2023-05-02 15:24:29',5),
(1745,2,9,1,NULL,5,'2023-05-02 15:24:29',5),
(1746,10,9,1,NULL,5,'2023-05-02 15:24:29',5),
(1747,9,9,1,NULL,5,'2023-05-02 15:24:29',5),
(1748,12,9,1,NULL,5,'2023-05-02 15:24:29',5),
(1749,4,9,1,NULL,5,'2023-05-02 15:24:29',5),
(1750,19,9,1,NULL,5,'2023-05-02 15:24:29',5),
(1751,7,9,1,NULL,5,'2023-05-02 15:24:29',5),
(1752,1,9,1,NULL,5,'2023-05-02 15:24:29',5),
(1753,56,9,1,NULL,5,'2023-05-02 15:24:29',5),
(1758,13,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1759,26,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1760,49,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1761,2,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1762,10,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1763,9,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1764,12,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1765,4,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1766,55,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1767,8,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1768,50,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1769,14,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1770,19,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1771,7,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1772,1,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1773,56,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1774,5,10,1,NULL,5,'2023-05-02 15:25:17',5),
(1789,49,16,1,NULL,5,'2023-05-02 15:28:25',5),
(1790,2,16,1,NULL,5,'2023-05-02 15:28:25',5),
(1791,10,16,1,NULL,5,'2023-05-02 15:28:25',5),
(1792,9,16,1,NULL,5,'2023-05-02 15:28:25',5),
(1793,12,16,1,NULL,5,'2023-05-02 15:28:25',5),
(1794,4,16,1,NULL,5,'2023-05-02 15:28:25',5),
(1795,7,16,1,NULL,5,'2023-05-02 15:28:25',5),
(1796,1,16,1,NULL,5,'2023-05-02 15:28:25',5),
(1797,56,16,1,NULL,5,'2023-05-02 15:28:25',5),
(1804,2,13,1,NULL,5,'2023-05-02 15:29:27',5),
(1805,10,13,1,NULL,5,'2023-05-02 15:29:27',5),
(1806,9,13,1,NULL,5,'2023-05-02 15:29:27',5),
(1807,12,13,1,NULL,5,'2023-05-02 15:29:27',5),
(1808,4,13,1,NULL,5,'2023-05-02 15:29:27',5),
(1809,55,13,1,NULL,5,'2023-05-02 15:29:27',5),
(1810,8,13,1,NULL,5,'2023-05-02 15:29:27',5),
(1811,7,13,1,NULL,5,'2023-05-02 15:29:27',5),
(1812,1,13,1,NULL,5,'2023-05-02 15:29:27',5),
(1813,56,13,1,NULL,5,'2023-05-02 15:29:27',5),
(1819,49,12,1,NULL,5,'2023-05-02 15:34:10',5),
(1820,2,12,1,NULL,5,'2023-05-02 15:34:10',5),
(1821,10,12,1,NULL,5,'2023-05-02 15:34:10',5),
(1822,9,12,1,NULL,5,'2023-05-02 15:34:10',5),
(1823,12,12,1,NULL,5,'2023-05-02 15:34:10',5),
(1824,4,12,1,NULL,5,'2023-05-02 15:34:10',5),
(1825,55,12,1,NULL,5,'2023-05-02 15:34:10',5),
(1826,8,12,1,NULL,5,'2023-05-02 15:34:10',5),
(1827,7,12,1,NULL,5,'2023-05-02 15:34:10',5),
(1828,1,12,1,NULL,5,'2023-05-02 15:34:10',5),
(1829,56,12,1,NULL,5,'2023-05-02 15:34:10',5),
(1834,49,15,1,NULL,5,'2023-05-02 15:35:01',5),
(1835,2,15,1,NULL,5,'2023-05-02 15:35:01',5),
(1836,10,15,1,NULL,5,'2023-05-02 15:35:01',5),
(1837,9,15,1,NULL,5,'2023-05-02 15:35:01',5),
(1838,12,15,1,NULL,5,'2023-05-02 15:35:01',5),
(1839,4,15,1,NULL,5,'2023-05-02 15:35:01',5),
(1840,7,15,1,NULL,5,'2023-05-02 15:35:01',5),
(1841,1,15,1,NULL,5,'2023-05-02 15:35:01',5),
(1842,56,15,1,NULL,5,'2023-05-02 15:35:01',5),
(1843,2,23,1,NULL,5,'2023-05-11 12:00:06',5),
(1844,10,23,1,NULL,5,'2023-05-11 12:00:06',5),
(1845,9,23,1,NULL,5,'2023-05-11 12:00:06',5),
(1846,12,23,1,NULL,5,'2023-05-11 12:00:06',5),
(1847,4,23,1,NULL,5,'2023-05-11 12:00:06',5),
(1848,7,23,1,NULL,5,'2023-05-11 12:00:06',5),
(1849,1,23,1,NULL,5,'2023-05-11 12:00:06',5),
(1850,56,23,1,NULL,5,'2023-05-11 12:00:06',5),
(1851,13,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1852,42,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1853,47,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1854,41,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1855,33,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1856,43,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1857,40,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1858,44,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1859,45,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1860,46,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1861,20,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1862,27,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1863,28,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1864,15,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1865,52,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1866,26,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1867,30,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1868,58,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1869,54,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1870,57,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1871,16,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1872,51,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1873,37,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1874,38,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1875,32,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1876,31,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1877,17,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1878,49,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1879,2,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1880,10,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1881,9,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1882,12,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1883,4,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1884,55,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1885,8,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1886,18,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1887,29,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1888,50,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1889,39,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1890,14,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1891,53,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1892,6,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1893,25,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1894,24,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1895,22,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1896,23,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1897,19,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1898,21,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1899,59,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1900,36,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1901,7,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1902,1,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1903,35,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1904,56,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1905,3,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1906,48,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1907,34,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1908,5,24,1,NULL,8,'2023-05-30 20:25:12',8),
(1909,11,24,1,NULL,8,'2023-05-30 20:25:12',8);

/*!50106 set global event_scheduler = 1*/;

/* Event structure for event `ev_prorateannualleavedays` */

/*!50106 DROP EVENT IF EXISTS `ev_prorateannualleavedays`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`root`@`localhost` EVENT `ev_prorateannualleavedays` ON SCHEDULE EVERY 1 DAY STARTS '2024-08-04 00:05:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
		call `sp_saveemployeeannualleaveallocation`();
	END */$$
DELIMITER ;

/* Function  structure for function  `fn_computebracketedvalue` */

/*!50003 DROP FUNCTION IF EXISTS `fn_computebracketedvalue` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fn_computebracketedvalue`($refno varchar(50),$employeeid int,$payrollitemid int) RETURNS decimal(18,2)
BEGIN
    
	declare $amount decimal(18,2);
	declare $bracketongross bool;
	declare $bracketitem bool;
	declare $bracketispercentage bool;
	declare $bracketlowerlimit decimal(18,2);
	declare $bracketupperlimit decimal(18,2);
	declare $gross decimal(18,2);
	
	select `bracketedongross` ,`bracketeditem`,`bracketispercentage`,`bracketlowerlimit`,`bracketupperlimit`
	into $bracketongross ,$bracketitem,$bracketispercentage,$bracketlowerlimit,$bracketupperlimit
	from `payrollitems`
	where `itemid`=$payrollitemid;
	
	if $bracketongross=1 then 
		select sum(`amount`) into $gross 
		from `temppayslipinfo` e inner join `payrollitems` p on p.itemid=e.payrollitemid
		where p.`statutory`='payment' and `refno`=$refno;
	else
		select `amount` into $gross 
		from `employeepayrollitems`
		where `payrollitemid`=$bracketitem and `employeeid`=$employeeid and `deleted`=0;
	end if;
	
	SELECT `value` INTO $amount 
	FROM `payrollitembracket`
	WHERE `payrollitemid`=$payrollitemid AND $gross BETWEEN `lowerbracket` AND `upperbracket`
	AND valid=1;
	
	IF $bracketispercentage THEN 
		SET $amount=($amount/100)*$gross;
	END IF;
	
	if $amount<$bracketlowerlimit  and $bracketlowerlimit!=0 then 
		set $amount=$lowerbracketlimit;
	elseif $amount>$bracketupperlimit  and $bracketupperlimit!=0 then 
		set $amount=$bracketupperlimit;
	end if;
	
	return $amount;
	
    END */$$
DELIMITER ;

/* Function  structure for function  `fn_computeemployeeinsuranceamount` */

/*!50003 DROP FUNCTION IF EXISTS `fn_computeemployeeinsuranceamount` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fn_computeemployeeinsuranceamount`($employeeid int,$refno varchar(50)) RETURNS decimal(18,2)
BEGIN
    
	select sum(p.`amount`) into @insuredamount
	from `temppayslipinfo` p
	join `payrollitems` i on i.itemid=p.`payrollitemid`
	join `employeepayrollitems` e on e.`payrollitemid`=i.itemid 
	and `employeeid`=$employeeid and e.deleted=0 
	where `refno`=$refno and (e.`applyrelief`=1 or `autorelief`=1);
	
	return ifnull(@insuredamount,0);
	
    END */$$
DELIMITER ;

/* Function  structure for function  `fn_computepaye` */

/*!50003 DROP FUNCTION IF EXISTS `fn_computepaye` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fn_computepaye`($refno varchar(50),$label varchar(50),$hasdisability tinyint) RETURNS decimal(18,2)
BEGIN
	    
		declare $grossincome decimal(18,2);
		declare $benefits decimal(18,2);
		declare $allowabledeductions decimal(18,2);
		declare $taxableincome decimal(18,2);
		declare $personalrelief decimal(19,2);
		declare $insurancerelief decimal(18,2);
		declare $paye decimal(18,2) default 0;
		declare $payecharged decimal(18,2) default 0;
		declare $disabilityallowablededuction decimal(18,2) default 0;
		
		declare $payeid int;
		declare $minvalue decimal(18,2);
		declare $maxvalue decimal(18,2);
		declare $taxrate decimal(18,2);
		declare $bracketrange decimal(18,2);
		declare $insurancereliefrate decimal(18,2);
		declare $insurancereliefmaxamount decimal(18,2);
		declare $finished int default 0;
		
		-- compute paye based on bracket
		DECLARE paye_bracket_cursor CURSOR FOR 
		SELECT `minvalue`,`maxvalue`,`rate` 
		from `payetaxtabledetails` 
		where `payeid`=(SELECT `payeid` FROM `payetaxtable` WHERE `label`=$label)
		order by minvalue;
		
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET $finished=1;

		SET $payeid =(SELECT `payeid` FROM `payetaxtable` WHERE `label`=$label);
		-- Compute Personal Relief
		SELECT `personalrelief`,`insurancereliefrate`,`insurancereliefmaxamount`
		INTO $personalrelief,$insurancereliefrate,$insurancereliefmaxamount 
		FROM `payetaxtable` 
		WHERE `payeid`=$payeid;
			
		-- Compute Gross Income, Benefits and Taxable Income
		SELECT SUM(t.amount) INTO $grossincome FROM `temppayslipinfo` t
		INNER JOIN `payrollitems` p ON p.itemid=t.payrollitemid
		WHERE `refno`=$refno AND p.itemtype IN('payment','benefit');
		
		if $hasdisability=1 then
			select `disabilityallowable`
			into $disabilityallowablededuction
			from `payetaxtable`
			where `label`=$label;
		end if;
		
		-- compute allowable deductions
		SELECT SUM(CASE WHEN t.amount>allowabledeductionupperlimit THEN allowabledeductionupperlimit ELSE amount END) 
		INTO $allowabledeductions FROM `temppayslipinfo` t
		INNER JOIN `payrollitems` p ON p.itemid=t.payrollitemid
		WHERE `refno`=$refno AND p.allowablededuction=1;
		
		-- Add allowable disability if it applies
		set $allowabledeductions=$allowabledeductions+$disabilityallowablededuction;
		-- return $allowabledeductions;
		-- Compute taxable income
		SET $taxableincome=$grossincome-$allowabledeductions;
		-- return $grossincome;
		OPEN paye_bracket_cursor;
		get_brackets: LOOP
			FETCH paye_bracket_cursor INTO $minvalue,$maxvalue,$taxrate;		
			IF $finished=1 THEN 
				LEAVE get_brackets;
			END IF;
			
			set $bracketrange=$maxvalue-$minvalue;
			
			if  $taxableincome>$bracketrange then 
				set $paye=$paye+(($taxrate/100)*$bracketrange);
				set $taxableincome=$taxableincome-$bracketrange;
			else
				set $paye=$paye+(($taxrate/100)*$taxableincome);
				set $taxableincome=0;
				-- Exit the cursor if there are no futher brackets to loop through or taxable income fully taxed
				LEAVE get_brackets;
			end if;
		END LOOP get_brackets;
		CLOSE paye_bracket_cursor;
		
		
		
		-- Compute Insurance Relief
		select sum(t.amount) into $insurancerelief 
		from `temppayslipinfo` t 
		inner join `payrollitems` p on p.`itemid`=t.`payrollitemid`
		inner join employeepayrollitems ip on ip.`payrollitemid`=p.`itemid`
		where refno=@refno and p.description='INSURANCE RELIEF';
		
		set $insurancerelief=ifnull($insurancerelief,0);
		set $personalrelief=ifnull($personalrelief,0);
		
		if IFNULL($insurancerelief,0)>$insurancereliefmaxamount then 
			set $insurancerelief=$insurancereliefmaxamount;
		end if;
		
		-- Return paye charged
		set $payecharged=$paye-$personalrelief-$insurancerelief;
		
		if $payecharged<0 then
			set $payecharged=0;
		end if;
		
		return $payecharged;

	    END */$$
DELIMITER ;

/* Function  structure for function  `fn_generateemployeestaffno` */

/*!50003 DROP FUNCTION IF EXISTS `fn_generateemployeestaffno` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fn_generateemployeestaffno`($categoryid int) RETURNS varchar(50) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    
	declare $staffno varchar(50);
	
	select concat(`numberingprefix`,case char_length(`currentnumber`) 
		when 1 then '000'
		when 2 then '00'
		when 3 then '0'
		else '' end,`currentnumber`)
	into $staffno
	from `jobcategories` where `categoryid`=$categoryid;
	
	return $staffno;
	
    END */$$
DELIMITER ;

/* Function  structure for function  `fn_getleaveapplicationstatus` */

/*!50003 DROP FUNCTION IF EXISTS `fn_getleaveapplicationstatus` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fn_getleaveapplicationstatus`($applicationid int) RETURNS varchar(50) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
	DECLARE $applicationstatus VARCHAR(50) DEFAULT NULL;

	SELECT CONCAT(CASE `approvallevel` 
		WHEN 'supervisor' THEN 'Supervisor'
		WHEN 'hrmanager' THEN 'Human Resource Manager'
		WHEN 'topmanagement' THEN 'Senior Management'
	END,' ', IFNULL(p.`status`,'pending')) INTO $applicationstatus
	FROM `leaveapplications` a
	JOIN `leaveapprovalflows` f ON f.flowid=a.`approvalflowid`
	JOIN `leaveapprovallevels` l ON l.flowid=f.flowid
	JOIN `user` u ON u.userid=a.`addedby`
	LEFT OUTER JOIN `leaveapproval` p ON p.`applicationid`=a.`applicationid` AND p.`approvallevelid`=l.`id`
	WHERE a.`applicationid`=$applicationid AND IFNULL(p.status,'pending') IN('cancelled','pending')
	ORDER BY CASE p.status 
		WHEN 'cancelled' THEN 1
		WHEN 'pending' THEN 2
		ELSE 3
	END,`hierarchy`
	LIMIT 1;

	RETURN IFNULL($applicationstatus,'Approved');
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_approveleave` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_approveleave` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_approveleave`($applicationid int,$approvallevelid int,$approvalstatus varchar(50),$narration varchar(1000),$userid int,$platform varchar(50))
BEGIN
		start transaction;
			insert into `leaveapproval`(`applicationid`,`approvallevelid`,`approvaluser`,`narration`,`status`,`statusdate`)
			values($applicationid,$approvallevelid,$userid,$narration,$approvalstatus,now());
			
			select concat('Approved leave application of leave, id ',$applicationid,' for level id:',
			$approvallevelid,', levelname:',
				case approvallevel when 'supervisor' then 'Supervisor'
				when 'hrmanager' then 'Human Resource Manager'
				when 'topmanagement' then 'Senior management' end)
			into @narration
			from `leaveapprovallevels` where `id`=$approvallevelid;
			
			CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_changeuserpassword` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_changeuserpassword` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_changeuserpassword`($id numeric, $userpassword varchar(100),$salt varchar(50),$changepasswordonlogon bool)
BEGIN
	update `user` 
	set `password`=$userpassword, `salt`=$salt,`changepasswordonlogon`=$changepasswordonlogon 
	where `userid`=$id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkbank` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkbank` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkbank`($bankid int,$checkfield varchar(50),$checkvalue varchar(50))
BEGIN
		if $checkfield='code' then
			select * from `banks`
			where `bankid`!=$bankid and `bankcode`=$checkvalue;
		elseif $checkfield='name' then
			SELECT * FROM `banks`
			WHERE `bankid`!=$bankid AND `bankname`=$checkvalue;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkbankbranchcode` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkbankbranchcode` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkbankbranchcode`($branchid int,$branchcode varchar(50))
BEGIN
		select * 
		from `bankbranches`
		where `branchid`!=$branchid and `branchcode`=$branchcode;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkbankbranchname` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkbankbranchname` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkbankbranchname`($branchid int,$bankid int, $branchname varchar(50))
BEGIN
		select * 
		from `bankbranches`
		where `branchid`!=$branchid and `bankid`=$bankid and `branchname`=$branchname;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkchargeableitem` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkchargeableitem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkchargeableitem`($itemid int,$itemname varchar(50))
BEGIN
		select * 
		from `chargeableitems` 
		where `itemid`!=$itemid and `itemname`=$itemname;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkcreditor` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkcreditor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkcreditor`($creditorid int,$checkfield varchar(50),$checkvalue varchar(50))
BEGIN
		if $checkfield='reference' then
			select * 
			from `creditors`
			where `creditorid`!=$creditorid and `referenceno`=$checkvalue and `deleted`=0;
		elseif $checkfield='name' then 
			select * 
			from `creditors`
			where `creditorid`!=$creditorid and `creditorname`=$checkvalue and `deleted`=0;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkdepartment` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkdepartment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkdepartment`($departmentid INT, $departmentname VARCHAR(50))
BEGIN
          SELECT * FROM departments
          WHERE departmentid!=$departmentid AND departmentname=$departmentname;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkdepartments` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkdepartments` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkdepartments`($departmentid int, $departmentname varchar(50))
BEGIN
          select * from `departments`
          where `departmentid`!=$departmentid and `departmentname`=$departmentname
          and deleted=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkemployeeattachment` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkemployeeattachment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkemployeeattachment`($id int,$documentid int,$employeeid int)
BEGIN
             select * from `employeeattachments`
             where id!=$id and employeeid=$employeeid and `documentid`=$documentid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkemployeebeneficiary` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkemployeebeneficiary` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkemployeebeneficiary`($beneficiaryid int,$employeeid int, $idnumber varchar(50))
BEGIN
		select * from `employeebeneficiaries`
		where `beneficiaryid`!=$beneficiaryid and `employeeid`=$employeeid 
		and `idnumber`=$idnumber and `deleted`=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkemployeechpayrollitem` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkemployeechpayrollitem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkemployeechpayrollitem`($itemid int,$employeeid int,$payrollitemid int)
BEGIN
		select * from `employeepayrollitems` 
		where `itemid`!=$itemid and `payrollitemid`=$payrollitemid  and `employeeid`=$employeeid and 
		(
			(periodic=1 and date_format(DATE_ADD(startdate, INTERVAL `duration` month),'%Y-%m-%d')>date_format(now(),'%Y-%m-%d')
			or periodic=0)
		) and deleted=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkemployeedependantiddoc` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkemployeedependantiddoc` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkemployeedependantiddoc`($dependantid int,$employeeid int,$iddoc int,$iddocno varchar(50))
BEGIN
		select * from `employeedependants`
		where `dependantid`!=$dependantid and `employeeid`=$employeeid 
		and `iddocumentid`=$iddoc and `iddocumentno`=$iddocno
		and `deleted`=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkemployeedetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkemployeedetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkemployeedetails`($employeeid int,$checkfield varchar(50),$iddocument int,$checkvalue varchar(50))
BEGIN
		if $checkfield='id document' then 
			select * from `employeerecords` 
			where `employeeid`!=$employeeid and `iddocumentid`=$iddocument and `iddocreferenceno`=$checkvalue;
		elseif $checkfield='staff no' then
			SELECT * FROM `employeerecords` 
			WHERE `employeeid`!=$employeeid AND `staffno`=$checkvalue;
		elseif $checkfield='pin no' then 
			SELECT * FROM `employeerecords` 
			WHERE `employeeid`!=$employeeid AND `pinno`=$checkvalue;
		elseif $checkfield='nssf no' then 
			SELECT * FROM `employeerecords` 
			WHERE `employeeid`!=$employeeid AND `nssfno`=$checkvalue;
		elseif $checkfield='nhif no' then
			SELECT * FROM `employeerecords` 
			WHERE `employeeid`!=$employeeid AND `nhifno`=$checkvalue;
		elseif $checkfield='email' then 
			SELECT * FROM `employeerecords` 
			WHERE `employeeid`!=$employeeid AND `emailaddress`=$checkvalue;
		elseif $checkfield='mobile' then
			SELECT * FROM `employeerecords` 
			WHERE `employeeid`!=$employeeid AND `mobile`=$checkvalue;
		elseif $checkfield='disabilitycertificate' then 
			SELECT * FROM `employeerecords` 
			WHERE `employeeid`!=$employeeid AND `disabilitycertificateno`=$checkvalue;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkemployeeexternalexperience` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkemployeeexternalexperience` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkemployeeexternalexperience`($id int,$employeeid int,$startdate date,$enddate date)
BEGIN
		select * from `employeeexternalworkingexperience`
		where `id`!=$id and `employeeid`=$employeeid and 
		(`startdate` between $startdate and $enddate or `enddate` between $startdate and $enddate)
		and `deleted`=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkemployeeinternalexperience` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkemployeeinternalexperience` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkemployeeinternalexperience`($id int,$employeeid int,$startdate date,$enddate date,$currentlyhere bool)
BEGIN
		if $currentlyhere=1 then 
			set $enddate=date_format(now(),'%Y-%m-%d');
		end if;
		
		select * from `employeeinternalworkingexperience`
		where `id`!=$id and `employeeid`=$employeeid and 
			(`startdate` between $startdate and $enddate 
			or 
			(`currentlyhere`=0 and `enddate` between $startdate and $enddate)
			or
			(`currentlyhere`=1 and date_format(now(),'%Y-%m-%d') between $startdate and $enddate)
		) and deleted=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkemployeeleaveapplication` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkemployeeleaveapplication` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkemployeeleaveapplication`($applicationid int,$employeeid int,$startdate date,$enddate date)
BEGIN
		select * from `leaveapplications`
		where `employeeid`=$employeeid and 
		(`startdate` between $startdate and $enddate or `enddate` between $startdate and $enddate)
		and `fn_getleaveapplicationstatus`(applicationid) not like '%cancelled%' and `deleted`=0 and `applicationid`!=$applicationid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkemployeetrainingcertificate` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkemployeetrainingcertificate` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkemployeetrainingcertificate`($trainingid int,$employeeid int,$certificatenumber varchar(50))
BEGIN
		select * from  `employeetraining`
		where `trainingid`!=$trainingid and `employeeid`=$employeeid and `certificateno`=$certificatenumber;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkemploymentterm` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkemploymentterm` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkemploymentterm`($termid int,$termname varchar(50))
BEGIN
		select * from `employmentterms`
		where `termid`!=$termid and `termname`=$termname and `deleted`=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkgrievances` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkgrievances` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkgrievances`($grievanceid int)
BEGIN
            select * from `employeegrievances`
            where `grievanceid`=$grievanceid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkjobcategory` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkjobcategory` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkjobcategory`($categoryid int,$checkfield varchar(50),$checkvalue varchar(50))
BEGIN
		if $checkfield='prefix' then 
			select * from `jobcategories`
			where `categoryid`!=$categoryid and `numberingprefix`=$checkvalue and `deleted`=0;
		elseif $checkfield='name' then 
			select * from `jobcategories`
			where `categoryid`!=$categoryid and `categoryname`=$checkvalue and `deleted`=0;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkjobgroup` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkjobgroup` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkjobgroup`($jobgroupid int,$jobgroupname varchar(50))
BEGIN
		select * from `jobgroups`
		where `jobgroupid`!=$jobgroupid and `jobgroupname`=$jobgroupname and `deleted`=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkjobnotch` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkjobnotch` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkjobnotch`($notchid int,$notchname varchar(50))
BEGIN
		select * from `jobnotches`
		where `notchid`!=$notchid and `notchname`=$notchname and `deleted`=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkjobposition` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkjobposition` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkjobposition`($positionid int,$positionname varchar(100))
BEGIN
		select * from `jobpositions`
		where positionid!=$positionid and `positionname`=$positionname
		and deleted=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkleaveapprovalflow` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkleaveapprovalflow` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkleaveapprovalflow`($flowid int,$flowname varchar(50))
BEGIN
		select *
		from `leaveapprovalflows`
		where `flowid`!=$flowid and `flowname`=$flowname
		and `deleted`=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkleavename` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkleavename` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkleavename`($leaveid int,$leavename varchar(50))
BEGIN
		select * 
		from `leavetypes`
		where `leaveid`!=$leaveid and `leavename`=$leavename and `deleted`=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkpayrollitem` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkpayrollitem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkpayrollitem`($itemid int,$itemname varchar(50))
BEGIN
		select * 
		from `payrollitems` where `itemid`!=$itemid and `itemname`=$itemname and `deleted`=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkpayrollitemgroup` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkpayrollitemgroup` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkpayrollitemgroup`($groupid int,$groupname varchar(50))
BEGIN
		select * 
		from `payrollitemgroups`
		where `groupid`!=$groupid and `groupname`=$groupname and `deleted`=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkpayrollotheropenperiods` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkpayrollotheropenperiods` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkpayrollotheropenperiods`($payrollmonth varchar(50),$payrollyear int)
BEGIN
		select * 
		from `payrolldetails`
		where `status`='open' and `month`!=$payrollmonth and `year`!=$payrollyear;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkpayrollperiodstatus` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkpayrollperiodstatus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkpayrollperiodstatus`($payrollmonth varchar(50),$payrollyear int)
BEGIN
		select * from `payrolldetails`
		where `month`=$payrollmonth and `year`=$payrollyear;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkpublicholiday` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkpublicholiday` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkpublicholiday`($id int,$holidaydate date,$holidayname varchar(50))
BEGIN
		if exists(select * from `publicholidays` where `id`!=$id and `holidayname`=$holidayname and `deleted`=0 and date_format($holidaydate,'%Y-%m-%d')>=$holidaydate) then
			select 'holiday exists' as description;
		elseif exists(SELECT * FROM `publicholidays` WHERE `id`!=$id AND `date`=$holidaydate AND `deleted`=0) then 
			select 'date exists' as description;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkrole` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkrole` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkrole`(`$roleid` INT, `$rolename` VARCHAR(50))
BEGIN
	select * 
	from `roles` 
	where `roleid`<>$roleid and `rolename`=$rolename;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checksalarystructure` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checksalarystructure` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checksalarystructure`($structureid int, $jobgroupid int,$notchid int,$payrollitemid int)
BEGIN
		select * from `jobsalarystructures`
		where `jobgroupid`=$jobgroupid and `notchid`=$notchid and `payrollitemid`=$payrollitemid
		and `structureid`!=$structureid
		and `deleted`=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkshiftmasterdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkshiftmasterdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkshiftmasterdetails`($shiftid int,$shiftname varchar(50))
BEGIN
		select * from `shiftmaster`
		where `shiftid`!=$shiftid and `shiftname`=$shiftname and `deleted`=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkstaffshift` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkstaffshift` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkstaffshift`($staffshiftid int,$shiftid int,$employeeid int,$shiftdate date)
BEGIN
		select * from `staffshifts`
		where `staffshiftid`!=$staffshiftid and `employeeid`=$employeeid 
		and `shiftid`=$shiftid and date_format(`date`,'%Y-%m-%d')=$shiftdate and `deleted`=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_checkuser` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_checkuser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_checkuser`(`$userid` INT, `$checkfield` VARCHAR(50), `$checkvalue` VARCHAR(50))
BEGIN
	if $checkfield='username' then 
		select * from `user` where `id`<>$userid and `username`=$checkvalue;
	elseif $checkfield='email' then 
		select * from `user` where `id`<>$userid AND `email`=$checkvalue;
	elseif $checkfield='mobile' then 
		SELECT * FROM `user` WHERE `id`<>$userid AND `mobile`=$checkvalue;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_closepayrollperiod` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_closepayrollperiod` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_closepayrollperiod`($payrollid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			update `payrolldetails` 
			set `status`='closed'
			where `payrollid`=$payrollid;
			
			select concat('Closed payroll period ',`month`,' ',`year`, ' id: ',$payrollid)
			into @narration
			from `payrolldetails` where `payrollid`=$payrollid;
			
			CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,'','',NULL);
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_countholidays` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_countholidays` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_countholidays`( $startdate DATE, $enddate DATE)
BEGIN 
	-- declare publicholidays int default 0;
  /*DECLARE curr_date DATE;
  DECLARE total_days INT;
  DECLARE day_of_week INT;
  DECLARE weekend_count INT DEFAULT 0;
 
  
  SET curr_date = start_date;
  SET total_days = DATEDIFF(end_date, start_date);

  WHILE total_days >= 0 DO
    SET day_of_week = DAYOFWEEK(curr_date);
    IF day_of_week = 1 OR day_of_week = 7 THEN
      SET weekend_count = weekend_count + 1;
    END IF;
    SET curr_date = DATE_ADD(curr_date, INTERVAL 1 DAY);
    SET total_days = total_days - 1;
  END WHILE;*/
  
	 -- get public holidays between the dates that are active
	 SELECT COUNT(*) AS weekendholidayscount
	 -- INTO public_holidays
	 FROM `publicholidays`
	 WHERE `date` BETWEEN $startdate AND $enddate AND `deleted`=0;
  
	-- SELECT ifnull(public_holidays,0) ;
  
END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_createemployeeuseraccount` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_createemployeeuseraccount` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_createemployeeuseraccount`($staffno varchar(50),$mobile varchar(50),$emailaddress varchar(50),$salt varchar(50),
	$userpassword varchar(100),$emailactivationcode varchar(50),$phoneactivationcode varchar(50),
	$userid int,$platform varchar(50))
BEGIN
		declare $firstname varchar(50);
		declare $middlename varchar(50);
		declare $lastname varchar(50);
		
		select `firstname`,`middlename`,`lastname` 
		into $firstname,$middlename,$lastname
		from  `employeerecords` where `staffno`=$staffno;
		
		start transaction;		
			if not exists(select * from `user` where `username`=$staffno) then 
				-- Create user account for employee
				insert into `user`(`category`,`username`,`firstname`,`middlename`,`lastname`,`email`,`mobile`,`password`,`salt`,
				`emailactivationcode`,`phoneactivationcode`,`dateadded`,`addedby`)
				values('employee',$staffno,$firstname,$middlename,$lastname,$emailaddress,$mobile,$userpassword,$salt,
				$emailactivationcode,$phoneactivationcode,now(),$userid);
				
				-- Update mobile and email addresses
				update `employeerecords`
				set `mobile`=$mobile,`emailaddress`=$emailaddress
				where `staffno`=$staffno;
				
				-- Add audit trails for the same
				select concat('Created ESS portal access account for  staff: ',$staffno,' names:',$firstname,' ',$middlename,' ',$lastname)
				into @narration;
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
				
				SELECT CONCAT('Updated concat details for  staff: ',$staffno,' names:',$firstname,' ',$middlename,' ',$lastname)
				INTO @narration;
				CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,'','',NULL);
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletebank` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletebank` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletebank`($bankid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			-- delete bank
			update `banks`
			set `deleted`=1,
			`deletedy`=$userid,
			`datedeleted`=now()
			where `bankid`=$bankid;
			
			-- Generate audit trail narration
			select concat('Deleted  bank id : ',$bankid,' bank name : ',bankname)
			into @narration
			from `banks` where `bankid`=$bankid;
			-- add audit trail
			CALL `sp_saveaudittrailentry`($userid,'Delete',@narration,$platform,'','',null); 
		commit;	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletebankbranch` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletebankbranch` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletebankbranch`($branchid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
		
			update `bankbranches`
			set `deleted`=1,`deletedby`=$userid,`datedeleted`=now()
			where `branchid`=$branchid;
			
			select concat('Deleted bank branch id: ',$branchid,' name: ',branchname)
			into @narration
			from `bankbranches` where `branchid`=$branchid;
			
			CALL `sp_saveaudittrailentry`($userid,'delete',@narration,$platform,'','',NULL);
			
		commit;
		 
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletechargeableitem` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletechargeableitem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletechargeableitem`($itemid int,$userid int,$platform varchar(50))
BEGIN
		update `chargeableitems`
		set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
		where `itemid`=$itemid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletecreditor` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletecreditor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletecreditor`($creditorid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			UPDATE `creditors`
			SET `deleted`=1,`datedeleted`=NOW(),`deletedby`=$userid
			WHERE `creditorid`=$creditorid;
			
			SELECT CONCAT('Deleted creditor id:',$creditorid,' name:',creditorname)
			INTO @narration
			FROM `creditors` WHERE `creditorid`=$creditorid;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
		
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletedepartment` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletedepartment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletedepartment`($departmentid int,$userid int,$platform varchar(50))
BEGIN
		START TRANSACTION;
		
			UPDATE `departments`
			SET `deleted`=1,`datedeleted`=NOW(),`deletedby`=$userid
			WHERE `departmentid`=$departmentid;
			
			SELECT CONCAT('Deleted department id:',$departmentid,' name:',departmentname)
			INTO @narration
			FROM `departments` WHERE `departmentid`=$departmentid;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
			
		COMMIT;	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletedepartments` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletedepartments` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletedepartments`($departmentid int, $userid int,$platform varchar(1000))
BEGIN
            start transaction;
            
              update `departments`
              
              set `deleted` =1,`datedeleted`=now(),`deletedby`=$userid
              
              where `departmentid`=$departmentid; 
              
              select concat('Deleted department id:',`departmentid`,'name:',`departmentname`,'head:',`departmenthead`)
              into @narration
              from `departments` where `departmentid`= $departmentid;  
                 CALL `sp_saveaudittrailentry`($userid,'delete',@narration,$platform,'','',NULL); 
            
            commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deleteemployeeattachment` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deleteemployeeattachment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteemployeeattachment`($id int,$userid int,$platform varchar(1000))
BEGIN
             
             -- update the table
             update `employeeattachments`
             set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
             where `id` =$id;
             
             select concat('deleted employee attachment id',$id,' document name:', 
             `documentname`,' staff id"', e.employeeid,' no:',staffno,' names:',firstname,' ',middlename,' ',lastname)
             into @narration
             from `employeeattachments` e
             join `employeeattachabledocuments` d on d.documentid=e.documentid
             join `employeerecords` r on r.employeeid=e.employeeid
             where e.`id`=$id;
             
             -- update autid trail 
             CALL `sp_saveaudittrailentry`($userid,'Delete',@narration,$platform,'','',NULL);
             
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deleteemployeebeneficiary` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deleteemployeebeneficiary` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteemployeebeneficiary`($beneficiaryid int,$userid int,$platform varchar(50))
BEGIN
		start transaction;
			update `employeebeneficiaries`
			set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
			where `beneficiaryid`=$beneficiaryid;
			
			select concat('Deleted employee beneficary id:',$beneficiaryid,' names:',fullname,
			' of staff id:',r.employeeid,' number:',staffno,' names:',firstname,' ',middlename,' ',lastname)
			into @narration
			from `employeebeneficiaries` b 
			join `employeerecords` r on r.employeeid=b.employeeid
			where b.beneficiaryid=$beneficiaryid;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deleteemployeedependant` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deleteemployeedependant` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteemployeedependant`($dependantid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
		
			update `employeedependants`
			set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
			where dependantid=$dependantid;
			
			select concat('Deleted dependant id:',$dependantid,' name:',dependantname,' for employee id:',e.employeeid,' name:', 
			firstname, ' ',middlename,' ' ,lastname)
			into @narration 
			from `employeedependants` d
			join `employeerecords` e on e.employeeid=d.employeeid 
			where d.dependantid=$dependantid;
			
			CALL `sp_saveaudittrailentry`($userid,'Delete',@narration,$platform,'','',null); 	
		
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deleteemployeedisciplinaryincident` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deleteemployeedisciplinaryincident` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteemployeedisciplinaryincident`($incidentid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
		
			update `employeedisciplinarycases`
			set `deleted`=1,`deleteby`=$userid,`datedeleted`=now()
			where `incidentid`=$incidentid;
			
			select concat('Deleted disciplinary inceident id:',$incidentid,' for employee id:',i.employeeid,' staff no:',staffno,
			' names ',firstname,' ',middlename,' ',lastname)
			into @narration
			from `employeedisciplinarycases` i
			join `employeerecords` r on r.employeeid=i.employeeid
			where incidentid=$incidentid;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
			
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deleteemployeeinternalexperience` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deleteemployeeinternalexperience` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteemployeeinternalexperience`($id int,$userid int,$platform varchar(50))
BEGIN
		start transaction;
		
			update `employeeinternalworkingexperience`
			set `deleted`=1,`datedeleted`=now(),`deleteby`=$userid
			where `id`=$id;
			
			select concat('Deleted employee internal experience id:',$id)
			into @narration;
			
			CALL `sp_saveaudittrailentry`($userid,'delete',@narration,$platform,'','',NULL);
			
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deleteemployeepayrollitem` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deleteemployeepayrollitem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteemployeepayrollitem`($itemid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
		
			update `employeepayrollitems`
			set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
			where `itemid`=$itemid;
			
			select concat('Deleted payroll item id:',$itemid,' name:',itemname,' staffno:',staffno,' names:',firstname,' ',middlename,' ',lastname)
			into @narration
			from `employeepayrollitems` ep
			inner join `payrollitems` p on p.itemid=ep.payrollitemid
			inner join `employeerecords` e on e.employeeid=ep.employeeid
			where ep.itemid=$itemid;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
		
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deleteemployeetraining` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deleteemployeetraining` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteemployeetraining`($trainingid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
		
			update `employeetraining`
			set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
			where `trainingid`=$trainingid;
			
			select concat('Deleted employee training id:',$trainingid,' staff id:',e. employeeid,' staff no:',staffno,
			' names:',firstname,' ',middlename,' ', lastname,' course details name:',coursename,' level:', levelname)
			into @narration
			from `employeetraining` e
			join `employeerecords` r on r.employeeid=e.employeeid
			join `courselevels` l on l.levelid=e.levelid
			where e.trainingid=$trainingid;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
			
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deleteemploymentterm` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deleteemploymentterm` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteemploymentterm`($termid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
		
			update `employmentterms`
			set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
			where `termid`=$termid;
			
			select concat('Deleted employment term id:',$termid,' name: ',termname)
			into @narration
			from `employmentterms` where `termid`=$termid;
			
			CALL `sp_saveaudittrailentry`($userid,'delete',@narration,$platform,'','',NULL);
		
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletegrievances` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletegrievances` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletegrievances`($grievanceid int,$userid int,$platform varchar(1000))
BEGIN
	
		update `grievancesdetails`
		set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
		where `grievanceid`=$grievanceid;
		
		select concat('deleted grievances id',$grievanceid)
		into @narration
		from `grievancesdetails`
		where `grievanceid`=$grievanceid;
		
		CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletejobcategory` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletejobcategory` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletejobcategory`($categoryid int,$userid int,$platform varchar(100))
BEGIN
		start transaction;
		
			update `jobcategories`
			set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
			where `categoryid`=$categoryid;
			
			SELECT CONCAT('Deleted job category  id:',$categoryid,' name:',categoryname)
			INTO @narration
			from `jobcategories` where `categoryid`=$categoryid;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
			
		commit;	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletejobgroup` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletejobgroup` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletejobgroup`($jobgroupid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			update `jobgroups`
			set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
			where `jobgroupid`=$jobgroupid;
			
			select concat('Deleted job group id :',$jobgroupid,' name: ',jobgroupname)
			into @narration
			from `jobgroups` where `jobgroupid`=$jobgroupid;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletejobnotch` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletejobnotch` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletejobnotch`($notchid int,$userid int,$platform varchar(1000))
BEGIN
		START TRANSACTION;
			UPDATE `jobnotches`
			SET `deleted`=1,`datedeleted`=NOW(),`deletedby`=$userid
			WHERE `notchid`=$notchid;
			
			SELECT CONCAT('Deleted job notch id :',$notchid,' name: ',notchname)
			INTO @narration
			FROM `jobnotches` WHERE `notchid`=$notchid;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
		COMMIT;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletejobposition` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletejobposition` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletejobposition`($positionid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
		
			update `jobpositions`
			set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
			where `positionid`=$positionid;
			
			select concat('Deleted job position id:',$positionid,' name:',positionname)
			into @narration
			from `jobpositions` where `positionid`=$positionid;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
		
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deleteleaveapplication` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deleteleaveapplication` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteleaveapplication`($applicationid int,$userid int,$platform varchar(1000))
BEGIN
		declare $employeeid int;
		declare $leavetypeid int;
		
		START TRANSACTION;
		
			UPDATE `leaveapplications`
			SET `deleted`=1,`datedeleted`=NOW(),`deletedby`=$userid
			WHERE `itemid`=$itemid;
			
			select employeeid,`leavetypeid` into $employeeid,$leavetypeid
			from `leaveapplications` where `applicationid`=$applicationid;
			
			SELECT CONCAT('Employee Id: ', $employeeid,' Staff #: ',`staffno`,' Names: ',`firstname`,' ',`middlename`,' ',`lastname`) 
			INTO @employeedetails
			FROM `employeerecords`
			WHERE `employeeid`=$employeeid;
			
			SELECT CONCAT('Leave Id:',$leavetypeid,' name: ',`leavename`)
			INTO @leavedetails
			FROM `leavetypes` WHERE `leaveid`=$leavetypeid;
			
			SELECT CONCAT('Deleted leave application id:',$applicationid,' ',@employeedetails,@leavedetails)
			INTO @narration
			FROM `inventoryitems`
			WHERE `itemid`=$itemid;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
			
		COMMIT;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deleteleaveapprovalflow` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deleteleaveapprovalflow` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteleaveapprovalflow`($flowid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
		
			update `leaveapprovalflows`
			set `deleted`=1,`deletedby`=$userid,`datedelete`=now()
			where `flowid`=$flowid;
		
			select concat('Deleted leave approval flow id:',$flowid) 
			into @narration;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
		
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deleteleavetype` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deleteleavetype` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteleavetype`($leaveid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
		
			update `leavetypes`
			set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
			where `leaveid`=$leaveid;
			
			select concat('Deleted leave type id',$leaveid,' name:', `leavename`)
			into @narration 
			from `leavetypes` 
			where `leaveid`=$leaveid;
			
			CALL `sp_saveaudittrailentry`($userid,'delete',@narration,$platform,'','',NULL);
			
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletepayrollitem` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletepayrollitem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletepayrollitem`($itemid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			UPDATE `payrollitems`
			SET `deleted`=1,`datedeleted`=NOW(),`deletedby`=$userid
			WHERE `itemid`=$itemid;
			
			SELECT CONCAT('Deleted item id:',$itemid,' name:',itemname)
			INTO @narration
			FROM `payrollitems` WHERE `itemid`=$itemid;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
		
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletepayrollitemgroup` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletepayrollitemgroup` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletepayrollitemgroup`($groupid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
		
			update `payrollitemgroups`
			set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
			where `groupid`=$groupid;
			
			select concat('Deleted payroll item group id:',$groupid,' name:',groupname)
			into @narration
			from `payrollitemgroups`
			where `groupid`=$groupid;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
			
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletepublicholiday` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletepublicholiday` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletepublicholiday`($id int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			update `publicholidays`
			set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
			where `id`=$id;
			
			select concat('Deleted public holiday id ',$id,' name: ',holidayname)
			into @narration
			from `publicholidays`
			where `id`=$id;
			
			CALL `sp_saveaudittrailentry`($userid,'Delete',@narration,$platform,'','',NULL); 
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deleterole` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deleterole` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleterole`(`$roleid` INT, `$userid` INT)
BEGIN
	update `roles` 
	set `deleted`=1, `deletedby`=$userid, `lastdatemodified`=now(), `lastmodifiedby`=$userid
	where `roleid`=$roleid;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletesalarystructure` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletesalarystructure` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletesalarystructure`($structureid int,$userid int,$platform varchar(50))
BEGIN
		start transaction;
			update `jobsalarystructures`
			set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
			where `structureid`=$structureid;
			
			select concat('Deleted salary structure id:',$structureid)
			into @narration;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
		
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deleteuser` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deleteuser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteuser`(`$id` INT, `$userid` INT)
BEGIN
	update `user` set `accountactive`=0,`lastmodifiedon`=now(),`lastmodifiedby`=$userid, `reasoninactive`='Account deleted'
	where `id`=$id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_deletexternalemployeeexperience` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_deletexternalemployeeexperience` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletexternalemployeeexperience`($id int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
		
			update `employeeexternalworkingexperience`
			set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid
			where `id`=$id;
			
			select concat('Deleted external employee experience id:',$id,' employee id:',e.employeeid,' staff no:',staffno,' names:',
			firstname, ' ',middlename,' ',lastname,' for organization ',organization,' position:',`position`)
			into @narration
			from `employeeexternalworkingexperience` e
			join `employeerecords` r on r.employeeid=e.employeeid
			where `id`=$id;
			
			CALL `sp_saveaudittrailentry`($userid,'deleted',@narration,$platform,'','',NULL);
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_disableuseraccount` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_disableuseraccount` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_disableuseraccount`(`$id` INT, `$reason` VARCHAR(500), `$userid` INT)
BEGIN
	update `user` set `accountactive`=0,`reasoninactive`=$reason,`lastmodifiedby`=$userid,`lastmodifiedon`=now()
	where `id`=$id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_enableuseraccount` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_enableuseraccount` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_enableuseraccount`(`$id` INT, `$userid` INT)
BEGIN
	update `user` set `accountactive`=1, `lastmodifiedon`=now(),`lastmodifiedby`=$userid
	where `id`=$id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_filterchargeableitems` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_filterchargeableitems` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_filterchargeableitems`($category varchar(50))
BEGIN
		if $category='all' then
			select * from `chargeableitems`
			where `deleted`=0
			order by `recurring`, `itemname`;
		else
			select case when $category='recurring' then 1 else 0 end into @recurring;
			SELECT * FROM `chargeableitems`
			WHERE `deleted`=0 and `recurring`=@recurring
			ORDER BY `itemname`;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_filteremployees` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_filteremployees` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_filteremployees`($staffno varchar(50),$staffname varchar(50),$regdocno varchar(50),$pinno varchar(50),$nssfno varchar(50),$nhifno varchar(50),
	$employmentstatus varchar(50),$gender varchar(50),$disability varchar(50),$onpayroll varchar(50),$category int,$terms int,$employeeposition int,
	$jobgroup int,$notch int,$salutation int,$religion int,$registrationdocument int
)
BEGIN
		set $staffno=concat('%',$staffno,'%');
		set $staffname=CONCAT('%',$staffname,'%');
		set $regdocno=CONCAT('%',$regdocno,'%');
		set $pinno=CONCAT('%',$pinno,'%');
		set $nssfno=CONCAT('%',$nssfno,'%');
		set $nhifno=CONCAT('%',$nhifno,'%');
		
		-- select $staffno staffno,$staffname staffname,$regdocno regdocno,$pinno pinno,$nssfno nssfno,$nhifno nhifno;
		
		if $employmentstatus='all' then
			if $gender='all' then
				if $disability='all' then 
					if $onpayroll='all' then 
						select * from `employeerecords`
						where 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` like $staffno and 
						(`firstname` like $staffname OR `middlename` like $staffname or `lastname` like $staffname) and 
						`iddocreferenceno` like $regdocno and `pinno` like $pinno and `nssfno` like $nssfno and `nhifno` like $nhifno
						order by `firstname`,`middlename`,`lastname`;
					else
						-- Convert on payroll to number i.e 1 or 0
						set $onpayroll=$onpayroll+0;
						SELECT * FROM `employeerecords`
						WHERE 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` LIKE $staffno AND 
						(`firstname` LIKE $staffname OR `middlename` LIKE $staffname OR `lastname` LIKE $staffname) AND 
						`iddocreferenceno` LIKE $regdocno AND `pinno` LIKE $pinno AND `nssfno` LIKE $nssfno AND `nhifno` LIKE $nhifno
						AND onpayroll=$onpayroll
						ORDER BY `firstname`,`middlename`,`lastname`;
					end if;
				else
				-- Filter by disability
					set $disability=$disability+0;
					IF $onpayroll='all' THEN 
						SELECT * FROM `employeerecords`
						WHERE 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` LIKE $staffno AND 
						(`firstname` LIKE $staffname OR `middlename` LIKE $staffname OR `lastname` LIKE $staffname) AND 
						`iddocreferenceno` LIKE $regdocno AND `pinno` LIKE $pinno AND `nssfno` LIKE $nssfno AND `nhifno` LIKE $nhifno
						and `disabled`=$disability
						ORDER BY `firstname`,`middlename`,`lastname`;
					ELSE
						-- Convert on payroll to number i.e 1 or 0
						SET $onpayroll=$onpayroll+0;
						SELECT * FROM `employeerecords`
						WHERE 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` LIKE $staffno AND 
						(`firstname` LIKE $staffname OR `middlename` LIKE $staffname OR `lastname` LIKE $staffname) AND 
						`iddocreferenceno` LIKE $regdocno AND `pinno` LIKE $pinno AND `nssfno` LIKE $nssfno AND `nhifno` LIKE $nhifno
						AND onpayroll=$onpayroll AND `disabled`=$disability
						ORDER BY `firstname`,`middlename`,`lastname`;
					END IF;
				end if;
			else
			-- Filter by Gender
				IF $disability='all' THEN 
					IF $onpayroll='all' THEN 
						SELECT * FROM `employeerecords`
						WHERE 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` LIKE $staffno AND 
						(`firstname` LIKE $staffname OR `middlename` LIKE $staffname OR `lastname` LIKE $staffname) AND 
						`iddocreferenceno` LIKE $regdocno AND `pinno` LIKE $pinno AND `nssfno` LIKE $nssfno AND `nhifno` LIKE $nhifno
						and `gender`=$gender
						ORDER BY `firstname`,`middlename`,`lastname`;
					ELSE
						-- Convert on payroll to number i.e 1 or 0
						SET $onpayroll=$onpayroll+0;
						SELECT * FROM `employeerecords`
						WHERE 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` LIKE $staffno AND 
						(`firstname` LIKE $staffname OR `middlename` LIKE $staffname OR `lastname` LIKE $staffname) AND 
						`iddocreferenceno` LIKE $regdocno AND `pinno` LIKE $pinno AND `nssfno` LIKE $nssfno AND `nhifno` LIKE $nhifno
						AND onpayroll=$onpayroll AND `gender`=$gender
						ORDER BY `firstname`,`middlename`,`lastname`;
					END IF;
				ELSE
				-- Filter by disability
					SET $disability=$disability+0;
					IF $onpayroll='all' THEN 
						SELECT * FROM `employeerecords`
						WHERE 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` LIKE $staffno AND 
						(`firstname` LIKE $staffname OR `middlename` LIKE $staffname OR `lastname` LIKE $staffname) AND 
						`iddocreferenceno` LIKE $regdocno AND `pinno` LIKE $pinno AND `nssfno` LIKE $nssfno AND `nhifno` LIKE $nhifno
						AND `disabled`=$disability AND `gender`=$gender
						ORDER BY `firstname`,`middlename`,`lastname`;
					ELSE
						-- Convert on payroll to number i.e 1 or 0
						SET $onpayroll=$onpayroll+0;
						SELECT * FROM `employeerecords`
						WHERE 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` LIKE $staffno AND 
						(`firstname` LIKE $staffname OR `middlename` LIKE $staffname OR `lastname` LIKE $staffname) AND 
						`iddocreferenceno` LIKE $regdocno AND `pinno` LIKE $pinno AND `nssfno` LIKE $nssfno AND `nhifno` LIKE $nhifno
						AND onpayroll=$onpayroll AND `disabled`=$disability AND `gender`=$gender
						ORDER BY `firstname`,`middlename`,`lastname`;
					END IF;
				END IF;
			end if;
		else
		-- filter by employee status
			IF $gender='all' THEN
				IF $disability='all' THEN 
					IF $onpayroll='all' THEN 
						SELECT * FROM `employeerecords`
						WHERE 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` LIKE $staffno AND 
						(`firstname` LIKE $staffname OR `middlename` LIKE $staffname OR `lastname` LIKE $staffname) AND 
						`iddocreferenceno` LIKE $regdocno AND `pinno` LIKE $pinno AND `nssfno` LIKE $nssfno AND `nhifno` LIKE $nhifno
						and `status`=$employmentstatus
						ORDER BY `firstname`,`middlename`,`lastname`;
					ELSE
						-- Convert on payroll to number i.e 1 or 0
						SET $onpayroll=$onpayroll+0;
						SELECT * FROM `employeerecords`
						WHERE 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` LIKE $staffno AND 
						(`firstname` LIKE $staffname OR `middlename` LIKE $staffname OR `lastname` LIKE $staffname) AND 
						`iddocreferenceno` LIKE $regdocno AND `pinno` LIKE $pinno AND `nssfno` LIKE $nssfno AND `nhifno` LIKE $nhifno
						AND onpayroll=$onpayroll AND `status`=$employmentstatus
						ORDER BY `firstname`,`middlename`,`lastname`;
					END IF;
				ELSE
				-- Filter by disability
					SET $disability=$disability+0;
					IF $onpayroll='all' THEN 
						SELECT * FROM `employeerecords`
						WHERE 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` LIKE $staffno AND 
						(`firstname` LIKE $staffname OR `middlename` LIKE $staffname OR `lastname` LIKE $staffname) AND 
						`iddocreferenceno` LIKE $regdocno AND `pinno` LIKE $pinno AND `nssfno` LIKE $nssfno AND `nhifno` LIKE $nhifno
						AND `disabled`=$disability AND `status`=$employmentstatus
						ORDER BY `firstname`,`middlename`,`lastname`;
					ELSE
						-- Convert on payroll to number i.e 1 or 0
						SET $onpayroll=$onpayroll+0;
						SELECT * FROM `employeerecords`
						WHERE 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` LIKE $staffno AND 
						(`firstname` LIKE $staffname OR `middlename` LIKE $staffname OR `lastname` LIKE $staffname) AND 
						`iddocreferenceno` LIKE $regdocno AND `pinno` LIKE $pinno AND `nssfno` LIKE $nssfno AND `nhifno` LIKE $nhifno
						AND onpayroll=$onpayroll AND `disabled`=$disability AND `status`=$employmentstatus
						ORDER BY `firstname`,`middlename`,`lastname`;
					END IF;
				END IF;
			ELSE
			-- Filter by Gender
				IF $disability='all' THEN 
					IF $onpayroll='all' THEN 
						SELECT * FROM `employeerecords`
						WHERE 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` LIKE $staffno AND 
						(`firstname` LIKE $staffname OR `middlename` LIKE $staffname OR `lastname` LIKE $staffname) AND 
						`iddocreferenceno` LIKE $regdocno AND `pinno` LIKE $pinno AND `nssfno` LIKE $nssfno AND `nhifno` LIKE $nhifno
						AND `gender`=$gender AND `status`=$employmentstatus
						ORDER BY `firstname`,`middlename`,`lastname`;
					ELSE
						-- Convert on payroll to number i.e 1 or 0
						SET $onpayroll=$onpayroll+0;
						SELECT * FROM `employeerecords`
						WHERE 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` LIKE $staffno AND 
						(`firstname` LIKE $staffname OR `middlename` LIKE $staffname OR `lastname` LIKE $staffname) AND 
						`iddocreferenceno` LIKE $regdocno AND `pinno` LIKE $pinno AND `nssfno` LIKE $nssfno AND `nhifno` LIKE $nhifno
						AND onpayroll=$onpayroll AND `gender`=$gender AND `status`=$employmentstatus
						ORDER BY `firstname`,`middlename`,`lastname`;
					END IF;
				ELSE
				-- Filter by disability
					SET $disability=$disability+0;
					IF $onpayroll='all' THEN 
						SELECT * FROM `employeerecords`
						WHERE 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` LIKE $staffno AND 
						(`firstname` LIKE $staffname OR `middlename` LIKE $staffname OR `lastname` LIKE $staffname) AND 
						`iddocreferenceno` LIKE $regdocno AND `pinno` LIKE $pinno AND `nssfno` LIKE $nssfno AND `nhifno` LIKE $nhifno
						AND `disabled`=$disability AND `gender`=$gender AND `status`=$employmentstatus
						ORDER BY `firstname`,`middlename`,`lastname`;
					ELSE
						-- Convert on payroll to number i.e 1 or 0
						SET $onpayroll=$onpayroll+0;
						SELECT * FROM `employeerecords`
						WHERE 
						($category=0 OR categoryid=$category) AND 
						($terms=0 OR `termid`=$terms ) AND 
						($employeeposition=0 OR `positionid`=$employeeposition) AND
						($jobgroup=0 OR `jobgroupid`=$jobgroup) AND
						($notch=0 OR `notchid`=$notch) AND 
						($salutation=0 OR `salutationid`=$salutation) AND 
						($religion=0 OR `religionid`=$religion) AND
						($registrationdocument=0 OR `iddocumentid`=$registrationdocument) AND 
						`staffno` LIKE $staffno AND 
						(`firstname` LIKE $staffname OR `middlename` LIKE $staffname OR `lastname` LIKE $staffname) AND 
						`iddocreferenceno` LIKE $regdocno AND `pinno` LIKE $pinno AND `nssfno` LIKE $nssfno AND `nhifno` LIKE $nhifno
						AND onpayroll=$onpayroll AND `disabled`=$disability AND `gender`=$gender AND `status`=$employmentstatus
						ORDER BY `firstname`,`middlename`,`lastname`;
					END IF;
				END IF;
			END IF;
		end if;											
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_filterinventorycategory` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_filterinventorycategory` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_filterinventorycategory`($typeid int)
BEGIN
		select * from `inventorycategory`
		where `typeid`=$typeid 
		order by `categoryname`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getallemployees` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getallemployees` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getallemployees`()
BEGIN
		select * from `employeerecords`
		order by firstname,middlename,lastname;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getallshiftdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getallshiftdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getallshiftdetails`()
BEGIN
		select * from `shiftdetails`
		order by `shiftid`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getallusers` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getallusers` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getallusers`()
BEGIN
	select u.*, ifnull(concat(a.firstname,' ',a.middlename,' ',a.lastname),'System') as addedbyname 
	from `user` u  left OUTER join `user` a on u.addedby=a.id -- where u.`accountactive`=1 
	order by u.`firstname`,u.`middlename`,u.`lastname`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getbankbranchdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getbankbranchdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getbankbranchdetails`($branchid int)
BEGIN
		select * from `bankbranches`
		where `branchid`=$branchid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getbankbranches` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getbankbranches` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getbankbranches`($bankid int)
BEGIN
	
		if $bankid=0 then
			select r.*, b.bankname, concat(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname
			from `bankbranches` r inner join `banks` b on b.bankid=r.bankid
			inner join `user` u on u.userid=r.addedby
			where r.deleted=0
			order by bankname,branchname;
		else
			SELECT r.*, b.bankname, CONCAT(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname
			FROM `bankbranches` r INNER JOIN `banks` b ON b.bankid=r.bankid
			INNER JOIN `user` u ON u.userid=r.addedby
			WHERE r.deleted=0 and r.bankid=$bankid
			ORDER BY bankname,branchname;
		end if;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getbankdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getbankdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getbankdetails`($bankid int)
BEGIN
		select * from `banks`
		where `bankid`=$bankid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getbankremittanceadvises` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getbankremittanceadvises` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getbankremittanceadvises`($payrollmonth varchar(50),$payrollyear int,$bankid int)
BEGIN
		if $bankid=0 then 
			select staffno `Staff Number`, concat(firstname,' ',middlename,' ',lastname) as `Full Name`,
			bankcode `Bank Code`,`bankname` `Bank Name`,`branchcode` `Branch Code`,`branchname` `Branch Name`,
			`accountno` `Account Number`,format(`amount`,2) `Amount`
			from `employeerecords` e
			inner join `payrollbankremittances` r on r.employeeid=e.employeeid 
			inner join `payrolldetails` pd on pd.payrollid=r.payrollid
			inner join `bankbranches` br on br.branchid=r.branchid
			inner join `banks` b on b.bankid=br.bankid
			where r.deleted=0 and pd.`month`=$payrollmonth and pd.`year`=$payrollyear
			order by bankname,branchname,staffno;
		else
			select staffno `Staff Number`, concat(firstname,' ',middlename,' ',lastname) as `Full Name`,
			bankcode `Bank Code`,`bankname` `Bank Name`,`branchcode` `Branch Code`,`branchname` `Branch Name`,
			`accountno` `Account Number`,format(`amount`,2) `Amount`
			from `employeerecords` e
			inner join `payrollbankremittances` r on r.employeeid=e.employeeid 
			inner join `payrolldetails` pd on pd.payrollid=r.payrollid
			inner join `bankbranches` br on br.branchid=r.branchid
			inner join `banks` b on b.bankid=br.bankid
			where r.deleted=0  and pd.`month`=$payrollmonth and pd.`year`=$payrollyear
			and b.bankid=$bankid
			order by bankname,branchname,staffno;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getbanks` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getbanks` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getbanks`()
BEGIN
		select b.*, 
		-- ifnull((select count(*) from `bankbranches` br where b.bankid=br.bankid and br.deleted=0),0) as branches,
		count(branchid) as branches,
		concat(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname
		from `banks` b 
		inner join `user` u on u.userid=b.addedby
		left outer join `bankbranches` br on b.bankid=br.bankid and br.deleted=0
		where b.`deleted`=0 
		group by b.bankid
		order by `bankname`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getbranchdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getbranchdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getbranchdetails`($branchid int)
BEGIN
		select * from `branches`
		where `branchid`=$branchid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getbranches` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getbranches` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getbranches`()
BEGIN
		select b.*, concat(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname, 0 as properties, 0 as units, 0 as tenants
		from `branches` b
		inner join `user` u on u.`userid`=b.`addedby`
		where ifnull(b.`deleted`,0)=0
		order by `branchname`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getchargeableitemdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getchargeableitemdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getchargeableitemdetails`($itemid int)
BEGIN
		select * 
		from `chargeableitems`
		where `itemid`=$itemid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getchargeableitems` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getchargeableitems` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getchargeableitems`()
BEGIN
		select c .*, concat(u.firstname,' ',u.middlename,' ',u.lastname) addedbyname
		from `chargeableitems` c
		inner join `user` u on u.userid=c.addedby
		where ifnull(`deleted`,0)=0
		order by `itemname`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getcourselevels` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getcourselevels` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getcourselevels`()
BEGIN
		select * from `courselevels`
		where deleted=0
		order by `hierarchy`;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getcreditordetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getcreditordetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getcreditordetails`($creditorid int)
BEGIN
		select * 
		from `creditors`
		where `creditorid`=$creditorid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getcreditors` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getcreditors` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getcreditors`($payrollcreditors bool)
BEGIN
		if $payrollcreditors=1 then
			select c.*, concat(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname, 0 as deducted, 0 as remitted
			from `creditors` c
			inner join `user` u on u.userid=c.addedby
			where `payrollcreditor`=1 and c.deleted=0
			order by `creditorname`;
		else
			select c.*, concat(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname, 0 as deducted, 0 as remitted
			from `creditors` c
			inner join `user` u on u.userid=c.addedby
			where c.deleted=0
			order by `creditorname`;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getdepartmentactiveemployees` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getdepartmentactiveemployees` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getdepartmentactiveemployees`($departmentid int)
BEGIN
		select e.*, `positionname`
		from `employeerecords` e
		join `jobpositions` j on j.`positionid`=e.`positionid`
		where `status`='active' and `departmentid`=$departmentid
		order by `firstname`,`middlename`,`lastname`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getdepartmentdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getdepartmentdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getdepartmentdetails`($departmentid int)
BEGIN
		select * from `departments`
		where `departmentid`=$departmentid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getdepartments` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getdepartments` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getdepartments`()
BEGIN
		select d.*,concat(`firstname`,' ',`middlename`,' ',`lastname`) as addedbyname,0 as employees
		
		from `departments` d
		inner join `user` u on u.userid = d.addedby
		WHERE d.`deleted`=0
		ORDER BY `departmentname`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getdisciplinaryactionsrequired` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getdisciplinaryactionsrequired` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getdisciplinaryactionsrequired`()
BEGIN
		select * 
		from `disciplinaryrequiredactions`
		where `deleted`=0
		order by `actionname`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getdisciplinarycategories` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getdisciplinarycategories` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getdisciplinarycategories`()
BEGIN
		select * from `disciplinarycategories`
		where `deleted`=0
		order by `categoryname`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getdisciplinarytypes` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getdisciplinarytypes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getdisciplinarytypes`()
BEGIN
		select * from `disciplinarytypes`
		where `deleted`=0
		order by `typename`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemailconfiguration` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemailconfiguration` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemailconfiguration`()
BEGIN
	select * from `emailconfiguration`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeeattachmentdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeeattachmentdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeeattachmentdetails`($id int)
BEGIN
		select * 
		from `employeeattachments`
		where id=$id;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeeattachments` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeeattachments` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeeattachments`($employeeid int)
BEGIN
		select e.*, documentname,concat(firstname,' ',middlename,' ',lastname) addedbyname
		from `employeeattachments` e
		join `employeeattachabledocuments` d on d.documentid=e.documentid
		join `employeerecords` r on r.employeeid=e.employeeid
		where e.employeeid=$employeeid and e.deleted=0
		order by documentname;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeebeneficiaries` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeebeneficiaries` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeebeneficiaries`($employeeid int)
BEGIN
		select b.*, concat(u.firstname,' ',u.middlename,' ',u.lastname) addedbyname,
		r.`description` relationship
		from `employeebeneficiaries` b
		join `user` u on u.userid=b.addedby
		join `relationships` r on r.`relationshipid`=b.relationshipid
		where `employeeid`=$employeeid and b.deleted=0
		order by b.fullname;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeebeneficiarydetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeebeneficiarydetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeebeneficiarydetails`($beneficiaryid int)
BEGIN
		select * from `employeebeneficiaries`
		where `beneficiaryid`=$beneficiaryid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeebeneficiarytotalpercentage` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeebeneficiarytotalpercentage` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeebeneficiarytotalpercentage`($employeeid int,$beneficiaryid int)
BEGIN
		select ifnull(sum(`percentage`),0) as percentage
		from `employeebeneficiaries`
		where `employeeid`=$employeeid and `beneficiaryid`!=$beneficiaryid and `deleted`=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeedaashboardsummaries` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeedaashboardsummaries` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeedaashboardsummaries`($employeeid int)
BEGIN
		SELECT COUNT(*) INTO @beneficiaries FROM `employeebeneficiaries` WHERE `employeeid`=$employeeid;
		SELECT COUNT(*) INTO @dependants FROM `employeedependants` WHERE `employeeid`=$employeeid;

		SELECT @beneficiaries AS beneficiaries,@dependants AS dependant;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeedepartmentcolleagues` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeedepartmentcolleagues` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeedepartmentcolleagues`($employeeid int)
BEGIN
		declare $departmentid int;
		select departmentid into $departmentid
		from `employeerecords` where `employeeid`=$employeeid;
		
		select * 
		from `employeerecords`
		where departmentid=$departmentid and `status`='active' and employeeid!=$employeeid
		order by firstname,middlename,lastname;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeedependantdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeedependantdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeedependantdetails`($dependantid int)
BEGIN
		select * from `employeedependants`
		where `dependantid`=$dependantid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeedependants` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeedependants` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeedependants`($employeeid int)
BEGIN
		select d.*, concat(firstname,' ',middlename,' ',lastname) addedbyname,
		description as relationship,`documenttypename` documentname
		from `employeedependants` d
		join `user` u on u.userid=d.addedby
		join `relationships` r on r.relationshipid=d.relationshipid
		join `registrationdocuments` i on i.`documentid`=d.`iddocumentid`
		where d.deleted=0 and d.employeeid=$employeeid
		order by `dependantname`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeedetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeedetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeedetails`($employeeid int)
BEGIN
		select e.*, departmentname,positionname,`documenttypename`, `termname`,br.bankid,
		0 as leavedaysallocated, 0 as leavedaystaken
		from `employeerecords` e
		inner join `departments` d on d.`departmentid`=e.departmentid
		inner join `jobpositions` p on p.positionid=e.positionid
		inner join `registrationdocuments` r on r.`documentid`=e.`iddocumentid`
		inner join `employmentterms` t on t.`termid`=e.`termid`
		inner join `bankbranches` br on br.branchid=e.bankbranchid
		inner join `banks` b on b.bankid=br.`bankid`
		where `employeeid`=$employeeid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeedetailsbystaffno` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeedetailsbystaffno` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeedetailsbystaffno`($staffno varchar(50))
BEGIN
		select `supportemail`,`supportphone`,`essportalurl`,`companyname`
		into @supportemail,@supportphone,@essportalurl,@companyname
		from `institution`;
		
		select *, @supportemail supportemail,@supportphone supportphone,@essportalurl essportalurl,
		@companyname companyname
		from `employeerecords`
		where staffno=$staffno;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeedisciplinarydetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeedisciplinarydetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeedisciplinarydetails`($incidentid int)
BEGIN
		select * 
		from `employeedisciplinarycases`
		where incidentid=$incidentid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeedisciplinaryincidents` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeedisciplinaryincidents` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeedisciplinaryincidents`($employeeid int)
BEGIN
		select i.*, typename, categoryname, actionname, concat(firstname, ' ',middlename,' ',lastname) addedbyname
		from `employeedisciplinarycases` i
		join `disciplinarycategories` c on c.categoryid=i.categoryid
		join `disciplinaryrequiredactions` a on a.actionid=i.actionid
		join `disciplinarytypes` t on t.typeid=i.typeid
		join `user` u on u.userid=i.addedby
		where i.employeeid=$employeeid and i.deleted=0
		order by i.incidentdate desc;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeedocumentsattachable` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeedocumentsattachable` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeedocumentsattachable`()
BEGIN
		select * from `employeeattachabledocuments`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeeexternalexperiencedetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeeexternalexperiencedetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeeexternalexperiencedetails`($id int)
BEGIN
		select * 
		from `employeeexternalworkingexperience`
		where `id`=$id;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeeexternalexperiences` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeeexternalexperiences` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeeexternalexperiences`($employeeid int)
BEGIN
		select `id`,`organization`,`position`,`startdate`,`enddate`,`duties`,e.`dateadded`,
		concat(firstname, ' ',middlename,' ',lastname) addedbyname
		from `employeeexternalworkingexperience` e
		join `user` u on u.userid=e.addedby 
		where e.employeeid=$employeeid and e.deleted=0
		order by `startdate` desc;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeegradepayrollitems` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeegradepayrollitems` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeegradepayrollitems`($employeeid int)
BEGIN
		declare $notchid int default 0;
		declare $jobgroupid int default 0;
		
		select `jobgroupid`, `notchid`
		into $jobgroupid, $notchid
		from `employeerecords` 
		where `employeeid`=$employeeid;
		
		select js.*,`itemname`
		from `jobsalarystructures` js
		inner join `payrollitems` p on p.`itemid`=js.`payrollitemid`
		where `jobgroupid`=$jobgroupid and `notchid`=$notchid and js.`deleted`=0
		and `payrollitemid`not in (select `payrollitemid` from `employeepayrollitems` where `employeeid`=$employeeid and `deleted`=0)
		order by `itemname`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeeidfromstaffno` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeeidfromstaffno` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeeidfromstaffno`($staffno varchar(50))
BEGIN
		select employeeid 
		from `employeerecords`
		where `staffno`=$staffno;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeeinternalexperience` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeeinternalexperience` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeeinternalexperience`($employeeid int)
BEGIN
		select x.id,departmentname,positionname, startdate,enddate, currentlyhere,x.dateadded,
		concat(u.firstname,' ',u.middlename,' ',u.lastname) addedbyname
		from `employeeinternalworkingexperience` x
		join `departments` d on d.departmentid=x.departmentid
		join `jobpositions` j on j.positionid=x.positionid
		join `user` u on u.userid=x.addedby
		where x.employeeid=$employeeid and x.deleted=0
		order by startdate desc,enddate desc;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeeinternalexperiencedetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeeinternalexperiencedetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeeinternalexperiencedetails`($id int)
BEGIN
		select * 
		from `employeeinternalworkingexperience`
		where `id`=$id;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeeleaveapplications` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeeleaveapplications` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeeleaveapplications`($employeeid int,$leavetypeid int)
BEGIN
		if $leavetypeid=0 then			
			select a.applicationid,`leavename`,a.`dateadded`,`startdate`,`enddate`,`daystaken`,`attachment`,`narration`,fn_getleaveapplicationstatus(a.applicationid) `status`,
			concat(r.firstname,' ',r.middlename,' ',r.lastname) relievername,
			concat(s.firstname, ' ',s.middlename, ' ',s.lastname) supervisorname
			from `leaveapplications` a
			join `employeerecords` r on r.`employeeid`=a.relieverid
			JOIN `leavetypes` t ON t.leaveid=a.leavetypeid
			join `employeerecords` s on s.`employeeid`=a.supervisorid
			where a.`deleted`=0 and a.employeeid=$employeeid
			order by a.dateadded;
		else
			SELECT a.applicationid,`leavename`,a.`dateadded`,`startdate`,`enddate`,`daystaken`,`attachment`,`narration`,fn_getleaveapplicationstatus(a.applicationid) `status`,
			CONCAT(r.firstname,' ',r.middlename,' ',r.lastname) relievername,
			CONCAT(s.firstname, ' ',s.middlename, ' ',s.lastname) supervisorname
			FROM `leaveapplications` a
			JOIN `employeerecords` r ON r.`employeeid`=a.relieverid
			JOIN `employeerecords` s ON s.`employeeid`=a.supervisorid
			join `leavetypes` t on t.leaveid=a.leavetypeid
			WHERE a.`deleted`=0 AND a.employeeid=$employeeid and a.leavetypeid=$leavetypeid
			ORDER BY a.dateadded;
		end if;		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeeleavedetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeeleavedetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeeleavedetails`($employeeid int,$leavetypeid int)
BEGIN
		select `leavename`,`applywithoutallocation`,`requiresattachment`,`canbesplit`,`systemlabel`,`allocationdays` annualallocation,`skipsholidays`,
		ifnull((select sum(`daystaken`) from `leaveapplications` where `employeeid`=$employeeid and `leavetypeid`=$leavetypeid AND `fn_getleaveapplicationstatus`(applicationid) NOT LIKE '%cancelled%'),0) daysutilized,
		ifnull((select sum(`allocation`) from `employeeleaveallocation` where `employeeid`=$employeeid and `leavetypeid`=$leavetypeid and `deleted`=0),0) daysawarded
		from `leavetypes` t
		where `leaveid`=$leavetypeid and t.deleted=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeename` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeename` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeename`($employeeid int)
BEGIN
		select concat(firstname, ' ',middlename,' ',lastname) employeename
		from `employeerecords`
		where `employeeid`=$employeeid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeepayrollitemdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeepayrollitemdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeepayrollitemdetails`($itemid int)
BEGIN
		select e.*,itemtype from `employeepayrollitems` e
		inner join `payrollitems` p on p.itemid=e.payrollitemid
		where e.`itemid`=$itemid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeepayrollitems` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeepayrollitems` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeepayrollitems`($employeeid int,$current int)
BEGIN
		IF $current = 1 THEN 
			SELECT ep.*, case when `periodic`=1 then date_add(`startdate`, interval `duration` month) else now() end enddate,
			`itemname`, `itemtype`, CONCAT(u.firstname, ' ', u.middlename, ' ', u.lastname) AS addedbyname
			FROM `employeepayrollitems` ep
			INNER JOIN `payrollitems` p ON p.itemid = ep.payrollitemid
			INNER JOIN `user` u ON u.userid = ep.addedby
			WHERE ep.employeeid = $employeeid 
			    AND (ep.periodic = 0 OR 
				(ep.periodic = 1 AND DATE_FORMAT(DATE_ADD(ep.startdate, INTERVAL ep.duration MONTH), '%Y-%m-%d') >= DATE_FORMAT(NOW(), '%Y-%m-%d')))
			    AND ep.deleted = 0  	
			ORDER BY p.itemtype, p.itemname;
		 ELSE
			SELECT ep.*, CASE WHEN `periodic`=1 THEN DATE_ADD(`startdate`, INTERVAL `duration` MONTH) ELSE NOW() END enddate,
			`itemname`, `itemtype`, CONCAT(u.firstname, ' ', u.middlename, ' ', u.lastname) AS addedbyname
			FROM `employeepayrollitems` ep
			INNER JOIN `payrollitems` p ON p.itemid = ep.payrollitemid
			INNER JOIN `user` u ON u.userid = ep.addedby
			WHERE ep.employeeid = $employeeid 
			    AND ((ep.periodic = 1 AND DATE_FORMAT(DATE_ADD(ep.startdate, INTERVAL ep.duration MONTH), '%Y-%m-%d') < DATE_FORMAT(NOW(), '%Y-%m-%d'))
			    OR ep.deleted = 1)
			ORDER BY p.itemtype, p.itemname;
		 END IF;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeepayslip` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeepayslip` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeepayslip`($payrollmonth varchar(50),$payrollyear int,$employeeid int)
BEGIN
		SELECT payrollid INTO @payrollid FROM `payrolldetails` WHERE `month`=$payrollmonth AND `year`=$payrollyear;

		SELECT 
		CASE  WHEN `itemtype`='relief' OR `itemtype`='benefit' THEN 'additional info' ELSE CONCAT(`itemtype`,'s') END itemtype, 
		itemname,FORMAT(`amount`,2) amount,
		CASE p.itemtype 
			WHEN 'payment' THEN 1
			WHEN 'deduction' THEN 2
			WHEN 'benefit' THEN 3
			ELSE 4 
		END AS sortorder 
		FROM  `payslipinformation` i
		INNER JOIN `payrolldetails` pd ON pd.payrollid=i.`payrollid`
		INNER JOIN `payrollitems` p ON p.itemid=i.`payrollitemid`
		WHERE pd.payrollid=@payrollid AND i.employeeid=$employeeid AND i.deleted=0

		UNION 

		SELECT 'bank details' `itemtype`,CONCAT(`bankname`,', ',`branchname`,' Branch, Account Number ',`accountno`) `itemname`,
		FORMAT(`amount`,2) amount,5 `sortorder`
		FROM `payrollbankremittances` r
		INNER JOIN `bankbranches` br ON br.`branchid`=r.`branchid`
		INNER JOIN `banks` b ON b.bankid=br.bankid
		WHERE r.payrollid=@payrollid AND r.employeeid=$employeeid AND r.deleted=0

		ORDER BY sortorder, itemname;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeepayslips` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeepayslips` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeepayslips`($employeeid int,$startmonth varchar(50),$startyear int,$endmonth varchar(50),$endyear int)
BEGIN
		declare $startdate date;
		declare $enddate date;
		declare $staffno varchar(50);
		
		select staffno into $staffno from `employeerecords` where `employeeid`=$employeeid;
		
		set $startdate=STR_TO_DATE(concat($startyear,'-',$startmonth,'-01'), '%Y-%m-%d');
		set $enddate=STR_TO_DATE(concat($endyear,'-',$endmonth,'-01'), '%Y-%m-%d'); 

		select $staffno staffno, p.`payrollid`,`month`,`year`,payrolldate,
		sum(if(`itemtype`='payment',`amount`,0)) totalpayments,
		SUM(IF(`itemtype`='deduction',`amount`,0)) totaldeductions, 
		(select `amount` from `payrollbankremittances` where `payrollid`=p.payrollid and `employeeid`=$employeeid and deleted=0) netsalary,
		(select concat(`bankname`,' ',`branchname`,' Acc #:',`accountno`) from `payrollbankremittances` r
		join `bankbranches` br on br.`branchid`=r.branchid 
		join `banks` b on b.bankid=br.`bankid` 
		where r.`employeeid`=$employeeid and `payrollid`=p.payrollid and r.deleted=0) paymentcenter
		from `payrolldetails` p
		join `payslipinformation` i on i.payrollid=p.payrollid
		join `payrollitems`  n on n.`itemid`=i.payrollitemid
		where employeeid=$employeeid and payrolldate between $startdate and $enddate
		and i.deleted=0
		group by p.payrollid,`month`,`year`
		order by payrolldate;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeesleaveapplications` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeesleaveapplications` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeesleaveapplications`($leavetypeid int)
BEGIN
		if $leavetypeid=0 then			
			select e.*,a.applicationid,`leavename`,a.`dateadded`,`startdate`,`enddate`,`daystaken`,`attachment`,`narration`,
			fn_getleaveapplicationstatus(a.applicationid) `status`,
			concat(r.firstname,' ',r.middlename,' ',r.lastname) relievername,
			concat(s.firstname, ' ',s.middlename, ' ',s.lastname) supervisorname
			from `leaveapplications` a
			join `employeerecords` r on r.`employeeid`=a.relieverid
			JOIN `leavetypes` t ON t.leaveid=a.leavetypeid
			join `employeerecords` s on s.`employeeid`=a.supervisorid
			join `employeerecords` e on e.employeeid=a.employeeid
			where a.`deleted`=0 
			order by a.dateadded;
		else
			SELECT e.*,a.applicationid,`leavename`,a.`dateadded`,`startdate`,`enddate`,`daystaken`,`attachment`,`narration`,
			fn_getleaveapplicationstatus(a.applicationid) `status`,
			CONCAT(r.firstname,' ',r.middlename,' ',r.lastname) relievername,
			CONCAT(s.firstname, ' ',s.middlename, ' ',s.lastname) supervisorname
			FROM `leaveapplications` a
			JOIN `employeerecords` r ON r.`employeeid`=a.relieverid
			JOIN `employeerecords` s ON s.`employeeid`=a.supervisorid
			JOIN `employeerecords` e ON e.employeeid=a.employeeid
			join `leavetypes` t on t.leaveid=a.leavetypeid
			WHERE a.`deleted`=0  and a.leavetypeid=$leavetypeid
			ORDER BY a.dateadded;
		end if;		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeesupervisors` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeesupervisors` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeesupervisors`($employeeid int)
BEGIN
		declare $employeepositionid int;
		declare $supervisorid int;
		
		select `positionid` 
		into $employeepositionid 
		from `employeerecords` where `employeeid`=$employeeid;
		
		select `reportsto` 
		into $supervisorid
		from `jobpositions` where `positionid`=$employeepositionid;
		
		select * 
		from `employeerecords` 
		where `positionid` =$supervisorid and `status`='active'
		order by firstname,middlename,lastname;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeetrainigdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeetrainigdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeetrainigdetails`($trainingid int)
BEGIN
		select * 
		from `employeetraining`
		where `trainingid`=$trainingid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemployeetraining` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemployeetraining` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemployeetraining`($employeeid int)
BEGIN
		select t.*,levelname,concat(firstname,' ',middlename,' ',lastname) addedbyname
		from `employeetraining` t
		join `user` u on u.userid=t.addedby
		join `courselevels` c on c.levelid=t.levelid
		where t.employeeid=$employeeid and t.deleted=0
		order by startdate,enddate;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemploymenttermdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemploymenttermdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemploymenttermdetails`($termid int)
BEGIN
		select * 
		from `employmentterms`
		where `termid`=$termid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getemploymentterms` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getemploymentterms` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getemploymentterms`()
BEGIN
		select t.*,concat(`firstname`,' ',`middlename`,' ',`lastname`) as addedbyname,0 as employees
		from `employmentterms` t
		inner join `user` u on u.userid=t.addedby
		where t.`deleted`=0
		order by `termname`;
	end */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getgrievancecategories` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getgrievancecategories` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getgrievancecategories`()
BEGIN
	
		-- select c.*,concat(`firstname`, ' ', `middlename`, '',`lastname`,'',`description`)addedbyname, 0 as grievances
		-- from `grievancecategory` c
		-- inner join `user` u on u.`userid`=c.`cartegoryid`
		-- where `cartegoryid`=$userid;
		
		select * from `grievancecategory`
		where `deleted`=0
		order by categoryname;
		 
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getgrievancecategorytype` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getgrievancecategorytype` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getgrievancecategorytype`()
BEGIN
	
	   select `description` from `grievancecategory`
	   where `deleted`=0
	   order by `categoryid`;
	   
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getgrievanceremedies` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getgrievanceremedies` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getgrievanceremedies`()
BEGIN
	
		SELECT * FROM `grievanceremedies`
		WHERE `deleted` = 0
		ORDER BY `remedyid`;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getgrievances` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getgrievances` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getgrievances`($grievanceid int)
BEGIN
		select g.*, concat(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname, 0 as grievance
		from `grievancesdetails` g
		inner join `user` u on u.`userid`= g.`addedby`
		where `grievanceid`=$grievanceid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getgrievancetypes` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getgrievancetypes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getgrievancetypes`($categoryid int)
BEGIN
		select * from `grievancetypes`
		where `categoryid`=$categoryid
		and `deleted`=0
		order by `typename`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getinbuiltsystemuser` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getinbuiltsystemuser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getinbuiltsystemuser`()
BEGIN
		select * from `user`
		where systemlabel='INBUILT SYSTEM ACCOUNT';
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getinstitutionaldetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getinstitutionaldetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getinstitutionaldetails`()
BEGIN
		select * from `institution`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getjobcategories` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getjobcategories` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getjobcategories`()
BEGIN
		select c.*,concat(firstname,' ',middlename,' ',lastname) as addedbyname, 0 as employees
		from `jobcategories` c
		inner join `user` u on u.userid=c.addedby
		where c.deleted=0
		order by categoryname;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getjobcategorydetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getjobcategorydetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getjobcategorydetails`($categoryid int)
BEGIN
		select * 
		from `jobcategories`
		where `categoryid`=$categoryid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getjobgroupdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getjobgroupdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getjobgroupdetails`($jobgroupid int)
BEGIN
		select * from `jobgroups`
		where `jobgroupid`=$jobgroupid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getjobgroups` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getjobgroups` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getjobgroups`()
BEGIN
		select j.*, concat(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname
		from `jobgroups` j
		inner join `user` u on u.userid=j.addedby
		where j.deleted=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getjobnotchdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getjobnotchdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getjobnotchdetails`($notchid int)
BEGIN
		select * from `jobnotches`
		where `notchid`=$notchid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getjobnotches` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getjobnotches` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getjobnotches`()
BEGIN
		select n.*, concat(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname
		from `jobnotches` n 
		inner join `user` u on u.userid=n.addedby
		where n.deleted=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getjobpositiondetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getjobpositiondetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getjobpositiondetails`($positionid int)
BEGIN
		select * from `jobpositions`
		where `positionid`=$positionid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getjobpositions` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getjobpositions` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getjobpositions`()
BEGIN
		select p.*, concat(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname,
		js.jobgroupname as startjobgroupname, je.jobgroupname as endjobgroupname,
		sn.notchname as startnotchname, en.notchname as endnotchname,
		ifnull(j.positionname,'<Top>') as reportstoname, 0 as strength
		
		from `jobpositions` p
		
		inner join `user` u on u.userid=p.addedby
	
		inner join `jobgroups` js on js.`jobgroupid`=p.`startjobgroupid`
		inner join `jobgroups` je on je.`jobgroupid`=p.`endjobgroupid`
		
		inner join `jobnotches` sn on sn.`notchid`=p.`startnotchid`
		inner join `jobnotches` en on en.notchid=p.`endnotchid`
		
		left outer join `jobpositions` j on j.positionid=p.reportsto
		
		where p.deleted=0
		order by reportsto, positionname;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getleaveapplicationapprovalstatuses` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getleaveapplicationapprovalstatuses` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getleaveapplicationapprovalstatuses`($applicationid int)
BEGIN
		select l.id approvalid,p.applicationid, `approvallevel`,`hierarchy`, 
		case when ap.status is not null then 1 else 0 end done, 
		ifnull(ap.status,'pending') `status`,
		ap.statusdate, ap.narration
		from `leaveapprovalflows` f
		join `leavetypes` t on  t.approvalflow=f.flowid
		join `leaveapplications` p on p.`leavetypeid`=t.leaveid and p.approvalflowid=f.flowid
		join `leaveapprovallevels` l on l.`flowid`=f.flowid 
		left outer join `leaveapproval` ap on ap.`approvallevelid`=l.`id` and ap.`applicationid`=p.applicationid
		where p.`applicationid`=$applicationid and l.deleted=0
		order by `hierarchy`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getleaveapplicationcurrentapprovallevel` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getleaveapplicationcurrentapprovallevel` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getleaveapplicationcurrentapprovallevel`($applicationid int)
BEGIN
		declare $leavetypeid int;
		declare $supervisorid int;
		declare $hrmanagerpositionid int;
		declare $topmanagementpositionid int;
		
		select `leavetypeid`,supervisorid 
		into $leavetypeid,$supervisorid 
		from `leaveapplications` where `applicationid`=$applicationid;
		
		select positionid into $hrmanagerpositionid
		from `jobpositions` where `systemlabel`='HR MANAGER';
		
		SELECT positionid INTO $topmanagementpositionid
		FROM `jobpositions` WHERE `systemlabel`='SENIOR MANAGEMENT';
		
		select  `approvallevel`,`hierarchy`,
		
		case `approvallevel`  
			when 'supervisor' then
				(select concat(`firstname`,' ',`middlename`,' ',`lastname`,',',`mobile`,',',`emailaddress`) 
				from `employeerecords` where `employeeid`=$supervisorid)
			when 'hrmanager' then 
				(SELECT group_concat(CONCAT(`firstname`,' ',`middlename`,' ',`lastname`,',',`mobile`,',',`emailaddress`))
				FROM `employeerecords` WHERE `employeeid` in(select employeeid from `employeerecords` where `positionid`=$hrmanagerpositionid))
			when 'topmanagement' then
				(SELECT GROUP_CONCAT(CONCAT(`firstname`,' ',`middlename`,' ',`lastname`,',',`mobile`,',',`emailaddress`))
				FROM `employeerecords` WHERE `employeeid` IN(SELECT employeeid FROM `employeerecords` WHERE `positionid`=$topmanagementpositionid))
		end as approvaluser
		
		from `leavetypes` t
		join `leaveapprovalflows` f on f.flowid=t.approvalflow
		join `leaveapprovallevels` l on  l.flowid=f.flowid 
		join `leaveapplications` p on p.approvalflowid=f.flowid
		where t.`leaveid`=$leavetypeid 
		and l.id not in(select `approvallevelid` from `leaveapproval` where `applicationid`=$applicationid and `status`='approved')
		order by `hierarchy`
		limit 1;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getleaveapplicationdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getleaveapplicationdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getleaveapplicationdetails`($applicationid int)
BEGIN
		select * 
		from `leaveapplications`
		where `applicationid`=$applicationid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getleaveapplicationemployeedetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getleaveapplicationemployeedetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getleaveapplicationemployeedetails`($applicationid int)
BEGIN
		declare $companyname varchar(50);
		
		select companyname into $companyname from `institution`;
		
		select $companyname as companyname,concat(e.firstname,' ',e.middlename,' ',e.lastname) employeename,e.`emailaddress`,e.staffno,
		leavename,date_format(startdate,'%d-%b-%Y') startdate,date_format(enddate,'%d-%b-%Y') enddate,daystaken,narration,
		concat(r.firstname,' ',r.middlename,' ', r.lastname) relievername, r.emailaddress relieveremailaddress
		from `leaveapplications` a
		join `employeerecords` e on a.employeeid=e.employeeid
		join  `employeerecords` r on r.employeeid=a.relieverid
		join `leavetypes` t on t.leaveid=a.leavetypeid
		where a.applicationid=$applicationid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getleaveapplicationstatus` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getleaveapplicationstatus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getleaveapplicationstatus`($applicationid int)
BEGIN
		select fn_getleaveapplicationstatus($applicationid) applicationstatus;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getleaveapplicationtimeline` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getleaveapplicationtimeline` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getleaveapplicationtimeline`($applicationid int)
BEGIN
		SELECT 0 hierarchy, 'Application' activity,DATE_FORMAT(a.`dateadded`,'%d-%b-%Y') `date`,
		DATE_FORMAT(a.dateadded, '%h:%i %p') `time`,'approved' `status`,
		CONCAT(u.firstname, ' ',u.middlename,' ',u.lastname) `user`,
		-- CONCAT(leavename,', Dates: ',DATE_FORMAT(a.startdate,'%d-%b-%Y'),' - ',DATE_FORMAT(a.enddate,'%d-%b-%Y'),', Duration: ',daystaken) narration
		a.narration
		FROM `leaveapplications` a
		JOIN `user` u ON u.`userid`=a.`addedby`
		JOIN `leavetypes` t ON t.leaveid=a.`leavetypeid`
		WHERE `applicationid`=$applicationid

		UNION 
		 
		SELECT `hierarchy`, CONCAT(CASE `approvallevel` 
			WHEN 'supervisor' THEN 'Supervisor'
			WHEN 'hrmanager' THEN 'Human Resource Manager'
			WHEN 'topmanagement' THEN 'Senior Management'
		END, ' Approval') activity, DATE_FORMAT(`statusdate`,'%d-%b-%Y') `date`,
		DATE_FORMAT(`statusdate`, '%h:%i %p')`time`, ifnull(p.`status`,'pending') `status`,
		ifnull(CONCAT(u.firstname, ' ',u.middlename,' ',u.lastname),'') `user`,
		ifnull(p.`narration`,'') narration
		FROM `leaveapplications` a
		JOIN `leaveapprovalflows` f ON f.flowid=a.`approvalflowid`
		JOIN `leaveapprovallevels` l ON l.flowid=f.flowid
		LEFT OUTER JOIN `leaveapproval` p ON p.`applicationid`=a.`applicationid` AND p.`approvallevelid`=l.`id`
		left outer JOIN `user` u ON u.userid=p.`approvaluser`
		WHERE a.`applicationid`=$applicationid
		ORDER BY `hierarchy`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getleaveapprovalflowdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getleaveapprovalflowdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getleaveapprovalflowdetails`($flowid int)
BEGIN
		select * 
		from `leaveapprovalflows`
		where `flowid`=$flowid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getleaveapprovalflows` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getleaveapprovalflows` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getleaveapprovalflows`()
BEGIN
		select f.*, concat(`firstname`,' ',`middlename`,' ',`lastname`) as addedbyname,
		ifnull((select count(*) from `leaveapprovallevels` where `flowid`=f.flowid and `deleted`=0),0) approvallevels
		from `leaveapprovalflows`f
		join `user` u on u.userid=f.addedby and f.deleted=0
		order by flowname;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getleaveapprovallevels` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getleaveapprovallevels` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getleaveapprovallevels`($flowid int)
BEGIN
		select * 
		from `leaveapprovallevels`
		where `flowid`=$flowid and `deleted`=0
		order by `hierarchy`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getleavename` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getleavename` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getleavename`($leavetypeid int)
BEGIN
		select `leavename` from `leavetypes` where `leaveid`=$leavetypeid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getleavetypedetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getleavetypedetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getleavetypedetails`($leaveid int)
BEGIN
		select * 
		from `leavetypes`
		where `leaveid`=$leaveid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getleavetypes` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getleavetypes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getleavetypes`()
BEGIN
		select l.*, concat(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname
		from `leavetypes` l
		join `user` u on u.`userid`=l.addedby
		where l.deleted=0
		order by `leavename`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getmaritalstatuses` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getmaritalstatuses` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getmaritalstatuses`()
BEGIN
		select * from `maritalstatuses`
		where `deleted`=0
		order by `id`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getnhifremittanceadvise` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getnhifremittanceadvise` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getnhifremittanceadvise`($payrollmonth varchar(50),$payrollyear int,$payrollitemid int)
BEGIN
		select `staffno` `Staff Number`,`lastname` `Surname`, concat(`firstname`,' ',`middlename`)`Other Names`,
		`nhifno` `NHIF Number`,`iddocreferenceno` `ID Number`,format(`amount`,2) `Amount`
		from `employeerecords` e
		inner join `payslipinformation` i on i.employeeid=e.employeeid
		inner join `payrolldetails` pd on pd.payrollid=i.payrollid
		where pd.`year`=$payrollyear and `month`=$payrollmonth and i.deleted=0 
		and i.payrollitemid=$payrollitemid
		order by staffno;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getnssfremittanceadvise` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getnssfremittanceadvise` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getnssfremittanceadvise`($payrollmonth varchar(60),$payrollyear int,$payrollitemid int)
BEGIN
		declare $voluntaryitemid int;
		declare $payrollid int;
		
		select payrollid into $payrollid from `payrolldetails` where `month`=$payrollmonth and `year`=$payrollyear;
		select itemid into $voluntaryitemid from  `payrollitems` where `description`='NSSF VOLUNTARY';
		
		select `staffno` `Staff Number`,`lastname` `Surname`,concat(`firstname`,' ',`middlename`) `Other Names`,`iddocreferenceno` `ID Number`,`pinno` `PIN Number`,`nssfno` `NSSF Number`,
		format((select sum(amount) from `payslipinformation` i 
			inner join `payrolldetails` pd on pd.payrollid=i.payrollid 
			inner join `payrollitems` m on m.itemid=i.payrollitemid
			where pd.payrollid=$payrollid and i.employeeid=e.employeeid
			and m.itemtype='payment' and i.deleted=0),2)`Gross Salary`,
		format(amount,2) `Employee`,format(amount,2) `Employer`,
		format(ifnull((select amount from `payslipinformation` i 
			inner join `payrolldetails` pd on pd.payrollid=i.payrollid
			where i.payrollitemid=$voluntaryitemid and i.deleted=0
			and pd.payrollid=$payrollid and i.employeeid=e.employeeid),0),2) as `Voluntary`
		from `employeerecords` e
		inner join `payslipinformation` ip on ip.employeeid=e.employeeid
		inner join `payrolldetails` dp on dp.payrollid=ip.payrollid
		where dp.payrollid=$payrollid and ip.deleted=0 and ip.payrollitemid=$payrollitemid
		order by staffno;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getp10certificateemployeedata` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getp10certificateemployeedata` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getp10certificateemployeedata`($payrollmonth varchar(50),$payrollyear int)
BEGIN
		declare $payrollid int;

		SELECT payrollid INTO $payrollid 
		FROM `payrolldetails` 
		WHERE `month`=$payrollmonth AND `year`=$payrollyear;

		SELECT `pinno`,CONCAT(`firstname`,' ',`middlename`, ' ',`lastname`) `names`, disabled,
		IFNULL(disabilitycertificateno,'') certificateno,
		SUM(IF(description='BASIC', amount,0)) Basic,
		SUM(IF(description='HOUSE', amount,0)) House,
		SUM(IF(description='COMMUTER', amount,0)) Commuter,
		SUM(IF(description='ARREARS', amount,0)) Arrears,
		SUM(IF(description IN('NSSF','NSSF VOLUNTARY'), amount,0)) NSSF,
		SUM(IF(description='PERSONAL RELIEF', amount,0)) `PersonalRelief`,
		SUM(IF(description='PAYE', amount,0)) PAYE,
		SUM(IF(description IS NULL, amount,0)) `OtherAllowance`
		
		FROM `payrollemployees` pe
		JOIN `employeerecords` e ON e.employeeid=pe.employeeid
		JOIN `payslipinformation` i ON i.payrollid=pe.payrollid AND i.employeeid=pe.employeeid
		JOIN `payrollitems`m ON m.itemid=i.payrollitemid
		WHERE i.payrollid=$payrollid  AND i.deleted=0 AND pe.deleted=0
		AND (description IS NOT NULL OR itemtype IN('payment'))
		GROUP BY pe.`employeeid`
		ORDER BY pinno;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getp9deductioncard` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getp9deductioncard` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getp9deductioncard`($deductionyear int,$employeeid int)
BEGIN
		SELECT `companyname`,`pinno` INTO @employername,@employerpin 
		FROM `institution`;

		SELECT `pensionmaxallowable`,`disabilityallowable` 
		INTO @maxpension,@disabilityallowable 
		FROM `payetaxtable`
		WHERE `label`=$deductionyear ORDER BY `payeid` DESC LIMIT 1;

		SELECT p.`payrollid`, @employerpin employerpin,@employername employer,`staffno`, `firstname` surname, CONCAT(`middlename`,' ',`lastname`) othernames,
		s.`pinno` employeepin, `month`,`year`,
		SUM(IF(`description`='BASIC',amount,0)) basic,
		SUM(IF(`description`='OTHER BENEFIT',amount,0)) noncashbenefits,
		SUM(IF(`description`='HOUSING BENEFIT',amount,0)) housingbenefit,
		SUM(IF(m.itemtype IN('payment','benefit'),amount,0)) gross,
		SUM(IF(`description`='BASIC',amount,0))*0.3 e1,
		SUM(IF(`description` IN('PENSION','NSSF','NSSF VOLUNTARY'),amount,0)) e2,
		@maxpension e3,
		SUM(IF(`description`='MORTGAGE INTEREST',amount,0)) mortgageinterest,

		-- Check whether pension contribution exceeds max
		CASE WHEN SUM(IF(`description` IN('PENSION','NSSF','NSSF VOLUNTARY'),amount,0))<=@maxpension THEN
			SUM(IF(`description` IN('PENSION','NSSF','NSSF VOLUNTARY'),amount,0))
		ELSE
			@maxpension
		END + SUM(IF(`description`='MORTGAGE INTEREST',amount,0)) mortgagepension,

		-- compute taxable income
		SUM(IF(itemtype IN('payment','benefit'),amount,0))-
		SUM(IF(`description` IN('PENSION','NSSF','NSSF VOLUNTARY'),amount,0))-
		SUM(IF(`allowablededuction`=1,amount,0))-
		CASE WHEN `hasdisability`=1 THEN @disabilityallowable ELSE 0 END `chargeablepay`,

		SUM(IF(`description` IN('PAYE','PERSONAL RELIEF','INSURANCE RELIEF'),amount,0)) taxcharged,
		SUM(IF(`description`='PERSONAL RELIEF',amount,0)) personalrelief,
		SUM(IF(`description`='INSURANCE RELIEF',amount,0)) insurancerelief,
		SUM(IF(`description`='PAYE',amount,0)) paye

		FROM `employeerecords` s
		JOIN `payslipinformation` i ON i.employeeid=s.employeeid AND i.deleted=0
		JOIN `payrolldetails` p ON p.`payrollid`=i.`payrollid`
		JOIN `payrollitems` m ON m.`itemid`=i.`payrollitemid`
		JOIN `payrollemployees` pe ON pe.employeeid=s.employeeid AND pe.payrollid=p.payrollid AND pe.deleted=0 and i.deleted=0
		WHERE p.`year`=$deductionyear AND s.`employeeid`=$employeeid
		AND (
			description IN('BASIC','PAYE','NSSF','NSSF VOLUNTARY','PERSONAL RELIEF','INSURANCE RELIEF','MORTGAGE INTEREST','PENSION','HOUSING BENEFIT','OTHER BENEFIT')
			OR
			m.`itemtype` IN('Payment','Benefit','Deduction')
		)
		GROUP BY p.payrollid
		ORDER BY p.payrollid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getp9deductionsummary` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getp9deductionsummary` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getp9deductionsummary`($deductionyear int)
BEGIN
		SELECT `pensionmaxallowable`,`disabilityallowable` 
		INTO @maxpension,@disabilityallowable 
		FROM `payetaxtable`
		WHERE `label`=$deductionyear ORDER BY `payeid` DESC LIMIT 1;

		SELECT s.employeeid, `staffno`, CONCAT(`firstname`,' ',`middlename`,' ',`lastname`) employeename,
		s.`pinno` employeepin,
		SUM(IF(m.itemtype IN('payment','benefit'),amount,0)) gross,
		
		-- compute taxable income
		SUM(IF(itemtype IN('payment','benefit'),amount,0))-
		SUM(IF(`description` IN('PENSION','NSSF','NSSF VOLUNTARY'),amount,0))-
		SUM(IF(`allowablededuction`=1,amount,0))-
		CASE WHEN `hasdisability`=1 THEN @disabilityallowable ELSE 0 END `chargeablepay`,

		SUM(IF(`description` IN('PAYE','PERSONAL RELIEF','INSURANCE RELIEF'),amount,0)) taxcharged,
		SUM(IF(`description`='PERSONAL RELIEF',amount,0)) +
		SUM(IF(`description`='INSURANCE RELIEF',amount,0)) relief,
		SUM(IF(`description`='PAYE',amount,0)) paye

		FROM `employeerecords` s
		JOIN `payslipinformation` i ON i.employeeid=s.employeeid
		JOIN `payrolldetails` p ON p.`payrollid`=i.`payrollid`
		JOIN `payrollitems` m ON m.`itemid`=i.`payrollitemid`
		JOIN `payrollemployees` pe ON pe.employeeid=s.employeeid AND pe.payrollid=p.payrollid 
		
		WHERE p.`year`=$deductionyear
		AND (
			description IN('BASIC','PAYE','NSSF','NSSF VOLUNTARY','PERSONAL RELIEF','INSURANCE RELIEF','MORTGAGE INTEREST','PENSION','HOUSING BENEFIT','OTHER BENEFIT')
			OR
			m.`itemtype` IN('Payment','Benefit','Deduction')
		)
		and i.deleted=0 AND pe.deleted=0
		GROUP BY staffno
		ORDER BY staffno;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayeremittanceadvice` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayeremittanceadvice` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayeremittanceadvice`($payrollmonth varchar(50),$payrollyear int,$payrollitemid int)
BEGIN
		select staffno `Staff Number`, concat(firstname,' ',middlename,' ',lastname) `Full Name`,`pinno` `PIN Number`,
		`iddocreferenceno` `ID Number`,format(amount,2) `Amount`
		from `payrolldetails` d 
		inner join `payslipinformation` p on p.payrollid=d.payrollid
		inner join `employeerecords` e on e.employeeid=p.employeeid
		where `month`=$payrollmonth and `year`=$payrollyear and  p.deleted=0
		and p.payrollitemid=$payrollitemid
		order by staffno;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayetaxlabels` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayetaxlabels` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayetaxlabels`()
BEGIN
		select * from `payetaxtable`
		order by `startdate` desc;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpaymentmethods` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpaymentmethods` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpaymentmethods`()
BEGIN
		select * from `paymentmodes`
		where deleted=0
		order by `paymentmodename`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayrollchangesemployees` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayrollchangesemployees` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayrollchangesemployees`($payrollmonth varchar(50),$payrollyear int)
BEGIN
		
		
		select `payrollid` into @currentpayrollid 
		from `payrolldetails`
		where `month`=$payrollmonth and `year`=$payrollyear;
		
		select `payrollid` into @previouspayrollid
		from `payrolldetails` where `payrollid`<@currentpayrollid
		order by `payrollid` desc 
		limit 1;
		
		/*
		-- Previous amount not same as current amount
		SELECT staffno, CONCAT(`firstname`,' ',`middlename`,' ',`lastname`) employeename,itemname, amount AS previousamount,
		IFNULL((SELECT amount FROM `payslipinformation` WHERE `payrollid`=@currentpayrollid AND `employeeid`=e.employeeid AND deleted=0 AND `payrollitemid`=i.payrollitemid),0) currentamount
		FROM payslipinformation i
		JOIN employeerecords e ON e.employeeid=i.employeeid  
		JOIN payrollitems p ON p.itemid=i.payrollitemid
		WHERE i.payrollid=@previouspayrollid AND i.deleted=0
		AND payrollitemid IN(SELECT itemid FROM `payrollitems` WHERE itemtype='payment')
		AND i.amount!=IFNULL((SELECT amount FROM `payslipinformation` WHERE `payrollid`=@currentpayrollid AND `employeeid`=e.employeeid AND deleted=0 AND `payrollitemid`=i.payrollitemid),0) 

		UNION
		-- Current amount no same as previous
		SELECT staffno, CONCAT(`firstname`,' ',`middlename`,' ',`lastname`) employeename,itemname,
		IFNULL((SELECT amount FROM `payslipinformation` WHERE `payrollid`=@previouspayrollid AND `employeeid`=e.employeeid AND deleted=0 AND `payrollitemid`=i.payrollitemid),0)AS previousamount,
		amount  currentamount
		FROM payslipinformation i
		JOIN employeerecords e ON e.employeeid=i.employeeid  
		JOIN payrollitems p ON p.itemid=i.payrollitemid
		WHERE i.payrollid=@currentpayrollid AND i.deleted=0
		AND payrollitemid IN(SELECT itemid FROM `payrollitems` WHERE itemtype='payment')
		AND i.amount!=IFNULL((SELECT amount FROM `payslipinformation` WHERE `payrollid`=@previouspayrollid AND `employeeid`=e.employeeid AND deleted=0 AND `payrollitemid`=i.payrollitemid),0) 
		ORDER BY staffno,itemname;*/
		
		SELECT staffno, CONCAT(`firstname`,' ',`middlename`,' ',`lastname`) employeename,itemname, p.amount AS previousamount,c.`amount` currentamount
		FROM employeerecords e,payrollitems i,payslipinformation c,payslipinformation p
		WHERE i.itemid=c.payrollitemid AND i.itemid=p.`payrollitemid` AND c.employeeid=e.employeeid
		AND c.`payrollitemid`= i.`itemid` AND c.`payrollid`=@currentpayrollid AND  p.employeeid=e.employeeid
		AND  p.`payrollitemid`= i.`itemid` AND p.`payrollid`=@previouspayrollid AND i.itemtype='payment' 
		AND c.`deleted`=0 AND p.deleted=0 AND p.amount!=c.`amount`
		ORDER BY staffno,sortorder,itemname;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayrollchangesitems` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayrollchangesitems` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayrollchangesitems`($payrollmonth varchar(50),$payrollyear int)
BEGIN

		SELECT `payrollid` INTO @currentpayrollid 
		FROM `payrolldetails`
		WHERE `month`=$payrollmonth AND `year`=$payrollyear;
		
		SELECT `payrollid` INTO @previouspayrollid
		FROM `payrolldetails` WHERE `payrollid`<@currentpayrollid
		ORDER BY `payrollid` DESC 
		LIMIT 1;
		

		SELECT itemname
		FROM employeerecords e,payrollitems i,payslipinformation c,payslipinformation p
		WHERE i.itemid=c.payrollitemid AND i.itemid=p.`payrollitemid` AND c.employeeid=e.employeeid
		AND c.`payrollitemid`= i.`itemid` AND c.`payrollid`=@currentpayrollid AND  p.employeeid=e.employeeid
		AND  p.`payrollitemid`= i.`itemid` AND p.`payrollid`=@previouspayrollid AND i.itemtype='payment' 
		AND c.`deleted`=0 AND p.deleted=0 AND p.amount!=c.`amount`
		ORDER BY sortorder,itemname;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayrollentrants` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayrollentrants` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayrollentrants`($payrollmonth varchar(50),$payrollyear int)
BEGIN
	
		SET @currentpayrollid=0;
		SET @previouspayrollid=0;

		SELECT `payrollid` INTO @currentpayrollid FROM `payrolldetails` WHERE `month`=$payrollmonth AND `year`=$payrollyear ;

		SELECT `payrollid` INTO @previouspayrollid FROM `payrolldetails` WHERE `payrollid`<@currentpayrollid
		ORDER BY payrollid DESC LIMIT 1;

		SET @previouspayrollid=IFNULL(@previouspayrollid,0);

		SELECT  GROUP_CONCAT(DISTINCT CONCAT( 'FORMAT(SUM(IF(itemname=''',itemname,''',amount,0)),2) as `',itemname,'`') ORDER BY itemname) 
		INTO @collumns
		FROM `payrollitems` i 
		JOIN `payslipinformation` p ON p.`payrollitemid`=i.`itemid` 
		WHERE `itemtype`='payment' AND p.`payrollid`=@currentpayrollid;

		-- Get Entrants
		SET @sql=CONCAT('select staffno `Staff Number`, concat(`firstname`,'' '',`middlename`,'' '',`lastname`) `Employee Name`, ',
		@collumns,', FORMAT(SUM(amount),2) `Gross Salary`
		from `payslipinformation` i 
		join `employeerecords` e on e.`employeeid`=i.`employeeid`
		join `payrollitems` t on t.`itemid`=i.`payrollitemid`
		where `payrollid`=',@currentpayrollid,' and e.`employeeid` not in(select `employeeid` from `payslipinformation` where `payrollid`=',@previouspayrollid,')
		and itemtype=''payment''
		group by staffno
		order by staffno'); 

		PREPARE stmt FROM @sql;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayrollexits` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayrollexits` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayrollexits`($payrollmonth varchar(50),$payrollyear int)
BEGIN
		SET @currentpayrollid=0;
		SET @previouspayrollid=0;

		SELECT `payrollid` INTO @currentpayrollid FROM `payrolldetails` WHERE `month`=$payrollmonth AND `year`=$payrollyear;

		SELECT `payrollid` INTO @previouspayrollid FROM `payrolldetails` WHERE `payrollid`<@currentpayrollid
		ORDER BY payrollid DESC LIMIT 1;

		SET @previouspayrollid=IFNULL(@previouspayrollid,0);

		-- select @currentpayrollid,@previouspayrollid;

		SELECT  GROUP_CONCAT(DISTINCT CONCAT( 'FORMAT(SUM(IF(itemname=''',itemname,''',amount,0)),2) as `',itemname,'`') ORDER BY itemname) 
		INTO @collumns
		FROM `payrollitems` i 
		JOIN `payslipinformation` p ON p.`payrollitemid`=i.`itemid` 
		WHERE `itemtype`='payment' AND p.`payrollid`=@previouspayrollid;

		SET @collumns=IFNULL(@collumns,'0 as `Amount`');
		-- Get Exits
		SET @sql=CONCAT('select staffno `Staff Number`, concat(`firstname`,'' '',`middlename`,'' '',`lastname`) `Employee Names`, ',
		@collumns,', format(sum(amount),2) `Gross Salary` 
		from `payslipinformation` i 
		join `employeerecords` e on e.`employeeid`=i.`employeeid`
		join `payrollitems` t on t.`itemid`=i.`payrollitemid`
		where `payrollid`=',@previouspayrollid,' and e.`employeeid` not in(select `employeeid` from `payslipinformation` where `payrollid`=',@currentpayrollid,'
		and deleted=0)
		and itemtype=''payment''
		group by staffno
		order by staffno, payrollitemid'); 
		
		PREPARE stmt FROM @sql;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayrollitemdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayrollitemdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayrollitemdetails`($itemid int)
BEGIN
		select * from `payrollitems`
		where `itemid`=$itemid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayrollitemgroupdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayrollitemgroupdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayrollitemgroupdetails`($groupid int)
BEGIN
		select * 
		from `payrollitemgroups`
		where `groupid`=$groupid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayrollitemgroups` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayrollitemgroups` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayrollitemgroups`()
BEGIN
		select g.*, concat(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname,
		ifnull((select count(*) from `payrollitems` i where `itemgroupid`=g.groupid and i.deleted=0),0) items
		from `payrollitemgroups` g
		join `user` u on u.userid=g.addedby
		where g.deleted=0
		order by itemtype,groupname;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayrollitems` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayrollitems` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayrollitems`($category varchar(50))
BEGIN
		if $category='<all>' then
			select p.*, concat(firstname, ' ',middlename,' ',lastname) as addedbyname,
			ifnull(`creditorname`,'&lt;Not Applicable&gt;') creditorname
			from `payrollitems` p
			inner join `user` u on u.userid=p.addedby 
			left outer join `creditors` c on c.`creditorid`=p.`creditorid`
			where p.deleted=0
			order by `itemname`;
		else
			select p.*, concat(firstname, ' ',middlename,' ',lastname) as addedbyname,
			ifnull(`creditorname`,'&lt;Not Applicable&gt;') creditorname
			from `payrollitems` p
			inner join `user` u on u.userid=p.addedby 
			left outer join `creditors` c on c.`creditorid`=p.`creditorid`
			where p.deleted=0 and `itemtype`=$category
			order by `itemname`;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayrollmonthcreditors` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayrollmonthcreditors` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayrollmonthcreditors`($payrollmonth varchar(50),$payrollyear int)
BEGIN
		SELECT DISTINCT cr.`creditorid`,cr.`shortname`
		FROM `creditors` cr
		INNER JOIN `payrollitems` ip ON ip.`creditorid`=cr.`creditorid`
		INNER JOIN `payslipinformation` pf ON pf.`payrollitemid`=ip.`itemid`
		INNER JOIN `payrolldetails` pd ON pd.`payrollid`=pf.`payrollid`
		WHERE pd.`month`=$payrollmonth AND pd.`year`=$payrollyear AND pf.deleted=0
		ORDER BY shortname;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayrollregisterdetailed` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayrollregisterdetailed` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayrollregisterdetailed`($payrollmonth varchar(50),$payrollyear int)
BEGIN
		Select`payrollid` 
		into @payrollid 
		from`payrolldetails` 
		where `month`=$payrollmonth and `year`=$payrollyear;

		SELECT GROUP_CONCAT(CONCAT( 'FORMAT(SUM(IF(shortname=''',shortname,''',amount,0)),2) as `',shortname,'`') ORDER BY sortorder,shortname) 
		INTO @payments
		FROM `payrollitems` WHERE `itemtype` =('payment') AND deleted=0
		AND itemid IN(SELECT DISTINCT payrollitemid FROM `payslipinformation` WHERE `payrollid`=@payrollid AND `deleted`=0);

		SELECT GROUP_CONCAT(CONCAT( 'FORMAT(SUM(IF(shortname=''',shortname,''',amount,0)),2) as `',shortname,'`') ORDER BY sortorder,shortname) 
		INTO @deductions
		FROM `payrollitems` WHERE `itemtype` =('deduction') AND deleted=0
		AND itemid IN(SELECT DISTINCT payrollitemid FROM `payslipinformation` WHERE `payrollid`=@payrollid AND `deleted`=0);

		SELECT 'SUM(IF(itemtype=''payment'',amount,0))'
		INTO @gross;

		SELECT 'SUM(IF(itemtype=''deduction'',amount,0))'
		INTO @totaldeductions;



		SET @sql=CONCAT('select staffno `Staff Number`,concat(firstname,'' '',middlename,'' '',lastname) `Full Name`,',
		@payments,', FORMAT(',@gross,',2) as `Gross Salary`,',@deductions,',FORMAT(',@totaldeductions,',2) as `Total Deductions`, FORMAT(',@gross,'-',@totaldeductions,',2) as `Net Salary`'
		' from `payrolldetails` i 
		inner join `payslipinformation` p on p.`payrollid`=i.`payrollid`
		inner join `payrollitems` m on m.`itemid`=p.`payrollitemid`
		inner join `employeerecords` e on e.`employeeid`=p.employeeid
		where i.`payrollid`=',@payrollid,' and m.`itemtype` in(''payment'',''deduction'')
		and p.deleted=0
		group by e.employeeid
		order by e.staffno');

		PREPARE stmt FROM @sql;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayrollregistersummary` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayrollregistersummary` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayrollregistersummary`($payrollmonth varchar(50),$payrollyear int)
BEGIN		
		SELECT payrollid INTO @payrollid 
		FROM `payrolldetails` 
		WHERE `month`=$payrollmonth AND `year`=$payrollyear;

		-- Get payments
		SELECT  GROUP_CONCAT( DISTINCT CONCAT('format(sum(if(', 
			CASE WHEN itemgroupid IS NULL THEN CONCAT('shortname=','''',shortname,'''')  ELSE  CONCAT ('groupname=','''',groupname,'''') END,',amount,0)),2) as `' ,IFNULL(groupname,shortname) ,'`')
		ORDER BY i.itemtype DESC, sortorder, IFNULL(groupname,shortname))
		INTO @payments
		FROM `payrollitems` i
		LEFT JOIN `payrollitemgroups` g ON g.`groupid`=i.`itemgroupid`
		WHERE i.itemtype IN ('payment') AND i.deleted=0
		AND itemid IN(SELECT payrollitemid FROM payslipinformation WHERE payrollid=@payrollid AND deleted=0);

		-- Get Dediuctions
		SELECT  GROUP_CONCAT( DISTINCT CONCAT('format(sum(if(', 
			CASE WHEN itemgroupid IS NULL THEN CONCAT('shortname=','''',shortname,'''')  ELSE  CONCAT ('groupname=','''',groupname,'''') END,',amount,0)),2) as `' ,IFNULL(groupname,shortname) ,'`')
		ORDER BY i.itemtype DESC, sortorder, IFNULL(groupname,shortname))
		INTO @deductions
		FROM `payrollitems` i
		LEFT JOIN `payrollitemgroups` g ON g.`groupid`=i.`itemgroupid`
		WHERE i.itemtype IN ('deduction') AND i.deleted=0
		AND itemid IN(SELECT payrollitemid FROM payslipinformation WHERE payrollid=@payrollid AND deleted=0);


		-- select @fields

		SET @sql=CONCAT('select staffno `Staff Number`, concat(firstname,'' '',middlename,'' '',lastname) as `Employee Name`,',@payments,
		',format(sum(if(i.itemtype=''payment'',amount,0)),2) as `Gross Salary`,',@deductions,',format(sum(if(i.itemtype=''deduction'',amount,0)),2) as `Total Deductions`,
		format(sum(if(i.itemtype=''payment'',amount,0))-sum(if(i.itemtype=''deduction'',amount,0)),2) as `Net Salary`
		from `payslipinformation` p
		join `payrollitems` i on i.itemid=p.payrollitemid
		join employeerecords e on e.employeeid=p.employeeid
		left outer join `payrollitemgroups` g on g.`groupid`=i.`itemgroupid`
		where p.deleted=0 and p.payrollid=',@payrollid,'
		group by p.employeeid
		order by staffno');

		-- select @sql;
		PREPARE stmt FROM @sql;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayrollsummary` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayrollsummary` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayrollsummary`($summary varchar(50),$payrollmonth varchar(50),$payrollyear int)
BEGIN
		select itemname, count(employeeid) employees, sum(amount) total
		from `payslipinformation` i
		join `payrolldetails` p on .p.payrollid=i.payrollid
		join `payrollitems` m on m.itemid=i.payrollitemid
		where i.deleted=0 and p.`month`=$payrollmonth and p.`year`=$payrollyear
		and m.itemtype=$summary
		group by `itemname`
		order by `itemname`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayrollthirdpartremittanceadvise` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayrollthirdpartremittanceadvise` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayrollthirdpartremittanceadvise`($payrollmonth varchar(50),$payrollyear int, $creditorid int)
BEGIN
		
		SELECT payrollid INTO @payrollid FROM `payrolldetails` p WHERE p.`month`=$payrollmonth AND p.`year`=$payrollyear;

		SELECT GROUP_CONCAT(DISTINCT CONCAT('FORMAT(SUM(IF(itemname=''',`itemname`,''',amount,0)),2) `',itemname,'`')ORDER BY itemname) 
		INTO @sql
		FROM `payrollitems` r
		INNER JOIN `creditors` c ON c.`creditorid`=r.`creditorid`
		INNER JOIN `payslipinformation` i ON i.`payrollitemid`=r.`itemid`
		INNER JOIN `payrolldetails` d ON d.`payrollid`=i.`payrollid`
		WHERE i.deleted=0 
		AND i.`payrollid`=@payrollid AND c.creditorid=$creditorid;

		/**/

		SET @sql=CONCAT('select staffno `Staff Number`,concat(firstname, '' '',middlename,'' '',lastname) `Full Name`, `iddocreferenceno` `ID Number`,',@sql,',
		FORMAT(SUM(amount),2) `Total`
		from `payrollitems` r
		inner join `creditors` c on c.`creditorid`=r.`creditorid`
		inner join `payslipinformation` i on i.`payrollitemid`=r.`itemid`
		-- inner join `payrolldetails` d on d.`payrollid`=i.`payrollid`
		inner join `employeerecords` e on e.`employeeid`=i.`employeeid`
		where i.deleted=0 
		and i.`payrollid`=',@payrollid,' and c.creditorid=',$creditorid,'
		group by staffno');

		PREPARE stmt FROM @sql;
		EXECUTE stmt;
		DEALLOCATE PREPARE stmt;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpayslipverificationid` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpayslipverificationid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpayslipverificationid`($payrollmonth varchar(50),$payrollyear int,$employeeid int)
BEGIN
		select verificationid 
		from `payrollbankremittances` r
		inner join `payrolldetails` pd on pd.payrollid=r.payrollid
		where pd.`month`=$payrollmonth and pd.`year`=$payrollyear 
		and r.deleted=0  and r.employeeid=$employeeid;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpendingqueueemails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpendingqueueemails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpendingqueueemails`()
BEGIN
		select * from `emailqueue`
		where `status`='pending'
		order by `mailid`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getprocessedpayrolls` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getprocessedpayrolls` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getprocessedpayrolls`()
BEGIN
		select pd.*,
		ifnull((select count(*) from `payrollbankremittances` r where r.`payrollid`=pd.payrollid and r.deleted=0),0) employees,
		ifnull((select sum(amount) from `payslipinformation` i inner join `payrollitems` p on p.itemid=i.payrollitemid
			where i.payrollid=pd.payrollid and i.deleted=0 and p.itemtype='payment'),0) grosssalary,
		ifnull((select sum(amount) from `payslipinformation` i inner join `payrollitems` p on p.itemid=i.payrollitemid
			where i.payrollid=pd.payrollid and i.deleted=0 and p.itemtype='deduction'),0) deductions,	
		concat(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname
		from `payrolldetails` pd
		inner join `user` u on u.userid=pd.addedby
		order by pd.payrollid desc;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpublicholidaydetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpublicholidaydetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpublicholidaydetails`($id int)
BEGIN
		select * 
		from `publicholidays`
		where `id`=$id;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpublicholidays` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpublicholidays` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpublicholidays`($holidaystatus varchar(50))
BEGIN
		if $holidaystatus='current' then
			select h.*, concat(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname
			from `publicholidays` h
			inner join `user` u on u.userid=h.addedby
			where DATE_FORMAT(DATE,'%Y-%m-%d')>=DATE_FORMAT(NOW(),'%Y-%m-%d')
			and h.deleted=0
			order by `date`;
		else
			SELECT h.*, CONCAT(`firstname`,' ',`middlename`,' ',`lastname`) addedbyname
			FROM `publicholidays` h
			INNER JOIN `user` u ON u.userid=h.addedby
			WHERE date_format(DATE,'%Y-%m-%d')<date_format(NOW(),'%Y-%m-%d')
			AND h.deleted=0
			ORDER BY `date`;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getpublicholidaysbetweendates` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getpublicholidaysbetweendates` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getpublicholidaysbetweendates`($startdate date,$enddate date)
BEGIN
		DECLARE $currentdate DATE;
		DECLARE $totaldays INT;
		DECLARE $day_of_week INT;
		declare $publicholidays int;
		declare $weekendcount int;
		
		SET $weekendcount = 0;
		SET $currentdate = $startdate;
		SET $totaldays = DATEDIFF($enddate, $startdate);

		WHILE $totaldays >= 0 DO
		    SET $day_of_week = DAYOFWEEK($currentdate);
		    IF $day_of_week = 1 OR $day_of_week = 7 THEN
		      SET $weekendcount = $weekendcount + 1;
		    END IF;
		    SET $currentdate = DATE_ADD($currentdate, INTERVAL 1 DAY);
		    SET $totaldays = $totaldays - 1;
		END WHILE;
		
		-- count public holidays in between
		select count(*) into $publicholidays
		from `publicholidays`
		where `date` between $startdate and $enddate and `deleted`=0;
		
		-- add public holidays to weekends
		set $totaldays=$totaldays+ifnull($publicholidays,0);
		
		-- return public holidays and weekend count
		select $totaldays as weekendspublicholidays;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getregistrationdocuments` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getregistrationdocuments` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getregistrationdocuments`()
BEGIN
		select * from `registrationdocuments`
		where `deleted`=0
		order by `documenttypename`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getrelationships` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getrelationships` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getrelationships`()
BEGIN
		select * from `relationships`
		order by `description`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getreligions` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getreligions` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getreligions`()
BEGIN
		select * from `religions`
		where `deleted`=0
		order by `religionname`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getroledetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getroledetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getroledetails`(`$roleid` INT)
BEGIN
	select * from `roles` where `roleid`=$roleid;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getroleprivileges` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getroleprivileges` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getroleprivileges`(`$roleid` INT)
BEGIN
	select * from `roleprivileges` where `roleid`=$roleid;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getroles` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getroles` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getroles`()
BEGIN
	select * from `roles` where ifnull(`deleted`,0)=0
	order by `rolename`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getrolesforuserassignment` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getrolesforuserassignment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getrolesforuserassignment`()
BEGIN
	select `roleid`,`rolename` from `roles` order by `rolename`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getroleusers` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getroleusers` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getroleusers`(`$roleid` INT)
BEGIN
	select r.`userid`, `username`,`firstname`,`middlename`,`lastname` from `roleusers` r, `user` u
	where r.`userid`=u.`id` and `roleid`=$roleid
	order by `firstname`,`middlename`,`lastname`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getsalarystructuredetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getsalarystructuredetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getsalarystructuredetails`($structureid int)
BEGIN
		select * from `jobsalarystructures`
		where `structureid`=$structureid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getsalarystructures` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getsalarystructures` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getsalarystructures`($jobgroupid int,$notchid int)
BEGIN
		if $jobgroupid=0 then
			if $notchid=0 then
				select structureid,jobgroupname, notchname,itemname,minimumvalue,maximumvalue,0 as employees,`annualincrement`,
				s.dateadded, concat(`firstname`,' ',`middlename`,' ',`lastname`)addedbyname
				from `jobsalarystructures` s
				inner join `user` u on u.userid=s.addedby
				inner join `payrollitems` p on p.itemid=s.payrollitemid
				inner join `jobgroups` j on j.`jobgroupid`=s.jobgroupid
				inner join `jobnotches` n on n.notchid=s.notchid
				where s.deleted=0
				order by `jobgroupname`, notchname, itemname;
			else
				select structureid,jobgroupname, notchname,itemname,minimumvalue,maximumvalue,0 as employees,`annualincrement`,
				s.dateadded, concat(`firstname`,' ',`middlename`,' ',`lastname`)addedbyname
				from `jobsalarystructures` s
				inner join `user` u on u.userid=s.addedby
				inner join `payrollitems` p on p.itemid=s.payrollitemid
				inner join `jobgroups` j on j.`jobgroupid`=s.jobgroupid
				inner join `jobnotches` n on n.notchid=s.notchid
				where s.deleted=0 and s.notchid=$notchid
				order by `jobgroupname`, notchname, itemname;	
			end if;
		else
			IF $notchid=0 THEN
				SELECT structureid,jobgroupname, notchname,itemname,minimumvalue,maximumvalue,0 AS employees,`annualincrement`,
				s.dateadded, CONCAT(`firstname`,' ',`middlename`,' ',`lastname`)addedbyname
				FROM `jobsalarystructures` s
				INNER JOIN `user` u ON u.userid=s.addedby
				INNER JOIN `payrollitems` p ON p.itemid=s.payrollitemid
				INNER JOIN `jobgroups` j ON j.`jobgroupid`=s.jobgroupid
				INNER JOIN `jobnotches` n ON n.notchid=s.notchid
				WHERE s.deleted=0 and s.jobgroupid=$jobgroupid
				ORDER BY `jobgroupname`, notchname, itemname;
			ELSE
				SELECT structureid,jobgroupname, notchname,itemname,minimumvalue,maximumvalue,0 AS employees,`annualincrement`,
				s.dateadded, CONCAT(`firstname`,' ',`middlename`,' ',`lastname`)addedbyname
				FROM `jobsalarystructures` s
				INNER JOIN `user` u ON u.userid=s.addedby
				INNER JOIN `payrollitems` p ON p.itemid=s.payrollitemid
				INNER JOIN `jobgroups` j ON j.`jobgroupid`=s.jobgroupid
				INNER JOIN `jobnotches` n ON n.notchid=s.notchid
				WHERE s.deleted=0 AND s.jobgroupid=$jobgroupid AND s.notchid=$notchid
				ORDER BY `jobgroupname`, notchname, itemname;	
			END IF;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getsalutations` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getsalutations` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getsalutations`()
BEGIN
		select * from `salutations`
		where `deleted`=0
		order by `salutation`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getserverdate` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getserverdate` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getserverdate`()
BEGIN
		select now() currentdate;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getshiftmaster` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getshiftmaster` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getshiftmaster`()
BEGIN
		select * from `shiftmaster`
		where `deleted`=0
		order by `shiftname`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getshiftmasterdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getshiftmasterdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getshiftmasterdetails`($shiftid int)
BEGIN
		select * from `shiftdetails`
		where `shiftid`=$shiftid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getstaffinshift` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getstaffinshift` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getstaffinshift`($shiftid int,$shiftdate date)
BEGIN
		select * from `staffshifts`
		where `shiftid`=$shiftid and format(`date`,'%Y-%m-%d')
		and deleted=0;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getstatutorydeductionforemployee` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getstatutorydeductionforemployee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getstatutorydeductionforemployee`($employeeid int)
BEGIN
		select *
		from `payrollitems`
		where `statutory`=1 
		and `itemid` not in(select `payrollitemid` from `employeepayrollitems` 
			where `employeeid`=$employeeid and deleted=0)
		order by `itemname`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getstatutorypayrollitems` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getstatutorypayrollitems` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getstatutorypayrollitems`()
BEGIN
		select * from `payrollitems`
		where `statutory`=1 and `deleted`=0
		order by `itemname`;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getstatutoryremittanceadvice` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getstatutoryremittanceadvice` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getstatutoryremittanceadvice`($payrollmonth varchar(50),$payrollyear int,$payrollitemid int)
BEGIN
		select staffno `Staff Number`, concat(firstname,' ',middlename,' ',lastname) `Full Names`, 
		`iddocreferenceno` `ID Number`,`pinno` `PIN Number`,format(amount,2) Amount
		from `employeerecords` e
		inner join `payslipinformation` i on i.employeeid=e.employeeid
		inner join `payrolldetails` d on d.payrollid=i.payrollid and i.deleted=0 
		and i.payrollitemid=$payrollitemid and d.`month`=$payrollmonth and `year`=$payrollyear
		order by staffno;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_gettabledata` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_gettabledata` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_gettabledata`($tablename VARCHAR(50),$idfieldname VARCHAR(50),$idvalue VARCHAR(50), OUT outputdata VARCHAR(10000))
BEGIN
	SET @tablename=$tablename;
	SET @idfieldname=$idfieldname;
	SET @idvalue=$idvalue;
	
	select database() into @db;
	SET @v=CONCAT("SELECT GROUP_CONCAT(CONCAT('''',column_name,''',',' ',column_name)) 
	FROM information_schema.columns 
	WHERE table_name='",@tablename,"' AND table_schema='",@db,"'INTO @fields");
	
	-- select @v as `fields`;
	
	PREPARE stmt FROM @v;
	EXECUTE stmt;
	
	-- SELECT @fields;
	
	DEALLOCATE PREPARE stmt;
	SET @sql=CONCAT("SELECT JSON_OBJECT(",@fields,") as fields FROM ",@tablename," WHERE ",@idfieldname,"=",@idvalue," INTO @data");
	
	select @sql;
	
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	SET outputdata=@data;
	DEALLOCATE PREPARE stmt;
	-- set outputdata='';
	SELECT outputdata;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getuserbyid` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getuserbyid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getuserbyid`(`$userid` INT)
BEGIN
	select * from `user` where `userid`=$userid;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getuserdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getuserdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getuserdetails`(`$username` VARCHAR(50))
BEGIN
	select `companyname`,`supportemail`,`supportphone` 
	into @companyname,@supportemail,@supportphone from `institution`;
	
	select *,@companyname as companyname , @supportemail supportemail, @supportphone supportphone,
	ifnull((select `employeeid` from `employeerecords` where `staffno`=u.username),0) employeeid
	from `user` u WHERE `username`=$username;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getusernamefromuserid` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getusernamefromuserid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getusernamefromuserid`(`$userid` INT)
BEGIN
	select * from `user` where `userid`=$userid;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getuserprivileges` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getuserprivileges` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getuserprivileges`(`$userid` INT)
BEGIN
	select * from `userprivileges` where userid=$userid;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_getuserroles` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getuserroles` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getuserroles`(`$userid` INT)
BEGIN
	select r.* from `roles` r, `roleusers` u
	where r.`roleid`=u.`roleid` and `userid`=$userid
	and ifnull(u.`deleted`,0)=0
	order by `rolename`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_maitenancehistory` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_maitenancehistory` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_maitenancehistory`($id int)
BEGIN
		select * from `inventorymaitainacehistory`
		where itemid !=$id;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_processpayroll` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_processpayroll` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_processpayroll`($payrollmonth varchar(50),$payrollyear int,$payrolllabel varchar(50),$userid int,$platform varchar(1000))
BEGIN
		declare $payrollid int default 0;
		declare $employeeid int;
		declare $bankbranchid int;
		declare $accountno varchar(50);
		declare $hasdisability tinyint default 0;
		declare $netsalary decimal(18,2);
		declare $finished bool default 0;
		declare $personalreliefitemid int;
		declare $payeitemid int;
		declare $insurancereliefitemid int;
		declare $insurancereliefpercentage decimal(18,2);
		DECLARE $insurancereliefmaxamount decimal(18,2);
		DECLARE $insurancereliefamount decimal(18,2);
		declare $insuranceamount decimal(18,2) default 0;
		
		-- Reprocess the payroll
		DECLARE payroll_employees_cursor CURSOR FOR 
		
		SELECT `employeeid`,`bankbranchid`,`bankaccountnumber`,`disabled` from `employeerecords`
		where `onpayroll`=1 and `status`='active' 
		and date_format(`employmentdate`,'%Y-%m-%d')<=date_format(now(),'%Y-%m-%d');

		DECLARE CONTINUE HANDLER FOR NOT FOUND SET $finished=1;
		
		-- Chekc if payroll details exist then create or update 
		IF NOT EXISTS(SELECT * FROM `payrolldetails` WHERE `month`=$payrollmonth AND `year`=$payrollyear) THEN
		
			INSERT INTO `payrolldetails`(`month`,`year`,`status`,`dateadded`,`addedby`)
			VALUES($payrollmonth,$payrollyear,'open',NOW(),$userid);
			
			SELECT MAX(`payrollid`) INTO $payrollid FROM `payrolldetails`;
			
			-- Add audit trail entry
			SELECT CONCAT('Processed payroll for ',$payrollmonth,' ',$payrollyear,' id: ',$payrollid)
			INTO @narration;
			
			CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
		ELSE
			SELECT `payrollid` INTO $payrollid 
			FROM `payrolldetails` 
			WHERE `month`=$payrollmonth AND `year`=$payrollyear;
			
			SELECT CONCAT('Reprocessed payroll for ',$payrollmonth,' ',$payrollyear,' id: ',$payrollid)
			INTO @narration;
			
			CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,'','',NULL);
		END IF;
		
		-- remove existing payslip information and bank remittances
		UPDATE`payslipinformation` SET  deleted=1,deletedby=$userid,datedeleted=NOW()
		WHERE `payrollid`=$payrollid;
		
		-- remove existing payroll employees
		update `payrollemployees` set `deleted`=1,deletedby=$userid,datedeleted=now()
		where `payrollid`=$payrollid;
		
		-- remove bank remittance advises employees
		UPDATE `payrollbankremittances` SET deleted=1,datedeleted=NOW(),deletedby=$userid
		WHERE `payrollid`=$payrollid;
		
		-- get personal relief
		SELECT `personalrelief` 
		INTO @personalrelief 
		FROM `payetaxtable` WHERE `label`=$payrolllabel;
		
		-- get personal relief payrollitem id
		select `itemid` into $personalreliefitemid
		from `payrollitems` where `description`='PERSONAL RELIEF';
		
		-- get PAYE payrollitem id
		SELECT `itemid` INTO $payeitemid
		FROM `payrollitems` WHERE `description`='PAYE';
		
		-- get insurance relief item
		SELECT `itemid` INTO $insurancereliefitemid
		FROM `payrollitems` WHERE `description`='INSURANCE RELIEF';
		
		-- get insurance relief parameters
		select `insurancereliefrate`,`insurancereliefmaxamount`
		into $insurancereliefpercentage,$insurancereliefmaxamount
		from `payetaxtable` where `label`=$payrolllabel;
				
		OPEN payroll_employees_cursor;
		get_employees: LOOP
			FETCH payroll_employees_cursor INTO $employeeid,$bankbranchid,$accountno,$hasdisability;		
			IF $finished=1 THEN 
				LEAVE get_employees;
			END IF;
			
			-- Generate unique id for each employee
			SELECT sha1(UUID()) INTO @refno;
			-- Add employee for payroll employees
			INSERT INTO `payrollemployees`(`payrollid`,`employeeid`,`hasdisability`,`refno`)
			VALUES($payrollid,$employeeid,$hasdisability,@refno);
			
			-- Add all payments and benefits
			INSERT INTO `temppayslipinfo`
			SELECT @refno,payrollitemid, 
			CASE WHEN bracketed=1 THEN `fn_computebracketedvalue`(@refno,employeeid,payrollitemid) ELSE amount END
			FROM `employeepayrollitems` ep
			INNER JOIN `payrollitems` p ON p.itemid=ep.payrollitemid
			WHERE employeeid=$employeeid AND ep.deleted=0  
			AND DATE_FORMAT(startdate,'%Y-%m-%d')<=DATE_FORMAT(NOW(),'%Y-%m-%d')
			AND (`periodic`=0 OR `periodic`=1 AND DATE_FORMAT(DATE_ADD(`startdate`, INTERVAL `duration` MONTH),'%Y-%m-%d')>=DATE_FORMAT(NOW(),'%Y-%m-%d'))
			AND itemtype IN('payment','benefit');

			-- Add deductions and reliefs
			INSERT INTO `temppayslipinfo`
			SELECT @refno,payrollitemid, 
			CASE WHEN bracketed=1 THEN `fn_computebracketedvalue`(@refno,employeeid,payrollitemid) ELSE amount END
			FROM `employeepayrollitems` ep
			INNER JOIN `payrollitems` p ON p.itemid=ep.payrollitemid
			WHERE employeeid=$employeeid AND ep.deleted=0  
			AND DATE_FORMAT(startdate,'%Y-%m-%d')<=DATE_FORMAT(NOW(),'%Y-%m-%d')
			AND (`periodic`=0 OR `periodic`=1 AND DATE_FORMAT(DATE_ADD(`startdate`, INTERVAL `duration` MONTH),'%Y-%m-%d')>=DATE_FORMAT(NOW(),'%Y-%m-%d'))
			AND itemtype IN('deduction','relief');
			
			-- Compute insurance premium
			set $insuranceamount=ifnull(`fn_computeemployeeinsuranceamount`($employeeid,@refno),0);
			set $insurancereliefamount=($insurancereliefpercentage*$insuranceamount)/100;
			if $insurancereliefamount>$insurancereliefmaxamount then
				set $insurancereliefamount=insurancereliefmaxamount;
			end if;

			-- Add insurance premium if greater than 0
			if $insurancereliefamount>0 then 
				INSERT INTO `temppayslipinfo`(`refno`,`payrollitemid`,`amount`)
				VALUES(@refno,$insurancereliefitemid,$insurancereliefamount);
			end if;
			
			SELECT `fixedpaye` INTO @fixedpaye FROM `employeerecords`
			WHERE `employeeid`=$employeeid;

			-- compute paye
			SET @paye=`fn_computepaye`(@refno,$payrolllabel,$hasdisability);
			
			if @fixedpaye=0 and @paye>0 then 
				INSERT INTO `temppayslipinfo`(`refno`,`payrollitemid`,`amount`)
				VALUES(@refno,$personalreliefitemid,@personalrelief);
			end if;
			
			-- Apply applicable reliefs
			
			UPDATE `temppayslipinfo` SET amount=@paye WHERE `refno`=@refno AND `payrollitemid`=$payeitemid;

			-- Move the data from temporary to payslip information
			insert into `payslipinformation`(`payrollid`,`employeeid`,`payrollitemid`,`amount`)
			select $payrollid,$employeeid,`payrollitemid`,`amount` from `temppayslipinfo`
			where `refno`=@refno;
			
			-- compute Net Salary
			SELECT SUM(IF(p.itemtype='payment',t.amount,0)), 
				SUM(IF(p.itemtype='deduction',t.amount,0)) 
			INTO @totalpayments,@totaldeductions
			FROM temppayslipinfo t
			INNER JOIN payrollitems p ON p.itemid=t.payrollitemid AND refno=@refno;

			set $netsalary=@totalpayments-@totaldeductions;
			
			if $netsalary<0 then 
				set $netsalary=0;
			end if;
			
			insert into `payrollbankremittances`(`payrollid`,`employeeid`,`branchid`,`accountno`,`amount`,`verificationid`)
			values($payrollid,$employeeid,$bankbranchid,$accountno,$netsalary,@refno);

			-- Remove the temporary data
			delete from `temppayslipinfo`  where refno=@refno;
			
		END LOOP get_employees;
		CLOSE payroll_employees_cursor;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveaudittrailentry` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveaudittrailentry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveaudittrailentry`($userid int,$operation varchar(100),$narration varchar(5000),$platform varchar(1000),
$previousvalues varchar(5000),$currentvalues varchar(5000),$branchid int)
BEGIN
	insert into `audittrail`(`timestamp`,`userid`,`operation`,`narration`,`platform`,`originalvalues`,`updatedvalues`,`branchid`)
	values(now(),$userid,$operation,$narration,$platform,$previousvalues,$currentvalues,$branchid);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savebank` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savebank` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savebank`($bankid int,$bankcode varchar(50),$bankname varchar(50),$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			if $bankid=0 then 
				-- save the bank
				insert into `banks`(`bankcode`,`bankname`,`dateadded`,`addedby`)
				values($bankcode,$bankname,now(),$userid);
				
				-- get inserted id
				select max(`bankid`) into $bankid 
				from `banks`;
				
				-- generate audit trail narration
				select  concat('Created new bank id : ',$bankid,' bank name : ',$bankname)
				into @narration;
				
				-- insert audit trail entry
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',null);
				
			else
				-- get field values before edit
				CALL `sp_gettabledata`('banks','bankid',$bankid,@originalvalues);
				-- update fields
				update `banks`
				set `bankcode`=$bankcode, `bankname`=$bankname
				where `bankid`=$bankid;
				-- get values after edit
				CALL `sp_gettabledata`('banks','bankid',$bankid,@currentvalues);
				-- generate audit trail narrative
				select concat('Updated bank details for bank id :',$bankid)
				into @narration;
				
				-- add audut trail entry
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,null);
				END IF;
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savebankbranch` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savebankbranch` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savebankbranch`($branchid int,$bankid int,$branchcode varchar(50),$branchname varchar(50),$userid int,$platform varchar(50))
BEGIN
		start transaction;
		
			if $branchid=0 then 
			
				insert into `bankbranches`(`bankid`,`branchcode`,`branchname`,`dateadded`,`addedby`)
				values($bankid,$branchcode,$branchname,now(),$userid);
				
				select max(`branchid`) into $branchid from `bankbranches`;
				
				select concat('Created new bank branch id : ',$branchid,' code: ',$branchcode,' name: ',$branchname)
				into @narration;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
				
			else
				CALL `sp_gettabledata`('bankbranches','branchid',$branchid,@originalvalues);
			
				UPDATE `bankbranches` 
				SET `bankid`=$bankid,`branchcode`=$branchcode,`branchname`=$branchname
				WHERE `branchid`=$branchid;
				
				CALL `sp_gettabledata`('bankbranches','branchid',$branchid,@currentvalues);
				
				SELECT CONCAT('Updated bank branch details for branch id : ',$branchid) 
				INTO @narration;
					
					
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
				
			end if;	
			
		commit;	
				
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savechargeableitem` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savechargeableitem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savechargeableitem`($itemid int,$itemname varchar(100),$recurring bool,
	$amount decimal(18,2),$refundable bool,$percentage bool,$percentageitemid int, $userid int,$platform varchar(1000))
BEGIN
		start transaction;
			if $itemid=0 then 
				insert into `chargeableitems`(`itemname`,`recurring`,`amount`,`refundable`,`percentage`,`percentageitemid`,`dateadded`,`addedby`)
				values($itemname,$recurring,$amount,$refundable,$percentage,$percentageitemid,now(),$userid);
				select max(`itemid`) into $itemid from `chargeableitems`;
				set @narration=concat('Created new chargeable item item id:',$itemid,' item name: ',$itemname);
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',null); 
			else
				CALL `sp_gettabledata`('chargeableitems','itemid',$itemid,@originalvalues);
				
				UPDATE `chargeableitems`
				set `itemname`=$itemname,`recurring`=$recurring, `amount`=$amount, `refundable`=$refundable, 
				`percentage`=$percentage,`percentageitemid`=$percentageitemid
				where `itemid`=$itemid;
				
				CALL `sp_gettabledata`('chargeableitems','itemid',$itemid,@currentvalues);
				
				SELECT CONCAT('Updated chargeable item details for item id: ',$itemid) 
				INTO @narration;
				
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,null);
				END IF;
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savecreditor` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savecreditor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savecreditor`($creditorid int,$reference varchar(50),$creditorname varchar(50),$physicaladdress varchar(100),
	$postaladdress varchar(50),$town varchar(50),$telephone varchar(50),$emailaddress varchar(50),$payrollcreditor bool,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			if $creditorid=0 then
				insert into `creditors`(`referenceno`,`creditorname`,`physicaladdress`,`postaladdress`,`town`,`telephone`,
				`emailaddress`,`payrollcreditor`,`dateadded`,`addedby`)
				values($reference,$creditorname,$physicaladdress,$postaladdress,$town,$telephone,
				$emailaddress,$payrollcreditor,now(),$userid);
				
				select max(`creditorid`) into $creditorid from `creditors`;
				
				select concat('Created new creditor id: ',$creditorid,' name: ',$creditorname)
				into @narration;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
			else
				-- get field values before edit
				CALL `sp_gettabledata`('creditors','creditorid',$creditorid,@originalvalues);
				
				-- update fields
				UPDATE `creditors`
				SET `referenceno`=$reference,`creditorname`=$creditorname,`physicaladdress`=$physicaladdress,`postaladdress`=$postaladdress,
				`town`=$town,`telephone`=$telephone, `emailaddress`=$emailaddress, `payrollcreditor`=$payrollcreditor
				WHERE `creditorid`=$creditorid;
				
				-- get values after edit
				CALL `sp_gettabledata`('creditors','creditorid',$creditorid,@currentvalues);
				
				-- generate audit trail narrative
				SELECT CONCAT('Updated creditors details for id :',$creditorid)
				INTO @narration;
				
				-- add audut trail entry
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
			
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savedepartment` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savedepartment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savedepartment`($departmentid int,$departmentname varchar(50),$departmenthead int,
	$extension varchar(50),$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			if $departmentid=0 then
			
				insert into `departments`(`departmentname`,`departmenthead`,`extension`,`addedby`,`dateadded`)
				values($departmentname,$departmenthead,$extension,$userid,now());
				
				select max(`departmentid`) into $departmentid from `departments`;
				
				select concat('Created a new department id:',$departmentid,' name: ',$departmentname)
				into @narration;
				
				CALL `sp_saveaudittrailentry`($userid,'Insert',@narration,$platform,NULL,NULL,NULL);
			
			else
			
				-- Get the table row before update 
				CALL `sp_gettabledata`('departments','departmentid',$departmentid,@originalvalues);
				
				-- Update the data
				UPDATE `departments`
				SET `departmentname`=$departmentname,`departmenthead`=$departmenthead,`extension`=$extension
				WHERE `departmentid`=$departmentid;
				
				-- Get the table data after update 
				CALL `sp_gettabledata`('departments','departmentid',$departmentid,@currentvalues);
				
				-- Check if there was a change and add ausit trail entry
				IF @currentvalues!=@originalvalues THEN
					SELECT CONCAT('Updated job department id ',$departmentid) INTO @narration;
					CALL `sp_saveaudittrailentry`($userid,'Update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savedisciplinaryincidence` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savedisciplinaryincidence` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savedisciplinaryincidence`($incidentid int,$employeeid int,$typeid int,$categoryid int,$actionid INT,
	$incidentdescription varchar(5000),$attachment varchar(1000),$incidentdate date,$actiondate date,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			if $incidentid=0 then
				insert into `employeedisciplinarycases`(`employeeid`,`typeid`,`categoryid`,`actionid`,`incidentdescription`,`attachment`,`incidentdate`,`actiondate`,`addedby`,`dateadded`)
				values($employeeid,$typeid,$categoryid,$actionid,$incidentdescription,$attachment,$incidentdate,$actiondate,$userid,now());
				
				select max(`incidentid`) into $incidentid from `employeedisciplinarycases`;
				
				select concat('Created new disciplinary case id:',$incidentid,' for employee id:',$employeeid,' staff no',staffno,' names:', firstname,' ',middlename,' ',lastname,
				' Incidence type ',typename, ' category ', categoryname)
				into @narration
				from `employeedisciplinarycases` d 
				join `employeerecords` r on r.employeeid=d.employeeid
				join `disciplinarycategories` c on c.categoryid=d.categoryid
				join `disciplinarytypes` t on t.typeid=d.typeid
				where d.incidentid=$incidentid;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',null);
			else
				-- get field values before edit
				CALL `sp_gettabledata`('employeedisciplinarycases','incidentid',$incidentid,@originalvalues);
				-- update fields
				UPDATE `employeedisciplinarycases`
				SET `employeeid`=$employeeid,`typeid`=$typeid,`categoryid`=$categoryid,`actionid`=$actionid,
				`incidentdate`=$incidentdate,`actiondate`=$actiondate,`incidentdescription`=$incidencedescription
				WHERE `incidentid`=$incidentid;
				-- get values after edit
				CALL `sp_gettabledata`('employeedisciplinarycases','incidentid',$incidentid,@currentvalues);
				-- generate audit trail narrative
				select concat('Updated disciplinary case id:',$incidentid,' for employee id:',$employeeid,' staff no',staffno,' names:', firstname,' ',middlename,' ',lastname,
				' Incidence type ',typename, ' category ', categoryname)
				into @narration
				from `employeedisciplinarycases` d 
				join `employeerecords` r on r.employeeid=d.employeeid
				join `disciplinarycategories` c on c.categoryid=d.categoryid
				join `disciplinarytypes` t on t.typeid=d.typeid
				where d.incidentid=$incidentid;
				
				-- add audut trail entry
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveemailconfiguration` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveemailconfiguration` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveemailconfiguration`(`$emailaddress` VARCHAR(100), `$emailpassword` VARCHAR(50), `$smtpserver` VARCHAR(50), `$smtpport` INT, `$usessl` BOOLEAN)
BEGIN
	if not exists(select * from `emailconfiguration`) then
		insert into `emailconfiguration`(`emailaddress`,`password`,`smtpserver`,`usessl`,`smtpport`)
		values($emailaddress,$emailpassword,$smtpserver,$usessl,$smtpport);
	else
		update `emailconfiguration` 
		set `emailaddress`=$emailaddress,`password`=$emailpassword,`smtpserver`=$smtpserver,`usessl`=$usessl,`smtpport`=$smtpport;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveemailinqueue` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveemailinqueue` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveemailinqueue`($fromemail varchar(1000),$toemail varchar(50),$emailsubject varchar(1000),
	$message blob,$attachment blob,$userid int)
BEGIN
		insert into `emailqueue`(`from`,`to`,`subject`,`message`,`attachment`,`dateadded`,`addedby`)
		values($fromemail,$toemail,$emailsubject,$message,$attachment,now(),$userid);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveemployee` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveemployee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveemployee`($employeeid int,$staffno varchar(50),$firstname varchar(50),$middlename varchar(50),
	$lastname varchar(50),$termid int,$categoryid int,$departmentid int,$religionid int,$salutationid int,$iddocumentid int,
	$iddocreferenceno varchar(50),$iddocexpirydate date,$dateofbirth date,$gender varchar(50),$pinno varchar(50),$nssfno varchar(50),
	$nhifno varchar(50),$disabled bool,$disabilitytype varchar(50),$disabilitydescription varchar(1000),$onpayroll bool,$fixedpaye bool,
	$employmentstatus varchar(50),$positionid int,$jobgroupid int,$notchid int,$bankbranchid int,$accountnumber varchar(50),$employmentdate date,
	$separationdate date,$separationreason varchar(50),$physicaladdress varchar(100),$postaladdress varchar(100),$town varchar(100),
	$postalcode varchar(50),$mobile varchar(100),$emailaddress varchar(100),$alternativemobile varchar(100),$alternativeemailaddress varchar(50),
	$generatestaffno bool, $disabilitycertificateno varchar(50),$userid int,$platform varchar(1000))
BEGIN
		start transaction;
		
			if $employeeid=0 then 	
				
				if $generatestaffno=1 then
					select `fn_generateemployeestaffno`($categoryid) into $staffno;
					update `jobcategories` set `currentnumber`=`currentnumber`+1
					where `categoryid`=$categoryid;
				end if;
				
				insert into `employeerecords`(`staffno`,`firstname`,`middlename`,`lastname`,`termid`,`categoryid`,`departmentid`,
				`religionid`,`salutationid`,`iddocumentid`,`iddocreferenceno`,`iddocexpirydate`,`dateofbirth`,`gender`,`pinno`,`nssfno`,
				`nhifno`,`disabled`,`disabilitytype`,`disabilitydescription`,`disabilitycertificateno`,`onpayroll`,`fixedpaye`,`status`,`employeeid`,`positionid`,
				`jobgroupid`,`notchid`,`bankbranchid`,`bankaccountnumber`,`employmentdate`,`physicaladdress`,`postaladdress`,`town`,`postalcode`,
				`mobile`,`emailaddress`,`alternativemobile`,`alternativeemailaddress`,`dateadded`,`addedby`)
				values($staffno,$firstname,$middlename,$lastname,$termid,$categoryid,$departmentid,
				$religionid,$salutationid,$iddocumentid,$iddocreferenceno,$iddocexpirydate,$dateofbirth,$gender,$pinno,$nssfno,
				$nhifno,$disabled,$disabilitytype,$disabilitydescription,$disabilitycertificateno,$onpayroll,$fixedpaye,$employmentstatus,$employeeid,$positionid,
				$jobgroupid,$notchid,$bankbranchid,$accountnumber,$employmentdate,$physicaladdress,$postaladdress,$town,$postalcode,
				$mobile,$emailaddress,$alternativemobile,$alternativeemailaddress,now(),$userid);
				
				
				select max(`employeeid`) into $employeeid from `employeerecords`;
				
				select concat('Created new employee id:',$employeeid,' staff no:',$staffno,' names:',$firstname,' ',$middlename,' ',$lastname)
				into @narration;
				
				-- Add default payroll items based on notch
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
				
			else
				-- get field values before edit
				CALL `sp_gettabledata`('employeerecords','employeeid',$employeeid,@originalvalues);
				-- update fields
				UPDATE `employeerecords`
				SET `firstname`=$firstname,`middlename`=$middlename,`lastname`=$lastname,`termid`=$termid,`categoryid`=$categoryid,
				`departmentid`=$departmentid,`religionid`=$religionid,`salutationid`=$salutationid,`iddocumentid`=$iddocumentid,
				`iddocreferenceno`=$iddocreferenceno,`iddocexpirydate`=$iddocexpirydate,`dateofbirth`=$dateofbirth,`gender`=$gender,
				`pinno`=$pinno,`nssfno`=$nssfno,`nhifno`=$nhifno,`disabled`=$disabled,`disabilitytype`=$disabilitytype,
				`disabilitydescription`=$disabilitydescription,`disabilitycertificateno`=$disabilitycertificateno,`onpayroll`=$onpayroll,
				`fixedpaye`=$fixedpaye,`status`=$employmentstatus,`positionid`=$positionid,`jobgroupid`=$jobgroupid,`notchid`=$notchid,
				`bankbranchid`=$bankbranchid,`bankaccountnumber`=$accountnumber,`employmentdate`=$employmentdate,`physicaladdress`=$physicaladdress,
				`postaladdress`=$postaladdress,`town`=$town,`postalcode`=$postalcode,`mobile`=$mobile,`emailaddress`=$emailaddress,
				`alternativemobile`=$alternativemobile,`alternativeemailaddress`=$alternativeemailaddress
				WHERE `employeeid`=$employeeid;
				-- get values after edit
				CALL `sp_gettabledata`('employeerecords','employeeid',$employeeid,@currentvalues);
				-- generate audit trail narrative
				SELECT CONCAT('Updated employee details for id :',$employeeid,' staff no:',$staffno,' names:',$firstname,' ',$middlename,' ',$lastname)
				INTO @narration;
				
				-- add audut trail entry
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;	
			end if;
		commit;
		
		select $staffno as staffno;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveemployeeannualleaveallocation` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveemployeeannualleaveallocation` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveemployeeannualleaveallocation`()
BEGIN
		SELECT CONCAT(YEAR(NOW()),'-01-01') INTO @startyeardate;

		SELECT `leaveid`,`skipsholidays`,`allocationdays` 
		INTO @leavetypeid,@skipsholidays,@allocationdays 
		FROM `leavetypes` WHERE `systemlabel`='ANNUAL LEAVE';

		SELECT userid INTO @userid 
		FROM `user` WHERE systemlabel='INBUILT SYSTEM ACCOUNT';

		SELECT ROUND(@allocationdays/12,2) INTO @monthlyrate;

		INSERT INTO `employeeleaveallocation`(`employeeid`,`leavetypeid`,`year`,`addedby`,`dateadded`,`allocation`)
		-- select @startyeardate;
		SELECT r.employeeid,@leavetypeid,YEAR(NOW()),@userid,NOW(),
		ROUND(CASE WHEN a.dateadded IS NULL THEN
			CASE WHEN YEAR(employmentdate)<YEAR(NOW()) THEN 
				TIMESTAMPDIFF(MONTH,@startyeardate,NOW())
			ELSE
				TIMESTAMPDIFF(MONTH,employmentdate,NOW())
			END 
		ELSE
			TIMESTAMPDIFF(MONTH,a.dateadded,NOW())
		END *@monthlyrate,2)
		AS monthallocation
		FROM employeerecords r
		LEFT OUTER JOIN `employeeleaveallocation` a 
		ON a.employeeid=r.employeeid AND `leavetypeid`=@leavetypeid AND `year`=YEAR(NOW())
		WHERE `status`='active'  AND 
		CASE WHEN a.dateadded IS NULL THEN
			CASE WHEN YEAR(employmentdate)<YEAR(NOW()) THEN 
				TIMESTAMPDIFF(MONTH,@startyeardate,NOW())
			ELSE
				TIMESTAMPDIFF(MONTH,employmentdate,NOW())
			END 
		ELSE
			TIMESTAMPDIFF(MONTH,a.dateadded,NOW())
		END > 0 ;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveemployeeattachmment` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveemployeeattachmment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveemployeeattachmment`($id int,$employeeid int,$documentid int,$documentexpires bool,
	$expirydate date,$attachment varchar(2000),$narration varchar(1000),$userid int, $platform varchar(1000))
BEGIN
		start transaction;
			if $id = 0 then
				insert into `employeeattachments`(`documentid`,`employeeid`,`documentexpires`,`expirydate`,`attachment`,`narration`,`dateadded`,`addedby`)
				values($documentid,$employeeid,$documentexpires,$expirydate,$attachment,$narration,now(),$userid);

				select max(`id`) into $id
				from `employeeattachments`;

				select concat('Added new  employee attachment documents id',$id,' document name:', documentname,
				'staff details id;', e.employeeid,' staff no:',staffno,' names:',firstname,' ',middlename,' ',lastname)
				into @narration
				from `employeeattachments` e
				join `employeeattachabledocuments` d on d.documentid=e.documentid
				join `employeerecords` r on r.employeeid=e.employeeid
				where e.`id`=$id;

				-- calling the audit trail
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
			else 
				-- getting before the update
				CALL `sp_gettabledata`('employeeattachments','id',$id,@originalvalues);

				-- update the payroll table

				update `employeeattachments`
				set employeeid=$employeeid, documentid=$documentid,`documentexpires`=$documentexpires,
				`expirydate`=$expirydate,`attachment`=$attachment,`narration`=$narration
				where `id` = $id;

				-- getting fields after update

				CALL `sp_gettabledata`('employeeattachments','id',$id,@currentvalues);

				SELECT CONCAT('Updated employee attachment documents id',$id,' document name:', documentname,
				'staff details id;', e.employeeid,' staff no:',staffno,' names:',firstname,' ',middlename,' ',lastname)
				INTO @narration
				FROM `employeeattachments` e
				JOIN `employeeattachabledocuments` d ON d.documentid=e.documentid
				JOIN `employeerecords` r ON r.employeeid=e.employeeid
				WHERE e.`id`=$id;
				-- check currentvaluse and original values

				if @currentvalues!=@currentvalues then
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				end if;
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveemployeebeneficiary` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveemployeebeneficiary` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveemployeebeneficiary`($beneficiaryid int,$employeeid int,$fullname varchar(50),$idnumber varchar(50),
	$mobilenumber varchar(50),$emailaddress varchar(50),$percentage decimal(18,2),$relationshipid int,$userid int,$platform varchar(50))
BEGIN
		if $beneficiaryid=0 then 
		
			insert into `employeebeneficiaries`(`employeeid`,`fullname`,`idnumber`,`mobilenumber`,`emailaddress`,`percentage`,`relationshipid`,`dateadded`,`addedby`)
			values($employeeid,$fullname,$idnumber,$mobilenumber,$emailaddress,$percentage,$relationshipid,now(),$userid);
			
			select max(`beneficiaryid`) into $beneficiaryid from `employeebeneficiaries`;
			
			select concat('Created beneficiary id: ',$beneficiaryid,' name:',$fullname,' for employee id:',$employeeid,' staffno: ',staffno,
			' names:',firstname, ' ',middlename,' ',lastname) 
			into @narration
			from `employeerecords` where `employeeid`=$employeeid;
			
			CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
			
		else
			-- get field values before edit
			CALL `sp_gettabledata`('employeebeneficiaries','beneficiaryid',$beneficiaryid,@originalvalues);
			
			-- update fields
			UPDATE `employeebeneficiaries`
			SET `fullname`=$fullname,`idnumber`=$idnumber,`mobilenumber`=$mobilenumber,`emailaddress`=$emailaddress,
			`percentage`=$percentage,`employeeid`=$employeeid,`relationshipid`=$relationshipid
			WHERE `beneficiaryid`=$beneficiaryid;
			
			-- get values after edit
			CALL `sp_gettabledata`('employeebeneficiaries','beneficiaryid',$beneficiaryid,@currentvalues);
			
			-- generate audit trail narrative
			SELECT CONCAT('Updated beneficiary details for id :',$beneficiaryid,' for  staff id:',$emplyeeid,' staff no:',staffno,' names:',
			firstname,' ',middlename,' ',lastname) 
			INTO @narration
			from `employeerecords` WHERE `employeeid`=$employeeid;
			
			-- add audut trail entry
			IF @originalvalues!=@currentvalues THEN 
				CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
			END IF;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveemployeedependant` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveemployeedependant` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveemployeedependant`($dependantid int,$employeeid int,$dependantname varchar(50),
	$relationship int,$iddoc int,$iddocno varchar(50),$dob date,$gender varchar(50),$passportphoto varchar(1000),
	$userid int,$platform varchar(1000))
BEGIN
	start transaction;
		if $dependantid=0 then 
			insert into `employeedependants`(`employeeid`,`dependantname`,`iddocumentid`,`iddocumentno`,`relationshipid`,
				`gender`,`dateofbirth`,`passportphoto`,`dateadded`,`addedby`)
			values($employeeid,$dependantname,$iddoc,$iddocno,$relationship,$gender,$dob,$passportphoto,now(),$userid);
			
			select max(`dependantid`) 
			into $dependantid 
			from `employeedependants`;
			
			select concat('Created dependant id:',$dependantid,' names: ',$dependantname,' for employee id:',$employeeid,' name:',firstname,' ',middlename, lastname)
			into @narration
			from `employeedependants` d join `employeerecords` r on r.employeeid=d.employeeid 
			where r.employeeid=$employeeid and d.dependantid=$dependantid;
			
			CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
		else
			-- get field values before edit
			CALL `sp_gettabledata`('employeedependants','dependantid',$dependantid,@originalvalues);
			
			-- update fields
			UPDATE `employeedependants`
			set `employeeid`=$employeeid,`dependantname`=$dependantname,`iddocumentid`=$iddoc,`iddocumentno`=$iddocno,
			`relationshipid`=$relationship,`dateofbirth`=$dob,`gender`=$gender
			WHERE `dependantid`=$dependantid;
			
			-- get values after edit
			CALL `sp_gettabledata`('employeedependants','dependantid',$dependantid,@currentvalues);
			
			-- generate audit trail narrative
			SELECT CONCAT('Updated employee dependant item details for id :',$dependantid)
			INTO @narration;
			
			-- add audut trail entry
			IF @originalvalues!=@currentvalues THEN 
				CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
			END IF;
		end if;	
	commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveemployeeexternalexperience` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveemployeeexternalexperience` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveemployeeexternalexperience`($id int,$employeeid int,$organization varchar(100),
	$jobposition varchar(100),$startdate date,$enddate date,$duties varchar(5000),$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			if $id=0 then 		
				insert into `employeeexternalworkingexperience`(`employeeid`,`organization`,`position`,
				`startdate`,`enddate`,`duties`,`dateadded`,`addedby`)
				values($employeeid,$organization,$jobposition,$startdate,$enddate,$duties,now(),$userid);
				
				select max(`id`) into $id from `employeeexternalworkingexperience`;
				
				select concat('Created external work experience id',$id,' for employee id:',$employeeid,' staff no:',staffno,
				' for organization: ',$organization,' position:',$jobposition)
				into @narration
				from `employeerecords` where `employeeid`=$employeeid;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
			else
				-- get field values before edit
				CALL `sp_gettabledata`('employeeexternalworkingexperience','id',$id,@originalvalues);
				
				-- update fields
				UPDATE `employeeexternalworkingexperience`
				SET `employeeid`=$employeeid,`organization`=$organization,`position`=$posiiton,
				`startdate`=$startdate,`enddate`=$enddate,`duties`=$duties
				WHERE `id`=$id;
				
				-- get values after edit
				CALL `sp_gettabledata`('employeeexternalworkingexperience','id',$id,@currentvalues);
				
				-- generate audit trail narrative
				SELECT CONCAT('Updated external work experience id',$id,' for employee id:',$employeeid,' staff no:',staffno,
				' for organization: ',$organization,' position:',$jobposition)
				INTO @narration
				FROM `employeerecords` WHERE `employeeid`=$employeeid;
				
				-- add audut trail entry
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveemployeegrievances` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveemployeegrievances` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveemployeegrievances`($employeeid int,$grievanceid int,$grievancetypeid int ,$grievanceremedyid int,
 $grievanceremedynarration varchar(1000),$userid int, $platform varchar(1000))
BEGIN

		start transaction;
		
			if $grievanceid = 0 then
			    
				insert into `employeegrievances`(`employeeid`,`grievancetypeid`,`grievanceremedyid`,`grievanceremedynarration`,`dateadded`,`addedby`)
				values($employeeid,$grievancetypeid,$grievanceremedyid,$grievanceremedynarration,now(),$userid);
				
				
				select max(`grievanceid`) into $grievanceid 
				from `employeegrievances`;
				
				select concat('Added new employee grievances id: ',$grievanceid,' for employee id ',$employeeid,
				' staff no ',staffno,' names ',firstname,' ',middlename,' ', lastname)
				from employeerecords where employeeid=$employeeid
				into @narration;
				
				-- calling audit trail,
				
				CALL `sp_saveaudittrailentry`($userid,'Insert',@narration,$platform,null,null,null);
				
			else 
			
				-- get table data befor updating
				
				CALL `sp_gettabledata`( 'employeegrievances','grievanceid',$grievanceid,@originalvalues);
				
				-- updating values
				update `employeegrievances`
				set`grievancecategorytype`=$grievancecategorytype,`grievanceremedy`=$grievanceremedy,`grievanceremedynarration`=$grievanceremedynarration
				where `grievanceid`=$grievanceid;
				
				-- calling the table data after the updates
				
				CALL `sp_gettabledata`( 'employeegrievances','grievanceid',$grievanceid,@currentvalues);
				
				if @currentvalues != @originalvalues then 
					
					-- calling the save audit trail
					SELECT CONCAT('grievances id ',$grievanceid) INTO @narration;
					CALL `sp_saveaudittrailentry`($userid,'Update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				end if;
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveemployeeinternalexperience` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveemployeeinternalexperience` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveemployeeinternalexperience`($id int,$employeeid int,$departmentid int,$positionid int, 
	$startdate date,$enddate date,$currentlyhere bool,$duties varchar(5000),$userid int,$platform varchar(50))
BEGIN
		start transaction;
			if $id=0  then 
				insert into `employeeinternalworkingexperience`(`employeeid`,`departmentid`,`positionid`,`duties`,`startdate`,
				`enddate`,`currentlyhere`,`dateadded`,`addedby`)
				values($employeeid,$departmentid,$positionid,$duties,$startdate,
				$enddate,$currentlyhere,now(),$userid);
				
				select max(`id`) into $id from `employeeinternalworkingexperience`;
				
				select concat('Created new internal experience id: ',$id,' for employee id:',
				$employeeid,' staff no:',staffno,' names:', firstname,' ',middlename,' ',lastname,
				' position:',positionname,' department:',departmentname)
				into @narration
				from `employeerecords` e
				join `employeeinternalworkingexperience` x on x.employeeid=e.employeeid
				join `jobpositions` j on j.`positionid`=x.`positionid` 
				join `departments` d on d.departmentid=x.departmentid
				where e.employeeid=$employeeid AND x.deleted=0 AND x.id=$id;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
			else
				CALL `sp_gettabledata`('employeeinternalworkingexperience','id',$id,@originalvalues);
				
				UPDATE `employeeinternalworkingexperience` 
				SET `employeeid`=$employeeid,`departmentid`=$departmentid,`positionid`=$positionid,`duties`=$duties,
				`startdate`=$startdate,`enddate`=$enddate,`currentlyhere`=$currentlyhere
				WHERE `id`=$id;
				
				CALL `sp_gettabledata`('employeeinternalworkingexperience','id',$id,@currentvalues);
				
				SELECT CONCAT('Updated employee internal work experience id : ',$id) 
				INTO @narration;
					
					
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
			end if;
			
			-- Update all other currently working here to false based on start date of this current entry
			if $currentlyhere=1 then 
				update `employeeinternalworkingexperience` 
				set `currentlyhere`=0,`enddate`=$startdate
				where `employeeid`=$employeeid and `id`!=$id and `currentlyhere`=1;
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveemployeepayrollitem` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveemployeepayrollitem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveemployeepayrollitem`($itemid int,$employeeid int,$payrollitemid int,$amount decimal(18,2),$targetamount decimal(18,2),
	$periodic bool,$startdate date,$duration int,$applyrelief bool,$attachment varchar(1000),$userid int,$platform varchar(50))
BEGIN
		if $itemid=0 then 
		
			-- delete if item existed previously
			update `employeepayrollitems` 
			set `deleted`=1,`deletedby`=$userid,`datedeleted`=now()
			where `payrollitemid`=$payrollitemid and `employeeid`=$employeeid and `deleted`=0;
			
			
			insert into `employeepayrollitems`(`payrollitemid`,`employeeid`,`startdate`,`duration`,`amount`,`targetamount`,`periodic`,`applyrelief`,
			`attachment`,`dateadded`,`addedby`)
			values($payrollitemid,$employeeid,$startdate,$duration,$amount,$targetamount,$periodic,$applyrelief,
			$attachment,now(),$userid);
			
			select max(`itemid`) into $itemid from `employeepayrollitems`;
			
			select concat('Added employee payroll item id:',$itemid,' name:',`itemname`,' amount:',$amount)
			into @narration
			from `payrollitems` where `itemid`=$payrollitemid;
			
			CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
			
		else
			-- get field values before edit
			CALL `sp_gettabledata`('employeepayrollitems','itemid',$itemid,@originalvalues);
			-- update fields
			UPDATE `employeepayrollitems`
			SET `payrollitemid`=$payrollitemid,`startdate`=$startdate,`duration`=$duration,`amount`=$amount,`periodic`=$periodic,
			`applyrelief`=$applyrelief,`attachment`=$attachment,`targetamount`=$targetamount
			WHERE `itemid`=$itemid;
			-- get values after edit
			CALL `sp_gettabledata`('employeepayrollitems','itemid',$itemid,@currentvalues);
			-- generate audit trail narrative
			SELECT CONCAT('Updated employee payroll item id :',$itemid)
			INTO @narration;
			
			-- add audut trail entry
			IF @originalvalues!=@currentvalues THEN 
				CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
			END IF;	
		
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveemployeetraining` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveemployeetraining` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveemployeetraining`($trainingid int,$employeeid int,$coursecategory varchar(50),$levelid int,
$institutionname varchar(100),$coursename varchar(50), $coursemajor varchar(50),$gradeattained varchar(50),$startdate date,$enddate date, 
$currentlyattending bool,$certificateexpires bool,$certificateexpirydate date,$certificatenumber varchar(50),$certificateattachment varchar(2000),
$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			if $trainingid=0 then
			
				insert into `employeetraining`(`employeeid`,`category`,`coursename`,`levelid`,`coursemajor`,`gradeattained`,
				`institutionname`,`startdate`,`enddate`,`currentlyattending`,`certificateno`,`certificateattachment`,
				`certificateexpires`,`certificateexpirydate`,`dateadded`,`addedby`)
				values($employeeid,$coursecategory,$coursename,$levelid,$coursemajor,$gradeattained,
				$institutionname,$startdate,$enddate,$currentlyattending,$certificatenumber,$certificateattachment,
				$certificateexpires,$certificateexpirydate,now(),$userid);
				
				select max(`trainingid`) into $trainingid from `employeetraining`;
				
				select concat('Created new employee training id:',$trainingid,' for employee id:',$employeeid,' staff no:',staffno,
				' names: ', firstname,' ',middlename,' ',lastname,' course category: ',$coursecategory,' level name:',`levelname`)
				into @narration
				from `employeerecords` e
				join `employeetraining` t on t.employeeid=e.employeeid
				join `courselevels` l on l.levelid=t.levelid
				where t.trainingid=$trainingid;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
			else
				CALL `sp_gettabledata`('employeetraining','trainingid',$trainingid,@originalvalues);
					
				UPDATE `employeetraining`
				SET `employeeid`=$employeeid,`category`=$coursecategory,`coursename`=$coursename,`levelid`=$levelid,
				`coursemajor`=$soursemajor,`gradeattained`=$gradeattained,`institutionname`=$institutionname,
				`startdate`=$startdate, `enddate`=$enddate, `currentlyattending`=$currentytattending,
				`certificateno`=$certificatenumber,`certificateexpires`=$certificateexpires,
				`certificateexpirydate`=$certificateexpirydate
				WHERE `trainingid`=$trainingid;
				
				CALL `sp_gettabledata`('employeetraining','trainingid',$trainingid,@currentvalues);
				
				SELECT CONCAT('Updated employment term id: ',$trainingid)
				INTO @narration;
				
				IF @originalvalues!=@currentvalues THEN
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,'','',NULL);
				END IF;
			
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveemploymentterm` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveemploymentterm` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveemploymentterm`($termid int,$termname varchar(50),$userid int,$platform varchar(1000))
BEGIN
		start transaction;
		
			if $termid=0 then
			
				insert into `employmentterms`(`termname`,`dateadded`,`addedby`)
				values($termname,now(),$userid);
				
				select max(`termid`) into $termid from `employmentterms`;
				
				select concat('Created new employment term id :',$termid, ' name: ',$termname)
				into @narration;
				
			
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
				
			else
				
				CALL `sp_gettabledata`('employmentterms','termid',$termid,@originalvalues);
				
				update `employmentterms`
				set `termname`=$termname
				where `termid`=$termid;
				
				CALL `sp_gettabledata`('employmentterms','termid',$termid,@currentvalues);
				
				select concat('Updated employment term id: ',$termid)
				into @narration;
				
				if @originalvalues!=@currentvalues then
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,'','',NULL);
				end if;
			
			end if;
			
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savejobcategory` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savejobcategory` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savejobcategory`($categoryid int,$categoryname varchar(50),
	$prefix varchar(50),$currentnumber int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			if $categoryid=0 then 
			
				insert into `jobcategories`(`categoryname`,`numberingprefix`,`currentnumber`,`dateadded`,`addedby`)
				values($categoryname,$prefix,$currentnumber,now(),$userid);
				
				select max(`categoryid`) into $categoryid from `jobcategories`;
				
				select concat('Created new job category id:',$categoryid,' name:',$categoryname)
				into @narration;
				
				CALL `sp_saveaudittrailentry`($userid,'Insert',@narration,$platform,NULL,NULL,NULL);
		
			else
				-- Get the table row before update 
				CALL `sp_gettabledata`('jobcategories','categoryid',$categoryid,@originalvalues);
				
				-- Update the data
				UPDATE `jobcategories`
				SET `categoryname`=$categoryname,`numberingprefix`=$prefix,`currentnumber`=$currentnumber
				WHERE `categoryid`=$categoryid;
				
				-- Get the table data after update 
				CALL `sp_gettabledata`('jobcategories','categoryid',$categoryid,@currentvalues);
				
				-- Check if there was a change and add ausit trail entry
				IF @currentvalues!=@originalvalues THEN
					SELECT CONCAT('Updated job category id ',$categoryid) INTO @narration;
					CALL `sp_saveaudittrailentry`($userid,'Update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
		
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savejobgroup` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savejobgroup` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savejobgroup`($jobgroupid int,$jobgroupname varchar(50),$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			if $jobgroupid=0 then
				insert into `jobgroups`(`jobgroupname`,`dateadded`,`addedby`)
				values($jobgroupname,now(),$userid);
				
				select max(`jobgroupid`) into $jobgroupid from `jobgroups`;
				
				select concat('Created a new job group id :',$jobgroupid,', name: ',$jobgroupname)
				into @narration;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
			else
				-- get field values before edit
				CALL `sp_gettabledata`('jobgroups','jobgroupid',$jobgroupid,@originalvalues);
				-- update fields
				UPDATE `jobgroups`
				SET `jobgroupname`=$jobgroupname
				WHERE `jobgroupid`=$jobgroupid;
				-- get values after edit
				CALL `sp_gettabledata`('jobgroups','jobgroupid',$jobgroupid,@currentvalues);
				-- generate audit trail narrative
				SELECT CONCAT('Updated job group details for id :',$jobgroupid)
				INTO @narration;
				
				-- add audut trail entry
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;	
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savejobnotch` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savejobnotch` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savejobnotch`($notchid int,$notchname varchar(50),$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			if $notchid=0 then
				insert into `jobnotches`(`notchname`,`dateadded`,`addedby`)
				values($notchname,now(),$userid);
				
				select max(`notchid`) into $notchid 
				from `jobnotches`;
				
				select concat('Created a new job notch id : ',$notchid,' name: ',$notchname)
				into @narration;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
			else
				-- get field values before edit
				CALL `sp_gettabledata`('jobnotches','notchid',$notchid,@originalvalues);
				
				-- update fields
				UPDATE `jobnotches`
				SET `notchname`=$notchname
				WHERE `notchid`=$notchid;
				
				-- get values after edit
				CALL `sp_gettabledata`('jobnotches','notchid',$notchid,@currentvalues);
				
				-- generate audit trail narrative
				SELECT CONCAT('Updated job notch details for id :',$notchid)
				INTO @narration;
				
				-- add audut trail entry
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savejobposition` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savejobposition` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savejobposition`($positionid int,$positionname varchar(50),$establishment int,$reportsto int,
	$startjobgroupid int,$startnotchid int,$endjobgroupid int,$endnotchid int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
		
			if $positionid=0 then 
			
				insert into `jobpositions`(`positionname`,`establishment`,`reportsto`,`startjobgroupid`,`startnotchid`,`endjobgroupid`,`endnotchid`,`dateadded`,`addedby`)
				values($positionname,$establishment,$reportsto,$startjobgroupid,$startnotchid,$endjobgroupid,$endnotchid,now(),$userid);
				
				select max(`positionid`) into $positionid from `jobpositions`;
				
				select concat('Created a new job position id: ',$positionid,' name: ',$positionname)
				into @narration;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
				
			else
				-- get field values before edit
				CALL `sp_gettabledata`('jobpositions','positionid',$positionid,@originalvalues);
				
				-- update fields
				UPDATE `jobpositions`
				SET `positionname`=$positionname,`establishment`=$establishment,`reportsto`=$reportsto,`startjobgroupid`=$startjobgroupid,
				`startnotchid`=$startnotchid,`endjobgroupid`=$endjobgroupid,`endnotchid`=$endnotchid
				WHERE `positionid`=$positionid;
				
				-- get values after edit
				CALL `sp_gettabledata`('jobpositions','positionid',$positionid,@currentvalues);
				
				-- generate audit trail narrative
				SELECT CONCAT('Updated job position details for id :',$positionid)
				INTO @narration;
				
				-- add audut trail entry
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveleaveapplication` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveleaveapplication` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveleaveapplication`($applicationid int,$employeeid int,$leavetypeid int,$startdate date, $enddate date, $daystaken int,
    $relieverid int,$supervisorid int,$narration varchar(1000),$attachment varchar(500),$userid int,$platform varchar(1000))
BEGIN	
		declare $approvalflowid int;
		
		select `approvalflow` into $approvalflowid 
		from `leavetypes` where `leaveid`=$leavetypeid;
		
		SELECT CONCAT('Employee Id: ', $employeeid,' Staff #: ',`staffno`,' Names: ',`firstname`,' ',`middlename`,' ',`lastname`) 
		INTO @employeename
		FROM `employeerecords`
		WHERE `employeeid`=$employeeid;
		
		SELECT CONCAT('Leave Id:',$leavetypeid,' name: ',`leavename`)
		INTO @leavename
		FROM `leavetypes` WHERE `leaveid`=$leavetypeid;
		
		start transaction;
			if $applicationid=0 then 
				insert into `leaveapplications`(`employeeid`,`leavetypeid`,`startdate`,`enddate`,`daystaken`,`narration`,`attachment`,
				`relieverid`,`supervisorid`,`addedby`,`dateadded`,`approvalflowid`)
				values($employeeid,$leavetypeid,$startdate,$enddate,$daystaken,$narration,$attachment,
				$relieverid,$supervisorid,$userid,now(),$approvalflowid);
				
				select max(`applicationid`) into $applicationid from `leaveapplications`;

				select concat('Created leave application  id:',$applicationid,' for ',@employeename,' ',@leavename)
				into @narration;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
			else
				-- get field values before edit
				CALL `sp_gettabledata`('leaveapplications','applicationid',$applicationid,@originalvalues);
				-- update fields
				UPDATE `leaveapplications`
				set `employeeid`=$employeeid,`leavetypeid`=$leavetypeid,`startdate`=$startdate,`enddate`=$enddate,
				`daystaken`=$daystaken,`narration`=$narration,`relieverid`=$relieverid,`supervisorid`=$supervisorid,
				`approvalflowid`=$approvalflowid
				WHERE `applicationid`=$applicationid;
				-- get values after edit
				CALL `sp_gettabledata`('leaveapplications','applicationid',$applicationid,@currentvalues);
				-- generate audit trail narrative
				SELECT CONCAT('Updated leave details for id :',$applicationid,' for ',@employeename,' ',@leavename)
				INTO @narration;
				
				-- add audut trail entry
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
			end if;
		commit;
		select $applicationid as applicationid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveleaveapprovalflow` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveleaveapprovalflow` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveleaveapprovalflow`($flowid int,$refno varchar(50),$flowname varchar(50),$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			if $flowid=0 then 
				insert into `leaveapprovalflows`(`flowname`,`dateadded`,`addedby`)
				values($flowname,now(),$userid);
				
				select max(`flowid`) into $flowid from `leaveapprovalflows`;
				
				insert into `leaveapprovallevels`(`flowid`,`approvallevel`,`escalationduration`,`colourcode`,`hierarchy`)
				select $flowid,`approvallevel`,`escallationduration`,`colourcode`,`hierarchy`
				from `templleaveapprovallevel` where `refno`=$refno;
				
				select concat('Created leave approval flow id:',$flowid,' name:',$flowname) 
				into @narration;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
				
				delete from `templleaveapprovallevel` where `refno`=$refno;
			else
				update `leaveapprovallevels`
				set `deleted`=1,`deletedby`=$userid,`datedelete`=now(),`reasondeleted`='details updated in the system'
				where `flowid`=$flowid;
				
				-- get field values before edit
				CALL `sp_gettabledata`('leaveapprovalflows','flowid',$flowid,@originalvalues);
				
				-- update fields
				UPDATE `leaveapprovalflows`
				SET `flowname`=$flowname
				WHERE `flowid`=$flowid;
				
				INSERT INTO `leaveapprovallevels`(`flowid`,`approvallevel`,`escalationduration`,`colourcode`,`hierarchy`)
				SELECT $flowid,`approvallevel`,`escallationduration`,`colourcode`,`hierarchy`
				FROM `templleaveapprovallevel` WHERE `refno`=$refno;
				
				DELETE FROM `templleaveapprovallevel` WHERE `refno`=$refno;
				
				-- get values after edit
				CALL `sp_gettabledata`('leaveapprovalflows','flowid',$flowid,@currentvalues);
				
				-- generate audit trail narrative
				SELECT CONCAT('Updated leave approval flow details for id :',$flowid)
				INTO @narration;
				
				-- add audut trail entry
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveleavetype` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveleavetype` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveleavetype`($leaveid int,$refno varchar(50),$leavename varchar(100),$allocationdays int,
	$probationperiod int,$halfdayapplication int,$skipholidays int,$applywithoutallocation int,$requiresattachment int,$approvalflow int,$allowancepayable int,
	$allowancepayrollitemid int,$canbesplit int,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			if $leaveid=0 then
			
				insert into `leavetypes`(`leavename`,`allocationdays`,`probationperiod`,`halfdayapplication`,`skipsholidays`,
				`applywithoutallocation`,`requiresattachment`,`approvalflow`,`allowancepayable`,`allowancepayrollitemid`,`canbesplit`,
				`dateadded`,`addedby`)
				values($leavename,$allocationdays,$probationperiod,$halfdayapplication,$skipholidays,
				$applywithoutallocation,$requiresattachment,$approvalflow,$allowancepayable,$allowancepayrollitemid,$canbesplit,
				now(),$userid);
				
				select max(`leaveid`) into $leaveid from `leavetypes`;
				
				select concat('Create leave type id:',$leaveid,' name;',$leavename)
				into @narration;
				
				insert into `leaveallowableallocation`(`leaveid`,`allocation`,`percentagepayable`)
				select $leaveid,`allocation`,`percentagepayable`
				from `templleaveallowableallocation` where `refno`=$refno;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
				
			else
				update `leaveallowableallocation` 
				set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid,`reasondeleted`='Updating to new values'
				where `leaveid`=$leaveid;
				
				-- values before update 
				CALL `sp_gettabledata`('leavetypes','leaveid',$leaveid,@originalvalues);
				
				update `leavetypes`
				set `leavename`=$leavename,`allocationdays`=$allocationdays,`probationperiod`=$probationperiod,
				`halfdayapplication`=$halfdayapplication,`skipsholidays`=$skipholidays,`applywithoutallocation`=$applywithoutallocation,
				`requiresattachment`=$requiresattachment,`approvalflow`=$approvalflow,`allowancepayrollitemid`=$allowancepayable,
				`allowancepayrollitemid`=$allowancepayrollitemid, `canbesplit`=$canbesplit
				where `leaveid`=$leaveid;
				
				-- values after update
				CALL `sp_gettabledata`('leavetypes','leaveid',$leaveid,@currentvalues);
				
				INSERT INTO `leaveallowableallocation`(`leaveid`,`allocation`,`percentagepayable`)
				SELECT $leaveid,`allocation`,`percentagepayable`
				FROM `templleaveallowableallocation` WHERE `refno`=$refno;
				
				-- add audut trail entry
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
				
			end if;
			
			delete from `templleaveallowableallocation` where `refno`=$refno;
			
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveoccupancy` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveoccupancy` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveoccupancy`($occupancyid int,$unitid int,$tenantid int,$leasestartdate date,$leaseenddate date,
	$moveindate date,$moveoutdate date,$agreementsigned bool,$agreementsigndate date,$agreementcopy varchar(1000),$rentduedate int,$allowtopay int,
	$allowinvoice int, $payableinadvance bool,$userid int,$platform varchar(1000),$branchid int)
BEGIN
	start transaction;
		if $occupancyid =0 then 
			
			insert into `occupancy`(`tenantid`,`unitid`,`leasestartdate`,`leaseenddate`,`moveindate`,`moveoutdate`,`status`,`rentduedate`,
				`agreementsigned`,`agreementsigndate`,`agreementcopy`,`allowtopay`,`allowinvoice`,`payableinadvance`)
			values($tenantid,$unitid,$leasestartdate,$leaseenddate,$moveindate,$moveoutdate,'active',$rentduedate,
				$agreementsigned,$agreementsigndate,$agreementcopy,$allowtopay,$allowinvoice,$payableinadvance);
				
			select max(`id`) into $occupancyid from `occupancy`;
			
			-- update tenant occupancy state
			update `tenants` set `occupancyid`=$occupancyid where `tenantid`=$tenantid;
			
			select concat('Created a occupancy for tenant id:', t.tenantid,' names:',firstname,' ',lastname,' property id: ',p.propertyid,' name: ',propertyname,' unit id: ',u.unitid,' name:',unitname)
			into @narration
			from `occupancy` o 
			inner join `propertyunits` u on u.unitid=o.unitid
			inner join `blocks` b on b.blockid=u.blockid
			inner join `properties` p on p.propertyid=b.propertyid
			inner join `tenants` t on t.`tenantid`=o.tenantid
			where t.tenantid=$tenantid and o.unitid=$unitid;
			
			CALL `sp_saveaudittrailentry`($userid,'Insert',@narration,$platform,'','',$branchid); 
			
		else
			CALL `sp_gettabledata`('occupancy','id',$occupancyid,@originalvalues);
		
			update `occupancy`
			set `tenantid`=$tenantid,`unitid`=$unitid,`leasestartdate`=$leasestartdate,`leaseenddate`=$leaseenddate,
			`moveindate`=$moveindate,`moveoutdate`=$moveoutdate,`rentduedate`=$rentduedate,`agreementsigned`=$agreementsigned,
			`agreementsigndate`=$agreementsigndate,`allowtopay`=$allowtopay,`allowinvoice`=$allowinvoice,`payableinadvance`=$payableinadvance
			where `id`=$occupancyid;
			
			
			CALL `sp_gettabledata`('occupancy','id',$occupancyid,@currentvalues);
			
			SELECT CONCAT('Updated occupancy details for occupancy id: ',$occupancyid) 
			INTO @narration;
			
			IF @originalvalues!=@currentvalues THEN 
				CALL `sp_saveaudittrailentry`($userid,'Update',@narration,$platform,@originalvalues,@currentvalues,$branchid);
			END IF;
		end if;
	commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savepayrollcategory` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savepayrollcategory` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savepayrollcategory`($categoryid INT,$categoryname VARCHAR(50),$numberprefix VARCHAR(50),$currentnumber INT,
$userid INT, $platform VARCHAR(1000))
BEGIN
		START TRANSACTION ;
			IF $categoryid = 0 THEN
			     INSERT INTO payrollcategories(categoryname,numberprefix,currentnumber,dateadded,addedby)
			     VALUES($categoryname,$numberprefix,$currentnumber,NOW(),$userid);
			     
			     SELECT MAX(categoryid)INTO $categoryid FROM payrollcategories;
			     
			     SELECT CONCAT('Created new category id:',$categoryid,'categoryname:',$categoryname) 
			     INTO @narration;
			     
			     CALL sp_saveaudittrailentry($userid,'insert',@narration,$platform,'','',NULL);
			
			ELSE  
	    
				CALL sp_getpayrollcategory('payrollcategories','categoryid',$categoryid,@originalvalues);
	        
				UPDATE payrollcategories
				SET categoryname=$categoryname,numberprefix =$numberprefix,currentnumber = $currentnumber
				WHERE categoryid = $categoryid;
	        
				CALL sp_getpayrollcategory('payrollcategory:','categoryid',$categoryid,@currentlvalues);
	        
				SELECT CONCAT('Updated category id:',$categoryid, 'categoryname',$categoryname) INTO @narration;
	        
				 IF @orriginalvalues !=@currentvalues THEN
					CALL sp_saveaudittrailentry($userid,'update',@narration,$platform,'','',NULL);
				 END IF;
			END IF;
		COMMIT;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savepayrollitem` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savepayrollitem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savepayrollitem`($refno varchar(50),$itemid int,$itemname varchar(50),$shortname varchar(50),$itemtype varchar(50),$statutory bool,$display varchar(50),$showonpayroll bool,
	$taxable bool,$isaloan bool,$defaultamount decimal(18,2),$allowablededuction bool,$allowabledeductionlowerlimit decimal(18,2),$allowabledeductionupperlimit decimal(18,2),
	$allowabledeductionvalue decimal(18,2),$allowabledeductionperecentage bool,$bracketed bool,$bracketedongross bool,$bracketeditem int,$bracketisprecentage bool,$bracketlowerlimit decimal(18,2),
	$bracketupperlimit decimal(18,2),$employertomatch bool,$employermatchfactor decimal(18,2),$applyrelief bool,$reliefitem int,$creditorid int,$itemgroupid int,$systemlabel varchar(50),$userid int,$platform varchar(1000)
)
BEGIN
		if $systemlabel='' then 
			set $systemlabel=NULL;
		end if;
		
		if $itemgroupid=0 then
			set $itemgroupid=NULL;
		end if;
		
		start transaction;
			if $itemid=0 then
				-- Insert bracket value
				insert into `payrollitems`(`itemname`,`shortname`,`itemtype`,`statutory`,`display`,`showonpayroll`,`taxable`,`isaloan`,`defaultamount`,`allowablededuction`,
				`allowabledeductionlowerlimit`,`allowabledeductionupperlimit`,`allowabledeductionvalue`,`allowabledeductionpercentage`,`bracketed`,`bracketedongross`,`bracketeditem`,
				`employertomatch`,`employermatchfactor`,`applyrelief`,`reliefitem`,`bracketispercentage`,`bracketlowerlimit`,`bracketupperlimit`,`creditorid`,`itemgroupid`,`description`,`dateadded`,`addedby`)
				values($itemname,$shortname,$itemtype,$statutory,$display,$showonpayroll,$taxable,$isaloan,$defaultamount,$allowablededuction,
				$allowabledeductionlowerlimit,$allowabledeductionupperlimit,$allowabledeductionvalue,$allowabledeductionperecentage,$bracketed,$bracketedongross,$bracketeditem,
				$employertomatch,$employermatchfactor,$applyrelief,$reliefitem,$bracketisprecentage,$bracketlowerlimit,$bracketupperlimit,$creditorid,$itemgroupid,$systemlabel,now(),$userid);
				
				select max(`itemid`) into $itemid from `payrollitems`;
				
				-- Insert payroll bracket values if any
				insert into `payrollitembracket`(`payrollitemid`,`lowerbracket`,`upperbracket`,`value`,`valid`)
				select $itemid, `lowerbracket`,`upperbracket`,`value`,1 
				from `temppayrollitembracket` where `refno`=$refno;
				
				-- Insert audit trail entry
				select concat('Created a new payroll item  id: ',$itemid,' item name:',$itemname) 
				into @narration;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
				
				-- Remove temp bracket values
				delete from `temppayrollitembracket` where `refno`=$refno;
				
			else
				-- get field values before edit
				CALL `sp_gettabledata`('payrollitems','itemid',$itemid,@originalvalues);
				
				-- update fields
				UPDATE `payrollitems`
				SET `itemname`=$itemname,`shortname`=$shortname,`itemtype`=$itemtype,`statutory`=$statutory,`creditorid`=$creditorid,`display`=$display,
				`showonpayroll`=$showonpayroll,`taxable`=$taxable,`isaloan`=$isaloan,`defaultamount`=$defaultamount,`allowablededuction`=$allowablededuction,
				`allowabledeductionlowerlimit`=$allowabledeductionlowerlimit,`allowabledeductionupperlimit`=$allowabledeductionupperlimit,
				`allowabledeductionvalue`=$allowabledeductionvalue,`allowabledeductionpercentage`=$allowabledeductionperecentage,`bracketed`=$bracketed,
				`bracketedongross`=$bracketedongross, `bracketeditem`=$bracketeditem,`employertomatch`=$employertomatch,`employermatchfactor`=$employermatchfactor,
				`applyrelief`=$applyrelief, `reliefitem`=$reliefitem,`bracketispercentage`=$bracketisprecentage, `bracketlowerlimit`=$bracketlowerlimit,
				`bracketupperlimit`=$bracketupperlimit,`itemgroupid`=$itemgroupid,`description`=$systemlabel
				WHERE `itemid`=$itemid;
				
				-- get values after edit
				CALL `sp_gettabledata`('payrollitems','itemid',$itemid,@currentvalues);
				
				-- generate audit trail narrative
				SELECT CONCAT('Updated payrollitems details for id :',$itemid)
				INTO @narration;
				
				-- add audut trail entry
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
			
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savepayrollitemgroup` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savepayrollitemgroup` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savepayrollitemgroup`($groupid int,$groupname varchar(50),$itemtype varchar(50),$userid int,$platform varchar(50))
BEGIN
		start transaction;
			if $groupid=0 then
				insert into `payrollitemgroups`(`groupname`,`itemtype`,`addedby`,`dateadded`)
				values($groupname,$itemtype,$userid,now());
				
				select max(`groupid`) into $groupid from `payrollitemgroups`;
				
				select concat('Created new payroll item group id:',$groupid,' name:',$groupname)
				into @narration;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
			else
				-- get field values before edit
				CALL `sp_gettabledata`('payrollitemgroups','groupid',$groupid,@originalvalues);
				
				-- update fields
				UPDATE `payrollitemgroups`
				SET `groupname`=$groupname,`itemtype`=$itemtype
				WHERE `groupid`=$groupid;
				
				-- get values after edit
				CALL `sp_gettabledata`('payrollitemgroups','groupid',$groupid,@currentvalues);
				
				-- generate audit trail narrative
				SELECT CONCAT('Updated payroll item group details for id :',$groupid)
				INTO @narration;
				
				-- add audut trail entry
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveprivileges` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveprivileges` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveprivileges`(`$id` INT, `$category` VARCHAR(50), `$refno` VARCHAR(50), `$userid` INT)
BEGIN
	start transaction;
		if $category='user' then 
			begin
				-- delete all privileges
				delete from `userprivileges` where `userid`=$id;
				-- add the ones from the temp table
				insert into `userprivileges` (`userid`,`objectid`,`allowed`,`addedby`,`lastupdatedby`,`lastdateupdated`)
				select $id,`objectid`,`valid`,$userid,$userid,now() from `tempprivilege` where `refno`=$refno;
			end;
		else
			begin
				-- delete all role privileges
				delete from `roleprivileges` where `roleid`=$id;
				-- add new ones from the temp table
				insert into `roleprivileges`(`roleid`,`objectid`,`allowed`,`dateadded`,`addedby`)
				SELECT $id,`objectid`,`valid`,NOW(),$userid FROM `tempprivilege` WHERE `refno`=$refno; 
			end;
		end if;
		-- Remove temporary data
		delete from `tempprivilege` WHERE `refno`=$refno;
	commit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savepublicholiday` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savepublicholiday` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savepublicholiday`($holidayid int,$holidayname varchar(50),$holidaydate date,
	$repeatsannually bool, $skipweekends bool,$userid int,$platform varchar(1000))
BEGIN
		start transaction;
			if $holidayid=0 then
				insert into `publicholidays`(`holidayname`,`date`,`repeatsannually`,`skipweekends`,`dateadded`,`addedby`)
				values($holidayname,$holidaydate,$repeatsannually,$skipweekends,now(),$userid);
				
				select max(`id`) into $holidayid from `publicholidays`;
				
				select concat('Created a new public holiday id: ',$holidayid,' name: ',$holidayname,' date: ',format($holidaydate,'%d-%b-%Y'))
				into @narration;
				
				CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
			else
				-- get field values before edit
				CALL `sp_gettabledata`('publicholidays','id',$holidayid,@originalvalues);
				-- update fields
				UPDATE `publicholidays`
				SET `holidayname`=$holidayname,`date`=$holidaydate,`repeatsannually`=$repeatsannually,`skipweekends`=$skipweekends
				WHERE `id`=$holidayid;
				-- get values after edit
				CALL `sp_gettabledata`('publicholidays','id',$holidayid,@currentvalues);
				-- generate audit trail narrative
				SELECT CONCAT('Updated holiday details for id :',$holidayid)
				INTO @narration;
				
				-- add audut trail entry
				IF @originalvalues!=@currentvalues THEN 
					CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
				END IF;
			
			end if;
		commit;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saverole` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saverole` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saverole`(`$roleid` INT, `$rolename` VARCHAR(50), `$roledescription` VARCHAR(50), `$userid` INT)
BEGIN
	if $roleid=0 then
		insert into `roles` (`rolename`,`roledescription`,`deleted`,`addedby`,`dateadded`)
		values($rolename,$roledescription,0,$userid,now());
		set $roleid=(select max(`roleid`) `roleid` from `roles`);
	else
		update `roles` set `rolename`=$rolename,`roledescription`=$roledescription, `lastdatemodified`=now(), `lastmodifiedby`=$userid
		where `roleid`=$roleid;
	end if;
	select $roleid as `roleid`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveroleusers` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveroleusers` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveroleusers`(`$userid` INT, `$roleid` INT, `$addedby` INT)
BEGIN
	if not exists (select * from `roleusers` where `roleid`=$roleid and `userid`=$userid and ifnull(`deleted`,0)=0) then
		insert into `roleusers`(`roleid`,`userid`,`dateadded`,`addedby`)
		values($roleid,$userid,now(),$addedby);
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savesalarystructure` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savesalarystructure` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savesalarystructure`($structureid int,$jobgroupid int,$notchid int,$payrollitemid int,
	$annualincrement decimal(18,2),$minvalue decimal(18,2),$maxvalue decimal(18,2),$userid int,$platform varchar(1000))
BEGIN
		if $structureid=0 then
			insert into `jobsalarystructures`(`jobgroupid`,`notchid`,`payrollitemid`,`minimumvalue`,`maximumvalue`,
			`annualincrement`,`dateadded`,`addedby`)
			values($jobgroupid,$notchid,$payrollitemid,$minvalue,$maxvalue,$annualincrement,now(),$userid);
			
			select max(`structureid`) into $structureid from `jobsalarystructures`;
			
			select concat('Created new salary structure id:',$structureid)
			into @narration;
			
			CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
		else
			-- get field values before edit
			CALL `sp_gettabledata`('jobsalarystructures','structureid',$structureid,@originalvalues);
			
			-- update fields
			UPDATE `jobsalarystructures`
			SET `jobgroupid`=$jobgroupid,`notchid`=$notchid,`payrollitemid`=$payrollitemid,`minimumvalue`=$minvalue,
			`maximumvalue`=$maxvalue,`annualincrement`=$annualincrement
			WHERE `structureid`=$structureid;
			
			-- get values after edit
			CALL `sp_gettabledata`('jobsalarystructures','structureid',$structureid,@currentvalues);
			
			-- generate audit trail narrative
			SELECT CONCAT('Updated job salary structure details for id :',$structureid)
			INTO @narration;
			
			-- add audut trail entry
			IF @originalvalues!=@currentvalues THEN 
				CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
			END IF;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveshiftdetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveshiftdetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveshiftdetails`($shiftdetailid int,$shiftid int,$dayweek varchar(50),$starttime time,$endtime time,
	$workingstatus varchar(50),$break float,$userid int,$platform varchar(1000))
BEGIN
		if $shiftdetailid=0 then 
			insert into `shiftdetails`(`shiftid`,`dayofweek`,`starts`,`ends`,`status`,`break`)
			values($shiftid,$dayweek,$starttime,$endtime,$workingstatus,$break);
			select max(`shiftdetailid`) into $shiftdetailid from `shiftdetails`;
			select concat('Created shift detail for ',$shiftid,' - ',shiftname, ', shift type ',shifttype,' for weekday ',$dayweek)
			into @narration
			from `shiftmaster` where `shiftid`=$shiftid;
			CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);
		else
			CALL `sp_gettabledata`('shiftdetails','shiftdetailid',$shiftid,@originalvalues);
			
			UPDATE `shiftdetails`
			SET `dayofweek`=$dayweek,`starts`=$starttime,`ends`=$endtime
			WHERE `shiftdetailid`=$shiftdetailid;
			
			CALL `sp_gettabledata`('shiftdetails','shiftdetailid',$shiftdetailid,@currentvalues);
			
			SELECT CONCAT('Updated shift details for  detailid:',$shiftdetailid) INTO @narration;
			
			IF @originalvalues!=@currentvalues THEN 
				CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
			END IF;
		
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveshiftmaster` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveshiftmaster` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveshiftmaster`($shiftid int,$shiftname varchar(50),$shifttype varchar(50),$userid int,$platform varchar(1000))
BEGIN
		if $shiftid=0 then 
			insert into `shiftmaster`(`shiftname`,`shifttype`,`dateadded`,`addedby`)
			values($shiftname,$shifttype,now(),$userid);
			select max(`shiftid`) into $shiftid from `shiftmaster`;
			select concat('Created new shift id:',$shiftid,' name:',$shiftname,' type:',$shifttype) into @narration;
			CALL `sp_saveaudittrailentry`($userid,'insert',@narration,$platform,'','',NULL);	
		else
			-- get field values before edit
			CALL `sp_gettabledata`('shiftmaster','shiftid',$shiftid,@originalvalues);
			
			update `shiftmaster`
			set `shiftname`=$shiftname, `shifttype`=$shifttype
			where `shiftid`=$shiftid;
			
			CALL `sp_gettabledata`('shiftmaster','shiftid',$shiftid,@currentvalues);
			
			select concat('Updated shift master details of id:',$shiftid) into @narration;
			
			IF @originalvalues!=@currentvalues THEN 
				CALL `sp_saveaudittrailentry`($userid,'update',@narration,$platform,@originalvalues,@currentvalues,NULL);
			END IF;
		end if;
		
		select $shiftid as shiftid;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savestaffshift` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savestaffshift` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savestaffshift`($refno varchar(50),$shiftid int,$shiftdate date,$workingstatus varchar(50),
	$overwrite bool,$userid int,$platform varchar(1000))
BEGIN
		if $overwrite=1 then 
			update `staffshifts` 
			set `deleted`=1,`datedeleted`=now(),`deletedby`=$userid, `deletedreason`='Overwritten with new values'
			where `employeeid` in(select `employeeid` from `tempstaffshifts` where `refno`=$refno)
			and `shiftid`=$shiftid and format(`date`,'%Y-%m-%d')=$shiftdate and `shiftid`=$shiftid and `deleted`=0;
		end if;
		
		insert into `staffshifts`(`employeeid`,`shiftid`,`date`,`status`,`addedby`,`dateadded`)	
		select `employeeid`,$shiftid,$shiftdate,$workingstatus, $userid,now() 
		from `tempstaffshifts`
		where `refno`=$refno;
		
		delete from `tempstaffshifts` where refno=$refno;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savetempleaveallowableallocation` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savetempleaveallowableallocation` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savetempleaveallowableallocation`($refno varchar(50),$allocation int,$percentagepayable decimal(3,2))
BEGIN
		insert into `templleaveallowableallocation`(`refno`,`allocation`,`percentagepayable`)
		values($refno,$allocation,$percentagepayable);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savetemplleaveapprovallevel` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savetemplleaveapprovallevel` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savetemplleaveapprovallevel`($refno varchar(50),$approvallevel varchar(50),$hierarchy int,$escallation varchar(50),$colourcode varchar(50))
BEGIN
		insert into `templleaveapprovallevel`(`refno`,`approvallevel`,`escallationduration`,`colourcode`,`hierarchy`)
		values($refno,$approvallevel,$escallation,$colourcode,$hierarchy);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savetemppayrollitembracketvalues` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savetemppayrollitembracketvalues` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savetemppayrollitembracketvalues`($refno varchar(50),$lowerbracket decimal(18,2),$upperbracket decimal(18,2),$bracketvalue decimal(18,2))
BEGIN
		insert into `temppayrollitembracket`(`refno`,`lowerbracket`,`upperbracket`,`value`)
		values($refno,$lowerbracket,$upperbracket,$bracketvalue);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savetempprivilege` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savetempprivilege` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savetempprivilege`(`$refno` VARCHAR(50), `$id` INT, `$objectid` INT, `$valid` BIT)
BEGIN
	insert into `tempprivilege`(`refno`,`id`,`objectid`,`valid`)
	values($refno,$id,$objectid,$valid);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_savetempstaffshift` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_savetempstaffshift` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_savetempstaffshift`($refno varchar(50),$employeeid int)
BEGIN
		insert into `tempstaffshifts`(`refno`,`employeeid`)
		values($refno,$employeeid);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveuser` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveuser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveuser`(`$userid` INT, `$userpassword` VARCHAR(50),$salt varchar(50),`$systemadmin` BIT, `$username` VARCHAR(50), `$firstname` VARCHAR(50), `$middlename` VARCHAR(50), `$lastname` VARCHAR(50), `$email` VARCHAR(50), `$mobile` VARCHAR(50), 
`$changepasswordonlogon` BIT, `$accountactive` BIT, `$addedby` INT,$institutionid int,$platform varchar(1000))
BEGIN
	select `name` into @institutionname from `institution` where `id`=$institutionid;
	
	if $userid=0 then 
		-- begin
			insert into `user`(`username`,`password`,`firstname`,`middlename`,`lastname`,`email`,`mobile`,`changepasswordonlogon`,`accountactive`,`addedby`,`dateadded`,systemadmin,`institutionid`,`salt`)
			values($username,$userpassword,$firstname,$middlename,$lastname,$email,$mobile,$changepasswordonlogon,$accountactive,$addedby,now(),$systemadmin,$institutionid,$salt);
			set $userid=(select max(`id`) from `user`);
			
			-- Add audit trail entry
			SET @narration=CONCAT('Added system admin account user for ',@institutionname,' id ',$institutionid); 
			CALL `sp__saveaudittrailentry`($userid,'Insert',@narration,$platform,'','');
		-- end
	else
		CALL `sp__gettabledata`('user','id',$userid,@originalvalues);
		
		update `user` set `username`=$username,`firstname`=$firstname,`middlename`=$middlename,`lastname`=$lastname,`email`=email,`mobile`=$mobile,
		`changepasswordonlogon`=$changepasswordonlogon,/*`accountactive`=$accountactive,*/`systemadmin`=$systemadmin,`lastmodifiedby`=$addedby,
		`lastmodifiedon`=NOW(), `salt`=$salt
		WHERE `id`=$userid;
		
		CALL `sp__gettabledata`('user','id',$userid,@currentvalues);
		
		if @originalvalues<>@currentvalues then
			SET @narration=CONCAT('Updated details of user id ',$userid); 
			CALL `sp__saveaudittrailentry`($addedby,'Update',@narration,$platform,@originalvalues,@currentvalues);
		end if;
	END IF;
	
	SELECT $userid AS `userid`;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_saveuserprivilege` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_saveuserprivilege` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_saveuserprivilege`(`$userid` INT, `$objectid` INT, `$allowed` BIT, `$useradding` INT)
BEGIN
	if not exists(select * from `userprivileges` where `objectid`=$objectid and `userid`=$userid) then
		insert into `userprivileges`(`objectid`,`userid`,`allowed`,`dateadded`,`addedby`)
		values($objectid,$userid,$allowed,now(),$useradding);
	else
		update `userprivileges` set `allowed`=$allowed, `lastdateupdated`=now(),`lastupdatedby`=$useradding 
		WHERE `objectid`=$objectid AND `userid`=$userid;
	end if ;
		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_updatequeueemailstatus` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_updatequeueemailstatus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updatequeueemailstatus`($mailid int,$sent bool, $errormessage varchar(5000))
BEGIN
		if $sent=1 then 
			update `emailqueue`
			set `datesent`=now(),`status`='sent'
			where `mailid`=$mailid;
		else
			update `emailqueue`
			set `status`='not sent',`errormessage`=$errormessage
			where `mailid`=$mailid;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_validateuserprivilege` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_validateuserprivilege` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_validateuserprivilege`(`$userid` INT, `$objectid` INT)
BEGIN
	declare $admin int;
	declare $valid int default 0;
	set $admin=(select systemadmin from `user` where `id`=$userid);
	if $admin=1 then
		set $valid=1;
	else
		set $valid=ifnull((select `allowed` from `userprivileges` where `userid`=$userid and `objectid`=$objectid),0);
	end if;
	
	select $valid as `allowed`;
	
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
