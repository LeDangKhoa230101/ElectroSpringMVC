-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2024 at 06:58 AM
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
-- Database: `electro_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `billdetail`
--

CREATE TABLE `billdetail` (
  `id` bigint(20) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `id_bills` bigint(20) NOT NULL,
  `quanty` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billdetail`
--

INSERT INTO `billdetail` (`id`, `id_product`, `id_bills`, `quanty`, `total`) VALUES
(1, 19, 1, 2, 340),
(2, 8, 1, 2, 2000),
(3, 9, 1, 1, 1200),
(4, 1, 2, 1, 2000),
(5, 20, 2, 2, 1340),
(6, 10, 2, 1, 1300),
(7, 20, 3, 3, 2010);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) NOT NULL,
  `user` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `quanty` int(11) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `note`) VALUES
(1, 'a@gmail.com', '0359118433', 'LÃÂª ÃÂÃÂng Khoa', 'we', 0, 0, 'giao hang nhanh'),
(2, 'a@gmail.com', '0359118433', 'LÃÂª ÃÂÃÂng Khoa', 'ddddddd', 4640, 4, 'gian hangf nhah'),
(3, 'a@gmail.com', '0359118433', 'LÃÂª ÃÂÃÂng Khoa', 'we', 2010, 3, 'dddsasadsd');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `description`) VALUES
(1, 'Laptops', NULL),
(2, 'Smartphones', NULL),
(3, 'Cameras', NULL),
(4, 'Accessories', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `id_product`, `name`, `code`, `img`) VALUES
(1, 1, 'Vàng', '#e5ff0d', 'https://down-vn.img.susercontent.com/file/16f05318012eaea83c7c2de266d65f87'),
(2, 1, 'Xanh', '#0d22ff', 'https://down-vn.img.susercontent.com/file/4ce6a46d617073c6a517d2cd14e2070a'),
(3, 2, 'Vàng', '#e5ff0d', 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-lgk93496lqev1c'),
(4, 2, 'Xanh', '#0d22ff', 'https://down-vn.img.susercontent.com/file/sg-11134201-23010-7dnu0bkjpulv47'),
(5, 2, 'Tím', '#b30aa9', 'https://down-vn.img.susercontent.com/file/vn-11134207-23010-9dlkstxxpulv04'),
(6, 3, 'Trắng', '#ffffff', 'https://down-vn.img.susercontent.com/file/sg-11134201-23010-8pxrkhxnjhmve0'),
(7, 3, 'Vàng', '#e5ff0d', 'https://down-vn.img.susercontent.com/file/sg-11134201-23010-w61kamxnjhmv24'),
(8, 3, 'Xanh', '#0d22ff', 'https://down-vn.img.susercontent.com/file/sg-11134201-23010-yvgnmkxnjhmv2c'),
(9, 4, 'Đỏ', '#ff0d0d', 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llyt7icpnhlr63'),
(10, 4, 'Tím', '#b30aa9', 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llyt7icprpb31a'),
(11, 5, 'Vàng', '#e5ff0d', 'https://down-vn.img.susercontent.com/file/sg-11134201-22110-uzdj0cm9ugkv5c'),
(12, 6, 'Xanh', '#0d22ff', 'https://down-vn.img.susercontent.com/file/vn-11134201-7qukw-lgwcxkaztm9fcf'),
(13, 7, 'Tím', '#b30aa9', 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-li9n3zmyzyky69'),
(14, 8, 'Đỏ', '#ff0d0d', 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-llzyl8zzktsv33'),
(15, 9, 'Trắng', '#ffffff', 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lnu375jlamstcb'),
(16, 10, 'Đỏ', '#ff0d0d', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rbl1-lqftskadqxq2a6'),
(17, 11, 'Xanh', '#0d22ff', 'https://down-vn.img.susercontent.com/file/sg-11134201-22100-pbj421b14wivfb'),
(18, 12, 'Trắng', '#ffffff', 'https://down-vn.img.susercontent.com/file/vn-11134207-7qukw-li9ljhoxv07m6d'),
(19, 13, 'Vàng', '#e5ff0d', 'https://down-vn.img.susercontent.com/file/sg-11134201-22100-ip1zeqpi0wivff'),
(20, 14, 'Đỏ', '#ff0d0d', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rbmz-lqlpwmapssw568'),
(21, 15, 'Trắng', '#ffffff', 'https://down-vn.img.susercontent.com/file/cn-11134207-7qukw-lfi4nab1w8y380'),
(22, 16, 'Tím', '#b30aa9', 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lqmzx5qkmriq88'),
(23, 17, 'Xanh', '#0d22ff', 'https://down-vn.img.susercontent.com/file/cn-11134207-7r98o-lqbfjqmzx1co9d'),
(24, 18, 'Trắng', '#ffffff', 'https://down-vn.img.susercontent.com/file/vn-11134207-7r98o-lqn8s157tyvm98'),
(25, 19, 'Xanh', '#0d22ff', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(26, 20, 'Trắng', '#ffffff', 'https://down-vn.img.susercontent.com/file/vn-11134207-23010-81dmdvb7n5lv41'),
(27, 22, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(28, 23, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(29, 24, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(30, 25, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(31, 26, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(32, 27, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(33, 28, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(34, 29, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(35, 30, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(36, 31, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(37, 32, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(38, 33, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(39, 34, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(40, 35, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(41, 36, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(42, 37, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(43, 38, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(44, 39, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(45, 40, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(46, 41, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(47, 42, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(48, 43, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(49, 44, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(50, 45, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(51, 46, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(52, 47, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(53, 48, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(54, 49, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(55, 50, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408'),
(56, 21, 'Vàng', '#FFFF00', 'https://down-vn.img.susercontent.com/file/sg-11134201-7rcf9-ls27v77zpqv408');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `id_category` int(11) NOT NULL,
  `sizes` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `sale` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `new_product` tinyint(1) NOT NULL,
  `detail` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_category`, `sizes`, `name`, `price`, `sale`, `title`, `highlight`, `new_product`, `detail`, `created_at`, `updated_at`) VALUES
(1, 1, 'L,M,S', 'Laptop Asus Zenbook UX431', 2000, 0, 'Nowadays the lingerie industry', 1, 0, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8( chọn loại cpu chọn cấu hình khi mua)', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(2, 1, 'M,L,S', 'Laptop Asus ROG Strix G', 3000, 0, 'Nowadays the lingerie industry', 1, 1, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8( chọn loại cpu chọn cấu hình khi mua)', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(3, 1, 'X,L,M', 'Laptop Pocket Onemix GPD', 2300, 0, 'Nowadays the lingerie industry', 0, 1, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8( chọn loại cpu chọn cấu hình khi mua)', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(4, 1, 'M,L,X', 'Microsoft surface pro 5', 1200, 0, 'Nowadays the lingerie industry', 0, 0, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8( chọn loại cpu chọn cấu hình khi mua)', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(5, 1, 'L,X,M', 'Lenovo Factory Intel', 3400, 0, 'Nowadays the lingerie industry', 1, 1, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8( chọn loại cpu chọn cấu hình khi mua)', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(6, 2, 'L,X,M', 'Smartphones KXD EL D68', 1100, 0, 'Nowadays the lingerie industry', 1, 1, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(7, 2, 'M,L,X', 'Smartphones Itel A48', 1500, 0, 'Nowadays the lingerie industry', 1, 1, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(8, 2, 'S,L,X', 'Smartphones Itel A26', 1000, 0, 'Nowadays the lingerie industry', 0, 0, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(9, 2, 'M,S,X', 'Điện thoại Reno8 Pro', 1200, 0, 'Nowadays the lingerie industry', 0, 0, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(10, 2, 'L,X,S', 'Điện thoại di động HP I15', 1300, 0, 'Nowadays the lingerie industry', 0, 0, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(11, 3, 'M,S,X', 'CAMERA IP WIFI YOOSEE', 500, 0, 'Nowadays the lingerie industry', 0, 1, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(12, 3, 'M,S,X', 'Camera Wifi KBONE', 300, 0, 'Nowadays the lingerie industry', 1, 0, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(13, 3, 'M,S,X', 'Camera An Ninh V380', 310, 0, 'Nowadays the lingerie industry', 0, 1, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(14, 3, 'M,S,X', 'VSMAHOME Camera', 210, 0, 'Nowadays the lingerie industry', 0, 0, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(15, 3, 'M,S,X', 'Camera IP YooSee', 450, 0, 'Nowadays the lingerie industry', 0, 0, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(16, 4, 'M,S,X', 'Bông tai nữ chuôi bạc', 480, 0, 'Nowadays the lingerie industry', 1, 1, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(17, 4, 'M,S,X', 'Nhẫn bạc nữ Eleanor', 560, 0, 'Nowadays the lingerie industry', 0, 1, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(18, 4, 'M,S,X', 'Vòng cổ MAYEBE LAVEND', 280, 0, 'Nowadays the lingerie industry', 0, 0, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(19, 4, 'M,S,X', 'Bông tai nữ chuôi bạc', 170, 0, 'Nowadays the lingerie industry', 1, 1, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(20, 4, 'M,S,X', 'Nhẫn Màu Bạc Dây Rút', 670, 0, 'Nowadays the lingerie industry', 1, 1, 'CPU: Core i7-8565u max turbo 4.90Ghz Max turbo, 4 nhân 8 luồng thế hệ 8', '2024-02-28 11:38:43', '2024-02-29 11:47:31'),
(21, 1, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(22, 1, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(23, 1, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(24, 1, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(25, 1, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(26, 1, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(27, 2, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(28, 2, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(29, 2, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(30, 2, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(31, 2, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(32, 2, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(33, 2, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(34, 2, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(35, 3, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(36, 3, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(37, 3, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(38, 3, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(39, 3, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(40, 3, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(41, 3, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(42, 3, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(43, 3, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(44, 4, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(45, 4, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(46, 4, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(47, 4, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(48, 4, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(49, 4, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43'),
(50, 4, 'L,S,M', 'Name', 2000, 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `img`, `title`) VALUES
(1, 'shop01.png', 'Laptop'),
(2, 'shop03.png', 'HeadPhone'),
(3, 'shop02.png', 'Cameras');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `display_name`, `address`) VALUES
(16, 'a@gmail.com', '$2a$12$V6qSMZKAvWJQ9LwqxFtuteSwxIg3TykIWf7J6sZIeAn2el2E2M5y.', 'LÃª ÄÄng Khoa', 'we');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bills` (`id_bills`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`id_bills`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categorys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
