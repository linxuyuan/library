-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-05-24 14:59:27
-- 服务器版本： 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_forum`
--

-- --------------------------------------------------------

--
-- 表的结构 `tb_admin`
--

CREATE TABLE `tb_admin` (
  `user_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_admin`
--

INSERT INTO `tb_admin` (`user_id`, `admin_name`, `admin_password`) VALUES
(1, '2', '2');

-- --------------------------------------------------------

--
-- 表的结构 `tb_post`
--

CREATE TABLE `tb_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(1000) NOT NULL,
  `post_content` varchar(1000) DEFAULT NULL,
  `post_category_id` int(11) DEFAULT NULL,
  `post_user_id` int(11) NOT NULL,
  `post_user` varchar(100) DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `post_state` varchar(45) DEFAULT NULL COMMENT '帖子的审核状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_post`
--

INSERT INTO `tb_post` (`post_id`, `post_title`, `post_content`, `post_category_id`, `post_user_id`, `post_user`, `post_date`, `post_state`) VALUES
(1, '这是第一条帖子', '这是第1条帖子的内容', 1, 1, '111', '2013-04-05', '已审核'),
(2, '这是第二条帖子', '这是第2条帖子的内容', 2, 1, '111', '2016-05-22', '已审核'),
(3, '这是第三条帖子', '这是第三条帖子的内容', 3, 1, '111', '2016-01-01', '已审核'),
(4, '这是第四条帖子', '这是第四条帖子的内容', 4, 3, '333', '2016-04-12', '已审核');

-- --------------------------------------------------------

--
-- 表的结构 `tb_post_category`
--

CREATE TABLE `tb_post_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_post_category`
--

INSERT INTO `tb_post_category` (`category_id`, `category_name`) VALUES
(1, '野生动物'),
(2, '家庭宠物'),
(3, '流浪宠物'),
(4, '其他');

-- --------------------------------------------------------

--
-- 表的结构 `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_birthday` date DEFAULT NULL,
  `user_sex` varchar(45) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_love_animal` varchar(100) DEFAULT NULL,
  `user_tel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `user_name`, `user_password`, `user_birthday`, `user_sex`, `user_email`, `user_love_animal`, `user_tel`) VALUES
(1, '111', '111', '1994-09-01', '男', '39407394072640@qq.com', '猫', 110),
(2, '222', '222', '2016-05-07', '男', '2609461267@qq.com', '狗狗 猫猫 ', 121),
(3, '333', '333', '2016-05-08', '男', '11', '猫', 1555);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tb_post`
--
ALTER TABLE `tb_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tb_post_category`
--
ALTER TABLE `tb_post_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `tb_post`
--
ALTER TABLE `tb_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- 使用表AUTO_INCREMENT `tb_post_category`
--
ALTER TABLE `tb_post_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
