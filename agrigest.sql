-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2026 at 05:41 PM
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
-- Database: `agrigest`
--

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
(4, '2026_07_06_140646_create_parcelles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parcelles`
--

CREATE TABLE `parcelles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `culture` varchar(255) NOT NULL,
  `superficie` decimal(8,2) NOT NULL,
  `date_plantation` date NOT NULL,
  `statut` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parcelles`
--

INSERT INTO `parcelles` (`id`, `nom`, `culture`, `superficie`, `date_plantation`, `statut`, `created_at`, `updated_at`) VALUES
(1, 'delectus', 'Pomme de terre', 10.93, '1992-03-30', 'Récoltée', '2026-07-08 10:12:49', '2026-07-10 08:34:39'),
(2, 'sed', 'Maïs', 16.08, '2005-10-04', 'Préparation', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(3, 'fuga', 'Blé', 1.62, '2012-11-01', 'Récoltée', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(4, 'dolores', 'Blé', 15.58, '2004-09-29', 'En culture', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(5, 'sed', 'Blé', 2.46, '2001-01-11', 'Préparation', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(6, 'illo', 'Olivier', 19.11, '1999-09-03', 'Récoltée', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(7, 'repellat', 'Tomate', 3.23, '2007-11-28', 'En culture', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(8, 'eum', 'Pomme de terre', 12.76, '1975-05-22', 'En culture', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(9, 'eum', 'Blé', 13.99, '2014-04-21', 'Récoltée', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(10, 'quidem', 'Pomme de terre', 16.87, '2016-09-24', 'En culture', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(11, 'et', 'Tomate', 15.61, '2018-10-11', 'Préparation', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(12, 'nostrum', 'Olivier', 5.51, '2005-02-02', 'En culture', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(13, 'consectetur', 'Olivier', 11.84, '2013-04-11', 'En culture', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(14, 'veritatis', 'Olivier', 17.27, '1991-07-04', 'Préparation', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(15, 'et', 'Blé', 9.00, '2003-01-15', 'Récoltée', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(16, 'et', 'Blé', 11.75, '2001-04-02', 'En culture', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(17, 'non', 'Pomme de terre', 18.93, '2023-05-03', 'Récoltée', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(18, 'quaerat', 'Blé', 17.96, '1982-08-02', 'En culture', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(19, 'a', 'Blé', 2.05, '1999-01-15', 'En culture', '2026-07-08 10:12:49', '2026-07-08 10:12:49'),
(20, 'cupiditate', 'Blé', 19.63, '2014-12-11', 'En culture', '2026-07-08 10:12:49', '2026-07-08 10:12:49');

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
('BfwBZWvrGHqM5PDik2HjIR6dNG85ZRqZKOinym53', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVVMMjVzb0Z0Z0ZEWEUwT1FMOVczOTlVUThTMXhISGpqTDFEaWN3MCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYXJjZWxsZXMiO3M6NToicm91dGUiO3M6MTU6InBhcmNlbGxlcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1783608298),
('iNfveDYl2F5hzGaVxaXnbjoionbBHkReD7RQYbAZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZDY0bFdsSW0zQ3FrTUZFb25GcXhBTFdDOXpvcUM3RW1MREJkYlVlWiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYXJjZWxsZXMiO3M6NToicm91dGUiO3M6MTU6InBhcmNlbGxlcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1783676158),
('SNjmgB4dnvQtJAQ7MDJZUpLHczcgk6zVLMHWl4AB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFRWZ3ZJS3RnSHFOcHJJN0tONkxhRFJ1THIzVmJrV2daSEtHdXB3ViI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYXJjZWxsZXMvMSI7czo1OiJyb3V0ZSI7czoxNDoicGFyY2VsbGVzLnNob3ciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1783608574),
('UWa9sBzlHI3EbkAxqHCaicBOnrZsldobWuvbOdbk', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXhGTU1POUUzdUJ2RHlycVBKNDhrdmxrWWs3a2xlTjR0cThodjFLayI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYXJjZWxsZXMvMSI7czo1OiJyb3V0ZSI7czoxNDoicGFyY2VsbGVzLnNob3ciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1783589839),
('Vg725lFaZtC2Po4r9IIWMsLwEWySSTkPBIU4R4Of', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNElraUpyZm1JSnBGc2F3R0IzanF1RElmNFBYNDdwWURVUHV4OERVWCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYXJjZWxsZXMiO3M6NToicm91dGUiO3M6MTU6InBhcmNlbGxlcy5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1783691920);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

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
-- Indexes for table `parcelles`
--
ALTER TABLE `parcelles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parcelles`
--
ALTER TABLE `parcelles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
