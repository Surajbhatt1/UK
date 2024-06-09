-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2022 at 04:07 PM
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
-- Database: `u`
--

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
(1, 'megha', 'garg', 'megha', 'Teacher', 'Student', 'meghagarg379@gmail.com', '55887744552', 'megha'),
(2, 'disha', 'bansal', 'disha', 'FEMALE', 'Admin', 'meghagarg379@gmail.com', '6699885544', 'disha'),
(3, 'suraj', 'bhatt', 'mca2123p', 'MALE', 'Tourist', 'aamerkhanak0802@gmail.com', '998564123', 'as'),
(4, 'pranav', 'mandvikar', 'pandu', 'MALE', 'Tourist', 'pandu@gmail.com', '8087565446', 'pandu'),
(5, 'suraj', 'bhatt', 'suraj', 'MALE', 'Tourist', 'surajbhatt122@gmail.com', '8879546325', 'bhatt'),
(7, 'pallavi', 'gadegone', 'pallavi123', 'FEMALE', 'Hotel', 'pallavigadegone@gmail.com', '9623527194', '12345'),
(10, 'suraj', 'bhatt', 'sbhatt', 'MALE', 'Hotel', 'suraj@gmail.com', '9865321478', 'suraj'),
(11, 'akhil', 'sirikar', 'asirikar', 'MALE', 'Hotel', 'akhil@gmail.com', '1234567895', 'akhil'),
(12, 'praveg', 'patil', 'ppatil', 'MALE', 'Homestay', 'praveg@gmail.com', '1245693254', 'praveg'),
(13, 'megha', 'garg', 'mgarg', 'FEMALE', 'Homestay', 'megha@gmail.com', '5412369874', 'megha'),
(14, 'Pallavi', 'gadegone', 'pallavi123', 'FEMALE', 'Tourist', 'pallavigadegone71@gmail.com', '6532147896', '12345'),
(15, 'vibha', 'doijode', 'vib', 'FEMALE', 'Hotel', 'vib@gmail.com', '1234567042', 'vib123'),
(16, 'kunal', 'bhagat', 'kbhagat', 'MALE', 'Taxi', 'kunal@gmail.com', '9845627134', 'kunal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
