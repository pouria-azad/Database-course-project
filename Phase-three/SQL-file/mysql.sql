-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 14, 2023 at 09:59 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `faradoreh`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `price` int DEFAULT NULL,
  `Category` varchar(60) NOT NULL,
  `Description` varchar(300) DEFAULT NULL,
  `date` date NOT NULL,
  `professors` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `professors` (`professors`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf16;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `price`, `Category`, `Description`, `date`, `professors`) VALUES
(16, 'زبان پیشرفته', 150000, 'درسی', 'درسی بسیار شیرین که شما در کمترین زمان یاد خواهید گرفت.', '2023-01-06', 151),
(17, 'آموزش لینوکس', 166000, 'کامپیوتر', 'بهترین دوره برای یادگیری لینوکس', '2023-07-03', 150);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `link` varchar(400) NOT NULL,
  `lesson` varchar(60) NOT NULL,
  `Season` varchar(60) CHARACTER SET utf16 COLLATE utf16_general_ci NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
CREATE TABLE IF NOT EXISTS `professors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Description` varchar(400) NOT NULL,
  `Universities` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Universities` (`Universities`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf16;

--
-- Dumping data for table `professors`
--

INSERT INTO `professors` (`id`, `Description`, `Universities`, `date`) VALUES
(150, 'من دارای 3 مدرک هستم و 5 سال فعالیت دارم.', 9, '2023-01-03'),
(151, 'من دارای چهار مدرک هستم و 9 سال فعالیت دارم.', 8, '2022-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `p_number`
--

DROP TABLE IF EXISTS `p_number`;
CREATE TABLE IF NOT EXISTS `p_number` (
  `id` int NOT NULL,
  `p_number` int NOT NULL,
  UNIQUE KEY `p_number` (`p_number`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `p_specialty`
--

DROP TABLE IF EXISTS `p_specialty`;
CREATE TABLE IF NOT EXISTS `p_specialty` (
  `id` int NOT NULL,
  `specialty` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `number` int NOT NULL,
  `price` int NOT NULL,
  `card_name` varchar(60) NOT NULL,
  `date` date NOT NULL,
  `result` int NOT NULL,
  `users` int NOT NULL,
  PRIMARY KEY (`number`),
  KEY `users` (`users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

DROP TABLE IF EXISTS `universities`;
CREATE TABLE IF NOT EXISTS `universities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `Description` varchar(400) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf16;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `name`, `Description`) VALUES
(8, 'حکیم سبزواری', 'دانشگاه حکیم سبزواری از سال 1333 شروع به فعالیت کرد.'),
(9, 'تهران', 'دانشگاه تهران از جمله دانشگاه های ایران است.'),
(10, 'مشهد', 'در سال های 1500 و 1300 شروع به فعالیت کرد.'),
(11, 'اصفهان', 'توضیحات');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(60) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `gender` varchar(6) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `stock` int NOT NULL,
  `registration` date NOT NULL,
  `birthday` date DEFAULT NULL,
  `father_name` varchar(40) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  `en_name` varchar(60) NOT NULL,
  `age` int DEFAULT NULL,
  `manager` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `manager` (`manager`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf16;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `name`, `gender`, `email`, `stock`, `registration`, `birthday`, `father_name`, `en_name`, `age`, `manager`) VALUES
(150, '1234', 'علی حسینی', 'male', 'ali@gmail.com', 12300, '2023-01-11', '2001-11-10', 'محمد', 'ali hoseini', NULL, NULL),
(151, '1111', 'احسان امیری', 'male', 'ehsan@yahoo.com', 1600, '2022-05-11', '2005-11-10', 'امیر', 'ehsan amiri', NULL, NULL),
(152, '999', 'سارا احمدی', 'female', '', 14660, '2021-01-11', '2008-11-10', 'محمدحسین', 'sara ahmadi', NULL, NULL),
(153, '0000', 'root', NULL, 'root@root.com', 0, '0000-00-00', NULL, NULL, '', NULL, NULL),
(154, '456', 'حسین', NULL, '', 0, '2023-01-11', NULL, NULL, 'hosein', NULL, NULL),
(155, '6666', 'فاطمه', NULL, '', 140, '2023-01-27', NULL, NULL, 'fatemeh', NULL, NULL),
(156, '123', 'امید صالحی', 'male', 'pwryaazad5@gmail.com', 0, '0000-00-00', '2003-12-02', 'حمید', 'omid salehi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `us_co`
--

DROP TABLE IF EXISTS `us_co`;
CREATE TABLE IF NOT EXISTS `us_co` (
  `users` int NOT NULL,
  `registration` date NOT NULL,
  `courses` int NOT NULL,
  UNIQUE KEY `users` (`users`,`courses`),
  KEY `courses` (`courses`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `us_co`
--

INSERT INTO `us_co` (`users`, `registration`, `courses`) VALUES
(152, '2023-01-11', 16),
(153, '2023-01-15', 17),
(154, '2023-01-11', 17),
(155, '2023-01-10', 16),
(155, '0000-00-00', 17);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`professors`) REFERENCES `professors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `professors`
--
ALTER TABLE `professors`
  ADD CONSTRAINT `professors_ibfk_1` FOREIGN KEY (`Universities`) REFERENCES `universities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `professors_ibfk_2` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `p_number`
--
ALTER TABLE `p_number`
  ADD CONSTRAINT `p_number_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `p_specialty`
--
ALTER TABLE `p_specialty`
  ADD CONSTRAINT `p_specialty_ibfk_1` FOREIGN KEY (`id`) REFERENCES `professors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`manager`) REFERENCES `universities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `us_co`
--
ALTER TABLE `us_co`
  ADD CONSTRAINT `us_co_ibfk_1` FOREIGN KEY (`courses`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `us_co_ibfk_2` FOREIGN KEY (`users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
