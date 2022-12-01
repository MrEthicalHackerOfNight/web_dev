-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 03:01 PM
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
-- Database: `secondnf`
--

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `Airport_Code` char(255) DEFAULT NULL,
  `Airport_Name` varchar(255) DEFAULT NULL,
  `Airport_Location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`Airport_Code`, `Airport_Name`, `Airport_Location`) VALUES
('PC010', 'TMA ', 'Melb'),
('XY221', 'SYDA ', 'Sydney'),
('PC010', 'TMA ', 'Melb'),
('XY221', 'SYDA ', 'Sydney');

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `Airport_Code` char(255) DEFAULT NULL,
  `Employee_No` char(255) NOT NULL,
  `Hourly_Rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table1`
--

INSERT INTO `table1` (`Airport_Code`, `Employee_No`, `Hourly_Rate`) VALUES
('MA019', 'S112', 45),
('MA019', 'S113 \r\n', 45),
('MA019', 'S114 \r\n', 45),
('XY221', 'V201 \r\n', 40),
('XY221', 'V202\r\n', 40),
('XY221', 'V203', 40),
('PC010', 'W111\r\n', 33),
('PC010', 'W112', 33),
('PC010', 'W113 \r\n', 33);

-- --------------------------------------------------------

--
-- Table structure for table `table2`
--

CREATE TABLE `table2` (
  `Employee_No` char(255) DEFAULT NULL,
  `Employee_Name` varchar(255) DEFAULT NULL,
  `Department_No` char(255) DEFAULT NULL,
  `Department_Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table2`
--

INSERT INTO `table2` (`Employee_No`, `Employee_Name`, `Department_No`, `Department_Name`) VALUES
('W111\r\n', 'Jack ', 'B01', 'IT\r\n'),
('W112', 'Adam ', 'B02', 'IT\r\n'),
('S113 \r\n', 'Gavy ', 'A26', 'CREW\r\n'),
('W113 \r\n', 'Felip ', 'B03', 'IT\r\n'),
('V201 \r\n', 'Tris ', 'C11', 'RECEPTION'),
('S113 \r\n', 'Gavy ', 'A26', 'CREW'),
('W111\r\n', 'Jack ', 'B01', 'IT\r\n'),
('W112', 'Adam ', 'B02', 'IT\r\n'),
('S113 \r\n', 'Gavy ', 'A26', 'CREW\r\n'),
('W113 \r\n', 'Felip ', 'B03', 'IT\r\n'),
('V201 \r\n', 'Tris ', 'C11', 'RECEPTION'),
('S113 \r\n', 'Gavy ', 'A26', 'CREW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`Employee_No`);

--
-- Indexes for table `table2`
--
ALTER TABLE `table2`
  ADD KEY `Employee_No` (`Employee_No`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table2`
--
ALTER TABLE `table2`
  ADD CONSTRAINT `table2_ibfk_1` FOREIGN KEY (`Employee_No`) REFERENCES `table1` (`Employee_No`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
