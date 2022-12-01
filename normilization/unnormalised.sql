-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 02:06 PM
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
-- Database: `unnormalised`
--

-- --------------------------------------------------------

--
-- Table structure for table `unf`
--

CREATE TABLE `unf` (
  `Airport_Code` char(255) DEFAULT NULL,
  `Airport_Name` varchar(255) DEFAULT NULL,
  `Airport_Location` varchar(255) DEFAULT NULL,
  `Employee_No` char(255) NOT NULL,
  `Employee_Name` varchar(255) DEFAULT NULL,
  `Departnment_No` char(255) DEFAULT NULL,
  `Department_Name` varchar(255) DEFAULT NULL,
  `Hourly_rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unf`
--

INSERT INTO `unf` (`Airport_Code`, `Airport_Name`, `Airport_Location`, `Employee_No`, `Employee_Name`, `Departnment_No`, `Department_Name`, `Hourly_rate`) VALUES
('MA019\r\n\r\n', 'AVA ', 'Bris', ' S112', 'Aby ', 'A25', 'CREW ', 45),
('MA019\r\n\r\n', 'AVA ', 'Bris ', 'S113', 'Gavy', ' A26', 'CREW ', 45),
('MA019\r\n\r\n', 'AVA ', 'Bris ', 'S114', 'Sam ', 'A27', 'CREW ', 45),
('XY221', 'SYDA ', 'Sydney ', 'V201', 'Tris', 'C11', 'RECEPTION ', 40),
('XY221', 'SYDA ', 'Sydney ', 'V202', 'Claire', 'C12', 'RECEPTION ', 40),
('XY221', 'DYDA ', 'Sydney ', 'V203', 'Sara ', 'C13', 'RECEPTION ', 40),
('PC010', 'TMA Melb W111 Jack B01 IT 33', 'Melb W111 Jack B01 IT 33', 'W111', 'Jack ', 'B01', 'IT ', 33),
('PC010', 'TMA ', 'Melb ', 'W112', 'Adam ', 'B02', 'IT ', 33),
('PC010', 'TMA ', 'Melb ', 'W113', 'Felip', ' B03', 'IT ', 33);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `unf`
--
ALTER TABLE `unf`
  ADD PRIMARY KEY (`Employee_No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
