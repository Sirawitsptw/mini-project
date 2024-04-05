-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2023 at 10:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `shopcustomer`
--

CREATE TABLE `shopcustomer` (
  `ttlist` int(5) NOT NULL,
  `ttprice` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `shopcustomer`
--

INSERT INTO `shopcustomer` (`ttlist`, `ttprice`, `name`, `email`, `phone`, `location`) VALUES
(3, 14600, 'sadad', 'sadsad@gmail.com', 12121, 'sadasd'),
(5, 18500, 'lop', 'lop@gmail.com', 1234, '65656'),
(0, 0, 'ttt', 'tyu@gmail.com', 2313, '65t'),
(1, 4700, 'ty', 'opo@gmail.com', 9988, 'oplfa'),
(1, 3700, '22', '22', 22, '22'),
(3, 9500, '33', '33', 33, '33'),
(3, 19800, 'sadad', '232', 2323232, '23232323'),
(4, 17400, '444', '444', 44, '44'),
(3, 18000, '55', '55', 55, '55');

-- --------------------------------------------------------

--
-- Table structure for table `shoplist`
--

CREATE TABLE `shoplist` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `date_add` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `shoplist`
--

INSERT INTO `shoplist` (`product_id`, `product_name`, `product_price`, `date_add`) VALUES
(1, 'A', '4300', '2023-10-18'),
(2, 'B', '3700', '2023-10-18'),
(3, 'C', '6600', '2023-10-18'),
(4, 'D', '6000', '2023-10-18'),
(5, 'E', '6000', '2023-10-18'),
(6, 'F', '3600', '2023-10-18'),
(7, 'G', '2900', '2023-10-18'),
(8, 'H', '2100', '2023-10-18'),
(9, 'I', '6600', '2023-10-18'),
(10, 'J', '4700', '2023-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `shopprice`
--

CREATE TABLE `shopprice` (
  `A` int(5) NOT NULL,
  `B` int(5) NOT NULL,
  `C` int(5) NOT NULL,
  `D` int(5) NOT NULL,
  `E` int(5) NOT NULL,
  `F` int(5) NOT NULL,
  `G` int(5) NOT NULL,
  `H` int(5) NOT NULL,
  `I` int(5) NOT NULL,
  `J` int(5) NOT NULL,
  `ttlist` int(5) NOT NULL,
  `ttprice` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `shopprice`
--

INSERT INTO `shopprice` (`A`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `J`, `ttlist`, `ttprice`, `name`, `email`, `phone`, `location`) VALUES
(4300, 3700, 6600, 6000, 6000, 3600, 2900, 2100, 6600, 4700, 0, 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(1, 'sirawit', 'palmsirawitpalm@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'hello', 'hello@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shoplist`
--
ALTER TABLE `shoplist`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shoplist`
--
ALTER TABLE `shoplist`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
