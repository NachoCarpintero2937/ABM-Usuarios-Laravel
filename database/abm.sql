/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : abm

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-10-17 17:57:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('4', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('5', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('6', '2019_08_19_000000_create_failed_jobs_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Prueba', 'salvador.nienow@hills.com', null, '$2y$10$vvMOjQ1IyLb9ePvYOWGsYuyQmbrrawnyxVi82KxEz2dOmxdikCxQi', '1', null, '2020-10-17 03:56:43', '2020-10-17 20:42:17');
INSERT INTO `users` VALUES ('2', 'Monroe Fadel', 'hoeger.kamron@gmail.com', null, '$2y$10$D7AB3hVX4y5M3tX6E9BuOex6lbaHcOSjulyE3wZtj0qI6y8/3oAMe', '1', null, '2020-10-17 03:56:43', null);
INSERT INTO `users` VALUES ('3', 'Blair Rippin', 'runolfsson.brenna@hotmail.com', null, '$2y$10$d50aR2Z1t2W3EdFE6HAV3up4qEX4glgwePrJBfASK9ERy0mt9TFwq', '1', null, '2020-10-17 03:56:43', null);
INSERT INTO `users` VALUES ('4', 'Xander Tromp', 'ohoppe@muller.com', null, '$2y$10$BITuPXhMWUvufjDhxJHqwebGD5YHgh5T4kB/9gj9fjuMOS0vI/3ZW', '1', null, '2020-10-17 03:56:43', null);
INSERT INTO `users` VALUES ('5', 'Harry Kunze', 'hermiston.houston@johns.com', null, '$2y$10$kBO3pA//QDzdnrYltSuGcev7kZS5KlOWd6fm/VOTvDH.Ln51mnTjG', '1', null, '2020-10-17 03:56:43', null);
INSERT INTO `users` VALUES ('6', 'Giovanny Cormier', 'america76@yahoo.com', null, '$2y$10$rduBhijqKjVUWDOK9Swdq.PG7XnZ19rs7BHbsvaPAHYNSuX2G.nr2', '1', null, '2020-10-17 03:56:43', null);
INSERT INTO `users` VALUES ('7', 'Magdalena Barton', 'frankie.hauck@hotmail.com', null, '$2y$10$YzOu5mbJ4YkqUpt0EnmiZu.pfk78KsE3y1KQCbrRh8Qk5.mNn4zOa', '1', null, '2020-10-17 03:56:43', null);
INSERT INTO `users` VALUES ('8', 'Johnathon Ruecker', 'yboyle@gmail.com', null, '$2y$10$5Qqfb8VyV6WcT4w3CGEw9u7ReRez5KQRwMEBxy7fiPSQvSvdY5YLW', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('9', 'Verner Stracke', 'deckow.emma@hotmail.com', null, '$2y$10$dcH.5np5BzDDVOqJtAyh5uOzeMinrYTGGZfQ09S/YblzSyYTFqN2S', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('10', 'Lawrence Abbott', 'martine80@gmail.com', null, '$2y$10$Xbuzuervz6uOyZQbLJ0Kk.e/lkDvDVNoB9AD8jJuK9sNW83pWQQ6i', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('11', 'Melody Crist', 'grayson84@yahoo.com', null, '$2y$10$bSj5HAzAzx2G3mfNKnocbu1bNAYGHhtWKMD7r94UwD5A9bA0RSz4e', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('12', 'Norbert Kuhlman', 'qshanahan@hotmail.com', null, '$2y$10$fDyiKD4xN2Iwx6bUXsMpLOFiMDXis04kix0Wg9B/jdrg5rg9KuNg2', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('13', 'Luna Wolff', 'kfadel@towne.biz', null, '$2y$10$ykfpvGW4qnT1shdC6GbkNeWqpUcSdcYRXTAMPF1bz.ykhvQhVTjoy', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('14', 'Bridie Yundt', 'nya88@swift.org', null, '$2y$10$MIcTzA66WjGd3AVgXubFAeR0E29vligxUP6anpBMgMYrF1mU51lSO', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('15', 'Jany Feest', 'pdach@yahoo.com', null, '$2y$10$hfUYcHeHYoWM7/6EJe.N8OMfv2WdOJDunulVtRSgNr176SF8lvql2', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('16', 'Dasia Moore', 'nolan.vincenza@dickens.com', null, '$2y$10$p4ESIoDjbyFIQWwwoydcq.p1k1cUj03ufdWD0AVU6YF1wLbEg7Av6', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('17', 'Maurice Wiza', 'lblanda@gmail.com', null, '$2y$10$XpOIytweG4bbZWcQCsuJHuL1zT6dfk2YKKBKIcMgSSDmLuwpb1R36', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('18', 'Meagan Harber', 'nicolas.rowena@hotmail.com', null, '$2y$10$kxTNSVGTYmV9gIcG8DkwMuFvWU9YuJPvyUf6/0KVgni8tvIuBJkhC', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('19', 'Katlyn Herzog', 'holden.morissette@collins.info', null, '$2y$10$YK7X/ZT6mJFnr1vQOqleIumKZh30EtOh/tIwr6l0/M7lteWWCKIJa', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('20', 'Aisha Weissnat', 'brendon57@bashirian.com', null, '$2y$10$Lvibk8C9h.gQ2c1DCU/.j.jKBHMe6kXs0vGzX17i91ebF.b6J7Kyy', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('21', 'Evangeline Goodwin', 'jovanny94@ebert.net', null, '$2y$10$5ACoHKdF0vqxpHeRdEfqgeHrR/4rc8x.e4CsH2i1TBVv5pODCajg2', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('22', 'Carli McClure', 'franco77@yahoo.com', null, '$2y$10$yPul2Pk/HEwnSa5lsRsEpuMIxPG7bt0DgLQ5f6Hk/pO8Z7bRf7xVK', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('23', 'Conrad Tromp', 'tlind@powlowski.com', null, '$2y$10$.J1jFHaW0V8GvUxTRDRcEuAwG1fSwSRYKvMaWVzQ2v4A8LsWkVpJS', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('24', 'Aditya Boehm', 'jsipes@hotmail.com', null, '$2y$10$9FnhoR08UVTc43.WPV/ZP.FHUbcaEfjA28DGKQ58IhEP.SV2K78LW', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('25', 'Hertha Bailey', 'jessika.christiansen@yahoo.com', null, '$2y$10$pjyV0bLpEVIGPisWxjnCwu8t6IZbhv2/BrmBBu7COZkQNWbKZufkW', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('26', 'Paxton Wintheiser', 'faye.shanahan@gmail.com', null, '$2y$10$.XZzAz/uxEusoezUqI95Ye0yIXE.fpiK5cZxbjp2snL//HBhOJIP.', '1', null, '2020-10-17 03:56:44', null);
INSERT INTO `users` VALUES ('27', 'Chaya Anderson', 'satterfield.enid@hotmail.com', null, '$2y$10$4IKk2TlbBmUgx//mQ/KH4u.xJTfW9mcdcr9fbRFyTy9ur/cQsKLWO', '1', null, '2020-10-17 03:56:45', null);
INSERT INTO `users` VALUES ('28', 'Quinton Mills', 'axel00@gmail.com', null, '$2y$10$P9/sxt6czk1zxlttbHhhw.Nup9IllzjRcT9BRxKW6jdGtx1CHhS6q', '1', null, '2020-10-17 03:56:45', null);
INSERT INTO `users` VALUES ('29', 'Nat O\'Keefe', 'cordell.franecki@hotmail.com', null, '$2y$10$AD7y2OIpqWR6e23WQvYyBeJheL3lZgmJtCpWV.aX6RJraVhI1fa4C', '1', null, '2020-10-17 03:56:45', null);
INSERT INTO `users` VALUES ('30', 'Jules Towne', 'orin26@dooley.org', null, '$2y$10$Okag55PwtitXrd4SlF0m5unu/k2WDXGRn6Wz0yeEHSUJZ1gZ.IiPy', '1', null, '2020-10-17 03:56:45', null);
