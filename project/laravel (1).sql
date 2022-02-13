-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2022 at 09:28 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `adverts`
--

CREATE TABLE `adverts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_of` int(11) NOT NULL,
  `connect_line` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adverts`
--

INSERT INTO `adverts` (`id`, `no_of`, `connect_line`, `title`, `text`, `created_at`, `updated_at`) VALUES
(9, 140, 'line 2', 'stop', 'curent', '2021-10-21 16:34:52', '2021-10-22 21:46:26'),
(13, 140, 'line 2', 'change', 'we change smart meter to version 3.4.', '2021-11-04 17:37:31', '2021-11-04 17:37:31'),
(14, 5, 'All-User', 'boshara', 'text5', '2021-11-13 22:51:51', '2021-12-10 19:30:18'),
(15, 5, 'All-User', 'ewrwer', 'dsfddddfs', '2021-11-13 22:58:24', '2021-11-13 22:58:24'),
(16, 140, 'line 1', 'current', 'boshara dssdgf', '2021-11-13 23:19:40', '2021-11-20 21:24:42'),
(18, 5, 'All-User', 'title', 'text', '2021-11-20 18:10:28', '2021-11-20 18:10:48'),
(19, 160, 'line 2', 'stop current', 'stop current at 2pm to 4pm', '2021-11-20 18:38:22', '2021-11-20 18:38:22'),
(20, 161, 'line 2', 'oshara ali', 'r34r43r3', '2021-11-20 21:19:51', '2021-11-20 21:20:36'),
(21, 140, 'line 2', '444', '5555', '2021-11-20 21:25:28', '2021-11-20 21:25:28'),
(22, 140, 'line 1', 'bosharann', 'ttt', '2021-11-20 21:26:16', '2021-11-20 21:27:23'),
(23, 5, 'All-User', 'advert 1', 'this is advert 1 for all customer', '2021-10-11 09:16:12', '2021-11-17 16:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_of` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connect_line` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_ne` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_te` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `no_of`, `name`, `connect_line`, `consumer_ne`, `consumer_te`, `location`, `created_at`, `updated_at`) VALUES
(1, 111, 'dhggeh', 'ljdhjd77', '66', '0', 'hfhf', NULL, NULL),
(3456, 140, 'mohmed', 'line 1', '0', '0', 'Shandi', '2021-10-23 18:43:59', '2021-10-23 18:43:59'),
(9999, 160, 'customer', 'line 1', '0', '0', 'address', '2021-11-20 18:25:30', '2021-11-20 18:25:30'),
(12345, 140, 'asmahan', 'line 1', '0', '0', 'algazira', '2021-10-21 16:25:29', '2021-11-29 21:27:05'),
(45535, 140, 'ahmed', 'line 1', '0', '0', 'location', '2021-10-21 18:23:57', '2021-11-04 17:31:50'),
(344466, 161, 'boshara alsadig', 'line 1', '0', '0', 'alsora', '2021-11-20 20:52:34', '2021-11-20 20:52:34'),
(37253436, 140, 'fds', 'line 1', '0', '0', 'dsd', '2021-10-23 18:50:38', '2021-10-23 18:50:38'),
(37657484, 140, 'ahmed1', 'line 2', '0', '0', 'location', '2021-11-01 17:34:47', '2021-11-01 17:34:47'),
(47253437, 140, 'rr', 'line 2', '0', '0', 'rr', '2021-10-23 18:51:35', '2021-10-23 18:51:35'),
(334556645, 140, 'ali', 'line 2', '0', '0', 'sokey', '2021-10-21 18:22:30', '2021-10-21 18:22:30'),
(374256446, 140, 'boshara', 'line 2', '0', '0', 'alsora , al-13', '2021-09-28 02:15:13', '2021-10-21 14:15:00'),
(42323425543, 140, 'vc', 'line 2', '0', '0', 'cvcv', '2021-10-21 18:23:38', '2021-10-21 18:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `officers`
--

CREATE TABLE `officers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `officer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `officer_Address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `officers`
--

INSERT INTO `officers` (`id`, `officer_name`, `officer_Address`, `created_at`, `updated_at`) VALUES
(140, 'ahmed', 'Khartoum ,Omdurman', '2021-09-07 01:28:17', '2021-09-07 01:28:17'),
(154, 'boshara', 'alsora - al-9', '2021-09-28 02:17:15', '2021-09-28 02:17:15'),
(157, 'alhadi', 'slaha', '2021-10-23 18:15:43', '2021-10-23 18:18:18'),
(160, 'omer', 'alsora', '2021-11-20 18:20:19', '2021-11-20 18:20:19'),
(161, 'ali bbb', 'omdrman', '2021-11-20 20:45:43', '2021-11-20 20:45:43'),
(162, 'ehssan', 'madane', '2021-11-29 21:34:37', '2021-11-29 21:34:37'),
(163, 'bnmhg', 'any', '2021-12-01 17:02:45', '2021-12-01 17:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `power`
--

CREATE TABLE `power` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_meter` int(30) NOT NULL,
  `consumption_reading` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `screen_reading` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amortize_w` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amortize_m` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amortize_y` int(30) NOT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `power`
--

INSERT INTO `power` (`id`, `no_meter`, `consumption_reading`, `screen_reading`, `amortize_w`, `amortize_m`, `amortize_y`, `date`) VALUES
(1, 3456, '91.5', '960.10', '658.10', '261.86976', 2933, '2021-12-01 18:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE `problems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_of` int(11) NOT NULL,
  `no_con` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typ_t` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selve` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`id`, `no_of`, `no_con`, `phone`, `text`, `typ_t`, `selve`, `location`, `created_at`, `updated_at`) VALUES
(128, 140, 3456, '2458', 'sydfgg', 'Type.Pravite', 'ahmed', 'Shandi in line 1', '2022-02-12 20:05:27', NULL),
(129, 140, 3456, '2457', 'boshara ', 'Type.Pravite', 'ahmed', 'Shandi in line 1', '2022-02-12 20:05:59', NULL),
(130, 140, 3456, '2457', 'dhff', 'Type.Pravite', 'ahmed', 'Shandi in line 1', '2022-02-12 20:06:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_of` int(11) NOT NULL,
  `no_meter` int(20) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_blance` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `no_of`, `no_meter`, `price`, `amount`, `check_blance`, `created_at`, `updated_at`) VALUES
(3756778, 140, 374256446, '300', '100', '0', '2021-09-28 02:15:58', '2021-09-28 02:15:58'),
(3756782, 140, 374256446, '22', '7.3333333333333', '0', '2021-10-21 18:18:58', '2021-10-21 18:18:58'),
(3756783, 140, 3454655, '30', '10', '0', '2021-10-23 19:01:43', '2021-10-23 19:01:43'),
(34563756822, 140, 3456, '3000', '1000', 'yes', '2021-11-19 05:17:54', '2021-11-19 05:17:54'),
(34563756833, 140, 3456, '3000', '1000', 'yes', '2021-12-01 17:23:06', '2021-12-01 17:23:06'),
(34563756834, 140, 3456, '3000', '1000', 'yes', '2021-12-01 17:23:39', '2021-12-01 17:23:39');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'app', 'app@gmail.com', NULL, '12345', '10', '2021-10-20 09:16:12', '2021-10-11 09:16:12'),
(5, 'ahmed', 'ahmed@gmail.com', NULL, '$2y$10$wuLmjPfGDRZOLeKZes5ozuaxqapFrOG2H5iDotr29a/GAb5tyFQj2', '52oN2tQG905QkM7vr6UD0i3wx0hLYgsDgPBhiyoUM3trAUOO6P4GdwH1ZgNC', '2021-08-25 19:18:22', '2021-08-25 19:18:22'),
(140, 'ahmed', 'boshaalsadig511@gmail.com', NULL, '$2y$10$C29k0Xv8j.QZhAAnhTVfCOdXM65isDv7hRLls9GlmmrvSGyOVy2oq', '9kGDtzFzn0VFRleKmqfNd9fsUYTBuoGEqzYLbtvlZNIbguK0o5ylYVdOA7UP', '2021-09-28 02:13:17', '2021-09-28 02:13:17'),
(154, 'boshara', 'boshara@gmail.com', NULL, '$2y$10$DJ.Vy0wJXtUjFlq/Rnfphe.TWxxGt18IbNkfVR5zwwdSg66Nb3/ne', 'A18dpIcB2tFEmgsUHF4flTRVISL4vJda4Tbs6dYQBMFFDhW1P7Oh6jgqa4iy', '2021-09-28 02:17:31', '2021-09-28 02:17:31'),
(157, 'alhadi', 'alhadi@gmail.com', NULL, '$2y$10$MKkPSfQrdjndHp1.eZIy8u1NX2BglkQkDm3vd3ySn7Q3qL8dOU3S2', 'OthBE7M76wkJyac7qAr02VAkGK3J3Nm2Dg67jHO8R0A0GnTwAJlqJ2gHcvIZ', '2021-10-23 18:20:42', '2021-10-23 18:20:42'),
(159, 'ali', 'ali@gmail.com', NULL, '$2y$10$SZW0FabAt7/9dTBFiVPY/eSIE.lucF0JML7kzrvn28hC5FBqspgPC', '101', '2021-11-20 18:13:41', '2021-11-20 18:13:41'),
(160, 'omer', 'omer@gmail.com', NULL, '$2y$10$ijx5ACm6tN5MWyXuS1S.AelYG7Fy9Fhp55nWbx4L.j7eCkYvvh/pS', 'kfU3LLZ1SfAmTURqFGhWK2scC6HBKDHGbeSTO5C8SQhX4uqnUy5eoTNu4Z1q', '2021-11-20 18:20:30', '2021-11-20 18:20:30'),
(161, 'ali bbb', 'a@gmail.com', NULL, '$2y$10$A8vnsz9ncCOQ3D.lS7PA8.q9S43czO4U95Q3yxOqQsujOw3nfOmr2', 'Tc1WBxD6YKUYMo5TMt7Y2Kpg9OnLPmQipa0nKgjQUThNTAv4vFdAZFbxOeyp', '2021-11-20 20:46:46', '2021-11-20 20:46:46'),
(162, 'ehssan', 'Ehssan@gmail.com', NULL, '$2y$10$DSIxvOPAibKnUiGW0sTDpOEmRYuS3u.pIA8Y.TTvziDgYZz4Wut/u', '101', '2021-11-29 21:40:43', '2021-11-29 21:40:43'),
(2208, '', 'fsNNdf', NULL, 'fsdfSS', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adverts`
--
ALTER TABLE `adverts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officers`
--
ALTER TABLE `officers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `power`
--
ALTER TABLE `power`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `adverts`
--
ALTER TABLE `adverts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42323425544;

--
-- AUTO_INCREMENT for table `officers`
--
ALTER TABLE `officers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `power`
--
ALTER TABLE `power`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14775;

--
-- AUTO_INCREMENT for table `problems`
--
ALTER TABLE `problems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34563756835;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2259;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
