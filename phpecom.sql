-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2023 at 01:38 PM
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
-- Database: `phpecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`) VALUES
(1, 2, 2, 2, '2023-06-08 11:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_description`, `meta_keyword`, `created_at`) VALUES
(4, 'phone', 'realme', '  ', 0, 0, 'Apple-iPhone-11-PNG-Image.png', '', '', '', '2023-05-28 14:40:23'),
(5, 'laptop', '', '   ', 0, 0, 'images (3) (1).png', '', '', '', '2023-05-28 14:41:26'),
(6, 'Electronic ', ' Electronic', '', 0, 0, '1686113181.jpg', '', '', '', '2023-06-07 04:46:21'),
(7, 'Home', 'Home', '', 0, 0, '1686113207.png', '', '', '', '2023-06-07 04:46:47'),
(8, 'Grossary', 'Grossary', '', 0, 0, '1686113238.png', '', '', '', '2023-06-07 04:47:18'),
(9, 'Fashion', 'Fashion', '', 0, 0, '1686113258.png', '', '', '', '2023-06-07 04:47:38'),
(10, 'Cammera', 'Cammera', '', 0, 0, '1686158322.jpg', '', '', '', '2023-06-07 17:18:42'),
(11, 'Book', 'Book', '', 0, 0, '1686158431.jpg', '', '', '', '2023-06-07 17:20:31'),
(12, 'Little Kids', 'Little Kids', '', 0, 0, '1686158615.jpg', '', '', '', '2023-06-07 17:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `trending` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `qty`, `meta_title`, `meta_description`, `meta_keyword`, `status`, `trending`, `image`, `created_at`) VALUES
(5, 4, 'Realme', 'realme not 7', 'realme Now you can browse privately, and other people who use this device won’t see your activity. However, downloads, bookmarks and reading list items will be saved. Learn more\r\nChrome won’t save the following information: Your browsing history Cookies and site data Information entered in forms Your activity might still be visible to: Websites you visit\r\nYour employer or school\r\nYour internet service provider', 'realme Now you can browse privately, and other people who use this device won’t see your activity. However, downloads, bookmarks and reading list items will be saved. Learn more\r\nChrome won’t save the following information: Your browsing history Cookies and site data Information entered in forms Your activity might still be visible to: Websites you visit\r\nYour employer or schoolrealme Now you can browse privately, and other people who use this device won’t see your activity. However, downloads, bookmarks and reading list items will be saved. Learn more\r\nChrome won’t save the following information: Your browsing history Cookies and site data Information entered in forms Your activity might still be visible to: Websites you visit\r\nYour employer or school Your internet service provider\r\nYour internet service provider', 90000, 8000, 8, 'realme Now you can browse privately, and other people who use this device won’t see your activity. However, downloads, bookmarks and reading list items will be saved. Learn more Chrome won’t ', 'realme Now you can browse privately, and other people who use this device won’t see your activity. However, downloads, bookmarks and reading list items will be saved. Learn more\r\nChrome won’t save the following information: Your browsing history Cookies and site data Information entered in forms Your activity might still be visible to: Websites you visit\r\nYour employer or school\r\nYour internet service provider', 'realme Now you can browse privately, and other people who use this device won’t see your activity. However, downloads, bookmarks and reading list items will be saved. Learn more\r\nChrome won’t save the following information: Your browsing history Cookies and site data Information entered in forms Your activity might still be visible to: Websites you visit\r\nYour employer or school\r\nYour internet service provider', 0, 1, 'download (1).jpg', '2023-05-28 13:49:36'),
(6, 4, 'Poco', 'poco', '', '', 12000, 10000, 12, '', '', '', 0, 0, 'Apple-iPhone-11-PNG-Image.png', '2023-05-28 18:46:45'),
(7, 4, 'apple', 'realme', 'cs', 'dsd', 2, 2, 2, 'w', 'd', 'd', 0, 0, 'images.jpg', '2023-05-28 18:56:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` int(15) NOT NULL,
  `image` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role_as` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `image`, `password`, `created_at`, `role_as`) VALUES
(21, 'Sangram bauri', 'sangrambauri2003@gmail.com', 2147483647, '1685789395.jfif', '1234', '2023-06-03 10:49:55', 0),
(22, 'Hello Word ', 'S@gmail.com', 2147483647, '', '1', '2023-06-03 11:02:22', 0),
(23, 'Sangram bauri', 'sangrambauri2003@gmail.com', 2147483647, '', '1', '2023-06-03 11:04:42', 0),
(24, 'Sangram bauri', 'sangrambauri2003@gmail.com', 2147483647, '1685790447.png', '12345', '2023-06-03 11:07:27', 0),
(25, 'Sangram bauri', 'admin@gmail.com', 2147483647, '', 'admin', '2023-06-03 15:19:05', 1),
(26, '', '', 0, '1686059118.', '', '2023-06-06 13:45:18', 0),
(27, 'Sangram bauri', 'sangrambauri2003@gmail.com', 2147483647, '1687441091.', '', '2023-06-22 13:38:11', 0),
(28, 'Sangram bauri', 'sangram@gmail.com', 2147483647, '1687447905.', '12', '2023-06-22 15:31:45', 0),
(29, 'sangram', 'S@gmail.com', 345565656, '1687449903.', '1234', '2023-06-22 16:05:03', 0),
(30, '', '', 0, '1687514890.', '', '2023-06-23 10:08:10', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
