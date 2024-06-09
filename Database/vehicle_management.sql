-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2022 at 04:08 PM
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
-- Database: `vehicle_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'praveg', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL,
  `id` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `salary` int(255) NOT NULL,
  `equipment` int(255) NOT NULL,
  `oil` int(255) NOT NULL,
  `tcost` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `id`, `username`, `salary`, `equipment`, `oil`, `tcost`) VALUES
(8, '25', '', 1000, 1000001, 1010, 101010101),
(9, '25', '', 1000, 100, 300, 1400),
(10, '25', '', 10000, 500, 4000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `type` varchar(8) NOT NULL,
  `req_date` varchar(100) NOT NULL,
  `req_time` varchar(100) NOT NULL,
  `ret_date` varchar(100) NOT NULL,
  `ret_time` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `pickup_point` varchar(100) NOT NULL,
  `resons` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(14) NOT NULL,
  `confirmation` int(11) NOT NULL,
  `veh_reg` varchar(255) NOT NULL,
  `driverid` int(11) NOT NULL,
  `finished` int(11) NOT NULL,
  `paid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `name`, `username`, `department`, `type`, `req_date`, `req_time`, `ret_date`, `ret_time`, `destination`, `pickup_point`, `resons`, `email`, `mobile`, `confirmation`, `veh_reg`, `driverid`, `finished`, `paid`) VALUES
(55, 'dhiraj', 'praveg', '', '4', '07/19/2022', '10 : 03 AM', '07/22/2022', '10 : 03 AM', 'dehradun', 'kedarnath', 'roadtrip', 'dhirajfale@gmail.com', 2147483647, 1, 'cho- 301294', 20, 1, 1),
(56, 'praveg patil', 'praveg', '', '5', '07/19/2022', '4 : 15 PM', '07/15/2022', '4 : 15 PM', 'joshimath', 'auli', 'roadtrip', 'patilpraveg@gmail.com', 2147483647, 1, 'cho- 301294', 22, 1, 1),
(57, 'praveg patil', 'praveg', '', '4', '07/13/2022', '4 : 50 PM', '07/15/2022', '4 : 50 PM', 'kedarnath', 'chamoli', 'roadtrip', 'patilpraveg@gmail.com', 968584589, 1, 'cho- 301294', 20, 1, 1),
(58, 'Dhiraj Fale', 'praveg', '', '7', '08/24/2022', '2 : 38 PM', '08/30/2022', '2 : 38 PM', 'Wardha', 'Amaravti', 'roadtrip', 'dhirajfale@gmail.com', 2147483647, 1, 'ga-259723', 22, 1, 1),
(60, 'akhil sirikar', 'akhil', '', '5', '08/14/2022', '7 : 47 PM', '08/23/2022', '7 : 47 PM', 'Pune', 'Akola', 'roadtrip', 'akhilsir99@gmail.com', 2147483647, 1, '123456', 23, 1, 1),
(61, '<br /><b>Warning</b>:  Trying to access array offset on value of type null in <b>C:xampphtdocs	ravelUKVehicle-Managementooking.php</b> on line <b>63</b><br /><br /><b>Warning</b>:  Trying to access array offset on value of type null in <b>C:xampphtdocs	r', 'dhiraj', '', '', '08/11/2022', '12 : 13 PM', '08/01/2022', '12 : 13 PM', 'wardha', '', '', 'pallavigadegone@gmail.com', 123, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driverid` int(11) NOT NULL,
  `drname` varchar(255) NOT NULL,
  `drjoin` varchar(255) NOT NULL,
  `drmobile` varchar(20) NOT NULL,
  `drnid` varchar(30) NOT NULL,
  `drlicense` varchar(30) NOT NULL,
  `drlicensevalid` varchar(100) NOT NULL,
  `draddress` varchar(255) NOT NULL,
  `drphoto` varchar(30) NOT NULL,
  `dr_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driverid`, `drname`, `drjoin`, `drmobile`, `drnid`, `drlicense`, `drlicensevalid`, `draddress`, `drphoto`, `dr_available`) VALUES
(20, 'fahim', '03/04/2018', '01717172398712', '91238912093097812', '1093q098091839', '03/26/2018', ' creasent road, dhaka, bangladesh.', 'nsf.jpg', 0),
(21, 'Arman', '03/04/2018', '0123084982', 'kls3893809839082', '1093q098091839', '03/04/2018', ' Oktroy Mor, Rajshahi.', 'rkb.jpg', 0),
(22, 'Suraj', '07/09/2022', '8569745365', '123456', '6874596', '07/31/2022', ' Alandi,Pune', 'suraj.jpeg', 0),
(23, 'Dhiraj Fale', '08/02/2022', '8596365214', '856335265234', '854136', '08/31/2022', ' Aarvi,Amravti', 'dhiraj.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tripcost`
--

CREATE TABLE `tripcost` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `total_km` varchar(11) NOT NULL,
  `oil_cost` varchar(11) NOT NULL,
  `extra_cost` varchar(11) NOT NULL,
  `total_cost` varchar(11) NOT NULL,
  `paid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tripcost`
--

INSERT INTO `tripcost` (`id`, `booking_id`, `username`, `total_km`, `oil_cost`, `extra_cost`, `total_cost`, `paid`) VALUES
(13, '47', 'fahad', '10', '33', '8', '250', 1),
(15, '48', 'fahad', '10', '1000', '1200', '2200', 1),
(18, '49', 'fahad', '8', '1000', '1200', '2200', 1),
(19, '51', 'fahad', '100', '100`', '10', '10', 1),
(20, '52', 'fahad', '10', '1000', '10', '1010', 1),
(21, '54', 'praveg', '14', '15', '45', '60', 1),
(22, '55', 'praveg', '45', '8990', '510', '9500', 1),
(23, '56', 'praveg', '1000', '10000', '00', '10000', 1),
(24, '57', 'praveg', '52cxvcx', 'hfg', '8 cx ', 'czxc', 1),
(25, '58', 'praveg', '55', '500', '100', '600', 1),
(26, '59', 'praveg', '495', '5000', '550', '5550', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `username`, `password`, `admin`) VALUES
(15, 'praveg', 'patil', 'patilpraveg@gmail.com', 'praveg', 'psp', 0),
(18, 'akhil', 'sirikar', 'akhilsir99@gmail.com', 'akhil', 'akhil', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  `email` varchar(1001) NOT NULL,
  `mnumber` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `surname`, `username`, `gender`, `role`, `email`, `mnumber`, `password`) VALUES
(8, 'megha', 'garg', 'megha', 'FEMALE', 'Admin', 'meghagarg379@gmail.com', '8877445599', 'megha'),
(9, 'akhil', 'Sirikar', 'akhil', 'MALE', 'Admin', 'akhil@gmail.com', '2255887744', 'akhil'),
(10, 'praveg', 'patil', 'praveg', 'MALE', 'Admin', 'praveg@gmail.com', '2255887744', 'praveg'),
(11, 'megha', 'garg', 'megha', 'FEMALE', 'Tourist', 'megha@gmail.com', '4477885566', 'megha'),
(12, 'akhil', 'Sirikar', 'akhil', 'MALE', 'Tourist', 'akhil@gmail.com', '1144778855', 'akhil'),
(13, 'megha', 'garg', 'megha', 'FEMALE', 'Taxi', 'megha@gmail.com', '1155997755', 'megha'),
(14, 'akhil', 'Sirikar', 'akhil', 'MALE', 'Taxi', 'akhil@gmail.com', '7744112255', 'akhil'),
(15, 'praveg', 'patil', 'praveg', 'MALE', 'Taxi', 'praveg@gmail.com', '4455668822', 'praveg');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `veh_id` int(11) NOT NULL,
  `veh_reg` varchar(100) NOT NULL,
  `veh_type` varchar(20) NOT NULL,
  `chesisno` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `veh_color` varchar(100) NOT NULL,
  `veh_regdate` varchar(100) NOT NULL,
  `veh_description` varchar(255) NOT NULL,
  `veh_photo` varchar(255) NOT NULL,
  `veh_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`veh_id`, `veh_reg`, `veh_type`, `chesisno`, `brand`, `veh_color`, `veh_regdate`, `veh_description`, `veh_photo`, `veh_available`) VALUES
(25, 'ga-259723', 'car', '101-12303.20201', 'corolla', 'Black', '25/03.17', 'hello this is a black car.', '1.jpg', 0),
(26, 'cho- 301294', 'car', '101-12309.23981', 'axio', 'white', '26.9.15', ' hello this is a white car. ', '2.jpg', 0),
(35, 'go-190312', 'car', '101321-138713.3291823', 'Corolla', 'Red', '10/17/2017', ' This is a red car.', 'images.jpg', 1),
(36, '123456', 'car', '14785236985214785', 'BMW', 'White', '08/02/2022', ' Luxurious Vehicle', 'BMW White.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driverid`);

--
-- Indexes for table `tripcost`
--
ALTER TABLE `tripcost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`veh_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driverid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tripcost`
--
ALTER TABLE `tripcost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
