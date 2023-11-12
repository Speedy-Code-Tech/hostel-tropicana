-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2023 at 09:02 AM
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
(1, 'Equipment2', 'Sample Equipment', 'RoomEquipment', 'New', 100),
(2, 'New Equipment', 'as', 'as', 'as', 10);

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
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supp_borrowed`
--

INSERT INTO `supp_borrowed` (`id`, `item`, `name`, `date_borrowed`, `contactno`, `whereplace`, `returndate`, `quantity`, `category`, `tagid`, `room`, `status`) VALUES
(25, 'SampleSupply', 'Jester', '2023-08-04', '09380831513', 'Somewhere', '2023-08-05', 5, 'Supplies', 'Supply101', 'Room101', NULL),
(26, 'Sample Tool', 'Jester', '2023-08-04', '09380831513', 'Somewhere', '2023-08-05', 5, 'Tools', 'Tools101', 'Room11', NULL),
(27, 'Sample Equipment', 'Jester', '2023-08-04', '09380831513', 'Somewhere', '2023-08-05', 10, 'Equipment', 'Equipment101', 'Room1', NULL),
(28, 'SupplyName', 'John Jester', '2023-08-04', '09380831513', 'Somewhere', '2023-08-12', 5, 'Supplies', 'Supply2', 'Test Supply', NULL),
(29, 'Tool Name', 'John Jester', '2023-08-10', '09380831513', 'Somewhere', '2023-08-19', 150, 'Tools', 'Tools 1', 'Room Tool', NULL),
(30, 'Sample Equipment', 'John Jester', '2023-08-04', '09380831513', 'Somewhere', '2023-08-24', 10, 'Equipment', 'Equipment2', 'RoomEquipment', NULL),
(32, 'Tool Name', 'John Jester', '2023-08-02', '09380831513', 'Somewhere', '2023-08-04', 4, 'Tools', 'Tools 1', 'Room Tool', 'Borrowed'),
(34, 'SupplyName', '', '0000-00-00', '', '', '0000-00-00', 10, 'Supplies', 'Jester', 'Room101', NULL),
(35, 'Samle', '', '0000-00-00', '', '', '0000-00-00', 20, 'Tools', 'JesterTool', 'hjehf', NULL),
(36, 'as', '', '0000-00-00', '', '', '0000-00-00', 10, 'Equipment', 'New Equipment', 'as', NULL),
(37, 'Sample Equipment', 'as', '2023-08-08', '09380831513', 'sd', '2023-08-17', 10, 'Equipment', 'Equipment2', 'RoomEquipment', 'Borrowed');

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
  `emp_fname` varchar(100) NOT NULL,
  `emp_mname` varchar(100) NOT NULL,
  `emp_lname` varchar(100) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `off_id` int(11) NOT NULL,
  `emp_un` varchar(100) NOT NULL,
  `emp_pass` varchar(40) NOT NULL,
  `type_id` int(11) NOT NULL,
  `emp_at_deped` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`emp_id`, `emp_fname`, `emp_mname`, `emp_lname`, `pos_id`, `off_id`, `emp_un`, `emp_pass`, `type_id`, `emp_at_deped`) VALUES
(37, 'Winnie', 'Alterado', 'Damayo', 1, 1, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 1, 1),
(38, 'Reyvelyn', 'Ybanez', 'Viovicente', 2, 2, 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 1, 1),
(39, 'Angel', 'Noidea', 'Locsin', 1, 1, 'angel_locsin', '86cd607ba94a7dc9bb3a0baf1d4c1926', 1, 1),
(40, 'Julia', 'Padilla', 'Barreto', 2, 2, 'Julia_Barreto', 'c87cac2c4079f860c8e0c8075ba4ae33', 1, 0),
(43, 'abakada', 'ee', 'gahaaja', 1, 1, '21313_2222', '65ac1cb0d396486f1d2bae5310bddb67', 1, 0),
(44, 'Rub', 'Aaa', 'Comedero', 2, 2, 'rub_comedero', '2c346f9df8cba24a0f2e985374ec2cd9', 1, 0),
(48, 'John', ' ', 'Dough', 1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 1);

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

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`item_id`, `item_name`, `item_serno`, `item_modno`, `item_brand`, `item_amount`, `item_purdate`, `emp_id`, `cat_id`, `con_id`, `status_id`) VALUES
(5, 'laptop', 'serial', 'model', 'brand ', 25500, '2017-01-06', 37, 1, 2, 4),
(10, 'AAA', '123123', '123123', '12321312', 123123, '2017-01-11', 37, 1, 2, 4),
(12, '21323', '12321321', '12312312', '12321312', 12323, '2017-01-05', 37, 1, 2, 4),
(13, 'Laptop', '343', '32423', 'Toshiba', 35000, '2017-01-23', 37, 1, 2, 4),
(14, 'Computer Desk', '34324', '324234423', 'Sofa', 3500, '2017-01-24', 37, 2, 2, 4),
(15, 'Mouse ah ah', '3423423', '234234', 'Cdr-king', 180, '2017-01-26', 37, 1, 2, 4),
(16, 'BBB', 'BBB', 'BBB', 'BBB', 25000, '2017-01-10', 37, 1, 2, 4),
(17, 'CCC', 'CCC', 'CCC', 'CCC', 343432, '2017-01-11', 37, 1, 2, 4),
(18, 'Aaa', 'aaa', 'aaaa', 'Aaa', 343, '2017-01-24', 37, 1, 2, 4),
(19, 'BBB', 'bbbb', 'bbb', 'BBb', 34342, '2017-01-10', 37, 1, 2, 4),
(20, '111', '111', '111', '111', 111, '2017-01-17', 37, 1, 2, 4),
(21, '24324', '24234', '435345', 'Brand', 34343, '2017-01-19', 37, 2, 2, 4),
(22, '324', '32432', '23423', '23432', 23423, '2017-03-08', 39, 2, 1, 4),
(23, 'Taller Gold', '234234', '234234', 'Artificial T', 1, '2017-03-09', 37, 1, 1, 4),
(24, 'Sip On', ' ', ' ', ' ', 34, '2017-03-22', 39, 2, 1, 4),
(25, 'Sampe', 'sf', 'df', ' 23', 1212, '2023-07-20', 39, 1, 1, 4),
(26, 'Jester', '123', '123', '123', 345435, '2023-07-04', 38, 1, 1, 4);

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
(13, 'Jester', 'SampleSupply', 'Room101', 'New', 10),
(14, 'Jester', 'SupplyName', 'Room101', 'New', 10);

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
(6, 'Tools 1', 'Tool Name', 'Room Tool', 146),
(7, 'JesterTool', 'Samle', 'hjehf', 20);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supp_borrowed`
--
ALTER TABLE `supp_borrowed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

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
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
