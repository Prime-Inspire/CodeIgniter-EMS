-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2020 at 03:07 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `e_id` int(11) NOT NULL,
  `e_date` datetime NOT NULL DEFAULT current_timestamp(),
  `e_name` varchar(255) NOT NULL,
  `e_email` varchar(255) NOT NULL,
  `e_phone` varchar(255) NOT NULL,
  `e_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`e_id`, `e_date`, `e_name`, `e_email`, `e_phone`, `e_job`) VALUES
(2, '2020-05-30 14:09:56', 'John Smith', 'johnsmith@gmail.com', '8521479632', 'Graphic Designer'),
(4, '2020-05-30 14:10:52', 'Rahul Sharma', 'rahulsharma@gmail.com', '74563210147', 'Graphic Designer'),
(5, '2020-05-30 18:23:31', 'Fatah Gabrial', 'fatahgabrial@gmail.com', '7418529632', 'Web Developer');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `j_id` int(11) NOT NULL,
  `j_date` datetime NOT NULL DEFAULT current_timestamp(),
  `j_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`j_id`, `j_date`, `j_name`) VALUES
(1, '2020-05-30 11:15:23', 'Graphic Designer'),
(4, '2020-05-30 13:27:29', 'Web Designer'),
(5, '2020-05-30 13:27:51', 'Web Developer'),
(6, '2020-05-30 13:27:58', 'Senior Digital Marketer');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `u_date` datetime NOT NULL DEFAULT current_timestamp(),
  `u_email` varchar(255) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_date`, `u_email`, `u_name`, `u_pass`) VALUES
(2, '2020-05-29 23:02:38', 'fatahgabrial@gmail.com', 'fatahgabrial', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`j_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `j_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
