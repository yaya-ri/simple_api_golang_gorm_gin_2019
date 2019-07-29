-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 29, 2019 at 03:31 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `rest_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `enable`, `created_at`, `updated_at`) VALUES
(2, 'adsds', 1, '2019-07-28 11:54:46', '2019-07-28 23:00:40'),
(3, 'learning', 1, '2019-07-28 11:55:17', '2019-07-28 11:55:17'),
(4, 'learning', 1, '2019-07-28 12:00:42', '2019-07-28 12:00:42'),
(5, 'learning', 1, '2019-07-28 12:02:27', '2019-07-28 12:02:27'),
(6, 'learning', 1, '2019-07-28 12:03:08', '2019-07-28 12:03:08'),
(7, 'learning', 1, '2019-07-28 12:03:17', '2019-07-28 12:03:17'),
(8, 'learning', 1, '2019-07-28 12:04:21', '2019-07-28 12:04:21'),
(9, 'learning', 1, '2019-07-28 12:04:23', '2019-07-28 12:04:23'),
(10, 'learning', 0, '2019-07-28 12:04:36', '2019-07-29 03:01:39'),
(11, 'learning', 1, '2019-07-28 12:04:37', '2019-07-28 12:04:37'),
(12, 'belajar', 1, '2019-07-28 13:42:50', '2019-07-28 13:42:50'),
(13, 'aye', 0, '2019-07-29 02:59:39', '2019-07-29 03:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `category_products`
--

CREATE TABLE `category_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_products`
--

INSERT INTO `category_products` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '2019-07-28 13:20:44', '2019-07-28 13:20:44'),
(2, 4, 4, '2019-07-28 14:26:48', '2019-07-28 23:00:31'),
(3, 4, 3, '2019-07-29 03:11:56', '2019-07-29 03:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `file` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `file`, `enable`, `created_at`, `updated_at`) VALUES
(1, 'images.jpg', './images/images.jpg.png', 0, '2019-07-28 22:43:22', '2019-07-28 22:43:22'),
(2, 'batik.jpg', './images/batik.jpg.png', 0, '2019-07-29 03:16:05', '2019-07-29 03:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `enable`, `created_at`, `updated_at`) VALUES
(1, 'adsds', 'aassss', 1, '2019-07-28 12:13:59', '2019-07-28 23:00:54'),
(2, 'buku', 'buku adalah', 1, '2019-07-28 13:41:57', '2019-07-28 13:41:57'),
(3, 'buku', '', 1, '2019-07-28 14:34:04', '2019-07-28 14:34:04'),
(4, 'uyea', 'huy', 1, '2019-07-29 02:48:58', '2019-07-29 03:08:43'),
(5, 'u', 'u', 1, '2019-07-29 03:03:35', '2019-07-29 03:10:12'),
(6, 'uyea', 'huy', 1, '2019-07-29 03:04:58', '2019-07-29 03:04:58'),
(7, 'uyea', 'huy', 1, '2019-07-29 03:09:28', '2019-07-29 03:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2019-07-28 22:54:00', '2019-07-28 22:54:00'),
(2, 4, 2, '2019-07-29 03:17:39', '2019-07-29 03:17:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_products`
--
ALTER TABLE `category_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_idx` (`product_id`),
  ADD KEY `category_idx` (`category_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_idx` (`product_id`),
  ADD KEY `image_idx` (`image_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category_products`
--
ALTER TABLE `category_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
