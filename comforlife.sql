/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50537
Source Host           : localhost:3306
Source Database       : comforlife

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2016-03-04 14:36:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `author` text,
  `desc` text,
  `time` datetime NOT NULL,
  `click` int(11) NOT NULL DEFAULT '0',
  `top` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for `rentattention`
-- ----------------------------
DROP TABLE IF EXISTS `rentattention`;
CREATE TABLE `rentattention` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `homeID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rentattention
-- ----------------------------

-- ----------------------------
-- Table structure for `renthome`
-- ----------------------------
DROP TABLE IF EXISTS `renthome`;
CREATE TABLE `renthome` (
  `homeID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `homeType` int(11) NOT NULL,
  `rentType` int(11) NOT NULL,
  `conName` text NOT NULL,
  `homeArea` text NOT NULL,
  `busiArea` text NOT NULL,
  `room` int(11) NOT NULL,
  `hall` int(11) NOT NULL,
  `toilet` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `fitment` int(11) NOT NULL,
  `direction` int(11) NOT NULL,
  `cert` longtext NOT NULL,
  `floor` int(11) NOT NULL,
  `floorNum` int(11) NOT NULL,
  `buildNum` int(11) NOT NULL,
  `unitNum` int(11) NOT NULL,
  `roomNum` int(11) NOT NULL,
  `rentNum` int(11) NOT NULL,
  `depositType` int(11) NOT NULL,
  `support` int(11) NOT NULL,
  `title` text NOT NULL,
  `desc` text,
  `checkInTime` date DEFAULT NULL,
  `check` int(11) NOT NULL DEFAULT '0',
  `attention` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`homeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of renthome
-- ----------------------------

-- ----------------------------
-- Table structure for `rentpic`
-- ----------------------------
DROP TABLE IF EXISTS `rentpic`;
CREATE TABLE `rentpic` (
  `picID` int(11) NOT NULL AUTO_INCREMENT,
  `homeID` int(11) NOT NULL,
  `pic` longtext NOT NULL,
  PRIMARY KEY (`picID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rentpic
-- ----------------------------

-- ----------------------------
-- Table structure for `saleattention`
-- ----------------------------
DROP TABLE IF EXISTS `saleattention`;
CREATE TABLE `saleattention` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `homeID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of saleattention
-- ----------------------------

-- ----------------------------
-- Table structure for `salehome`
-- ----------------------------
DROP TABLE IF EXISTS `salehome`;
CREATE TABLE `salehome` (
  `homeID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `buildNum` int(11) NOT NULL,
  `unitNum` int(11) NOT NULL,
  `roomNum` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `hall` int(11) NOT NULL,
  `toilet` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `conName` text NOT NULL,
  `unitPrice` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `totalFloor` int(11) NOT NULL,
  `direction` int(11) NOT NULL,
  `desc` text,
  `check` int(11) NOT NULL DEFAULT '0',
  `attention` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`homeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salehome
-- ----------------------------

-- ----------------------------
-- Table structure for `salepic`
-- ----------------------------
DROP TABLE IF EXISTS `salepic`;
CREATE TABLE `salepic` (
  `picID` int(11) NOT NULL AUTO_INCREMENT,
  `homeID` int(11) NOT NULL,
  `pic` longtext NOT NULL,
  PRIMARY KEY (`picID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salepic
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
