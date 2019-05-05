/*
Navicat MySQL Data Transfer

Source Server         : 云
Source Server Version : 50643
Source Host           : 188.131.253.73:3306
Source Database       : hbgcdx_share

Target Server Type    : MYSQL
Target Server Version : 50643
File Encoding         : 65001

Date: 2019-05-06 00:59:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_academy
-- ----------------------------
DROP TABLE IF EXISTS `tb_academy`;
CREATE TABLE `tb_academy` (
  `academy_id` int(11) NOT NULL COMMENT '学院ID',
  `academy_name` varchar(255) NOT NULL DEFAULT '' COMMENT '学院名称',
  PRIMARY KEY (`academy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_academy
-- ----------------------------

-- ----------------------------
-- Table structure for tb_profession
-- ----------------------------
DROP TABLE IF EXISTS `tb_profession`;
CREATE TABLE `tb_profession` (
  `profession_id` int(11) NOT NULL,
  `academy_id` int(11) NOT NULL,
  `profession_name` varchar(255) NOT NULL COMMENT '专业名称',
  PRIMARY KEY (`profession_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_profession
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(32) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `is_admin` int(11) NOT NULL,
  `registration_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user_information
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_information`;
CREATE TABLE `tb_user_information` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `
nick_name` varchar(32) NOT NULL COMMENT '昵称',
  `academy_id` int(11) DEFAULT NULL COMMENT '学院ID',
  `profession_id` int(11) DEFAULT NULL COMMENT '专业ID',
  `grade` varchar(255) DEFAULT NULL COMMENT '班级',
  `enrollment_year` int(11) NOT NULL COMMENT '入学年份',
  `score` int(11) DEFAULT NULL COMMENT '积分',
  `experience` int(11) DEFAULT NULL COMMENT '用户经验值',
  `label` varchar(255) DEFAULT NULL COMMENT '标签',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user_information
-- ----------------------------
