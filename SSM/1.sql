/*
SQLyog Ultimate v12.2.6 (64 bit)
MySQL - 5.5.20 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(10) DEFAULT NULL,
  `adminPass` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`aid`,`adminName`,`adminPass`) values 
(1,'1','1');

/*Table structure for table `page` */

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `pagetitle` varchar(30) NOT NULL,
  `page` varchar(200) NOT NULL,
  `good` int(1) DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

/*Data for the table `page` */

insert  into `page`(`pid`,`pagetitle`,`page`,`good`) values 
(8,'cxzczxc','czxcz',0),
(9,'cxzczxc','czxcz',0),
(10,'cxzczxc','czxcz',0),
(11,'cxzczxc','czxcz',0),
(12,'cxzczxc','czxcz',0),
(13,'cxzczxc','czxcz',0),
(14,'cxzczxc','czxcz',0),
(15,'cxzczxc','czxcz',0),
(26,'cxzczxc','czxcz',0),
(27,'cxzczxc','czxcz',0),
(28,'cxzczxc','czxcz',0),
(29,'cxzczxc','czxcz',0),
(30,'cxzczxc','czxcz',0),
(31,'cxzczxc','czxcz',0),
(32,'cxzczxc','czxcz',0),
(33,'cxzcz','cxzczx',0),
(34,'cxzcz','cxzczx',0),
(35,'cxzc','cxzc',0),
(36,'cxzc','xzcz',0),
(37,'cxzc','xzcz',0),
(38,'cxzc','xzcz',0),
(39,'cxzc','cxzcz',0),
(40,'cxzc','cxzcz',0),
(41,'cxzcz','cxzcz',0),
(42,'cxzczxczxczxc','cxzczczx',0),
(43,'cxzcz','cxzczxcz',0),
(44,'cxzczxccxzczcz1231cxz','zczczczczxcz',0),
(45,'cxzczxc','xzczxczx',0),
(46,'cxzczxc','xzczxczx',0),
(47,'cxzczxc','xzczxczx',0),
(48,'cxvx','vxzczxczx',0),
(49,'cxvx','vxzczxczx',0),
(50,'cxvx','vxzczxczx',0),
(51,'cxvx','vxzczxczx',0),
(52,'cxvx','vxzczxczx',1),
(53,'cxvx','vxzczxczx',1),
(54,'cxvx','vxzczxczx',1),
(55,'cxvx','vxzczxczx',1),
(56,'cxvx','vxzczxczx',0),
(57,'cxvx','vxzczxczx',0),
(58,'cxvx','vxzczxczx',0),
(59,'cxvx','vxzczxczx',0),
(60,'cxvx','vxzczxczx',0),
(61,'cxvx','vxzczxczx',0),
(62,'cxvx','vxzczxczx',0),
(63,'cxvx','vxzczxczx',0),
(64,'cxvx','vxzczxczx',0),
(65,'cxvx','vxzczxczx',0),
(66,'cxzczc','czxczczxc',0),
(67,'cxzczc','czxczczxc',0),
(68,'c xzczxc','cxzczcz',0),
(69,'c xzczxc','cxzczczopopopo',0),
(70,'jkljkljlkj','tyutuytuytutuytuy',0),
(71,'cxzczc','czxczc',0),
(72,'vxczx','czxczxcz',0),
(73,'cxzczx','cxzczxc',0),
(74,'cxzcz','czxcz',0),
(75,'cxzcz','czxcz',0),
(76,'xzcz','cxzczx',0),
(77,'cxzczc','czxczc',0),
(78,'cxzczxc','cxzczc',0),
(79,'c\'x\'z\'c\'z\'x','czxczxczx',0),
(80,'cxzcz','czxczc',0),
(81,'cxzc','zxczc',0),
(82,'xzx\'Z','cxzczxc',0),
(83,'czxczxc','cxzcz',0),
(84,'czxczx','czxczx',0),
(85,'fdsfsdfsd','fdsfsdfsvd d',0),
(86,'dfgdfgd','gfdsfsdf',0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`username`,`pass`) values 
(29,'123','312'),
(30,'12312','3123'),
(33,'1','123456'),
(35,'312311','3123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
