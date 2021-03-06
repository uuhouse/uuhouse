/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : house

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-05-19 00:25:54
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
  `kind` varchar(10) DEFAULT NULL,
  `htype` varchar(20) DEFAULT NULL,
  `identify` varchar(10) DEFAULT NULL,
  `layout` varchar(20) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `areas` varchar(50) DEFAULT NULL,
  `floor` varchar(20) DEFAULT NULL,
  `untiprice` varchar(20) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `countprice` varchar(30) DEFAULT NULL,
  `province` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `village` varchar(20) DEFAULT NULL,
  `stretch` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `cx` varchar(10) DEFAULT NULL,
  `htime` varchar(50) DEFAULT NULL,
  `property_right` varchar(50) DEFAULT NULL,
  `elevator` varchar(10) DEFAULT NULL,
  `decorate` varchar(30) DEFAULT NULL,
  `himage` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `feature` varchar(100) DEFAULT NULL,
  `owner_mood` varchar(100) DEFAULT NULL,
  `areas_info` varchar(500) DEFAULT NULL,
  `am_environment` varchar(500) DEFAULT NULL,
  `month_pay` varchar(50) DEFAULT NULL,
  `map` varchar(100) DEFAULT NULL,
  `hstate` varchar(10) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `hdate` datetime DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=10011 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('10000', '出售', '平房', '个人转让', '2室1厅1卫', '龙首村地铁楼上双气精品小区业主急用钱，挥泪出售，欲购从速', '汇源小区', '20层/共30层', '8490元/m²', '建面53㎡ | 套内52㎡', '45.0万元', '陕西', '西安', '龙首', '龙首商业街', '龙御花园', '南', '2014年', '70年产权', '有电梯', '中等装修', 'house/house001.jpg', '交通便利，生活方便。联系我时请说在优优二手房上看到的，谢谢！', '南北通透', '诚心低价出售！', '绿化率：10%；停车位：700多', '金融服务：工商银行、建设银行；购物饮食：沃尔玛超市、华润万家、苏宁易购；医疗服务：西京医院、武警医院、市第九医院；交通便利：以您为中心的四个方向都有公交站，出行非常方便！地铁一号线就在门口！', '4800元/月', '', '未出售', '1', '鱼水婷', '13256984523', '1', '2010-06-16 13:05:28', '1');
INSERT INTO `house` VALUES ('10001', '出售', '普通住宅', '商家转让', '3室2厅2卫', '业主急售毛坯好楼层板式小高层！3房无税好房！白桦林居', '白桦林居', '10层/共11层', '8046元/m²', '建面145㎡ | 套内145㎡', '160.0万元', '陕西', '西安', '莲湖', '凤城九路', '凤城九路11路', '南', '2001年', '50年产权', '有电梯', '精装修', 'house/house010.jpg', '白桦林居 业主着急出售，抄底价160万！ 此房源是新增房源，房子真实有效，欢迎监督 这个价钱是业主的底价，如果你对房子比较有意向的话，我到时候再帮你给业主聊聊，尽量帮你省钱！做到让你满意！ 借强力打造房产中介高效平台，本着“为您，我做到”原则帮你置业，助你安家！ 本人将对来电电话号码提供保密服务 以避免过多陌生电话给您带来的不必要麻烦！！！！ 具体情况请直接来电咨询！！！ 了解更多请联系我！为您提供服务保证！', '地铁口', '急售！价格可再议！', '绿化率：30%；停车位：400多', '金融服务：农业银行、建设银行；购物饮食：沃尔玛超市、华润万家、苏宁易购；医疗服务：西京医院、武警医院、市第九医院；交通便利：以您为中心的四个方向都有公交站，出行非常方便！地铁二号线就在门口！', '3200元/月', '', '已出售', '2', '廖云泰', '13289564231', '0', '2012-02-14 23:15:42', '2');
INSERT INTO `house` VALUES ('10002', '出售', '普通住宅', '个人转让', '3室1厅1卫', '西大街迎春小区工行家属院115平米61万急售', '迎春小区', '3层/共7层', '5304元/m²', '建面115㎡ | 套内115㎡', '61.0万元', '陕西', '西安', '莲湖', '西大街', '双仁府18号', '北', '2008年', '70年产权', '无电梯', '中等装修', 'house/house020.jpg', '1.本房子公摊小 使用面积高 利用率大 户型方正 无浪费2.业主诚心出售 不会无故克扣证件3、本房子楼间距宽敞 楼层采光好4、小区门口有多余条公交线路供您选择交通便利 ', '绿化好', '新购置，卖旧房，价格优惠！', '绿化率：50%；停车位：300多', '金融服务：华夏银行、建设银行；购物饮食：沃尔玛超市、华润万家、苏宁易购；医疗服务：西京医院、武警医院、市第九医院；交通便利：以您为中心的四个方向都有公交站，出行非常方便！地铁一号线就在门口！', '2800元/月', '', '未出售', '1', '鱼水婷', '13256984523', '1', '2014-06-11 11:18:36', '1');
INSERT INTO `house` VALUES ('10003', '求购', '普通住宅', '个人转让', '3室2厅2卫', '红庙坡天朗大兴郡三期南北通透全明三室免税费直签', '天朗大兴郡三期', '22层/共33层', '7272元/m²', '建面121㎡ | 套内121㎡', '88.0万元', '陕西', '西安', '莲湖', '红庙坡', '红庙坡梨园路西段', '西北', '2015年', '70年产权', '有电梯', '简单装修', 'house/house030.jpg', '1.房子面积121平米+10平米赠送 2.毛坯房，未装修 3.高楼层，视野超级好 4.南北通透，客厅主卧朝南采光极好 5.全款合同更名，免税费 6.诚心出售，随时看房', '视野好', '工作调动，低价出售！', '绿化率：20%；停车位：600多', '金融服务：农业银行、建设银行；购物饮食：沃尔玛超市、华润万家、苏宁易购；医疗服务：西京医院、武警医院、市第九医院；交通便利：以您为中心的四个方向都有公交站，出行非常方便！地铁三号线就在门口！', '3300元/月', '', '未出售', '1', '鱼水婷', '13256984523', '1', '2015-07-16 23:26:49', '1');
INSERT INTO `house` VALUES ('10004', '出售', '别墅', '商家转让', '2室2厅1卫', '丈八东路 裕昌 两室 买到就是赚到 可按揭 看房有钥匙', '裕昌太阳城', '1层/共9层', '9782元/m²', '建面92㎡ | 套内90㎡', '130.0万元', '陕西', '西安', '雁塔', '电子城', '丈八东路', '北', '2003年', '40年产权', '有电梯', '豪华装修', 'house/house040.jpg', '1、户型方方正正，设计非常合理，没有浪费面积，每一寸地方都利用到极致； 2、黄金楼层，采光视野特别棒，一样的房子不一样的风情，明厨明卫，采光无死角，餐客分离，功能分区特别合理，非常人性化的设计；', '绿化好', '急需钱，忍痛割爱！', '绿化率：44%；停车位：200多', '金融服务：农业银行、建设银行；购物饮食：沃尔玛超市、华润万家、苏宁易购；医疗服务：西京医院、武警医院、市第九医院；交通便利：以您为中心的四个方向都有公交站，出行非常方便！地铁一号线就在门口！', '1900元/月', '', '未出售', '2', '廖云泰', '13289564231', '1', '2016-06-14 16:34:22', '1');
INSERT INTO `house` VALUES ('10005', '求购', '普通住宅', '个人转让', '2室2厅1卫', '丰禾路 八水洋房 两室两厅 南北通透 证在手 随时可过户急售 ', '八水洋房', '3层/共6层', '6627元/m²', '建面86㎡ | 套内86㎡', '57.0万元', '陕西', '西安', '灞桥', '玉祥门', '丰禾路12号', '南', '2009年', '70年产权', '无电梯', '毛坯', 'house/house050.jpg', '1、八水洋房—位于玉祥门以北2站丰禾路，社区规模大环境好，人车分流24小时保安巡逻，绿化率高达40% 2、小区物业费多层0.6元/㎡，高层1.2元/㎡，水费3.8元/顿，电费0.62/度，小区临时停车厂三元每小时，包月地上80/月 3、房子是业主自购、，装修自住房屋，保持好即买即住 4、房子是市政集中供暖，地暖双气入户 5、小区内配置有幼儿园，田亮会所（游泳馆，健身房）小区内配有多家美容院，私房菜，小区对面是菜市场，路口是华润万家，生活超级便利 6、背靠老城根商业街，坐拥太奥广场、龙湖星悦荟两大商场 7、房子产权清晰证在手，过两年免营业税，看房方便', '性价比高', '工作调动，诚心出售！', '绿化率：10%；停车位：400多', '金融服务：交通银行、建设银行；购物饮食：沃尔玛超市、华润万家、苏宁易购；医疗服务：西京医院、武警医院、市第九医院；交通便利：以您为中心的四个方向都有公交站，出行非常方便！地铁二号线就在门口！', '2500元/月', null, '未出售', '2', '廖云泰', '13289564231', '0', '2013-06-12 15:45:15', '2');
INSERT INTO `house` VALUES ('10006', '出售', '普通住宅', '个人转让', '3室2厅2卫', '诚心出售 李家村十字高层3室 东南向117万有证无税 可按揭', '中国新时代小区', '20层/共33层', '9200元/m²', '建面125㎡ | 套内125㎡', '115.0万元', '陕西', '西安', '碑林', '文艺路', '友谊东路', '西北', '1998年 ', '50年产权', '有电梯', '精装修', 'house/house060.jpg', '欢迎进入博源房产邱永格的店铺 您的满意我的追求，邱永格为您服务 【小区介绍】新时代高层位于李家村十字万达广场旁高层电梯房，天然气，暖气 户型方正，采光无遮挡，全明户型 房产证在手，满两年 无个税', '南北通透', '工作调动，诚心低价出售！', '绿化率：34%；停车位：500多', '金融服务：农业银行、建设银行；购物饮食：沃尔玛超市、华润万家、苏宁易购；医疗服务：西京医院、武警医院、市第九医院；交通便利：以您为中心的四个方向都有公交站，出行非常方便！地铁一号线就在门口！', '4500元/月', '', '未出售', '1', '鱼水婷', '13256984523', '1', '2016-06-22 23:52:01', '1');
INSERT INTO `house` VALUES ('10007', '出售', '公寓', '商家转让', '4室2厅2卫', '凤城五路 四室南北通透 精装修送家具家电 业主诚心出售', '紫薇希望城', '3层/共27层', '9060元/m²', '建面149㎡ | 套内149㎡', '135.0万元', '陕西', '西安', '未央', '凤城五路', '未央凤城五路', '南北', '1995年', '70年产权', '有电梯', '毛坯', 'house/house070.jpg', '房源详情 户型优势本人已实地勘察过该套房源，小区稀缺户型，南北通透，采光极佳 商圈优势该小区位于凤城五路核心商圈，办公住家均可；出租办公价位合适 装修特色 业主当时结婚用房 产权情况房产证在手，交易方便简洁 停车情况小区有大型停车场，可租可买，停车方便', '布局独特', '急售，价格可再议！', '绿化率：25%；停车位：100多', '金融服务：中国银行、建设银行；购物饮食：沃尔玛超市、华润万家、苏宁易购；医疗服务：西京医院、武警医院、市第九医院；交通便利：以您为中心的四个方向都有公交站，出行非常方便！地铁二号线就在门口！', '3600元/月', '', '未出售', '1', '鱼水婷', '13256984523', '1', '2017-01-03 12:56:55', '2');
INSERT INTO `house` VALUES ('10008', '出售', '公寓', '个人转让', '4室2厅2卫', '阳光天地旁边林隐天下毛坯四室好房诚心出售需一次性付', '林隐天下(公寓)', '13层/共16层', '8466元/m²', '建面150㎡ | 套内136㎡', '127.0万元', '陕西', '西安', '长安', '韦曲街道', '信息大道1号', '西', '2004年', '50年产权', '有电梯', '中等装修', 'house/house080.jpg', '布局优势四室南北通透，明厨明卫，户型合理，客厅带大阳台 　　装修优势毛坯， 　　配置优势雅居乐同步物业，小区园内绿化好', '学校周边', '中等装修，地理位置好！', '绿化率：35%；停车位：400多', '金融服务：农业银行、建设银行；购物饮食：沃尔玛超市、华润万家、苏宁易购；医疗服务：西京医院、武警医院、市第九医院；交通便利：以您为中心的四个方向都有公交站，出行非常方便！地铁三号线就在门口！', '2800元/月', '', '未出售', '1', '鱼水婷', '13256984523', '0', '2014-06-10 00:01:10', '2');
INSERT INTO `house` VALUES ('10009', '出售', '公寓', '个人转让', '2室2厅1卫', '学区房嘉惠公寓92平米 好户型出售房', '嘉惠公寓', '25层/共26层', '5652元/m²', '建面92㎡| 套内92㎡', '52.0万元', '陕西', '西安', '新城', '韩森寨', '韩森路105号', '西南', '1994年', '70年产权', '有电梯', '简单装修', 'house/house090.jpg', '学区房嘉惠公寓92平米 好户型出售房。房子户型好，楼层好，低价出售了。房子证件齐全 看房方便。 可随时过户。', '证件齐全', '在其他地方有房，此套出售！', '绿化率：55%；停车位：800多', '金融服务：招商银行、建设银行；购物饮食：沃尔玛超市、华润万家、苏宁易购；医疗服务：西京医院、武警医院、市第九医院；交通便利：以您为中心的四个方向都有公交站，出行非常方便！地铁一号线就在门口！', '3000元/月', '', '未出售', '2', '廖云泰', '13289564231', '0', '2012-02-15 13:05:55', '1');
INSERT INTO `house` VALUES ('10010', '求购', '普通住宅', '个人转让', '3室2厅2卫', '水岸新城 可按揭 好房急售', '荣华水岸新城', '1层/共6层', '3666元/m²', '建面120㎡ | 套内120㎡', '44.0万元', '陕西', '西安', '临潼', '西郊村', '涝滨南路', '南', '1996年', '70年产权', '无电梯', '豪华装修', 'house/house100.jpg', '南北通透，房型方正，双阳台，全明户型！有证，可按揭，中间楼层', '配套齐全', '工作调动，诚心低价出售！', '绿化率：36%；停车位：400多', '金融服务：农业银行、建设银行；购物饮食：沃尔玛超市、华润万家、苏宁易购；医疗服务：西京医院、武警医院、市第九医院；交通便利：以您为中心的四个方向都有公交站，出行非常方便！地铁一号线就在门口！', '4200元/月', '', '未出售', '1', '鱼水婷', '13256984523', '1', '2017-03-15 10:13:57', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `id_card` varchar(18) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `nicname` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `qq` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `login_time` datetime DEFAULT NULL,
  `power` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'yst', '123', '鱼水婷', '610428199405115692', 'yst@house.com', '笑颜如花', '女', 'image/yst.jpg', '13256984523', '1548199223', '陕西省西安市杨凌区', '1994-05-23', '', '1', '2017-05-19 00:13:44', '1');
INSERT INTO `user` VALUES ('2', 'lyt', '123', '廖云泰', '610428199503251256', 'lyt@house.com', '星光灿烂', '男', 'image/lyt.jpg', '13289564231', '1548965856', '陕西省西安市雁塔区', '1995-03-25', '', '1', '2017-05-24 00:00:00', '1');