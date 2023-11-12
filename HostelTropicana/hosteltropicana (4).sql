-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 05:57 AM
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
(7, 'DKUSB1B0GX', 'Keyboard', 'Admin', 'Acer', 2);

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
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supp_borrowed`
--

INSERT INTO `supp_borrowed` (`id`, `item`, `name`, `date_borrowed`, `contactno`, `whereplace`, `returndate`, `quantity`, `category`, `tagid`, `room`, `status`, `created`) VALUES
(43, 'Glue', '', '0000-00-00', '', '', '0000-00-00', 3, 'Supplies', '180000270', 'Admin', NULL, '2023-09-21 11:45:00'),
(44, 'Driver', '', '0000-00-00', '', '', '0000-00-00', 4, 'Tools', '2910616620005', 'Maintenance', NULL, '2023-09-21 11:45:00'),
(45, 'Keyboard', '', '0000-00-00', '', '', '0000-00-00', 2, 'Equipment', 'DKUSB1B0GX', 'Admin', NULL, '2023-09-21 11:45:00'),
(46, 'Driver', 'Juan Dela Cruz', '2023-09-21', '09445127864', 'Rolle Hall', '2023-09-21', 1, 'Tools', '2910616620005', 'Maintenance', 'Borrowed', '2023-09-21 11:45:00'),
(47, 'Whiteboard Marker', '', '0000-00-00', '', '', '0000-00-00', 10, 'Supplies', '650bbd8b012b8', 'Admin', NULL, '2023-09-21 11:51:19'),
(48, 'Wrench', '', '0000-00-00', '', '', '0000-00-00', 5, 'Tools', '650bbdb78df28', 'Maintenance', NULL, '2023-09-21 11:52:53'),
(49, 'Wrench', 'Juan Dela Cruz', '2023-09-21', '09653244578', 'DVM', '2023-09-28', 2, 'Tools', '650bbdb78df28', 'Maintenance', 'Borrowed', '2023-09-21 11:54:04');

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
(57, NULL, NULL, NULL, 1, 1, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 2, 1, 'USER', 'Front Desk', 'user', 'user@gmail.com'),
(58, NULL, NULL, NULL, 1, 1, 'user2', '7e58d63b60197ceb55a1c487989a3720', 2, 1, 'USER2', 'Storage', 'user', 'user2@gmail.com'),
(59, NULL, NULL, NULL, 1, 1, 'user3', '92877af70a45fd6a2ed7fe81e1236b78', 2, 1, 'USER3', 'Kitchen', 'Cook', 'user3@gmail.com');

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
(17, '180000270', 'Glue', 'Admin', 'Elmer\'s', 3),
(18, '650bbd8b012b8', 'Whiteboard Marker', 'Admin', 'Nicers', 10);

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
(1, 'ADMIN'),
(2, 'HOUSEKEEPING'),
(3, 'MAINTENANCE');

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
(9, '2910616620005', 'Driver', 'Maintenance', 3),
(10, '650bbdb78df28', 'Wrench', 'Maintenance', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
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
-- Indexes for table `tbl_tools`
--
ALTER TABLE `tbl_tools`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `supp_borrowed`
--
ALTER TABLE `supp_borrowed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

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
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_emp_type`
--
ALTER TABLE `tbl_emp_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
-- AUTO_INCREMENT for table `tbl_tools`
--
ALTER TABLE `tbl_tools`
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
