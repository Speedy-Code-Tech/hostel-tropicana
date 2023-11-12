-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2023 at 12:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hosteltropicana`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `tagid` varchar(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `quantity` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `tagid`, `itemname`, `room`, `brand`, `quantity`) VALUES
(1, '6511ab94947f2', 'Freezer', 'Kitchen', 'Hanabishi', 4),
(2, '6513985c04078', 'Meat Mincer', 'Kitchen', 'Sanyo', 4),
(3, '651409102453d', 'Wash Dryer', 'Housekeeping', 'Black Decker', 2);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `tagid` varchar(255) NOT NULL,
  `supplyname` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supp_borrowed`
--

CREATE TABLE `supp_borrowed` (
  `id` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_borrowed` date DEFAULT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `whereplace` text DEFAULT NULL,
  `returndate` date DEFAULT NULL,
  `quantity` int(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `tagid` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `item_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supp_borrowed`
--

INSERT INTO `supp_borrowed` (`id`, `item`, `name`, `date_borrowed`, `contactno`, `whereplace`, `returndate`, `quantity`, `category`, `tagid`, `room`, `status`, `item_created`) VALUES
(1, 'Drive', '', '0000-00-00', '', '', '0000-00-00', 10, 'Supplies', '6511ab5b9378e', 'Admin', NULL, '2023-08-21'),
(2, 'Screwdriver', '', '0000-00-00', '', '', '0000-00-00', 7, 'Tools', '6511ab8732c7c', 'Maintenance', NULL, '2023-09-25'),
(3, 'Freezer', '', '0000-00-00', '', '', '0000-00-00', 4, 'Equipment', '6511ab94947f2', 'Kitchen', NULL, '2023-09-21'),
(4, 'Drive', 'Juan Dela Cruz', '2023-09-25', '09313004248', 'DIT', '2023-09-30', 3, 'Supplies', '6511ab5b9378e', 'Admin', 'Borrowed', '2023-09-25'),
(5, 'Funnel', '', '0000-00-00', '', '', '0000-00-00', 5, 'Tools', '651294135911c', 'Kitchen', NULL, '2023-09-26'),
(6, 'Funnel', 'Juana Dimagiba', '2023-09-26', '09334587264', 'Rolle', '2023-09-29', 2, 'Tools', '651294135911c', 'Kitchen', 'Borrowed', '2023-09-26'),
(7, 'Ketchup', '', '0000-00-00', '', '', '0000-00-00', 30, 'Supplies', '6512f1e852443', 'Kitchen', NULL, '2023-09-26'),
(8, 'Roasted Coffee', '', '0000-00-00', '', '', '0000-00-00', 53, 'Supplies', '65139471d4e78', 'Cafe Severino', NULL, '2023-09-27'),
(9, 'Roasted Coffee', 'Princess Shane V. Garcia', '2023-09-27', '09334572167', 'CAFENR', '2023-09-29', 10, 'Supplies', '65139471d4e78', 'Cafe Severino', 'Borrowed', '2023-09-27'),
(10, 'Meat Mincer', '', '0000-00-00', '', '', '0000-00-00', 5, 'Equipment', '6513985c04078', 'Kitchen', NULL, '2023-09-27'),
(11, 'Meat Mincer', 'Duan Jiaxu', '2023-09-27', '09234550001', 'CAFENR', '2023-10-13', 1, 'Equipment', '6513985c04078', 'Kitchen', 'Borrowed', '2023-09-27'),
(12, 'Chef\'s Knife', '', '0000-00-00', '', '', '0000-00-00', 4, 'Tools', '65139d647c8f1', 'Kitchen', NULL, '2023-09-27'),
(13, 'Wash Dryer', '', '0000-00-00', '', '', '0000-00-00', 3, 'Equipment', '651409102453d', 'Housekeeping', NULL, '2023-09-27'),
(14, 'Wash Dryer', 'Duan Jiaxu', '2023-09-27', '096654210003', 'Coffee Center', '2023-09-29', 1, 'Equipment', '651409102453d', 'Housekeeping', 'Borrowed', '2023-09-27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cat`
--

CREATE TABLE `tbl_cat` (
  `cat_id` int(11) NOT NULL,
  `cat_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_cat`
--

INSERT INTO `tbl_cat` (`cat_id`, `cat_desc`) VALUES
(1, 'Equipment'),
(2, 'Furniture And Fixture');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_con`
--

CREATE TABLE `tbl_con` (
  `con_id` int(11) NOT NULL,
  `con_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_con`
--

INSERT INTO `tbl_con` (`con_id`, `con_desc`) VALUES
(1, 'Working'),
(2, 'Condemed');

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
(48, '', ' ', '', 1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 'ADMINISTRATOR', 'admin', 'Manager', 'admin@gmail.com'),
(57, NULL, NULL, NULL, 1, 1, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 2, 1, 'USER', 'Kitchen', 'Cook', 'user@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emp_type`
--

CREATE TABLE `tbl_emp_type` (
  `type_id` int(11) NOT NULL,
  `type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_emp_type`
--

INSERT INTO `tbl_emp_type` (`type_id`, `type_desc`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE `tbl_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_serno` varchar(50) NOT NULL,
  `item_modno` varchar(50) NOT NULL,
  `item_brand` varchar(50) NOT NULL,
  `item_amount` double NOT NULL,
  `item_purdate` date NOT NULL,
  `emp_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL DEFAULT 4,
  `status_id` int(11) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `id` int(11) NOT NULL,
  `tagid` varchar(255) NOT NULL,
  `supplyname` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`id`, `tagid`, `supplyname`, `room`, `brand`, `quantity`) VALUES
(1, '6511ab5b9378e', 'Drive', 'Admin', 'Seagate', 7),
(2, '6512f1e852443', 'Ketchup', 'Kitchen', 'Del Monte', 30),
(3, '65139471d4e78', 'Roasted Coffee', 'Cafe Severino', 'Cafe Amadeo', 43);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_status`
--

CREATE TABLE `tbl_item_status` (
  `status_id` int(11) NOT NULL,
  `status_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_item_status`
--

INSERT INTO `tbl_item_status` (`status_id`, `status_desc`) VALUES
(1, 'for repair'),
(2, 'for transfer'),
(3, 'for condemed'),
(4, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_off`
--

CREATE TABLE `tbl_off` (
  `off_id` int(11) NOT NULL,
  `off_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_off`
--

INSERT INTO `tbl_off` (`off_id`, `off_desc`) VALUES
(1, 'PERSONNEL'),
(2, 'SGOD'),
(8, 'AAA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pos`
--

CREATE TABLE `tbl_pos` (
  `pos_id` int(11) NOT NULL,
  `pos_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pos`
--

INSERT INTO `tbl_pos` (`pos_id`, `pos_desc`) VALUES
(1, 'Information Technology Officer'),
(2, 'Book Keeper');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request`
--

CREATE TABLE `tbl_request` (
  `req_id` int(11) NOT NULL,
  `req_date` date NOT NULL,
  `item_id` int(11) NOT NULL,
  `req_type_id` int(11) NOT NULL,
  `req_status_id` int(11) NOT NULL DEFAULT 1,
  `req_is_done` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_req_status`
--

CREATE TABLE `tbl_req_status` (
  `req_status_id` int(11) NOT NULL,
  `req_status_desc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_req_status`
--

INSERT INTO `tbl_req_status` (`req_status_id`, `req_status_desc`) VALUES
(1, 'pending'),
(2, 'accepted'),
(3, 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_req_type`
--

CREATE TABLE `tbl_req_type` (
  `req_type_id` int(11) NOT NULL,
  `req_type_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_req_type`
--

INSERT INTO `tbl_req_type` (`req_type_id`, `req_type_desc`) VALUES
(1, 'repair'),
(2, 'transfer'),
(3, 'condemed'),
(4, 'none');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tools`
--

CREATE TABLE `tbl_tools` (
  `id` int(11) NOT NULL,
  `tagid` varchar(255) NOT NULL,
  `toolname` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_tools`
--

INSERT INTO `tbl_tools` (`id`, `tagid`, `toolname`, `room`, `quantity`) VALUES
(1, '6511ab8732c7c', 'Screwdriver', 'Maintenance', 7),
(2, '651294135911c', 'Funnel', 'Kitchen', 3),
(3, '65139d647c8f1', 'Chef\'s Knife', 'Kitchen', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `accountname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `office` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `accountname`, `username`, `password`, `email`, `office`, `position`) VALUES
(9, 'administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'admin', 'admin'),
(10, 'Jester', 'jester', '694915d7d4acf50bbf43a1038e3e9f17', 'jester@gmail.com', 'jester', 'jester');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supp_borrowed`
--
ALTER TABLE `supp_borrowed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_con`
--
ALTER TABLE `tbl_con`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `pos_id` (`pos_id`),
  ADD KEY `off_id` (`off_id`);

--
-- Indexes for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `con_id` (`con_id`);

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_off`
--
ALTER TABLE `tbl_off`
  ADD PRIMARY KEY (`off_id`);

--
-- Indexes for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD PRIMARY KEY (`req_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `req_type_id` (`req_type_id`),
  ADD KEY `req_status_id` (`req_status_id`);

--
-- Indexes for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  ADD PRIMARY KEY (`req_status_id`);

--
-- Indexes for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  ADD PRIMARY KEY (`req_type_id`);

--
-- Indexes for table `tbl_tools`
--
ALTER TABLE `tbl_tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supp_borrowed`
--
ALTER TABLE `supp_borrowed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_cat`
--
ALTER TABLE `tbl_cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_con`
--
ALTER TABLE `tbl_con`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_item_status`
--
ALTER TABLE `tbl_item_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_off`
--
ALTER TABLE `tbl_off`
  MODIFY `off_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_pos`
--
ALTER TABLE `tbl_pos`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tbl_req_status`
--
ALTER TABLE `tbl_req_status`
  MODIFY `req_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_req_type`
--
ALTER TABLE `tbl_req_type`
  MODIFY `req_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_tools`
--
ALTER TABLE `tbl_tools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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

--
-- Constraints for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD CONSTRAINT `tbl_item_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`),
  ADD CONSTRAINT `tbl_item_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `tbl_cat` (`cat_id`),
  ADD CONSTRAINT `tbl_item_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `tbl_item_status` (`status_id`),
  ADD CONSTRAINT `tbl_item_ibfk_5` FOREIGN KEY (`con_id`) REFERENCES `tbl_con` (`con_id`);

--
-- Constraints for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD CONSTRAINT `tbl_request_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `tbl_item` (`item_id`),
  ADD CONSTRAINT `tbl_request_ibfk_2` FOREIGN KEY (`req_type_id`) REFERENCES `tbl_req_type` (`req_type_id`),
  ADD CONSTRAINT `tbl_request_ibfk_3` FOREIGN KEY (`req_status_id`) REFERENCES `tbl_req_status` (`req_status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
