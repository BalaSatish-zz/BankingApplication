/*
SQLyog Community v12.5.1 (64 bit)
MySQL - 5.5.10 : Database - jjs6
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jjs6` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `jjs6`;

/*Table structure for table `bank` */

DROP TABLE IF EXISTS `bank`;

CREATE TABLE `bank` (
  `AccNo` varchar(50) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `mobileNo` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `typeofAccount` varchar(40) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `Balance` decimal(11,3) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `otp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AccNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bank` */

insert  into `bank`(`AccNo`,`firstname`,`lastname`,`mobileNo`,`Address`,`DOB`,`Gender`,`typeofAccount`,`password`,`Balance`,`email`,`otp`) values 
('SBI-1101706326','as','asd','asd','ncm','14','male','fd','asd',8500.000,NULL,NULL),
('SBI-1144192621','SANTHOSH','POOJARI','9482209937','Banashankari','14/01/1991','male','sb','asd',25500.000,NULL,NULL),
('SBI-1459348293','adam','hussain','gfgfgfgf','hhh','2014-09-02','male','sb','adam',23420.000,NULL,NULL),
('SBI-1928496751','BALA SATISH','C','07013546340','AP','2019-06-13','male','sb','85208520',10000.000,'chandragiribalasatish@gmail.com',NULL),
('SBI-310858559','bn','nn','  ll',' mm','  mm','male','ca','asd',4000.000,NULL,NULL),
('SBI-328777537','as','xcd','xcv','hdfj','x c','male','sb','asd',5689.000,NULL,NULL),
('SBI-391375399','as','asd','9449241560','Zxdxfgv','2009-04-07','male','sb','asd',8240.000,NULL,NULL),
('SBI-472834792','Krishna','poojari','9449241560','zxcvb','2013-01-07','male','sb','asd',12500.000,NULL,NULL),
('SBI-839023384','Bala','Satish','9632420152','Bangalore','1997-03-09','male','sb','85208520',20000.000,'satishyadavbunny1@gmail.com','564428'),
('SBI112005463','RAVI','S','9485632678','Jayanagar','5/02/1986','male','sb','asd',49000.000,NULL,NULL),
('SBI1181406839','asdXc','scdv','xzc','xcsc','xz','male','sb','asd',456.000,NULL,NULL),
('SBI1293699144','sdfg','fgg','sdfg','cv','78','male','sb','asd',78956.000,NULL,NULL),
('SBI1775468849','asde','trytu','9485','asdfg','15','male','sb','qwer',15000.000,NULL,NULL),
('SBI1987679138','SANTHOSH','POOJARI','9449241560','#519 3rd main nagar\r\njp nagar  1st phase bangalore','2015-01-19','male','sb','asd',4500.000,NULL,NULL),
('SBI269603617','rama','kr','9886339116','asdfghgfd','2014-09-09','male','fd','asd',48000.000,NULL,NULL),
('SBI303924608','xc','b','bn','bnm','2014-08-05','male','ca','asd',41100.000,NULL,NULL);

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `Tid` varchar(30) NOT NULL,
  `AccNo` varchar(50) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Balance` decimal(8,2) DEFAULT NULL,
  `DateCol` date DEFAULT NULL,
  PRIMARY KEY (`Tid`),
  KEY `FK_transaction` (`AccNo`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`AccNo`) REFERENCES `bank` (`AccNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaction` */

insert  into `transaction`(`Tid`,`AccNo`,`Description`,`Balance`,`DateCol`) values 
('-1054151178','SBI-391375399     ','hi',7240.00,'2014-09-17'),
('-1619730324','SBI303924608','wer',43100.00,'2014-09-07'),
('-1672225259','SBI1775468849','hjk',14500.00,'2014-11-17'),
('-1904431318','SBI-391375399     ','rtyu',7200.00,'2014-09-10'),
('-340354651','SBI-1101706326','asdf',9500.00,'2014-09-07'),
('-680709302','SBI-1144192621','asdf',26500.00,'2014-09-07'),
('-809865162','SBI269603617','wer',48000.00,'2014-09-07'),
('1195267989','SBI-1144192621','rtyu',25500.00,'2014-09-10'),
('1620408059','SBI-1459348293','',4960.00,'2014-09-17'),
('950516778','SBI1775468849','hjk',15500.00,'2014-11-17'),
('TID-1012329228','SBI-839023384',NULL,19001.00,'2019-06-27'),
('TID-1137598586','SBI-1459348293',NULL,17920.00,'2019-06-27'),
('TID-116042355','SBI-1459348293',NULL,15460.00,'2019-06-27'),
('TID-1250650596','SBI-1459348293','',15960.00,'2019-06-27'),
('TID-126987341','SBI-1459348293',NULL,16420.00,'2019-06-27'),
('TID-1293416038','SBI-1459348293','fee',9960.00,'2019-06-23'),
('TID-149964346','SBI-1459348293',NULL,18420.00,'2019-06-27'),
('TID-1603138292','SBI-1459348293','',10960.00,'2019-06-26'),
('TID-1638101567','SBI-1459348293',NULL,16000.00,'2019-06-27'),
('TID-1844732785','SBI-839023384',NULL,15500.00,'2019-06-27'),
('TID-1959024571','SBI-1101706326','dfghvb',8500.00,'2015-01-13'),
('TID-2024658456','SBI-1459348293',NULL,19419.00,'2019-06-27'),
('TID-2046685328','SBI1987679138','sdfgh',4500.00,'2015-01-18'),
('TID-214979481','SBI-1144192621','aqwefg',0.00,'2014-08-26'),
('TID-232084710','SBI-1459348293',NULL,16460.00,'2019-06-27'),
('TID-253974682','SBI-1459348293',NULL,17420.00,'2019-06-27'),
('TID-429958962','SBI-391375399','aqwefg',6200.00,'2014-08-26'),
('TID-489157436','SBI-839023384',NULL,18500.00,'2019-06-27'),
('TID-556251058','SBI-1459348293','hvusa\r\n',10460.00,'2019-06-23'),
('TID-646708019','SBI-839023384','fee',5000.00,'2019-06-23'),
('TID-928729708','SBI-1459348293',NULL,19920.00,'2019-06-27'),
('TID-978314872','SBI-1459348293',NULL,20420.00,'2019-06-27'),
('TID1018764162','SBI-1459348293',NULL,16920.00,'2019-06-27'),
('TID1133248282','SBI-1459348293',NULL,19420.00,'2019-06-27'),
('TID1345914502','SBI-839023384','',4000.00,'2019-06-26'),
('TID1522158350','SBI-839023384','',-1000.00,'2019-06-27'),
('TID1578684355','SBI-1459348293',NULL,16920.00,'2019-06-27'),
('TID1683118794','SBI-839023384',NULL,18500.00,'2019-06-27'),
('TID1869358119','SBI-839023384','hvusa\r\n',4500.00,'2019-06-23'),
('TID201596640','SBI-472834792','sdfgh',12500.00,'2015-01-18'),
('TID2072501475','SBI-1459348293',NULL,17420.00,'2019-06-27'),
('TID376918154','SBI-391375399','dfghvb',8240.00,'2015-01-13'),
('TID566624141','SBI-839023384',NULL,19000.00,'2019-06-27'),
('TID605501726','SBI-1459348293',NULL,23420.00,'2019-06-27');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
