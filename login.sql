-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2024 at 12:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `serial No` int(10) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` int(8) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`serial No`, `Username`, `Password`, `date`) VALUES
(1, 'Herin Patel', 1234, '2024-08-14 17:24:32'),
(2, 'herin', 0, '2024-08-14 17:47:45'),
(3, 'herin', 0, '2024-08-14 17:48:41'),
(4, 'herin', 0, '2024-08-14 17:48:58'),
(5, 'yug', 12345678, '2024-08-14 17:51:38'),
(6, '', 0, '2024-08-16 09:19:16'),
(7, 'herin', 1234, '2024-08-16 09:25:33'),
(8, '', 0, '2024-08-16 09:37:04'),
(9, '', 0, '2024-08-16 09:46:16'),
(10, '', 0, '2024-08-16 10:18:56'),
(11, '', 0, '2024-08-16 11:37:13'),
(12, '', 0, '2024-08-17 09:09:01'),
(13, '', 0, '2024-08-17 09:09:56'),
(14, '', 0, '2024-08-17 09:12:08'),
(15, '', 0, '2024-08-17 09:14:21'),
(16, '', 0, '2024-08-17 09:15:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`serial No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `serial No` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
