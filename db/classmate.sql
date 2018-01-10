-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-22 12:18:30
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baixiao`
--

SET NAMES UTF8;
DROP DATABASE IF EXISTS baixiao;
CREATE DATABASE baixiao CHARSET=UTF8;
USE baixiao;

-- --------------------------------------------------------

--
-- 表的结构 `classmate`
--

CREATE TABLE `classmate` (
  `NO` int(11) DEFAULT NULL,
  `uname` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthday` date NOT NULL,
  `qq` varchar(16) NOT NULL,
  `weChat` varchar(32) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `city` varchar(16) NOT NULL,
  `avatar` varchar(128) NOT NULL,
  `other2` int(11) NOT NULL,
  `password` varchar(16) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `classmate`
--

INSERT INTO `classmate` (`NO`, `uname`, `name`, `gender`, `birthday`, `qq`, `weChat`, `phone`, `city`, `avatar`, `other2`, `password`, `id`) VALUES
(NULL, '传火之人', '梁正雄', 1, '0000-00-00', '', '', '', '', 'img/avatar/me.png', 0, 'luanma01', 4),
(NULL, '春秋大法', '丁耿灿', 1, '0000-00-00', '', '', '', '', '0', 0, '123456', 7),
(NULL, 'daxiong', '郭雨哲', 1, '0000-00-00', '', '', '', '', '0', 0, '123456', 8),
(NULL, 'huxioa', '胡骁', 1, '0000-00-00', '', '', '', '', '0', 0, '103662', 242),
(NULL, 'jxn', '纪信年', 1, '0000-00-00', '', '', '', '', '0', 0, '12345980', 256),
(NULL, '大雕', '杨过', 1, '0000-00-00', '', '', '', '', '0', 0, '123', 260),
(NULL, '打算放弃啊', '黄蓉', 3, '0000-00-00', '', '', '', '', '0', 0, '1', 287),
(NULL, '刘鑫', '刘鑫', 0, '0000-00-00', '', '', '', '', '0', 0, 'dinggengcanbaba', 294),
(NULL, '丁耿灿', '丁耿灿', 0, '0000-00-00', '', '', '', '', '0', 0, '7758258123456', 295),
(NULL, 'asdlkj', 'lyh', 0, '0000-00-00', '', '', '', '', '0', 0, '123654', 306),
(NULL, 'aaa2261885', '王培任', 1, '0000-00-00', '', '', '', '', '0', 0, '2261885', 307),
(NULL, 'hei', '', 0, '0000-00-00', '', '', '', '', '0', 0, '12', 322),
(NULL, 'men', 'xiaoming', 1, '2017-11-01', '', 'menmen', '', '', 'img/avatar/me.png', 0, 'men', 334),
(NULL, '郭大侠', '郭雨哲', 1, '2000-05-13', '', '15029934193', '', '', 'img/avatar/boy04.jpg', 0, '123456', 335),
(NULL, '神', '', 0, '0000-00-00', '', '', '', '', 'img/avatar/girl01.jpg', 0, '123520111', 336),
(NULL, '哈哈哈', '', 0, '0000-00-00', '', '', '', '', '', 0, '123456', 337),
(NULL, 'wpr2261885', '', 0, '0000-00-00', '', '', '', '', '', 0, '2261885', 338),
(NULL, '该隐', '', 0, '0000-00-00', '', '', '', '', '', 0, '123456', 339),
(NULL, '落地98K', '', 0, '0000-00-00', '', '', '', '', '', 0, 'linzhiyu97', 340),
(NULL, '鸵鸟', '', 0, '0000-00-00', '', '', '', '', '', 0, '123456', 341),
(NULL, '掏出我的大宝贝', '', 0, '0000-00-00', '', '', '', '', '', 0, 'linzhiyu97', 342),
(NULL, '123', '', 0, '2017-01-01', '', '', '', '', '', 0, '123123', 343),
(NULL, '', '', 0, '0000-00-00', '', '', '', '', '', 0, '', 344);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classmate`
--
ALTER TABLE `classmate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `uname` (`uname`),
  ADD UNIQUE KEY `NO` (`NO`),
  ADD KEY `id_2` (`id`),
  ADD KEY `password` (`password`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `classmate`
--
ALTER TABLE `classmate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
