-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2025 at 12:30 PM
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
-- Database: `selecta`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `name`) VALUES
(1, 'Classic Super Thick'),
(2, 'Selecta Treats'),
(3, 'Selecta Birthday Treats'),
(4, 'Selecta 2-in-1'),
(5, 'Selecta Specialty Flavors');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(3) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `categoryID`, `name`, `price`, `description`, `code`, `image`) VALUES
(1, 1, 'Super Thick Mango', 349, 'Creamy mango ice cream made with carabao mangoes.', 'STM', 'img/CST/STM.avif'),
(2, 1, 'Super Thick Ube Royale', 349, 'Rich ube ice cream made with authentic Kinampay ube.', 'STUR', 'img/CST/STUR.avif'),
(3, 1, 'Super Thick Vanilla', 349, 'Classic vanilla ice cream with a creamy texture.', 'STV', 'img/CST/STV.avif'),
(4, 1, 'Super Thick Super Chocolate', 349, 'Intensely chocolatey ice cream for chocolate lovers.', 'STSC', 'img/CST/STSC.avif'),
(5, 1, 'Super Thick Strawberry', 349, 'Strawberry-flavored ice cream with real strawberry swirls.', 'STS', 'img/CST/STS.avif'),
(6, 1, 'Super Thick Cookies & Cream', 349, 'Vanilla ice cream blended with chocolate cookie chunks.', 'STCC', 'img/CST/STCC.avif'),
(7, 1, 'Super Thick Coffee Crumble', 349, 'Coffee ice cream with chocolate chips and cashew nuts.', 'STCCO', 'img/CST/STCCO.avif'),
(8, 1, 'Super Thick Double Dutch', 349, 'French vanilla ice cream with cashews, chocolate chips, and marshmallows.', 'STDD', 'img/CST/STDD.avif'),
(9, 1, 'Super Thick Quezo Real', 349, 'Cheese ice cream with real cheese bits.', 'STQR', 'img/CST/STQR.avif'),
(10, 1, 'Super Thick Rocky Road', 349, 'Chocolate ice cream with chocolate chips, marshmallows, and peanuts.', 'STRR', 'img/CST/STRR.avif'),
(11, 1, 'Super Thick Avocado Dream', 349, 'Creamy avocado-flavored ice cream.', 'STAD', 'img/CST/STAD.png'),
(12, 2, 'Cookies & Cream Ice Cream Stick', 45, 'Vanilla ice cream with chocolate cookie bits on a stick.', 'CCIS', 'img/ST/CCIS.avif'),
(13, 2, 'Quezo Real Ice Cream Stick', 45, 'Cheese-flavored ice cream with cheese chunks on a stick.', 'QRIS', 'img/ST/QRIS.avif'),
(14, 2, 'Rocky Road Ice Cream Stick', 45, 'Chocolate ice cream with nuts and marshmallows on a stick.', 'RRIS', 'img/ST/RRIS.avif'),
(15, 2, 'Watermelon Slice Ice Cream Stick', 45, 'Watermelon-flavored ice cream with chocolate chips.', 'WSIS', 'img/ST/WSIS.avif'),
(16, 2, 'Mango Slush Ice Cream Stick', 45, 'Mango-flavored ice cream on a stick.', 'MSIS', 'img/ST/MSIS.avif'),
(17, 2, 'Wonder Waffle Sandwich Ice Cream', 80, 'Ice cream sandwiched between waffle cones.', 'WWIS', 'img/ST/WWIS.png'),
(18, 2, 'Choco Cup', 40, 'Chocolate-flavored ice cream in a convenient cup.', 'CC', 'img/ST/CC.png'),
(19, 2, 'Ube Cup', 40, 'Ube-flavored ice cream in a cup.', 'UC', 'img/ST/UC.png'),
(20, 2, 'Chocky', 35, 'Chocolate milk ice cream.', 'CKY', 'img/ST/CKY.avif'),
(21, 3, '3-in-1 Choco-Keso-Ube', 149, 'A 750ml tub featuring chocolate, cheese, and ube flavors.', '3C1KU', 'img/SBT/3C1KU.avif'),
(22, 3, '3-in-1+1 Choco-Keso-Ube-Mango', 149, 'A 750ml tub with four flavors: chocolate, cheese, ube, and mango.', '3C1P1KU', 'img/SBT/3C1P1KU.avif'),
(23, 3, 'Ube Hapi Pack', 99, 'Ube-flavored ice cream in a fun pack.', 'UHP', 'img/SBT/UHP.png'),
(24, 3, 'Choco Hapi Pack', 99, 'Chocolate-flavored ice cream in a fun pack.', 'CHP', 'img/SBT/CHP.png'),
(25, 3, 'Keso Hapi Pack', 99, 'Cheese-flavored ice cream in a fun pack.', 'KHP', 'img/SBT/KHP.png'),
(26, 4, 'Double Dutch + Rocky Road', 349, 'Vanilla with cashews, chocolate chips, and marshmallows paired with chocolate with chocolate chips, marshmallows, and peanuts.', 'DDRR', 'img/S21/DDRR.avif'),
(27, 4, 'Cookies & Cream + Rocky Road', 349, 'Vanilla with chocolate cookie bits paired with chocolate with chocolate chips, marshmallows, and peanuts.', 'CCRR', 'img/S21/CCRR.avif'),
(28, 4, 'Quezo Real + Buco Salad', 349, 'Cheese with real cheese bits paired with buco salad ice cream.', 'QRBS', 'img/S21/QRBS.avif'),
(29, 5, 'Halo-Halo Ice Cream', 349, 'A mix of traditional halo-halo ingredients in ice cream form.', 'HHIC', 'img/SSF/HHIC.avif'),
(30, 5, 'Ube Macapuno Ice Cream', 349, 'Ube and macapuno ice cream with buco strings.', 'UMIC', 'img/SSF/UMIC.avif'),
(31, 5, 'Pistachio & Cashew Ice Cream', 349, 'Pistachio ice cream with cashew and pistachio bits.', 'PCIC', 'img/SSF/PCIC.avif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
