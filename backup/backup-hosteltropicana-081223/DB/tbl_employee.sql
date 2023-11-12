-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2023 at 11:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deped`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `emp_id` int(11) NOT NULL,
  `emp_fname` varchar(100) DEFAULT NULL,
  `emp_mname` varchar(100) DEFAULT NULL,
  `emp_lname` varchar(100) DEFAULT NULL,
  `pos_id` int(11) DEFAULT 1,
  `off_id` int(11) DEFAULT 1,
  `emp_un` varchar(100) DEFAULT NULL,
  `emp_pass` varchar(40) DEFAULT NULL,
  `type_id` int(11) DEFAULT 2,
  `emp_at_deped` tinyint(1) DEFAULT 1,
  `accountname` varchar(255) DEFAULT NULL,
  `office` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`emp_id`, `emp_fname`, `emp_mname`, `emp_lname`, `pos_id`, `off_id`, `emp_un`, `emp_pass`, `type_id`, `emp_at_deped`, `accountname`, `office`, `position`, `email`) VALUES
(48, '', ' ', '', 1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 1, 'ADMINISTRATOR', 'admin', 'Manager', 'admin@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `pos_id` (`pos_id`),
  ADD KEY `off_id` (`off_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD CONSTRAINT `tbl_employee_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tbl_emp_type` (`type_id`),
  ADD CONSTRAINT `tbl_employee_ibfk_2` FOREIGN KEY (`pos_id`) REFERENCES `tbl_pos` (`pos_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_employee_ibfk_3` FOREIGN KEY (`off_id`) REFERENCES `tbl_off` (`off_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
