-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2018 at 06:14 PM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.1.19-1+ubuntu17.10.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `9javoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `topic_id`, `user_id`, `message`, `updated_at`, `created_at`) VALUES
(1, 7070668, 4, 'i dont agree with u have been on this network for 8years now and i cant say am happy with the service', '2018-09-21 12:09:11', '2018-09-21 12:09:11'),
(2, 57646785, 4, 'i dont agree with u have been on this network for 8years now and i cant say am happy with the service', '2018-09-22 18:07:11', '2018-09-22 18:07:11'),
(3, 57646785, 4, 'i dont agree with u have been on this network for 8years now and i cant say am happy with the service', '2018-09-24 13:51:02', '2018-09-24 13:51:02'),
(4, 57646785, 4, 'i dont agree with u have been on this network for 8years now and i cant say am happy with the service', '2018-09-24 13:59:57', '2018-09-24 13:59:57'),
(5, 57646785, 4, 'sorry pls i dont understand', '2018-09-24 14:23:23', '2018-09-24 14:23:23'),
(6, 57646785, 4, 'sorry pls i dont understand', '2018-09-24 14:24:57', '2018-09-24 14:24:57'),
(7, 57646785, 4, 'na wa ooo', '2018-09-24 14:37:23', '2018-09-24 14:37:23'),
(8, 57646785, 4, 'hello', '2018-09-24 14:37:33', '2018-09-24 14:37:33'),
(9, 34243441, 4, 'lies lies and more lies', '2018-09-24 15:46:36', '2018-09-24 15:46:36'),
(10, 34243441, 4, 'na wa ooo', '2018-09-24 15:53:31', '2018-09-24 15:53:31'),
(11, 34243441, 4, 'na wa ooo', '2018-09-24 15:54:09', '2018-09-24 15:54:09'),
(12, 34243441, 4, 'na wa ooo', '2018-09-24 15:59:19', '2018-09-24 15:59:19'),
(13, 34243441, 4, 'na wa ooo', '2018-09-24 16:00:06', '2018-09-24 16:00:06'),
(14, 34243441, 4, 'na wa ooo', '2018-09-24 16:01:14', '2018-09-24 16:01:14'),
(15, 34243441, 4, 'na wa ooo', '2018-09-24 16:02:02', '2018-09-24 16:02:02'),
(16, 34243441, 4, 'na wa ooo', '2018-09-24 16:02:11', '2018-09-24 16:02:11'),
(17, 34243441, 4, 'na wa ooo', '2018-09-24 16:07:34', '2018-09-24 16:07:34'),
(18, 34243441, 4, 'na wa ooo', '2018-09-24 16:07:58', '2018-09-24 16:07:58'),
(19, 34243441, 4, 'na wa ooo', '2018-09-24 16:09:21', '2018-09-24 16:09:21'),
(20, 34243441, 4, 'na wa ooo', '2018-09-24 16:10:49', '2018-09-24 16:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` int(11) NOT NULL,
  `ind_id` int(20) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `ind_id`, `name`, `updated_at`, `created_at`) VALUES
(1, 13657619, 'Agriculture industry', '2018-09-21 11:34:10', '2018-09-21 11:34:10'),
(2, 22674890, 'Chemical industry', '2018-09-21 11:34:10', '2018-09-21 11:34:10'),
(3, 1069894, 'Defense industry', '2018-09-21 11:34:10', '2018-09-21 11:34:10'),
(4, 36406965, 'Energy industry', '2018-09-21 11:34:10', '2018-09-21 11:34:10'),
(5, 12752324, 'Computer industry', '2018-09-21 11:34:10', '2018-09-21 11:34:10'),
(6, 4301619, 'Financial services industry', '2018-09-21 11:35:21', '2018-09-21 11:35:21'),
(7, 15547045, 'Food industry', '2018-09-21 11:35:21', '2018-09-21 11:35:21'),
(8, 4065255, 'Health care industry', '2018-09-21 11:35:21', '2018-09-21 11:35:21'),
(9, 52284716, 'Information industry', '2018-09-21 11:35:21', '2018-09-21 11:35:21'),
(10, 8759707, 'Manufacturing', '2018-09-21 11:35:21', '2018-09-21 11:35:21'),
(11, 65946363, 'Entertainment industry', '2018-09-21 11:35:21', '2018-09-21 11:35:21'),
(12, 86520192, 'Telecommunications industry', '2018-09-21 11:37:51', '2018-09-21 11:37:51'),
(13, 3510764, 'Transport industry', '2018-09-21 11:37:52', '2018-09-21 11:37:52'),
(14, 92292864, 'Water industry', '2018-09-21 11:37:52', '2018-09-21 11:37:52'),
(15, 7250675, 'Fashion industry', '2018-09-21 11:37:52', '2018-09-21 11:37:52'),
(16, 36779150, 'Housing industry', '2018-09-21 11:37:52', '2018-09-21 11:37:52'),
(17, 31019757, 'Retail industry', '2018-09-21 11:37:52', '2018-09-21 11:37:52'),
(18, 26230918, 'Religion industry', '2018-09-21 11:37:52', '2018-09-21 11:37:52'),
(19, 11470598, 'Mass media', '2018-09-21 11:37:52', '2018-09-21 11:37:52'),
(20, 105573, 'Oil & Gas industry', '2018-09-21 11:39:00', '2018-09-21 11:39:00');

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
(2, '2014_10_12_100000_create_password_resets_table', 2),
(3, '2018_09_19_123636_create_industries_table', 3),
(4, '2018_09_19_124315_create_sub_industries_table', 4),
(5, '2018_09_19_124909_create_topics_table', 5),
(6, '2018_09_19_130415_create_topics_table', 6),
(7, '2018_09_20_162054_create_comment', 7),
(8, '2018_09_20_162629_migrate', 7),
(9, '2018_09_20_163943_create_comments_table', 7),
(10, '2018_09_21_151024_create_ratings_table', 7),
(11, '2018_09_23_212350_create_ratings_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `created_at`, `updated_at`, `rating`, `message`, `rateable_type`, `rateable_id`, `user_id`) VALUES
(1, '2018-09-23 20:58:16', '2018-09-23 20:58:16', 1, '', 'App\\comments', 2, 4),
(2, '2018-09-23 20:59:48', '2018-09-23 20:59:48', 5, '', 'App\\comments', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_industries`
--

CREATE TABLE `sub_industries` (
  `id` int(11) NOT NULL,
  `sub_ind_id` int(20) NOT NULL,
  `ind_id` int(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_industries`
--

INSERT INTO `sub_industries` (`id`, `sub_ind_id`, `ind_id`, `name`, `updated_at`, `created_at`) VALUES
(1, 50357077, 86520192, 'Airtel Nigeria', '2018-09-21 11:46:10', '2018-09-21 11:46:10'),
(2, 13429171, 86520192, 'Dizengoff WA (NIG) Ltd', '2018-09-21 11:46:10', '2018-09-21 11:46:10'),
(3, 14433223, 86520192, 'Etisalat Nigeria', '2018-09-21 11:46:10', '2018-09-21 11:46:10'),
(4, 61225654, 86520192, 'Globacom Limited', '2018-09-21 11:46:10', '2018-09-21 11:46:10'),
(5, 71480675, 86520192, 'ipNX Nigeria', '2018-09-21 11:46:10', '2018-09-21 11:46:10'),
(6, 36233913, 86520192, 'MTN', '2018-09-21 11:46:10', '2018-09-21 11:46:10'),
(7, 20313820, 86520192, 'Airtel Nigeria', '2018-09-21 11:46:55', '2018-09-21 11:46:55'),
(8, 28144151, 86520192, 'Dizengoff WA (NIG) Ltd', '2018-09-21 11:46:55', '2018-09-21 11:46:55'),
(9, 26706835, 86520192, 'Etisalat Nigeria', '2018-09-21 11:46:55', '2018-09-21 11:46:55'),
(10, 14138155, 86520192, 'Globacom Limited', '2018-09-21 11:46:55', '2018-09-21 11:46:55'),
(11, 20388251, 86520192, 'ipNX Nigeria', '2018-09-21 11:46:55', '2018-09-21 11:46:55'),
(12, 20544751, 86520192, 'MTN', '2018-09-21 11:46:55', '2018-09-21 11:46:55'),
(13, 23570433, 86520192, 'Nigerian Telecommunications Limited', '2018-09-21 11:46:55', '2018-09-21 11:46:55'),
(14, 62099078, 86520192, 'Cisco Systems', '2018-09-21 11:46:55', '2018-09-21 11:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `sub_in_id` int(11) NOT NULL,
  `rating_cache` float(2,1) UNSIGNED NOT NULL DEFAULT '3.0',
  `rating_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `sub_in_id`, `rating_cache`, `rating_count`, `state`, `city`, `description`, `location`, `topic_id`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 14433223, 3.0, 0, 'Delta', 'Warri', 'Whats the best way to do this and how would i do this? i\'m looking to change my average rating number to stars instead of just displaying the average rating out of five. for example if the average rating returned is 3.27 then 3.27 stars will show. Is font awesome the easiest way and how would i incorporate that with the code below?', 'ajah', 34243441, '2018-09-24 16:21:41', '2018-09-24 16:21:41', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isadmin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `username`, `isadmin`, `ip_address`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'myckhel ishola', '08110000606', 'myckhel', 'default', NULL, 'myckhel1@hotmail.com', '$2y$10$vDh4s8sFye0/UHVdTE3MV.W1LSHNjTKvnk1B0Pth9q2peP0PB.hDi', 'nKoN2PiPFXbPHZY7AQzZI1OlPwG8FsgmGToYJv7j0cXJG4uxDenyfUlkedF2', '2018-09-19 11:09:59', '2018-09-19 11:09:59'),
(2, 'kennyendowed@ymail.com', '08120960876', 'kennyendowed', 'admin', '::1', 'kennyendowed@ymail.com', '$2y$10$BzwVpaf/cDUAyyObFBg61uJiye2Zjt.PFN.KteuYatBwI3UXzynxe', '3LfQ3KRIc6jkl1OSAx1VhQEJn9YvrwhsPizVvU7e0wGUrFF5uof6bvCTEJhR', '2018-09-20 08:26:27', '2018-09-20 08:26:27'),
(3, 'favour peters', '0564564564', 'fav401', 'default', '::1', 'fav401@gmail.com', '$2y$10$dlXUeg2uV0Kq2OMAacO71Okdu1l2gugwMHZn08fenO0LJEYWPqoam', 'OeGSmDgulcUnNki8MAJdJygbE7LVXePcAwYWk7tFzX6u9kFeQKmKgNnBxAT1', '2018-09-20 11:07:27', '2018-09-20 11:07:27'),
(4, 'peace', '0564564564', 'emi', 'default', '::1', 'kenneyg50@gmail.com', '$2y$10$qC5FiJl3IUzk4YysmM8qLOVYal4rhonB6vJciGH/6j3ICZA5LwzXC', 'ul2waw84BDRtaj0trOBcKEzX2ol53MOcmJ9PgpxrLJd28M2WRhO4ZdvL7PJ1', '2018-09-20 16:01:43', '2018-09-20 16:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `wwwtopics`
--

CREATE TABLE `wwwtopics` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_in_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wwwtopics`
--

INSERT INTO `wwwtopics` (`id`, `created_at`, `updated_at`, `sub_in_id`, `topic_id`, `created_by`, `description`, `location`, `city`, `state`) VALUES
(1, '2018-09-21 13:44:29', '2018-09-21 11:53:35', 20544751, 7070668, 2, 'hi my name is jeff from yaba lagos nigerian am an mtn subscriber have been on the network for years now and i most say am happy with the service .', '404 ikate', 'lagos', 'lagos'),
(2, '2018-09-21 13:02:14', '2018-09-21 13:02:14', 14138155, 19464992, 4, 'hello my name is john doe , have been on the glo network for 4 years now and till date their service has been very poor each year i keep waiting to see the change but noting', 'ajah', 'lagos', 'lagos'),
(3, '2018-09-21 13:03:43', '2018-09-21 13:03:43', 20313820, 57646785, 4, 'hello my name is faith doe , have been on the airtel network for 4 years now and till date their service has been very poor each year i keep waiting to see the change but noting', 'Deco', 'warri', 'delta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ind_id` (`ind_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_rateable_type_rateable_id_index` (`rateable_type`,`rateable_id`),
  ADD KEY `ratings_rateable_id_index` (`rateable_id`),
  ADD KEY `ratings_rateable_type_index` (`rateable_type`),
  ADD KEY `ratings_user_id_index` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_industries`
--
ALTER TABLE `sub_industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wwwtopics`
--
ALTER TABLE `wwwtopics`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_industries`
--
ALTER TABLE `sub_industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wwwtopics`
--
ALTER TABLE `wwwtopics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
