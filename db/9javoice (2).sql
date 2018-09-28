-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 28, 2018 at 01:33 PM
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
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `likes_count` int(11) NOT NULL DEFAULT '0',
  `posted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`, `likes_count`, `posted_at`, `updated_at`, `created_at`) VALUES
(3, 1, 2, 0, '2018-09-27 12:48:02', '2018-09-27 11:48:02', '2018-09-27 11:48:02'),
(11, 3, 4, 1, '2018-09-27 13:40:19', '2018-09-27 12:40:19', '2018-09-27 12:40:19'),
(12, 3, 5, 1, '2018-09-27 13:41:21', '2018-09-27 12:41:21', '2018-09-27 12:41:21'),
(13, 2, 4, 1, '2018-09-28 05:21:04', '2018-09-28 04:21:04', '2018-09-28 04:20:48');

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
(11, '2018_09_23_212350_create_ratings_table', 8),
(12, '2018_09_25_154001_create_chirps_table', 9),
(13, '2018_09_25_085131_create_ratings_table', 10),
(14, '2018_09_25_085903_create_posts_table', 10),
(15, '2018_09_27_171441_create_replycomments_table', 10);

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
  `id` int(11) UNSIGNED NOT NULL,
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
(1, '2018-09-27 11:32:13', '2018-09-27 11:32:13', 2, 'Bad responses time', 'I am developing a site at the moment which allows people to create articles in a blog format.\r\n\r\nA feature of the site allows other users to \'like\' and \'comment\' on the article.\r\n\r\nI am wanting to count the number of likes and comments an article has and display the count in a summary at the top of the article page. (A bit like the way Jeffrey displays the number of comments on a forum post in the right side of the listing page)\r\n\r\nCurrently, if a user comments on an article, I post the comment to the Comments table. Similarly, if a user \'likes\' an article, I post the like to the Likes table. Using my current architecture, it means I have to query the comments table and get the count, then query the likes table for the count each time an article is viewed.\r\n\r\nI am wondering if a better architecture would be to add 2 columns (Counts, Comments) to the Articles table and add/remove an increment each time a user adds/removes a like or comment? The idea would then be to simply display the count in the article without having to query or join other tables.', 'App\\topics', 1, 2, 14577948),
(2, '2018-09-27 11:33:32', '2018-09-27 11:33:32', 1, 'sharon cold', 'i am also not happy with the way the customer service is render', 'App\\topics', 1, 2, 14577948),
(3, '2018-09-27 12:05:37', '2018-09-27 12:05:37', 2, 'south west', 'i am also not happy with the way the customer service is render ask me why', 'App\\topics', 1, 4, 14577948),
(4, '2018-09-27 15:10:59', '2018-09-27 15:10:59', 4, 'again goal', 'am a happy customer of this network ice cream', 'App\\topics', 1, 5, 14577948),
(5, '2018-09-27 15:58:09', '2018-09-27 15:58:09', 3, 'Bad responses time', 'I find your service poor', 'App\\topics', 2, 4, 60042347);

-- --------------------------------------------------------

--
-- Table structure for table `replycomments`
--

CREATE TABLE `replycomments` (
  `id` int(10) UNSIGNED NOT NULL,
  `rating_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replycomments`
--

INSERT INTO `replycomments` (`id`, `rating_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 5, 4, 'i take back my word', '2018-09-27 16:50:42', '2018-09-27 16:50:42'),
(2, 3, 4, 'i am happy after been i got a call back', '2018-09-28 04:18:45', '2018-09-28 04:18:45'),
(3, 3, 4, 'problem number 4', '2018-09-28 04:19:48', '2018-09-28 04:19:48');

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
(14, 62099078, 86520192, 'Cisco Systems', '2018-09-21 11:46:55', '2018-09-21 11:46:55'),
(15, 8528700, 36406965, 'Eauxwell Nigeria Ltd', '2018-09-27 07:38:02', '2018-09-27 07:38:02'),
(16, 7597030, 36406965, 'Mobil Producing Nigeria', '2018-09-27 07:38:02', '2018-09-27 07:38:02'),
(17, 29120040, 36406965, 'Nigeria Liquefied Natural Gas', '2018-09-27 07:38:02', '2018-09-27 07:38:02'),
(18, 66569350, 36406965, 'Obax Worldwide Ltd', '2018-09-27 07:38:02', '2018-09-27 07:38:02'),
(19, 50441802, 36406965, 'Rensource', '2018-09-27 07:38:02', '2018-09-27 07:38:02'),
(20, 15670242, 36406965, 'Serene Greenfields', '2018-09-27 07:38:02', '2018-09-27 07:38:02'),
(21, 617963, 36406965, 'The Solar Shop Ltd', '2018-09-27 07:38:02', '2018-09-27 07:38:02'),
(22, 2943672, 36406965, 'Jardel Energy and Marine Services Ltd', '2018-09-27 07:38:02', '2018-09-27 07:38:02'),
(23, 32780419, 36406965, 'Randson Ltd', '2018-09-27 07:38:02', '2018-09-27 07:38:02'),
(24, 8760573, 36406965, 'Szotyola Energy Services International Ltd', '2018-09-27 07:38:02', '2018-09-27 07:38:02'),
(25, 23674140, 36406965, 'Citrix Energy Ltd', '2018-09-27 07:38:03', '2018-09-27 07:38:03');

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
(1, 14138155, 3.0, 0, 'rivers', 'Port Harcourt', 'Bad responses time', 'I am developing a site at the moment which allows people to create articles in a blog format.\r\n\r\nA feature of the site allows other users to \'like\' and \'comment\' on the article.\r\n\r\nI am wanting to count the number of likes and comments an article has and display the count in a summary at the top of the article page. (A bit like the way Jeffrey displays the number of comments on a forum post in the right side of the listing page)\r\n\r\nCurrently, if a user comments on an article, I post the comment to the Comments table. Similarly, if a user \'likes\' an article, I post the like to the Likes table. Using my current architecture, it means I have to query the comments table and get the count, then query the likes table for the count each time an article is viewed.\r\n\r\nI am wondering if a better architecture would be to add 2 columns (Counts, Comments) to the Articles table and add/remove an increment each time a user adds/removes a like or comment? The idea would then be to simply display the count in the article without having to query or join other tables.', 'ajah', 14577948, '2018-09-27 12:32:13', '2018-09-27 12:32:13', 2),
(2, 20544751, 3.0, 0, 'Lagos', 'Lagos', 'Bad responses time', 'I find your service poor', 'Agege', 60042347, '2018-09-27 16:58:09', '2018-09-27 16:58:09', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `phone`, `username`, `avatar`, `isadmin`, `ip_address`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'myckhel ishola', '08110000606', 'myckhel', '', 'default', NULL, 'myckhel1@hotmail.com', '$2y$10$vDh4s8sFye0/UHVdTE3MV.W1LSHNjTKvnk1B0Pth9q2peP0PB.hDi', 'nKoN2PiPFXbPHZY7AQzZI1OlPwG8FsgmGToYJv7j0cXJG4uxDenyfUlkedF2', '2018-09-19 11:09:59', '2018-09-19 11:09:59'),
(2, 'kennyendowed@ymail.com', '08120960876', 'kennyendowed', '', 'admin', '::1', 'kennyendowed@ymail.com', '$2y$10$BzwVpaf/cDUAyyObFBg61uJiye2Zjt.PFN.KteuYatBwI3UXzynxe', '9bajVs2JtGc7XyHLpBk07tTfPVao2Q36jI2E1crZjqqHpug9PoU8Uh7kSpMb', '2018-09-20 08:26:27', '2018-09-20 08:26:27'),
(3, 'favour peters', '0564564564', 'fav401', '', 'default', '::1', 'fav401@gmail.com', '$2y$10$dlXUeg2uV0Kq2OMAacO71Okdu1l2gugwMHZn08fenO0LJEYWPqoam', 'OeGSmDgulcUnNki8MAJdJygbE7LVXePcAwYWk7tFzX6u9kFeQKmKgNnBxAT1', '2018-09-20 11:07:27', '2018-09-20 11:07:27'),
(4, 'Peace Akpan johnson', '081234564564', 'Emi', '4Emi.jpg', 'default', '::1', 'kenneyg50@gmail.com', '$2y$10$qC5FiJl3IUzk4YysmM8qLOVYal4rhonB6vJciGH/6j3ICZA5LwzXC', 'IT7grHZ1M4d2W6bu0MRuLke0xZIbf4gsAbXxIV186Ib8QEh48FfaCGH3csm9', '2018-09-20 16:01:43', '2018-09-28 11:29:51'),
(5, 'micheal adah', '0564564564', 'mic', '', 'default', '::1', 'myckhel123@gmail.com', '$2y$10$iFnJYBTUoBafJ53c6N.bMeBz5DXEB2O.J8.8bgPPPyJUlMQ9D7Xwe', 'pEa1IhtIbW4DISTz2w05cWRRnUCSlHSctyeRZQfX6G9jseSMsTARbK4SFoDL', '2018-09-27 12:41:09', '2018-09-27 12:41:09');

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
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chirps_user_id_foreign` (`user_id`),
  ADD KEY `post_id` (`post_id`);

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
-- Indexes for table `replycomments`
--
ALTER TABLE `replycomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replycomments_user_id_index` (`user_id`);

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
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `replycomments`
--
ALTER TABLE `replycomments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_industries`
--
ALTER TABLE `sub_industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wwwtopics`
--
ALTER TABLE `wwwtopics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `replycomments`
--
ALTER TABLE `replycomments`
  ADD CONSTRAINT `replycomments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
