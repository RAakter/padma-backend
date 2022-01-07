-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 06:52 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `padma`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `bill_month` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `amount` decimal(11,2) DEFAULT NULL,
  `status` enum('due','paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'due',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `customer_id`, `bill_month`, `year`, `amount`, `status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 9, 'January', 2022, '5000.00', 'due', 6, '2022-01-07 05:21:51', '2022-01-07 05:21:51', NULL),
(2, 9, 'February', 2022, '6000.00', 'paid', 6, '2022-01-07 05:26:21', '2022-01-07 05:30:09', NULL),
(3, 11, 'January', 2020, '4000.00', 'due', NULL, '2022-01-07 09:27:32', '2022-01-07 09:27:32', NULL),
(4, 11, 'January', 2020, '4000.00', 'due', NULL, '2022-01-07 09:28:04', '2022-01-07 09:28:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2022_01_07_093208_create_bills_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 6, 'padmaProject', '996a77d52fd1f37c903b6cfdda4278bf54132cdd768a628e8d20b81be1d48733', '[\"*\"]', NULL, '2022-01-07 05:08:10', '2022-01-07 05:08:10'),
(2, 'App\\Models\\User', 6, 'padmaProject', 'f945d1af89d8c710fd0a33534063ce0579781cca271cb19bb0af881d6f6a9673', '[\"*\"]', '2022-01-07 05:30:09', '2022-01-07 05:09:06', '2022-01-07 05:30:09'),
(3, 'App\\Models\\User', 9, 'padmaProject', '3a39677a40c80585f9cd00a4e7191c13c2e1cb0951569be469c1aa76770f9283', '[\"*\"]', NULL, '2022-01-07 06:02:26', '2022-01-07 06:02:26'),
(4, 'App\\Models\\User', 9, 'padmaProject', 'eb4d2298278bed5621f9fe89777af450bfaadbac68e37107057cd8b8cf1cb78e', '[\"*\"]', NULL, '2022-01-07 06:03:32', '2022-01-07 06:03:32'),
(5, 'App\\Models\\User', 9, 'padmaProject', 'f3ac220b435d88fa48841a6c12a6eec80eba205e1b41aa8dacfc42c8f35f490f', '[\"*\"]', NULL, '2022-01-07 06:06:10', '2022-01-07 06:06:10'),
(6, 'App\\Models\\User', 9, 'padmaProject', '08150cc8b9074afa2b2bb10bc74e71d33d6c4ab60a0a5b01a7d5b5f1fe5bc005', '[\"*\"]', NULL, '2022-01-07 06:12:27', '2022-01-07 06:12:27'),
(7, 'App\\Models\\User', 9, 'padmaProject', 'f6f4c4aeb8d9ba80d2c6a72317cf759fb7536815106c63cccf39f2942913b161', '[\"*\"]', NULL, '2022-01-07 06:16:18', '2022-01-07 06:16:18'),
(8, 'App\\Models\\User', 9, 'padmaProject', 'eb5413163489b8805992e09defec07e6df14ccd0551567aaf457f183fa4842e9', '[\"*\"]', NULL, '2022-01-07 06:22:32', '2022-01-07 06:22:32'),
(9, 'App\\Models\\User', 9, 'padmaProject', '46c4ae2ef1b21f93c3989ff02b47e903140629bab9640987df0fc909baa4dc1b', '[\"*\"]', NULL, '2022-01-07 06:23:27', '2022-01-07 06:23:27'),
(10, 'App\\Models\\User', 9, 'padmaProject', '82a20f4bfcaeaaf86e4bde942c24faa0024b4c976511a6cf9fb392e913300550', '[\"*\"]', NULL, '2022-01-07 06:24:34', '2022-01-07 06:24:34'),
(11, 'App\\Models\\User', 9, 'padmaProject', 'e1a08fdef98d1b73099f61407ec9df40f86ae8d244b77a147a639e4171509775', '[\"*\"]', NULL, '2022-01-07 06:25:32', '2022-01-07 06:25:32'),
(12, 'App\\Models\\User', 9, 'padmaProject', '876775d1a2629b607037368ff4744fe6516866a0763dd4e4598cebc54c9f70f4', '[\"*\"]', NULL, '2022-01-07 06:27:59', '2022-01-07 06:27:59'),
(13, 'App\\Models\\User', 10, 'padmaProject', 'b925b5a6058f87daaa527df9e0c1a465d2a53573d22a92568f144f71bd79f9e5', '[\"*\"]', NULL, '2022-01-07 06:32:34', '2022-01-07 06:32:34'),
(14, 'App\\Models\\User', 10, 'padmaProject', '168f89cc213e4afffd12f8e3e3d83b28fa676a677e94fbe5dc601c43476110f0', '[\"*\"]', NULL, '2022-01-07 06:32:42', '2022-01-07 06:32:42'),
(15, 'App\\Models\\User', 10, 'padmaProject', '6020cd0de91cc7b5751d9f9a35978307ca800b2bb0751cfaed6835c1e6572ee5', '[\"*\"]', NULL, '2022-01-07 08:19:29', '2022-01-07 08:19:29'),
(16, 'App\\Models\\User', 9, 'padmaProject', 'c5707761e97305ee86ad84ad9b277c4a191813272f3fa4a6e17bda76990ba6a5', '[\"*\"]', NULL, '2022-01-07 08:19:32', '2022-01-07 08:19:32'),
(17, 'App\\Models\\User', 6, 'padmaProject', 'b63f4735dd0811a7af85e71eb90815b4a0bb82776d3f8e3862ce3299bc0ae6bd', '[\"*\"]', NULL, '2022-01-07 08:22:19', '2022-01-07 08:22:19'),
(18, 'App\\Models\\User', 6, 'padmaProject', '74af6d5065739d39cdc5a17211e16c6fa6c1b6c4c908b85cea4390e33b55e37c', '[\"*\"]', NULL, '2022-01-07 08:24:59', '2022-01-07 08:24:59'),
(19, 'App\\Models\\User', 6, 'padmaProject', 'df7c612225cba2a9b4e03ccdf108d3e43b9630d0ff8ce8ce420edc7b6cf47e2d', '[\"*\"]', NULL, '2022-01-07 08:29:12', '2022-01-07 08:29:12'),
(20, 'App\\Models\\User', 6, 'padmaProject', 'b697b756e2e6ee2f5429b6e2c477e8138f29eabef5190776398d8f6a4cfddbe2', '[\"*\"]', NULL, '2022-01-07 08:34:37', '2022-01-07 08:34:37'),
(21, 'App\\Models\\User', 6, 'padmaProject', '36b11ea82ba604fb55a433ea3a1912e515d1aef305559200bf4d049aecf2a65e', '[\"*\"]', NULL, '2022-01-07 08:51:19', '2022-01-07 08:51:19'),
(22, 'App\\Models\\User', 6, 'padmaProject', '8d57891b3aab6b10d4e623de404805044dded172b7288811566fd6119044c62c', '[\"*\"]', NULL, '2022-01-07 08:52:58', '2022-01-07 08:52:58'),
(23, 'App\\Models\\User', 6, 'padmaProject', 'ae1e65bfb9e76029be05cc02b86a82a3ef5f0d01a04ebe48805996ae48ae946c', '[\"*\"]', NULL, '2022-01-07 09:21:56', '2022-01-07 09:21:56'),
(24, 'App\\Models\\User', 6, 'padmaProject', '8a71c009fe2cbc9047ba3ba5bcb4fb7f69a4a99e07f97bd0e17d26afcb45f97e', '[\"*\"]', NULL, '2022-01-07 09:24:05', '2022-01-07 09:24:05'),
(25, 'App\\Models\\User', 6, 'padmaProject', '27e297e3cb9081e0e50b0766da988a9e460ef038e49fdf163772936e515fd070', '[\"*\"]', NULL, '2022-01-07 09:25:19', '2022-01-07 09:25:19'),
(26, 'App\\Models\\User', 6, 'padmaProject', '2fab2b726aaead37f9896d9b29fa9beaa0db6cc882786f8640909ec780cbe0ec', '[\"*\"]', NULL, '2022-01-07 09:27:49', '2022-01-07 09:27:49'),
(27, 'App\\Models\\User', 11, 'padmaProject', '6019329113f8a4283cf5cae55dd8bda4f3bd321ee6bf01d74792b1b98e0c830a', '[\"*\"]', NULL, '2022-01-07 09:30:23', '2022-01-07 09:30:23'),
(28, 'App\\Models\\User', 11, 'padmaProject', '782559928cd6798528cb8fd0af84d37becaed931e690d942fb62070281f16093', '[\"*\"]', NULL, '2022-01-07 11:03:59', '2022-01-07 11:03:59'),
(29, 'App\\Models\\User', 11, 'padmaProject', '149ad5a4159bf0b021e6d1471e96c2caf5ead9c8d538e39ace4b92054b734f79', '[\"*\"]', NULL, '2022-01-07 11:06:49', '2022-01-07 11:06:49'),
(30, 'App\\Models\\User', 6, 'padmaProject', '4f940cca80661a5f8e147fa3a21b818d2d8857ba23d326f6a075d3040c396cf0', '[\"*\"]', NULL, '2022-01-07 11:08:22', '2022-01-07 11:08:22'),
(31, 'App\\Models\\User', 6, 'padmaProject', '1c265071142ff9e033dd97286bad016057be172c204906c44552ee3431bfad8d', '[\"*\"]', NULL, '2022-01-07 11:10:03', '2022-01-07 11:10:03'),
(32, 'App\\Models\\User', 6, 'padmaProject', '3c320f2e36f1b912fb300e5511b19d6ae2029dd5b7341af73de08b54e2a94b42', '[\"*\"]', NULL, '2022-01-07 11:11:59', '2022-01-07 11:11:59'),
(33, 'App\\Models\\User', 6, 'padmaProject', '7957f4fb4aebd6981a243fa3e57c1b8a65a4cd156ad6dbb04fa647ce6d6f9e1a', '[\"*\"]', NULL, '2022-01-07 11:13:33', '2022-01-07 11:13:33'),
(34, 'App\\Models\\User', 11, 'padmaProject', '1f6e1641e2aa1dec0c10ed4a33eed633edec7acaafc7fe51ca59b8ad798439b1', '[\"*\"]', NULL, '2022-01-07 11:13:51', '2022-01-07 11:13:51'),
(35, 'App\\Models\\User', 6, 'padmaProject', 'd334ca370547196a963337d657fe162432ce337253d0d9dbe8ce5bb382ef08a0', '[\"*\"]', NULL, '2022-01-07 11:14:49', '2022-01-07 11:14:49'),
(36, 'App\\Models\\User', 11, 'padmaProject', '2d58dfbb0b39f924882bae7c9baa2e5bda3aea40417cb69a446b2245db35f7d3', '[\"*\"]', NULL, '2022-01-07 11:15:17', '2022-01-07 11:15:17'),
(37, 'App\\Models\\User', 10, 'padmaProject', '9557e18f7ce926ad71ea66ad38cdcd9dbefe609c46bf06def17afb2143a55263', '[\"*\"]', NULL, '2022-01-07 11:26:52', '2022-01-07 11:26:52'),
(38, 'App\\Models\\User', 11, 'padmaProject', '4d2f54c69868b27f81561f80ab943a7af063f17c674b53c8174a9827ee89e1c9', '[\"*\"]', NULL, '2022-01-07 11:29:58', '2022-01-07 11:29:58'),
(39, 'App\\Models\\User', 10, 'padmaProject', '137d1b2b918d6ab3ed6242bdf436a047637e9c1c8d3b46755b370bc79d74ffd3', '[\"*\"]', NULL, '2022-01-07 11:30:13', '2022-01-07 11:30:13'),
(40, 'App\\Models\\User', 10, 'padmaProject', '6c92b57cc5214411885ade57aa29f854c6a6b3ae13be81f6a3521af9efb51a69', '[\"*\"]', NULL, '2022-01-07 11:41:10', '2022-01-07 11:41:10'),
(41, 'App\\Models\\User', 10, 'padmaProject', '9f4581c067ae3f794616ead5a863e6f4d18e60d4996798e3a44c6e5cd4698b2c', '[\"*\"]', NULL, '2022-01-07 11:47:23', '2022-01-07 11:47:23'),
(42, 'App\\Models\\User', 10, 'padmaProject', 'dfb510a30cc0b69976f44518108bb4ca7c08200e5c22a03b7fcfe3f40bf91ee1', '[\"*\"]', NULL, '2022-01-07 11:48:27', '2022-01-07 11:48:27'),
(43, 'App\\Models\\User', 10, 'padmaProject', '07d9352707a38b3740007aef02a1928f0231b533508fc3f34b31178858cb4416', '[\"*\"]', NULL, '2022-01-07 11:49:01', '2022-01-07 11:49:01'),
(44, 'App\\Models\\User', 10, 'padmaProject', '1a15fb0675af7d45c67d87866bd85b73a4934db0458f2fb7444871cc7131b937', '[\"*\"]', NULL, '2022-01-07 11:51:05', '2022-01-07 11:51:05');

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
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_customer` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `is_customer`, `created_by`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Chadd Senger', 'ernesto13@example.net', '2022-01-06 12:49:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 0, NULL, 'GyJhrLvOtE', '2022-01-06 12:49:11', '2022-01-06 12:49:11', NULL),
(2, 'Mr. Duncan Stanton Sr.', 'nona22@example.net', '2022-01-06 12:49:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 0, NULL, 'nNg49vHXG3', '2022-01-06 12:49:11', '2022-01-06 12:49:11', NULL),
(3, 'Esta Huel', 'maggio.johnson@example.com', '2022-01-06 12:49:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 0, NULL, 'WTUV0W93nC', '2022-01-06 12:49:11', '2022-01-06 12:49:11', NULL),
(4, 'Dr. Devin Rodriguez', 'urban.pollich@example.net', '2022-01-06 12:49:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 0, NULL, '5jOhrREvrM', '2022-01-06 12:49:11', '2022-01-06 12:49:11', NULL),
(5, 'Matilda Daugherty', 'toy.dayna@example.org', '2022-01-06 12:49:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 0, NULL, 'Th6Nf4QVR3', '2022-01-06 12:49:11', '2022-01-06 12:49:11', NULL),
(6, 'Rezowana', 'rezowana10@gmail.com', NULL, '$2y$10$BqK90/.IoX1WdFoEg7CD5u7UqsYITRS7q7jIVt6MfRfRhZhb3HzLq', NULL, 0, NULL, NULL, '2022-01-07 05:08:09', '2022-01-07 05:08:09', NULL),
(9, 'ritu akter', 'ritudd9@gmail.com', NULL, '$2y$10$BlBaOI1GGOMPK/oL5KgK.OU./E/u5FFYf.P2D2CmB3JPd7rKyylku', 'Gulshan,Dhaka-1212', 1, 6, NULL, '2022-01-07 05:17:27', '2022-01-07 08:34:15', NULL),
(10, 'Mokhles Uddin', 'admin@gmail.com', NULL, '$2y$10$i6Hy6adYXDtutMSw6CQgIOeanT336O24PE3/qxRBw3O8GmN0T1Ipy', NULL, 0, NULL, NULL, '2022-01-07 06:32:34', '2022-01-07 06:32:34', NULL),
(11, 'Joe Khan', 'joe@gmail.com', NULL, '$2y$10$M7/KS11hfCLh9ZGf1J91/eUZYW2wdFgpz647O8K9lBIuLHHw0x4Ke', 'Dhaka', 1, NULL, NULL, '2022-01-07 08:30:48', '2022-01-07 08:30:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
