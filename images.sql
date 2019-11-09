-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2019 at 06:00 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `link` varchar(300) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `link`, `time`) VALUES
(1, 'https://i.imgur.com/HApfJKK.jpg', '0000-00-00 00:00:00'),
(2, 'https://i.imgur.com/afMIYdR.jpg', '0000-00-00 00:00:00'),
(3, 'https://i.imgur.com/BxIqB5W.jpg', '0000-00-00 00:00:00'),
(4, 'https://i.imgur.com/bLwWBRQ.jpg', '0000-00-00 00:00:00'),
(5, 'https://i.imgur.com/CGkxemj.jpg', '0000-00-00 00:00:00'),
(6, 'https://i.imgur.com/5nUZzui.jpg', '0000-00-00 00:00:00'),
(7, 'https://i.imgur.com/pp6Szy2.jpg', '0000-00-00 00:00:00'),
(8, 'https://i.imgur.com/K2tItvl.jpg', '0000-00-00 00:00:00'),
(9, 'https://i.imgur.com/K2tItvl.jpg', '0000-00-00 00:00:00'),
(18, 'https://i.imgur.com/Yjy6vHX.jpg', '0000-00-00 00:00:00'),
(19, 'https://i.imgur.com/lbKTnBH.jpg', '0000-00-00 00:00:00'),
(20, 'https://i.imgur.com/3QlQHuD.jpg', '0000-00-00 00:00:00'),
(21, 'https://i.imgur.com/l70fZja.jpg', '0000-00-00 00:00:00'),
(22, 'https://i.imgur.com/pYiOPMM.jpg', '0000-00-00 00:00:00'),
(23, 'https://i.imgur.com/d2PcqFm.jpg', '0000-00-00 00:00:00'),
(24, 'https://i.imgur.com/uc85P1Q.jpg', '0000-00-00 00:00:00'),
(25, 'https://i.imgur.com/qAPg2wk.jpg', '0000-00-00 00:00:00'),
(26, 'https://i.imgur.com/wV2jZw3.jpg', '0000-00-00 00:00:00'),
(27, 'https://i.imgur.com/Z2urMzq.jpg', '0000-00-00 00:00:00'),
(28, 'https://i.imgur.com/6jQO27P.jpg', '0000-00-00 00:00:00'),
(29, 'https://i.imgur.com/nCv3wN8.jpg', '2019-11-09 23:45:58'),
(30, 'https://i.imgur.com/Ccf83ik.jpg', '2019-11-09 23:46:15'),
(31, 'https://i.imgur.com/MLzPWTC.jpg', '2019-11-09 23:46:22'),
(32, 'https://i.imgur.com/S2zPDSS.jpg', '2019-11-09 23:46:27'),
(33, 'https://i.imgur.com/aiftrgA.jpg', '2019-11-09 23:46:32'),
(34, 'https://i.imgur.com/3xidxEP.jpg', '2019-11-09 23:55:35'),
(35, 'https://i.imgur.com/ip4nian.jpg', '2019-11-09 23:55:41'),
(36, 'https://i.imgur.com/JOkkoch.jpg', '2019-11-09 23:55:47'),
(37, 'https://i.imgur.com/qdwweSF.jpg', '2019-11-09 23:55:52'),
(38, 'https://i.imgur.com/VeoCwd0.jpg', '2019-11-09 23:55:56'),
(39, 'https://i.imgur.com/HzqJMZ4.jpg', '2019-11-09 23:56:01'),
(40, 'https://i.imgur.com/3qzmnKh.jpg', '2019-11-09 23:56:07'),
(41, 'https://i.imgur.com/b34yYBK.jpg', '2019-11-09 23:56:15'),
(42, 'https://i.imgur.com/my82qe5.jpg', '2019-11-09 23:56:20'),
(43, 'https://i.imgur.com/pODFaaZ.jpg', '2019-11-09 23:56:25'),
(44, 'https://i.imgur.com/QL6wly7.jpg', '2019-11-09 23:56:31'),
(45, 'https://i.imgur.com/wTgU1xh.jpg', '2019-11-09 23:56:36'),
(46, 'https://i.imgur.com/TYdfWCx.jpg', '2019-11-09 23:56:43'),
(47, 'https://i.imgur.com/EmAVL2j.jpg', '2019-11-09 23:57:21'),
(48, 'https://i.imgur.com/V7qB1Ur.jpg', '2019-11-09 23:57:27'),
(49, 'https://i.imgur.com/GMQq6bi.jpg', '2019-11-09 23:57:59'),
(50, 'https://i.imgur.com/UwPaA4V.jpg', '2019-11-09 23:58:05'),
(51, 'https://i.imgur.com/02krDZU.jpg', '2019-11-09 23:58:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
