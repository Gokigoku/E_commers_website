-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2023 at 10:54 AM
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
-- Database: `ecommers_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `status`) VALUES
(1, 'Gokul', '2597bd1776c82eb1367599706579d337a0682cc7d7bfb09d4fa7b325652c57bd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `clicks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `date`, `clicks`) VALUES
(1, '2023-09-05', 4),
(2, '2023-09-07', 1),
(3, '2023-09-15', 2),
(4, '2023-09-25', 1),
(5, '2023-09-29', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contact_data`
--

CREATE TABLE `contact_data` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `query` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_data`
--

INSERT INTO `contact_data` (`id`, `customer_name`, `email`, `phone_no`, `query`, `date`) VALUES
(7, 'Gokul', 'gokidraku2478@gmail.com', '9353506475', 'i want more than 10 items with diffent specification', '2023-09-27'),
(8, 'Gokul', 'gokidraku2478@gmail.com', '9353506475', 'i want more than 10 items with diffent specification', '2023-09-27'),
(9, 'Gokul', 'gokidraku2478@gmail.com', '9353506475', 'i want more than 10 items with diffent specification', '2023-09-27'),
(10, 'Gokul', 'gokidraku2478@gmail.com', '9353506475', 'i want more than 10 items with diffent specification', '2023-09-28'),
(11, 'Gokul', 'gokidraku2478@gmail.com', '9353506475', 'i want more than 10 items with diffent specification', '2023-09-29'),
(12, 'Gokul', 'gokidraku2478@gmail.com', '9353506475', 'i want more than 10 items with diffent specification', '2023-09-29'),
(13, 'Gokul', 'gokigoku2478@gmail.com', '9353516575', 'i want more than 10 items with diffent specification with diffrent color', '2023-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `order_placed`
--

CREATE TABLE `order_placed` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `date` date NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_placed`
--

INSERT INTO `order_placed` (`id`, `name`, `email`, `phone_no`, `address1`, `address2`, `date`, `order_id`) VALUES
(1, 'Gokul kr', 'gokigoku2810@gmail.com', '9353506475', 'address 1', 'address 2', '2023-09-06', 1),
(2, 'Bharath ', 'bharathbari2810@gmail.com', '9876543210', 'Shimmoga', 'Karnataka', '2023-09-06', 1),
(3, 'Rakesh', 'rakeshraki@gmail.com', '6789012345', 'Shikaripura', 'Shimoga', '2023-09-06', 1),
(4, 'Ajith', 'akr1234@gmail.com', '9123456789', 'Bengaluru', 'Karnataka', '2023-09-07', 1),
(5, 'Sonia', 'soniagandhi345@gmail.com', '9678901234', 'Dheli', 'India', '2023-09-07', 2147483647),
(13, 'RenuGopal', 'knrenugopal@gmail.com', '8901234567', 'Shikaripura', 'Karnataka', '2023-09-07', 42738),
(14, 'Ragu', 'raguragi@gmail.com', '9012345678', 'Dhei', 'India', '2023-09-07', 82164),
(15, 'rakesh', 'rakeshraki2345@gmail.com', '9087654321', 'shikaripura', 'shivamoga', '2023-09-23', 39433),
(16, 'Gokul', 'gokigoku2810@gmail.com', '9353506475', 'Shikaripura', 'Shivamoga', '2023-09-24', 36711),
(17, 'sujan ', 'gokigoku2810@gmail.com', '9087654321', 'shilnjmj', 'jldldhufsfggdb', '2023-09-25', 74297),
(18, 'Adarsh', 'example@gmail.com', '1234567890', '123 Main Street', '', '2023-09-27', 62478),
(19, 'Gokul', 'gokigoku2810@gmail.com', '9353506475', 'Shikaripura', 'Shivamoga', '2023-09-27', 48554),
(20, 'Gokul', 'gokigoku2810@gmail.com', '9353506475', 'Shikaripura', 'Shivamoga', '2023-09-28', 67837),
(21, 'Gokul', 'gokigoku2810@gmail.com', '9353506475', 'Shikaripura', 'Shivamoga', '2023-10-08', 71851),
(22, 'Gokul', 'gokigoku2810@gmail.com', '9353506475', 'Shikaripura', 'Shivamoga', '2023-11-07', 42332),
(23, 'Gokul', 'gokigoku2810@gmail.com', '9353506475', 'Shikaripura', 'Shivamoga', '2023-11-08', 71173),
(24, 'GokulandTeams', 'gokiteams', '9876543210', 'KIT,Tiptur', 'Tumkur', '2023-11-08', 33356);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_discription` text NOT NULL,
  `product_price` decimal(15,2) NOT NULL,
  `product_images` text NOT NULL,
  `product_key_feature` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_discription`, `product_price`, `product_images`, `product_key_feature`) VALUES
(1, 'Google Pixel 6a', 'Google Tensor, Google\'s made-to-order processor intended for Pixel, allows applications to open swiftly, websites and photos to load rapidly, and all of it to function seamlessly, enabling the 5G-ready Pixel 6a to be snappy and intuitive.', 25999.00, 'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/s/y/0/-original-imaggbrbxkqr3v3u.jpeg?q=70', '6 GB RAM | 128 GB ROM\n15.6 cm (6.14 inch) Full HD+ Display\n12.2MP + 12MP | 8MP Front Camera\n4410 mAh Battery\nGoogle Tensor Processor'),
(2, 'Google Pixel 6', 'Google Tensor, Google\'s made-to-order processor intended for Pixel, allows applications to open swiftly, websites and photos to load rapidly, and all of it to function seamlessly, enabling the 5G-ready Pixel 6 to be snappy and intuitive.', 29999.00, 'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/g/g/3/-original-imaggbrccwsnygar.jpeg?q=70', '8 GB RAM | 128 GB ROM\r\n15.6 cm (6.14 inch) Full HD+ Display\r\n12.2MP + 12MP | 8MP Front Camera\r\n4410 mAh Battery\r\nGoogle Tensor Processor'),
(3, 'Google Pixel 7', 'Google Tensor G2 makes the 5G-ready Pixel 7 faster, more efficient, and more secure and it delivers even more helpful features. Experience the best photo and video quality yet on Pixel enabling the 5G-ready Pixel 7 to be snappy and intuitive.', 48999.00, 'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/g/x/9/-original-imaggsudg5fufyte.jpeg?q=70', '<li>8 GB RAM | 128 GB ROM</li>\n                                        <li>15.49 cm (6.1 inch) Full HD+ Display</li>\n                                        <li>64MP (OIS) + 13MP | 13MP Front Camera</li>\n                                        <li>4300 mAh Battery</li>\n                                        <li>Tensor G2 Processor</li>'),
(4, 'Google Pixel 7a', 'Google Tensor G2 makes the 5G-ready Pixel 7a faster, more efficient, and more secure and it delivers even more helpful features. Experience the best photo and video quality yet on Pixel enabling the 5G-ready Pixel 7a to be snappy and intuitive.', 35999.00, 'https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/y/u/3/-original-imaggsuddwubypxp.jpeg?q=70', '6 GB RAM | 128 GB ROM\r\n16.0 cm (6.3 inch) Full HD+ Display\r\n50MP + 12MP | 10.8MP Front Camera\r\n4270 mAh Battery\r\nGoogle Tensor G2 Processor');

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(1, 1, '2023-09-05'),
(2, 1, '2023-09-05'),
(3, 1, '2023-09-05'),
(4, 1, '2023-09-05'),
(5, 1, '2023-09-05'),
(6, 1, '2023-09-05'),
(7, 1, '2023-09-05'),
(8, 1, '2023-09-05'),
(9, 1, '2023-09-05'),
(10, 1, '2023-09-05'),
(11, 1, '2023-09-05'),
(12, 1, '2023-09-05'),
(13, 2, '2023-09-05'),
(14, 2, '2023-09-05'),
(15, 2, '2023-09-05'),
(16, 2, '2023-09-05'),
(17, 1, '2023-09-05'),
(18, 2, '2023-09-05'),
(19, 1, '2023-09-05'),
(20, 1, '2023-09-07'),
(21, 3, '2023-09-07'),
(22, 3, '2023-09-07'),
(23, 1, '2023-09-11'),
(24, 4, '2023-09-11'),
(25, 2, '2023-09-11'),
(26, 2, '2023-09-11'),
(27, 1, '2023-09-11'),
(28, 3, '2023-09-11'),
(29, 3, '2023-09-11'),
(30, 2, '2023-09-15'),
(31, 1, '2023-09-15'),
(32, 3, '2023-09-15'),
(33, 4, '2023-09-15'),
(34, 3, '2023-09-15'),
(35, 3, '2023-09-15'),
(36, 2, '2023-09-15'),
(37, 3, '2023-09-15'),
(38, 4, '2023-09-15'),
(39, 2, '2023-09-15'),
(40, 1, '2023-09-15'),
(41, 3, '2023-09-15'),
(42, 4, '2023-09-15'),
(43, 3, '2023-09-15'),
(44, 2, '2023-09-15'),
(45, 1, '2023-09-15'),
(46, 1, '2023-09-15'),
(47, 1, '2023-09-15'),
(48, 1, '2023-09-15'),
(49, 2, '2023-09-15'),
(50, 3, '2023-09-15'),
(51, 4, '2023-09-15'),
(52, 2, '2023-09-16'),
(53, 2, '2023-09-16'),
(54, 2, '2023-09-16'),
(55, 1, '2023-09-23'),
(56, 2, '2023-09-23'),
(57, 3, '2023-09-23'),
(58, 4, '2023-09-23'),
(59, 1, '2023-09-23'),
(60, 2, '2023-09-23'),
(61, 3, '2023-09-23'),
(62, 4, '2023-09-23'),
(63, 3, '2023-09-23'),
(64, 2, '2023-09-23'),
(65, 1, '2023-09-23'),
(66, 2, '2023-09-23'),
(67, 1, '2023-09-23'),
(68, 2, '2023-09-23'),
(69, 1, '2023-09-23'),
(70, 3, '2023-09-23'),
(71, 1, '2023-09-23'),
(72, 2, '2023-09-23'),
(73, 3, '2023-09-23'),
(74, 4, '2023-09-23'),
(75, 3, '2023-09-23'),
(76, 1, '2023-09-24'),
(77, 1, '2023-09-25'),
(78, 3, '2023-09-26'),
(79, 1, '2023-09-26'),
(80, 3, '2023-11-07'),
(81, 2, '2023-11-07'),
(82, 2, '2023-11-07'),
(83, 3, '2023-11-07'),
(84, 4, '2023-11-07'),
(85, 1, '2023-11-07'),
(86, 1, '2023-11-08'),
(87, 1, '2023-11-08');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `visitor_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `date`, `visitor_count`) VALUES
(1, '2023-09-05', 16),
(2, '2023-09-07', 3),
(3, '2023-09-11', 50),
(4, '2023-09-15', 10),
(5, '2023-09-16', 20),
(6, '2023-09-23', 8),
(7, '2023-09-24', 14),
(8, '2023-09-25', 1),
(9, '2023-09-26', 14),
(10, '2023-09-27', 11),
(11, '2023-09-28', 3),
(12, '2023-09-29', 13),
(13, '2023-10-08', 2),
(14, '2023-11-07', 7),
(15, '2023-11-08', 3),
(16, '2023-12-01', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_data`
--
ALTER TABLE `contact_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_placed`
--
ALTER TABLE `order_placed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_data`
--
ALTER TABLE `contact_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_placed`
--
ALTER TABLE `order_placed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
