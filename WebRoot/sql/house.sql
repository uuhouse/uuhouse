/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : house

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-05-05 00:03:07
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `agent`
-- ----------------------------
DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agentid` varchar(10) NOT NULL,
  `uid` varchar(10) NOT NULL,
  `acredit` int(1) NOT NULL,
  `agrade` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agent
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `nicname` varchar(50) DEFAULT NULL,
  `gender` varchar(4) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `qq` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `birthday` varchar(8) DEFAULT NULL,
  `code` varchar(64) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `Power` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'yst', '123', '123456789@163.com', '鱼水婷', 'xiaozz', '女', null, '1111111', '1111111', '的撒hi安徽蒂赛后大肆带哦', '19940523', '', '1', '1');
INSERT INTO `user` VALUES ('2', 'lyt', '123', '154789952@163.com', '廖云泰', 'gaofushuai', '男', null, '2222222', '2222222', 'dsf几点睡的很骄傲和大家回到家', '19950914', '', '1', '0');
