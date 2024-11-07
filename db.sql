/*
Navicat MySQL Data Transfer

Source Server         : 3306
Source Server Version : 50732
Source Host           : localhost:3306
Source Database       : biyeshejiguanli

Target Server Type    : MYSQL
Target Server Version : 50732
File Encoding         : 65001

Date: 2021-05-28 18:06:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES ('1', 'sex_types', '性别', '1', '男', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('2', 'sex_types', '性别', '2', '女', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('3', 'shejitimu_types', '项目类型名称', '1', '项目类型1', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('4', 'shejitimu_types', '项目类型名称', '2', '项目类型2', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('5', 'shejitimu_types', '项目类型名称', '3', '项目类型3', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('6', 'zhuangtai_types', '审核状态', '1', '未审核', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('7', 'zhuangtai_types', '审核状态', '2', '通过', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('8', 'zhuangtai_types', '审核状态', '3', '拒绝', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('9', 'xuantishenhe_types', '审核状态', '1', '未审核', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('10', 'xuantishenhe_types', '审核状态', '2', '通过', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('11', 'xuantishenhe_types', '审核状态', '3', '拒绝', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('12', 'news_types', '公告类型名称', '1', '公告类型1', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('13', 'news_types', '公告类型名称', '2', '公告类型2', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('14', 'xuanti_types', '选题状态', '1', '未审核', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('15', 'xuanti_types', '选题状态', '2', '开题报告以过', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('16', 'xuanti_types', '选题状态', '3', '开题报告修改中', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('17', 'xuanti_types', '选题状态', '4', '中期报告已过', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('18', 'xuanti_types', '选题状态', '5', '中期报告修改中', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('19', 'xuanti_types', '选题状态', '6', '论文修改中', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('20', 'xuanti_types', '选题状态', '7', '审核通过', null, '2021-04-23 21:20:28');
INSERT INTO `dictionary` VALUES ('21', 'banji_types', '班级名称', '1', '班级1', null, '2021-05-20 15:51:39');
INSERT INTO `dictionary` VALUES ('22', 'banji_types', '班级名称', '2', '班级2', null, '2021-05-20 15:51:42');

-- ----------------------------
-- Table structure for jiaoshi
-- ----------------------------
DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

-- ----------------------------
-- Records of jiaoshi
-- ----------------------------
INSERT INTO `jiaoshi` VALUES ('1', '333', '123456', '教师1', '1', '410882200011121541', '17786699751', 'http://localhost:8080/biyeshejiguanli/file/download?fileName=1619185085440.jpg', '2021-04-23 21:38:06');
INSERT INTO `jiaoshi` VALUES ('2', '444', '123456', '教师2', '2', '410882200011121542', '17786699752', 'http://localhost:8080/biyeshejiguanli/file/download?fileName=1619185101520.jpg', '2021-04-23 21:38:22');
INSERT INTO `jiaoshi` VALUES ('3', '555', '123456', '教师3', '2', '410882200011121543', '17786699753', 'http://localhost:8080/biyeshejiguanli/file/download?fileName=1619350752011.jpg', '2021-04-25 19:39:13');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='公告';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '公告1', '1', 'http://localhost:8080/biyeshejiguanli/file/download?fileName=1619351127140.jpg', '2021-04-25 19:45:31', '公告详情1\r\n', '2021-04-25 19:45:31');
INSERT INTO `news` VALUES ('2', '公告2', '2', 'http://localhost:8080/biyeshejiguanli/file/download?fileName=1619351138817.jpg', '2021-04-25 19:45:40', '公告详情2\r\n', '2021-04-25 19:45:40');

-- ----------------------------
-- Table structure for shejitimu
-- ----------------------------
DROP TABLE IF EXISTS `shejitimu`;
CREATE TABLE `shejitimu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shejitimu_name` varchar(255) DEFAULT NULL COMMENT '题目名称 Search111',
  `jiaoshi_id` int(11) DEFAULT NULL COMMENT '发布教师',
  `shejitimu_types` int(11) DEFAULT NULL COMMENT '项目类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `shejitimu_zancheng` int(11) DEFAULT NULL COMMENT '赞成票',
  `shejitimu_fandui` int(11) DEFAULT NULL COMMENT '反对票',
  `zhuangtai_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111',
  `shejitimu_content` text COMMENT '项目内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='设计题目';

-- ----------------------------
-- Records of shejitimu
-- ----------------------------
INSERT INTO `shejitimu` VALUES ('1', '题目1', '2', '1', '2021-04-25 09:13:12', '2', '1', '2', '项目内容1\r\n', '2021-04-25 09:13:12');
INSERT INTO `shejitimu` VALUES ('2', '题目2', '1', '2', '2021-04-25 17:59:05', '1', '0', '1', '项目内容2\r\n', '2021-04-25 17:59:05');
INSERT INTO `shejitimu` VALUES ('3', '题目3', '2', '3', '2021-04-25 17:59:20', '1', '0', '2', '项目内容3\r\n', '2021-04-25 17:59:20');
INSERT INTO `shejitimu` VALUES ('4', '题目111111', '3', '2', '2021-04-25 19:41:33', '0', '1', '1', '项目内容1111111\r\n', '2021-04-25 19:41:33');
INSERT INTO `shejitimu` VALUES ('5', '题目2222222222', '3', '2', '2021-04-25 19:46:24', '1', '0', '1', '项目内容2222222222222\r\n', '2021-04-25 19:46:24');

-- ----------------------------
-- Table structure for token
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'admin', 'users', '管理员', '6vlptfottt493s3erh6kzuw3lrv5wcx7', '2021-04-23 21:10:44', '2021-05-24 13:29:33');
INSERT INTO `token` VALUES ('2', '1', '111', 'yonghu', '用户', '3j99yt4q7e1gna7fbj5m09u1nmu1wwp2', '2021-04-25 19:10:52', '2021-04-25 20:48:30');
INSERT INTO `token` VALUES ('3', '2', '222', 'yonghu', '用户', 'vss129v3cy3lejbxe08twuos9ll771zs', '2021-04-25 19:11:07', '2021-04-25 20:11:08');
INSERT INTO `token` VALUES ('4', '1', '333', 'jiaoshi', '教师', 'jpth66brlsrfr12qv5y8wbsu31iavqfg', '2021-04-25 19:11:27', '2021-04-25 20:11:28');
INSERT INTO `token` VALUES ('5', '2', '444', 'jiaoshi', '教师', '7tqb6l6e4ahf69v043g4e9ma9npdcqh5', '2021-04-25 19:11:49', '2021-04-25 20:51:15');
INSERT INTO `token` VALUES ('6', '3', '555', 'jiaoshi', '教师', '3rvvbdhcmvfknwlzow7eq5nvadgy707d', '2021-04-25 19:45:51', '2021-04-25 20:51:08');
INSERT INTO `token` VALUES ('7', '3', '123', 'yonghu', '用户', 'g4y0yzs0lc9k1gysp2w88fyrcdqdpjr0', '2021-04-25 19:49:33', '2021-04-25 20:50:48');
INSERT INTO `token` VALUES ('8', '4', 'admin', 'yonghu', '用户', 'kh45c7kkc6y8q1oupoep2oigqjemgea3', '2021-05-20 16:10:45', '2021-05-20 17:10:46');
INSERT INTO `token` VALUES ('9', '5', '3333', 'yonghu', '用户', 'myiukctwuimvq8rm135voxrsugm0tind', '2021-05-24 12:00:01', '2021-05-24 13:00:02');

-- ----------------------------
-- Table structure for toupiaoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `toupiaoxinxi`;
CREATE TABLE `toupiaoxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shejitimu_id` int(200) DEFAULT NULL COMMENT '投票题目',
  `jiaoshi_id` int(200) DEFAULT NULL COMMENT '投票教师 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='投票记录';

-- ----------------------------
-- Records of toupiaoxinxi
-- ----------------------------
INSERT INTO `toupiaoxinxi` VALUES ('1', '1', '1', '2021-04-25 10:07:07', '2021-04-25 10:07:07');
INSERT INTO `toupiaoxinxi` VALUES ('2', '2', '1', '2021-04-25 19:11:41', '2021-04-25 19:11:41');
INSERT INTO `toupiaoxinxi` VALUES ('3', '3', '2', '2021-04-25 19:11:59', '2021-04-25 19:11:59');
INSERT INTO `toupiaoxinxi` VALUES ('4', '5', '3', '2021-04-25 19:47:55', '2021-04-25 19:47:55');
INSERT INTO `toupiaoxinxi` VALUES ('5', '4', '3', '2021-04-25 19:48:05', '2021-04-25 19:48:05');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin', '管理员', '2021-02-25 15:59:12');

-- ----------------------------
-- Table structure for xuanti
-- ----------------------------
DROP TABLE IF EXISTS `xuanti`;
CREATE TABLE `xuanti` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '选择学生',
  `jiaoshi_id` int(200) DEFAULT NULL COMMENT '选择题目 ',
  `shejitimu_id` int(200) DEFAULT NULL COMMENT '发布教师',
  `kaitibaogao_file` varchar(255) DEFAULT NULL COMMENT '开题报告',
  `kaitibaogao_content` varchar(255) DEFAULT NULL COMMENT '修改意见',
  `zhongqi_file` varchar(255) DEFAULT NULL COMMENT '中期报告',
  `zhongqi_content` varchar(255) DEFAULT NULL COMMENT '修改意见',
  `luenwen_file` varchar(255) DEFAULT NULL COMMENT '论文',
  `luenwen_content` varchar(255) DEFAULT NULL COMMENT '修改意见',
  `xuanti_types` int(200) DEFAULT NULL COMMENT '审核状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='选题信息';

-- ----------------------------
-- Records of xuanti
-- ----------------------------
INSERT INTO `xuanti` VALUES ('2', '1', '2', '1', 'http://localhost:8080/biyeshejiguanli/file/download?fileName=1619343078471.xls', '审核通过\r\n', 'http://localhost:8080/biyeshejiguanli/file/download?fileName=1619343480107.xls', '审核通过\r\n', 'http://localhost:8080/biyeshejiguanli/file/download?fileName=1619343508020.xls', '审核通过', '7', '2021-04-25 13:17:15');
INSERT INTO `xuanti` VALUES ('4', '3', '2', '3', 'http://localhost:8080/biyeshejiguanli/file/download?fileName=1619351767115.xls', '审核通过', 'http://localhost:8080/biyeshejiguanli/file/download?fileName=1619351793828.xls', '审核通过', 'http://localhost:8080/biyeshejiguanli/file/download?fileName=1619351843555.JPG', '审核通过', '4', '2021-04-25 19:50:41');

-- ----------------------------
-- Table structure for xuantishenhe
-- ----------------------------
DROP TABLE IF EXISTS `xuantishenhe`;
CREATE TABLE `xuantishenhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '选择学生',
  `jiaoshi_id` int(200) DEFAULT NULL COMMENT '选择题目 ',
  `shejitimu_id` int(200) DEFAULT NULL COMMENT '发布教师',
  `xuantishenhe_types` int(200) DEFAULT NULL COMMENT '审核状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='选题审核';

-- ----------------------------
-- Records of xuantishenhe
-- ----------------------------
INSERT INTO `xuantishenhe` VALUES ('2', '1', '2', '1', '2', '2021-04-25 11:17:08');
INSERT INTO `xuantishenhe` VALUES ('4', '3', '2', '3', '2', '2021-04-25 19:49:45');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级   Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '111', '123456', '用户1', '2', '410882200011134641', '17785544641', 'http://localhost:8080/biyeshejiguanli/file/download?fileName=1619185132618.jpg', '1', '2021-04-23 21:38:53');
INSERT INTO `yonghu` VALUES ('2', '222', '123456', '用户2', '1', '410882200011134642', '17785544642', 'http://localhost:8080/biyeshejiguanli/file/download?fileName=1619185150147.jpg', '2', '2021-04-23 21:39:11');
INSERT INTO `yonghu` VALUES ('3', '123', '123456', '用户3', '2', '410882200111111213', '17745544543', 'http://localhost:8080/biyeshejiguanli/file/download?fileName=1619350800457.jpg', '1', '2021-04-25 19:40:01');
INSERT INTO `yonghu` VALUES ('4', 'admin', 'admin', '用户123', '1', '410882198711111113', '17789966593', null, '1', '2021-05-20 16:10:42');
INSERT INTO `yonghu` VALUES ('5', '3333', '123', '123', '2', '410882200011121212', '17788855812', null, '2', '2021-05-24 11:59:50');
