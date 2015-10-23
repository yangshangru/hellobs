/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : demo_bs

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2015-10-22 17:32:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `hd_articale`
-- ----------------------------
DROP TABLE IF EXISTS `hd_articale`;
CREATE TABLE `hd_articale` (
  `id` int(11) NOT NULL,
  `abstract` varchar(255) DEFAULT NULL,
  `author` varchar(60) NOT NULL,
  `content` text NOT NULL,
  `key_word` varchar(100) DEFAULT NULL,
  `add_time` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `type` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hd_articale
-- ----------------------------

-- ----------------------------
-- Table structure for `hd_category`
-- ----------------------------
DROP TABLE IF EXISTS `hd_category`;
CREATE TABLE `hd_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `admin_name` varchar(60) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hd_category
-- ----------------------------

-- ----------------------------
-- Table structure for `hd_order`
-- ----------------------------
DROP TABLE IF EXISTS `hd_order`;
CREATE TABLE `hd_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_info` text NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hd_order
-- ----------------------------
