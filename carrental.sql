-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2025 at 06:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_contact` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pickup_date` date NOT NULL,
  `return_date` date NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `car_id`, `user_name`, `user_contact`, `email`, `pickup_date`, `return_date`, `total_amount`, `booking_date`, `status`) VALUES
(20, 1, 'Rutvik', '8073369741', 'ruties4354@gmail.com', '2025-01-18', '2025-01-20', 46464.00, '2025-01-18 12:01:34', ''),
(21, 1, 'Rutvik', '8073369741', 'ruties4354@gmail.com', '2025-01-18', '2025-01-20', 46464.00, '2025-01-18 12:09:47', ''),
(22, 1, 'Rutvik', '8073369741', 'ruties4354@gmail.com', '2025-01-18', '2025-01-20', 46464.00, '2025-01-18 12:16:58', ''),
(23, 1, 'Rutvik', '8073369741', 'ruties4354@gmail.com', '2025-01-18', '2025-01-20', 46464.00, '2025-01-18 12:17:37', ''),
(24, 11, 'Rutvik', '8073369741', 'ruties4354@gmail.com', '2025-01-24', '2025-01-30', 15000.00, '2025-01-18 15:18:36', ''),
(25, 11, 'Rutvik', '8073369741', 'ruties4354@gmail.com', '2025-01-24', '2025-01-30', 15000.00, '2025-01-18 15:20:04', ''),
(26, 11, 'Rutvik', '8073369741', 'ruties4354@gmail.com', '2025-01-24', '2025-01-30', 15000.00, '2025-01-18 15:25:03', ''),
(27, 11, 'Rutvik', '8073369741', 'ruties4354@gmail.com', '2025-01-24', '2025-01-30', 15000.00, '2025-01-18 15:26:26', ''),
(28, 13, 'Rutvik', '8073369741', 'ruties4354@gmail.com', '2025-01-31', '2025-02-06', 27000.00, '2025-01-18 16:04:16', ''),
(29, 13, 'Rutvik', '8073369741', 'ruties4354@gmail.com', '2025-01-31', '2025-02-06', 27000.00, '2025-01-18 16:05:38', ''),
(30, 14, 'Rutvik', '8073369741', 'ruties4354@gmail.com', '2025-01-18', '2025-02-01', 91000.00, '2025-01-18 16:18:45', ''),
(31, 15, 'vaishnavi', '888888', 'vh@gmail.com', '2025-01-21', '2025-01-31', 75000.00, '2025-01-20 06:41:52', ''),
(32, 17, 'vaishnavi', '888888', 'vh@gmail.com', '2025-01-21', '2025-01-26', 22500.00, '2025-01-20 06:43:48', ''),
(33, 16, 'vaishnavi', '888888', 'vh@gmail.com', '2025-01-23', '2025-01-30', 70000.00, '2025-01-20 08:31:59', ''),
(34, 18, 'Rutvik', '8073369741', 'ruties4354@gmail.com', '2025-01-22', '2025-01-21', -5400.00, '2025-01-20 08:33:06', ''),
(35, 19, 'kavya', '973112', 'kk@gmail.com', '2025-01-20', '2025-01-31', 27500.00, '2025-01-20 08:37:27', ''),
(36, 22, 'yasmeen', '1112221112', 'yn@gmail.com', '2025-01-21', '2025-01-25', 100000.00, '2025-01-20 10:23:12', ''),
(37, 27, 'kavya', '787788787', 'kbb@gmail.com', '2025-01-21', '2025-01-25', 10000.00, '2025-01-20 10:25:31', ''),
(38, 21, 'kavya', '1112221112', 'kbb@gmail.com', '2025-01-22', '2025-02-01', 30000.00, '2025-01-21 01:49:39', ''),
(39, 21, 'kavya', '1112221112', 'kbb@gmail.com', '2025-01-22', '2025-02-01', 30000.00, '2025-01-21 01:52:23', ''),
(40, 21, 'kavya', '1112221112', 'kbb@gmail.com', '2025-01-22', '2025-02-01', 30000.00, '2025-01-21 01:53:26', ''),
(41, 21, 'kavya', '1112221112', 'kbb@gmail.com', '2025-01-22', '2025-02-01', 30000.00, '2025-01-21 01:53:30', ''),
(42, 21, 'kavya', '1112221112', 'kbb@gmail.com', '2025-01-22', '2025-02-01', 30000.00, '2025-01-21 01:57:37', ''),
(43, 21, 'kavya', '1112221112', 'kbb@gmail.com', '2025-01-22', '2025-02-01', 30000.00, '2025-01-21 01:58:53', ''),
(44, 21, 'kavya', '1112221112', 'kbb@gmail.com', '2025-01-22', '2025-02-01', 30000.00, '2025-01-21 02:00:19', 'Confirmed'),
(45, 23, 'shashikala', '78878787', 'sh@gmail.com', '2025-01-22', '2025-01-31', 40500.00, '2025-01-21 02:35:43', 'Confirmed'),
(46, 25, 'kavya', '77887878787', 'kbb@gmail.com', '2025-01-22', '2025-01-31', 270000.00, '2025-01-21 02:37:54', 'Confirmed'),
(47, 1, 'kavya', '77887878787', 'kbb@gmail.com', '2025-01-22', '2025-01-30', 185856.00, '2025-01-21 10:04:41', 'Confirmed'),
(48, 11, 'st', '8088457848', 'stphotoandfilms@gmail.com', '2025-01-24', '2025-01-24', 0.00, '2025-01-23 15:31:07', 'pending'),
(49, 11, 'st', '8088457848', 'stphotoandfilms@gmail.com', '2025-01-24', '2025-01-24', 0.00, '2025-01-23 15:31:55', 'pending'),
(50, 11, 'st', '8088457848', 'stphotoandfilms@gmail.com', '2025-01-24', '2025-01-24', 0.00, '2025-01-23 15:32:08', 'pending'),
(51, 11, 'st', '8088457848', 'stphotoandfilms@gmail.com', '2025-01-24', '2025-01-24', 0.00, '2025-01-23 15:32:57', 'Confirmed'),
(52, 13, 'santosh', '9480717738', 'sm@gmail.com', '2025-01-24', '2025-01-25', 4500.00, '2025-01-23 15:41:35', 'pending'),
(53, 13, 'santosh', '9480717738', 'sm@gmail.com', '2025-01-24', '2025-01-25', 4500.00, '2025-01-23 15:43:58', 'pending'),
(54, 13, 'santosh', '9480717738', 'sm@gmail.com', '2025-01-24', '2025-01-25', 4500.00, '2025-01-23 15:45:17', 'pending'),
(55, 14, 'santosh', '9480717738', 'sm@gmail.com', '2025-02-04', '2025-02-05', 6500.00, '2025-02-03 01:42:45', 'pending'),
(56, 16, 'yasmeen', '45646564664', 'so@lngkdval.com', '2025-02-20', '2025-02-22', 20000.00, '2025-02-19 15:50:47', 'pending'),
(57, 15, 'yasmeen', '45646564664', 'rutvikmathapati.rm@gmail.com', '2025-02-21', '2025-02-23', 15000.00, '2025-02-21 15:43:53', 'pending'),
(58, 15, 'yasmeen', '45646564664', 'rutvikmathapati.rm@gmail.com', '2025-02-21', '2025-02-23', 15000.00, '2025-02-21 15:58:21', 'pending'),
(59, 18, 'rutvik', '8073369741', 'ruties4354@gmail.com', '2025-03-29', '2025-03-30', 5400.00, '2025-03-29 04:55:42', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_name` varchar(100) NOT NULL,
  `car_model` varchar(100) NOT NULL,
  `car_image` varchar(100) NOT NULL,
  `car_id` int(8) NOT NULL,
  `license_plate` varchar(20) NOT NULL,
  `status` enum('available','rented','maintenance','booked') DEFAULT 'available',
  `rental_rate` decimal(10,2) NOT NULL,
  `car_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_name`, `car_model`, `car_image`, `car_id`, `license_plate`, `status`, `rental_rate`, `car_type`, `created_at`) VALUES
('rutvik', '2012', 'IMG_2127.JPG', 1, 'kakakak', 'rented', 23232.00, 'www', '2025-01-17 13:55:26'),
('jhbj', 'hjb', 'bg.jpg', 11, 'hbuu', 'rented', 2500.00, 'bc', '2025-01-17 09:29:30'),
('Mercedes Benz', 'A class limousin', 'aclasslimousinemercedesbenzaclasslimousinerightfrontthreequarter13.jpeg', 13, 'MH 14 TCL 241A', 'booked', 4500.00, 'sedan', '2025-01-07 16:10:38'),
('Mercedes Benz', 'AMG', 'amgsl55roadsteramgsl55roadsterrightfrontthreequarter (1).jpeg', 14, 'MH 14 TCL 241B', 'booked', 6500.00, 'open top', '2025-01-07 16:12:54'),
('BMW ', 'M3', 'bmw-22428.png', 15, 'KA 01 K 0001', 'booked', 7500.00, 'sedan', '2025-01-07 16:13:57'),
('Bently ', 'E1', 'car1.jpg', 16, 'KA 01 Q 1212', 'booked', 10000.00, 'sedan', '2025-01-07 16:15:24'),
('Honda ', 'City', 'citycityrightfrontthreequarter.jpeg', 17, 'KA 25 ME 1542', 'available', 4500.00, 'sedan', '2025-01-07 16:17:18'),
('Hyundai ', 'Creta', 'creta2.jpeg', 18, 'KA 25 MK 4545', 'booked', 5400.00, 'suv', '2025-01-07 16:18:08'),
('Suzuki', 'Eco Sports', 'eecoeecorightsideview.png', 19, 'KA 01 EM 4144', 'available', 2500.00, 'Mini van', '2025-01-07 16:19:05'),
('Suzuki', 'Ertiga', 'ertiga1.jpeg', 21, 'KA 23 N 1965', 'available', 3000.00, 'suv', '2025-01-07 17:05:57'),
('Mercedes Benz', 'G-wagon', 'gclasswitheqpowergclasswitheqpowerleftfrontthreequarter.jpeg', 22, 'MKW 455 R', 'available', 25000.00, 'suv', '2025-01-07 17:33:31'),
('Chevrolet', 'Mini', 'minivan.jpg', 23, 'KL 20 M 7474', 'available', 4500.00, 'Van', '2025-01-07 17:35:04'),
('Ford Mustang', '2017', 'mustang.jpg', 24, 'KA 01 RM 0001', 'available', 25000.00, 'Coupe', '2025-01-08 02:59:36'),
(' Porsche 911', '2024', 'porsche.jpg', 25, 'KA 01 ZX 0002', 'available', 30000.00, 'Coupe', '2025-01-08 03:01:16'),
('Ferrari Portofino', '2023', 'portofinoportofinoleftsideview.jpeg', 26, 'KA 03 ME 0007', 'available', 30000.00, 'convertable', '2025-01-08 03:03:34'),
('Land Rover Range Rover Velar', '2025', 'rangerovervelarrangerovervelarrightfrontthreequarter.jpeg', 27, 'KA 25 MR 1001', 'available', 2500.00, 'SUV', '2025-01-08 03:06:15'),
('Nissan Skyline GT-R', '2016', 'sportscarbg.jpg', 28, 'MH 01 N 0111', 'available', 25000.00, 'Sports', '2025-01-08 03:09:16'),
('Toyota Supra', '2016', 'supra.jpg', 29, 'HR 26 EN 0077', 'available', 30000.00, 'Sports', '2025-01-08 03:10:45'),
('Suzuki Swift', '2024', 'swift.jpg', 30, 'KA 23 N 9654', 'available', 1250.00, 'Hatchback', '2025-01-08 03:13:23'),
('Mahindra Thar', '2024', 'thar.jpeg', 32, 'KA 25 MV 8085', 'available', 4500.00, 'SUV', '2025-01-08 03:15:43'),
('Toyota HighLander', '2025', 'toyota highlander2.png', 33, 'KA 22 MC 2525', 'available', 5600.00, 'SUV', '2025-01-08 03:17:04'),
('Hyundai Verna', '2024', 'vernavernafaceliftrightfrontthreequarter.jpeg', 34, 'KA 23 EX 1235', 'available', 3500.00, 'sedan', '2025-01-08 03:18:43'),
('Volswagon Virtus', '2024', 'virtusvolkswagenvirtusrightfrontthreequarter0.jpeg', 35, 'KA 65 MC 1452', 'available', 2500.00, 'Hatchback', '2025-01-08 03:19:51'),
('BMW M5', '2024', 'z4z4leftfrontthreequarter (1).jpeg', 37, 'MEW4587A', 'available', 25000.00, 'open top', '2025-01-08 03:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `enquirybookings`
--

CREATE TABLE `enquirybookings` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_contact` varchar(15) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `pickup_date` date NOT NULL,
  `return_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquirybookings`
--

INSERT INTO `enquirybookings` (`id`, `user_name`, `email`, `user_contact`, `car_name`, `location`, `pickup_date`, `return_date`, `created_at`) VALUES
(1, 'Rutvik', 'ruties4354@gmail.com', '8073369741', 'Toyota Yaris', 'Gadag', '2025-01-18', '2025-01-19', '2025-01-17 15:30:47'),
(2, 'rm', 'rm@gmail.com', '4545', 'Maruti Suzuki Baleno', 'Bangalore Urban', '2025-01-17', '2025-01-25', '2025-01-17 15:39:33'),
(3, 'rm', 'rm@gmail.com', '4545', 'Maruti Suzuki Baleno', 'Bangalore Urban', '2025-01-17', '2025-01-25', '2025-01-17 15:49:00'),
(4, 'rm', 'rm@gmail.com', '4545', 'Maruti Suzuki Baleno', 'Bangalore Urban', '2025-01-17', '2025-01-25', '2025-01-17 15:51:21'),
(5, 'rm', 'rm@gmail.com', '4545', 'Maruti Suzuki Baleno', 'Bangalore Urban', '2025-01-17', '2025-01-25', '2025-01-17 15:52:52'),
(6, 'rm', 'rm@gmail.com', '4545', 'Maruti Suzuki Baleno', 'Bangalore Urban', '2025-01-17', '2025-01-25', '2025-01-17 15:53:36'),
(7, 'w', 'w@g', 'w', 'Tata Nexon', 'Haveri', '2025-01-07', '2025-01-28', '2025-01-17 15:54:04'),
(8, 'vaishnavi', 'vh@gmail.com', '808088088', 'Hyundai Grand i10 Nios', 'Bangalore Urban', '2025-01-21', '2025-01-28', '2025-01-20 06:35:16'),
(9, 'vaishnavi', 'vh@gmail.com', '1321321', 'Kia Seltos', 'Bangalore Urban', '2025-01-28', '2025-01-31', '2025-01-20 10:27:06');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `payment_amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `payment_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `booking_id`, `payment_amount`, `payment_date`, `payment_status`) VALUES
(1, 44, 30000, '2025-01-21', 'Paid'),
(2, 44, 30000, '2025-01-21', 'Paid'),
(3, 44, 30000, '2025-01-21', 'Paid'),
(4, 45, 40500, '2025-01-21', 'Paid'),
(5, 46, 270000, '2025-01-21', 'Paid'),
(6, 47, 185856, '2025-01-21', 'Paid'),
(7, 51, 0, '2025-01-23', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `utype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`username`, `password`, `utype`) VALUES
('owner', '123', 'owner'),
('customer', '123123', 'customer'),
('sujay@gmail.com', '9988776655', 'user'),
('rm1@gmail.com', '123456', 'customer'),
('yasmeen', '123', 'customer'),
('kavya', '123', 'customer'),
('vaish', '321', 'customer'),
('mark', '123', 'customer'),
('add1', '123', 'customer'),
('add1', '123', 'customer'),
('add1', '123', 'customer'),
('add1', '123', 'customer'),
('add1', '123', 'customer'),
('add1', '123', 'customer'),
('add1', '123', 'customer'),
('uig', '123', 'customer'),
('owner1', '123', 'owner'),
('owner1', '123', 'owner');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `utype` enum('owner','customer') DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `utype`) VALUES
(3, 'vaishnavi', 'vh@gmail.com', '123', 'customer'),
(4, 'spurti', 's@gmail.com', '123', 'customer'),
(5, 'vaish', 'vh@gmail.com', '321', 'customer'),
(6, 'mark', 'mark@gmail.com', '123', 'customer'),
(7, 'add1', 'add@gmail.com', '123', 'customer'),
(8, 'add1', 'add@gmail.com', '123', 'customer'),
(9, 'add1', 'add@gmail.com', '123', 'customer'),
(10, 'add1', 'add@gmail.com', '123', 'customer'),
(11, 'add1', 'add@gmail.com', '123', 'customer'),
(12, 'add1', 'add@gmail.com', '123', 'customer'),
(13, 'add1', 'add@gmail.com', '123', 'customer'),
(14, 'uig', 'huhu@gg.com', '123', 'customer'),
(15, 'owner1', 'owner@gail.com', '123', 'owner'),
(16, 'owner1', 'owner@gmail.com', '123', 'owner');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `enquirybookings`
--
ALTER TABLE `enquirybookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `enquirybookings`
--
ALTER TABLE `enquirybookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
