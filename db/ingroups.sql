/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ingroups

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-03-13 17:16:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titel` varchar(255) DEFAULT NULL,
  `Aktiviert` varchar(255) DEFAULT NULL,
  `Datum` date DEFAULT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `createrId` int(11) DEFAULT NULL,
  `specialEvent` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of events
-- ----------------------------

-- ----------------------------
-- Table structure for event_location
-- ----------------------------
DROP TABLE IF EXISTS `event_location`;
CREATE TABLE `event_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eventId` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `contact_count` int(11) DEFAULT NULL,
  `end` int(11) DEFAULT NULL,
  `upperlimit` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of event_location
-- ----------------------------

-- ----------------------------
-- Table structure for locations
-- ----------------------------
DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of locations
-- ----------------------------

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contactId` int(11) DEFAULT NULL,
  `read` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of messages
-- ----------------------------

-- ----------------------------
-- Table structure for responds
-- ----------------------------
DROP TABLE IF EXISTS `responds`;
CREATE TABLE `responds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Bild` varchar(255) DEFAULT NULL,
  `eventId` int(11) DEFAULT NULL,
  `createrId` int(11) DEFAULT NULL,
  `createrImage` varchar(255) DEFAULT NULL,
  `contacterId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of responds
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `verified` varchar(255) DEFAULT NULL,
  `businessUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'kss_alexander@outlook.com', '$2y$10$KPLzOMrs1eJvzV4JXhvhTOVvDsuT1Mfka7.6n3o55dlmtP3n2hXiC', null, null, '2021-03-06 02:38:31', null, '2021-03-10', 'Male', null, null, 'http://localhost/ingroups/api/public/storage/attachment/2021-03-06/qhYFkxkNP2GPd4KdbOEGLbLbCGmKEoRZQzOhONUz.jpeg', null, '1', '1');

-- ----------------------------
-- Table structure for user_location
-- ----------------------------
DROP TABLE IF EXISTS `user_location`;
CREATE TABLE `user_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `creatd_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_location
-- ----------------------------
