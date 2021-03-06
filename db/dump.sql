-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Nov 06, 2018 at 09:52 AM
-- Server version: 5.7.21
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_shop`
--
CREATE DATABASE test_shop CHARACTER SET utf8 COLLATE utf8_general_ci;
USE test_shop;
-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`) VALUES
(1, 'John', 'Doe', 'john@mail.com'),
(2, 'Bill', 'Gates', 'bill@mail.com'),
(3, 'Mila', 'Parker', 'mila@mail.com'),
(4, 'User', 'One', 'user@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `purchase_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `country` char(2) NOT NULL COMMENT 'ISO code',
  `device` enum('iOS','Android','PC','Mac') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `purchase_date`, `country`, `device`) VALUES
(1, 2, '2018-10-09 18:40:44', 'VU', 'PC'),
(2, 2, '2018-10-01 02:15:04', 'TF', 'Android'),
(3, 4, '2018-10-02 20:12:12', 'PF', 'iOS'),
(4, 1, '2018-10-13 20:16:48', 'IO', 'Android'),
(5, 1, '2018-10-10 03:37:56', 'MN', 'Android'),
(6, 3, '2018-10-04 04:24:16', 'MG', 'iOS'),
(7, 2, '2018-10-08 04:53:40', 'HT', 'PC'),
(8, 2, '2018-10-11 02:57:26', 'PM', 'iOS'),
(9, 1, '2018-10-26 23:43:52', 'MX', 'iOS'),
(10, 4, '2018-10-22 18:25:44', 'AW', 'Android'),
(11, 1, '2018-10-04 12:43:18', 'LK', 'Android'),
(12, 3, '2018-10-24 11:54:40', 'JM', 'Mac'),
(13, 3, '2018-10-10 10:48:11', 'MZ', 'Android'),
(14, 3, '2018-10-01 08:06:06', 'CW', 'Android'),
(15, 3, '2018-10-10 22:50:39', 'SL', 'PC'),
(16, 1, '2018-10-05 14:15:54', 'WF', 'Android'),
(17, 3, '2018-10-24 16:38:12', 'TD', 'Android'),
(18, 3, '2018-10-12 21:36:21', 'MW', 'PC'),
(19, 2, '2018-10-27 05:12:56', 'UG', 'Android'),
(20, 1, '2018-10-25 21:25:26', 'CL', 'Android'),
(21, 1, '2018-10-10 03:14:50', 'AI', 'Android'),
(22, 4, '2018-10-19 06:28:15', 'MG', 'Android'),
(23, 4, '2018-10-08 02:51:52', 'AQ', 'iOS'),
(24, 4, '2018-10-02 10:53:51', 'WF', 'Android'),
(25, 4, '2018-10-28 20:13:00', 'NI', 'iOS'),
(26, 3, '2018-10-20 12:03:48', 'VC', 'Android'),
(27, 3, '2018-10-03 00:53:01', 'FM', 'iOS'),
(28, 1, '2018-10-06 06:04:17', 'BM', 'PC'),
(29, 1, '2018-10-09 03:09:46', 'BW', 'iOS'),
(30, 3, '2018-10-03 04:18:41', 'AE', 'Mac'),
(31, 1, '2018-10-05 06:44:45', 'PS', 'PC'),
(32, 1, '2018-10-23 21:42:07', 'FM', 'Mac'),
(33, 3, '2018-10-18 18:24:28', 'MO', 'iOS'),
(34, 4, '2018-10-29 18:23:15', 'SI', 'PC'),
(35, 3, '2018-10-16 13:44:45', 'MT', 'Mac'),
(36, 2, '2018-10-27 09:06:27', 'AG', 'Mac'),
(37, 1, '2018-10-14 17:01:42', 'LV', 'Android'),
(38, 2, '2018-10-14 03:34:04', 'GF', 'PC'),
(39, 1, '2018-10-18 02:56:02', 'ER', 'iOS'),
(40, 2, '2018-10-25 06:29:25', 'BD', 'PC'),
(41, 2, '2018-10-23 13:33:29', 'GP', 'Android'),
(42, 3, '2018-10-22 04:15:57', 'SS', 'iOS'),
(43, 2, '2018-10-10 12:39:03', 'MX', 'Android'),
(44, 2, '2018-10-11 19:18:56', 'MU', 'Android'),
(45, 1, '2018-10-04 19:11:26', 'DE', 'Android'),
(46, 3, '2018-10-26 11:36:23', 'RS', 'iOS'),
(47, 2, '2018-10-03 06:09:07', 'KR', 'iOS'),
(48, 1, '2018-10-14 16:45:48', 'RO', 'Android'),
(49, 4, '2018-10-16 07:08:56', 'AX', 'Mac'),
(50, 1, '2018-10-17 12:45:34', 'GD', 'PC'),
(51, 1, '2018-10-08 20:57:37', 'GD', 'Mac'),
(52, 2, '2018-10-06 10:26:53', 'CD', 'Android'),
(53, 1, '2018-10-16 14:00:09', 'TT', 'iOS'),
(54, 4, '2018-10-16 12:25:20', 'MY', 'Android'),
(55, 4, '2018-10-22 13:21:07', 'VU', 'Android'),
(56, 3, '2018-10-27 01:40:33', 'CG', 'iOS'),
(57, 3, '2018-10-07 07:34:38', 'AR', 'Mac'),
(58, 1, '2018-10-20 01:06:20', 'MH', 'PC'),
(59, 2, '2018-10-27 04:10:42', 'UY', 'PC'),
(60, 2, '2018-10-27 12:12:36', 'BA', 'PC'),
(61, 3, '2018-10-18 17:38:23', 'BG', 'PC'),
(62, 2, '2018-10-04 03:05:39', 'RU', 'Android'),
(63, 1, '2018-10-14 08:27:07', 'BF', 'PC'),
(64, 1, '2018-10-19 09:48:46', 'TM', 'Android'),
(65, 4, '2018-10-28 10:07:46', 'NR', 'Mac'),
(66, 1, '2018-10-12 10:57:06', 'WS', 'iOS'),
(67, 1, '2018-10-07 09:58:26', 'FI', 'PC'),
(68, 3, '2018-10-16 01:41:27', 'JE', 'Android'),
(69, 1, '2018-10-14 03:15:37', 'HR', 'PC'),
(70, 2, '2018-10-23 19:24:48', 'CL', 'PC'),
(71, 3, '2018-10-28 07:35:11', 'GS', 'Android'),
(72, 1, '2018-10-24 15:11:32', 'TK', 'PC'),
(73, 4, '2018-10-09 05:37:59', 'UA', 'PC'),
(74, 2, '2018-10-12 22:31:11', 'TT', 'PC'),
(75, 3, '2018-10-20 06:53:11', 'MY', 'Android'),
(76, 1, '2018-10-21 22:00:03', 'DO', 'PC'),
(77, 1, '2018-10-03 15:04:51', 'UM', 'Mac'),
(78, 3, '2018-10-13 01:07:27', 'KR', 'PC'),
(79, 3, '2018-10-28 23:40:14', 'SK', 'PC'),
(80, 3, '2018-10-23 13:18:47', 'KE', 'iOS'),
(81, 3, '2018-10-22 15:16:57', 'SE', 'Mac'),
(82, 4, '2018-10-17 20:13:44', 'GG', 'iOS'),
(83, 4, '2018-10-08 12:00:45', 'PT', 'PC'),
(84, 4, '2018-10-20 03:49:02', 'DM', 'Android'),
(85, 4, '2018-10-23 02:15:10', 'SY', 'iOS'),
(86, 4, '2018-10-29 04:31:29', 'IQ', 'Android'),
(87, 3, '2018-10-12 10:47:02', 'RO', 'iOS'),
(88, 4, '2018-10-15 19:15:34', 'MW', 'PC'),
(89, 3, '2018-10-29 20:25:22', 'BN', 'iOS'),
(90, 2, '2018-10-25 18:23:14', 'SN', 'PC'),
(91, 2, '2018-10-13 05:05:03', 'CA', 'Android'),
(92, 3, '2018-10-12 12:00:40', 'SS', 'PC'),
(93, 1, '2018-10-07 21:49:55', 'MS', 'Android'),
(94, 3, '2018-10-14 00:26:09', 'BS', 'Mac'),
(95, 3, '2018-10-22 04:32:52', 'BM', 'PC'),
(96, 1, '2018-10-06 10:58:51', 'FM', 'iOS'),
(97, 4, '2018-10-19 20:48:48', 'BZ', 'Mac'),
(98, 1, '2018-10-27 22:11:16', 'AE', 'Android'),
(99, 2, '2018-10-19 10:42:31', 'PM', 'Android'),
(100, 4, '2018-10-13 16:32:04', 'ER', 'Android');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `ean` char(13) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `ean`, `quantity`, `price`) VALUES
(1, 84, '4021050712522', 3, '976.00'),
(2, 94, '3007322940021', 1, '542.00'),
(3, 23, '2483789979733', 3, '764.00'),
(4, 92, '9119792731723', 1, '205.00'),
(5, 19, '9163081116204', 3, '699.00'),
(6, 39, '8529331548578', 4, '893.00'),
(7, 75, '6953421791424', 2, '380.00'),
(8, 64, '5008854927011', 1, '200.00'),
(9, 23, '5840801280718', 1, '838.00'),
(10, 76, '8869590923067', 4, '612.00'),
(11, 43, '3899000721577', 4, '536.00'),
(12, 32, '8445188284850', 4, '833.00'),
(13, 4, '4744453029998', 1, '568.00'),
(14, 75, '8222211870449', 2, '332.00'),
(15, 10, '2040989861344', 1, '934.00'),
(16, 74, '5272316807431', 3, '698.00'),
(17, 22, '5484173092240', 1, '678.00'),
(18, 78, '1668641530551', 2, '296.00'),
(19, 29, '6552791434451', 5, '424.00'),
(20, 28, '7475491307483', 1, '234.00'),
(21, 47, '2314284782756', 1, '875.00'),
(22, 27, '7592562145609', 1, '697.00'),
(23, 75, '8518687038677', 5, '849.00'),
(24, 87, '2449564354319', 3, '164.00'),
(25, 88, '7949137087700', 4, '241.00'),
(26, 41, '5951994903228', 5, '704.00'),
(27, 61, '5929752697880', 1, '806.00'),
(28, 39, '6600392481435', 3, '918.00'),
(29, 88, '2488079650251', 4, '183.00'),
(30, 37, '7220159195807', 3, '128.00'),
(31, 95, '6123668606472', 4, '80.00'),
(32, 94, '9091166984223', 1, '997.00'),
(33, 84, '1008971918879', 1, '780.00'),
(34, 69, '6652344872861', 4, '895.00'),
(35, 64, '3317545130231', 1, '150.00'),
(36, 87, '2013746695971', 3, '29.00'),
(37, 34, '5649015399938', 2, '675.00'),
(38, 44, '6635025753310', 2, '309.00'),
(39, 45, '6597714889353', 2, '499.00'),
(40, 73, '5186019037029', 2, '569.00'),
(41, 31, '2822308303603', 1, '349.00'),
(42, 28, '3514663149661', 5, '26.00'),
(43, 39, '9180255661956', 4, '62.00'),
(44, 98, '8640795275926', 2, '223.00'),
(45, 45, '3699799327853', 4, '918.00'),
(46, 3, '7719178215161', 3, '942.00'),
(47, 90, '2729083817524', 3, '957.00'),
(48, 89, '5650537711511', 3, '959.00'),
(49, 46, '1188204641519', 3, '926.00'),
(50, 59, '7512681372849', 1, '753.00'),
(51, 6, '6169185216141', 5, '978.00'),
(52, 78, '7127865649068', 1, '640.00'),
(53, 47, '2428400791442', 4, '255.00'),
(54, 10, '6375721839928', 3, '333.00'),
(55, 98, '4252363586386', 1, '890.00'),
(56, 21, '4018504473973', 3, '472.00'),
(57, 77, '2337193693512', 4, '669.00'),
(58, 22, '1880107713295', 5, '930.00'),
(59, 37, '6025566709280', 2, '653.00'),
(60, 78, '4834646841794', 2, '464.00'),
(61, 14, '2476379567911', 5, '351.00'),
(62, 29, '3094704074879', 4, '353.00'),
(63, 78, '3336102558112', 1, '700.00'),
(64, 65, '4238611185761', 1, '453.00'),
(65, 90, '7729715190090', 3, '156.00'),
(66, 71, '9121961320609', 1, '400.00'),
(67, 50, '7733918286403', 4, '534.00'),
(68, 54, '5987246127007', 1, '467.00'),
(69, 7, '7321467215151', 5, '723.00'),
(70, 82, '2504331340273', 3, '225.00'),
(71, 68, '9516582814643', 1, '923.00'),
(72, 94, '9845580827654', 4, '963.00'),
(73, 56, '4101595286784', 1, '56.00'),
(74, 63, '4741190835730', 4, '348.00'),
(75, 26, '5687936535231', 3, '574.00'),
(76, 44, '7058818979889', 1, '828.00'),
(77, 32, '7668153059466', 3, '427.00'),
(78, 57, '6480329856392', 1, '630.00'),
(79, 54, '7347905726993', 3, '868.00'),
(80, 100, '5670545877843', 1, '462.00'),
(81, 67, '5658007226041', 5, '683.00'),
(82, 95, '7224356459258', 5, '43.00'),
(83, 69, '5135890478617', 1, '132.00'),
(84, 86, '4289163295054', 4, '520.00'),
(85, 72, '1042114674046', 2, '217.00'),
(86, 55, '6198770711403', 4, '502.00'),
(87, 63, '3016058823151', 5, '859.00'),
(88, 82, '1974545211966', 1, '800.00'),
(89, 90, '6544337588152', 2, '425.00'),
(90, 68, '9292261416253', 2, '705.00'),
(91, 4, '8911972591024', 1, '260.00'),
(92, 54, '9012691576330', 2, '162.00'),
(93, 81, '4551594257981', 3, '20.00'),
(94, 2, '7809316412603', 5, '595.00'),
(95, 25, '8657173765611', 3, '924.00'),
(96, 97, '5042435557138', 2, '847.00'),
(97, 99, '3188186525021', 4, '464.00'),
(98, 16, '1626231697313', 5, '755.00'),
(99, 56, '6274843581634', 2, '398.00'),
(100, 41, '2561856279007', 4, '702.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer` (`customer_id`),
  ADD KEY `purchase_date` (`purchase_date`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
