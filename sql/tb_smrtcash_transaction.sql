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
-- Table structure for table `tb_smrtcash_transaction`
--

CREATE TABLE IF NOT EXISTS `tb_smrtcash_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `amount` varchar(20) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `phone_number` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `tb_smrtcash_transaction`
--

INSERT INTO `tb_smrtcash_transaction` (`id`, `user_id`, `amount`, `currency`, `iban`, `swift_code`, `identifier_type`, `status`, `email`) VALUES
(1, 1, '10', 'USD', '122', '102', 2, 'processing', ''),
(6, 1, '10', 'USD', '122', '102', 2, 'processing', ''),
(7, 1, '10', 'USD', '122', '102', 2, 'processing', ''),
(8, 1, '10', 'USD', '122', '102', 2, 'processing', ''),
(9, 1, '10', 'USD', '122', '102', 2, 'processing', ''),
(10, 10, '12', 'USD', '@&@6', '12', 2, 'processing', ''),
(11, 10, '12', 'USD', 'hhs', 'uagdd', 2, 'processing', ''),
(12, 10, '151', 'USD', 'dhjd', 'dgdhd', 2, 'processing', ''),
(13, 10, '151', 'USD', 'dhjd', 'dgdhd', 2, 'processing', ''),
(14, 10, '225', 'USD', 'hfhd', 'sghdf', 2, 'processing', ''),
(15, 10, '12', 'USD', 'hd', 'dhdhf', 2, '', ''),
(16, 10, '100', 'USD', 'bfbf', 'dhdhf', 2, '', ''),
(17, 10, '1200', 'INR', 'dbdvd', 'hdhd', 2, '', ''),
(18, 11, '12', 'USD', 'Zeeshan', '32574616', 0, '', ''),
(19, 11, '1200', 'USD', 'gdfzgdfgdf', 'SDafzsdf', 2, '', ''),
(20, 12, '100', 'GBP', 'SD455566', '2233456677888', 2, '', ''),
(21, 12, '100', 'NGN', '4566SFG', '3567887543258', 2, '', ''),
(22, 12, '190', 'Ngn', 'chb567568', '3638272636362', 2, '', ''),
(23, 12, '1900', 'NGN', 'FGJGG576', '163836628225', 2, '', ''),
(24, 12, '3000', 'ZAR', 'SG3628GH', '573926281963828', 2, '', ''),
(25, 12, '2600', 'NGN', 'FH677GHJ', '5785586FGBGH', 2, '', ''),
(26, 11, '12', 'USD', 'gjhgk', 'sajkdghjk', 2, '', 'z@g.com'),
(27, 12, '10000', 'NGN', 'GG66888HB', '37373737328737', 2, '', 'graeme.lewis 1@gmail.com'),
(28, 12, '1000', 'ZAR', 'DDHDH474747', '2382846483936282', 2, '', 'graeme.lewis1@gmail.com'),
(29, 12, '3000', 'ZAR', 'HJJ7765778', '473738838488', 2, '', 'graeme.lewis@smrtcash.co'),
(30, 12, '11000', 'Gbp', 'JJJJ7655', '848282828282838', 2, '', 'graemw.leiws@ smrtcash.co'),
(31, 12, '30000', 'zar', 'GH776HH', '46382625622927', 2, '', 'graeme@myaltocash.com'),
(32, 12, '46789', 'zar', 'DFF4467FGV', '567890986543', 2, '', 'graeme@myaltocash.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
