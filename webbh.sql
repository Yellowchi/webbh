/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80024
 Source Host           : localhost:3306
 Source Schema         : webbh

 Target Server Type    : MySQL
 Target Server Version : 80024
 File Encoding         : 65001

 Date: 06/06/2022 08:52:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for buyer
-- ----------------------------
DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer`  (
  `buyerid` int(0) NOT NULL,
  `buyername` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT 0,
  PRIMARY KEY (`buyerid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buyer
-- ----------------------------
INSERT INTO `buyer` VALUES (1, '光', '男', 20);
INSERT INTO `buyer` VALUES (2, 'yyds', '男', 15);
INSERT INTO `buyer` VALUES (3, 'abc', '男', 100);
INSERT INTO `buyer` VALUES (4, 'qwe', '男', 20);

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `buyerid` int(0) NOT NULL,
  `goodsid` int(0) NOT NULL,
  `num` int(0) NULL DEFAULT NULL COMMENT '数量',
  `cartid` int(0) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cartid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, 1, 1, 1);
INSERT INTO `cart` VALUES (1, 2, 2, 2);
INSERT INTO `cart` VALUES (1, 3, 3, 3);
INSERT INTO `cart` VALUES (1, 1, 10, 5);
INSERT INTO `cart` VALUES (1, 3, 5, 8);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `sellerid` int(0) NOT NULL DEFAULT 1,
  `goodsid` int(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `goodsname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `goodskind` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '种类',
  `goodsbrand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌',
  `goodsprice` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `goodsintro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '介绍',
  `goodsnum` int(0) NULL DEFAULT 0 COMMENT '库存\r\n',
  PRIMARY KEY (`goodsid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 1, 'vivo iQOO Neo5 活力版 骁龙870 144Hz竞速屏 44W闪充 双模5G全网通手机 8GB+128GB 冰峰白 iqooneo5活力版', '智能手机', NULL, 2299.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 2, 'Redmi 9A 5000mAh大电量 1300万AI相机 八核处理器 人脸解锁 4GB+64GB 晴空蓝 智能手机 小米 红米', '智能手机', NULL, 599.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 3, 'Redmi Note 9 Pro 5G 一亿像素 骁龙750G 33W快充 120Hz刷新率 湖光秋色 8GB+128GB 智能手机 小米 红米', '智能手机', NULL, 1399.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 4, '荣耀Play5T 22.5W超级快充 5000mAh大电池 6.5英寸护眼屏 全网通8GB+128GB极光蓝', '智能手机', NULL, 1099.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 5, '荣耀Play5T Pro 6400万双摄 6.6英寸全视屏 22.5W超级快充 4000mAh大电池 全网通版8GB+128GB 钛空银', '智能手机', NULL, 1289.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 6, 'Redmi Note 9 4G 6000mAh大电池 骁龙662处理器 18W快充 羽墨黑 6GB+128GB 智能手机 小米 红米', '智能手机', NULL, 969.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 7, 'vivo iQOO Z5 8GB+128GB 蓝色起源 骁龙778G 5000mAh长续航 120Hz高刷原色屏 双模5G全网通手机iqooz5', '智能手机', NULL, 1899.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 8, '荣耀50 1亿像素超清影像 5G 6.57英寸超曲屏 66W超级快充 3200万像素高清自拍 全网通版8GB+128GB 初雪水晶', '智能手机', NULL, 2489.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 9, 'OPPO A11s 8+128G 磨砂黑 超大存储 5000mAh大电池 18W疾速快充 90Hz护眼屏 全网通拍照手机', '智能手机', NULL, 1199.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 10, 'Redmi K40 骁龙870 三星AMOLED 120Hz高刷直屏 4800万高清三摄 12GB+256GB 幻境 游戏电竞5G手机 小米 红米', '智能手机', NULL, 2299.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 11, 'vivo iQOO Neo5 8GB+256GB 夜影黑 骁龙870 独立显示芯片 66W闪充 专业电竞游戏手机 双模5G全网通iqooneo5', '智能手机', NULL, 2699.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 12, 'vivo iQOO Neo5 活力版 骁龙870 144Hz竞速屏 44W闪充 双模5G全网通手机 8GB+128GB 极夜黑 iqooneo5活力版', '智能手机', NULL, 2299.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 13, '索尼（SONY）Xperia PRO-I 智能5G 摄影拍照手机 21:9 4K OLED屏 120Hz 骁龙888 微单技术 12GB+512GB黑色', '智能手机', NULL, 10999.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 14, '荣耀X30i 7.45mm超薄全视屏 22.5W超级快充 6nm 5G疾速芯 全网通版 6G+128G 钛空银', '智能手机', NULL, 1399.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 15, 'OPPO K9 8+128GB 幻彩之翼 高通骁龙768G 65W超级闪充 90Hz OLED电竞屏 6400万AI三摄 游戏拍照 双模 5G手机', '智能手机', NULL, 1799.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 16, '荣耀Play5T活力版 超级快充 5000mAh大电池 6.6英寸全面屏 全网通6GB+128GB极光蓝', '智能手机', NULL, 999.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 17, 'Apple iPhone 12 (A2404) 128GB 白色 支持移动联通电信5G 双卡双待手机', '智能手机', NULL, 5199.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 18, 'Redmi K40游戏增强版 天玑1200处理器67W闪充 120Hz高刷直屏 12GB+256GB 暗影 游戏电竞智能5G手机 小米 红米', '智能手机', NULL, 2299.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 19, '【现货】Apple 苹果iPhone 13 (A2634) 5G手机 午夜色 128GB', '智能手机', NULL, 5728.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 20, 'Redmi Note 10 Pro 5G 天玑1100旗舰芯 67W快充 120Hz旗舰变速金刚屏 星纱 6GB+128GB 智能手机 小米红米', '智能手机', NULL, 1499.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 21, '小米10S 骁龙870 哈曼卡顿对称式双扬立体声 8GB+256GB 蓝色 旗舰手机', '智能手机', NULL, 3199.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 22, 'Redmi Note 11 5G 天玑810 33W Pro快充 5000mAh大电池 6GB +128GB 浅梦星河 智能手机 小米 红米', '智能手机', NULL, 1299.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 23, 'Redmi K40 Pro+ 骁龙888 三星E4旗舰120Hz高刷直屏 一亿像素夜景 12GB+256GB 幻境 游戏电竞5G手机 小米 红米', '智能手机', NULL, 2999.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 24, 'Apple iPhone 13 Pro Max (A2644) 256GB 远峰蓝色 支持移动联通电信5G 双卡双待手机', '智能手机', NULL, 9799.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 25, '纽曼P80Pro八核全网通4G智能老人手机6.5英寸刘海游戏8+256G学生小米华为通用接口千元机 深海蓝 6GB+64GB', '智能手机', NULL, 559.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 26, 'vivo Y70t 5G手机 6G+128GB 碧海蓝 4500mAh大电池 双引擎闪充 4800万后置三摄 双模5G全网通手机', '智能手机', NULL, 1299.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 27, 'Redmi Note 9 5G 天玑800U 18W快充 4800万超清三摄 云墨灰 6GB+128GB 智能手机 小米 红米', '智能手机', NULL, 1199.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 28, '荣耀X10 5G双模 麒麟820 4300mAh续航 4000万高感光影像系统 6.63英寸升降全面屏 全网通8GB+128GB 光速银', '智能手机', NULL, 1769.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 29, 'vivo iQOO 7 12GB+256GB 传奇版 骁龙888 120W超快闪充 KPL官方赛事电竞手机 双模5G全网通vivoiqoo7', '智能手机', NULL, 3598.00, NULL, 0);
INSERT INTO `goods` VALUES (1, 30, '荣耀畅玩20 5000mAh超大电池续航 6.5英寸大屏 莱茵护眼 4GB+128GB 极光蓝 双卡双待 全网通', '智能手机', NULL, 899.00, NULL, 0);
INSERT INTO `goods` VALUES (2, 39, '1234jil', 'jiopppp', 'jjjjj', 1234567.00, '详情', 100);

-- ----------------------------
-- Table structure for od
-- ----------------------------
DROP TABLE IF EXISTS `od`;
CREATE TABLE `od`  (
  `orderid` int(0) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `odnum` int(0) NULL DEFAULT NULL,
  `sumprice` float(10, 2) NULL DEFAULT NULL,
  `buyerid` int(0) NOT NULL,
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of od
-- ----------------------------
INSERT INTO `od` VALUES (1, '无', 0, 0.00, 0);
INSERT INTO `od` VALUES (2, 'Redmi Note 10 Pro 5G 天玑1100旗舰芯 67W快充 120Hz旗舰变速金刚屏 星纱 6GB+128GB 智能手机 小米红米', 10, 14990.00, 2);
INSERT INTO `od` VALUES (3, 'Redmi K40 骁龙870 三星AMOLED 120Hz高刷直屏 4800万高清三摄 12GB+256GB 幻境 游戏电竞5G手机 小米 红米', 1, 2299.00, 2);
INSERT INTO `od` VALUES (4, 'vivo iQOO Neo5 活力版 骁龙870 144Hz竞速屏 44W闪充 双模5G全网通手机 8GB+128GB 冰峰白 iqooneo5活力版', 2, 4598.00, 3);
INSERT INTO `od` VALUES (5, '荣耀Play5T 22.5W超级快充 5000mAh大电池 6.5英寸护眼屏 全网通8GB+128GB极光蓝', 4, 4396.00, 1);
INSERT INTO `od` VALUES (6, 'Redmi 9A 5000mAh大电量 1300万AI相机 八核处理器 人脸解锁 4GB+64GB 晴空蓝 智能手机 小米 红米', 3, 1797.00, 4);
INSERT INTO `od` VALUES (7, 'OPPO A11s 8+128G 磨砂黑 超大存储 5000mAh大电池 18W疾速快充 90Hz护眼屏 全网通拍照手机', 2, 2398.00, 4);

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail`  (
  `oddid` int(0) NOT NULL AUTO_INCREMENT,
  `orderid` int(0) NULL DEFAULT NULL,
  `goodsname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goodsprice` decimal(10, 2) NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  `sumprice` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`oddid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES (1, 1, 'Redmi Note 9 Pro 5G 一亿像素 骁龙750G 33W快充 120Hz刷新率 湖光秋色 8GB+128GB 智能手机 小米 红米', 1399.00, 5, 6995.00);
INSERT INTO `orderdetail` VALUES (14, 19, '荣耀Play5T 22.5W超级快充 5000mAh大电池 6.5英寸护眼屏 全网通8GB+128GB极光蓝', 1099.00, 2, 2198.00);
INSERT INTO `orderdetail` VALUES (15, 19, '荣耀Play5T活力版 超级快充 5000mAh大电池 6.6英寸全面屏 全网通6GB+128GB极光蓝', 999.00, 3, 2997.00);
INSERT INTO `orderdetail` VALUES (16, 20, 'vivo iQOO 7 12GB+256GB 传奇版 骁龙888 120W超快闪充 KPL官方赛事电竞手机 双模5G全网通vivoiqoo7', 3598.00, 1, 3598.00);
INSERT INTO `orderdetail` VALUES (17, 20, 'OPPO K9 8+128GB 幻彩之翼 高通骁龙768G 65W超级闪充 90Hz OLED电竞屏 6400万AI三摄 游戏拍照 双模 5G手机', 1799.00, 4, 7196.00);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orderid` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `buyername` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, '123456', 'yyds', '临港大道', 'Cong Yang', '123456');
INSERT INTO `orders` VALUES (19, 'qwe', 'qwe', '上海电力大学', 'cy', '1234567890');
INSERT INTO `orders` VALUES (20, 'qwe', 'qwe', '上海电力大学', 'cy', '1234567890');

-- ----------------------------
-- Table structure for shipaddress
-- ----------------------------
DROP TABLE IF EXISTS `shipaddress`;
CREATE TABLE `shipaddress`  (
  `buyerid` int(0) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shipaddress
-- ----------------------------
INSERT INTO `shipaddress` VALUES (1, '上海市浦东新区', '1', '5');
INSERT INTO `shipaddress` VALUES (1, '上海市浦东新区', NULL, '5');

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `sellerid` int(0) NOT NULL COMMENT '店铺编号',
  `shopname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `shopintro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺介绍',
  `shopscore` decimal(10, 2) NULL DEFAULT NULL COMMENT '评分',
  PRIMARY KEY (`sellerid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES (1, '光', 'abcd', 0.00);
INSERT INTO `shop` VALUES (2, NULL, NULL, 0.00);
INSERT INTO `shop` VALUES (3, NULL, NULL, 0.00);
INSERT INTO `shop` VALUES (4, NULL, NULL, 0.00);

-- ----------------------------
-- Table structure for shopaddress
-- ----------------------------
DROP TABLE IF EXISTS `shopaddress`;
CREATE TABLE `shopaddress`  (
  `said` int(0) NOT NULL AUTO_INCREMENT,
  `buyerid` int(0) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`said`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopaddress
-- ----------------------------
INSERT INTO `shopaddress` VALUES (1, 1, '上海电力大学', 'yyds', '12347335');
INSERT INTO `shopaddress` VALUES (2, 2, '临港大道', 'Cong Yang', '123456');
INSERT INTO `shopaddress` VALUES (5, 4, '上海电力大学', 'cy', '1234567890');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `buyerid` int(0) NOT NULL,
  `sellerid` int(0) NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', 1, 1);
INSERT INTO `user` VALUES ('123456', '1', 2, 2);
INSERT INTO `user` VALUES ('abc', '123456', 3, 3);
INSERT INTO `user` VALUES ('qwe', 'qwe', 4, 4);

SET FOREIGN_KEY_CHECKS = 1;
