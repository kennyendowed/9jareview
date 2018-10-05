-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 05, 2018 at 05:29 PM
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
(1, 13657619, 'Agriculture', '2018-09-21 11:34:10', '2018-09-21 11:34:10'),
(2, 22674890, 'Chemical', '2018-09-21 11:34:10', '2018-09-21 11:34:10'),
(3, 1069894, 'Defense', '2018-09-21 11:34:10', '2018-09-21 11:34:10'),
(4, 36406965, 'Energy', '2018-09-21 11:34:10', '2018-09-21 11:34:10'),
(5, 12752324, 'Computer / Technology', '2018-09-21 11:34:10', '2018-09-21 11:34:10'),
(7, 15547045, 'Printing and Publishing', '2018-09-21 11:35:21', '2018-09-21 11:35:21'),
(8, 4065255, 'Health and Medical', '2018-09-21 11:35:21', '2018-09-21 11:35:21'),
(9, 52284716, 'Information', '2018-09-21 11:35:21', '2018-09-21 11:35:21'),
(10, 8759707, 'Manufacturing', '2018-09-21 11:35:21', '2018-09-21 11:35:21'),
(11, 65946363, 'Entertainment', '2018-09-21 11:35:21', '2018-09-21 11:35:21'),
(12, 86520192, 'Telecommunications', '2018-09-21 11:37:51', '2018-09-21 11:37:51'),
(13, 3510764, 'Transport', '2018-09-21 11:37:52', '2018-09-21 11:37:52'),
(14, 92292864, 'Water & Sanitation', '2018-09-21 11:37:52', '2018-09-21 11:37:52'),
(15, 7250675, 'Fashion', '2018-09-21 11:37:52', '2018-09-21 11:37:52'),
(16, 36779150, 'Housing', '2018-09-21 11:37:52', '2018-09-21 11:37:52'),
(17, 31019757, 'Retail', '2018-09-21 11:37:52', '2018-09-21 11:37:52'),
(18, 26230918, 'Religion', '2018-09-21 11:37:52', '2018-09-21 11:37:52'),
(19, 11470598, 'Media and Broadcasting ', '2018-09-21 11:37:52', '2018-09-21 11:37:52'),
(20, 105573, 'Oil & Gas', '2018-09-21 11:39:00', '2018-09-21 11:39:00'),
(22, 31761164, 'Banking & Financial services', '2018-10-05 08:01:09', '2018-10-05 08:01:09');

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
(5, '2018-09-27 15:58:09', '2018-09-27 15:58:09', 3, 'Bad responses time', 'I find your service poor', 'App\\topics', 2, 4, 60042347),
(6, '2018-09-28 13:20:51', '2018-09-28 13:20:51', 3, 'thanksgiving', 'Routing. Stubbing The Routes; Displaying A View ... If you have already used Laravel or other PHP frameworks, you may wish to consult one of our more advanced quickstarts. ... By default, the model class is empty. We do ... Application Image ...', 'App\\topics', 1, 5, 14577948),
(7, '2018-09-28 15:02:00', '2018-09-28 15:02:00', 1, 'poor network', 'whats up ? I have a little problem with Laravel Paginator.\r\n\r\nI built the function using order by and paginator, but I\'m getting the error message \"Call to undefined method Illuminate \\ Database \\ Query \\ Builder :: links () (View: C: \\ wamp \\ www \\ laravel \\ app \\ views \\ frontend \\ premios.blade.php).', 'App\\topics', 3, 5, 25002533),
(8, '2018-09-28 15:21:44', '2018-09-28 15:21:44', 3, 'ok', 'tried putting \"$premios->links()\" inside and outside the foreach.Without pagination everything works good tried putting \"$premios->links()\" inside and outside the foreach.Without pagination everything works good tried putting \"$premios->links()\" inside and outside the foreach.Without pagination everything works good tried putting \"$premios->links()\" inside and outside the foreach.Without pagination everything works good tried putting \"$premios->links()\" inside and outside the foreach.Without pagination everything works good', 'App\\topics', 2, 5, 60042347),
(9, '2018-09-29 18:03:25', '2018-09-29 18:03:25', 2, 'thanksgiving', 'nice one but glo is better :smile: :fire::smile: :fire::smile: :fire::smile: :fire:', 'App\\topics', 3, 4, 25002533),
(10, '2018-09-30 13:41:59', '2018-09-30 13:41:59', 2, 'thanksgiving', ':heart_eyes::see_no_evil::rage::rage::rage::rage::rage:the rush ', 'App\\topics', 3, 2, 25002533),
(11, '2018-10-05 08:05:09', '2018-10-05 08:05:09', 3, 'again goal', 'Zidane spoke to the media at the Real Madrid City. The Whites coach explained how the team is going in to the second leg of the Champions...:smirk::smirk::smirk::smirk::smirk::smirk::smirk:', 'App\\topics', 3, 7, 25002533),
(12, '2018-10-05 15:05:59', '2018-10-05 15:05:59', 2, 'Late payment of salary', 'I believe what you are wanting is z-index. Rather than explaining it here, just do a Google search for it. It is simple to understand.I believe what you are wanting is z-index. Rather than explaining it here, just do a Google search for it. It is simple to understand.I believe what you are wanting is z-index. Rather than explaining it here, just do a Google search for it. It is simple to understand.', 'App\\topics', 5, 7, 4907381);

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
(3, 2, 4, 'After i received a mail from an agent my problem was solved ', '2018-09-28 04:19:48', '2018-09-28 04:19:48'),
(4, 8, 5, 'I think you may edit the default file. As default Laravel use the bootstrap 3.3.7 template. try editing that view.', '2018-09-28 15:22:12', '2018-09-28 15:22:12'),
(5, 9, 4, 'So if someone leaves a comment like This is an awesome comment :smile::fire: it will be saved as This is an awesome comment :smile: :fire:', '2018-09-29 18:11:47', '2018-09-29 18:11:47'),
(6, 10, 2, ':grin::joy::wink::smirk::sweat_smile: ', '2018-09-30 14:39:56', '2018-09-30 14:39:56');

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
(25, 23674140, 36406965, 'Citrix Energy Ltd', '2018-09-27 07:38:03', '2018-09-27 07:38:03'),
(26, 10775209, 31761164, 'Diamond Bank Plc', '2018-10-05 11:03:25', '2018-10-05 11:03:25'),
(27, 5955724, 31761164, 'Fidelity Bank Plc', '2018-10-05 11:03:25', '2018-10-05 11:03:25'),
(28, 6242499, 31761164, 'First City Monument Bank Plc', '2018-10-05 11:03:25', '2018-10-05 11:03:25'),
(29, 9778045, 31761164, 'First Bank of Nigeria Limited', '2018-10-05 11:03:25', '2018-10-05 11:03:25'),
(30, 5214021, 31761164, 'Guaranty Trust Bank Plc', '2018-10-05 11:03:25', '2018-10-05 11:03:25'),
(31, 10338461, 31761164, 'Union Bank of Nigeria Plc', '2018-10-05 11:03:25', '2018-10-05 11:03:25'),
(32, 22433947, 31761164, 'United Bank for Africa Plc', '2018-10-05 11:03:25', '2018-10-05 11:03:25'),
(33, 1301679, 31761164, 'Zenith Bank Plc', '2018-10-05 11:03:25', '2018-10-05 11:03:25'),
(34, 464232, 31761164, 'Polaris Bank Limited', '2018-10-05 11:03:25', '2018-10-05 11:03:25'),
(35, 10470280, 31761164, 'Access Bank Plc', '2018-10-05 11:03:25', '2018-10-05 11:03:25'),
(36, 90665762, 31761164, 'Ecobank Nigeria Plc', '2018-10-05 11:05:45', '2018-10-05 11:05:45'),
(37, 33483821, 31761164, 'Heritage Banking Company Limited', '2018-10-05 11:05:45', '2018-10-05 11:05:45'),
(38, 48555123, 31761164, 'Keystone Bank Limited', '2018-10-05 11:05:45', '2018-10-05 11:05:45'),
(39, 23904793, 31761164, 'Stanbic IBTC Bank Plc', '2018-10-05 11:05:45', '2018-10-05 11:05:45'),
(40, 27817681, 31761164, 'Standard Chartered', '2018-10-05 11:05:45', '2018-10-05 11:05:45'),
(41, 34411664, 31761164, 'Sterling Bank Plc', '2018-10-05 11:05:45', '2018-10-05 11:05:45'),
(42, 5577601, 31761164, 'Unity Bank Plc', '2018-10-05 11:05:46', '2018-10-05 11:05:46'),
(43, 6656285, 31761164, 'Wema Bank Plc', '2018-10-05 11:05:46', '2018-10-05 11:05:46'),
(44, 37594762, 31761164, 'Citi Bank Nigeria Limited', '2018-10-05 11:05:46', '2018-10-05 11:05:46'),
(45, 41981896, 13657619, 'EMERALDAGRO NIG LIMITED', '2018-10-05 13:17:28', '2018-10-05 13:17:28'),
(46, 679855, 13657619, 'Efugo Farms', '2018-10-05 13:17:28', '2018-10-05 13:17:28'),
(47, 54044605, 13657619, 'Novum Agric Industries Ltd', '2018-10-05 13:17:29', '2018-10-05 13:17:29'),
(48, 2217390, 13657619, 'SHADDLE FIELD FARMS', '2018-10-05 13:17:29', '2018-10-05 13:17:29'),
(49, 7211814, 13657619, 'MUSARIC RICE WHOLESALE LTD', '2018-10-05 13:17:29', '2018-10-05 13:17:29'),
(50, 77968, 13657619, 'Jovana Farms Limited', '2018-10-05 13:17:29', '2018-10-05 13:17:29'),
(51, 30656515, 13657619, 'Teena\'s Farm', '2018-10-05 13:17:29', '2018-10-05 13:17:29'),
(52, 52658368, 13657619, 'FarmerGiant Nigeria Limited', '2018-10-05 13:17:29', '2018-10-05 13:17:29'),
(53, 13289643, 13657619, 'Zionbim Farminex Nig Ltd', '2018-10-05 13:17:29', '2018-10-05 13:17:29'),
(54, 18213345, 13657619, 'Federal University Of Agriculture, Umudike', '2018-10-05 13:17:29', '2018-10-05 13:17:29'),
(55, 8828803, 13657619, 'Dandani Farms Nigeria Limited', '2018-10-05 13:17:29', '2018-10-05 13:17:29'),
(56, 72736342, 13657619, 'AYOBEST', '2018-10-05 13:17:29', '2018-10-05 13:17:29'),
(57, 45204922, 13657619, 'Cocoa Products Limited', '2018-10-05 13:20:55', '2018-10-05 13:20:55'),
(58, 3702951, 13657619, 'Agricultural Research Council of Nigeria', '2018-10-05 13:20:55', '2018-10-05 13:20:55'),
(59, 64368105, 13657619, 'Dangote Group', '2018-10-05 13:20:55', '2018-10-05 13:20:55'),
(60, 335821, 36406965, 'Arthur Energy Technology Ltd', '2018-10-05 13:26:23', '2018-10-05 13:26:23'),
(61, 11432424, 36406965, 'Betsam Engineering Supplies and Services', '2018-10-05 13:26:23', '2018-10-05 13:26:23'),
(62, 24752541, 36406965, 'Dkn Global Engineering & Energy Ltd', '2018-10-05 13:26:23', '2018-10-05 13:26:23'),
(63, 76164376, 36406965, 'Eztop Energy Nigeria Limited', '2018-10-05 13:26:23', '2018-10-05 13:26:23'),
(64, 17761684, 36406965, 'Greensols Energy Revolution Nigeria Limited', '2018-10-05 13:26:23', '2018-10-05 13:26:23'),
(65, 19971909, 36406965, 'Horoscope Engineering Ltd', '2018-10-05 13:26:23', '2018-10-05 13:26:23'),
(66, 5324813, 36406965, 'Power Holding Company of Nigeria Plc', '2018-10-05 13:26:23', '2018-10-05 13:26:23'),
(67, 5336259, 36406965, 'Xgate Technologies', '2018-10-05 13:26:23', '2018-10-05 13:26:23'),
(68, 70606491, 36406965, 'Affordable Energy Solutions Ltd', '2018-10-05 13:26:23', '2018-10-05 13:26:23'),
(69, 3490844, 105573, 'Addax Petroleum Exploration Ltd', '2018-10-05 13:31:39', '2018-10-05 13:31:39'),
(70, 15272803, 105573, 'African Petroleum Plc', '2018-10-05 13:31:39', '2018-10-05 13:31:39'),
(71, 4912584, 105573, 'Chevron Nigeria Ltd', '2018-10-05 13:31:40', '2018-10-05 13:31:40'),
(72, 66456106, 105573, 'ExxonMobil Nigeria', '2018-10-05 13:31:40', '2018-10-05 13:31:40'),
(73, 5487464, 105573, 'FEM Associates', '2018-10-05 13:31:40', '2018-10-05 13:31:40'),
(74, 1181945, 105573, 'Linkso Nigeria Ltd', '2018-10-05 13:31:40', '2018-10-05 13:31:40'),
(75, 47327735, 105573, 'Loving Brothers Nigeria Ltd', '2018-10-05 13:31:40', '2018-10-05 13:31:40'),
(76, 3735331, 105573, 'Ultrasprings Nigeria Ltd', '2018-10-05 13:31:40', '2018-10-05 13:31:40'),
(77, 742883, 105573, 'Ultrasprings Nigeria Ltd', '2018-10-05 13:31:40', '2018-10-05 13:31:40'),
(78, 10443207, 105573, 'Tricontinental Oil Services Ltd', '2018-10-05 13:31:40', '2018-10-05 13:31:40'),
(79, 21411159, 105573, 'Total Nigeria Plc', '2018-10-05 13:31:40', '2018-10-05 13:31:40'),
(80, 57660753, 105573, 'Texaco Nigeria PLC', '2018-10-05 13:31:40', '2018-10-05 13:31:40'),
(81, 12438227, 105573, 'Shell Petroleum Development Company of Nigeria Ltd', '2018-10-05 13:31:40', '2018-10-05 13:31:40'),
(82, 29644532, 105573, 'Platform Petroleum Ltd', '2018-10-05 13:31:40', '2018-10-05 13:31:40'),
(83, 8760093, 105573, 'Nigerian National Petroleum Corporation', '2018-10-05 13:31:40', '2018-10-05 13:31:40'),
(84, 25627740, 105573, 'Nigerian Agip Oil Co. (NAOC)', '2018-10-05 13:31:40', '2018-10-05 13:31:40'),
(85, 54023947, 105573, 'National Agip Oil Co. Ltd', '2018-10-05 13:31:41', '2018-10-05 13:31:41'),
(86, 2150259, 105573, 'Addax Petroleum Exploration Ltd', '2018-10-05 13:31:41', '2018-10-05 13:31:41'),
(87, 49549744, 11470598, 'Accelon', '2018-10-05 13:47:43', '2018-10-05 13:47:43'),
(88, 19140070, 11470598, 'Africa Nova', '2018-10-05 13:47:43', '2018-10-05 13:47:43'),
(89, 414938, 11470598, 'Association of Nigerian Journalist and Writers of Tourism', '2018-10-05 13:47:43', '2018-10-05 13:47:43'),
(90, 71333441, 11470598, 'Channels TV', '2018-10-05 13:47:43', '2018-10-05 13:47:43'),
(91, 857926, 11470598, 'CobraNet', '2018-10-05 13:47:43', '2018-10-05 13:47:43'),
(92, 22804610, 11470598, 'Daily Champion Newspaper', '2018-10-05 13:47:43', '2018-10-05 13:47:43'),
(93, 1365893, 11470598, 'Daily Independent', '2018-10-05 13:47:43', '2018-10-05 13:47:43'),
(94, 28690461, 11470598, 'The Daily Sun', '2018-10-05 13:47:43', '2018-10-05 13:47:43'),
(95, 18810173, 11470598, 'The Daily Times Newspaper', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(96, 44948906, 11470598, 'Daily Trust', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(97, 26946923, 11470598, 'Federal Ministry of Information', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(98, 38278326, 11470598, 'Galaxy TV', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(99, 69084081, 11470598, 'Minaj Broadcasting International', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(100, 402636, 11470598, 'The Guardian', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(101, 4342526, 11470598, 'Minaj Broadcasting International', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(102, 82889569, 11470598, 'Nigeria Trade Journal', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(103, 24166138, 11470598, 'News Agency of Nigeria (NAN)', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(104, 40358160, 11470598, 'Nigerian Businessman\'s Magazine', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(105, 15393095, 11470598, 'Nigerian Television Authority (NTA)', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(106, 3959015, 11470598, 'The Post Express Newspaper', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(107, 1773452, 11470598, 'The Punch', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(108, 3174285, 11470598, 'Vanguard Newspaper', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(109, 20906060, 11470598, 'Voice of Nigeria', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(110, 52428654, 11470598, 'The Presidency National Operation and Orientation', '2018-10-05 13:47:44', '2018-10-05 13:47:44'),
(111, 12868601, 11470598, 'NAN / News Agency of Nigeria', '2018-10-05 13:47:45', '2018-10-05 13:47:45'),
(112, 16531366, 11470598, 'National Concord Newspaper', '2018-10-05 13:47:45', '2018-10-05 13:47:45'),
(113, 26909177, 11470598, 'Africa News Magazine', '2018-10-05 13:47:45', '2018-10-05 13:47:45'),
(114, 49030671, 8759707, 'Manufacturers Association of Nigeria', '2018-10-05 13:53:29', '2018-10-05 13:53:29'),
(115, 1519256, 8759707, 'Manufacturers Association of Nigeria', '2018-10-05 13:53:29', '2018-10-05 13:53:29'),
(116, 7592501, 8759707, 'Cadbury Nigeria', '2018-10-05 13:53:29', '2018-10-05 13:53:29'),
(117, 8845615, 8759707, 'Nestle Nigeria Plc', '2018-10-05 13:53:29', '2018-10-05 13:53:29'),
(118, 12016796, 4065255, 'Nigerian Medical Association', '2018-10-05 13:54:12', '2018-10-05 13:54:12'),
(119, 13500015, 4065255, 'SKG-Pharma Ltd', '2018-10-05 13:54:12', '2018-10-05 13:54:12'),
(120, 59064267, 3510764, 'Warri Airport', '2018-10-05 13:58:26', '2018-10-05 13:58:26'),
(121, 5335565, 3510764, 'Tin Can Island Port (TCPIP)', '2018-10-05 13:58:26', '2018-10-05 13:58:26'),
(122, 1826975, 3510764, 'Sultan Saddik Abubakar Airport Sokoto', '2018-10-05 13:58:26', '2018-10-05 13:58:26'),
(123, 29389335, 3510764, 'Rivers Port, Port Harcourt', '2018-10-05 13:58:26', '2018-10-05 13:58:26'),
(124, 9889988, 3510764, 'Port Harcourt International Airport', '2018-10-05 13:58:26', '2018-10-05 13:58:26'),
(125, 91964727, 3510764, 'Onne Port', '2018-10-05 13:58:26', '2018-10-05 13:58:26'),
(126, 36488344, 3510764, 'Nnamdi Azikwe International Airport', '2018-10-05 13:58:26', '2018-10-05 13:58:26'),
(127, 27995684, 3510764, 'Nigerian Civil Aviation Authority', '2018-10-05 13:58:26', '2018-10-05 13:58:26'),
(128, 41717657, 3510764, 'Nigeria Ports Authority', '2018-10-05 13:58:26', '2018-10-05 13:58:26'),
(129, 3753605, 3510764, 'Murtala Muhammed International Airport', '2018-10-05 13:58:26', '2018-10-05 13:58:26'),
(130, 63067385, 3510764, 'Mallam Aminu Kano International Airport', '2018-10-05 13:58:27', '2018-10-05 13:58:27'),
(131, 44503251, 3510764, 'Benin Airport', '2018-10-05 13:58:27', '2018-10-05 13:58:27'),
(132, 6447416, 3510764, 'Calabar Port', '2018-10-05 13:58:27', '2018-10-05 13:58:27'),
(133, 71763531, 3510764, 'Delta Ports, Warri', '2018-10-05 13:58:27', '2018-10-05 13:58:27'),
(134, 66760354, 3510764, 'Kaduna Airport', '2018-10-05 13:58:27', '2018-10-05 13:58:27'),
(135, 4433876, 3510764, 'Makurdi Airport', '2018-10-05 13:58:27', '2018-10-05 13:58:27'),
(136, 27674339, 3510764, 'Lagos Ports Complex Apapa', '2018-10-05 13:58:27', '2018-10-05 13:58:27'),
(137, 46330496, 3510764, 'Federal Airports Authority of Nigeria (FAAN)', '2018-10-05 13:58:27', '2018-10-05 13:58:27'),
(138, 18091959, 3510764, 'Enugu Airport', '2018-10-05 13:58:27', '2018-10-05 13:58:27'),
(139, 4089899, 3510764, 'Chartered Institute of Logistics & Transport', '2018-10-05 13:58:27', '2018-10-05 13:58:27'),
(140, 22792497, 3510764, 'Zaria Airport', '2018-10-05 13:58:27', '2018-10-05 13:58:27'),
(141, 116656, 92292864, 'Plateau State Water Board', '2018-10-05 14:01:51', '2018-10-05 14:01:51'),
(142, 42119932, 92292864, 'Ogun State Water Corporation', '2018-10-05 14:01:51', '2018-10-05 14:01:51'),
(143, 78199419, 92292864, 'Niger State Water Board', '2018-10-05 14:01:52', '2018-10-05 14:01:52'),
(144, 46379161, 92292864, 'Kwara State Water Board', '2018-10-05 14:01:52', '2018-10-05 14:01:52'),
(145, 5268346, 92292864, 'Kogi State Water Board', '2018-10-05 14:01:52', '2018-10-05 14:01:52'),
(146, 5143388, 92292864, 'Kebbi State Water Board', '2018-10-05 14:01:52', '2018-10-05 14:01:52'),
(147, 17683820, 92292864, 'Jigawa State Water Board', '2018-10-05 14:01:52', '2018-10-05 14:01:52'),
(148, 80897872, 92292864, 'Gombe State Water Board', '2018-10-05 14:01:52', '2018-10-05 14:01:52'),
(149, 15341503, 92292864, 'Enugu State Water Corporation', '2018-10-05 14:01:52', '2018-10-05 14:01:52'),
(150, 32701671, 92292864, 'Bauchi State Water Board', '2018-10-05 14:01:52', '2018-10-05 14:01:52'),
(151, 4991053, 92292864, 'AB Waters', '2018-10-05 14:01:52', '2018-10-05 14:01:52'),
(152, 35352614, 92292864, 'Water Corporation of Oyo State', '2018-10-05 14:01:52', '2018-10-05 14:01:52'),
(153, 45846932, 15547045, 'Aboki Publishers', '2018-10-05 14:11:15', '2018-10-05 14:11:15'),
(154, 12971684, 15547045, 'African University Press (AUP) Ltd', '2018-10-05 14:11:15', '2018-10-05 14:11:15'),
(155, 39576947, 15547045, 'Babcock University Press', '2018-10-05 14:11:15', '2018-10-05 14:11:15'),
(156, 3083861, 15547045, 'Bro Paul (Fakolujo) Publishers Ltd', '2018-10-05 14:11:15', '2018-10-05 14:11:15'),
(157, 28671346, 15547045, 'Daily Times (Nigeria) Plc', '2018-10-05 14:11:15', '2018-10-05 14:11:15'),
(158, 28044833, 15547045, 'Delta Publications Ltd', '2018-10-05 14:11:15', '2018-10-05 14:11:15'),
(159, 18093892, 15547045, 'Concept Publications Ltd', '2018-10-05 14:11:16', '2018-10-05 14:11:16'),
(160, 50077360, 15547045, 'Jagora Press Ltd', '2018-10-05 14:11:16', '2018-10-05 14:11:16'),
(161, 12999808, 15547045, 'Evans Brothers', '2018-10-05 14:11:16', '2018-10-05 14:11:16'),
(162, 18916632, 15547045, 'University of Lagos Press', '2018-10-05 14:11:16', '2018-10-05 14:11:16'),
(163, 59456986, 15547045, 'West African Book Publishers Ltd', '2018-10-05 14:11:16', '2018-10-05 14:11:16'),
(164, 13544523, 15547045, 'Spectrum Books Ltd', '2018-10-05 14:11:16', '2018-10-05 14:11:16'),
(165, 10200496, 15547045, 'OAU Press Ltd', '2018-10-05 14:11:16', '2018-10-05 14:11:16'),
(166, 7552389, 15547045, 'Aboki Publishers', '2018-10-05 14:14:07', '2018-10-05 14:14:07'),
(167, 8956797, 15547045, 'African University Press (AUP) Ltd', '2018-10-05 14:14:08', '2018-10-05 14:14:08'),
(168, 49089661, 15547045, 'Babcock University Press', '2018-10-05 14:14:08', '2018-10-05 14:14:08'),
(169, 36549728, 15547045, 'Bounty Press Ltd', '2018-10-05 14:14:08', '2018-10-05 14:14:08'),
(170, 67217795, 15547045, 'Daily Times (Nigeria) Plc', '2018-10-05 14:14:08', '2018-10-05 14:14:08'),
(171, 31720396, 15547045, 'Grailland Publishers', '2018-10-05 14:14:08', '2018-10-05 14:14:08'),
(172, 39673602, 15547045, 'Jagora Press Ltd', '2018-10-05 14:14:08', '2018-10-05 14:14:08'),
(173, 9773719, 15547045, 'Hadassah Publishing', '2018-10-05 14:14:08', '2018-10-05 14:14:08'),
(174, 12995249, 15547045, 'Macmillan Nigeria Publishers Ltd', '2018-10-05 14:14:08', '2018-10-05 14:14:08'),
(175, 13716758, 15547045, 'Ibadan University Press', '2018-10-05 14:14:08', '2018-10-05 14:14:08'),
(176, 39598059, 15547045, 'Swanlake Publishers Ltd', '2018-10-05 14:14:08', '2018-10-05 14:14:08'),
(177, 7688099, 15547045, 'Zedek Resources Publishing', '2018-10-05 14:14:08', '2018-10-05 14:14:08'),
(178, 6690117, 15547045, 'Abic Books and Equipment Ltd', '2018-10-05 14:14:08', '2018-10-05 14:14:08'),
(179, 32508868, 15547045, 'Odunjinrin Publishing Co. Ltd', '2018-10-05 14:15:29', '2018-10-05 14:15:29'),
(180, 33913279, 15547045, 'OAU Press Ltd', '2018-10-05 14:15:29', '2018-10-05 14:15:29'),
(181, 4968161, 15547045, 'Spectrum Books Ltd', '2018-10-05 14:15:29', '2018-10-05 14:15:29'),
(182, 883900, 15547045, 'Pacific Publishers', '2018-10-05 14:15:29', '2018-10-05 14:15:29'),
(183, 23035102, 15547045, 'University of Lagos Press', '2018-10-05 14:15:29', '2018-10-05 14:15:29'),
(184, 68371954, 15547045, 'Sumob Publishers', '2018-10-05 14:15:29', '2018-10-05 14:15:29'),
(185, 51123642, 15547045, 'Gbemi Sodipo Press Ltd', '2018-10-05 14:15:29', '2018-10-05 14:15:29'),
(186, 34143988, 15547045, 'Fourth Dimension Publishing Co. Ltd', '2018-10-05 14:15:29', '2018-10-05 14:15:29'),
(187, 6749305, 15547045, 'Oxford University Press Nigeria', '2018-10-05 14:15:29', '2018-10-05 14:15:29'),
(188, 50130956, 15547045, 'Concept Publications Ltd', '2018-10-05 14:16:13', '2018-10-05 14:16:13'),
(189, 22629422, 15547045, 'Evans Brothers', '2018-10-05 14:16:13', '2018-10-05 14:16:13'),
(190, 18256337, 15547045, 'Fountain Publications Ltd', '2018-10-05 14:16:13', '2018-10-05 14:16:13'),
(191, 3132352, 15547045, 'Bro Paul (Fakolujo) Publishers Ltd', '2018-10-05 14:16:13', '2018-10-05 14:16:13'),
(192, 41086965, 12752324, 'All Technology Ltd', '2018-10-05 14:18:42', '2018-10-05 14:18:42'),
(193, 15396606, 12752324, 'BETA Computers Ltd', '2018-10-05 14:18:42', '2018-10-05 14:18:42'),
(194, 6843487, 12752324, 'eConcepts Studios', '2018-10-05 14:18:42', '2018-10-05 14:18:42'),
(195, 8182416, 12752324, 'Gafunk Nigeria Ltd', '2018-10-05 14:18:43', '2018-10-05 14:18:43'),
(196, 83881791, 12752324, 'Geo-Kena Computers', '2018-10-05 14:18:43', '2018-10-05 14:18:43'),
(197, 2577421, 12752324, 'CBC Computer and Internet', '2018-10-05 14:18:43', '2018-10-05 14:18:43'),
(198, 24696097, 12752324, 'Enterprise System Providers', '2018-10-05 14:18:43', '2018-10-05 14:18:43'),
(199, 4642391, 12752324, 'Enyl Computer Engineers', '2018-10-05 14:18:43', '2018-10-05 14:18:43'),
(200, 64304038, 12752324, 'OmegaTech Stream Ventures', '2018-10-05 14:18:43', '2018-10-05 14:18:43'),
(201, 14867352, 12752324, 'Tech4less Nig Ltd', '2018-10-05 14:18:43', '2018-10-05 14:18:43'),
(202, 23042282, 12752324, 'Softview Computers', '2018-10-05 14:18:43', '2018-10-05 14:18:43'),
(203, 4150307, 12752324, 'Abuja Computer Centre', '2018-10-05 14:18:43', '2018-10-05 14:18:43'),
(204, 40498325, 12752324, 'Micro Age Solutions Ltd', '2018-10-05 14:20:18', '2018-10-05 14:20:18'),
(205, 1380266, 12752324, 'OK Computers Ltd', '2018-10-05 14:20:18', '2018-10-05 14:20:18'),
(206, 54177420, 12752324, 'Power Systems Technology Ltd', '2018-10-05 14:20:19', '2018-10-05 14:20:19'),
(207, 11684909, 12752324, 'Numatics System Inc', '2018-10-05 14:20:19', '2018-10-05 14:20:19'),
(208, 51269965, 12752324, 'Websoft Ltd', '2018-10-05 14:20:19', '2018-10-05 14:20:19'),
(209, 11997393, 12752324, 'Whiz-Tech Ltd', '2018-10-05 14:20:19', '2018-10-05 14:20:19'),
(210, 13610645, 12752324, 'Zinox Technologies Ltd', '2018-10-05 14:20:19', '2018-10-05 14:20:19'),
(211, 20544044, 12752324, 'West Atlantic Computers Ltd', '2018-10-05 14:20:19', '2018-10-05 14:20:19'),
(212, 4013099, 12752324, 'Rontasal Computers Ltd', '2018-10-05 14:20:19', '2018-10-05 14:20:19'),
(213, 84213, 12752324, 'JTI Celestron Nig Ltd', '2018-10-05 14:20:19', '2018-10-05 14:20:19'),
(214, 31565746, 12752324, 'JC Computers', '2018-10-05 14:20:19', '2018-10-05 14:20:19'),
(215, 45239036, 12752324, 'Loycees Computers', '2018-10-05 14:20:19', '2018-10-05 14:20:19'),
(216, 43781428, 12752324, 'Data Processing Maintenance & Services (Dpms)', '2018-10-05 14:21:04', '2018-10-05 14:21:04'),
(217, 43006797, 12752324, 'Dambol Computers', '2018-10-05 14:21:04', '2018-10-05 14:21:04'),
(218, 36086454, 12752324, 'Izabella Nigeria Ltd', '2018-10-05 14:21:04', '2018-10-05 14:21:04'),
(219, 3671047, 12752324, 'Hikmas Intl Nig Ltd', '2018-10-05 14:21:04', '2018-10-05 14:21:04'),
(220, 391699, 12752324, 'DTL Systems', '2018-10-05 14:21:04', '2018-10-05 14:21:04'),
(221, 5306517, 7250675, 'vendrika fashion media ent', '2018-10-05 14:30:00', '2018-10-05 14:30:00'),
(222, 21126892, 7250675, 'Nigeria Campus Talent Hunt', '2018-10-05 14:30:01', '2018-10-05 14:30:01'),
(223, 10419756, 7250675, 'Horiem Signatures Ltd', '2018-10-05 14:30:01', '2018-10-05 14:30:01'),
(224, 9433729, 7250675, 'ABVEE fashion design academy', '2018-10-05 14:30:01', '2018-10-05 14:30:01'),
(225, 14704380, 7250675, 'Bridal & Beauty Dome', '2018-10-05 14:30:01', '2018-10-05 14:30:01'),
(226, 41478168, 7250675, 'OAK DESIGNS LTD', '2018-10-05 14:30:01', '2018-10-05 14:30:01'),
(227, 12165936, 7250675, 'OMD Clothing co', '2018-10-05 14:30:01', '2018-10-05 14:30:01'),
(228, 40372939, 7250675, 'Divine Endowments African Wears', '2018-10-05 14:30:01', '2018-10-05 14:30:01'),
(229, 19500004, 7250675, 'House of Joyce', '2018-10-05 14:30:01', '2018-10-05 14:30:01'),
(230, 4609515, 7250675, 'JC Modeling Agency Nigeria', '2018-10-05 14:30:01', '2018-10-05 14:30:01'),
(231, 31379426, 7250675, 'Tiffany Amber Nigeria', '2018-10-05 14:30:01', '2018-10-05 14:30:01'),
(232, 12483590, 7250675, 'ABV Fashion Design Academy', '2018-10-05 14:30:01', '2018-10-05 14:30:01'),
(233, 13639871, 7250675, 'Ara Fashion Planet', '2018-10-05 14:30:27', '2018-10-05 14:30:27'),
(234, 90978372, 7250675, 'AccNik Ankara Fashion World', '2018-10-05 14:30:27', '2018-10-05 14:30:27'),
(235, 26981467, 26230918, 'Christianity', '2018-10-05 14:35:54', '2018-10-05 14:35:54'),
(236, 60438902, 26230918, 'Traditional beliefs', '2018-10-05 14:35:55', '2018-10-05 14:35:55'),
(237, 73872754, 26230918, 'Atheism', '2018-10-05 14:35:55', '2018-10-05 14:35:55'),
(238, 64519207, 26230918, 'Hinduism', '2018-10-05 14:35:55', '2018-10-05 14:35:55'),
(239, 47706946, 26230918, 'The Grail Movement', '2018-10-05 14:35:55', '2018-10-05 14:35:55'),
(240, 24773559, 26230918, 'The Reformed Ogboni Fraternity', '2018-10-05 14:35:55', '2018-10-05 14:35:55'),
(241, 1633034, 26230918, 'Islam', '2018-10-05 14:35:55', '2018-10-05 14:35:55'),
(242, 26334007, 36779150, 'Abode Real Estate', '2018-10-05 14:39:11', '2018-10-05 14:39:11'),
(243, 41799536, 36779150, 'Adron Homes and Properties Ltd.', '2018-10-05 14:39:12', '2018-10-05 14:39:12'),
(244, 47318567, 36779150, 'Broll Property Services Ltd', '2018-10-05 14:39:12', '2018-10-05 14:39:12'),
(245, 13547360, 36779150, 'Enugu Lifestyle & Golf City', '2018-10-05 14:39:12', '2018-10-05 14:39:12'),
(246, 80308516, 36779150, 'Jiji - Real Estate', '2018-10-05 14:39:12', '2018-10-05 14:39:12'),
(247, 6186541, 36779150, 'Landmark Corporate Liability Limited', '2018-10-05 14:39:12', '2018-10-05 14:39:12'),
(248, 7799349, 36779150, 'Pazino Engineering & Construction Company Limited', '2018-10-05 14:39:12', '2018-10-05 14:39:12'),
(249, 44932599, 36779150, 'Prestigious Realty Ltd', '2018-10-05 14:39:12', '2018-10-05 14:39:12'),
(250, 5848506, 36779150, 'Sterling Homes ltd', '2018-10-05 14:39:12', '2018-10-05 14:39:12'),
(251, 17172409, 36779150, 'Vafiero International Ltd', '2018-10-05 14:39:12', '2018-10-05 14:39:12'),
(252, 5876203, 36779150, 'LAVIC Properties', '2018-10-05 14:39:12', '2018-10-05 14:39:12'),
(253, 105514, 36779150, 'Jide Taiwo & Co', '2018-10-05 14:39:12', '2018-10-05 14:39:12'),
(254, 10528324, 1069894, 'Navy', '2018-10-05 15:16:23', '2018-10-05 15:16:23'),
(255, 50474637, 1069894, 'Air Force', '2018-10-05 15:16:23', '2018-10-05 15:16:23'),
(256, 30534207, 1069894, 'Police', '2018-10-05 15:16:23', '2018-10-05 15:16:23'),
(257, 3828120, 1069894, 'Army', '2018-10-05 15:16:23', '2018-10-05 15:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `sub_in_id` int(11) NOT NULL,
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

INSERT INTO `topics` (`id`, `sub_in_id`, `state`, `city`, `topic_name`, `description`, `location`, `topic_id`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 50357077, 'rivers', 'Port Harcourt', 'Bad responses time', 'I am developing a site at the moment which allows people to create articles in a blog format.\r\n\r\nA feature of the site allows other users to \'like\' and \'comment\' on the article.\r\n\r\nI am wanting to count the number of likes and comments an article has and display the count in a summary at the top of the article page. (A bit like the way Jeffrey displays the number of comments on a forum post in the right side of the listing page)\r\n\r\nCurrently, if a user comments on an article, I post the comment to the Comments table. Similarly, if a user \'likes\' an article, I post the like to the Likes table. Using my current architecture, it means I have to query the comments table and get the count, then query the likes table for the count each time an article is viewed.\r\n\r\nI am wondering if a better architecture would be to add 2 columns (Counts, Comments) to the Articles table and add/remove an increment each time a user adds/removes a like or comment? The idea would then be to simply display the count in the article without having to query or join other tables.', 'ajah', 14577948, '2018-09-27 12:32:13', '2018-09-27 12:32:13', 2),
(2, 50357077, 'Lagos', 'Lagos', 'Bad responses time', 'I find your service poor tried putting \"$premios->links()\" inside and outside the foreach.Without pagination everything works good', 'Agege', 60042347, '2018-09-27 16:58:09', '2018-09-27 16:58:09', 4),
(3, 14138155, 'lagos', 'lagos', 'poor network', 'whats up ? I have a little problem with Laravel Paginator.\r\n\r\nI built the function using order by and paginator, but I\'m getting the error message \"Call to undefined method Illuminate \\ Database \\ Query \\ Builder :: links () (View: C: \\ wamp \\ www \\ laravel \\ app \\ views \\ frontend \\ premios.blade.php).', 'ikate', 25002533, '2018-09-28 16:02:00', '2018-09-28 16:02:00', 5),
(4, 5487464, 'lagos', 'lagos', 'Late payment of salary', 'I believe what you are wanting is z-index. Rather than explaining it here, just do a Google search for it. It is simple to understand.I believe what you are wanting is z-index. Rather than explaining it here, just do a Google search for it. It is simple to understand.I believe what you are wanting is z-index. Rather than explaining it here, just do a Google search for it. It is simple to understand.', 'epe', 18546917, '2018-10-05 16:04:52', '2018-10-05 16:04:52', 7),
(5, 5487464, 'lagos', 'lagos', 'Late payment of salary', 'I believe what you are wanting is z-index. Rather than explaining it here, just do a Google search for it. It is simple to understand.I believe what you are wanting is z-index. Rather than explaining it here, just do a Google search for it. It is simple to understand.I believe what you are wanting is z-index. Rather than explaining it here, just do a Google search for it. It is simple to understand.', 'epe', 4907381, '2018-10-05 16:05:59', '2018-10-05 16:05:59', 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `username`, `phone`, `avatar`, `provider`, `provider_id`, `access_token`, `isadmin`, `ip_address`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'myckhel ishola', 'myckhel', '', '', '', '', '', 'default', NULL, 'myckhel1@hotmail.com', '$2y$10$vDh4s8sFye0/UHVdTE3MV.W1LSHNjTKvnk1B0Pth9q2peP0PB.hDi', 'nKoN2PiPFXbPHZY7AQzZI1OlPwG8FsgmGToYJv7j0cXJG4uxDenyfUlkedF2', '2018-09-19 11:09:59', '2018-09-19 11:09:59'),
(2, 'kennyendowed', 'kennyendowed', '', '', '', '', '', 'admin', '::1', 'kennyendowed@ymail.com', '$2y$10$BzwVpaf/cDUAyyObFBg61uJiye2Zjt.PFN.KteuYatBwI3UXzynxe', 'Gha9E158N7Zshx1JDR3GPMapFFNZCWXqxcxsUPlJR9bTBYqoeoNoHirW2zp4', '2018-09-20 08:26:27', '2018-09-28 12:00:06'),
(3, 'favour peters', 'fav401', '', '', '', '', '', 'default', '::1', 'fav401@gmail.com', '$2y$10$dlXUeg2uV0Kq2OMAacO71Okdu1l2gugwMHZn08fenO0LJEYWPqoam', 'OeGSmDgulcUnNki8MAJdJygbE7LVXePcAwYWk7tFzX6u9kFeQKmKgNnBxAT1', '2018-09-20 11:07:27', '2018-09-20 11:07:27'),
(4, 'peace akpan', 'Emi', '0564564564', 'http://localhost/9jareview/img/4Emi.jpg', 'facebook', '1727837450677035', 'EAAEZAmZCtIvvsBAGPXdhAwB5eUYVSohFE9aNiZCn5r67XjPfYtC5wrr27FXzMNz0ogLn5Nq2rOlfMhlxPZCVDj8ZBGhZAtZB3zyWIky6WXLwdLRSGk6woPZBYyZAEDBqxMfjh8fmv5ATSBZAOdMO8QWPNEHZBf3MjrldERuxhVXL8FRCgZDZD', 'default', '::1', 'kenneyg50@gmail.com', '$2y$10$qC5FiJl3IUzk4YysmM8qLOVYal4rhonB6vJciGH/6j3ICZA5LwzXC', 'oN9216N2u6B6HgrgOyLdJa14AcB4jp8Ww4ZIkGrNQKo6VstzcI3fdSvjTEXM', '2018-09-20 16:01:43', '2018-10-05 07:53:07'),
(5, 'micheal adah', 'mic', '', 'http://localhost/9jareview/img/5mic.jpg', '', '', '', 'default', '::1', 'myckhel123@gmail.com', '$2y$10$iFnJYBTUoBafJ53c6N.bMeBz5DXEB2O.J8.8bgPPPyJUlMQ9D7Xwe', 'f6r6lPh0QwZzoh9bZY1b75e5iZJ6kBqHg1B0Mr8GD0gaL0pX2hHxgTCfVONQ', '2018-09-27 12:41:09', '2018-09-28 14:04:45'),
(6, 'Godwin Igbokwe', 'Godwin Igbokwe', '1111', 'https://lh6.googleusercontent.com/-f2aD9-c_cqg/AAAAAAAAAAI/AAAAAAAAABw/dpY8GWbQzLA/photo.jpg?sz=50', 'google', '102379792876068981993', 'ya29.GlstBqHmFTZYv8BPdW59XRqAjv7CzI13j6wnoIvedidhrvOej2dIwUSHd4G7ffDkkBIAjK07ClIJnEJAbNR-1_YkXgemaq5N7_DpN7fy3IcrWEo_UXgoRSOA9EGB', 'default', NULL, 'esurfonline@gmail.com', '', 'PchcZG6D2LX8RCXc049cX18dMRoTu5a5wG8QmIuUOAO0D1mOh3wmPwnpkCaN', '2018-10-05 07:21:40', '2018-10-05 07:21:40'),
(7, 'The Apartment Application', 'Apartment Application', '03346988741', 'http://localhost/9jareview/img/7Apartment Application.jpg', 'google', '112739036808392317661', 'ya29.GlstBjnlQsfy0oBAdcM9Y6q_08BmlSXnmI6T2axXMqAKiyCKcyuN-4GRFpgbNVsM32RR9npHDmTPOI2HDSdop-ATYRXPS4qBu5FjuTUH99dN1UsVjpkBKuqFMPHG', 'default', '::1', 'kenneyg50@gmail.com', '', 'U5juYyey1wHSGRFQ1KnZbrgbCTqydLwmizjrISennboet8MucVD3R7EAiM3C', '2018-10-05 07:25:59', '2018-10-05 10:39:19');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `replycomments`
--
ALTER TABLE `replycomments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_industries`
--
ALTER TABLE `sub_industries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
