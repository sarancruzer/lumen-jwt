-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 12, 2018 at 08:06 PM
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
(2, '2018_12_12_135813_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Presley Gulgowski', 'eva39@hotmail.com', '$2y$10$BmgOcMy8TDGks1UpkoWngODg0IDd1I5dqjFsx1.vJOgQEVDebAmlK', '2018-12-12 14:18:54', '2018-12-12 14:18:54'),
(2, 'Dr. Alexandro Jacobson PhD', 'wintheiser.esmeralda@osinski.com', '$2y$10$zfns/3Pel6hFeNInWgCvY.wX0ugCu8M4JEL8zbzTPZp0FLEUL8Zeq', '2018-12-12 14:18:54', '2018-12-12 14:18:54'),
(3, 'Lavonne Reichel', 'ilene04@dicki.info', '$2y$10$Um5ZATay.hDFQmWAPSjks.LkdZTL5l5PnOaj3d3o32aBIrLhQyKci', '2018-12-12 14:18:54', '2018-12-12 14:18:54'),
(4, 'Clarissa Bernier Jr.', 'bashirian.noemie@jones.com', '$2y$10$yx/4kB4jFujBDL20o6rMY.ZKnAMkSl18QjQ4ACUrVukeBcT6mD5wW', '2018-12-12 14:18:54', '2018-12-12 14:18:54'),
(5, 'Dr. Kathryn Morissette', 'marquardt.osborne@gmail.com', '$2y$10$WGbBphL0ASX0bewJu0QQi.C2w8vMw0WavPbq/G/mNEJ..1mrQ5e8y', '2018-12-12 14:18:54', '2018-12-12 14:18:54'),
(6, 'Germaine Krajcik', 'casper.steve@smitham.info', '$2y$10$OS.9V3kCvWDML4S8hKl8L.YF7IIHoxTKGNZnv6uHSCcfNyD1atw7a', '2018-12-12 14:18:54', '2018-12-12 14:18:54'),
(7, 'Angus Cremin', 'susie73@yahoo.com', '$2y$10$4AwMtW11em5IYVHZT71pD.LnnnVBBChWEum81r2V5xnlLCVvIuDJy', '2018-12-12 14:18:54', '2018-12-12 14:18:54'),
(8, 'Guillermo Dach', 'twila29@gmail.com', '$2y$10$EQOwiYYVKKwhtdOnLlELc.6VsgyW/nesuN8GAL9p6S/yB99tjOAym', '2018-12-12 14:18:55', '2018-12-12 14:18:55'),
(9, 'Jalyn Corwin', 'wilfredo63@yahoo.com', '$2y$10$ujtFx68Oq.WESgR.OgRvx.rB7kydQNtD6baKgkiHzKCipc2jSZ0I6', '2018-12-12 14:18:55', '2018-12-12 14:18:55'),
(10, 'Prof. Davonte Grant', 'hmonahan@hermiston.info', '$2y$10$P5u61W5UcKStNQMwXRLfYevheykgHWzTWjo2z4p9JyqQZxexHC/WC', '2018-12-12 14:18:55', '2018-12-12 14:18:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
