-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 01:15 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `SNO.` int(11) NOT NULL,
  `Sender` varchar(30) NOT NULL,
  `Receiver` varchar(30) NOT NULL,
  `Amount` double NOT NULL,
  `Date & Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`SNO.`, `Sender`, `Receiver`, `Amount`, `Date & Time`) VALUES
(1, 'Apeksha', 'Nayan', 200, '2021-04-12 11:10:46'),
(2, 'Nayan', 'Apeksha', 300, '2021-04-13 14:10:46'),
(3, 'Girish', 'Riya', 400, '2021-04-15 10:12:01'),
(4, 'Pratik', 'Ritika', 500, '2021-04-16 11:12:01'),
(5, 'Varsha', 'Apeksha', 600, '2021-04-13 14:13:28'),
(6, 'Apeksha', 'Vibha ', 40, '0000-00-00 00:00:00'),
(7, 'Varsha', 'Pratik ', 100, '0000-00-00 00:00:00'),
(8, 'Ritika', 'Radhika ', 60, '0000-00-00 00:00:00'),
(9, 'Girish', 'Ritika ', 120, '0000-00-00 00:00:00'),
(10, 'Pratik', 'siya ', 230, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Name`, `Email`, `Balance`) VALUES
(1, 'Apeksha', 'apeksha@gmail.com', 5000),
(2, 'Varsha', 'varsha@gmail.com', 2000),
(3, 'Pratik', 'Pratik@gmail.com', 6000),
(4, 'Vibha', 'vibha@gmail.com', 7000),
(5, 'Shalu', 'shalu@gmail.com', 1000),
(6, 'Radhika', 'radhika@gmail.com', 1200),
(7, 'Ritika', 'ritika@gmail.com', 3000),
(8, 'siya', 'siya@gmail.com', 2100),
(9, 'Nayan', 'nayan@gmail.com', 4800),
(10, 'Girish', 'girish@gmail.com', 6000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`SNO.`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `SNO.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
