-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 04:47 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ddl`
--

-- --------------------------------------------------------

--
-- Table structure for table `32a`
--

CREATE TABLE `32a` (
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `Favorite_song` varchar(255) DEFAULT NULL,
  `Favorite_movie` varchar(255) DEFAULT NULL,
  `fav_Actor` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `32a`
--

INSERT INTO `32a` (`first_name`, `last_name`, `age`, `Favorite_song`, `Favorite_movie`, `fav_Actor`) VALUES
('Janet', 'Jones', 20, 'abc', 'xyz', 'Amir Khan'),
('Jones', 'Janet', 28, 'hij', 'iup', 'Amir Khan'),
('Robert', 'Phill', 23, 'puq', 'pqr', 'Amir Khan'),
('Phil', 'Robert', 30, 'mrq', 'ikq', 'Shahrukh Khan'),
('Robert', 'Bass', 29, 'yhi', 'ogl', 'Shahrukh Khan');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
