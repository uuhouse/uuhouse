/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : house

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-05-06 14:31:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('1', 'admin', '123');

-- ----------------------------
-- Table structure for `agent`
-- ----------------------------
DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agentid` varchar(10) DEFAULT NULL,
  `uid` varchar(10) DEFAULT NULL,
  `acredit` int(1) DEFAULT NULL,
  `agrade` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agent
-- ----------------------------

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '房源');
INSERT INTO `category` VALUES ('2', '小区');
INSERT INTO `category` VALUES ('3', '地图找房');
INSERT INTO `category` VALUES ('4', '主题找房');
INSERT INTO `category` VALUES ('5', '闪电卖房');
INSERT INTO `category` VALUES ('6', '优秀经纪人');
INSERT INTO `category` VALUES ('7', '热搜房');

-- ----------------------------
-- Table structure for `house`
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `htype` varchar(20) DEFAULT NULL,
  `layout` varchar(50) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `untiprice` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `countprice` varchar(30) DEFAULT NULL,
  `province` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `village` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `floor` varchar(8) DEFAULT NULL,
  `htime` varchar(50) DEFAULT NULL,
  `hphoto` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `hdate` datetime DEFAULT NULL,
  `hstate` varchar(10) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('10000', '商品房', '2室1厅1卫', '龙首村地铁楼上双气精品小区业主急用钱，挥泪出售，欲购从速', '8490元/m²', '建面53㎡ | 套内52㎡', '45.0万元', '陕西', '西安', '龙首村', '龙御花园', '20层/30层', '1970年', null, '交通便利，生活方便。联系我时请说在优优二手房上看到的，谢谢！', '1', '2010-06-16 13:05:28', '未出售', '1', '鱼水婷', '13256984523', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `nicname` varchar(50) DEFAULT NULL,
  `gender` varchar(4) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `qq` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `birthday` varchar(8) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `Power` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'yst', '123', '123456789@163.com', '鱼水婷', 'xiaozz', '女', null, '1111111', '1111111', '的撒hi安徽蒂赛后大肆带哦', '19940523', '', '1', '1');
INSERT INTO `user` VALUES ('2', 'lyt', '123', '154789952@163.com', '廖云泰', 'gaofushuai', '男', null, '2222222', '2222222', 'dsf几点睡的很骄傲和大家回到家', '19950914', '', '1', '0');
