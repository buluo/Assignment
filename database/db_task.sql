/*
 Navicat MySQL Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : db_task

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 08/03/2023 02:35:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cut_off_time
-- ----------------------------
DROP TABLE IF EXISTS `cut_off_time`;
CREATE TABLE `cut_off_time`  (
  `iso` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `today` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tomorrow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `after_tomorrow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`iso`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cut_off_time
-- ----------------------------
INSERT INTO `cut_off_time` VALUES ('AED', 'United Arab Emirates', 'Never possible', '14:00:00', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('AUD', 'Australia', 'Never possible', '14:00:00', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('BGN', 'Bulgaria', 'Never possible', '14:00:00', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('CAD', 'Canada', '15:30:00', 'Always possible', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('CHF', 'Switzerland', '10:00:00', 'Always possible', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('CNH', 'China (Hong Kong)', 'Never possible', '14:00:00', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('CZK', 'Czech Republic', '11:00:00', 'Always possible', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('DKK', 'Denmark', '15:30:00', 'Always possible', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('EUR', 'Euro Area', '16:00:00', 'Always possible', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('GBP', 'United Kingdom', '15:30:00', 'Always possible', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('HKD', 'Hong Kong', 'Never possible', '14:00:00', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('HRK', 'Croatia', 'Never possible', '14:00:00', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('HUF', 'Hungary', '11:00:00', 'Always possible', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('ILS', 'Israel', 'Never possible', '14:00:00', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('JPY', 'Japan', 'Never possible', '15:30:00', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('MXN', 'Mexico', '11:00:00', 'Always possible', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('NOK', 'Norway', '15:00:00', 'Always possible', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('NZD', 'New Zealand', 'Never possible', '14:00:00', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('PLN', 'Poland', '10:00:00', 'Always possible', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('RON', 'Romania', 'Never possible', '14:00:00', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('RSD', 'Serbia', 'Never possible', 'Never possible', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('RUB', 'Russia', 'Never possible', '13:00:00', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('SAR', 'Saudi Arabia', 'Never possible', '14:00:00', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('SEK', 'Sweden', '15:30:00', 'Always possible', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('SGD', 'Singapore', 'Never possible', '14:00:00', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('THB', 'Thailand', 'Never possible', '9:00:00', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('TRY', 'Turkey', 'Never possible', '14:00:00', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('USD', 'United States', '16:00:00', 'Always possible', 'Always possible');
INSERT INTO `cut_off_time` VALUES ('ZAR', 'South Africa', 'Never possible', '14:00:00', 'Always possible');

-- ----------------------------
-- Table structure for cut_off_time_seq
-- ----------------------------
DROP TABLE IF EXISTS `cut_off_time_seq`;
CREATE TABLE `cut_off_time_seq`  (
  `next_val` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cut_off_time_seq
-- ----------------------------
INSERT INTO `cut_off_time_seq` VALUES (1);

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (1);

-- ----------------------------
-- Table structure for system-uuid
-- ----------------------------
DROP TABLE IF EXISTS `system-uuid`;
CREATE TABLE `system-uuid`  (
  `next_val` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system-uuid
-- ----------------------------
INSERT INTO `system-uuid` VALUES (1);

SET FOREIGN_KEY_CHECKS = 1;
