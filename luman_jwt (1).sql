-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 13, 2018 at 07:52 PM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.1.24-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luman_jwt`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2018_12_12_135813_create_users_table', 1),
(5, '2018_12_13_134346_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `product_name`, `product_price`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'product1', '5000\r\n', 1, 0, NULL, NULL),
(2, 1, 'product2', '15000\r\n', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Finn Streich', 'adrien75@yahoo.com', '$2y$10$hW.uOosA03YFnJbGBnP.huELK4p9csKXmM6oqmQELOoyAG9z4QmQG', 1, 0, '2018-12-13 13:32:41', '2018-12-13 13:32:41'),
(2, 'Prof. Leann Hayes', 'vincenzo.marvin@durgan.com', '$2y$10$VN/qq3KySJ63QJmZKad.rOt6vnXKUoSMcsovhkohY704Q.jT39VHW', 1, 0, '2018-12-13 13:32:41', '2018-12-13 13:32:41'),
(3, 'Mr. Marques Wolf III', 'nathanial06@hotmail.com', '$2y$10$6iLHObQzcSfStWj7W8MjUuY/jU.rCCdPZJgr5quE6H8VcfRW75X/q', 1, 0, '2018-12-13 13:32:41', '2018-12-13 13:32:41'),
(4, 'Judge Kirlin MD', 'michaela35@hotmail.com', '$2y$10$uuKPQAy6rAvf4CGQAU6w9e3I8ZZ8K61bVTbjwRrt8TwwXquYrqheC', 1, 0, '2018-12-13 13:32:42', '2018-12-13 13:32:42'),
(5, 'Miss Hillary Roberts', 'ruby.mclaughlin@wilkinson.info', '$2y$10$DW/QyBxgTm6N2igBp2b8Ae.DXpk736V9JVCU0xcMoHu45FXEe9OWi', 1, 0, '2018-12-13 13:32:42', '2018-12-13 13:32:42'),
(6, 'Odessa Mohr', 'dsenger@hills.com', '$2y$10$NxgdgigZcRvLffjE77NMTec/MxcB8PZAypKAN.QxsxcKhhEa9wy/K', 1, 0, '2018-12-13 13:32:42', '2018-12-13 13:32:42'),
(7, 'Prof. Coleman Hagenes DDS', 'gerry77@gmail.com', '$2y$10$2YBxPxL5zcZ93jQN6z7QRe7sxr/BNquExcz40E22jNmQ4CRjACKcC', 1, 0, '2018-12-13 13:32:42', '2018-12-13 13:32:42'),
(8, 'Arnulfo Bayer', 'carolyne70@herman.com', '$2y$10$dKh2mYZa7ZBSxfcLTICUW.Loxwjfxm7ytF/g21PdRRNM3uaTPF2lW', 1, 0, '2018-12-13 13:32:42', '2018-12-13 13:32:42'),
(9, 'Abe Jakubowski II', 'willa.beatty@hotmail.com', '$2y$10$mks3b4ZPJpQwfZcq7LHYceAF1PUSaFW1abI8AgxIf2TDX9xrwEzJu', 1, 0, '2018-12-13 13:32:42', '2018-12-13 13:32:42'),
(10, 'Deron Borer', 'savion.olson@deckow.org', '$2y$10$k6G5TC0ZjQHUALiuxY1LAu13Z2VMIzCxG8fWgCiJHWXbKgDy7HFzi', 1, 0, '2018-12-13 13:32:42', '2018-12-13 13:32:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
