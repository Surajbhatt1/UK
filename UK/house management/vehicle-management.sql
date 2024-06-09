-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 02:38 AM
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
-- Database: `vehicle-management`
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
(1, 'dhiraj', '1234');

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
  `type` varchar(8) NOT NULL,
  `peoples` int(2) NOT NULL,
  `req_date` varchar(100) NOT NULL,
  `req_time` varchar(100) NOT NULL,
  `ret_date` varchar(100) NOT NULL,
  `ret_time` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `taluka` varchar(100) NOT NULL,
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

INSERT INTO `booking` (`booking_id`, `name`, `username`, `type`, `peoples`, `req_date`, `req_time`, `ret_date`, `ret_time`, `district`, `taluka`, `resons`, `email`, `mobile`, `confirmation`, `veh_reg`, `driverid`, `finished`, `paid`) VALUES
(60, 'dhiraj', 'mihaf24', 'hotel', 0, '08/02/2022', '6 : 59 PM', '08/04/2022', '6 : 59 PM', 'amravati', 'nangaon', '', 'dhiraj@gmail.com', 1234567890, 1, 'cho- 301294', 21, 0, 1),
(63, 'suraj', 'mihaf24', 'house', 2, '08/03/2022', '11 : 09 AM', '08/05/2022', '11 : 09 AM', 'pune', 'nigdi', 'timepass', 'suraj@gmail.com', 54656, 0, '', 0, 0, 0),
(64, 'difa patil', 'difapatil', 'house', 5, '08/03/2022', '7 : 12 PM', '08/05/2022', '7 : 12 PM', 'dhd', 'hg', 'yf', 'difa@gmail.com', 0, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotelid` int(11) NOT NULL,
  `hotelname` varchar(255) NOT NULL,
  `hotelregisterdate` varchar(255) NOT NULL,
  `hotelcontactnumber` varchar(20) NOT NULL,
  `hotellicense` varchar(30) NOT NULL,
  `hoteladdress` varchar(255) NOT NULL,
  `hotelphoto` varchar(30) NOT NULL,
  `dr_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotelid`, `hotelname`, `hotelregisterdate`, `hotelcontactnumber`, `hotellicense`, `hoteladdress`, `hotelphoto`, `dr_available`) VALUES
(36, 'Imperial ', '08/05/2022', '1234567810', '351f351n3fg51h', ' \r\npanchavati, nashik\r\n                     ', 'img2.jpg', 0),
(37, 'aasara', '08/04/2022', '8855223366', '123-456-456', ' \r\n\r\n             Kedarnath, Uttarakhand        ', 'aasara.jpg', 0),
(38, 'Aastha', '08/05/2022', '4561237898', '456-123-789', ' \r\nDevprayag\r\n                     ', 'img0.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hotel2`
--

CREATE TABLE `hotel2` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `hotel_contact_number` int(10) NOT NULL,
  `hotel_regester_date` date NOT NULL,
  `hotel_license_number` int(11) NOT NULL,
  `hotel_address` varchar(255) CHARACTER SET latin1 NOT NULL,
  `hotel_photo` blob NOT NULL,
  `hotel_avaliable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel2`
--

INSERT INTO `hotel2` (`hotel_id`, `hotel_name`, `hotel_contact_number`, `hotel_regester_date`, `hotel_license_number`, `hotel_address`, `hotel_photo`, `hotel_avaliable`) VALUES
(5, 'radheshyam', 1236547899, '0000-00-00', 123, ' \r\n\r\n             kedharnath, uttarakhand        ', 0x696d6731362e6a7067, 0),
(7, 'Abhi Ganga', 2147483647, '0000-00-00', 123, ' 101, Vidhya vihar colony, Kankhal, Haridwar\r\n\r\n                     ', 0x416268692067616e67612e6a7067, 0),
(10, 'Royal Plaza ', 2147483647, '0000-00-00', 123, ' opposite BHEL Turn,Near statue Prithivi Raj chauha, Vill.Bahadrabad\r\n\r\n                     ', 0x6161736172612e6a7067, 0);

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `veh_id` int(11) NOT NULL,
  `housename` varchar(100) NOT NULL,
  `houseregisterdate` varchar(255) NOT NULL,
  `veh_photo` varchar(255) NOT NULL,
  `veh_available` int(11) NOT NULL,
  `houseaddress` int(11) NOT NULL,
  `housecontactnumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`veh_id`, `housename`, `houseregisterdate`, `veh_photo`, `veh_available`, `houseaddress`, `housecontactnumber`) VALUES
(40, '', ' Housde No.6, Kedarnath', 'img24.jpg', 0, 0, 0),
(41, '', ' Housde No.6, Kedarnath', 'img24.jpg', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `house2`
--

CREATE TABLE `house2` (
  `house_id` int(11) NOT NULL,
  `house_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `house_regester_date` varchar(255) CHARACTER SET latin1 NOT NULL,
  `house_contact_number` int(10) NOT NULL,
  `house_address` varchar(255) CHARACTER SET latin1 NOT NULL,
  `house_photo` blob NOT NULL,
  `house_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `house2`
--

INSERT INTO `house2` (`house_id`, `house_name`, `house_regester_date`, `house_contact_number`, `house_address`, `house_photo`, `house_available`) VALUES
(7, 'Govindam home stay', '08/18/2022', 2147483647, ' GOVINDAM H. NO. 50 , LANE NO. 7 BILKESHWAR COLONY , Haridwar\r\n\r\n                     ', 0x476f76696e64616d20686f6d6520737461792e6a7067, 0),
(8, 'Amrit Bhavan', '08/11/2022', 2147483647, 'Amrit Bhawan Sanyas Marg, Kankhal', 0x416d7269742062686176616e2e6a7067, 0),
(9, 'Agrawal Home', '08/13/2022', 2147483647, 'Hajari Bagh, Kankhal, Haridwar', 0x4167726177616c20686f6d652e6a7067, 0);

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
(20, '52', 'fahad', '10', '1000', '10', '1010', 1);

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
(14, 'rakibul', 'hoque', 'rakib@gmail.com', 'rakib24', '1234', 0),
(15, 'difa', 'patil', 'difa@gmail.com', 'difapatil', 'difapatil', 0),
(19, 'pratik', 'mirge', 'pratikmirge@gmail.com', 'pratik', 'pratik', 0);

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
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotelid`);

--
-- Indexes for table `hotel2`
--
ALTER TABLE `hotel2`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`veh_id`);

--
-- Indexes for table `house2`
--
ALTER TABLE `house2`
  ADD PRIMARY KEY (`house_id`);

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
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotelid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `hotel2`
--
ALTER TABLE `hotel2`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `house`
--
ALTER TABLE `house`
  MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `house2`
--
ALTER TABLE `house2`
  MODIFY `house_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tripcost`
--
ALTER TABLE `tripcost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
