-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 08:39 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `json_chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `drzchat`
--

CREATE TABLE `drzchat` (
  `nomor` int(3) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `pesan` varchar(200) NOT NULL,
  `waktu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drzchat`
--

INSERT INTO `drzchat` (`nomor`, `nama`, `pesan`, `waktu`) VALUES
(1, '', ' bergabung dalam chat', '14:11'),
(2, '', ' bergabung dalam chat', '14:16'),
(3, 'Mo Nan', 'Mo Nan bergabung dalam chat', '14:28'),
(4, 'Mo Xiyun', 'Mo Xiyun bergabung dalam chat', '14:28'),
(5, 'Mo Nan', 'Halo, Xiyun', '14:29'),
(6, 'Mo Xiyun', 'Halo, Mo.', '14:29'),
(7, 'Mo Nan', 'Bagaimana, urusan Armada Beiyang di sana?', '14:31'),
(8, 'Mo Xiyun', 'Ya, begitulah. Seperti biasa, ini anak-anak lagi latihan berjamaah.', '14:32'),
(9, 'Mo Nan', 'Oke', '14:32'),
(10, 'Mo Xiyun', 'Masih mengejar Xu Lintong?', '14:32'),
(11, 'Mo Nan', 'Xu Lintong hanyalah debu, yang ibunya bagai malaikat penyelamat. Jadi ya biasa saja.', '14:33'),
(12, 'Mo Nan', 'Malah sekarang dia kadang membuntutiku terus belakangan ini.', '14:33'),
(13, 'Mo Nan', 'Mo Nan bergabung dalam chat', '14:37'),
(14, 'Mo Nan', 'Yo, Yoi!', '14:37');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `chat_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` char(50) DEFAULT NULL,
  `message` char(50) DEFAULT NULL,
  `post_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `chat_id`, `user_id`, `username`, `message`, `post_time`) VALUES
(1, 1, 1, 'Mo Nan', 'Halo. Bagaimana kabarnya?', '2010-04-28 17:30:00'),
(2, 1, 2, 'Mu Xiyun', 'Alhamdulillah, sehat', '2010-04-28 17:30:00'),
(3, 1, 1, 'Mo Nan', 'Posisi?', '2010-04-28 17:30:00'),
(4, 1, 2, 'Mu Xiyun', 'Planet Mars', '2010-04-28 17:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drzchat`
--
ALTER TABLE `drzchat`
  ADD PRIMARY KEY (`nomor`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drzchat`
--
ALTER TABLE `drzchat`
  MODIFY `nomor` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
