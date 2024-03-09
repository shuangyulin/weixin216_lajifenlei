/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - lajifenleixiaochengxu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lajifenleixiaochengxu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lajifenleixiaochengxu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/lajifenleixiaochengxu/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/lajifenleixiaochengxu/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/lajifenleixiaochengxu/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'lajixinxi_types','垃圾类型',1,'可回收垃圾',NULL,NULL,'2022-03-19 14:59:56'),(2,'lajixinxi_types','垃圾类型',2,'有害垃圾',NULL,NULL,'2022-03-19 14:59:56'),(3,'lajixinxi_types','垃圾类型',3,'厨余湿垃圾',NULL,NULL,'2022-03-19 14:59:56'),(4,'lajixinxi_types','垃圾类型',4,'其他垃圾',NULL,NULL,'2022-03-19 14:59:56'),(5,'news_types','新闻类型',1,'新闻类型1',NULL,NULL,'2022-03-19 14:59:57'),(6,'news_types','新闻类型',2,'新闻类型2',NULL,NULL,'2022-03-19 14:59:57'),(7,'news_types','新闻类型',3,'新闻类型3',NULL,NULL,'2022-03-19 14:59:57'),(8,'sex_types','性别',1,'男',NULL,NULL,'2022-03-19 14:59:57'),(9,'sex_types','性别',2,'女',NULL,NULL,'2022-03-19 14:59:57'),(10,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-03-19 14:59:57'),(11,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-03-19 14:59:57'),(12,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2022-03-19 14:59:57'),(13,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2022-03-19 14:59:57'),(14,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2022-03-19 14:59:57'),(15,'exampaper_types','测评状态',1,'启用',NULL,NULL,'2022-03-19 14:59:57'),(16,'exampaper_types','测评状态',2,'禁用',NULL,NULL,'2022-03-19 14:59:57'),(17,'lajixinxi_types','垃圾类型',5,'干垃圾',NULL,'','2022-03-19 15:26:38');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '测评名称 Search111',
  `exampaper_date` int(11) NOT NULL COMMENT '测试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '测试总分数',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '测评状态 Search111',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（0代表未删除 1代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='测评表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`exampaper_types`,`exampaper_delete`,`create_time`) values (1,'评测试卷名称1',10,60,1,1,'2022-03-19 15:28:56');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '所属测评id（外键）',
  `examquestion_name` varchar(200) NOT NULL COMMENT '测评试题名称 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_score` int(20) DEFAULT '0' COMMENT '分值 Search111',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`exampaper_id`,`examquestion_name`,`examquestion_options`,`examquestion_score`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (1,1,'试题名称1','[{\"text\":\"a1\",\"code\":\"A\"},{\"text\":\"b2\",\"code\":\"B\"},{\"text\":\"c3\",\"code\":\"C\"},{\"text\":\"d4\",\"code\":\"D\"}]',20,'B,C','答案解析1',2,1,'2022-03-19 15:29:47'),(2,1,'试题名称2','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',20,'A','答案解析2',3,2,'2022-03-19 15:30:06'),(3,1,'试题名称3','[{\"text\":\"aa1\",\"code\":\"A\"},{\"text\":\"bb2\",\"code\":\"B\"},{\"text\":\"cc3\",\"code\":\"C\"},{\"text\":\"dd4\",\"code\":\"D\"}]',20,'B','答案解析3',1,3,'2022-03-19 15:30:44');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '测试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '测试用户',
  `exampaper_id` int(20) NOT NULL COMMENT '所属测评id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '测试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='测试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (1,'1647675131230',1,1,40,'2022-03-19 15:32:11','2022-03-19 15:32:11'),(2,'1647675497506',1,1,20,'2022-03-19 15:38:18','2022-03-19 15:38:18'),(3,'1647675831441',1,1,60,'2022-03-19 15:43:51','2022-03-19 15:43:51');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '测评编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '用户选项',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (1,'1647675131230',1,3,'B',20,'2022-03-19 15:32:18'),(2,'1647675131230',1,2,'B',0,'2022-03-19 15:32:21'),(3,'1647675131230',1,1,'B,C',20,'2022-03-19 15:32:30'),(4,'1647675497506',1,3,'A',0,'2022-03-19 15:38:19'),(5,'1647675497506',1,2,'B',0,'2022-03-19 15:38:24'),(6,'1647675497506',1,1,'B,C',20,'2022-03-19 15:38:28'),(7,'1647675831441',1,3,'B',20,'2022-03-19 15:43:54'),(8,'1647675831441',1,2,'A',20,'2022-03-19 15:43:56'),(9,'1647675831441',1,1,'B,C',20,'2022-03-19 15:43:58');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '负责人',
  `zuozhe_id` int(11) DEFAULT NULL COMMENT '作者',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`zuozhe_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,1,NULL,'发布内容1',NULL,1,'2022-03-19 15:00:04','2022-03-19 15:00:04','2022-03-19 15:00:04'),(2,'帖子标题2',1,2,NULL,'发布内容2',NULL,1,'2022-03-19 15:00:04','2022-03-19 15:00:04','2022-03-19 15:00:04'),(3,'帖子标题3',3,3,NULL,'发布内容3',NULL,1,'2022-03-19 15:00:04','2022-03-19 15:00:04','2022-03-19 15:00:04'),(4,'帖子标题4',2,4,NULL,'发布内容4',NULL,1,'2022-03-19 15:00:04','2022-03-19 15:00:04','2022-03-19 15:00:04'),(5,'帖子标题5',2,5,NULL,'发布内容5',NULL,1,'2022-03-19 15:00:04','2022-03-19 15:00:04','2022-03-19 15:00:04'),(6,NULL,NULL,NULL,1,'管理回复\n',5,2,'2022-03-19 15:41:20',NULL,'2022-03-19 15:41:20'),(7,NULL,1,NULL,NULL,'用户评论',5,2,'2022-03-19 15:44:21',NULL,'2022-03-19 15:44:21');

/*Table structure for table `lajixinxi` */

DROP TABLE IF EXISTS `lajixinxi`;

CREATE TABLE `lajixinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lajixinxi_name` varchar(200) DEFAULT NULL COMMENT '垃圾名称 Search111',
  `lajixinxi_types` int(11) DEFAULT NULL COMMENT '垃圾类型 Search111',
  `lajixinxi_photo` varchar(200) DEFAULT NULL COMMENT '垃圾图片',
  `lajixinxi_click_number` int(11) DEFAULT NULL COMMENT '浏览次数',
  `lajixinxi_content` text COMMENT '垃圾详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='垃圾信息';

/*Data for the table `lajixinxi` */

insert  into `lajixinxi`(`id`,`lajixinxi_name`,`lajixinxi_types`,`lajixinxi_photo`,`lajixinxi_click_number`,`lajixinxi_content`,`create_time`) values (1,'垃圾名称1',2,'http://localhost:8080/lajifenleixiaochengxu/upload/1647674822841.jpeg',243,'<p>垃圾详情1</p>','2022-03-19 15:00:04'),(2,'垃圾名称2',5,'http://localhost:8080/lajifenleixiaochengxu/upload/1647674811342.jpeg',335,'<p>垃圾详情2</p>','2022-03-19 15:00:04'),(3,'垃圾名称3',3,'http://localhost:8080/lajifenleixiaochengxu/upload/1647674764911.png',269,'<p>垃圾详情3</p>','2022-03-19 15:00:04'),(4,'垃圾名称4',1,'http://localhost:8080/lajifenleixiaochengxu/upload/1647674754030.jpeg',317,'<p>垃圾详情4</p>','2022-03-19 15:00:04'),(5,'垃圾名称5',4,'http://localhost:8080/lajifenleixiaochengxu/upload/1647674739101.jpeg',203,'<p>垃圾详情5</p>','2022-03-19 15:00:04');

/*Table structure for table `lajixinxi_liuyan` */

DROP TABLE IF EXISTS `lajixinxi_liuyan`;

CREATE TABLE `lajixinxi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lajixinxi_id` int(11) DEFAULT NULL COMMENT '垃圾',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `lajixinxi_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='垃圾留言';

/*Data for the table `lajixinxi_liuyan` */

insert  into `lajixinxi_liuyan`(`id`,`lajixinxi_id`,`yonghu_id`,`lajixinxi_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,3,'留言内容1','回复信息1','2022-03-19 15:00:04','2022-03-19 15:00:04','2022-03-19 15:00:04'),(2,2,2,'留言内容2','回复信息2','2022-03-19 15:00:04','2022-03-19 15:00:04','2022-03-19 15:00:04'),(3,3,3,'留言内容3','回复信息3','2022-03-19 15:00:04','2022-03-19 15:00:04','2022-03-19 15:00:04'),(4,4,3,'留言内容4','回复信息4','2022-03-19 15:00:04','2022-03-19 15:00:04','2022-03-19 15:00:04'),(5,5,1,'留言内容5','管理回复','2022-03-19 15:00:04','2022-03-19 15:41:33','2022-03-19 15:00:04'),(6,5,1,'留言内容6','','2022-03-19 15:43:40',NULL,'2022-03-19 15:43:40');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻标题1',2,'http://localhost:8080/lajifenleixiaochengxu/upload/news1.jpg','2022-03-19 15:00:04','新闻详情1','2022-03-19 15:00:04'),(2,'新闻标题2',1,'http://localhost:8080/lajifenleixiaochengxu/upload/news2.jpg','2022-03-19 15:00:04','新闻详情2','2022-03-19 15:00:04'),(3,'新闻标题3',3,'http://localhost:8080/lajifenleixiaochengxu/upload/news3.jpg','2022-03-19 15:00:04','新闻详情3','2022-03-19 15:00:04'),(4,'新闻标题4',1,'http://localhost:8080/lajifenleixiaochengxu/upload/news4.jpg','2022-03-19 15:00:04','新闻详情4','2022-03-19 15:00:04'),(5,'新闻标题5',3,'http://localhost:8080/lajifenleixiaochengxu/upload/news5.jpg','2022-03-19 15:00:04','新闻详情5','2022-03-19 15:00:04');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','c1wk6lzk29j5s2pr90j07lfxz17tvzjd','2022-03-19 15:15:33','2022-03-19 16:40:45'),(2,1,'a1','yonghu','用户','gkhvft24hygtczvoubg6czejyag8uoyx','2022-03-19 15:31:29','2022-03-19 16:43:25');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/lajifenleixiaochengxu/upload/yonghu1.jpg',2,'17703786901','410224199610232001','1@qq.com',1,'2022-03-19 15:00:04'),(2,'a2','123456','用户姓名2','http://localhost:8080/lajifenleixiaochengxu/upload/yonghu2.jpg',1,'17703786902','410224199610232002','2@qq.com',1,'2022-03-19 15:00:04'),(3,'a3','123456','用户姓名3','http://localhost:8080/lajifenleixiaochengxu/upload/yonghu3.jpg',1,'17703786903','410224199610232003','3@qq.com',1,'2022-03-19 15:00:04');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
