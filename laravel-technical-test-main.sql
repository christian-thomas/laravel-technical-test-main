-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2021 at 09:02 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-technical-test-main`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `business_id`, `business_name`, `created_at`, `updated_at`) VALUES
(1, '0', 'All', '2021-03-12 18:36:30', '2021-03-12 18:36:30'),
(2, '7', 'Distributors/Transporters', '2021-03-12 18:36:30', '2021-03-12 18:36:30'),
(3, '7838', 'Farmers/growers', '2021-03-12 18:36:30', '2021-03-12 18:36:30'),
(4, '5', 'Hospitals/Childcare/Caring Premises', '2021-03-12 18:36:30', '2021-03-12 18:36:30'),
(5, '7842', 'Hotel/bed & breakfast/guest house', '2021-03-12 18:36:30', '2021-03-12 18:36:30'),
(6, '14', 'Importers/Exporters', '2021-03-12 18:36:30', '2021-03-12 18:36:30'),
(7, '7839', 'Manufacturers/packers', '2021-03-12 18:36:30', '2021-03-12 18:36:30'),
(8, '7846', 'Mobile caterer', '2021-03-12 18:36:30', '2021-03-12 18:36:30'),
(9, '7841', 'Other catering premises', '2021-03-12 18:36:30', '2021-03-12 18:36:30'),
(10, '7843', 'Pub/bar/nightclub', '2021-03-12 18:36:30', '2021-03-12 18:36:30'),
(11, '1', 'Restaurant/Cafe/Canteen', '2021-03-12 18:36:30', '2021-03-12 18:36:30'),
(12, '4613', 'Retailers - other', '2021-03-12 18:36:30', '2021-03-12 18:36:30'),
(13, '7840', 'Retailers - supermarkets/hypermarkets', '2021-03-12 18:36:30', '2021-03-12 18:36:30'),
(14, '7845', 'School/college/university', '2021-03-12 18:36:30', '2021-03-12 18:36:30'),
(15, '7844', 'Takeaway/sandwich shop', '2021-03-12 18:36:30', '2021-03-12 18:36:30'),
(16, '0', 'All', '2021-03-12 18:39:52', '2021-03-12 18:39:52'),
(17, '7', 'Distributors/Transporters', '2021-03-12 18:39:52', '2021-03-12 18:39:52'),
(18, '7838', 'Farmers/growers', '2021-03-12 18:39:52', '2021-03-12 18:39:52'),
(19, '5', 'Hospitals/Childcare/Caring Premises', '2021-03-12 18:39:52', '2021-03-12 18:39:52'),
(20, '7842', 'Hotel/bed & breakfast/guest house', '2021-03-12 18:39:52', '2021-03-12 18:39:52'),
(21, '14', 'Importers/Exporters', '2021-03-12 18:39:52', '2021-03-12 18:39:52'),
(22, '7839', 'Manufacturers/packers', '2021-03-12 18:39:52', '2021-03-12 18:39:52'),
(23, '7846', 'Mobile caterer', '2021-03-12 18:39:52', '2021-03-12 18:39:52'),
(24, '7841', 'Other catering premises', '2021-03-12 18:39:52', '2021-03-12 18:39:52'),
(25, '7843', 'Pub/bar/nightclub', '2021-03-12 18:39:52', '2021-03-12 18:39:52'),
(26, '1', 'Restaurant/Cafe/Canteen', '2021-03-12 18:39:52', '2021-03-12 18:39:52'),
(27, '4613', 'Retailers - other', '2021-03-12 18:39:52', '2021-03-12 18:39:52'),
(28, '7840', 'Retailers - supermarkets/hypermarkets', '2021-03-12 18:39:52', '2021-03-12 18:39:52'),
(29, '7845', 'School/college/university', '2021-03-12 18:39:52', '2021-03-12 18:39:52'),
(30, '7844', 'Takeaway/sandwich shop', '2021-03-12 18:39:52', '2021-03-12 18:39:52'),
(31, '0', 'All', '2021-03-12 18:40:52', '2021-03-12 18:40:52'),
(32, '7', 'Distributors/Transporters', '2021-03-12 18:40:52', '2021-03-12 18:40:52'),
(33, '7838', 'Farmers/growers', '2021-03-12 18:40:52', '2021-03-12 18:40:52'),
(34, '5', 'Hospitals/Childcare/Caring Premises', '2021-03-12 18:40:52', '2021-03-12 18:40:52'),
(35, '7842', 'Hotel/bed & breakfast/guest house', '2021-03-12 18:40:52', '2021-03-12 18:40:52'),
(36, '14', 'Importers/Exporters', '2021-03-12 18:40:52', '2021-03-12 18:40:52'),
(37, '7839', 'Manufacturers/packers', '2021-03-12 18:40:52', '2021-03-12 18:40:52'),
(38, '7846', 'Mobile caterer', '2021-03-12 18:40:52', '2021-03-12 18:40:52'),
(39, '7841', 'Other catering premises', '2021-03-12 18:40:52', '2021-03-12 18:40:52'),
(40, '7843', 'Pub/bar/nightclub', '2021-03-12 18:40:52', '2021-03-12 18:40:52'),
(41, '1', 'Restaurant/Cafe/Canteen', '2021-03-12 18:40:52', '2021-03-12 18:40:52'),
(42, '4613', 'Retailers - other', '2021-03-12 18:40:52', '2021-03-12 18:40:52'),
(43, '7840', 'Retailers - supermarkets/hypermarkets', '2021-03-12 18:40:52', '2021-03-12 18:40:52'),
(44, '7845', 'School/college/university', '2021-03-12 18:40:52', '2021-03-12 18:40:52'),
(45, '7844', 'Takeaway/sandwich shop', '2021-03-12 18:40:52', '2021-03-12 18:40:52');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2021_03_12_182440_create_business_table', 2),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(6, '2016_06_01_000004_create_oauth_clients_table', 3),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Simple Technical Test Personal Access Client', 'KBlAwHyx3CVuY6WE9e7ZIb8lAvX4Gs0sdGB8R3QO', NULL, 'http://localhost', 1, 0, 0, '2021-03-12 19:39:06', '2021-03-12 19:39:06'),
(2, NULL, 'Simple Technical Test Password Grant Client', 'Ji2eUOM3yJfiweJoIPnvcO03rjXXFxv9P9N1oSLl', 'users', 'http://localhost', 0, 1, 0, '2021-03-12 19:39:06', '2021-03-12 19:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-03-12 19:39:06', '2021-03-12 19:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@test.com', NULL, '$2y$12$jre6N7deAixvZbiUNDtHC.sZgMQ9MyjWBJEEV48G3nY1KZDNCtY4i', 'i-am-the-token-you-are-looking-for', NULL, '2021-03-12 17:30:22', '2021-03-12 17:30:22'),
(2, 'Prof. Jolie Lehner V', 'kbode@example.net', '2021-03-12 17:30:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '3OZpx2M3W9', '2021-03-12 17:30:22', '2021-03-12 17:30:22'),
(3, 'Michael Hammes', 'broderick.sanford@example.com', '2021-03-12 17:30:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '6DGfVePU2R', '2021-03-12 17:30:22', '2021-03-12 17:30:22'),
(4, 'Frederique Hill', 'wheaney@example.net', '2021-03-12 17:30:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'S5Ko0fBY4j', '2021-03-12 17:30:22', '2021-03-12 17:30:22'),
(5, 'Prof. Paolo Stiedemann I', 'gpaucek@example.com', '2021-03-12 17:30:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'PqPyegplDJ', '2021-03-12 17:30:22', '2021-03-12 17:30:22'),
(6, 'Santina Larson', 'keebler.hector@example.net', '2021-03-12 17:30:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'V3HZb8zxBg', '2021-03-12 17:30:22', '2021-03-12 17:30:22'),
(7, 'Broderick Littel', 'toy16@example.net', '2021-03-12 17:30:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Q1FlztZcXk', '2021-03-12 17:30:22', '2021-03-12 17:30:22'),
(8, 'Noemy Aufderhar', 'jakob.becker@example.net', '2021-03-12 17:30:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '9sAVr2qr4x', '2021-03-12 17:30:22', '2021-03-12 17:30:22'),
(9, 'User', 'user22@gmai.com', '2021-03-12 17:30:22', '$2y$10$cD1SR9B9ryW0/DAgShYsD.E0osQA0pIah0rjHtV6p9lVrAJZl9uyG', NULL, 'R4W8gXcp06', '2021-03-12 17:30:22', '2021-03-12 19:56:22'),
(10, 'Mr. Alek Bartoletti', 'antwan.brown@example.net', '2021-03-12 17:30:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'Bdv3w8C0o5', '2021-03-12 17:30:22', '2021-03-12 17:30:22'),
(11, 'Jaycee Roberts', 'kurtis.oreilly@example.com', '2021-03-12 17:30:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'VBMjTRHSDA', '2021-03-12 17:30:22', '2021-03-12 17:30:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
