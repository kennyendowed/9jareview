-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 25, 2018 at 02:55 PM
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
  `rating` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `topic_id`, `user_id`, `message`, `rating`, `updated_at`, `created_at`) VALUES
(1, 34243441, 4, 'i dont agree with u have been on this network for 8years now and i cant say am happy with the service', 3, '2018-09-24 16:52:27', '2018-09-24 16:52:27'),
(2, 34243441, 4, 'hello', 4, '2018-09-24 16:54:04', '2018-09-24 16:54:04');

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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rateable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `created_at`, `updated_at`, `rating`, `title`, `message`, `rateable_type`, `rateable_id`, `user_id`, `topic_id`) VALUES
(1, '2018-09-25 09:01:09', '2018-09-25 09:01:09', 3, '', 'hello world', 'App\\topics', 1, 4, 34243441),
(2, '2018-09-25 09:01:23', '2018-09-25 09:01:23', 5, '', 'hello world', 'App\\topics', 1, 4, 34243441),
(3, '2018-09-25 09:03:55', '2018-09-25 09:03:55', 5, '', 'gold check mate', 'App\\topics', 1, 4, 34243441),
(4, '2018-09-25 09:11:13', '2018-09-25 09:11:13', 1, '', 'am not happy', 'App\\topics', 1, 4, 34243441),
(5, '2018-09-25 09:22:43', '2018-09-25 09:22:43', 2, '', 'nice one but glo is better', 'App\\topics', 2, 4, 48399165),
(6, '2018-09-25 11:21:06', '2018-09-25 11:21:06', 2, 'Bad responses time', 'i am also not happy with the way the customer service is render', 'App\\topics', 3, 4, 24506945),
(7, '2018-09-25 12:33:34', '2018-09-25 12:33:34', 4, 'Good service', 'i am also not happy with the way the customer service is render', 'App\\topics', 3, 4, 24506945);

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
  `topic_name` text NOT NULL,
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

INSERT INTO `topics` (`id`, `sub_in_id`, `rating_cache`, `rating_count`, `state`, `city`, `topic_name`, `description`, `location`, `topic_id`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 14433223, 3.0, 0, 'Delta', 'Warri', 'this is very nice', 'Whats the best way to do this and how would i do this? i\'m looking to change my average rating number to stars instead of just displaying the average rating out of five. for example if the average rating returned is 3.27 then 3.27 stars will show. Is font awesome the easiest way and how would i incorporate that with the code below?', 'ajah branch', 34243441, '2018-09-24 16:21:41', '2018-09-24 16:21:41', 4),
(2, 36233913, 3.0, 0, 'lagos', 'lagos', 'this is very good', 'A new dedicated, Awuf4U has been created for the offer.\r\nAs soon as you recharge using the special recharge code *888*PIN#, the full face value of the recharge plus the airtime bonus will be credited in your Awuf4U account.\r\nIf you recharge with N100, you will get N400 in Awuf4U account i.e. N100 (recharge value) + N300 (bonus)\r\nIf you recharge with N400, you will get N1,600 in Awuf4U account i.e. N400 (recharge value) + N1,200 (bonus)\r\nIf you recharge with N750, you will get N3,000 in Awuf4U account i.e. N750 (recharge value) + N2,250 (bonus)\r\nIf you recharge recharge with N1,500, you will get N6,000 in Awuf4U account i.e. N1,500 (recharge value) + N4,500 (bonus)', 'ajah2 branch', 48399165, '2018-09-25 10:18:28', '2018-09-25 10:18:28', 4),
(3, 20313820, 3.0, 0, 'rivers', 'Port Harcourt', 'Customer care service is poor', 'I when to mtn office yesterday to complaing about not been able to load airtime on my line and they maid me wait for 5hrs before i was attended to .Database tables are often related to one another. ... Additionally, Eloquent assumes that the foreign key should have a value matching the id (or the custom ... We can define the inverse of a hasOne relationship using the belongsTo method:Customer care service is poor', 'sapele branch', 24506945, '2018-09-25 11:55:16', '2018-09-25 11:55:16', 4);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
