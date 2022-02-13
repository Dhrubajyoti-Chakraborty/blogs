-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2022 at 01:03 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog-pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhrub', 'dhrub2019.11@gmail.com', '$2y$10$mxuZ.9Rd1WQDmcbvMgvGp.Ezq2u1jioR/l4Bp8WwNMuwjQGPQb3wK', '9999999999', 1, '2020-05-10 05:31:24', '2020-05-15 20:31:10'),
(5, 'Dhrubjyoti Chakraborty', 'palraj448@gmail.com', '$2y$10$yNx2XGG4aGGPh2OzDUiGNuLTGZxEuA2nj.CFtD5wVmx16ibiAydmO', '1234567890', 1, '2020-05-15 10:24:54', '2020-05-15 19:54:57'),
(6, 'Dhrubjyoti Chakraborty', 'dhruba@gmail.com', '$2y$10$Bbhz5X6sc2oU6W7goBgJ2uJlaxyJMQSn5HzE5Z.MS6h5QlJLf3rxS', '1234567890', 1, '2020-05-15 10:26:17', '2020-05-15 20:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`id`, `role_id`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 4, 5, NULL, NULL),
(2, 3, 6, NULL, NULL),
(3, 4, 6, NULL, NULL),
(4, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'category1', 'slugcategory', '2020-05-10 00:15:36', '2020-05-10 02:32:02'),
(2, 'category2', 'slug2', '2020-05-10 00:16:04', '2020-05-10 00:16:04');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_posts`
--

INSERT INTO `category_posts` (`category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-05-10 02:34:18', '2020-05-10 02:34:18'),
(2, 1, '2020-05-10 05:54:39', '2020-05-10 05:54:39'),
(1, 2, '2020-05-10 06:32:52', '2020-05-10 06:32:52'),
(2, 3, '2020-05-10 06:33:23', '2020-05-10 06:33:23'),
(2, 4, '2020-05-10 06:34:05', '2020-05-10 06:34:05'),
(1, 5, '2020-05-10 06:34:53', '2020-05-10 06:34:53'),
(2, 6, '2020-05-10 06:35:20', '2020-05-10 06:35:20'),
(1, 7, '2020-05-10 06:35:57', '2020-05-10 06:35:57'),
(2, 8, '2020-05-10 06:36:29', '2020-05-10 06:36:29'),
(1, 9, '2020-05-10 06:37:36', '2020-05-10 06:37:36'),
(2, 10, '2020-05-10 06:38:19', '2020-05-10 06:38:19'),
(2, 12, '2020-05-10 20:33:25', '2020-05-10 20:33:25');

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
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2020_05_07_000947_create_posts_table', 1),
(24, '2020_05_07_001956_create_categories_table', 1),
(25, '2020_05_07_002011_create_tags_table', 1),
(26, '2020_05_07_002409_create_category_posts_table', 1),
(27, '2020_05_07_002504_create_post_tags_table', 1),
(28, '2020_05_07_002801_create_admins_table', 1),
(29, '2020_05_07_003151_create_roles_table', 1),
(30, '2020_05_07_003320_create_admin_roles_table', 1),
(31, '2020_05_13_133555_create_permissions_table', 2),
(32, '2020_05_14_142634_create_permission_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dhrub2019.4@gmail.com', '$2y$10$cqM6aTXBeYXkGMmhwS7.3.WabftoHnJaw/J3WwQDDqGMZPMoFOt8O', '2020-05-11 03:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `for`, `created_at`, `updated_at`) VALUES
(1, 'Post-Create', 'post', '2020-05-14 09:00:27', '2020-05-14 09:00:27'),
(2, 'Post-Upate', 'post', '2020-05-14 09:00:46', '2020-05-14 09:00:46'),
(3, 'Post-Delete', 'post', '2020-05-14 09:01:06', '2020-05-14 09:01:06'),
(4, 'User-Create', 'user', '2020-05-14 09:01:37', '2020-05-14 09:01:37'),
(5, 'User-Update', 'user', '2020-05-14 09:01:52', '2020-05-14 09:01:52'),
(6, 'User-Delete', 'user', '2020-05-14 09:02:07', '2020-05-14 09:02:07'),
(7, 'Post-Publish', 'post', '2020-05-14 09:02:40', '2020-05-14 09:02:40'),
(8, 'Tag-CRUD`', 'other', '2020-05-14 09:02:57', '2020-05-14 09:02:57'),
(9, 'Category-CRUD', 'other', '2020-05-14 09:03:13', '2020-05-14 09:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(2, 1),
(2, 3),
(2, 2),
(2, 8),
(2, 9),
(3, 3),
(3, 7),
(4, 1),
(4, 2),
(4, 8),
(4, 9),
(5, 2),
(5, 3),
(5, 1),
(5, 7),
(5, 4),
(5, 5),
(5, 6),
(5, 8),
(5, 9),
(2, 7),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 2),
(3, 4),
(3, 5),
(3, 6),
(3, 8),
(3, 9),
(4, 3),
(4, 7),
(4, 4),
(4, 5),
(4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `like` int(11) DEFAULT NULL,
  `dislike` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `slug`, `body`, `status`, `posted_by`, `image`, `like`, `dislike`, `created_at`, `updated_at`) VALUES
(1, 'laravel', 'subtitle', 'slug', 'Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe, a round earth in which all the directions eventually meet, in which there is no center because every point, or none, is center — an equal earth which all men occupy as equals. The airman\'s earth, if free men make it, will be truly round: a globe in practice, not in theory.\r\n\r\nScience cuts two ways, of course; its products can be used for both good and evil. But there\'s no turning back from science. The early warnings about technological dangers also come from science.\r\n\r\nWhat was most significant about the lunar voyage was not that man set foot on the Moon but that they set eye on the earth.\r\n\r\nA Chinese tale tells of some men sent to harm a young girl who, upon seeing her beauty, become her protectors rather than her violators. That\'s how I felt seeing the Earth for the first time. I could not help but love and cherish her.\r\n\r\nFor those who have seen the Earth from space, and for the hundreds and perhaps thousands more who will, the experience most certainly changes your perspective. The things that we share in our world are far more valuable than those which divide us.\r\n\r\nThe Final Frontier\r\nThere can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.\r\n\r\nThere can be no thought of finishing for ‘aiming for the stars.’ Both figuratively and literally, it is a task to occupy the generations. And no matter how much progress one makes, there is always the thrill of just beginning.\r\n\r\nThe dreams of yesterday are the hopes of today and the reality of tomorrow. Science has not yet mastered prophecy. We predict too much for the next year and yet far too little for the next ten.\r\nSpaceflights cannot be stopped. This is not the work of any one man or even a group of men. It is a historical process which mankind is carrying out in accordance with the natural laws of human development.\r\n\r\nReaching for the Stars\r\nAs we got further and further away, it [the Earth] diminished in size. Finally it shrank to the size of a marble, the most beautiful you can imagine. That beautiful, warm, living object looked so fragile, so delicate, that if you touched it with a finger it would crumble and fall apart. Seeing this has to change a man.\r\n\r\n\r\nTo go places and do things that have never been done before – that’s what living is all about.\r\nSpace, the final frontier. These are the voyages of the Starship Enterprise. Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before.\r\n\r\nAs I stand out here in the wonders of the unknown at Hadley, I sort of realize there’s a fundamental truth to our nature, Man must explore, and this is exploration at its greatest.\r\n\r\nPlaceholder text by Space Ipsum. Photographs by NASA on The Commons.', 1, NULL, '1640499469.jpeg', NULL, NULL, '2020-05-10 05:31:24', '2021-12-26 00:47:49'),
(2, 'this is second title', 'this is second subtitle', 'this is second', 'this is second', 1, NULL, '1640500583.jpeg', NULL, NULL, '2020-05-10 06:32:52', '2021-12-26 01:06:23'),
(3, 'this is third', 'this is third', 'this is third', 'this is third', 1, NULL, '1640500551.jpg', NULL, NULL, '2020-05-10 06:33:23', '2021-12-26 01:05:51'),
(4, 'this is fourth', 'this is fourth', 'this is fourth', 'this is fourth', 1, NULL, '1640500501.jpeg', NULL, NULL, '2020-05-10 06:34:05', '2021-12-26 01:05:01'),
(5, 'this is sixth', 'this is sixth', 'this is sixth', 'this is sixth', 1, NULL, '1640500480.jpeg', NULL, NULL, '2020-05-10 06:34:53', '2021-12-26 01:04:40'),
(6, 'this is seventh', 'this is seventh', 'this is seventh', 'this is seventh', 1, NULL, '1640500460.jpeg', NULL, NULL, '2020-05-10 06:35:20', '2021-12-26 01:04:20'),
(7, 'this is eighth', 'this is eighth', 'this is eighth', 'this is eighth', 1, NULL, '1640500419.jpeg', NULL, NULL, '2020-05-10 06:35:57', '2021-12-26 01:03:39'),
(8, 'this is fifth', 'this is fifth', 'this is fifth', 'this is fifth', 1, NULL, '1640500363.jpeg', NULL, NULL, '2020-05-10 06:36:28', '2021-12-26 01:02:43'),
(9, 'this is ninth', 'this is ninth', 'this is ninth', 'this is ninth', 1, NULL, '1640500326.jpeg', NULL, NULL, '2020-05-10 06:37:36', '2021-12-26 01:02:06'),
(10, 'this is last', 'this is last', 'this is last', 'this is last', 1, NULL, '1640500298.jpeg', NULL, NULL, '2020-05-10 06:38:19', '2021-12-26 01:01:39'),
(12, 'this is eleventh', 'this is eleventh', 'this is eleventh', 'this is eleventh', 1, NULL, '1640500279.jpeg', NULL, NULL, '2020-05-10 20:33:25', '2021-12-26 01:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-05-10 02:34:18', '2020-05-10 02:34:18'),
(1, 2, '2020-05-10 06:03:14', '2020-05-10 06:03:14'),
(2, 1, '2020-05-10 06:32:52', '2020-05-10 06:32:52'),
(3, 2, '2020-05-10 06:33:23', '2020-05-10 06:33:23'),
(4, 1, '2020-05-10 06:34:05', '2020-05-10 06:34:05'),
(5, 2, '2020-05-10 06:34:53', '2020-05-10 06:34:53'),
(6, 2, '2020-05-10 06:35:20', '2020-05-10 06:35:20'),
(7, 2, '2020-05-10 06:35:57', '2020-05-10 06:35:57'),
(8, 1, '2020-05-10 06:36:28', '2020-05-10 06:36:28'),
(9, 1, '2020-05-10 06:37:36', '2020-05-10 06:37:36'),
(10, 2, '2020-05-10 06:38:19', '2020-05-10 06:38:19'),
(12, 1, '2020-05-10 20:33:25', '2020-05-10 20:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Editors', '2020-05-12 21:09:44', '2020-05-12 21:50:44'),
(3, 'Publisher', '2020-05-12 21:51:37', '2020-05-12 21:51:37'),
(4, 'Writer', '2020-05-12 21:52:04', '2020-05-12 21:52:04');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'tag1', 'tagslug', '2020-05-10 00:15:12', '2020-05-10 02:31:48'),
(2, 'tag2', 'slug2', '2020-05-10 06:02:30', '2020-05-10 06:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Dhrubjyoti Chakraborty', 'dhrub2019.4@gmail.com', '$2y$10$pRTR3cAQh8fARAVJZ2n2reTz4g8Ba1FEYBAxPNB53FJ/RAf7IWM2.', '7xI7Tn2cxnYQzNE1ZkrHW7P29ilU9zhKtiWJsFtTK71h8PO3BHHeGnozjjlU', '2020-05-11 03:28:36', '2020-05-11 03:28:36'),
(3, 'Dhrub', 'dhrub@gmail.com', '$2y$10$mxuZ.9Rd1WQDmcbvMgvGp.Ezq2u1jioR/l4Bp8WwNMuwjQGPQb3wK', 'i1SCkqUxKy8VZ13aW0q7SlFURrQV9cvyEhHoyPsWx6hRTZJUdynrhcCJ1zJ1', '2021-12-03 22:57:12', '2021-12-03 22:57:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD KEY `category_posts_category_id_index` (`category_id`),
  ADD KEY `category_posts_post_id_index` (`post_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_post_id_index` (`post_id`),
  ADD KEY `post_tags_tag_id_index` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
