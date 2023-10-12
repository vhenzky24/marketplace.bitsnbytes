-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 10:22 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `market`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `date_inserted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `date_inserted`) VALUES
(1, 'Add-on Cards', '2023-02-04 10:01:08'),
(2, 'Cables and Adapters', '2023-02-04 10:05:36'),
(3, 'Casings and Power Supplies', '2023-02-04 10:05:36'),
(4, 'CD/DVD-R/RW Drives', '2023-02-04 10:05:36'),
(5, 'Cooling Devices', '2023-02-04 10:05:36'),
(6, 'Desktops Systems', '2023-02-04 10:05:36'),
(7, 'Digital Media Players', '2023-02-04 10:05:36'),
(8, 'Digital and Web Cameras', '2023-02-04 10:05:36'),
(9, 'Game Consoles', '2023-02-04 10:05:36'),
(10, 'Game Controllers', '2023-02-04 10:05:36'),
(11, 'Games and Software', '2023-02-04 10:05:36'),
(12, 'Graphics Cards', '2023-02-04 10:05:36'),
(13, 'Hard Disk Drives', '2023-02-04 10:05:36'),
(14, 'IT Books and References', '2023-02-04 10:05:36'),
(15, 'LAN and Net Devices', '2023-02-04 10:05:36'),
(16, 'Laptops and PDAs', '2023-02-04 10:05:36'),
(17, 'Laptops/PDA Accessories/Parts', '2023-02-04 10:05:36'),
(18, 'Media Players', '2023-02-04 10:05:36'),
(19, 'Memory Modules', '2023-02-04 10:05:36'),
(20, 'Mice, Keyboards', '2023-02-04 10:05:36'),
(21, 'Monitors, CRT/LCD', '2023-02-04 10:05:36'),
(22, 'Motherboards', '2023-02-04 10:05:36'),
(23, 'Multiple Items/Combos', '2023-02-04 10:05:36'),
(24, 'Portable Media Drives', '2023-02-04 10:05:36'),
(25, 'Portable Media and Storage', '2023-02-04 10:05:36'),
(26, 'Printers /Scanners', '2023-02-04 10:05:36'),
(27, 'Printers Inks/CIS/Toner', '2023-02-04 10:05:36'),
(28, 'Processors', '2023-02-04 10:05:36'),
(29, 'Repair Services PC/Laptop', '2023-02-04 10:05:36'),
(30, 'Sound Cards', '2023-02-04 10:05:36'),
(31, 'Speakers, Headsets, Mics', '2023-02-04 10:05:36'),
(32, 'Tech/IT Services', '2023-02-04 10:05:36'),
(33, 'UPS and AVRs', '2023-02-04 10:05:36'),
(34, 'Other PC Devices', '2023-02-04 10:05:36'),
(35, 'Smartphones', '2023-02-04 10:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` longtext DEFAULT NULL,
  `commentor` int(12) NOT NULL DEFAULT 0,
  `product_id` int(12) NOT NULL DEFAULT 0,
  `date_commented` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `commentor`, `product_id`, `date_commented`) VALUES
(3, 'Hahahaha nice product recommended!!', 5, 3, '2023-01-30 15:53:16'),
(4, 'I have received the product it is good.', 14, 3, '2023-01-30 16:12:08'),
(5, 'Hahsdhsadhasd sad life', 5, 1, '2023-01-31 09:38:31'),
(6, 'Ca we be partners?? haha\n', 1, 4, '2023-02-01 10:05:34'),
(7, 'dili lab as', 8, 3, '2023-02-18 10:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `group_chat`
--

CREATE TABLE `group_chat` (
  `id` int(11) NOT NULL,
  `sender` int(223) NOT NULL DEFAULT 0,
  `receiver` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group_chat`
--

INSERT INTO `group_chat` (`id`, `sender`, `receiver`) VALUES
(1, 5, 1),
(2, 5, 6),
(3, 1, 6),
(5, 14, 6),
(6, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `text` longtext DEFAULT NULL,
  `sender` int(225) NOT NULL DEFAULT 0,
  `receiver` int(255) NOT NULL DEFAULT 0,
  `group_id` int(233) NOT NULL DEFAULT 0,
  `date_inserted` datetime NOT NULL DEFAULT current_timestamp(),
  `seen_status` int(122) NOT NULL DEFAULT 0,
  `file_status` int(23) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `text`, `sender`, `receiver`, `group_id`, `date_inserted`, `seen_status`, `file_status`) VALUES
(29, 'adminsadasdasdsad', 1, 8, 6, '2023-05-11 16:40:47', 1, 0),
(30, 'adminsadasdasdasd', 1, 8, 6, '2023-05-11 16:41:32', 1, 0),
(31, 'adminsadsadsadd', 8, 1, 6, '2023-05-11 16:41:37', 1, 0),
(32, 'adminasdsadasd', 1, 8, 6, '2023-05-11 16:42:02', 1, 0),
(33, 'adminsadasdasd', 8, 1, 6, '2023-05-11 16:42:06', 1, 0),
(34, './img/production ID_3833491.mp4', 1, 8, 6, '2023-05-11 16:59:53', 1, 1),
(35, './img/', 1, 8, 6, '2023-05-11 17:00:05', 1, 1),
(36, './img/', 1, 8, 6, '2023-05-11 17:00:13', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `buyer` int(222) NOT NULL DEFAULT 0,
  `seller` int(222) NOT NULL DEFAULT 0,
  `pid` int(100) NOT NULL DEFAULT 0,
  `randomid` int(100) NOT NULL DEFAULT 0,
  `message` varchar(222) DEFAULT NULL,
  `date_inserted` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` int(100) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `buyer`, `seller`, `pid`, `randomid`, `message`, `date_inserted`, `seen`) VALUES
(2, 5, 1, 7, 65423, 'I have received the items salamat po!', '2023-07-10 14:23:08', 0),
(3, 5, 1, 7, 77299, 'Ito din po natanggap ko na maraming salamat, legit ka po talaga', '2023-07-10 15:11:54', 0),
(4, 5, 6, 4, 7728, 'hahaha ahdhasdh adhashdashdhasd', '2023-07-24 08:19:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notif_files`
--

CREATE TABLE `notif_files` (
  `id` int(11) NOT NULL,
  `randomid` int(100) NOT NULL DEFAULT 0,
  `dir` varchar(255) DEFAULT NULL,
  `product_id` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notif_files`
--

INSERT INTO `notif_files` (`id`, `randomid`, `dir`, `product_id`) VALUES
(7, 65423, './files/6582.jpg', 0),
(8, 65423, './files/Sandisk-Cruzer-Blade-SDCZ50-032G-32Gb-USB-Flash-Drive-Black_Red-2.jpg', 0),
(9, 77299, './files/short-sleeve-t-shirt-technical-fashion-flat-sketch-illustration-black-color-template-for-mens-and-boys-free-vector.jpg', 0),
(10, 77299, './files/short-sleeve-t-shirt-technical-fashion-flat-sketch-illustration-black-color-template-for-mens-and-boys-free-vector.png', 0),
(11, 77299, './files/image (26).png', 0),
(12, 7728, './files/qrcode.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posted_product`
--

CREATE TABLE `posted_product` (
  `id` int(11) NOT NULL,
  `user_id` int(233) NOT NULL DEFAULT 0,
  `title` varchar(233) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `category` int(3) NOT NULL DEFAULT 0,
  `contact` varchar(100) NOT NULL DEFAULT '09000000000',
  `url_rand_id` int(233) NOT NULL DEFAULT 0,
  `date_posted` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(23) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posted_product`
--

INSERT INTO `posted_product` (`id`, `user_id`, `title`, `details`, `price`, `category`, `contact`, `url_rand_id`, `date_posted`, `status`) VALUES
(1, 1, 'For sale motherboard', 'This is a brand new Motherboard \nplease contact me if interested.', 5000, 1, '09759310456', 38421, '2023-01-28 11:24:48', 0),
(2, 1, 'Rgb fan for pc', 'Rgb fan for cooling inside system unit\nPm for inquiries.', 500, 5, '09759310455', 48774, '2023-01-28 11:52:15', 0),
(3, 1, 'SSD 240gb CDR King New', 'SSD 240 GB CDR King Original\nCall me for inquiries', 5300, 13, '5300', 43662, '2023-01-28 15:20:45', 0),
(4, 6, 'System unit for sale', 'This system unit is build with rgb fans and glass cover\nfor more info pm my account or call me.', 10000, 3, '09759310456', 37308, '2023-02-01 10:00:07', 0),
(7, 1, 'test', 'asds asda sda sdas asd asda asdasdsa dsadsadsa', 1111, 4, '09759310456', 24003, '2023-05-10 10:30:34', 0),
(8, 19, 'Sopme', 'sad asd asd asd asda  das dasdasdasdadasd', 23, 2, '09759313234', 47707, '2023-08-14 10:10:36', 0),
(9, 1, 'asd', 'asdasdasd', 123, 1, '123123123', 56441, '2023-08-17 18:53:56', 0),
(10, 1, 'Iphone 14 pro max', 'iphone 14 pro max white 1tb fully paid', 50000, 35, '09456217562', 33947, '2023-08-21 16:03:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_photo`
--

CREATE TABLE `product_photo` (
  `id` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `random_id` int(23) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_photo`
--

INSERT INTO `product_photo` (`id`, `url`, `random_id`) VALUES
(1, './products/3.png', 27826),
(2, './products/rgb.jfif', 56787),
(3, './products/motherboard.png', 38421),
(4, './products/rgb.jfif', 48774),
(5, './products/2.PNG', 48774),
(6, './products/3.png', 48774),
(7, './products/ssd2.jfif', 43662),
(8, './products/ssd.jfif', 43662),
(9, './products/ssd3.jpg', 43662),
(10, './products/4ba5cbec6104371f98dbc447a44328e6.jfif', 37308),
(11, './products/H73a45113eafa4434b5e7953bdec97d75I.jpg', 37308),
(12, './products/images.jfif', 37308),
(13, './products/1023eb1e3bcf3111e0594049dc08a97d.jfif', 37308),
(14, './products/6582.jpg', 43004),
(15, './products/Sandisk-Cruzer-Blade-SDCZ50-032G-32Gb-USB-Flash-Drive-Black_Red-2.jpg', 43004),
(16, './products/download (1).jfif', 43004),
(17, './products/3269ba8bc368adb8d7dc941432339595.jfif', 43004),
(18, './products/1(1).png', 24003),
(19, './products/1.PNG', 24003),
(20, './products/2(1).png', 24003),
(21, './products/1k.png', 24003),
(22, './products/', 7341),
(23, './products/truck_8421497.png', 47707),
(24, './products/to-do-list.png', 47707),
(25, './products/Untitled_design__4_-removebg-preview.png', 47707),
(26, './products/vehicle_7052151.png', 47707),
(27, './products/images.jpg', 56441),
(28, './products/Screenshot 2023-08-21 160239.png', 33947),
(29, './products/Screenshot 2023-08-21 160247.png', 33947),
(30, './products/Screenshot 2023-08-21 160232.png', 33947);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `product_id` int(123) NOT NULL DEFAULT 0,
  `rater` int(12) NOT NULL DEFAULT 0,
  `date_rated` datetime NOT NULL DEFAULT current_timestamp(),
  `ratings` int(23) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `product_id`, `rater`, `date_rated`, `ratings`) VALUES
(1, 1, 5, '2023-01-30 13:42:21', 4),
(2, 1, 14, '2023-01-30 13:43:42', 5),
(4, 2, 14, '2023-01-30 14:17:47', 4),
(5, 3, 14, '2023-01-30 16:13:27', 3),
(6, 3, 5, '2023-01-31 08:09:20', 2),
(7, 4, 5, '2023-02-03 08:15:48', 3),
(8, 3, 8, '2023-02-18 10:11:31', 4);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service` varchar(255) NOT NULL DEFAULT '0',
  `userid` int(22) NOT NULL DEFAULT 0,
  `date_inserted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service`, `userid`, `date_inserted`) VALUES
(1, 'Reformatting', 8, '2023-02-18 09:39:23'),
(2, 'Programming & Others', 8, '2023-02-18 09:40:22'),
(3, 'PC Assemble', 8, '2023-02-18 09:40:27'),
(4, 'Networking', 8, '2023-02-18 09:40:30'),
(5, 'Troubleshooting', 8, '2023-02-18 09:48:35'),
(6, 'Tech Support', 15, '2023-02-23 09:58:25'),
(7, 'Networking', 15, '2023-02-23 09:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `tech_proof`
--

CREATE TABLE `tech_proof` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL DEFAULT 0,
  `dir` varchar(255) DEFAULT NULL,
  `date_inserted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tech_proof`
--

INSERT INTO `tech_proof` (`id`, `user_id`, `dir`, `date_inserted`) VALUES
(1, 15, './certificates/gcash-new-qr.jpg', '2023-08-14 11:07:03'),
(3, 15, './certificates/download.jfif', '2023-08-14 11:13:11'),
(4, 15, './certificates/boracay-island-la-banca-house-at-boracay-photo-1.jfif', '2023-08-14 11:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `tech_ratings`
--

CREATE TABLE `tech_ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(23) NOT NULL DEFAULT 0,
  `rater_id` int(23) NOT NULL DEFAULT 0,
  `rate` int(23) NOT NULL DEFAULT 0,
  `date_rated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tech_ratings`
--

INSERT INTO `tech_ratings` (`id`, `user_id`, `rater_id`, `rate`, `date_rated`) VALUES
(1, 8, 1, 3, '2023-02-07 14:26:19'),
(2, 8, 5, 4, '2023-02-08 14:43:58'),
(3, 15, 5, 4, '2023-02-08 14:46:19'),
(4, 15, 8, 3, '2023-03-03 14:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `tech_reviews`
--

CREATE TABLE `tech_reviews` (
  `id` int(11) NOT NULL,
  `reviewer` int(23) NOT NULL DEFAULT 0,
  `techid` int(23) NOT NULL DEFAULT 0,
  `review` longtext DEFAULT NULL,
  `review_on` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tech_reviews`
--

INSERT INTO `tech_reviews` (`id`, `reviewer`, `techid`, `review`, `review_on`) VALUES
(1, 5, 8, '0', 'February 8, 2023, 11:13 am'),
(2, 5, 8, 'asdadasdasdd', 'February 8, 2023, 11:13 am'),
(3, 5, 8, 'asdasdsadads', 'February 8, 2023, 2:42 pm');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(249) NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `verified` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `resettable` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `roles_mask` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `registered` int(10) UNSIGNED NOT NULL,
  `last_login` int(10) UNSIGNED DEFAULT NULL,
  `force_logout` mediumint(7) UNSIGNED NOT NULL DEFAULT 0,
  `user_status` int(100) NOT NULL DEFAULT 0,
  `url` varchar(255) DEFAULT NULL,
  `active` int(3) NOT NULL DEFAULT 0,
  `block_status` int(12) NOT NULL DEFAULT 0,
  `bnb_points` int(255) NOT NULL DEFAULT 5
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`, `status`, `verified`, `resettable`, `roles_mask`, `registered`, `last_login`, `force_logout`, `user_status`, `url`, `active`, `block_status`, `bnb_points`) VALUES
(1, 'marben@gmail.com', '$2y$10$uU67zf74YlsGkrATTE3qiOHlO/vrOLxZJ14jHt.4bCJp9ZS/Z.T92', 'Bentong', 0, 1, 1, 0, 1670988342, 1692604821, 0, 1, 'assets/images/faces/1.jpg', 1, 0, 115),
(6, 'jakob@gmail.com', '$2y$10$uU67zf74YlsGkrATTE3qiOHlO/vrOLxZJ14jHt.4bCJp9ZS/Z.T92', 'Jakob', 0, 1, 1, 0, 1671149136, 1675392088, 0, 1, 'assets/images/faces/3.jpg', 0, 0, 5),
(5, 'marbz.gwapo@gmail.com', '$2y$10$loEDiaJZx3UoubNV6VKLZ.bnR1f.UQdM2rwZ.DEv1M.UUSZ.cyIFG', 'Dave123', 0, 1, 1, 0, 1670995406, 1690157897, 0, 0, './profile/mypic.jpg', 0, 0, 5),
(14, 'staff@gmail.com', '$2y$10$UwbBjJjAkchJNPC6jtPPt.LeNJtbn2llPn.esuZobhYILfLexQfsi', 'staff', 0, 1, 1, 0, 1674607153, 1675728852, 0, 0, './profile/mypic.jpg', 0, 0, 5),
(8, 'admin@gmail.com', '$2y$10$uU67zf74YlsGkrATTE3qiOHlO/vrOLxZJ14jHt.4bCJp9ZS/Z.T92', 'James Reid', 0, 1, 1, 0, 1671152327, 1690157643, 3, 2, './profile/mypic.jpg', 0, 0, 5),
(9, 'admin2@gmail.com', '$2y$10$ZL.MS5BKX74qZlQ5GL5g6.rM4iYz7ec/XsYo1xmNs6RIIeH2Z5F1G', 'admin2', 0, 1, 1, 0, 1671168131, 1690157664, 0, 2, './profile/mypic.jpg', 0, 0, 5),
(10, 'dave@gmail.com', '$2y$10$cRY1EgtSGJNsaPPjp/7uceaPaixXinjuxS.GRkLRHavmXB.06MnQu', 'dave', 0, 0, 1, 0, 1672707956, NULL, 0, 1, NULL, 0, 0, 5),
(11, 'master@gmail.com', '$2y$10$uU67zf74YlsGkrATTE3qiOHlO/vrOLxZJ14jHt.4bCJp9ZS/Z.T92', 'Master2', 0, 1, 1, 0, 1672791361, 1692589385, 0, 3, NULL, 0, 0, 5),
(12, '2@gmail.com', '$2y$10$IUj4rHrXXuOhorewsyIjT.SLuPiEx2/jW6q/OOEu.y9nuSSAYyqBa', 'Jakob1212', 0, 0, 1, 0, 1672791390, NULL, 0, 1, NULL, 0, 0, 5),
(13, '34@gmail.com', '$2y$10$H4906GsTIMZZUoSRbjWGYu4rMRf6cqiq1yZHBF1Jlh.AeumRbwEP6', 'Jakob1212', 0, 0, 1, 0, 1672791439, NULL, 0, 1, NULL, 0, 0, 5),
(15, 'tech@gmail.com', '$2y$10$8M5bEl0pScI6cWtggqDzgOQ6y1Vg6xTF33FlaTKpVN7BI45h8QFsO', 'tech guy', 0, 1, 1, 0, 1675301162, 1691979085, 0, 2, 'assets/images/faces/1.jpg', 0, 0, 5),
(16, 'ran@gmail.com', '$2y$10$.KwJfg5cFuvgudU2W0TswuyFl.lkIxfbrijAs2vTz6q1Xg9FPheUq', 'ran', 0, 1, 1, 0, 1690157377, 1690157421, 0, 1, 'assets/images/faces/1.jpg', 0, 0, 5),
(17, 'reyca.abrasado@gmail.com', '$2y$10$fo/N2/IQsJku5HU5AG/zrOWTcyaG0TEB4pAGrN0u5rW7xKUXPaKx6', 'reyca.abrasado', 0, 0, 1, 0, 1690161689, NULL, 0, 0, NULL, 0, 0, 5),
(18, 'benetez1998@gmail.com', '$2y$10$mSpfB93GjOlG.2KIkSNTyugL6CFQT5lxxomyqMDAa2sOq7R22PLwm', 'benetez', 0, 0, 1, 0, 1690162060, NULL, 0, 1, 'assets/images/faces/1.jpg', 0, 0, 5),
(19, 'conniebenetez@gmail.com', '$2y$10$TenQfdjtCHTpx7QJmCOvQ.rtjmk5kJG6WHeaciDlpC7LZvTCHOhH6', 'pj', 0, 1, 1, 0, 1691978714, 1691978877, 0, 1, 'assets/images/faces/1.jpg', 0, 0, 121),
(20, 'Seller@gmail.com', '$2y$10$lfPUW/0TORKLmdkwQIpFee1SbZyeSLFSBaE56xRIpABDalQG7KYOW', 'Seller', 0, 0, 1, 0, 1692269442, NULL, 0, 1, 'assets/images/faces/1.jpg', 0, 0, 5),
(21, 'razolorcisimo@gmail.com', '$2y$10$vUs02wM8gOEv5cIFUnmw9uvHncqlMI/kysaVoWCANM7AOimvLW2o6', 'Seller', 0, 1, 1, 0, 1692269460, NULL, 0, 1, 'assets/images/faces/1.jpg', 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users_confirmations`
--

CREATE TABLE `users_confirmations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(249) NOT NULL,
  `selector` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_confirmations`
--

INSERT INTO `users_confirmations` (`id`, `user_id`, `email`, `selector`, `token`, `expires`) VALUES
(1, 1, 'marben@gmail.com', '6gN0B-FFnOpSdxUZ', '$2y$10$Q1LNfwXxOq.TB4MyWDFY7u47XlQHuQ4QdTpYXKeCCMU42MW68N1Fi', 1671074742),
(2, 2, 'dave@gmail.com', 'bcdv4miFGoUfFW-S', '$2y$10$VF5Pa/8oOdww1qpyKMU4q.NUVsKqPP/c/ho3CIKYGxAttdjm5c8wS', 1671076203),
(3, 3, 'marbenbenetez@gmail.com', 'hj6IHVbjso7uJEIy', '$2y$10$9MByKtQo8Aly6l3ILSyjnuwAhY9IM5G5Uu7fJaHwZryjImOttUDmi', 1671081568),
(4, 4, 'marbz.gwapo@gmail.com', 'amW2QGZ6Ae7GBzAu', '$2y$10$k2foEyDlVYvPYDCrCpgnn.TdIMULxdAQizy8HWIxPmia/hew.lrLS', 1671081680),
(5, 5, 'marbz.gwapo@gmail.com', 'eBmVdrrcEQTPw0V1', '$2y$10$kXR8YaiAllS.wzJ/B9zg/..kiGEokdmUX7m.dhT0gRfvvFrI/.LNS', 1671081806),
(6, 6, 'Jakob@gmail.com', 'ES3rMqEDU7C802jl', '$2y$10$PZDuAxdk0dBMAyN/T7p6w.vMpUIs0o.w6wXotoPhfVMc15.PSctiG', 1671235536),
(7, 7, 'polangui@gmail.com', 'N-tUi-PTRWISx9a6', '$2y$10$y/PtOTluVLbf56kBxhjG.O4ySr50iBs7thyppQO6CuMI8a3oM54IC', 1671235621),
(8, 8, 'admin@gmail.com', '5ezuZBG4FOycfdJs', '$2y$10$YDk8kTjXEJ9yTHcEfzGxpuWnquNlvUqYalYv1mL7uW8qN5rK8OwlG', 1671238727),
(9, 9, 'admin2@gmail.com', 'CdX25adWxZhhb6T4', '$2y$10$kKGwJ7SD8/AJuY7.pb.gqOMiDu8CugyMUHuT4C7gy8ryhOHfj0zoe', 1671254531),
(10, 10, 'dave@gmail.com', '2QAm1V0q_7L4Pk0d', '$2y$10$Q.2ko2B5BnVf.li8gN8qcOi8B0Y1kJ.e7LUtu97otaLlUx0QeZdlK', 1672794356),
(11, 11, '1@gmail.com', 'qV3gzXH7GiSmM4gM', '$2y$10$KBSPTSriLRlGNqgIX9ydvulZEhjIIcd4E.CzfreWC187eMm6FmcZy', 1672877761),
(12, 12, '2@gmail.com', 'oEXnGZJ8tKKZMw4g', '$2y$10$PrzGcDvhbRtjxIW7wkGb4eyHm0sAwX6no6Zira0FUGXGPQQyTYc8y', 1672877791),
(13, 13, '34@gmail.com', 'Yi4eO75lAi6rmR-l', '$2y$10$cl2.k9q.wnP5.voIBeC81.ByQajf3srUF2/Vz3iF61hvIWYasAqXO', 1672877839),
(14, 14, 'staff@gmail.com', 't81YfoxNF2i8oIIn', '$2y$10$kvE2xW4v7PD8lt9GiAgslOs01IuYZEsE993WqBCEDPzoJl1BYLKDy', 1674693553),
(15, 15, 'tech@gmail.com', 'W3nlmmix_eedncIt', '$2y$10$dN8A.ZF7OZabc1k13mYN0OGJTT1O1G2KsJoGqfrRfJ7RAt0uvhrlG', 1675387562),
(16, 16, 'ran@gmail.com', 'OUA_gdFly4-DLFfL', '$2y$10$eWn56/qHsCT6XSEnA5ICv.7NaP0lkm81Z2srfI8mcYauAJliV5mL6', 1690243777),
(17, 17, 'reyca.abrasado@gmail.com', 'i0MdQa1UDzu0mmxY', '$2y$10$8dKOa6VDT5DKjACyjs9s8.ftdfgInwJFEB40yPDS.103Ick9SXoKC', 1690248089),
(18, 18, 'benetez1998@gmail.com', 'cjGxBQxdAYT69sZB', '$2y$10$MfhLeq9VAM/Wy5Gaa3qTNO26Y97fC5WqayeRAmYSy5IjMQI.Um94e', 1690248460),
(19, 19, 'conniebenetez@gmail.com', 'qWvuFI2h-pToZ2od', '$2y$10$BGd5lzJHD2pzNNq9AmKlquMGTy6JkJXGs20jvjO7IgZvYfTdDd3I2', 1692065114),
(20, 20, 'Seller@gmail.com', 'ObUFeawqjHwCRono', '$2y$10$QEmtlvJmlAEo4SOGZ1VOfOWroFPh9IxdKgqVHVGEgwofWff8e7ORW', 1692355842),
(21, 21, 'razolorcisimo@gmail.com', 'ZBFwRACOdyQq7VNC', '$2y$10$UocKxSt150Dm5R4BODCOvOzP8AuW/BB8cc94vpwlFi.8oOdq4LCc6', 1692355860);

-- --------------------------------------------------------

--
-- Table structure for table `users_remembered`
--

CREATE TABLE `users_remembered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `selector` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_resets`
--

CREATE TABLE `users_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL,
  `selector` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_throttling`
--

CREATE TABLE `users_throttling` (
  `bucket` varchar(44) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `tokens` float UNSIGNED NOT NULL,
  `replenished_at` int(10) UNSIGNED NOT NULL,
  `expires_at` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_throttling`
--

INSERT INTO `users_throttling` (`bucket`, `tokens`, `replenished_at`, `expires_at`) VALUES
('ejWtPDKvxt-q7LZ3mFjzUoIWKJYzu47igC8Jd9mffFk', 74, 1692604821, 1693144821),
('CUeQSH1MUnRpuE3Wqv_fI3nADvMpK_cg6VpYK37vgIw', 3.00042, 1692269460, 1692701460),
('Jjl8HEbTSJpZBWoyXOajJXqciuUdngUbah061jwhliE', 17.0022, 1692269499, 1692305499),
('1rTcy0YhWEFEeQZOh0tnQEcYLqb0-eu3ifKmraiKGow', 498.179, 1671170040, 1671342840),
('eGUCJnt1579e572UXuZGF7jbMfclc5DAVo1Hi_XssZY', 499, 1674867558, 1675040358),
('PjjNRSnirFPbKG1QbUDTnHEQyqaRlS59vSGT-2LqeBI', 499, 1690157606, 1690330406),
('NP-k5blCMEEfDghKXyYd4MpQk0TyN-qXsTGY-r0Keu4', 499, 1674607098, 1674779898),
('QaNTHhV3wC7enU-wJ6-BPLviKNr5STyMnP6KJMCfhOo', 499, 1689310909, 1689483709),
('_EgPS-UrDMiOh2qK0EgHQuKw9m_SU0giFBmSNxkTs2Y', 499, 1690157658, 1690330458),
('zOBbU-5WkzXzdNRzgOwPgxme-giOTkumLzGn5P-4Lug', 497.012, 1692269499, 1692442299);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `user_id` int(233) NOT NULL DEFAULT 0,
  `address` varchar(255) NOT NULL DEFAULT '0',
  `contact` varchar(255) NOT NULL DEFAULT '0',
  `verified_id` varchar(255) NOT NULL DEFAULT '0',
  `verified_status` int(123) NOT NULL DEFAULT 0,
  `date_uploaded` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `user_id`, `address`, `contact`, `verified_id`, `verified_status`, `date_uploaded`) VALUES
(1, 15, 'Dumaguete City', '09759310456', '0', 1, NULL),
(2, 5, 'Tinoagan Bindoy Ph', '09759310456', '0', 0, NULL),
(3, 1, 'Dumaguete City', '09759310456', './verified/2.PNG', 1, 'February 7, 2023, 10:36 am'),
(4, 14, '0', '0', '0', 0, NULL),
(5, 6, '54A Gulgowski Villages', '09759310456', '0', 1, NULL),
(6, 8, 'Dumaguete CIty', '0963262737271', '0', 0, NULL),
(7, 9, '0', '0', '0', 0, NULL),
(8, 16, '0', '0', './verified/6582.jpg', 0, 'July 24, 2023, 8:15 am'),
(9, 18, 'Bais City', '09759313456', '0', 0, NULL),
(10, 19, 'dumaguete', '09759310342', '0', 0, NULL),
(11, 20, 'Seller@gmail.com', 'fghfghfghfgh', '0', 0, NULL),
(12, 21, 'Seller@gmail.com', 'fghfghfghfgh', '0', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_chat`
--
ALTER TABLE `group_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notif_files`
--
ALTER TABLE `notif_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posted_product`
--
ALTER TABLE `posted_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_photo`
--
ALTER TABLE `product_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tech_proof`
--
ALTER TABLE `tech_proof`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tech_ratings`
--
ALTER TABLE `tech_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tech_reviews`
--
ALTER TABLE `tech_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users_confirmations`
--
ALTER TABLE `users_confirmations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `email_expires` (`email`,`expires`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users_remembered`
--
ALTER TABLE `users_remembered`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `users_resets`
--
ALTER TABLE `users_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `user_expires` (`user`,`expires`);

--
-- Indexes for table `users_throttling`
--
ALTER TABLE `users_throttling`
  ADD PRIMARY KEY (`bucket`),
  ADD KEY `expires_at` (`expires_at`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `group_chat`
--
ALTER TABLE `group_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notif_files`
--
ALTER TABLE `notif_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posted_product`
--
ALTER TABLE `posted_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_photo`
--
ALTER TABLE `product_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tech_proof`
--
ALTER TABLE `tech_proof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tech_ratings`
--
ALTER TABLE `tech_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tech_reviews`
--
ALTER TABLE `tech_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users_confirmations`
--
ALTER TABLE `users_confirmations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users_remembered`
--
ALTER TABLE `users_remembered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_resets`
--
ALTER TABLE `users_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
