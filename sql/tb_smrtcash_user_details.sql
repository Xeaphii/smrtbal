-- phpMyAdmin SQL Dump
-- version 3.4.3.1
-- http://www.phpmyadmin.net
--
-- Host: fdb12.biz.nf
-- Generation Time: Sep 16, 2015 at 06:59 AM
-- Server version: 5.5.38
-- PHP Version: 5.3.27

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `1756162_deets`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_smrtcash_user_details`
--

CREATE TABLE IF NOT EXISTS `tb_smrtbal_user_details` (
  `id` int(11) NOT NULL DEFAULT '0',
  `address` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone_number` varchar(200) NOT NULL,
  `id_number` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_smrtcash_user_details`
--

INSERT INTO `tb_smrtcash_user_details` (`id`, `address`, `name`, `phone_number`, `id_number`) VALUES
(11, 'Lahore Pakistan', 'Zeeshan', '+9233236229970', '35201-8692718-9'),
(10, 'zeed', 'dhdd', 'nddn', 'ddhd'),
(12, '20 goodwood close, midurst, wrst sussex, gu299jg, united kingdom', 'Graeme Lewis', '+447432838361', 'SJ609201B'),
(14, 'dteydd', 'dhdhd', '02022', '1918192');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
