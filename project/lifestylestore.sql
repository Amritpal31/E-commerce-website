-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 24, 2019 at 08:20 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lifestylestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'Canon EOS ', 36000),
(2, 'Nikon DSLR', 45000),
(3, 'Sony DSLR', 40000),
(4, 'Olympus DSLR', 50000),
(5, 'Titan Model #301', 13000),
(6, 'Titan Model #201 ', 3000),
(7, 'HMT Milan', 8000),
(8, 'Faber Luba #111', 18000),
(9, 'H&W ', 800),
(10, 'Luis Phil', 1000),
(11, 'John Zok', 1500),
(12, 'Jhalsani', 1300);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contact` bigint(10) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'gdsh', 'fcf@h.com', '3b307ace402edf90bc1d5fecc811f81c', 9781522893, 'rdjrdrydyd', 'htkjftf'),
(2, 'Amritpal Singh', 'amritpalsingh0031@gmail.com', '3b307ace402edf90bc1d5fecc811f81c', 9781522893, 'Patiala', 'Deep Nagar'),
(3, 'harshdeep singh', 'hdekefhiu@gmail.com', 'd3883b9b6b8af0232c1a67a92434ff7e', 4649848948, 'yuyu', 'tyftyuiuio'),
(4, 'gurjot', 'gurjot.898@gmail.com', 'db365ba54ea62c90d23c657b09c52821', 8800384095, 'Delhi', 'fafaffa');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

DROP TABLE IF EXISTS `users_items`;
CREATE TABLE IF NOT EXISTS `users_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('added to cart','confirmed') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`user_id`,`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(5, 2, 10, 'confirmed'),
(4, 2, 3, 'confirmed'),
(6, 3, 3, 'confirmed'),
(7, 3, 2, 'added to cart'),
(8, 3, 3, 'added to cart'),
(9, 3, 4, 'confirmed'),
(10, 3, 1, 'confirmed'),
(11, 3, 11, 'confirmed'),
(26, 2, 1, 'added to cart'),
(20, 2, 10, 'confirmed'),
(25, 4, 1, 'confirmed');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
