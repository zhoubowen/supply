# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.20)
# Database: supply
# Generation Time: 2018-02-27 15:48:53 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table t_article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_article`;

CREATE TABLE `t_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '''''' COMMENT '标题',
  `pic` varchar(11) DEFAULT '''''' COMMENT '主图',
  `content` text COMMENT '内容',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0:待审核，1审核通过，2已删除',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0:供求，1:招商投资',
  `create_by` int(11) NOT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='供求，招商信息';



# Dump of table t_bid
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_bid`;

CREATE TABLE `t_bid` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL COMMENT '会员ID',
  `article_id` int(11) DEFAULT NULL COMMENT '招商信息ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='投标信息';



# Dump of table t_member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_member`;

CREATE TABLE `t_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(16) NOT NULL DEFAULT '''''' COMMENT '账号',
  `password` varchar(32) NOT NULL DEFAULT '''''' COMMENT '密码',
  `email` varchar(32) NOT NULL DEFAULT '''''' COMMENT '邮箱',
  `name` varchar(16) NOT NULL DEFAULT '''''' COMMENT '姓名',
  `company` varchar(32) NOT NULL DEFAULT '''''' COMMENT '所属公司',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0：删除，1正常',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员信息';

LOCK TABLES `t_member` WRITE;
/*!40000 ALTER TABLE `t_member` DISABLE KEYS */;

INSERT INTO `t_member` (`id`, `account`, `password`, `email`, `name`, `company`, `status`, `create_time`, `update_time`)
VALUES
	(1,'admin','4QrcOUm6Wau+VuBX8g+IPg==','admin@gmail.com','admin','超级宇宙无敌公司',1,'2018-02-27 13:13:53','2018-02-27 19:34:46'),
	(2,'wangmazi','4QrcOUm6Wau+VuBX8g+IPg==','zhangshan@gmail.com','王麻子','盛大网络',0,'2018-02-27 21:29:22',NULL),
	(3,'zhangshan','4QrcOUm6Wau+VuBX8g+IPg==','zhangshan@gmail.com','张三','格力集团股份有限公司',1,'2018-02-27 19:18:51','2018-02-27 19:33:38');

/*!40000 ALTER TABLE `t_member` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
