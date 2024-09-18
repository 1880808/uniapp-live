-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2020-10-19 12:59:19
-- 服务器版本： 5.7.27
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egg-live3`
--

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(20) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `live_id` int(11) NOT NULL DEFAULT '0' COMMENT '直播间id',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `content`, `live_id`, `user_id`, `created_time`, `updated_time`) VALUES
(1, '第一条评论', 1, 1, '2020-05-08 00:00:00', '2020-09-01 00:00:00'),
(2, '123', 1, 1, '2020-10-10 01:52:03', '2020-10-10 01:52:03'),
(3, '123456', 1, 1, '2020-10-10 01:54:09', '2020-10-10 01:54:09'),
(4, '哈哈哈啦', 1, 1, '2020-10-10 01:54:17', '2020-10-10 01:54:17'),
(5, '啦啦啦啦', 1, 1, '2020-10-10 01:54:23', '2020-10-10 01:54:23'),
(6, '哦哦哦哦哦', 1, 1, '2020-10-10 01:54:32', '2020-10-10 01:54:32'),
(7, '122222', 1, 1, '2020-10-10 01:57:38', '2020-10-10 01:57:38'),
(8, '22222', 1, 1, '2020-10-10 01:57:42', '2020-10-10 01:57:42'),
(9, '333', 1, 1, '2020-10-10 01:57:47', '2020-10-10 01:57:47'),
(10, '4444', 1, 1, '2020-10-10 01:57:52', '2020-10-10 01:57:52'),
(11, '111', 1, 1, '2020-10-18 20:40:43', '2020-10-18 20:40:43');

-- --------------------------------------------------------

--
-- 表的结构 `gift`
--

CREATE TABLE IF NOT EXISTS `gift` (
  `id` int(20) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '礼物名称',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '礼物图标',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '金币',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `gift`
--

INSERT INTO `gift` (`id`, `name`, `image`, `coin`, `created_time`, `updated_time`) VALUES
(1, '鸡蛋', '/public/uploads/2020/09/14/1600085475946.png', 1, '2020-09-14 20:11:20', '2020-09-14 20:11:20');

-- --------------------------------------------------------

--
-- 表的结构 `live`
--

CREATE TABLE IF NOT EXISTS `live` (
  `id` int(20) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '直播间标题',
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '直播间封面',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `look_count` int(11) NOT NULL DEFAULT '0' COMMENT '总观看人数',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '总金币',
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '唯一标识',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '直播间状态 0未开播 1直播中 2暂停直播 3直播结束',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `live`
--

INSERT INTO `live` (`id`, `title`, `cover`, `user_id`, `look_count`, `coin`, `key`, `status`, `created_time`, `updated_time`) VALUES
(1, '哈哈哈', 'https://anchorpost.msstatic.com/cdnimage/anchorpost/1063/37/2508346fbef69d67a94eb302d8e02f_2168_1589276932.jpg', 1, 5, 23, 'sdasdsadas', 1, '2020-09-01 00:00:00', '2020-10-18 21:34:18'),
(3, '第一个直播间', '', 2, 1, 0, 'CeeOuEkOsZ9fKVU7VAbh', 3, '2020-09-21 22:49:01', '2020-10-09 22:51:05'),
(4, '哈哈哈', 'https://anchorpost.msstatic.com/cdnimage/anchorpost/1063/37/2508346fbef69d67a94eb302d8e02f_2168_1589276932.jpg', 1, 5, 10, 'sdasdsadas', 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(5, '哈哈哈', 'https://anchorpost.msstatic.com/cdnimage/anchorpost/1063/37/2508346fbef69d67a94eb302d8e02f_2168_1589276932.jpg', 1, 5, 10, 'sdasdsadas', 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(6, '哈哈哈', 'https://anchorpost.msstatic.com/cdnimage/anchorpost/1063/37/2508346fbef69d67a94eb302d8e02f_2168_1589276932.jpg', 1, 5, 10, 'sdasdsadas', 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(7, '哈哈哈', 'https://anchorpost.msstatic.com/cdnimage/anchorpost/1063/37/2508346fbef69d67a94eb302d8e02f_2168_1589276932.jpg', 1, 5, 10, 'sdasdsadas', 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(8, '哈哈哈', 'https://anchorpost.msstatic.com/cdnimage/anchorpost/1063/37/2508346fbef69d67a94eb302d8e02f_2168_1589276932.jpg', 1, 5, 10, 'sdasdsadas', 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(9, '哈哈哈', 'https://anchorpost.msstatic.com/cdnimage/anchorpost/1063/37/2508346fbef69d67a94eb302d8e02f_2168_1589276932.jpg', 1, 5, 10, 'sdasdsadas', 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(10, '哈哈哈', 'https://anchorpost.msstatic.com/cdnimage/anchorpost/1063/37/2508346fbef69d67a94eb302d8e02f_2168_1589276932.jpg', 1, 5, 10, 'sdasdsadas', 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(11, '哈哈哈', 'https://anchorpost.msstatic.com/cdnimage/anchorpost/1063/37/2508346fbef69d67a94eb302d8e02f_2168_1589276932.jpg', 1, 5, 10, 'sdasdsadas', 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(12, '哈哈哈', 'https://anchorpost.msstatic.com/cdnimage/anchorpost/1063/37/2508346fbef69d67a94eb302d8e02f_2168_1589276932.jpg', 1, 5, 10, 'sdasdsadas', 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(13, '哈哈哈', 'https://anchorpost.msstatic.com/cdnimage/anchorpost/1063/37/2508346fbef69d67a94eb302d8e02f_2168_1589276932.jpg', 1, 5, 10, 'sdasdsadas', 0, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(14, '第一场直播', 'http://192.168.1.2:7001/public/uploads/2020/10/18/1603030785240.jpg', 1, 0, 0, 'HNZXJYp36GlVIKJaPV7M', 0, '2020-10-18 22:20:08', '2020-10-18 22:20:08'),
(15, '第二个直播', 'http://192.168.1.2:7001/public/uploads/2020/10/18/1603031243623.jpg', 1, 0, 0, 'D5rWzV9kjShv4qngBsGN', 0, '2020-10-18 22:27:33', '2020-10-18 22:27:33'),
(16, '第二个直播', 'http://192.168.1.2:7001/public/uploads/2020/10/18/1603031243623.jpg', 1, 0, 0, 'egl10NPFNIVS1DbVEqwF', 0, '2020-10-18 22:38:42', '2020-10-18 22:38:42');

-- --------------------------------------------------------

--
-- 表的结构 `live_gift`
--

CREATE TABLE IF NOT EXISTS `live_gift` (
  `id` int(20) NOT NULL,
  `live_id` int(11) NOT NULL DEFAULT '0' COMMENT '直播间id',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `gift_id` int(11) NOT NULL DEFAULT '0' COMMENT '礼物id',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `live_gift`
--

INSERT INTO `live_gift` (`id`, `live_id`, `user_id`, `gift_id`, `created_time`, `updated_time`) VALUES
(4, 1, 1, 1, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(5, 1, 1, 1, '2020-10-10 02:17:02', '2020-10-10 02:17:02'),
(6, 1, 1, 1, '2020-10-10 02:18:20', '2020-10-10 02:18:20'),
(7, 1, 1, 1, '2020-10-18 20:40:50', '2020-10-18 20:40:50'),
(8, 1, 1, 1, '2020-10-18 20:40:54', '2020-10-18 20:40:54'),
(9, 1, 1, 1, '2020-10-18 20:40:58', '2020-10-18 20:40:58'),
(10, 1, 1, 1, '2020-10-18 20:41:07', '2020-10-18 20:41:07'),
(11, 1, 1, 1, '2020-10-18 21:28:00', '2020-10-18 21:28:00'),
(12, 1, 1, 1, '2020-10-18 21:28:10', '2020-10-18 21:28:10'),
(13, 1, 1, 1, '2020-10-18 21:29:07', '2020-10-18 21:29:07'),
(14, 1, 1, 1, '2020-10-18 21:31:50', '2020-10-18 21:31:50'),
(15, 1, 1, 1, '2020-10-18 21:31:57', '2020-10-18 21:31:57'),
(16, 1, 1, 1, '2020-10-18 21:33:19', '2020-10-18 21:33:19'),
(17, 1, 1, 1, '2020-10-18 21:34:18', '2020-10-18 21:34:18');

-- --------------------------------------------------------

--
-- 表的结构 `live_user`
--

CREATE TABLE IF NOT EXISTS `live_user` (
  `id` int(20) NOT NULL,
  `live_id` int(11) NOT NULL DEFAULT '0' COMMENT '直播间id',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `live_user`
--

INSERT INTO `live_user` (`id`, `live_id`, `user_id`, `created_time`, `updated_time`) VALUES
(1, 1, 1, '2020-09-01 00:00:00', '2020-09-01 00:00:00'),
(2, 3, 1, '2020-10-09 22:51:05', '2020-10-09 22:51:05');

-- --------------------------------------------------------

--
-- 表的结构 `manager`
--

CREATE TABLE IF NOT EXISTS `manager` (
  `id` int(20) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '管理员账户',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `manager`
--

INSERT INTO `manager` (`id`, `username`, `password`, `created_time`, `updated_time`) VALUES
(5, 'ceshi', 'f9c14ba4d63f224c02f317943105b0d4d7778628e51394b025994ed06d5c9863', '2020-08-15 16:28:53', '2020-08-15 16:28:53'),
(6, 'ceshi23', '1cf2d0fa7e52b5f40021dde48a85cb08e93395fe4c3a41e888941acfcf5d6dc4', '2020-08-15 16:28:59', '2020-08-15 17:48:03'),
(8, 'ceshi1', 'f9c14ba4d63f224c02f317943105b0d4d7778628e51394b025994ed06d5c9863', '2020-08-15 18:21:33', '2020-08-15 18:21:33');

-- --------------------------------------------------------

--
-- 表的结构 `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(20) NOT NULL,
  `no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `status` enum('pending','success','fail') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending' COMMENT '支付状态',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `order`
--

INSERT INTO `order` (`id`, `no`, `user_id`, `price`, `status`, `created_time`, `updated_time`) VALUES
(116, 'HDKyR3Z41pAfq5tkFiH8', 2, 1, 'pending', '2020-10-07 21:49:01', '2020-10-07 21:49:01'),
(117, 'Z7EzaBBHIa0GYIvPG85X', 2, 1, 'pending', '2020-10-07 21:52:13', '2020-10-07 21:52:13'),
(118, 'le1F1j3jGzYGAGaaK6ku', 2, 1, 'pending', '2020-10-07 23:16:50', '2020-10-07 23:16:50'),
(119, 'BxfX2QyieVSgP3pFvMkS', 2, 1, 'pending', '2020-10-07 23:16:53', '2020-10-07 23:16:53'),
(120, 'D17A8f86NCZvUm1uhkbD', 1, 1, 'pending', '2020-10-08 00:35:41', '2020-10-08 00:35:41'),
(121, 'y4NmgEmEFMsfej8W7bVY', 1, 10, 'pending', '2020-10-08 00:38:50', '2020-10-08 00:38:50'),
(122, 'mNWujMrIDmiJtkNiOzno', 1, 1, 'pending', '2020-10-08 00:39:32', '2020-10-08 00:39:32'),
(123, 'v8PC87hesrjqC5d7kAC6', 1, 1, 'pending', '2020-10-08 00:39:37', '2020-10-08 00:39:37'),
(124, 'a7AaQt8KHonVPLpgb3ud', 1, 1, 'pending', '2020-10-08 00:39:49', '2020-10-08 00:39:49'),
(125, 'sXURb5WuSmLn96jVXmZd', 1, 1, 'pending', '2020-10-08 00:44:05', '2020-10-08 00:44:05');

-- --------------------------------------------------------

--
-- 表的结构 `sequelizemeta`
--

CREATE TABLE IF NOT EXISTS `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20200801135005-manager.js'),
('20200823171814-user.js'),
('20200830202840-gift.js'),
('20200907194714-order.js'),
('20200907202130-live.js'),
('20200907213849-live_user.js'),
('20200914114545-live_gift.js'),
('20200914130516-comment.js');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(20) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '头像',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '金币',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `avatar`, `coin`, `created_time`, `updated_time`) VALUES
(1, 'ceshi1', '0913fab29f8aa92f97fe646839409f3726c4d3dc64f449f10622a5500c740c02', '', 987, '2020-09-08 03:53:24', '2020-10-18 21:34:18'),
(2, 'ceshi', 'f9c14ba4d63f224c02f317943105b0d4d7778628e51394b025994ed06d5c9863', '', 0, '2020-09-14 21:42:59', '2020-09-14 21:42:59'),
(3, 'ceshi3', 'f9c14ba4d63f224c02f317943105b0d4d7778628e51394b025994ed06d5c9863', '', 0, '2020-09-22 00:34:17', '2020-09-22 00:34:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_id` (`live_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `gift`
--
ALTER TABLE `gift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live`
--
ALTER TABLE `live`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `live_gift`
--
ALTER TABLE `live_gift`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_id` (`live_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `gift_id` (`gift_id`);

--
-- Indexes for table `live_user`
--
ALTER TABLE `live_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_id` (`live_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no` (`no`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `gift`
--
ALTER TABLE `gift`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `live`
--
ALTER TABLE `live`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `live_gift`
--
ALTER TABLE `live_gift`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `live_user`
--
ALTER TABLE `live_user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- 限制导出的表
--

--
-- 限制表 `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`live_id`) REFERENCES `live` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- 限制表 `live`
--
ALTER TABLE `live`
  ADD CONSTRAINT `live_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- 限制表 `live_gift`
--
ALTER TABLE `live_gift`
  ADD CONSTRAINT `live_gift_ibfk_1` FOREIGN KEY (`live_id`) REFERENCES `live` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `live_gift_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `live_gift_ibfk_3` FOREIGN KEY (`gift_id`) REFERENCES `gift` (`id`) ON DELETE CASCADE;

--
-- 限制表 `live_user`
--
ALTER TABLE `live_user`
  ADD CONSTRAINT `live_user_ibfk_1` FOREIGN KEY (`live_id`) REFERENCES `live` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `live_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- 限制表 `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
