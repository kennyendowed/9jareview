-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 21, 2018 at 09:23 AM
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
(1, 78585563, 3, 'nice one', '2018-09-18 06:00:20', '2018-09-25 07:20:00');

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
(1, 16947009, 'Entertainment', '2018-09-20 09:55:53', '2018-09-20 09:55:53'),
(2, 4685697, 'Fashion', '2018-09-20 09:55:53', '2018-09-20 09:55:53'),
(6, 10980625, 'games', '2018-09-20 15:59:04', '2018-09-20 15:59:04'),
(7, 57332968, 'music', '2018-09-20 15:59:04', '2018-09-20 15:59:04');

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
(6, '2018_09_19_130415_create_topics_table', 6);

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
-- Table structure for table `sub_industries`
--

CREATE TABLE `sub_industries` (
  `id` int(11) NOT NULL,
  `sub_ind_id` int(20) NOT NULL,
  `ind_id` int(20) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_industries`
--

INSERT INTO `sub_industries` (`id`, `sub_ind_id`, `ind_id`, `name`, `updated_at`, `created_at`) VALUES
(1, 28198832, 4685697, 'Access', '2018-09-20 11:04:22', '2018-09-20 11:04:22'),
(2, 58101426, 4685697, 'Gtb', '2018-09-20 11:04:22', '2018-09-20 11:04:22'),
(3, 6504617, 57332968, 'record label', '2018-09-20 16:00:39', '2018-09-20 16:00:39'),
(4, 52250635, 57332968, 'music video', '2018-09-20 16:00:39', '2018-09-20 16:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sub_in_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `created_at`, `sub_in_id`, `topic_id`, `created_by`, `name`, `description`) VALUES
(1, '2018-09-18 05:00:16', 58101426, 78585563, 3, 'bad service', 'FatalErrorException in RedirectIfNotAHandleExceptions->handleShutdown()'),
(2, '2018-09-12 09:26:00', 58101426, 78585563, 2, 'unreliable', 'FatalErrorException in RedirectIfNotAManager.php line 16: Call line\' => \'16\')) in t Hand');

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
(2, 'kennyendowed@ymail.com', '08120960876', 'kennyendowed', 'admin', '::1', 'kennyendowed@ymail.com', '$2y$10$BzwVpaf/cDUAyyObFBg61uJiye2Zjt.PFN.KteuYatBwI3UXzynxe', '38cKWtyR0WS9XiGFaEYqAnZy2emdbSDqcO5LSzxhb9jKzIPyDeZmXMSbWzMk', '2018-09-20 08:26:27', '2018-09-20 08:26:27'),
(3, 'favour peters', '0564564564', 'fav401', 'default', '::1', 'fav401@gmail.com', '$2y$10$dlXUeg2uV0Kq2OMAacO71Okdu1l2gugwMHZn08fenO0LJEYWPqoam', 'OeGSmDgulcUnNki8MAJdJygbE7LVXePcAwYWk7tFzX6u9kFeQKmKgNnBxAT1', '2018-09-20 11:07:27', '2018-09-20 11:07:27'),
(4, 'peace', '0564564564', 'emi', 'default', '::1', 'kenneyg50@gmail.com', '$2y$10$qC5FiJl3IUzk4YysmM8qLOVYal4rhonB6vJciGH/6j3ICZA5LwzXC', NULL, '2018-09-20 16:01:43', '2018-09-20 16:01:43');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sub_industries`
--
ALTER TABLE `sub_industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
