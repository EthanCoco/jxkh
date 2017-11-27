/*
Navicat MySQL Data Transfer

Source Server         : localhostphpstudy
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : jxkh

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-11-27 18:04:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `auth_key` varchar(32) NOT NULL COMMENT '自动登录key',
  `password_hash` varchar(255) NOT NULL COMMENT '加密密码',
  `password_reset_token` varchar(255) DEFAULT NULL COMMENT '重置密码token',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `role` smallint(6) NOT NULL DEFAULT '10' COMMENT '角色等级',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'lijianlin', '9iCiQJFaL_NfMV1yD9ldhuG9JwcS_Iz8', '$2y$13$l/qZQWVBjsINsi5FURE4beUE8G/EkY9RqwEUa5E7wB93Y.6LxpXUC', null, 'lijianlin0204@163.com', '10', '10', '1511772922', '1511772922');
INSERT INTO `user` VALUES ('2', '李建林', 'b8HQSc3B0DrlVWnp0Sb5dbio7WuH1xrl', '$2y$13$oB1bdVW5FhMqjHEeNu3QBu/KyVc6JQ7CiAGPPrDj.Yr7HT8G/gcLC', null, '2319048747@qq.com', '10', '10', '1511776923', '1511776923');
