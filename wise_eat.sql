/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql服务器
 Source Server Type    : MySQL
 Source Server Version : 50716
 Source Host           : localhost:3306
 Source Schema         : wise_eat

 Target Server Type    : MySQL
 Target Server Version : 50716
 File Encoding         : 65001

 Date: 25/09/2020 19:18:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_friend_circle
-- ----------------------------
DROP TABLE IF EXISTS `tb_friend_circle`;
CREATE TABLE `tb_friend_circle`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `article` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `like` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NOT NULL,
  `available` int(10) NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `unique_phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_user_date_data
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_date_data`;
CREATE TABLE `tb_user_date_data`  (
  `user_id` int(10) NOT NULL,
  `time` datetime(0) NOT NULL,
  `food` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`user_id`, `time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_info`;
CREATE TABLE `tb_user_info`  (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `weight` decimal(10, 2) NOT NULL,
  `height` decimal(10, 2) NOT NULL,
  `now_lose` decimal(10, 2) NULL DEFAULT NULL,
  `consumption` decimal(10, 2) NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `age` int(10) NOT NULL,
  `goal` int(10) NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_user_long_period_data
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_long_period_data`;
CREATE TABLE `tb_user_long_period_data`  (
  `user_id` int(10) NOT NULL,
  `time` datetime(0) NOT NULL,
  `energy` decimal(10, 2) NOT NULL,
  `consume` decimal(10, 2) NOT NULL,
  `sugar` decimal(10, 2) NOT NULL,
  `fat` decimal(10, 2) NOT NULL,
  `protein` decimal(10, 2) NOT NULL,
  `judge` int(10) NOT NULL,
  PRIMARY KEY (`user_id`, `time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
