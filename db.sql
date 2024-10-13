/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiaoxueguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiaoxueguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiaoxueguanli`;

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chengji_name` varchar(200) DEFAULT NULL COMMENT '成绩标题 Search111',
  `chengji_types` int(11) DEFAULT NULL COMMENT '成绩类型  Search111',
  `xuenfen_number` int(11) DEFAULT NULL COMMENT '成绩',
  `chengji_content` text COMMENT '备注',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `chengji_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='成绩信息';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`chengji_name`,`chengji_types`,`xuenfen_number`,`chengji_content`,`yonghu_id`,`chengji_delete`,`create_time`) values (1,'成绩标题1',2,283,'备注1',3,1,'2023-04-03 11:35:26'),(2,'成绩标题2',2,5,'备注2',3,1,'2023-04-03 11:35:26'),(3,'成绩标题3',3,304,'备注3',2,1,'2023-04-03 11:35:26'),(4,'成绩标题4',2,401,'备注4',2,1,'2023-04-03 11:35:26'),(5,'成绩标题5',1,246,'备注5',2,1,'2023-04-03 11:35:26'),(6,'成绩标题6',1,89,'备注6',3,1,'2023-04-03 11:35:26'),(7,'成绩标题7',2,136,'备注7',3,1,'2023-04-03 11:35:26'),(8,'成绩标题8',1,402,'备注8',2,1,'2023-04-03 11:35:26'),(9,'成绩标题9',3,177,'备注9',1,1,'2023-04-03 11:35:26'),(10,'成绩标题10',3,64,'备注10',2,1,'2023-04-03 11:35:26'),(11,'成绩标题11',2,378,'备注11',3,1,'2023-04-03 11:35:26'),(12,'成绩标题12',1,145,'备注12',3,1,'2023-04-03 11:35:26'),(13,'成绩标题13',3,427,'备注13',3,1,'2023-04-03 11:35:26'),(14,'成绩标题14',1,38,'备注14',3,1,'2023-04-03 11:35:26'),(16,'123',2,123,'<p>123</p>',1,1,'2023-04-03 13:32:59');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (21,'kecheng_types','课程类型',1,'课程类型1',NULL,NULL,'2023-04-03 11:34:54'),(22,'kecheng_types','课程类型',2,'课程类型2',NULL,NULL,'2023-04-03 11:34:54'),(23,'kecheng_types','课程类型',3,'课程类型3',NULL,NULL,'2023-04-03 11:34:54'),(24,'xueqi_types','学期',1,'学期1',NULL,NULL,'2023-04-03 11:34:54'),(25,'xueqi_types','学期',2,'学期2',NULL,NULL,'2023-04-03 11:34:54'),(26,'xingqi_types','周次',1,'周次1',NULL,NULL,'2023-04-03 11:34:54'),(27,'xingqi_types','周次',2,'周次2',NULL,NULL,'2023-04-03 11:34:54'),(28,'jieke_types','第几节',1,'第1节',NULL,NULL,'2023-04-03 11:34:54'),(29,'jieke_types','第几节',2,'第2节',NULL,NULL,'2023-04-03 11:34:54'),(30,'chengji_types','成绩类型',1,'成绩类型1',NULL,NULL,'2023-04-03 11:34:54'),(31,'chengji_types','成绩类型',2,'成绩类型2',NULL,NULL,'2023-04-03 11:34:54'),(32,'chengji_types','成绩类型',3,'成绩类型3',NULL,NULL,'2023-04-03 11:34:54'),(33,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-03 11:34:54'),(34,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-03 11:34:55'),(35,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-03 11:34:55'),(36,'sex_types','性别',1,'男',NULL,NULL,'2023-04-03 11:34:55'),(37,'sex_types','性别',2,'女',NULL,NULL,'2023-04-03 11:34:55'),(38,'banji_types','班级',1,'班级1',NULL,NULL,'2023-04-03 11:34:55'),(39,'banji_types','班级',2,'班级2',NULL,NULL,'2023-04-03 11:34:55'),(40,'banji_types','班级',3,'班级3',NULL,NULL,'2023-04-03 11:34:55'),(41,'zuoye_types','作业类型',1,'作业类型1',NULL,NULL,'2023-04-03 11:34:55'),(42,'zuoye_types','作业类型',2,'作业类型2',NULL,NULL,'2023-04-03 11:34:55'),(43,'zuoye_types','作业类型',3,'作业类型3',NULL,NULL,'2023-04-03 11:34:55'),(44,'zhuang_types','学籍状态',1,'正常',NULL,NULL,'2023-04-03 11:34:55'),(45,'zhuang_types','学籍状态',2,'异常',NULL,NULL,'2023-04-03 11:34:55'),(49,'kecheng_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-03 11:34:55'),(50,'kecheng_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-03 11:34:55'),(51,'kecheng_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-03 11:34:55'),(52,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-03 11:34:55'),(53,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-03 11:34:55'),(54,'qingjia_types','请假类型',1,'生病',NULL,NULL,'2023-04-03 13:39:36'),(55,'qingjia_types','请假类型',2,'有事',NULL,NULL,'2023-04-03 13:39:36'),(56,'qingjia_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-04-03 13:39:36'),(57,'qingjia_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-04-03 13:39:36'),(58,'qingjia_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-04-03 13:39:36'),(59,'qingjia_types','请假类型',1,'生病',NULL,NULL,'2023-04-03 13:41:20'),(60,'qingjia_types','请假类型',2,'有事',NULL,NULL,'2023-04-03 13:41:20'),(61,'qingjia_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-04-03 13:41:20'),(62,'qingjia_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-04-03 13:41:20'),(63,'qingjia_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-04-03 13:41:20');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`jiaoshi_id`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,3,NULL,'发布内容1',356,1,'2023-04-03 11:35:26','2023-04-03 11:35:26','2023-04-03 11:35:26'),(2,'帖子标题2',NULL,1,NULL,'发布内容2',183,1,'2023-04-03 11:35:26','2023-04-03 11:35:26','2023-04-03 11:35:26'),(3,'帖子标题3',NULL,1,NULL,'发布内容3',349,1,'2023-04-03 11:35:26','2023-04-03 11:35:26','2023-04-03 11:35:26'),(4,'帖子标题4',NULL,2,NULL,'发布内容4',32,1,'2023-04-03 11:35:26','2023-04-03 11:35:26','2023-04-03 11:35:26'),(5,'帖子标题5',NULL,3,NULL,'发布内容5',369,1,'2023-04-03 11:35:26','2023-04-03 11:35:26','2023-04-03 11:35:26'),(6,'帖子标题6',NULL,1,NULL,'发布内容6',121,1,'2023-04-03 11:35:26','2023-04-03 11:35:26','2023-04-03 11:35:26'),(7,'帖子标题7',NULL,3,NULL,'发布内容7',477,1,'2023-04-03 11:35:26','2023-04-03 11:35:26','2023-04-03 11:35:26'),(8,'帖子标题8',NULL,3,NULL,'发布内容8',280,1,'2023-04-03 11:35:26','2023-04-03 11:35:26','2023-04-03 11:35:26'),(9,'帖子标题9',NULL,3,NULL,'发布内容9',60,1,'2023-04-03 11:35:26','2023-04-03 11:35:26','2023-04-03 11:35:26'),(10,'帖子标题10',NULL,2,NULL,'发布内容10',419,1,'2023-04-03 11:35:26','2023-04-03 11:35:26','2023-04-03 11:35:26'),(11,'帖子标题11',NULL,2,NULL,'发布内容11',497,1,'2023-04-03 11:35:26','2023-04-03 11:35:26','2023-04-03 11:35:26'),(12,'帖子标题12',NULL,1,NULL,'发布内容12',236,1,'2023-04-03 11:35:26','2023-04-03 11:35:26','2023-04-03 11:35:26'),(13,'帖子标题13',NULL,3,NULL,'发布内容13',273,1,'2023-04-03 11:35:26','2023-04-03 11:35:26','2023-04-03 11:35:26'),(14,'帖子标题14',NULL,1,NULL,'发布内容14',314,1,'2023-04-03 11:35:26','2023-04-03 11:35:26','2023-04-03 11:35:26'),(15,NULL,NULL,1,NULL,'111111111111111',14,2,'2023-04-03 13:30:06',NULL,'2023-04-03 13:30:06'),(16,NULL,1,NULL,NULL,'2222222222222',14,2,'2023-04-03 13:33:07',NULL,'2023-04-03 13:33:07'),(17,NULL,NULL,NULL,1,'3333333333333333',14,2,'2023-04-03 13:34:21',NULL,'2023-04-03 13:34:21');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名 Search111 ',
  `jiaoshi_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111 ',
  `jiaoshi_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`jiaoshi_uuid_number`,`username`,`password`,`jiaoshi_name`,`jiaoshi_photo`,`sex_types`,`jiaoshi_phone`,`jiaoshi_email`,`banji_types`,`jiaoshi_delete`,`create_time`) values (1,'1680492926169','a1','123456','教师姓名1','upload/jiaoshi1.jpg',2,'17703786901','1@qq.com',1,1,'2023-04-03 11:35:26'),(2,'1680492926182','a2','123456','教师姓名2','upload/jiaoshi2.jpg',2,'17703786902','2@qq.com',3,1,'2023-04-03 11:35:26'),(3,'1680492926212','a3','123456','教师姓名3','upload/jiaoshi3.jpg',1,'17703786903','3@qq.com',3,1,'2023-04-03 11:35:26');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `kecheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称  Search111 ',
  `kecheng_photo` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程类型 Search111',
  `kecheng_clicknum` int(11) DEFAULT NULL COMMENT '课程热度',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `kecheng_content` longtext COMMENT '课程介绍 ',
  `kecheng_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`kecheng_uuid_number`,`kecheng_name`,`kecheng_photo`,`kecheng_types`,`kecheng_clicknum`,`zan_number`,`cai_number`,`jiaoshi_id`,`kecheng_content`,`kecheng_delete`,`insert_time`,`create_time`) values (1,'1680492926153','课程名称1','upload/kecheng1.jpg',2,100,428,22,3,'课程介绍1',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(2,'1680492926197','课程名称2','upload/kecheng2.jpg',1,466,448,412,1,'课程介绍2',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(3,'1680492926160','课程名称3','upload/kecheng3.jpg',1,221,97,163,3,'课程介绍3',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(4,'1680492926248','课程名称4','upload/kecheng4.jpg',1,155,466,9,1,'课程介绍4',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(5,'1680492926183','课程名称5','upload/kecheng5.jpg',2,28,391,100,1,'课程介绍5',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(6,'1680492926243','课程名称6','upload/kecheng6.jpg',3,185,262,361,2,'课程介绍6',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(7,'1680492926241','课程名称7','upload/kecheng7.jpg',1,15,93,451,3,'课程介绍7',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(8,'1680492926244','课程名称8','upload/kecheng8.jpg',1,189,154,359,1,'课程介绍8',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(9,'1680492926182','课程名称9','upload/kecheng9.jpg',2,314,342,14,1,'<p>课程介绍9</p>',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(10,'1680492926236','课程名称10','upload/kecheng10.jpg',1,380,443,334,3,'课程介绍10',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(11,'1680492926173','课程名称11','upload/kecheng11.jpg',2,156,306,255,3,'课程介绍11',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(12,'1680492926247','课程名称12','upload/kecheng12.jpg',2,412,493,102,3,'课程介绍12',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(13,'1680492926220','课程名称13','upload/kecheng13.jpg',1,360,359,55,3,'课程介绍13',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(14,'1680492926233','课程名称14','upload/kecheng14.jpg',2,79,82,79,2,'课程介绍14',1,'2023-04-03 11:35:26','2023-04-03 11:35:26');

/*Table structure for table `kecheng_collection` */

DROP TABLE IF EXISTS `kecheng_collection`;

CREATE TABLE `kecheng_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `kecheng_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='课程收藏';

/*Data for the table `kecheng_collection` */

insert  into `kecheng_collection`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(2,2,1,1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(3,3,3,1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(5,5,3,1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(6,6,3,1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(7,7,1,1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(9,9,2,1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(10,10,2,1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(11,11,2,1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(12,12,2,1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(13,13,2,1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(14,14,2,1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(18,8,1,2,'2023-04-03 13:29:39','2023-04-03 13:29:39'),(19,8,1,1,'2023-04-03 13:29:49','2023-04-03 13:29:49'),(20,3,1,3,'2023-04-03 13:30:48','2023-04-03 13:30:48');

/*Table structure for table `kecheng_liuyan` */

DROP TABLE IF EXISTS `kecheng_liuyan`;

CREATE TABLE `kecheng_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `kecheng_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='课程留言';

/*Data for the table `kecheng_liuyan` */

insert  into `kecheng_liuyan`(`id`,`kecheng_id`,`yonghu_id`,`kecheng_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-04-03 11:35:26','回复信息1','2023-04-03 11:35:26','2023-04-03 11:35:26'),(2,2,3,'留言内容2','2023-04-03 11:35:26','回复信息2','2023-04-03 11:35:26','2023-04-03 11:35:26'),(3,3,3,'留言内容3','2023-04-03 11:35:26','回复信息3','2023-04-03 11:35:26','2023-04-03 11:35:26'),(4,4,1,'留言内容4','2023-04-03 11:35:26','回复信息4','2023-04-03 11:35:26','2023-04-03 11:35:26'),(5,5,3,'留言内容5','2023-04-03 11:35:26','回复信息5','2023-04-03 11:35:26','2023-04-03 11:35:26'),(6,6,3,'留言内容6','2023-04-03 11:35:26','回复信息6','2023-04-03 11:35:26','2023-04-03 11:35:26'),(7,7,2,'留言内容7','2023-04-03 11:35:26','回复信息7','2023-04-03 11:35:26','2023-04-03 11:35:26'),(8,8,3,'留言内容8','2023-04-03 11:35:26','回复信息8','2023-04-03 11:35:26','2023-04-03 11:35:26'),(9,9,3,'留言内容9','2023-04-03 11:35:26','回复信息9','2023-04-03 11:35:26','2023-04-03 11:35:26'),(10,10,2,'留言内容10','2023-04-03 11:35:26','回复信息10','2023-04-03 11:35:26','2023-04-03 11:35:26'),(11,11,2,'留言内容11','2023-04-03 11:35:26','回复信息11','2023-04-03 11:35:26','2023-04-03 11:35:26'),(12,12,2,'留言内容12','2023-04-03 11:35:26','回复信息12','2023-04-03 11:35:26','2023-04-03 11:35:26'),(13,13,2,'留言内容13','2023-04-03 11:35:26','回复信息13','2023-04-03 11:35:26','2023-04-03 11:35:26'),(14,14,1,'留言内容14','2023-04-03 11:35:26','回复信息14','2023-04-03 11:35:26','2023-04-03 11:35:26'),(16,8,1,'11111','2023-04-03 13:29:42','回复回复回复回复回复回复回复回复','2023-04-03 13:31:52','2023-04-03 13:29:42');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-04-03 11:35:26','公告详情1','2023-04-03 11:35:26'),(2,'公告标题2',2,'upload/news2.jpg','2023-04-03 11:35:26','公告详情2','2023-04-03 11:35:26'),(3,'公告标题3',1,'upload/news3.jpg','2023-04-03 11:35:26','公告详情3','2023-04-03 11:35:26'),(4,'公告标题4',1,'upload/news4.jpg','2023-04-03 11:35:26','公告详情4','2023-04-03 11:35:26'),(5,'公告标题5',2,'upload/news5.jpg','2023-04-03 11:35:26','公告详情5','2023-04-03 11:35:26'),(6,'公告标题6',3,'upload/news6.jpg','2023-04-03 11:35:26','公告详情6','2023-04-03 11:35:26'),(7,'公告标题7',2,'upload/news7.jpg','2023-04-03 11:35:26','公告详情7','2023-04-03 11:35:26'),(8,'公告标题8',1,'upload/news8.jpg','2023-04-03 11:35:26','公告详情8','2023-04-03 11:35:26'),(9,'公告标题9',3,'upload/news9.jpg','2023-04-03 11:35:26','公告详情9','2023-04-03 11:35:26'),(10,'公告标题10',2,'upload/news10.jpg','2023-04-03 11:35:26','公告详情10','2023-04-03 11:35:26'),(11,'公告标题11',1,'upload/news11.jpg','2023-04-03 11:35:26','公告详情11','2023-04-03 11:35:26'),(12,'公告标题12',1,'upload/news12.jpg','2023-04-03 11:35:26','公告详情12','2023-04-03 11:35:26'),(13,'公告标题13',2,'upload/news13.jpg','2023-04-03 11:35:26','公告详情13','2023-04-03 11:35:26');

/*Table structure for table `paike` */

DROP TABLE IF EXISTS `paike`;

CREATE TABLE `paike` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `shangke_time` timestamp NULL DEFAULT NULL COMMENT '上课时间',
  `xiake_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `jieke_types` int(11) DEFAULT NULL COMMENT '第几节  Search111',
  `xueqi_types` int(11) DEFAULT NULL COMMENT '学期 Search111',
  `xingqi_types` int(11) DEFAULT NULL COMMENT '周次 Search111',
  `paike_address` varchar(200) DEFAULT NULL COMMENT '上课地点',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `paike_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='课程表信息';

/*Data for the table `paike` */

insert  into `paike`(`id`,`kecheng_id`,`shangke_time`,`xiake_time`,`jieke_types`,`xueqi_types`,`xingqi_types`,`paike_address`,`jiaoshi_id`,`paike_delete`,`create_time`) values (1,1,'2023-04-03 11:35:26','2023-04-03 11:35:26',2,2,2,'上课地点1',1,1,'2023-04-03 11:35:26'),(2,2,'2023-04-03 11:35:26','2023-04-03 11:35:26',2,1,1,'上课地点2',3,1,'2023-04-03 11:35:26'),(3,3,'2023-04-03 11:35:26','2023-04-03 11:35:26',1,2,1,'上课地点3',3,1,'2023-04-03 11:35:26'),(4,4,'2023-04-03 11:35:26','2023-04-03 11:35:26',2,2,2,'上课地点4',1,1,'2023-04-03 11:35:26'),(5,5,'2023-04-03 11:35:26','2023-04-03 11:35:26',2,2,1,'上课地点5',2,1,'2023-04-03 11:35:26'),(6,6,'2023-04-03 11:35:26','2023-04-03 11:35:26',1,2,2,'上课地点6',2,1,'2023-04-03 11:35:26'),(7,7,'2023-04-03 11:35:26','2023-04-03 11:35:26',2,1,2,'上课地点7',2,1,'2023-04-03 11:35:26'),(8,8,'2023-04-03 11:35:26','2023-04-03 11:35:26',1,1,1,'上课地点8',1,1,'2023-04-03 11:35:26'),(9,9,'2023-04-03 11:35:26','2023-04-03 11:35:26',1,1,2,'上课地点9',1,1,'2023-04-03 11:35:26'),(10,10,'2023-04-03 11:35:26','2023-04-03 11:35:26',2,1,2,'上课地点10',1,1,'2023-04-03 11:35:26'),(11,11,'2023-04-03 11:35:26','2023-04-03 11:35:26',1,1,2,'上课地点11',2,1,'2023-04-03 11:35:26'),(12,12,'2023-04-03 11:35:26','2023-04-03 11:35:26',2,2,2,'上课地点12',2,1,'2023-04-03 11:35:26'),(13,13,'2023-04-03 11:35:26','2023-04-03 11:35:26',1,2,1,'上课地点13',2,1,'2023-04-03 11:35:26'),(14,14,'2023-04-03 11:35:26','2023-04-03 11:35:26',2,1,1,'上课地点14',3,1,'2023-04-03 11:35:26');

/*Table structure for table `qiandao` */

DROP TABLE IF EXISTS `qiandao`;

CREATE TABLE `qiandao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '学生',
  `qiandao_name` varchar(200) DEFAULT NULL COMMENT '签到标题 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '签到时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='上课签到';

/*Data for the table `qiandao` */

insert  into `qiandao`(`id`,`yonghu_id`,`qiandao_name`,`insert_time`,`create_time`) values (10,1,'12312312','2023-04-03 13:46:23','2023-04-03 13:46:23');

/*Table structure for table `qingjia` */

DROP TABLE IF EXISTS `qingjia`;

CREATE TABLE `qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '学生',
  `qingjia_name` varchar(200) DEFAULT NULL COMMENT '请假标题 Search111 ',
  `qingjia_text` longtext COMMENT '请假缘由',
  `qingjia_types` int(11) DEFAULT NULL COMMENT '请假类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `qingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `qingjia_number` int(200) DEFAULT NULL COMMENT '请假天数',
  `qingjia_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `qingjia_yesno_text` longtext COMMENT '处理意见',
  `qingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='学生请假';

/*Data for the table `qingjia` */

insert  into `qingjia`(`id`,`yonghu_id`,`qingjia_name`,`qingjia_text`,`qingjia_types`,`insert_time`,`qingjia_time`,`qingjia_number`,`qingjia_yesno_types`,`qingjia_yesno_text`,`qingjia_shenhe_time`,`create_time`) values (10,1,'123','123',1,'2023-04-03 13:46:13','2023-04-13 00:00:00',3,2,'1211111','2023-04-03 13:48:48','2023-04-03 13:46:13');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (9,1,'a1','yonghu','学生','4azhqcr52qcmzql3byx9ae1n3859mur5','2023-04-03 13:06:18','2023-04-03 14:29:37'),(10,1,'a1','jiaoshi','教师','eq2x5vsybi5dqhbl5tijch6xh0os4rnw','2023-04-03 13:31:29','2023-04-03 14:48:41'),(11,1,'admin','users','管理员','m2y4mpmvh4k6jrtpivjg3biowzsmdgjj','2023-04-03 13:33:14','2023-04-03 14:35:58');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-03 11:34:55');

/*Table structure for table `xuejixinxi` */

DROP TABLE IF EXISTS `xuejixinxi`;

CREATE TABLE `xuejixinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `xuejixinxi_xuenian` varchar(200) DEFAULT NULL COMMENT '学年',
  `xuejixinxi_xueqi` timestamp NULL DEFAULT NULL COMMENT '学期',
  `xuejixinxi_dizhi` varchar(200) DEFAULT NULL COMMENT '年级',
  `xuejixinxi_xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `xuejixinxi_zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `xuejixinxi_xuezhi` varchar(200) DEFAULT NULL COMMENT '学制',
  `xuejixinxi_banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xuejixinxi_xueli` varchar(200) DEFAULT NULL COMMENT '学历层次',
  `zhuang_types` int(11) DEFAULT NULL COMMENT '学籍状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='学籍信息';

/*Data for the table `xuejixinxi` */

insert  into `xuejixinxi`(`id`,`yonghu_id`,`xuejixinxi_xuenian`,`xuejixinxi_xueqi`,`xuejixinxi_dizhi`,`xuejixinxi_xueyuan`,`xuejixinxi_zhuanye`,`xuejixinxi_xuezhi`,`xuejixinxi_banji`,`xuejixinxi_xueli`,`zhuang_types`,`create_time`) values (1,3,'学年1','2023-04-03 11:35:26','年级1','学院1','专业1','学制1','班级1','学历层次1',2,'2023-04-03 11:35:26'),(2,1,'学年2','2023-04-03 11:35:26','年级2','学院2','专业2','学制2','班级2','学历层次2',1,'2023-04-03 11:35:26'),(3,1,'学年3','2023-04-03 11:35:26','年级3','学院3','专业3','学制3','班级3','学历层次3',2,'2023-04-03 11:35:26'),(4,1,'学年4','2023-04-03 11:35:26','年级4','学院4','专业4','学制4','班级4','学历层次4',2,'2023-04-03 11:35:26'),(5,3,'学年5','2023-04-03 11:35:26','年级5','学院5','专业5','学制5','班级5','学历层次5',2,'2023-04-03 11:35:26'),(6,1,'学年6','2023-04-03 11:35:26','年级6','学院6','专业6','学制6','班级6','学历层次6',1,'2023-04-03 11:35:26'),(7,1,'学年7','2023-04-03 11:35:26','年级7','学院7','专业7','学制7','班级7','学历层次7',1,'2023-04-03 11:35:26'),(8,1,'学年8','2023-04-03 11:35:26','年级8','学院8','专业8','学制8','班级8','学历层次8',2,'2023-04-03 11:35:26'),(9,1,'学年9','2023-04-03 11:35:26','年级9','学院9','专业9','学制9','班级9','学历层次9',2,'2023-04-03 11:35:26'),(10,1,'学年10','2023-04-03 11:35:26','年级10','学院10','专业10','学制10','班级10','学历层次10',2,'2023-04-03 11:35:26'),(11,3,'学年11','2023-04-03 11:35:26','年级11','学院11','专业11','学制11','班级11','学历层次11',2,'2023-04-03 11:35:26'),(12,1,'学年12','2023-04-03 11:35:26','年级12','学院12','专业12','学制12','班级12','学历层次12',2,'2023-04-03 11:35:26'),(13,2,'学年13','2023-04-03 11:35:26','年级13','学院13','专业13','学制13','班级13','学历层次13',2,'2023-04-03 11:35:26'),(14,3,'学年14','2023-04-03 11:35:26','年级14','学院14','专业14','学制14','班级14','学历层次14',1,'2023-04-03 11:35:26');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生名称 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`yonghu_uuid_number`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`sex_types`,`banji_types`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'1680492926262','a1','123456','学生名称1','upload/yonghu1.jpg','17703786901','410224199010102001',2,1,'1@qq.com',1,'2023-04-03 11:35:26'),(2,'1680492926192','a2','123456','学生名称2','upload/yonghu2.jpg','17703786902','410224199010102002',1,1,'2@qq.com',1,'2023-04-03 11:35:26'),(3,'1680492926266','a3','123456','学生名称3','upload/yonghu3.jpg','17703786903','410224199010102003',2,1,'3@qq.com',1,'2023-04-03 11:35:26');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zuoye_uuid_number` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业名称  Search111 ',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业文件',
  `zuoye_types` int(11) DEFAULT NULL COMMENT '作业类型 Search111',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '教师',
  `zuoye_content` longtext COMMENT '作业详情',
  `zuoye_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`zuoye_uuid_number`,`zuoye_name`,`zuoye_file`,`zuoye_types`,`jiaoshi_id`,`zuoye_content`,`zuoye_delete`,`insert_time`,`create_time`) values (1,'1680492926254','作业名称1','upload/file.rar',2,1,'作业详情1',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(2,'1680492926280','作业名称2','upload/file.rar',2,2,'作业详情2',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(3,'1680492926243','作业名称3','upload/file.rar',3,1,'作业详情3',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(4,'1680492926244','作业名称4','upload/file.rar',1,2,'作业详情4',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(5,'1680492926206','作业名称5','upload/file.rar',1,3,'作业详情5',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(6,'1680492926270','作业名称6','upload/file.rar',2,1,'作业详情6',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(7,'1680492926195','作业名称7','upload/file.rar',2,2,'作业详情7',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(8,'1680492926205','作业名称8','upload/file.rar',2,2,'作业详情8',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(9,'1680492926228','作业名称9','upload/file.rar',1,2,'作业详情9',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(10,'1680492926237','作业名称10','upload/file.rar',3,3,'作业详情10',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(11,'1680492926223','作业名称11','upload/file.rar',2,3,'作业详情11',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(12,'1680492926281','作业名称12','upload/file.rar',2,3,'作业详情12',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(13,'1680492926209','作业名称13','upload/file.rar',2,1,'作业详情13',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(14,'1680492926284','作业名称14','upload/file.rar',1,3,'作业详情14',1,'2023-04-03 11:35:26','2023-04-03 11:35:26'),(15,'1680499941735','123','/upload/1680499961974.doc',3,1,'<p>123</p>',1,'2023-04-03 13:32:44','2023-04-03 13:32:44');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
