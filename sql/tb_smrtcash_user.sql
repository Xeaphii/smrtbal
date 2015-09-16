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
-- Table structure for table `tb_smrtcash_user`
--

CREATE TABLE IF NOT EXISTS `tb_smrtcash_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tb_smrtcash_user`
--

INSERT INTO `tb_smrtcash_user` (`id`, `user_email`) VALUES
(1, 'z@g.com'),
(10, 'zeeshankaramat1994@gmail.com'),
(9, 'z1@g.com'),
(8, 'Mahbub'),
(11, 'xeaphii@gmail.com'),
(12, 'graeme@myaltocash.com'),
(13, 'peter@myaltocash.com'),
(14, 'muhammadzeeshan020@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
