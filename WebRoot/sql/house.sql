/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : house

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-05-10 00:21:30
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
  `identify` varchar(10) DEFAULT NULL,
  `areas` varchar(50) DEFAULT NULL,
  `village` varchar(20) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `htype` varchar(20) DEFAULT NULL,
  `htime` varchar(50) DEFAULT NULL,
  `floor` varchar(20) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `himage` varchar(100) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `hstate` varchar(10) DEFAULT NULL,
  `stretch` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `layout` varchar(20) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `countprice` varchar(30) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `hdate` datetime DEFAULT NULL,
  `province` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `untiprice` varchar(20) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=10011 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('10000', '个人转让', '汇源小区', '龙首村', '龙首村地铁楼上双气精品小区业主急用钱，挥泪出售，欲购从速', '平房', '70年产权', '第20层/共30层', '交通便利，生活方便。联系我时请说在优优二手房上看到的，谢谢！', 'house/house001.jpg', '1', '132-5698-4523', '鱼水婷', '未出售', '龙首商业街', '龙御花园', '2室1厅1卫', '建面53㎡ | 套内52㎡', '45.0万元', '1', '2010-06-16 13:05:28', '陕西', '西安', '8490元/m²', '1');
INSERT INTO `house` VALUES ('10001', '商家转让', '白桦林居', '莲湖区', '业主急售毛坯好楼层板式小高层！3房无税好房！白桦林居', '普通住宅', '50年产权', '第10层/共11层', '白桦林居 业主着急出售，抄底价160万！ 此房源是新增房源，房子真实有效，欢迎监督 这个价钱是业主的底价，如果你对房子比较有意向的话，我到时候再帮你给业主聊聊，尽量帮你省钱！做到让你满意！ 借强力打造房产中介高效平台，本着“为您，我做到”原则帮你置业，助你安家！ 本人将对来电电话号码提供保密服务 以避免过多陌生电话给您带来的不必要麻烦！！！！ 具体情况请直接来电咨询！！！ 了解更多请联系我！为您提供服务保证！', 'house/house010.jpg', '2', '132-8956-4231', '廖云泰', '已出售', '凤城九路', '凤城九路11路', '3室2厅2卫', '建面145㎡ | 套内145㎡', '160.0万元', '0', '2012-02-14 23:15:42', '陕西', '西安', '8046元/m²', '2');
INSERT INTO `house` VALUES ('10002', '个人转让', '迎春小区', '莲湖区', '西大街迎春小区工行家属院115平米61万急售', '普通住宅', '70年产权', '第3层/共7层', '1.本房子公摊小 使用面积高 利用率大 户型方正 无浪费\r\n2.业主诚心出售 不会无故\r\n3、本房子楼间距宽敞 楼层采光好\r\n4、小区门口有多余条公交线路供您选择交通便利 ', 'house/house020.jpg', '1', '132-5698-4523', '鱼水婷', '未出售', '西大街', '双仁府18号', '3室1厅1卫', '建面115㎡ | 套内115㎡', '61.0万元', '1', '2014-06-11 11:18:36', '陕西', '西安', '5304元/m²', '1');
INSERT INTO `house` VALUES ('10003', '个人转让', '天朗大兴郡三期', '莲湖区', '红庙坡天朗大兴郡三期南北通透全明三室免税费直签', '普通住宅', '70年产权', '第22层/共33层', '1.房子面积121平米+10平米赠送 2.毛坯房，未装修 3.高楼层，视野超级好 4.南北通透，客厅主卧朝南采光极好 5.全款合同更名，免税费 6.诚心出售，随时看房', 'house/house030.jpg', '1', '132-5698-4523', '鱼水婷', '未出售', '红庙坡', '红庙坡梨园路西段', '3室2厅2卫', '建面121㎡ | 套内121㎡', '88.0万元', '1', '2015-07-16 23:26:49', '陕西', '西安', '7272元/m²', '1');
INSERT INTO `house` VALUES ('10004', '商家转让', '裕昌太阳城', '雁塔区', '丈八东路 裕昌 两室 买到就是赚到 可按揭 看房有钥匙', '别墅', '40年产权', '第1层/共9层', '1、户型方方正正，设计非常合理，没有浪费面积，每一寸地方都利用到极致； 2、黄金楼层，采光视野特别棒，一样的房子不一样的风情，明厨明卫，采光无死角，餐客分离，功能分区特别合理，非常人性化的设计；', 'house/house040.jpg', '2', '132-8956-4231', '廖云泰', '未出售', '电子城', '丈八东路', '2室2厅1卫', '建面92㎡ | 套内90㎡', '130.0万元', '1', '2016-06-14 16:34:22', '陕西', '西安', '9782元/m²', '1');
INSERT INTO `house` VALUES ('10005', '个人转让', '八水洋房', '灞桥区', '丰禾路 八水洋房 两室两厅 南北通透 证在手 随时可过户急售 ', '普通住宅', '70年产权', '第3层/共6层', '1、八水洋房—位于玉祥门以北2站丰禾路，社区规模大环境好，人车分流24小时保安巡逻，绿化率高达40% 2、小区物业费多层0.6元/㎡，高层1.2元/㎡，水费3.8元/顿，电费0.62/度，小区临时停车厂三元每小时，包月地上80/月 3、房子是业主自购、，装修自住房屋，保持好即买即住 4、房子是市政集中供暖，地暖双气入户 5、小区内配置有幼儿园，田亮会所（游泳馆，健身房）小区内配有多家美容院，私房菜，小区对面是菜市场，路口是华润万家，生活超级便利 6、背靠老城根商业街，坐拥太奥广场、龙湖星悦荟两大商场 7、房子产权清晰证在手，过两年免营业税，看房方便', 'house/house050.jpg', '2', '132-8956-4231', '廖云泰', '未出售', '玉祥门', '丰禾路12号', '2室2厅1卫', '建面86㎡ | 套内86㎡', '57.0万元', '0', '2013-06-12 15:45:15', '陕西', '西安', '6627元/m²', '2');
INSERT INTO `house` VALUES ('10006', '个人转让', '中国新时代小区', '碑林区', '诚心出售 李家村十字高层3室 东南向117万有证无税 可按揭', '普通住宅', '50年产权', '第20层/共33层', '欢迎进入博源房产邱永格的店铺 您的满意我的追求，邱永格为您服务 【小区介绍】新时代高层位于李家村十字万达广场旁高层电梯房，天然气，暖气 户型方正，采光无遮挡，全明户型 房产证在手，满两年 无个税', 'house/house060.jpg', '1', '132-5698-4523', '鱼水婷', '未出售', '文艺路', '友谊东路', '3室2厅2卫', '建面125㎡ | 套内125㎡', '115.0万元', '1', '2016-06-22 23:52:01', '陕西', '西安', '9200元/m²', '1');
INSERT INTO `house` VALUES ('10007', '商家转让', ' 紫薇希望城', '未央区', '凤城五路 四室南北通透 精装修送家具家电 业主诚心出售', '公寓', '70年产权', '第3层/共27层', '房源详情 户型优势本人已实地勘察过该套房源，小区稀缺户型，南北通透，采光极佳 商圈优势该小区位于凤城五路核心商圈，办公住家均可；出租办公价位合适 装修特色 业主当时结婚用房 产权情况房产证在手，交易方便简洁 停车情况小区有大型停车场，可租可买，停车方便', 'house/house070.jpg', '1', '132-5698-4523', '鱼水婷', '未出售', '凤城五路', '未央凤城五路', '4室2厅2卫', '建面149㎡ | 套内149㎡', '135.0万元', '1', '2017-01-03 12:56:55', '陕西', '西安', '9060元/m²', '2');
INSERT INTO `house` VALUES ('10008', '个人转让', ' 林隐天下(公寓)', '长安区', '阳光天地旁边林隐天下毛坯四室好房诚心出售需一次性付', '公寓', '50年产权', '第13层/共16层', '布局优势四室南北通透，明厨明卫，户型合理，客厅带大阳台 　　装修优势毛坯， 　　配置优势雅居乐同步物业，小区园内绿化好', 'house/house080.jspg', '1', '132-5698-4523', '鱼水婷', '未出售', '韦曲街道', '信息大道1号', '4室2厅2卫', '建面150㎡ | 套内136㎡', '127.0万元', '0', '2014-06-10 00:01:10', '陕西', '西安', '8466元/m²', '2');
INSERT INTO `house` VALUES ('10009', '个人转让', ' 嘉惠公寓', '新城区', '学区房嘉惠公寓92平米 好户型出售房\r\n房子户型好，楼层好，低价出售了 \r\n房子证件齐全 看房方便\r\n可随时过户', '公寓', '70年产权', '第25层/共26层', '学区房嘉惠公寓92平米 好户型出售房\r\n房子户型好，楼层好，低价出售了 \r\n房子证件齐全 看房方便\r\n可随时过户', 'house/house090.jpg', '2', '132-8956-4231', '廖云泰', '未出售', ' 韩森寨', ' 韩森路105号', '2室2厅1卫', '建面92㎡| 套内92㎡', '52.0万元', '0', '2012-02-15 13:05:55', '陕西', '西安', '5652元/m²', '1');
INSERT INTO `house` VALUES ('10010', '个人转让', ' 荣华水岸新城', '临潼区', '水岸新城 可按揭 好房急售', '普通住宅', '70年产权', '第1层/共6层', '南北通透，房型方正，双阳台，全明户型！有证，可按揭，中间楼层', 'house/house100.jpg', '1', '132-5698-4523', '鱼水婷', '未出售', '西郊村', '涝滨南路', '3室2厅2卫', '建面120㎡ | 套内120㎡', '44.0万元', '1', '2017-03-15 10:13:57', '陕西', '西安', '3666元/m²', '1');

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
  `gender` varchar(10) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `qq` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `power` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'yst', '123', '123456789@163.com', '鱼水婷', 'xiaozz', '女', 'image/yst.jsp', '132-5698-4523', '1548199223', '陕西省西安市杨凌区', '1994-05-23', '', '1', '1');
INSERT INTO `user` VALUES ('2', 'lyt', '123', '154789952@163.com', '廖云泰', 'gaofushuai', '男', 'image/lyt.jsp', '132-8956-4231', '1548965856', '陕西省西安市雁塔区', '1995-09-14', '', '1', '1');
