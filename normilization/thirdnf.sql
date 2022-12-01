-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 05:00 PM
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
-- Database: `thirdnf`
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
('PC010', 'TMA ', 'Melb\r\n'),
('MA019', 'AVA ', 'Bris\r\n'),
('XY221', 'SYDA ', 'Sydney'),
('PC010', 'TMA ', 'Melb\r\n'),
('MA019', 'AVA ', 'Bris\r\n'),
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
('MA019', 'S112\r\n', 45),
('MA019', 'S113', 45),
('MA019', 'S114 \r\n', 45),
('XY221', 'V201', 40),
('XY221', 'V202', 40),
('XY221', 'V203', 40),
('PC010', 'W111', 33),
('PC010', 'W112', 33),
('PC010', 'W113\r\n', 33);

-- --------------------------------------------------------

--
-- Table structure for table `table2`
--

CREATE TABLE `table2` (
  `Employee_No` char(255) DEFAULT NULL,
  `Employee_Name` varchar(255) DEFAULT NULL,
  `Department_No` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table2`
--

INSERT INTO `table2` (`Employee_No`, `Employee_Name`, `Department_No`) VALUES
('S113', 'Gavy ', 'A26\r\n'),
('S113', 'Gavy ', 'A26'),
('W111', 'Jack ', 'B01\r\n'),
('W112', 'Adam ', 'B02\r\n'),
('W113\r\n', 'Felip ', 'B03\r\n'),
('V201', 'Tris ', 'C11\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `table3`
--

CREATE TABLE `table3` (
  `Department_No` char(255) DEFAULT NULL,
  `Department_Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table3`
--

INSERT INTO `table3` (`Department_No`, `Department_Name`) VALUES
('B01\r\n', 'IT\r\n'),
('B02\r\n', 'IT\r\n'),
('A26', 'CREW\r\n'),
('B03\r\n', 'IT\r\n'),
('C11\r\n', 'RECEPTION');

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
  ADD PRIMARY KEY (`Department_No`),
  ADD KEY `Employee_No` (`Employee_No`);

--
-- Indexes for table `table3`
--
ALTER TABLE `table3`
  ADD KEY `Department_No` (`Department_No`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table2`
--
ALTER TABLE `table2`
  ADD CONSTRAINT `table2_ibfk_1` FOREIGN KEY (`Employee_No`) REFERENCES `table1` (`Employee_No`) ON DELETE CASCADE;

--
-- Constraints for table `table3`
--
ALTER TABLE `table3`
  ADD CONSTRAINT `table3_ibfk_1` FOREIGN KEY (`Department_No`) REFERENCES `table2` (`Department_No`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
