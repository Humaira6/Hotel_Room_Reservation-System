-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 06:48 AM
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
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `mobileNumber` varchar(20) NOT NULL,
  `nationality` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `idProof` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `checkIn` varchar(50) NOT NULL,
  `roomNo` varchar(10) NOT NULL,
  `bed` varchar(100) NOT NULL,
  `roomType` varchar(200) NOT NULL,
  `pricePerDay` int(11) NOT NULL,
  `numberofDaysStay` int(11) DEFAULT NULL,
  `totalAmount` varchar(200) DEFAULT NULL,
  `checkout` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `mobileNumber`, `nationality`, `gender`, `email`, `idProof`, `address`, `checkIn`, `roomNo`, `bed`, `roomType`, `pricePerDay`, `numberofDaysStay`, `totalAmount`, `checkout`) VALUES
(1, 'Fahad', '0123456789', 'Bangladeshi', 'Male', 'fahad@gmail.com', 'ID56789', 'Khulna', '2023/01/03', '101', 'Single', 'AC', 5000, 1, '5000.0', '2023/01/03');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomNo` varchar(10) NOT NULL,
  `roomType` varchar(200) NOT NULL,
  `bed` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomNo`, `roomType`, `bed`, `price`, `status`) VALUES
('101', 'AC', 'Single', 5000, 'Not Booked');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `securityQuestions` varchar(500) NOT NULL,
  `answer` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `password`, `securityQuestions`, `answer`, `address`, `status`) VALUES
('Fariea', 'fariea@gmail.com', 'fariea', 'What is your favourite colour ?', 'black', 'Mirpur', 'false'),
('Humaira', 'humaira@gmail.com', 'humaira', 'What is your favorite color?\r\nWhat is your full name?', 'Red\r\nHumaira Gulshan Putul', 'Mirpur-1 Dhaka-1216', 'true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomNo`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
