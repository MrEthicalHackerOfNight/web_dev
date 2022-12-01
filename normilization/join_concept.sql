-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 05:50 AM
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
-- Database: `join_concept`
--

-- --------------------------------------------------------

--
-- Table structure for table `ethb`
--

CREATE TABLE `ethb` (
  `candidate_no` int(11) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `add_cand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ethb`
--

INSERT INTO `ethb` (`candidate_no`, `s_name`, `add_cand`) VALUES
(2, 'rahul', 'kthm'),
(3, 'rakesh', 'ktm'),
(4, 'rupak', 'narantar'),
(5, 'gopi', 'gopikrishna');

-- --------------------------------------------------------

--
-- Table structure for table `eth_a`
--

CREATE TABLE `eth_a` (
  `candidate_no` int(11) NOT NULL,
  `st_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eth_a`
--

INSERT INTO `eth_a` (`candidate_no`, `st_name`, `address`) VALUES
(1, 'ram', 'ktm'),
(2, 'hari', 'gaurighat'),
(3, 'rahul', 'gopalgang'),
(4, 'manish', 'kalopul');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ethb`
--
ALTER TABLE `ethb`
  ADD PRIMARY KEY (`candidate_no`);

--
-- Indexes for table `eth_a`
--
ALTER TABLE `eth_a`
  ADD PRIMARY KEY (`candidate_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
