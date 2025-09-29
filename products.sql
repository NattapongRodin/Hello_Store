-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 29, 2025 at 06:14 AM
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
-- Database: `hello_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `stock` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `stock`, `created_at`) VALUES
(1, 'เสื้อยืดสีขาว', 250.00, 'เสื้อยืด', 50, '2025-09-29 02:46:03'),
(2, 'เสื้อยืดสีดำ', 260.00, 'เสื้อยืด', 40, '2025-09-29 02:46:03'),
(3, 'เสื้อยืด Oversize', 320.00, 'เสื้อยืด', 35, '2025-09-29 02:46:03'),
(5, 'เสื้อเชิ้ตลายสก๊อต', 650.00, 'เสื้อเชิ้ต', 25, '2025-09-29 02:46:03'),
(6, 'เสื้อเชิ้ตแขนสั้น', 450.00, 'เสื้อเชิ้ต', 30, '2025-09-29 02:46:03'),
(7, 'กางเกงยีนส์ผู้ชาย', 1200.00, 'กางเกง', 15, '2025-09-29 02:46:03'),
(8, 'กางเกงยีนส์ผู้หญิง', 1100.00, 'กางเกง', 18, '2025-09-29 02:46:03'),
(9, 'กางเกงวอร์ม', 650.00, 'กางเกง', 22, '2025-09-29 02:46:03'),
(10, 'กางเกงขาสั้น', 400.00, 'กางเกง', 30, '2025-09-29 02:46:03'),
(11, 'กระโปรงยาว', 890.00, 'กระโปรง', 12, '2025-09-29 02:46:03'),
(12, 'กระโปรงสั้น', 750.00, 'กระโปรง', 14, '2025-09-29 02:46:03'),
(13, 'แจ็กเก็ตยีนส์', 1500.00, 'แจ็กเก็ต', 10, '2025-09-29 02:46:03'),
(14, 'แจ็กเก็ตหนัง', 2200.00, 'แจ็กเก็ต', 8, '2025-09-29 02:46:03'),
(15, 'เสื้อกันหนาว Hoodie', 950.00, 'แจ็กเก็ต', 16, '2025-09-29 02:46:03'),
(16, 'รองเท้าผ้าใบสีขาว', 1200.00, 'รองเท้า', 25, '2025-09-29 02:46:03'),
(17, 'รองเท้าผ้าใบสีดำ', 1150.00, 'รองเท้า', 20, '2025-09-29 02:46:03'),
(18, 'รองเท้าแตะ', 350.00, 'รองเท้า', 40, '2025-09-29 02:46:03'),
(19, 'หมวกแก๊ป', 250.00, 'เครื่องประดับ', 30, '2025-09-29 02:46:03'),
(20, 'เข็มขัดหนัง', 650.00, 'เครื่องประดับ', 18, '2025-09-29 02:46:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
