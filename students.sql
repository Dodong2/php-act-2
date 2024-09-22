-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2024 at 11:39 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `student_gender` varchar(100) NOT NULL,
  `student_age` int(100) NOT NULL,
  `student_course` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_name`, `student_email`, `student_gender`, `student_age`, `student_course`) VALUES
(1, 'Carl', 'stephenarocha03@gmail.com', 'Male', 21, 'BSIT'),
(2, 'test1', 'test1@gmail.com', 'Male', 23, 'BSIT'),
(3, 'test2', 'test2@gmail.com', 'Male', 33, 'HRM'),
(4, 'test3', 'test3@gmail.com', 'Male', 33, 'HRM'),
(5, 'test4', 'test4@gmail.com', 'Male', 33, 'HRM'),
(6, 'test5', 'test5@gmail.com', 'Male', 22, 'Mechanic'),
(7, 'test6', 'test6@gmail.com', 'Male', 2, 'BSIT'),
(8, 'test7', 'test@gmail.com', 'Male', 25, 'BSCS'),
(9, 'test8', 'test8@gmail.com', 'Male', 21, 'BSIT'),
(10, 'try1', 'try1@gmail.com', 'Male', 34, 'HMT'),
(11, 'try2', 'try2@gmail.com', 'Male', 33, 'BSCS'),
(12, 'Carl Stephen Arocha', 'stephenarocha03@gmail.com', 'Male', 21, 'BSIT WMAD 3'),
(13, 'Carl Stephen Arocha', 'stephenarocha03@gmail.com', 'Male', 21, 'BSIT WMAD 3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
