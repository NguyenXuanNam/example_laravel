/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100510
 Source Host           : localhost:3306
 Source Schema         : app

 Target Server Type    : MySQL
 Target Server Version : 100510
 File Encoding         : 65001

 Date: 05/01/2022 09:46:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2022_01_03_102737_create_product_info_table', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for product_info
-- ----------------------------
DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `purchased_at` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_info_customer_phone_index`(`customer_phone`) USING BTREE,
  INDEX `product_info_customer_email_index`(`customer_email`) USING BTREE,
  INDEX `product_info_product_name_index`(`product_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_info
-- ----------------------------
INSERT INTO `product_info` VALUES (1, 'HK5m6BJrIC', '+1-386-363-0725', 'o8IlA4Wbtd@gmail.com', 'FLN5g8l9hggTbjdVqgtn', '7uTrja6dkstogcEwxdVP', '4', '2022-01-04 15:04:44', '2022-01-04 15:29:44', NULL, NULL);
INSERT INTO `product_info` VALUES (2, 'SDBfJa5URS', '+1-564-968-1767', 'viCParX3EH@gmail.com', '4JqKpqDwx2SOHCwU9ISm', 'j0vxYNrsnbDgtogbXJUv', '2', '2022-01-04 15:17:06', '2022-01-04 15:38:06', NULL, NULL);
INSERT INTO `product_info` VALUES (3, 'qc2Tn2896W', '1-417-457-3931', 'ugnZuIqWiZ@gmail.com', 'vMFgfsTe47N09kJuoPdn', 'NfFUHNHKBEAcdv9XhrKz', '2', '2022-01-04 14:48:06', '2022-01-04 15:05:06', NULL, NULL);
INSERT INTO `product_info` VALUES (4, 'rrLgAiuDT8', '1-661-938-2401', 'VJkWa5dAxU@gmail.com', 'R8MWlWRmax1oNX0efTFk', 'VjWt6cFyMyQfwBVKJM02', '0', '2022-01-04 15:29:06', '2022-01-04 15:30:06', NULL, NULL);
INSERT INTO `product_info` VALUES (5, 'coWaVwwf3e', '401.749.0120', 'KPUxP4SWOl@gmail.com', 'DRpjxmWQw7H6LiWbDPQ3', 'GbStxCMknpOZhktp1QBA', '1', '2022-01-04 15:07:06', '2022-01-04 14:56:06', NULL, NULL);
INSERT INTO `product_info` VALUES (6, 'EIw98HSScD', '+1.212.357.4460', 'uhfLwO8cN9@gmail.com', 'Wpc1BNV1d6oHjJXCfWPj', 'fe5fjuj4JSN6pU6GLFca', '9', '2022-01-04 15:01:06', '2022-01-04 15:01:06', NULL, NULL);
INSERT INTO `product_info` VALUES (7, 'ayKbRCQkEf', '+1.231.925.5386', 'ffRvOO8b6B@gmail.com', 'jduiH3dRtb2NZXNsCKfN', '6H9isBbdreM3vY7FX5hW', '6', '2022-01-04 15:37:06', '2022-01-04 15:29:06', NULL, NULL);
INSERT INTO `product_info` VALUES (8, 'ocJuSK9lAr', '+1.478.456.1115', 'l4zzyfzhju@gmail.com', 'OvsQfVGFLwgz6SjkjYzr', 'kn1SdSy0Ko8up4AiqBW5', '9', '2022-01-04 14:55:06', '2022-01-04 15:13:06', NULL, NULL);
INSERT INTO `product_info` VALUES (9, 'nHvVbSdeiM', '+16084262011', '23A036p2g2@gmail.com', 'DQBxEbAs3EumvIGszjgV', 'WKhuHiWTpuiAwNw8zOYI', '0', '2022-01-04 14:46:06', '2022-01-04 14:50:06', NULL, NULL);
INSERT INTO `product_info` VALUES (10, 'ECEC3m7d7b', '951.515.6057', '5kFBf4TKDu@gmail.com', '8YiPgJ86f4pULNFE1pP1', 'wgBm1RIEl9Vf9c11F34v', '3', '2022-01-04 15:37:06', '2022-01-04 15:00:06', NULL, NULL);
INSERT INTO `product_info` VALUES (11, 'Lto5c6XQ8U', '+1-907-919-3485', 'Fkcpg0ukPx@gmail.com', '7SlkZqrzeQC0ddnqFxMd', 'QYXPoAhBoFyZwwKTcnJd', '2', '2022-01-04 15:13:06', '2022-01-04 15:37:06', NULL, NULL);
INSERT INTO `product_info` VALUES (12, 'l4YtZAMqUI', '1-351-832-3048', 'bz1Tuma3I8@gmail.com', 'qomNi0d30aduYRRIpsYk', 'gFSiceYxqifET2IxTahF', '0', '2022-01-04 15:04:06', '2022-01-04 14:44:06', NULL, NULL);
INSERT INTO `product_info` VALUES (13, 'JrurZfoxTz', '863.627.7360', 'GOD4QOMC1m@gmail.com', 'VNeSx7yw9UHdgNkbUp67', '03psUs9Yhaf2ZuNZJP0W', '4', '2022-01-04 15:03:06', '2022-01-04 15:13:06', NULL, NULL);
INSERT INTO `product_info` VALUES (14, 'Lwdj2smRDv', '+1.614.245.8074', 'i9W8iPPgzl@gmail.com', 'Zlg0qEdA2gWYhRLXGGRL', '7gTSW0IGzNc9j4nIhFkT', '1', '2022-01-04 15:24:06', '2022-01-04 14:50:06', NULL, NULL);
INSERT INTO `product_info` VALUES (15, 'CSHlrpD9mM', '1-812-718-7433', '2UpTMf8Ua7@gmail.com', 'xqbe8WKkt4JKPmEp89Jz', 'ozHiLJRMveJeJwOt5btu', '7', '2022-01-04 14:54:06', '2022-01-04 15:15:06', NULL, NULL);
INSERT INTO `product_info` VALUES (16, 'qe1gPDvEdH', '(541) 592-0568', 'QNKBAnt9PL@gmail.com', 'QjpuUFewS5pdzHD4CXjO', 'tLNdI25KfWtzSMox9Cro', '4', '2022-01-04 15:36:06', '2022-01-04 15:16:06', NULL, NULL);
INSERT INTO `product_info` VALUES (17, 'CE8DcKX8Vt', '+1-364-791-8200', 'huRWhWDctO@gmail.com', 'ITPwibhAp26cNeD7xTEd', 'ExuQ2uQljB1Nuz1Xb9JG', '6', '2022-01-04 15:27:06', '2022-01-04 14:55:06', NULL, NULL);
INSERT INTO `product_info` VALUES (18, 'zLOy7BP64o', '(908) 548-8897', 'MW8Ur3du7B@gmail.com', 'b7NW0EZxSOmN3Ri26J5A', 'NSElZpeQEWOkEipbkri1', '4', '2022-01-04 15:23:06', '2022-01-04 15:34:06', NULL, NULL);
INSERT INTO `product_info` VALUES (19, 'e3PgMtFwMe', '934.798.7174', '6t2dcWUCQG@gmail.com', 'ojwSbMm186ltrxmNcBF1', '9F8JURH5h998VGs0mWrZ', '6', '2022-01-04 15:32:06', '2022-01-04 14:58:06', NULL, NULL);
INSERT INTO `product_info` VALUES (20, '1FnnKMOOXG', '+1-925-491-6361', 'f6TRTfYQjt@gmail.com', 'few7tk9EIaPuayFwcqGO', 'cp3rrjtwFycYV3KEHUNx', '7', '2022-01-04 15:25:06', '2022-01-04 14:47:06', NULL, NULL);
INSERT INTO `product_info` VALUES (21, '64rLJMiRnN', '+1 (267) 988-4475', 'mbGUqrOfxC@gmail.com', 'FnuO8KgWTEAXsMNCrPIt', 'E9coMgMw4Gti61RrhMhA', '5', '2022-01-04 15:32:06', '2022-01-04 15:24:06', NULL, NULL);
INSERT INTO `product_info` VALUES (22, 'uZo29xf3c6', '+1 (630) 296-3236', 'tZ9rQjshcW@gmail.com', 'yhbBobeV9eNo88Gjwrx7', 'IVfjzo87ip0OMgj0xWmz', '3', '2022-01-04 14:57:06', '2022-01-04 15:19:06', NULL, NULL);
INSERT INTO `product_info` VALUES (23, 'W2JFQrlQ2h', '949.789.0916', 't6ZDWrABYX@gmail.com', 'gvY8tfvnSCBRAvy48X8e', 'CDlP6RoJsFxZkqADlY9G', '2', '2022-01-04 14:47:06', '2022-01-04 14:57:06', NULL, NULL);
INSERT INTO `product_info` VALUES (24, 'OHManXWncF', '1-323-395-1772', 'lZl1kmElRC@gmail.com', 'VfGN0JI4XqJFjHDrSBVz', 'NepoKbpsOakqZeSBfh1E', '8', '2022-01-04 15:12:06', '2022-01-04 15:19:06', NULL, NULL);
INSERT INTO `product_info` VALUES (25, 'VSHrGg2C6P', '+1-385-545-7053', 'R1nIUVQoca@gmail.com', 'weLjetuY1kC3sAoDY2rL', 'u7mJmYfNUrQopoSacwvW', '4', '2022-01-04 15:23:06', '2022-01-04 14:45:06', NULL, NULL);
INSERT INTO `product_info` VALUES (26, 'El4NLzL42f', '+1-341-402-8295', 'D9NcjWnvQK@gmail.com', 'O1vx2pUv93dtJQUGJZoh', 'MN2y5ccHdinemRQuy3j5', '9', '2022-01-04 15:22:06', '2022-01-04 15:13:06', NULL, NULL);
INSERT INTO `product_info` VALUES (27, 'UeQo9BhIm9', '+1-657-299-4043', 'PD4M2v1Jh1@gmail.com', '1JvC5HmayI8qOzjoahNM', 'zxr5r8pDqBT90wzP49dZ', '3', '2022-01-04 15:13:06', '2022-01-04 14:57:06', NULL, NULL);
INSERT INTO `product_info` VALUES (28, 'mASceLC6i7', '269-204-2100', 'c1oeiCN6ur@gmail.com', 'kSjqmS1Q9Xo5AJPtFOfo', 'lB8aiZeqa0frnDSHc0Tz', '5', '2022-01-04 15:26:06', '2022-01-04 15:17:06', NULL, NULL);
INSERT INTO `product_info` VALUES (29, 'spmEJc6GY1', '+1 (347) 918-9277', 'xzwa65v8HJ@gmail.com', 'JiUszrPHGKKHJpMqpTwl', 'vKgMTWP6Vo59G4KFBxlg', '2', '2022-01-04 15:01:06', '2022-01-04 15:34:06', NULL, NULL);
INSERT INTO `product_info` VALUES (30, 'PYdLfbIN86', '828-971-1211', 'Gr3sEQzwiN@gmail.com', 'gXxcvgidCKnPNQzXkkov', 'Yku3Ai8AqF4jP61Qm5cA', '6', '2022-01-04 15:04:06', '2022-01-04 15:36:06', NULL, NULL);
INSERT INTO `product_info` VALUES (31, '8f0ydktQlt', '+1.802.526.4887', 'AFOqrErPhe@gmail.com', '7QyWKl6k5kKFUnxKiYbG', 'axVOoTfBtjYlPji2nYox', '9', '2022-01-04 15:21:06', '2022-01-04 15:33:06', NULL, NULL);
INSERT INTO `product_info` VALUES (32, 'Kq23VFJR9Q', '726.830.0343', '3hyk2kJcOW@gmail.com', '7lxEDB2DPa2LPMn8ZFZV', 'kKPR6oyEVHRnOzBK1Wm8', '5', '2022-01-04 15:36:06', '2022-01-04 14:48:06', NULL, NULL);
INSERT INTO `product_info` VALUES (33, 'Ub9JW64a6F', '+1.863.456.9245', 'j7u0KHNdzQ@gmail.com', '7ZhKPKRYKbQWKCm4l875', 'osGSEVMwfeS7csVg5WsF', '6', '2022-01-04 14:52:06', '2022-01-04 15:25:06', NULL, NULL);
INSERT INTO `product_info` VALUES (34, 'sWNX8mte4u', '+1.838.870.6783', 'RjQwJSa8vu@gmail.com', 'Zl9eVFJ2IXheBFku8gEn', 'tXzBNdPX1af9mTxFERSO', '0', '2022-01-04 15:38:06', '2022-01-04 15:18:06', NULL, NULL);
INSERT INTO `product_info` VALUES (35, 'V2yug7xK7w', '651-477-7426', 'XN3ZFbzoBU@gmail.com', 'tX9f4nhWtS5HBLHesYLX', '5a8crMTyTpo0I5Lj298q', '2', '2022-01-04 15:36:06', '2022-01-04 15:17:06', NULL, NULL);
INSERT INTO `product_info` VALUES (36, '9aOZD4vm1C', '+1-248-327-6766', '9Gg0FwyGjg@gmail.com', '4pzSsuJDrjS704bLHZR9', 'bZ7qQmjaSrFpPlxfaYop', '4', '2022-01-04 14:46:06', '2022-01-04 15:22:06', NULL, NULL);
INSERT INTO `product_info` VALUES (37, 'iaCQi0xrAW', '+1-917-538-0307', '7YMI0uvT8t@gmail.com', 'towiVdW5gFcKkSNUffla', 'Gsp2b8qfN1F6tomt0by8', '0', '2022-01-04 15:31:06', '2022-01-04 15:37:06', NULL, NULL);
INSERT INTO `product_info` VALUES (38, 'AmwBnfiYbc', '+1-347-941-0960', 'rEJ5xqQDTF@gmail.com', '5yaeaam0PnLxAZG6NoIN', 'WHetgJfgKqtDYmxh5w4r', '8', '2022-01-04 15:06:06', '2022-01-04 15:04:06', NULL, NULL);
INSERT INTO `product_info` VALUES (39, 'yH22wlt8Em', '+1.503.712.6844', 'VqHbclJI9t@gmail.com', 'lm7cRTFtjMYNIu4eDBUw', 'OJ6cGh87krUht2jcRpoP', '3', '2022-01-04 15:36:06', '2022-01-04 15:18:06', NULL, NULL);
INSERT INTO `product_info` VALUES (40, 'x8EMvMXqms', '(279) 900-1143', 't6b8fgQ18x@gmail.com', 'mmwLx2qXuO6EQoHglLrX', 'OTzVcjefCw0oVuzOH5ir', '2', '2022-01-04 14:44:06', '2022-01-04 15:08:06', NULL, NULL);
INSERT INTO `product_info` VALUES (41, 'WasniOx6Ir', '(804) 452-5687', 'cmvYZzltdi@gmail.com', 'AxXqfZK2IgYyfbhC3fQx', 'gsKD6F0B6g8XaAmReEx5', '5', '2022-01-04 15:15:06', '2022-01-04 14:52:06', NULL, NULL);
INSERT INTO `product_info` VALUES (42, 'ehRFprr1nK', '1-937-466-8399', 'AqvvYE6Oc6@gmail.com', 'gs8V2htCexJrUiR9WskL', 'peZbPiRxCE300XH5jprH', '0', '2022-01-04 14:53:06', '2022-01-04 15:15:06', NULL, NULL);
INSERT INTO `product_info` VALUES (43, 'lwgr6hvWVT', '573.570.8644', 'nsKZHuc9NC@gmail.com', 'cim4lsgRggFvhT0DDtLQ', '1GS1l3WkxZLS5WSj8k3d', '7', '2022-01-04 14:57:06', '2022-01-04 15:08:06', NULL, NULL);
INSERT INTO `product_info` VALUES (44, 'b7J8hIjfgv', '(239) 794-6962', 'InBAyeKGOX@gmail.com', 'z5AF589C5PXHe6pO0WKN', '0ciJheUFXkE7wy0OzPqM', '0', '2022-01-04 15:36:06', '2022-01-04 15:31:06', NULL, NULL);
INSERT INTO `product_info` VALUES (45, 'ObbU9LwvkS', '+1 (980) 488-0007', 'zjFwgiZ9AV@gmail.com', '9ENncXUuI00WkWL7cv9q', 'B4DnthMtVE9HpsZ654lP', '5', '2022-01-04 15:05:06', '2022-01-04 15:19:06', NULL, NULL);
INSERT INTO `product_info` VALUES (46, '5tESHOHkfk', '360-231-1199', '9SZcBaIj9U@gmail.com', 'dRPCFI8jiKGDgFGzAhQ9', 'hV3zveBDpnc7snBb4i1d', '1', '2022-01-04 15:21:06', '2022-01-04 15:38:06', NULL, NULL);
INSERT INTO `product_info` VALUES (47, 'KvlOuaskFM', '704-734-8600', 'xWBkoGVY3O@gmail.com', '0SoaOAcv0ZUFlndyQUpq', 'ycd3TiFTtMu2xrid77bK', '7', '2022-01-04 14:49:06', '2022-01-04 15:11:06', NULL, NULL);
INSERT INTO `product_info` VALUES (48, 'IFC9Ai4PFm', '(559) 740-8713', 'FN0xFSD9VF@gmail.com', 'BveZch63Vm65rpVzlOla', 'LZxW5u4MhuetYOf38wUE', '3', '2022-01-04 15:38:06', '2022-01-04 15:18:06', NULL, NULL);
INSERT INTO `product_info` VALUES (49, 'g0zueWETOe', '+1.678.903.2204', '3qg0sFsVZ6@gmail.com', 'ZLWMUX842up5czEnh76f', 'qHnz1AcGXine0eVofBGC', '9', '2022-01-04 15:20:06', '2022-01-04 15:10:06', NULL, NULL);
INSERT INTO `product_info` VALUES (50, '17jPdRavgL', '+1 (443) 474-6761', 'DNPfHGrmN0@gmail.com', 'aNlXJUoV6EzKAT2Uo9Er', 'qPZsT85tCVGfgwfxaIn2', '0', '2022-01-04 14:47:06', '2022-01-04 15:38:06', NULL, NULL);
INSERT INTO `product_info` VALUES (51, 'vnRLSguXsy', '+1-986-314-8456', 'r3kCci05Uk@gmail.com', '9oHAXXzEUZF54pSEHQ5D', '7CDV50r5vamJiPMburVp', '9', '2022-01-04 14:45:06', '2022-01-04 15:18:06', NULL, NULL);
INSERT INTO `product_info` VALUES (52, '2NsExwDr19', '+1.928.935.7418', 'ehhbmoBmas@gmail.com', 'VveaHe9MtQWOvcyohhOc', 'jFxkcIlMaDDL4qRYNvDH', '5', '2022-01-04 15:16:06', '2022-01-04 14:55:06', NULL, NULL);
INSERT INTO `product_info` VALUES (53, '52oKJt5JjO', '414.479.3610', 'Gdp0qkewxC@gmail.com', 'HHUrrXm52lhgAB1TT5B6', 'sjHLpOrmWljnJfYeXYGC', '1', '2022-01-04 15:22:06', '2022-01-04 15:05:06', NULL, NULL);
INSERT INTO `product_info` VALUES (54, 'HUHGP59YSN', '(270) 532-8451', 'Yvd62el9fy@gmail.com', 'TSEffw132qfSuSQ5CMZd', 'pfBWxFQwTczVGIUWPxQ7', '6', '2022-01-04 15:04:06', '2022-01-04 14:48:06', NULL, NULL);
INSERT INTO `product_info` VALUES (55, 'tgunQfQeYU', '501.251.6391', '1XSRXkb7Mz@gmail.com', 'UNSzqTnMgP3uBhpITqnt', '7b48EGYOWX8NmqqnltM7', '0', '2022-01-04 15:24:06', '2022-01-04 15:36:06', NULL, NULL);
INSERT INTO `product_info` VALUES (56, 'gVdKB3Ktit', '1-406-275-8138', 's5RvDOFvLA@gmail.com', 'f8sr8OJSuZM6yQLktIDB', 'U0Ar10Z9uWS4mAXuCedu', '8', '2022-01-04 15:18:06', '2022-01-04 15:23:06', NULL, NULL);
INSERT INTO `product_info` VALUES (57, 'xEkC5p5ChI', '1-425-227-1841', 'aPGdNohQNM@gmail.com', 'IzVmMEotaBoGjRGJtg0g', 'u6ikNoFtHjudFReqC8Fv', '5', '2022-01-04 15:22:06', '2022-01-04 14:49:06', NULL, NULL);
INSERT INTO `product_info` VALUES (58, 'J8iCtXO0x6', '681-753-8906', 'MlJTQfhSxY@gmail.com', 'kJH2zgzZqbBiuJjS6nOw', '4qbAuNQzXrSOjyn4I2EL', '9', '2022-01-04 15:17:06', '2022-01-04 15:22:06', NULL, NULL);
INSERT INTO `product_info` VALUES (59, 'QGwhMA059Q', '(781) 552-5523', 'UyWQiBrN4k@gmail.com', 'uhZu5SRLLCUrGxuHuyUb', 'wI3sTh5QRPtwWm5AdSI8', '3', '2022-01-04 15:10:06', '2022-01-04 15:35:06', NULL, NULL);
INSERT INTO `product_info` VALUES (60, 'qJeAsp21LO', '+1-930-408-9998', 'kn8ev3pLwC@gmail.com', 'Y6z7nN0vZGMJKgFL6jFq', 'Ls365FKWDDghuXoaPCU1', '5', '2022-01-04 15:08:06', '2022-01-04 15:12:06', NULL, NULL);
INSERT INTO `product_info` VALUES (61, '0HsbERSotf', '484-620-2014', '75AHalXyXK@gmail.com', 'r51iFZOTonKUVjpFXUWc', '5gB3HkWHFQXh8DvkFXKJ', '6', '2022-01-04 14:56:06', '2022-01-04 14:56:06', NULL, NULL);
INSERT INTO `product_info` VALUES (62, 'qr3m0NFhHK', '+1-941-857-9924', 'XNDC9p3JlI@gmail.com', '8mdHwqbx0LiiH1YfAxcs', 'J65E7fHZCHDtBtwR1vYO', '5', '2022-01-04 14:48:06', '2022-01-04 15:26:06', NULL, NULL);
INSERT INTO `product_info` VALUES (63, 'rjWNRx3ORb', '1-762-797-0934', '5X8cEFS3Pi@gmail.com', 'DAzbZd4Ma3Fd7dYKKIHq', 'bNaq8BLQhyqOh0A9AfH3', '2', '2022-01-04 15:28:06', '2022-01-04 15:34:06', NULL, NULL);
INSERT INTO `product_info` VALUES (64, 'rSUtz2RSXk', '+1-779-335-0545', 'sREcA24GRO@gmail.com', 'KVaFxh8j0RKZ4M0jhvDk', 'MqreRIx5tdUkRuXoJFO6', '6', '2022-01-04 15:02:06', '2022-01-04 15:12:06', NULL, NULL);
INSERT INTO `product_info` VALUES (65, '2SYPEiJOir', '+14304319617', 'SEiZOlEpSS@gmail.com', '2nYOqprSV0K5Ebi7fdzB', 'UWzCGR8sREVg7vnzE35M', '3', '2022-01-04 15:05:06', '2022-01-04 15:03:06', NULL, NULL);
INSERT INTO `product_info` VALUES (66, '5vFzaiRXKl', '1-475-919-0350', 'atHkIrtkXp@gmail.com', 'LWkxHrAMCG6jqvrTiRDL', 'yFmglLVx9exNViJwUkah', '1', '2022-01-04 15:34:06', '2022-01-04 15:13:06', NULL, NULL);
INSERT INTO `product_info` VALUES (67, 'hrAuUZebuQ', '+13474705903', '1MqrK05J1Y@gmail.com', 'KNq8CCX7JHqbbq52sJLF', 'gMUaCbiMj4MIKAwzzUR9', '6', '2022-01-04 15:25:06', '2022-01-04 15:10:06', NULL, NULL);
INSERT INTO `product_info` VALUES (68, 'Lhg6aEXo9J', '812.755.0763', 'FUYZifUJP8@gmail.com', 'eB5Y9OKniOxEc2HiZkBQ', 'wKxPtw7NV6RXZvLKfb6L', '2', '2022-01-04 15:27:06', '2022-01-04 14:47:06', NULL, NULL);
INSERT INTO `product_info` VALUES (69, '3t82yQ1M9e', '+1.952.900.7041', 'Xy3klchJLX@gmail.com', 'sgg4EUUAoJ3OEteAYy4r', 'sZkBhB0dXSmDhEO8wugb', '2', '2022-01-04 14:50:06', '2022-01-04 15:07:06', NULL, NULL);
INSERT INTO `product_info` VALUES (70, '5w1dosGAxS', '(484) 819-1532', '0Hdc0P2xmU@gmail.com', 'zmU4IDn7AFCA0EBoiwOJ', '7VXxj9wL9vllrmQdYOkR', '1', '2022-01-04 14:54:06', '2022-01-04 14:45:06', NULL, NULL);
INSERT INTO `product_info` VALUES (71, '3cwPZiDGFF', '+18163555708', 'WPW06qavHX@gmail.com', 'Fl5fpGGRlvY3K1gx1aUs', 'sj8G29Vi9ywcRbeLUHtR', '0', '2022-01-04 15:28:06', '2022-01-04 15:17:06', NULL, NULL);
INSERT INTO `product_info` VALUES (72, '1Cd0O04stb', '(361) 406-7852', 'YejSYVZ8bN@gmail.com', 'KFU8vBApKT4lA63SrYwT', '9YR90vLAsnVPLF2kfned', '6', '2022-01-04 14:45:06', '2022-01-04 15:04:06', NULL, NULL);
INSERT INTO `product_info` VALUES (73, 'ZU0b3mzlIR', '775-655-2091', 'vnXgr0fDHe@gmail.com', 'l0KImwgYjO7JUQY8A6pP', 'TdyYINMXG2IYuMLJguqu', '8', '2022-01-04 14:49:06', '2022-01-04 15:26:06', NULL, NULL);
INSERT INTO `product_info` VALUES (74, 'R2X8H30mtZ', '1-930-701-5125', 'qYxOW8FHBg@gmail.com', '2UCVmFQh1SiW6aLAlPYb', 'AOQCkZ6UGXw6xfD8XZ6Y', '0', '2022-01-04 15:25:06', '2022-01-04 15:13:06', NULL, NULL);
INSERT INTO `product_info` VALUES (75, 'l0GPgIZGnz', '469.230.0600', '3FndQ9bMl2@gmail.com', 'EH7SyLsRUEKMtDH6wUF4', 'fjEwRwEdiYHy95JkfCrL', '5', '2022-01-04 15:14:06', '2022-01-04 14:50:06', NULL, NULL);
INSERT INTO `product_info` VALUES (76, 'zXHXVwzT7k', '+1 (856) 757-4524', 'uhxE7tkAUG@gmail.com', '686jGIFWk7b55zN6GHWd', 'PtjpiMZCxGdgB1H1rOO1', '4', '2022-01-04 15:08:06', '2022-01-04 14:53:06', NULL, NULL);
INSERT INTO `product_info` VALUES (77, 'OpNzbkLuWy', '+16023261126', 'PBKbLIrdwG@gmail.com', '8tRqrhJKrSbc53MlRIgZ', 'jsuZx1NIBCBzbDrKMezX', '9', '2022-01-04 15:06:06', '2022-01-04 15:33:06', NULL, NULL);
INSERT INTO `product_info` VALUES (78, 'rU8nb9KqWT', '(820) 471-7335', 'e3fvnRUtRg@gmail.com', '9I1EiNVU0eTYdjM5bcut', 'D1HT4wD5lyHACFqFnF36', '7', '2022-01-04 15:05:06', '2022-01-04 15:33:06', NULL, NULL);
INSERT INTO `product_info` VALUES (79, 'D1Eg33vi5p', '920-555-9665', 'xz0RQyNUHJ@gmail.com', 'FI2F0waHsbb38OjU3Gqk', 'P8c2NZPxtXegsDxrFhNU', '3', '2022-01-04 14:53:06', '2022-01-04 15:05:06', NULL, NULL);
INSERT INTO `product_info` VALUES (80, 'ZLyCLh58jY', '(732) 844-2547', 'vw2iOJBze7@gmail.com', 'UO0utLxaUIDPyXsgq7Hn', '3YGBqNldhWn2hv2lby6x', '7', '2022-01-04 15:12:06', '2022-01-04 14:52:06', NULL, NULL);
INSERT INTO `product_info` VALUES (81, '8NqbSjSawN', '(234) 880-4130', 'qWEjOOg2Rk@gmail.com', 'GEJ8H7Nt2aokFErILxim', 'Ir8glyY027PwQStdbYDH', '1', '2022-01-04 14:44:06', '2022-01-04 15:20:06', NULL, NULL);
INSERT INTO `product_info` VALUES (82, 'Gp0Hxkqnqp', '+1-386-799-7622', 'eCN4B6d9VD@gmail.com', '946QtjLoZt6iwibCdMUw', 'ZsIDqMUAIJIANAEr0c1p', '0', '2022-01-04 14:47:06', '2022-01-04 14:54:06', NULL, NULL);
INSERT INTO `product_info` VALUES (83, 'HLdrbVslAP', '430-492-4465', 'GOGZINpTFT@gmail.com', '9M0HzjVBKhml7KeHSGE6', 'jaUtCYQ13Ckm2tTZHSTI', '3', '2022-01-04 15:14:06', '2022-01-04 14:57:06', NULL, NULL);
INSERT INTO `product_info` VALUES (84, 'dwJsQx53tV', '1-941-784-6748', 'Iyulbj5HyG@gmail.com', '2EuijZ0PPTvAEcnES5l5', 'H2aBotkcnhFoEsDuiWUA', '6', '2022-01-04 15:02:06', '2022-01-04 15:26:06', NULL, NULL);
INSERT INTO `product_info` VALUES (85, '5EZ8qYYNKK', '+1-732-641-7354', 'JOPBiwKVMT@gmail.com', '1SE9NCmABuwByrgGjM7O', 'cOgwVT9hxEUpkR56bOeq', '8', '2022-01-04 14:48:06', '2022-01-04 14:58:06', NULL, NULL);
INSERT INTO `product_info` VALUES (86, 'pqd0exdLTc', '1-351-312-5240', 'CcvKVsLDmw@gmail.com', 's6HhdBYB1WTcdEekv2Qm', '0mREFtGiUEzICsGfLJd9', '1', '2022-01-04 15:21:06', '2022-01-04 15:22:06', NULL, NULL);
INSERT INTO `product_info` VALUES (87, '8vNvqBvqBN', '636-688-8211', 'FBtg804ARC@gmail.com', 'yENlbePc0mcZ9XzGggvh', 'vgSj4J6GI4pDKzMs1nB7', '2', '2022-01-04 15:17:06', '2022-01-04 15:37:06', NULL, NULL);
INSERT INTO `product_info` VALUES (88, 'Jo3P4wRYag', '630.949.0002', 'UfclKtY0sc@gmail.com', 'Bt2i4VkvdGpvGTB2Schq', '4oPHFPapYcX9SxnK2ys5', '4', '2022-01-04 15:35:06', '2022-01-04 15:32:06', NULL, NULL);
INSERT INTO `product_info` VALUES (89, 'HZnJy5cggg', '+14582320743', 'rUsoScUmJv@gmail.com', '1ZetTqP3dP0IzchGQkzi', 'aHVjZB0iL85idetxq0vR', '3', '2022-01-04 15:11:06', '2022-01-04 14:53:06', NULL, NULL);
INSERT INTO `product_info` VALUES (90, 'elzx9rECtG', '531-948-0347', 'eLz5iLi4s9@gmail.com', 'GhfWHmDLqZ6YXMANUoa8', 'MgntolTnBmRFA0SAtq7Y', '3', '2022-01-04 15:06:06', '2022-01-04 15:07:06', NULL, NULL);
INSERT INTO `product_info` VALUES (91, '1ZJXky649c', '+1-804-745-4085', 'fn3Vp6O4Sw@gmail.com', 'HMGmiVQOsQlmDOwUrQri', 'stN6KQ11ok7bxsv9TROp', '3', '2022-01-04 14:44:06', '2022-01-04 15:23:06', NULL, NULL);
INSERT INTO `product_info` VALUES (92, 'JsAil1UmZq', '+1.818.638.5390', 'Z40lvfBeqp@gmail.com', 'erhFz1GpIWTOajq72SOH', 'Oqp1geZtz8Cex48Jfza6', '1', '2022-01-04 14:58:06', '2022-01-04 14:55:06', NULL, NULL);
INSERT INTO `product_info` VALUES (93, '0uNJADFjTR', '+1-346-497-1485', 'ddcD5Dp3Lm@gmail.com', '81yMQKx3bAE3J6yHk3Go', 's5XKct0yIsDEyhD6SGi6', '6', '2022-01-04 15:24:06', '2022-01-04 15:26:06', NULL, NULL);
INSERT INTO `product_info` VALUES (94, 'lMy0wsuo2Z', '(520) 985-7025', '66N3zUvmXt@gmail.com', 'X2OF3iVZ23VwGNqy9u5t', 'IjNj3iCXYiS2VTcf8uuA', '8', '2022-01-04 14:51:06', '2022-01-04 14:45:06', NULL, NULL);
INSERT INTO `product_info` VALUES (95, 'X5H5m57oKm', '+1.267.656.4297', 'DNdLY4Zx6P@gmail.com', 'VjNhxbuxw4GBKOjzNZRu', 'd9mxTcbQ8mAqdkSC1OyL', '2', '2022-01-04 15:29:06', '2022-01-04 14:48:06', NULL, NULL);
INSERT INTO `product_info` VALUES (96, 'vxPDwTPbDb', '(630) 925-8016', 'xkff2Xl5WZ@gmail.com', 'SjzDeclggxBzt2T1uBmI', 'BileoTDVRPYiCQFaVjSI', '8', '2022-01-04 15:37:06', '2022-01-04 14:56:06', NULL, NULL);
INSERT INTO `product_info` VALUES (97, 'UMZwBUMLxC', '786-223-4383', 'mgbdZtFIOE@gmail.com', 'XN9WXlqqXJoiv5QHsBhc', 'hAZSqdRvfiCQmGIkMIw4', '1', '2022-01-04 15:20:06', '2022-01-04 14:57:06', NULL, NULL);
INSERT INTO `product_info` VALUES (98, 'TC4u2UhVXI', '+1-364-671-5094', 'bFEJWIyA39@gmail.com', 'CeTf9KdUH7PQUgsamKvG', 'Xo5HqEyEtIzJpstez95h', '0', '2022-01-04 15:29:06', '2022-01-04 15:20:06', NULL, NULL);
INSERT INTO `product_info` VALUES (99, 'uxDfgrr2Tr', '769.442.7789', 'Crt7wd0Dte@gmail.com', '7Un0XdYXlytdGG2AN83v', 'it9a1oAdJoht746q2IaI', '1', '2022-01-04 14:56:06', '2022-01-04 15:32:06', NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
