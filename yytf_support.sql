/*
 Navicat Premium Dump SQL

 Source Server         : AceTaffy
 Source Server Type    : MySQL
 Source Server Version : 80042 (8.0.42)
 Source Host           : localhost:3306
 Source Schema         : yytf_support

 Target Server Type    : MySQL
 Target Server Version : 80042 (8.0.42)
 File Encoding         : 65001

 Date: 08/07/2025 11:22:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chat_messages
-- ----------------------------
DROP TABLE IF EXISTS `chat_messages`;
CREATE TABLE `chat_messages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `receiver_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat_messages
-- ----------------------------
INSERT INTO `chat_messages` VALUES (1, 4, '123', NULL, '2025-07-07 16:05:10', NULL);
INSERT INTO `chat_messages` VALUES (2, 4, '567', NULL, '2025-07-07 16:05:13', NULL);
INSERT INTO `chat_messages` VALUES (3, 1, '123', NULL, '2025-07-07 16:09:30', NULL);
INSERT INTO `chat_messages` VALUES (4, 4, 'haha', NULL, '2025-07-07 16:11:44', NULL);
INSERT INTO `chat_messages` VALUES (5, 4, 'hh', 'images/chat/5cf0f03da4da95e9defab28bd25b038.jpg', '2025-07-07 16:11:54', NULL);
INSERT INTO `chat_messages` VALUES (6, 4, 'nihao', NULL, '2025-07-07 16:23:35', NULL);
INSERT INTO `chat_messages` VALUES (7, 1, NULL, 'chat_images/1751879477856_0fe4005840664f30b76f1a63909a5489.jpeg', '2025-07-07 17:11:17', NULL);
INSERT INTO `chat_messages` VALUES (8, 1, 'gogogo', NULL, '2025-07-07 17:11:27', NULL);
INSERT INTO `chat_messages` VALUES (9, 1, '123', NULL, '2025-07-07 17:12:55', NULL);
INSERT INTO `chat_messages` VALUES (10, 1, NULL, 'chat_images/1751879580157_123.jpg', '2025-07-07 17:13:00', NULL);
INSERT INTO `chat_messages` VALUES (11, 1, '小披肩了', NULL, '2025-07-08 08:54:58', NULL);
INSERT INTO `chat_messages` VALUES (12, 1, '2', NULL, '2025-07-08 09:18:56', NULL);
INSERT INTO `chat_messages` VALUES (13, 1, '123', NULL, '2025-07-08 09:27:32', NULL);
INSERT INTO `chat_messages` VALUES (14, 1, 'hi', NULL, '2025-07-08 09:32:11', NULL);
INSERT INTO `chat_messages` VALUES (15, 1, 'hi', NULL, '2025-07-08 09:39:42', 4);
INSERT INTO `chat_messages` VALUES (16, 1, 'yyy', NULL, '2025-07-08 09:39:53', NULL);
INSERT INTO `chat_messages` VALUES (17, 1, 'hhh', NULL, '2025-07-08 09:39:57', 4);
INSERT INTO `chat_messages` VALUES (18, 1, '草', NULL, '2025-07-08 09:40:04', 5);
INSERT INTO `chat_messages` VALUES (19, 4, 'hi', NULL, '2025-07-08 10:56:59', 5);
INSERT INTO `chat_messages` VALUES (20, 4, '111', NULL, '2025-07-08 11:03:58', NULL);
INSERT INTO `chat_messages` VALUES (21, 4, 'hi', NULL, '2025-07-08 11:08:07', NULL);
INSERT INTO `chat_messages` VALUES (22, 4, '123', NULL, '2025-07-08 11:09:36', NULL);
INSERT INTO `chat_messages` VALUES (23, 4, 'ggg', NULL, '2025-07-08 11:09:38', 1);
INSERT INTO `chat_messages` VALUES (24, 4, 'fhdfhd', NULL, '2025-07-08 11:09:41', 5);
INSERT INTO `chat_messages` VALUES (25, 4, 'sb', NULL, '2025-07-08 11:21:09', 5);

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `friend_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id` ASC, `friend_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of friends
-- ----------------------------
INSERT INTO `friends` VALUES (3, 1, 4);
INSERT INTO `friends` VALUES (1, 1, 5);
INSERT INTO `friends` VALUES (10, 4, 5);
INSERT INTO `friends` VALUES (11, 5, 4);

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','deleted') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'active',
  `likes` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 4, '塔不灭喵', '2025-07-07 10:28:05', 'active', 0);
INSERT INTO `posts` VALUES (2, 4, '永雏塔菲 我恨你 你又直播银角勾我的魂', '2025-07-07 10:31:49', 'active', 0);
INSERT INTO `posts` VALUES (3, 1, '关注永雏塔菲谢谢喵', '2025-07-07 10:48:26', 'active', 0);
INSERT INTO `posts` VALUES (4, 5, '永雏塔菲好可爱 香草', '2025-07-07 10:49:05', 'active', 0);
INSERT INTO `posts` VALUES (5, 1, '123', '2025-07-08 09:22:01', 'active', 0);

-- ----------------------------
-- Table structure for private_messages
-- ----------------------------
DROP TABLE IF EXISTS `private_messages`;
CREATE TABLE `private_messages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `timestamp` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of private_messages
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '123', '456');
INSERT INTO `users` VALUES (4, 'AceTaffy', '123456');
INSERT INTO `users` VALUES (5, 'Chahui', '123123');

SET FOREIGN_KEY_CHECKS = 1;
