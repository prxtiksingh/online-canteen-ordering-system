-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 12:58 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `canteen2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cancel_order`
--

CREATE TABLE `cancel_order` (
  `id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `fquant` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cancel_order`
--

INSERT INTO `cancel_order` (`id`, `fid`, `fquant`, `subtotal`, `user`) VALUES
(1, 16, 1, 110, 35),
(2, 16, 1, 110, 36),
(3, 4, 1, 50, 36),
(4, 17, 1, 150, 36),
(5, 16, 1, 110, 37),
(6, 8, 1, 30, 37),
(7, 2, 1, 50, 34),
(8, 10, 1, 35, 34),
(9, 6, 1, 25, 34);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `food_quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_title`) VALUES
(1, 'Breakfast'),
(2, 'Lunch'),
(4, 'Burger'),
(5, 'Beverage'),
(6, 'Desserts'),
(10, 'Fries');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `veg_nonveg` varchar(15) NOT NULL,
  `food_img` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `category`, `food_name`, `veg_nonveg`, `food_img`, `price`, `quantity`) VALUES
(1, 4, 'Chicken Maharaja Burger', 'nonveg', 'burger_1.png', 100, 1),
(2, 4, 'Veg Maharaja Burger', 'veg', 'burger_2.png', 50, 15),
(3, 4, 'Veg Burger', 'veg', 'burger_3.png', 25, 7),
(4, 5, 'Strawberry Shake', 'veg', 'bev_1.png', 50, 4),
(5, 5, 'Cold Coffee', 'veg', 'bev_2.png', 50, 13),
(6, 5, 'Coke Float', 'veg', 'bev_3.png', 25, 7),
(7, 5, 'Tea', 'veg', 'bev_4.png', 10, 90),
(8, 6, 'Red Pastry', 'veg', 'des_1.png', 30, 14),
(9, 6, 'Oreo Dessert', 'veg', 'des_2.png', 50, 9),
(10, 6, 'Chocolate Cream', 'veg', 'des_3.png', 35, 29),
(13, 4, 'Chicken Cheese Burger', 'nonveg', 'burger_5.png', 125, 18),
(16, 4, 'Veg Cheese Burger', 'veg', 'burger_6.png', 110, 13),
(17, 2, 'Chicken Lunch Meal', 'nonveg', 'lunch_1.png', 150, 24),
(18, 2, 'Veg Lunch Meal', 'veg', 'lunch_2.png', 130, 28),
(19, 1, 'Chicken Breakfast', 'nonveg', 'breakfast_1.png', 80, 29),
(20, 1, 'Chicken Cheese Breakfast', 'nonveg', 'breakfast_2.png', 90, 30),
(23, 1, 'Veg Breakfast', 'veg', 'breakfast_3.png', 65, 28),
(24, 10, 'French Fries', 'veg', 'fries.png', 75, 35);

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `hero` (
  `hero_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`hero_id`, `cat_id`, `image`) VALUES
(11, 1, 'Offer1.jpeg'),
(12, 2, 'Offer2.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `ord_detail_id` int(11) NOT NULL,
  `order_master_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `food_quantity` int(11) NOT NULL,
  `food_subtotal` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `order_placed_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`ord_detail_id`, `order_master_id`, `food_id`, `food_quantity`, `food_subtotal`, `user_id`, `status`, `order_placed_at`) VALUES
(1, 1, 24, 2, 120, 34, 1, '2018-10-07 16:11:11'),
(2, 1, 17, 1, 150, 34, 1, '2018-10-07 16:11:11'),
(3, 2, 5, 1, 50, 35, 1, '2018-10-07 16:11:48'),
(4, 2, 8, 1, 30, 35, 1, '2018-10-07 16:11:48'),
(5, 3, 16, 1, 110, 35, 2, '2018-10-07 16:12:17'),
(6, 4, 18, 1, 130, 34, 1, '2018-10-07 16:27:29'),
(7, 4, 3, 4, 100, 34, 1, '2018-10-07 16:27:29'),
(8, 5, 2, 1, 50, 34, 1, '2018-10-07 16:31:09'),
(9, 5, 13, 2, 250, 34, 1, '2018-10-07 16:31:09'),
(10, 6, 10, 3, 105, 34, 1, '2018-10-07 17:20:12'),
(11, 6, 24, 1, 60, 34, 1, '2018-10-07 17:20:12'),
(12, 7, 2, 1, 50, 34, 1, '2018-10-07 19:00:54'),
(13, 7, 8, 1, 30, 34, 1, '2018-10-07 19:00:54'),
(14, 8, 16, 1, 110, 36, 2, '2018-10-07 20:08:48'),
(15, 8, 4, 1, 50, 36, 2, '2018-10-07 20:08:48'),
(16, 9, 24, 1, 60, 36, 1, '2018-10-07 20:10:11'),
(17, 10, 17, 1, 150, 36, 2, '2018-10-07 20:33:55'),
(18, 11, 16, 1, 110, 37, 2, '2018-10-08 07:49:53'),
(19, 11, 8, 1, 30, 37, 2, '2018-10-08 07:49:53'),
(20, 12, 10, 1, 35, 37, 1, '2018-10-08 07:50:20'),
(21, 13, 2, 1, 50, 34, 2, '2018-10-08 09:47:51'),
(22, 13, 10, 1, 35, 34, 2, '2018-10-08 09:47:51'),
(23, 13, 6, 1, 25, 34, 2, '2018-10-08 09:47:51'),
(24, 14, 4, 1, 50, 34, 1, '2018-10-08 09:48:49'),
(25, 15, 5, 1, 50, 34, 1, '2018-10-08 10:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `order_master_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `order_placed_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`order_master_id`, `user_id`, `total`, `order_placed_time`) VALUES
(1, 34, 270, '2018-10-07 16:11:11'),
(2, 35, 80, '2018-10-07 16:11:48'),
(3, 35, 110, '2018-10-07 16:12:17'),
(4, 34, 230, '2018-10-07 16:27:28'),
(5, 34, 300, '2018-10-07 16:31:09'),
(6, 34, 165, '2018-10-07 17:20:12'),
(7, 34, 80, '2018-10-07 19:00:54'),
(8, 36, 160, '2018-10-07 20:08:48'),
(9, 36, 60, '2018-10-07 20:10:11'),
(10, 36, 150, '2018-10-07 20:33:54'),
(11, 37, 140, '2018-10-08 07:49:53'),
(12, 37, 35, '2018-10-08 07:50:20'),
(13, 34, 110, '2018-10-08 09:47:51'),
(14, 34, 50, '2018-10-08 09:48:49'),
(15, 34, 50, '2018-10-08 10:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `order_notification`
--

CREATE TABLE `order_notification` (
  `notif_id` int(11) NOT NULL,
  `food_quantity` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `food_subtotal` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_completed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_notification`
--

INSERT INTO `order_notification` (`notif_id`, `food_quantity`, `food_id`, `food_subtotal`, `user_id`, `order_completed_at`) VALUES
(1, 1, 5, 50, 35, '2018-10-07 16:16:18'),
(2, 1, 8, 30, 35, '2018-10-07 16:16:23'),
(14, 1, 10, 35, 37, '2018-10-08 07:51:24'),
(16, 1, 5, 50, 34, '2018-10-08 10:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `food_id` int(11) NOT NULL,
  `rating` int(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `food_id`, `rating`, `user_id`, `review_time`) VALUES
(1, 1, 4, 34, '2018-10-07 10:03:06'),
(2, 23, 3, 34, '2018-10-07 21:06:18'),
(3, 2, 3, 34, '2018-10-08 09:44:18'),
(4, 6, 3, 34, '2018-10-08 09:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phno` varchar(11) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `password`, `phno`, `role`) VALUES
(33, 'Super', 'Admin', 'pratiksingh.kr@gmail.com', '$2y$10$qswXd7A8VdKMZhbowSypeuHKkGO2Z3QYH0rtOVW/o4PcbSM4LqY7a', '9987045129', 1),
(34, 'Pratik', 'Singh', 'pratik4android@gmail.com', '$2y$10$0vv7DVYHQ3Yg4m65XXMQk.XqAi7AXTRA1py0MQ6XbVRBiDayOhrw.', '9987045118', 0),
(35, 'Vinay', 'Vishwanath', 'vinayvishy1098@gmail.com', '$2y$10$nTGz.OxgexiNH08ITb6fHulAGxU4sekwJ9kzkLwHa5ojvGBvASkCe', '9930692138', 0),
(36, 'Issac', 'Newton', 'ps.decode@gmail.com', '$2y$10$MK0HjQaGWaWKquqMMCYUkumc5p9stoEODAH2fq1nP/vl6Zl0UR.by', '9987654332', 0),
(37, 'Thomas', 'Edison', 'vvvinayrocks@gmail.com', '$2y$10$RYQMvou1rN4gryPk67qxiulR8IFbx8sPTt.T4V4IizkAvufq7pi7K', '9987045667', 0),
(38, 'singh', 'p', 'iambatmanadarkknight@gmail.com', '$2y$10$gjrqXZRl5xBOuv/.7U5jr.JjdOMKf5DxuVWfV25x/0M5vmE5H1.5a', '9987045189', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cancel_order`
--
ALTER TABLE `cancel_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`hero_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`ord_detail_id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`order_master_id`);

--
-- Indexes for table `order_notification`
--
ALTER TABLE `order_notification`
  ADD PRIMARY KEY (`notif_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cancel_order`
--
ALTER TABLE `cancel_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `hero`
--
ALTER TABLE `hero`
  MODIFY `hero_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `ord_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `order_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_notification`
--
ALTER TABLE `order_notification`
  MODIFY `notif_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
