/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50642
 Source Host           : localhost:3306
 Source Schema         : sweep_order

 Target Server Type    : MySQL
 Target Server Version : 50642
 File Encoding         : 65001

 Date: 19/05/2019 13:16:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '分类名',
  `category_type` int(11) NULL DEFAULT NULL COMMENT '分类类型',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '分类管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '热销榜', -1);
INSERT INTO `category` VALUES (2, '单人精彩套餐', 2);
INSERT INTO `category` VALUES (3, '冰爽饮品限时特惠', 1);
INSERT INTO `category` VALUES (4, '精选热菜', -1);
INSERT INTO `category` VALUES (5, '爽口凉菜', -1);
INSERT INTO `category` VALUES (6, '精选套餐', -1);
INSERT INTO `category` VALUES (7, '果拼果汁', -1);
INSERT INTO `category` VALUES (8, '小吃主食', -1);
INSERT INTO `category` VALUES (9, '特色粥品', -1);

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good`  (
  `good_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `good_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品名',
  `good_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `good_dec` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品描述',
  `good_sell_count` int(11) NULL DEFAULT NULL COMMENT '商品销售数量',
  `good_rating` int(11) NULL DEFAULT NULL COMMENT '商品评论数',
  `good_info` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品信息',
  `good_icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品icon',
  `good_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品大图',
  PRIMARY KEY (`good_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '商品管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES (1, '皮蛋瘦肉粥', 10.00, '咸粥', 229, 100, '一碗皮蛋瘦肉粥，总是我到粥店时的不二之选。香浓软滑，饱腹暖心，皮蛋的Q弹与瘦肉的滑嫩伴着粥香溢于满口，让人喝这样的一碗粥也觉得心满意足', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon1-114px-114px.png', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img1-750px-750px.jpeg');
INSERT INTO `good` VALUES (2, '扁豆焖面', 14.00, '焖面', 188, 96, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon2.png', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img2.jpeg');
INSERT INTO `good` VALUES (3, '葱花饼', 10.00, NULL, 124, 85, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon3.png', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img3.jpeg');
INSERT INTO `good` VALUES (4, '牛肉馅饼', 14.00, NULL, 114, 91, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon4.png', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img4.jpeg');
INSERT INTO `good` VALUES (5, '招牌猪肉白菜锅贴/10个', 17.00, NULL, 101, 78, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon5.png', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img5.jpeg');
INSERT INTO `good` VALUES (6, '南瓜粥', 9.00, '甜粥', 91, 100, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon6.png', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img6.jpeg');
INSERT INTO `good` VALUES (7, '红豆薏米美肤粥', 12.00, '甜粥', 86, 100, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon7.jpeg', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img7.jpeg');
INSERT INTO `good` VALUES (8, '八宝酱菜', 4.00, NULL, 84, 100, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon8.jpeg', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img8.jpeg');
INSERT INTO `good` VALUES (9, '红枣山药糙米粥', 10.00, NULL, 81, 91, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon9.jpeg', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img9.jpeg');
INSERT INTO `good` VALUES (10, '糊塌子', 10.00, NULL, 80, 93, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon10.jpeg', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img10.jpeg');
INSERT INTO `good` VALUES (11, '红枣山药粥套餐', 29.00, '红枣山药糙米粥,素材包,爽口莴笋丝,四川泡菜或八宝酱菜,配菜可备注', 19, 100, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon11.png', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img11.jpeg');
INSERT INTO `good` VALUES (12, 'VC无限橙果汁', 8.00, NULL, 16, 100, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon12.png', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img12.jpeg');
INSERT INTO `good` VALUES (13, '娃娃菜炖豆腐', 17.00, NULL, 43, 92, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon13.jpeg', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img13.jpeg');
INSERT INTO `good` VALUES (14, '手撕包菜', 16.00, NULL, 29, 100, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon14.png', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img14.jpeg');
INSERT INTO `good` VALUES (15, '香酥黄金鱼/3条', 11.00, NULL, 15, 100, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon15.png', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img15.jpeg');
INSERT INTO `good` VALUES (17, '拍黄瓜', 9.00, NULL, 28, 100, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon17.png', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img17.jpeg');
INSERT INTO `good` VALUES (18, '红豆薏米粥套餐', 37.00, '红豆薏米粥,三鲜干蒸烧卖,拍黄瓜', 3, 100, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon18.jpeg', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img18.jpeg');
INSERT INTO `good` VALUES (19, '皮蛋瘦肉粥套餐', 31.00, NULL, 12, 100, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon19.jpeg', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img19.jpeg');
INSERT INTO `good` VALUES (20, '蜜瓜圣女萝莉杯', 6.00, NULL, 1, NULL, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon20.png', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img20.jpeg');
INSERT INTO `good` VALUES (21, '加多宝', 6.00, NULL, 7, 100, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon21.png', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img21.jpeg');
INSERT INTO `good` VALUES (22, '鲜蔬菌菇粥', 11.00, '咸粥', 56, 100, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon22.png', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img22.jpeg');
INSERT INTO `good` VALUES (23, '田园蔬菜粥', 10.00, '咸粥', 33, 100, NULL, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon23.png', 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-img23.jpeg');

-- ----------------------------
-- Table structure for good_category
-- ----------------------------
DROP TABLE IF EXISTS `good_category`;
CREATE TABLE `good_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `category_id` int(11) NULL DEFAULT NULL COMMENT '分类id',
  `good_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '分类商品关联' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of good_category
-- ----------------------------
INSERT INTO `good_category` VALUES (1, 1, 1);
INSERT INTO `good_category` VALUES (2, 1, 2);
INSERT INTO `good_category` VALUES (3, 1, 3);
INSERT INTO `good_category` VALUES (4, 1, 4);
INSERT INTO `good_category` VALUES (5, 1, 5);
INSERT INTO `good_category` VALUES (6, 1, 6);
INSERT INTO `good_category` VALUES (7, 1, 7);
INSERT INTO `good_category` VALUES (8, 1, 8);
INSERT INTO `good_category` VALUES (9, 1, 9);
INSERT INTO `good_category` VALUES (10, 1, 10);
INSERT INTO `good_category` VALUES (11, 2, 11);
INSERT INTO `good_category` VALUES (12, 3, 12);
INSERT INTO `good_category` VALUES (13, 4, 13);
INSERT INTO `good_category` VALUES (14, 4, 14);
INSERT INTO `good_category` VALUES (15, 4, 15);
INSERT INTO `good_category` VALUES (16, 5, 8);
INSERT INTO `good_category` VALUES (17, 5, 17);
INSERT INTO `good_category` VALUES (18, 6, 18);
INSERT INTO `good_category` VALUES (19, 6, 19);
INSERT INTO `good_category` VALUES (20, 7, 20);
INSERT INTO `good_category` VALUES (21, 7, 21);
INSERT INTO `good_category` VALUES (22, 7, 12);
INSERT INTO `good_category` VALUES (23, 8, 2);
INSERT INTO `good_category` VALUES (24, 8, 3);
INSERT INTO `good_category` VALUES (25, 8, 4);
INSERT INTO `good_category` VALUES (26, 8, 5);
INSERT INTO `good_category` VALUES (27, 8, 10);
INSERT INTO `good_category` VALUES (28, 9, 1);
INSERT INTO `good_category` VALUES (29, 9, 6);
INSERT INTO `good_category` VALUES (30, 9, 7);
INSERT INTO `good_category` VALUES (31, 9, 9);
INSERT INTO `good_category` VALUES (32, 9, 22);
INSERT INTO `good_category` VALUES (33, 9, 23);

-- ----------------------------
-- Table structure for good_rating
-- ----------------------------
DROP TABLE IF EXISTS `good_rating`;
CREATE TABLE `good_rating`  (
  `ranting_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `good_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户名',
  `rate_time` bigint(20) NULL DEFAULT NULL COMMENT '评论时间',
  `rate_type` int(11) NULL DEFAULT NULL COMMENT '评论类型',
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '评论内容',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`ranting_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '商品评论管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of good_rating
-- ----------------------------
INSERT INTO `good_rating` VALUES (1, 1, '3******c', 1553740008000, 0, '很喜欢的粥', 'https://order-image.oss-cn-beijing.aliyuncs.com/user-img.png');
INSERT INTO `good_rating` VALUES (2, 1, '2******3', 1553650008000, 0, '喜欢，多来点', 'https://order-image.oss-cn-beijing.aliyuncs.com/user-img.png');
INSERT INTO `good_rating` VALUES (3, 1, '3******b', 1553563608000, 1, '很喜欢', 'https://order-image.oss-cn-beijing.aliyuncs.com/user-img.png');
INSERT INTO `good_rating` VALUES (4, 2, '3******c', 1553650008000, 0, '好吃', 'https://order-image.oss-cn-beijing.aliyuncs.com/user-img.png');
INSERT INTO `good_rating` VALUES (5, 2, '2******3', 1553563608000, 0, '喜欢', 'https://order-image.oss-cn-beijing.aliyuncs.com/user-img.png');
INSERT INTO `good_rating` VALUES (6, 2, '3******b', 1553477208000, 1, '没感觉', 'https://order-image.oss-cn-beijing.aliyuncs.com/user-img.png');
INSERT INTO `good_rating` VALUES (7, 3, '3******c', 1553390808000, 1, '挺好的', 'https://order-image.oss-cn-beijing.aliyuncs.com/user-img.png');
INSERT INTO `good_rating` VALUES (8, 3, '2******3', 1553304408000, 1, '很一般啊', 'https://order-image.oss-cn-beijing.aliyuncs.com/user-img.png');
INSERT INTO `good_rating` VALUES (9, 3, '3******b', 1553218008000, 0, '挺好吃的', 'https://order-image.oss-cn-beijing.aliyuncs.com/user-img.png');
INSERT INTO `good_rating` VALUES (10, 4, '3******c', 1553131608000, 1, '难吃不推荐', 'https://order-image.oss-cn-beijing.aliyuncs.com/user-img.png');
INSERT INTO `good_rating` VALUES (11, 4, '2******3', 1553045208000, 0, '还好吧', 'https://order-image.oss-cn-beijing.aliyuncs.com/user-img.png');
INSERT INTO `good_rating` VALUES (12, 4, '3******b', 1552958808000, 0, '挺香', 'https://order-image.oss-cn-beijing.aliyuncs.com/user-img.png');
INSERT INTO `good_rating` VALUES (13, 5, '3******c', 1552872408000, 1, '不脆,不好吃', 'https://order-image.oss-cn-beijing.aliyuncs.com/user-img.png');
INSERT INTO `good_rating` VALUES (14, 5, '2******3', 1552786008000, 0, '挺好吃', NULL);
INSERT INTO `good_rating` VALUES (15, 5, '3******b', 1552699608000, 0, '不错', NULL);
INSERT INTO `good_rating` VALUES (16, 6, '3******c', 1552613208000, 0, '很赞', NULL);
INSERT INTO `good_rating` VALUES (17, 6, '2******3', 1552526808000, 0, '味道很好啊', NULL);
INSERT INTO `good_rating` VALUES (18, 6, '3******b', 1552440408000, 0, '不喜欢', NULL);
INSERT INTO `good_rating` VALUES (19, 7, '3******c', 1552354008000, 0, '家的味道', NULL);
INSERT INTO `good_rating` VALUES (20, 7, '2******3', 1552267608000, 0, '分量很大', NULL);
INSERT INTO `good_rating` VALUES (21, 7, '3******b', 1552181208000, 0, '可以', NULL);
INSERT INTO `good_rating` VALUES (22, 8, '1******a', 1552094808000, 0, '味道好', NULL);
INSERT INTO `good_rating` VALUES (23, 8, '2******b', 1552008408000, 1, '不好吃', NULL);
INSERT INTO `good_rating` VALUES (24, 9, '1******a', 1551922008000, 0, '下次还来', NULL);
INSERT INTO `good_rating` VALUES (25, 9, '4******d', 1551835608000, 0, '(null)', NULL);
INSERT INTO `good_rating` VALUES (26, 10, '2******e', 1551749208000, 1, '不行，难吃', NULL);
INSERT INTO `good_rating` VALUES (27, 10, '3******a', 1551662808000, 0, '很棒的味', NULL);
INSERT INTO `good_rating` VALUES (28, 10, '4******c', 1551576408000, 0, '不错，再接再厉', NULL);
INSERT INTO `good_rating` VALUES (29, 10, '1******f', 1551490008000, 0, '还好吧', NULL);
INSERT INTO `good_rating` VALUES (30, 11, '1******w', 1551403608000, 0, '挺好吃的', NULL);
INSERT INTO `good_rating` VALUES (31, 11, '2******5', 1551317208000, 1, '感觉不行', NULL);
INSERT INTO `good_rating` VALUES (32, 12, '3******d', 1551230808000, 0, '挺好吃', NULL);
INSERT INTO `good_rating` VALUES (33, 12, '4******q', 1551144408000, 0, NULL, NULL);
INSERT INTO `good_rating` VALUES (34, 12, '3******e', 1551058008000, 1, '味道不正宗', NULL);
INSERT INTO `good_rating` VALUES (35, 13, '1******a', 1550971608000, 0, NULL, NULL);
INSERT INTO `good_rating` VALUES (36, 14, '1******d', 1550885208000, 0, '不错', NULL);
INSERT INTO `good_rating` VALUES (37, 14, '2******w', 1550798808000, 0, NULL, NULL);
INSERT INTO `good_rating` VALUES (38, 15, '1******d', 1550712408000, 1, NULL, NULL);
INSERT INTO `good_rating` VALUES (39, 15, '2******c', 1550626008000, 0, '叫上小伙伴一起', NULL);
INSERT INTO `good_rating` VALUES (40, 16, '2******c', 1550539608000, 0, '不错哦', NULL);
INSERT INTO `good_rating` VALUES (41, 16, '3******b', 1550453208000, 0, '可以来尝尝', NULL);
INSERT INTO `good_rating` VALUES (42, 17, '1******a', 1550366808000, 0, NULL, NULL);
INSERT INTO `good_rating` VALUES (43, 17, '1******a', 1550280408000, 1, NULL, NULL);
INSERT INTO `good_rating` VALUES (44, 17, '4******d', 1550194008000, 0, NULL, NULL);
INSERT INTO `good_rating` VALUES (45, 18, '4******d', 1550107608000, 0, '感觉味道棒棒的', NULL);
INSERT INTO `good_rating` VALUES (46, 19, '2******e', 1550021208000, 0, NULL, NULL);
INSERT INTO `good_rating` VALUES (47, 20, '1******e', 1549934808000, 0, '喜欢', NULL);
INSERT INTO `good_rating` VALUES (48, 20, '4******c', 1549848408000, 1, NULL, NULL);
INSERT INTO `good_rating` VALUES (49, 21, '1******f', 1549762008000, 1, '不好', NULL);
INSERT INTO `good_rating` VALUES (50, 21, '1******w', 1549675608000, 0, NULL, NULL);
INSERT INTO `good_rating` VALUES (51, 22, '2******5', 1549589208000, 0, NULL, NULL);
INSERT INTO `good_rating` VALUES (52, 22, '3******d', 1549502808000, 0, '下次再来哦', NULL);
INSERT INTO `good_rating` VALUES (53, 23, '2******w', 1549416408000, 0, NULL, NULL);
INSERT INTO `good_rating` VALUES (54, 23, '1******a', 1549330008000, 1, '希望味道能更好点', NULL);

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单详情id',
  `order_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '订单号',
  `product_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `product_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品名',
  `product_quantity` int(11) NULL DEFAULT NULL COMMENT '商品数量',
  `product_icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品图片url',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (15, '5b1e366d-ded8-4671-8e5a-833eeab8436c', 11, '红枣山药粥套餐', 2, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon11.png', '2019-05-19 00:06:12', '2019-05-19 00:06:12');
INSERT INTO `order_detail` VALUES (16, '5b1e366d-ded8-4671-8e5a-833eeab8436c', 12, 'VC无限橙果汁', 1, 'https://order-image.oss-cn-beijing.aliyuncs.com/goods-icon12.png', '2019-05-19 00:06:12', '2019-05-19 00:06:12');

-- ----------------------------
-- Table structure for order_master
-- ----------------------------
DROP TABLE IF EXISTS `order_master`;
CREATE TABLE `order_master`  (
  `order_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '订单号',
  `order_amount` decimal(8, 2) NULL DEFAULT NULL COMMENT '订单金额',
  `desk_id` int(11) NULL DEFAULT NULL COMMENT '桌号',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '订单主表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_master
-- ----------------------------
INSERT INTO `order_master` VALUES ('5b1e366d-ded8-4671-8e5a-833eeab8436c', 66.00, 2, '2019-05-19 00:06:13', '2019-05-19 00:06:12');

-- ----------------------------
-- Table structure for seller
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller`  (
  `seller_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商户id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商户名',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '蜂鸟专送' COMMENT '商户描述',
  `delivery_time` int(10) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '配送时间',
  `score` decimal(10, 1) NULL DEFAULT NULL COMMENT '评分',
  `service_score` decimal(10, 1) NULL DEFAULT NULL COMMENT '服务评分',
  `food_score` decimal(10, 1) NULL DEFAULT NULL COMMENT '商品评分',
  `rank_rate` decimal(10, 1) NULL DEFAULT NULL COMMENT '高于周边商家百分比',
  `min_price` decimal(10, 1) NULL DEFAULT NULL COMMENT '最低价格',
  `delivery_price` int(11) NULL DEFAULT 4 COMMENT '配送费',
  `rating_count` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '评论数',
  `sell_count` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '售卖数',
  `bulletin` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商家头像',
  `infos` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商家简介',
  `pics` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片列表',
  PRIMARY KEY (`seller_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '商家管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of seller
-- ----------------------------
INSERT INTO `seller` VALUES (1, '一品香粥店', '蜂鸟专送', 0000000038, 4.2, 4.1, 4.3, 69.2, 20.0, 4, 24, 91, '一品香粥店其烹饪粥料的秘方源于中国千年古法，在融和现代制作工艺，由世界烹饪大师屈浩先生领衔研发。坚守纯天然、0添加的良心品质深得消费者青睐，发展至今成为粥类的引领品牌。', 'https://order-image.oss-cn-beijing.aliyuncs.com/seller-avatar-256px.jpg', '该商家支持发票,请下单写好发票抬头#\r\n品类:其他菜系,包子粥店#廊坊市广阳区万达广场金街16号\r\n#营业时间:10:00-20:30', NULL);

-- ----------------------------
-- Table structure for seller_img
-- ----------------------------
DROP TABLE IF EXISTS `seller_img`;
CREATE TABLE `seller_img`  (
  `pic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `pic_str` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片实景照片',
  `seller_id` int(11) NULL DEFAULT NULL COMMENT '商家id',
  PRIMARY KEY (`pic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '商家图片' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of seller_img
-- ----------------------------
INSERT INTO `seller_img` VALUES (1, 'https://order-image.oss-cn-beijing.aliyuncs.com/pics1-180px-180px.jpeg', 1);
INSERT INTO `seller_img` VALUES (2, 'https://order-image.oss-cn-beijing.aliyuncs.com/pics2.jpeg', 1);
INSERT INTO `seller_img` VALUES (3, 'https://order-image.oss-cn-beijing.aliyuncs.com/pics3.jpeg', 1);
INSERT INTO `seller_img` VALUES (4, 'https://order-image.oss-cn-beijing.aliyuncs.com/pics4.jpeg', 1);

-- ----------------------------
-- Table structure for seller_rating
-- ----------------------------
DROP TABLE IF EXISTS `seller_rating`;
CREATE TABLE `seller_rating`  (
  `ranting_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `seller_id` int(11) NULL DEFAULT NULL COMMENT '商家id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户名',
  `rate_time` bigint(20) NULL DEFAULT NULL COMMENT '评论时间',
  `delivery_time` int(11) NULL DEFAULT NULL COMMENT '耗时',
  `score` int(11) NULL DEFAULT NULL COMMENT '评分',
  `rate_type` int(11) NULL DEFAULT NULL COMMENT '评论类型',
  `ranting_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '评论内容',
  `recommend` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '推荐内容',
  PRIMARY KEY (`ranting_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '商家评论' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of seller_rating
-- ----------------------------
INSERT INTO `seller_rating` VALUES (1, 1, '3******c', 1553740008000, 30, 5, 0, '不错,粥很好喝,我经常吃这一家,非常赞,以后也会常来吃,强烈推荐.', '南瓜粥,皮蛋瘦肉粥,扁豆焖面,娃娃菜炖豆腐,牛肉馅饼');
INSERT INTO `seller_rating` VALUES (2, 1, '2******3', 1553668008000, NULL, 4, 0, '服务态度不错', '扁豆焖面');
INSERT INTO `seller_rating` VALUES (3, 1, '3******b', 1553563608000, NULL, 3, 1, NULL, NULL);
INSERT INTO `seller_rating` VALUES (4, 1, '1******c', 1553650008000, 20, 5, 0, '良心店铺', NULL);
INSERT INTO `seller_rating` VALUES (5, 1, '2******d', 1553563608000, 10, 4, 0, NULL, NULL);
INSERT INTO `seller_rating` VALUES (6, 1, '9******0', 1553477208000, 70, 1, 1, '送货速度蜗牛一样', NULL);
INSERT INTO `seller_rating` VALUES (7, 1, 'd******c', 1553390808000, 30, 5, 0, '很喜欢的粥店', NULL);
INSERT INTO `seller_rating` VALUES (8, 1, '2******3', 1553304408000, NULL, 4, 0, '量给的还可以', NULL);
INSERT INTO `seller_rating` VALUES (9, 1, '3******8', 1553218008000, NULL, 3, 1, NULL, NULL);
INSERT INTO `seller_rating` VALUES (10, 1, 'a******a', 1553131608000, NULL, 4, 0, '孩子喜欢吃这家', NULL);
INSERT INTO `seller_rating` VALUES (11, 1, '3******3', 1553045208000, NULL, 4, 0, '粥挺好吃的', NULL);
INSERT INTO `seller_rating` VALUES (12, 1, 't******b', 1552958808000, NULL, 3, 1, NULL, NULL);
INSERT INTO `seller_rating` VALUES (13, 1, 'f******c', 1552872408000, 15, 5, 0, '送货速度很快', NULL);
INSERT INTO `seller_rating` VALUES (14, 1, 'k******3', 1552786008000, NULL, 4, 0, NULL, NULL);
INSERT INTO `seller_rating` VALUES (15, 1, 'u******b', 1552699608000, NULL, 4, 0, '下雨天给快递小哥点个赞', NULL);
INSERT INTO `seller_rating` VALUES (16, 1, 's******c', 1552613208000, NULL, 4, 0, '好', NULL);
INSERT INTO `seller_rating` VALUES (17, 1, 'z******3', 1552526808000, NULL, 5, 0, '吃了还想再吃', NULL);
INSERT INTO `seller_rating` VALUES (18, 1, 'n******b', 1552440408000, NULL, 3, 1, '发票开的不对', NULL);
INSERT INTO `seller_rating` VALUES (19, 1, 'm******c', 1552354008000, 30, 5, 0, '好吃', NULL);
INSERT INTO `seller_rating` VALUES (20, 1, 'l******3', 1552267608000, 40, 5, 0, '还不错吧', NULL);
INSERT INTO `seller_rating` VALUES (21, 1, '3******o', 1552181208000, NULL, 2, 1, NULL, NULL);
INSERT INTO `seller_rating` VALUES (22, 1, '3******p', 1552094808000, NULL, 4, 0, '很喜欢的粥', NULL);
INSERT INTO `seller_rating` VALUES (23, 1, 'o******k', 1552008408000, NULL, 5, 0, NULL, NULL);
INSERT INTO `seller_rating` VALUES (24, 1, 'k******b', 1551922008000, NULL, 4, 0, NULL, NULL);

-- ----------------------------
-- Table structure for seller_support
-- ----------------------------
DROP TABLE IF EXISTS `seller_support`;
CREATE TABLE `seller_support`  (
  `support_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '活动id',
  `type` tinyint(10) NULL DEFAULT NULL COMMENT '满减打折小图标',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述',
  `seller_id` int(11) NULL DEFAULT NULL COMMENT '商户id',
  PRIMARY KEY (`support_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '商家活动' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of seller_support
-- ----------------------------
INSERT INTO `seller_support` VALUES (1, 0, '在线支付满28减5', 1);
INSERT INTO `seller_support` VALUES (2, 1, 'VC无限橙果汁全场8折', 1);
INSERT INTO `seller_support` VALUES (3, 2, '单人精彩套餐', 1);
INSERT INTO `seller_support` VALUES (4, 3, '该商家支持发票,请下单写好发票抬头', 1);
INSERT INTO `seller_support` VALUES (5, 4, '已加入“外卖保”计划,食品安全保障', 1);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `param_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'key',
  `param_value` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `param_key`(`param_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}', 0, '云存储配置信息');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) NULL DEFAULT 0 COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, 0, '刘方毕设项目组', 0, 0);
INSERT INTO `sys_dept` VALUES (2, 1, '长沙分公司', 1, -1);
INSERT INTO `sys_dept` VALUES (3, 1, '上海分公司', 2, -1);
INSERT INTO `sys_dept` VALUES (4, 3, '技术部', 0, -1);
INSERT INTO `sys_dept` VALUES (5, 3, '销售部', 1, -1);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典类型',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典码',
  `value` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典值',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `del_flag` tinyint(4) NULL DEFAULT 0 COMMENT '删除标记  -1：已删除  0：正常',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `type`(`type`, `code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, '性别', 'sex', '0', '女', 0, NULL, 0);
INSERT INTO `sys_dict` VALUES (2, '性别', 'sex', '1', '男', 1, NULL, 0);
INSERT INTO `sys_dict` VALUES (3, '性别', 'sex', '2', '未知', 3, NULL, 0);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, 'admin', '修改菜单', 'io.renren.modules.sys.controller.SysMenuController.update()', '{\"menuId\":100,\"parentId\":0,\"parentName\":\"一级菜单\",\"name\":\"数据管理\",\"type\":0,\"icon\":\"fa fa-font\",\"orderNum\":0}', 6, '0:0:0:0:0:0:0:1', '2019-05-04 20:48:11');
INSERT INTO `sys_log` VALUES (2, 'admin', '修改用户', 'io.renren.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"liufang\",\"password\":\"a7a34cb7e6481332bf192a2cf2f1ce279bbe3c2bb43496a9dd34d6cbcf14fd8a\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"liufangweb@163.com\",\"mobile\":\"13612345678\",\"status\":1,\"roleIdList\":[],\"createTime\":\"Nov 11, 2016 11:11:11 AM\",\"deptId\":1,\"deptName\":\"刘方毕设项目组\"}', 137, '0:0:0:0:0:0:0:1', '2019-05-04 20:50:24');
INSERT INTO `sys_log` VALUES (3, 'admin', '修改用户', 'io.renren.modules.sys.controller.SysUserController.update()', '{\"userId\":1,\"username\":\"liufang\",\"salt\":\"YzcmCZNvbXocrsz9dm8e\",\"email\":\"liufangweb@163.com\",\"mobile\":\"153***3363\",\"status\":1,\"roleIdList\":[],\"createTime\":\"Nov 11, 2016 11:11:11 AM\",\"deptId\":1,\"deptName\":\"刘方毕设项目组\"}', 10, '0:0:0:0:0:0:0:1', '2019-05-04 20:52:11');
INSERT INTO `sys_log` VALUES (4, 'liufang', '保存角色', 'io.renren.modules.sys.controller.SysRoleController.save()', '{\"roleId\":1,\"roleName\":\"毕设演示\",\"remark\":\"仅作为毕设演示\",\"deptId\":1,\"deptName\":\"刘方毕设项目组\",\"menuIdList\":[100,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80],\"deptIdList\":[1],\"createTime\":\"May 4, 2019 9:00:48 PM\"}', 134, '0:0:0:0:0:0:0:1', '2019-05-04 21:00:48');
INSERT INTO `sys_log` VALUES (5, 'liufang', '保存用户', 'io.renren.modules.sys.controller.SysUserController.save()', '{\"userId\":2,\"username\":\"刘方\",\"password\":\"939703f6bc4dce367b2295da42610b03254fbd614d82d3461537c2fca0d8736e\",\"salt\":\"nX8JGpwbdXO5sqNaMmWk\",\"email\":\"liufangweb@163.com\",\"mobile\":\"1323068****\",\"status\":1,\"roleIdList\":[1],\"createTime\":\"May 4, 2019 9:01:46 PM\",\"deptId\":1,\"deptName\":\"刘方毕设项目组\"}', 42, '0:0:0:0:0:0:0:1', '2019-05-04 21:01:47');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', NULL, NULL, 0, 'fa fa-cog', 0);
INSERT INTO `sys_menu` VALUES (2, 1, '管理员管理', 'modules/sys/user.html', NULL, 1, 'fa fa-user', 1);
INSERT INTO `sys_menu` VALUES (3, 1, '角色管理', 'modules/sys/role.html', NULL, 1, 'fa fa-user-secret', 2);
INSERT INTO `sys_menu` VALUES (4, 1, '菜单管理', 'modules/sys/menu.html', NULL, 1, 'fa fa-th-list', 3);
INSERT INTO `sys_menu` VALUES (5, 1, 'SQL监控', 'druid/sql.html', NULL, 1, 'fa fa-bug', 4);
INSERT INTO `sys_menu` VALUES (6, 1, '定时任务', 'modules/job/schedule.html', NULL, 1, 'fa fa-tasks', 5);
INSERT INTO `sys_menu` VALUES (7, 6, '查看', NULL, 'sys:schedule:list,sys:schedule:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (8, 6, '新增', NULL, 'sys:schedule:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (9, 6, '修改', NULL, 'sys:schedule:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (10, 6, '删除', NULL, 'sys:schedule:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (11, 6, '暂停', NULL, 'sys:schedule:pause', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (12, 6, '恢复', NULL, 'sys:schedule:resume', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (13, 6, '立即执行', NULL, 'sys:schedule:run', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (14, 6, '日志列表', NULL, 'sys:schedule:log', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (15, 2, '查看', NULL, 'sys:user:list,sys:user:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (16, 2, '新增', NULL, 'sys:user:save,sys:role:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (17, 2, '修改', NULL, 'sys:user:update,sys:role:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (18, 2, '删除', NULL, 'sys:user:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (19, 3, '查看', NULL, 'sys:role:list,sys:role:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (20, 3, '新增', NULL, 'sys:role:save,sys:menu:perms', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (21, 3, '修改', NULL, 'sys:role:update,sys:menu:perms', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (22, 3, '删除', NULL, 'sys:role:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (23, 4, '查看', NULL, 'sys:menu:list,sys:menu:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (24, 4, '新增', NULL, 'sys:menu:save,sys:menu:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (25, 4, '修改', NULL, 'sys:menu:update,sys:menu:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (26, 4, '删除', NULL, 'sys:menu:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (27, 1, '参数管理', 'modules/sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', 1, 'fa fa-sun-o', 6);
INSERT INTO `sys_menu` VALUES (29, 1, '系统日志', 'modules/sys/log.html', 'sys:log:list', 1, 'fa fa-file-text-o', 7);
INSERT INTO `sys_menu` VALUES (30, 1, '文件上传', 'modules/oss/oss.html', 'sys:oss:all', 1, 'fa fa-file-image-o', 6);
INSERT INTO `sys_menu` VALUES (31, 1, '部门管理', 'modules/sys/dept.html', NULL, 1, 'fa fa-file-code-o', 1);
INSERT INTO `sys_menu` VALUES (32, 31, '查看', NULL, 'sys:dept:list,sys:dept:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (33, 31, '新增', NULL, 'sys:dept:save,sys:dept:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (34, 31, '修改', NULL, 'sys:dept:update,sys:dept:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (35, 31, '删除', NULL, 'sys:dept:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (36, 1, '字典管理', 'modules/sys/dict.html', NULL, 1, 'fa fa-bookmark-o', 6);
INSERT INTO `sys_menu` VALUES (37, 36, '查看', NULL, 'sys:dict:list,sys:dict:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (38, 36, '新增', NULL, 'sys:dict:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (39, 36, '修改', NULL, 'sys:dict:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (40, 36, '删除', NULL, 'sys:dict:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (41, 100, '分类管理', 'modules/order/category.html', NULL, 1, 'fa fa-file-code-o', 6);
INSERT INTO `sys_menu` VALUES (42, 41, '查看', NULL, 'order:category:list,order:category:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (43, 41, '新增', NULL, 'order:category:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (44, 41, '修改', NULL, 'order:category:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (45, 41, '删除', NULL, 'order:category:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (46, 100, '商品管理', 'modules/order/good.html', NULL, 1, 'fa fa-file-code-o', 6);
INSERT INTO `sys_menu` VALUES (47, 46, '查看', NULL, 'order:good:list,order:good:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (48, 46, '新增', NULL, 'order:good:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (49, 46, '修改', NULL, 'order:good:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (50, 46, '删除', NULL, 'order:good:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (51, 100, '分类商品关联', 'modules/order/goodcategory.html', NULL, 1, 'fa fa-file-code-o', 6);
INSERT INTO `sys_menu` VALUES (52, 51, '查看', NULL, 'order:goodcategory:list,order:goodcategory:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (53, 51, '新增', NULL, 'order:goodcategory:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (54, 51, '修改', NULL, 'order:goodcategory:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (55, 51, '删除', NULL, 'order:goodcategory:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (56, 100, '商品评论管理', 'modules/order/goodrating.html', NULL, 1, 'fa fa-file-code-o', 6);
INSERT INTO `sys_menu` VALUES (57, 56, '查看', NULL, 'order:goodrating:list,order:goodrating:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (58, 56, '新增', NULL, 'order:goodrating:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (59, 56, '修改', NULL, 'order:goodrating:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (60, 56, '删除', NULL, 'order:goodrating:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (61, 100, '商家管理', 'modules/order/seller.html', NULL, 1, 'fa fa-file-code-o', 6);
INSERT INTO `sys_menu` VALUES (62, 61, '查看', NULL, 'order:seller:list,order:seller:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (63, 61, '新增', NULL, 'order:seller:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (64, 61, '修改', NULL, 'order:seller:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (65, 61, '删除', NULL, 'order:seller:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (66, 100, '商家图片', 'modules/order/sellerimg.html', NULL, 1, 'fa fa-file-code-o', 6);
INSERT INTO `sys_menu` VALUES (67, 66, '查看', NULL, 'order:sellerimg:list,order:sellerimg:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (68, 66, '新增', NULL, 'order:sellerimg:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (69, 66, '修改', NULL, 'order:sellerimg:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (70, 66, '删除', NULL, 'order:sellerimg:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (71, 100, '商家评论', 'modules/order/sellerrating.html', NULL, 1, 'fa fa-file-code-o', 6);
INSERT INTO `sys_menu` VALUES (72, 71, '查看', NULL, 'order:sellerrating:list,order:sellerrating:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (73, 71, '新增', NULL, 'order:sellerrating:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (74, 71, '修改', NULL, 'order:sellerrating:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (75, 71, '删除', NULL, 'order:sellerrating:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (76, 100, '商家活动', 'modules/order/sellersupport.html', NULL, 1, 'fa fa-file-code-o', 6);
INSERT INTO `sys_menu` VALUES (77, 76, '查看', NULL, 'order:sellersupport:list,order:sellersupport:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (78, 76, '新增', NULL, 'order:sellersupport:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (79, 76, '修改', NULL, 'order:sellersupport:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (80, 76, '删除', NULL, 'order:sellersupport:delete', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (100, 0, '数据管理', NULL, NULL, 0, 'fa fa-font', 0);
INSERT INTO `sys_menu` VALUES (101, 100, '订单管理', 'modules/order/ordermaster.html', NULL, 1, 'fa fa-file-code-o', 6);
INSERT INTO `sys_menu` VALUES (102, 101, '查看', NULL, 'order:ordermaster:list,order:ordermaster:info', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (103, 101, '新增', NULL, 'order:ordermaster:save', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (104, 101, '修改', NULL, 'order:ordermaster:update', 2, NULL, 6);
INSERT INTO `sys_menu` VALUES (105, 101, '删除', NULL, 'order:ordermaster:delete', 2, NULL, 6);

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件上传' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '毕设演示', '仅作为毕设演示', 1, '2019-05-04 21:00:48');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与部门对应关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (1, 1, 1);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色与菜单对应关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1, 100);
INSERT INTO `sys_role_menu` VALUES (2, 1, 41);
INSERT INTO `sys_role_menu` VALUES (3, 1, 42);
INSERT INTO `sys_role_menu` VALUES (4, 1, 43);
INSERT INTO `sys_role_menu` VALUES (5, 1, 44);
INSERT INTO `sys_role_menu` VALUES (6, 1, 45);
INSERT INTO `sys_role_menu` VALUES (7, 1, 46);
INSERT INTO `sys_role_menu` VALUES (8, 1, 47);
INSERT INTO `sys_role_menu` VALUES (9, 1, 48);
INSERT INTO `sys_role_menu` VALUES (10, 1, 49);
INSERT INTO `sys_role_menu` VALUES (11, 1, 50);
INSERT INTO `sys_role_menu` VALUES (12, 1, 51);
INSERT INTO `sys_role_menu` VALUES (13, 1, 52);
INSERT INTO `sys_role_menu` VALUES (14, 1, 53);
INSERT INTO `sys_role_menu` VALUES (15, 1, 54);
INSERT INTO `sys_role_menu` VALUES (16, 1, 55);
INSERT INTO `sys_role_menu` VALUES (17, 1, 56);
INSERT INTO `sys_role_menu` VALUES (18, 1, 57);
INSERT INTO `sys_role_menu` VALUES (19, 1, 58);
INSERT INTO `sys_role_menu` VALUES (20, 1, 59);
INSERT INTO `sys_role_menu` VALUES (21, 1, 60);
INSERT INTO `sys_role_menu` VALUES (22, 1, 61);
INSERT INTO `sys_role_menu` VALUES (23, 1, 62);
INSERT INTO `sys_role_menu` VALUES (24, 1, 63);
INSERT INTO `sys_role_menu` VALUES (25, 1, 64);
INSERT INTO `sys_role_menu` VALUES (26, 1, 65);
INSERT INTO `sys_role_menu` VALUES (27, 1, 66);
INSERT INTO `sys_role_menu` VALUES (28, 1, 67);
INSERT INTO `sys_role_menu` VALUES (29, 1, 68);
INSERT INTO `sys_role_menu` VALUES (30, 1, 69);
INSERT INTO `sys_role_menu` VALUES (31, 1, 70);
INSERT INTO `sys_role_menu` VALUES (32, 1, 71);
INSERT INTO `sys_role_menu` VALUES (33, 1, 72);
INSERT INTO `sys_role_menu` VALUES (34, 1, 73);
INSERT INTO `sys_role_menu` VALUES (35, 1, 74);
INSERT INTO `sys_role_menu` VALUES (36, 1, 75);
INSERT INTO `sys_role_menu` VALUES (37, 1, 76);
INSERT INTO `sys_role_menu` VALUES (38, 1, 77);
INSERT INTO `sys_role_menu` VALUES (39, 1, 78);
INSERT INTO `sys_role_menu` VALUES (40, 1, 79);
INSERT INTO `sys_role_menu` VALUES (41, 1, 80);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'liufang', 'a7a34cb7e6481332bf192a2cf2f1ce279bbe3c2bb43496a9dd34d6cbcf14fd8a', 'YzcmCZNvbXocrsz9dm8e', 'liufangweb@163.com', '153***3363', 1, 1, '2016-11-11 11:11:11');
INSERT INTO `sys_user` VALUES (2, '刘方', '939703f6bc4dce367b2295da42610b03254fbd614d82d3461537c2fca0d8736e', 'nX8JGpwbdXO5sqNaMmWk', 'liufangweb@163.com', '1323068****', 1, 1, '2019-05-04 21:01:47');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与角色对应关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 2, 1);

SET FOREIGN_KEY_CHECKS = 1;
