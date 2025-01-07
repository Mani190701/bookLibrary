-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 07:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `ISBN` varchar(255) NOT NULL,
  `published_date` date NOT NULL,
  `status` enum('available','borrowed') NOT NULL DEFAULT 'available',
  `borrowed_date` date DEFAULT NULL,
  `borrower_id` int(200) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `ISBN`, `published_date`, `status`, `borrowed_date`, `borrower_id`, `due_date`, `created_at`, `updated_at`) VALUES
(1, 'Goat Brothers', 'By Colton  Larry', '978074', '1925-10-24', 'available', NULL, 2, NULL, '2025-01-06 07:56:54', '2025-01-06 12:03:21'),
(2, 'The Missing Person', 'By Grumbach  Doris', '978075', '1925-10-05', 'borrowed', '2025-01-06', NULL, '2025-01-13', '2025-01-06 07:56:54', '2025-01-06 09:42:48'),
(3, 'Don\'t Eat Your Heart Out Cookbook', 'By Piscatella  Joseph C.', '978076', '1925-10-06', 'borrowed', '2025-01-06', NULL, '2025-01-13', '2025-01-06 07:56:54', '2025-01-06 09:42:49'),
(4, 'When Your Corporate Umbrella Begins to Leak: A Handbook for White Collar Re-Employment', 'By Davis  Paul D.', '978077', '1925-10-07', 'borrowed', '2025-01-06', NULL, '2025-01-13', '2025-01-06 07:56:54', '2025-01-06 09:42:50'),
(5, 'Amy Spangler\'s Breastfeeding : A Parent\'s Guide', 'By Spangler  Amy', '978078', '1925-10-08', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 08:29:22'),
(6, 'The Foundation of Leadership: Enduring Principles to Govern Our Lives', 'By Short  Bo', '978079', '1925-10-09', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(7, 'Chicken Soup for the Soul: 101 Stories to Open the Heart and Rekindle the Spirit', 'By Canfield  Jack (COM) and Hansen  Mark Victor (COM)', '978080', '1925-10-10', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 08:29:25'),
(8, 'Journey Through Heartsongs', 'By Stepanek  Mattie J. T.', '978081', '1925-10-11', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(9, 'In Search of Melancholy Baby', 'By Aksyonov  Vassily  Heim  Michael Henry  and Bouis  Antonina W.', '978082', '1925-10-12', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 08:37:33'),
(10, 'Christmas Cookies', 'By Eakin  Katherine M. and Deaman  Joane (EDT)', '978083', '1925-10-13', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(11, 'The Dieter\'s Guide to Weight Loss During Sex', 'By Smith  Richard', '978084', '1925-10-14', 'available', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(12, 'Germs : Biological Weapons and America\'s Secret War', 'By Miller  Judith  Engelberg  Stephen  and Broad  William J.', '978085', '1925-10-15', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(13, 'The Genesis of Ethics', 'By Visotzky  Burton L.', '978086', '1925-10-16', 'available', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(14, 'The Good Book: Reading the Bible with Mind and Heart', 'By Gomes  Peter J.', '978087', '1925-10-17', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(15, 'All over but the Shoutin\'', 'By Bragg  Rick', '978088', '1925-10-18', 'available', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(16, 'Oilers and Sweepers and Other Stories', 'By Dennison  George', '978089', '1925-10-19', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(17, 'Prince William', 'By Garner  Valerie', '978090', '1925-10-20', 'available', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(18, 'The Emperor\'s New Mind', 'By Penrose  Roger', '978091', '1925-10-21', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(19, 'Touching Fire: Erotic Writings by Women', 'By Thornton  Louise  Sturtevant  Jan  and Sumrall  Amber Coverdale (EDT)', '978092', '1925-10-22', 'available', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(20, 'Hill Rat: Blowing the Lid Off Congress', 'By Jackley  John L.', '978093', '1925-10-23', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(21, 'The Great ABC Treasure Hunt: A Hidden Picture Alphabet Book (Time-Life Early Learning Program)', 'By Time-Life for Children (Firm) (COR)  Singer  Muff  and Hoggan  Pat (ILT)', '978094', '1925-10-24', 'available', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(22, 'Personality of the Cat', 'By Aymar  Brandt (EDT)', '978095', '1925-10-25', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(23, 'Murdering Mr. Monti: A Merry Little Tale of Sex and Violence', 'By Viorst  Judith', '978096', '1925-10-26', 'available', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(24, 'In Re Alger Hiss:  Petition for a Writ of Error Coram Nobis', 'By Edith Tiger', '978097', '1925-10-27', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(25, 'Black Holes and Baby Universes and Other Essays', 'By Hawking  Stephen W.', '978098', '1925-10-28', 'available', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(26, 'Relativity: The Special and the General Theory', 'By Albert Einstein', '978099', '1925-10-29', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(27, 'Betrayal : How the Clinton Administration Undermined American Security', 'By Gertz  Bill', '978100', '1925-10-30', 'available', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(28, 'Shadow Song', 'By Kay  Terry', '978101', '1925-10-31', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(29, 'Undercurrents: A Therapist\'s Reckoning With Her Own Depression', 'By Manning  Martha', '978102', '1925-11-01', 'available', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(30, 'The Road Less Traveled and Beyond: Spiritual Growth in an Age of Anxiety', 'By Peck  M. Scott', '978103', '1925-11-02', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(31, 'The Kiss: A Memoir', 'By Harrison  Kathryn', '978104', '1925-11-03', 'available', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(32, 'Codebreakers\' Victory: How the Allied Cryptogaphers Won World War II', 'By Haufler  Hervie', '978105', '1925-11-04', 'borrowed', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(33, 'A Manual for Writers of Term Papers  Theses  and Dissertations  Fifth Edition', 'By Turabian  Kate L.', '978106', '1925-11-05', 'available', NULL, NULL, NULL, '2025-01-06 07:56:54', '2025-01-06 07:56:54'),
(34, 'How to control EGO', 'By mani', '190701', '2001-07-19', 'available', NULL, NULL, NULL, '2025-01-06 22:45:34', '2025-01-06 22:45:34'),
(38, 'How to control Love', 'By mani', '23323', '2001-07-19', 'available', NULL, NULL, NULL, '2025-01-06 22:58:31', '2025-01-06 22:58:31'),
(39, 'Avengers', 'By marvel', '12345', '2004-06-19', 'available', NULL, NULL, NULL, '2025-01-06 22:58:31', '2025-01-06 22:58:31'),
(40, 'The Many Troubles of Andy Russell (1)', 'By Adler, David A. and Hillenbrand, Will (ILT)', '32145', '2024-12-12', 'available', NULL, NULL, NULL, '2025-01-06 23:14:16', '2025-01-06 23:14:16'),
(41, 'Angel Bear', 'By Siewert, Pauline (ILT)', '32146', '2024-12-13', 'available', NULL, NULL, NULL, '2025-01-06 23:14:16', '2025-01-06 23:14:16'),
(42, 'The Sierra Club Guide to the Natural Areas of New Mexico, Arizona and Nevada (Sierra Club Guides to the Natural Areas of the United States)', 'By Sierra Club (COR) and Perry, Jane Greverus', '32147', '2024-12-14', 'available', NULL, NULL, NULL, '2025-01-06 23:14:16', '2025-01-06 23:14:16'),
(43, 'Keeker and the Sneaky Pony: Book 1 in the Sneaky Pony Series', 'By Higginson, Hadley, Higgens, Hadley, and Andersen, Maja (ILT)', '32148', '2024-12-15', 'available', NULL, NULL, NULL, '2025-01-06 23:14:16', '2025-01-06 23:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_06_075443_create_permission_tables', 2),
(5, '2025_01_06_082835_create_books_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2025-01-06 02:25:53', '2025-01-06 02:25:53'),
(2, 'Member', 'web', '2025-01-06 02:25:53', '2025-01-06 02:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('znAwKqy6LoOmwU084XvCncTpBThXvTF8ocRSR4ID', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDR4ZW9ycWF4T0NwWEFzeEY3VUNtWEYyMjlQY1pLdExmQ1JKa1lrOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1736232515);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$12$dZlgG3tx.xhDOzSPZdRqa.Xu2MMPU1ORcCz9gbiClAueZ2XbyaAMe', NULL, '2025-01-06 02:38:08', '2025-01-06 02:38:08'),
(2, 'Mani Kandan', 'mani190701@gmail.com', NULL, '$2y$12$V1t.s9mJdqJR4x8d49wwPuPLcs/azCqVRDHV0TOeTTlaI7rDMDATG', NULL, '2025-01-06 02:54:00', '2025-01-06 02:54:00'),
(3, 'Niveth', 'niveth@gmail.com', NULL, '$2y$12$.vblYgvbg3gq4xMN5oRE5u06eEXOM1q849WEXIOZQetIc9uLgl0HG', NULL, '2025-01-06 02:56:02', '2025-01-06 02:56:02'),
(4, 'siva', 'siva@gmail.com', NULL, '$2y$12$rUkCPdy9m7Yw5WcuDd.7Fexkg3AfFFPcn5MswpLNo..f07Ujv3vv6', NULL, '2025-01-06 22:28:22', '2025-01-06 22:28:22'),
(5, 'vijay', 'vijay@gmail.com', NULL, '$2y$12$6lSbR8qXQFIr1BXgyGwQQOQIthzAzy8ocV7Sy588oFm.cEAkR2lue', NULL, '2025-01-06 22:33:06', '2025-01-06 22:33:06'),
(6, 'ajith', 'ajith@gmai.com', NULL, '$2y$12$TIzUEZuNNplig1wvUtIYjOlMgYtKXZ3gxUHNEWBGo6D2u.9TZWMZC', NULL, '2025-01-06 22:41:16', '2025-01-06 22:41:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_isbn_unique` (`ISBN`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
