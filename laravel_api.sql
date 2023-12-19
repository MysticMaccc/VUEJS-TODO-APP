-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 01:13 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_api`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_30_052916_create_tasks_table', 1),
(6, '2023_12_01_043909_add_user_id_to_tasks', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'laravel_api_token', 'e648d3bfa1778d87d4f95136a4c92bd0d19ed7ecc3ba46bc11ca98205ec4ce2b', '[\"*\"]', NULL, NULL, '2023-12-01 02:48:45', '2023-12-01 02:48:45'),
(2, 'App\\Models\\User', 1, 'laravel_api_token', '330fbce1678efd1414dcd379c5752a40781987745ab7748425d4966abda14b5f', '[\"*\"]', NULL, NULL, '2023-12-01 02:49:30', '2023-12-01 02:49:30'),
(3, 'App\\Models\\User', 1, 'laravel_api_token', '3c8691f0b1b73b21dd8e9ea987e3413557d1f9f5db5a6b81c058851c33145df8', '[\"*\"]', NULL, NULL, '2023-12-01 02:49:44', '2023-12-01 02:49:44'),
(4, 'App\\Models\\User', 1, 'laravel_api_token', '62f7d29bdec7b4bbdf9352ba6cad137fd87dd9cd7289514b4a2f8c2823c2f01e', '[\"*\"]', NULL, NULL, '2023-12-01 03:30:23', '2023-12-01 03:30:23'),
(5, 'App\\Models\\User', 1, 'laravel_api_token', 'e8caf05ff4ce91de786e35310816c1007b7d1a6f40cb41d4fff0c3efd54dfa66', '[\"*\"]', NULL, NULL, '2023-12-01 03:32:16', '2023-12-01 03:32:16'),
(6, 'App\\Models\\User', 6, 'laravel_api_token', 'fee0d65052e2ac6ed5746bf6dd5f702552dd033415575e6ba25643b1d8ed0776', '[\"*\"]', NULL, NULL, '2023-12-15 18:46:11', '2023-12-15 18:46:11'),
(7, 'App\\Models\\User', 6, 'laravel_api_token', '4ee7bd6ab13cfa146cf06c630ce30430e6bb4110f3fa965b57f3fb2c9299b955', '[\"*\"]', NULL, NULL, '2023-12-15 18:47:24', '2023-12-15 18:47:24'),
(8, 'App\\Models\\User', 6, 'laravel_api_token', '4f6cdbe1caf5ca11a978085ee6977b8acc02076820678601812ef5ceb2e25ea2', '[\"*\"]', NULL, NULL, '2023-12-15 18:47:38', '2023-12-15 18:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `is_completed`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Edit a task scheduler', 0, '2023-11-30 20:43:25', '2023-12-12 02:08:50', 1),
(3, 'Nisi ex sunt voluptatem optio.', 1, '2023-11-30 20:43:25', '2023-12-12 02:01:47', 1),
(5, 'Est neque et quia et architecto nobis.', 1, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 1),
(6, 'Aut vel voluptates error qui dolor unde.', 1, '2023-11-30 20:43:25', '2023-12-12 02:05:41', 1),
(7, 'Random Task of task scheduler', 0, '2023-11-30 20:43:25', '2023-12-13 01:22:25', 1),
(8, 'Et debitis aut sit libero cupiditate et sunt veritatis.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 1),
(11, 'Harum ullam laudantium consequuntur delectus soluta error.', 1, '2023-11-30 20:43:25', '2023-12-13 01:22:03', 2),
(13, 'Libero fugit qui ea vel cupiditate ut aliquam.', 1, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 2),
(14, 'Quasi modi et quia dolore quis.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 2),
(15, 'Edit a task', 0, '2023-11-30 20:43:25', '2023-12-12 02:08:58', 2),
(16, 'Assumenda et dolores facere.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 2),
(17, 'Et quis dolor natus aspernatur lamborghini.', 0, '2023-11-30 20:43:25', '2023-12-12 01:54:44', 2),
(18, 'Aut sunt quaerat molestias nulla vitae est nam.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 2),
(19, 'Voluptatibus perspiciatis voluptatem occaecati magnam numquam ut voluptate optio.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 2),
(20, 'Neque quia magni quia quos.', 0, '2023-11-30 20:43:25', '2023-12-12 02:08:55', 2),
(21, 'Velit ut eaque eum temporibus rerum.', 0, '2023-11-30 20:43:25', '2023-12-13 01:22:12', 3),
(22, 'Quibusdam molestias magni sit labore dolorum.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 3),
(23, 'Culpa facilis voluptatibus facere quibusdam.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 3),
(24, 'Totam aliquam recusandae quo est dolores.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 3),
(25, 'Voluptatem ducimus nisi corrupti autem.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 3),
(26, 'Enim voluptatibus dolorem repellat et.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 3),
(27, 'Et nihil qui sunt quaerat iste eos pariatur.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 3),
(28, 'Praesentium voluptates debitis corrupti molestias.', 1, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 3),
(29, 'Soluta voluptas harum impedit est laboriosam ducimus.', 1, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 3),
(30, 'Officia ut minus velit nisi ducimus nisi porro.', 1, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 3),
(31, 'Aut maxime et porro et et.', 1, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 4),
(32, 'Aut in quia aliquid.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 4),
(33, 'Eum adipisci eum placeat fugit sit.', 1, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 4),
(34, 'Voluptatem soluta eos cupiditate error.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 4),
(35, 'Ipsa illo aspernatur earum omnis consequuntur.', 1, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 4),
(36, 'Tempora exercitationem doloribus et id vero aut commodi.', 1, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 4),
(37, 'Dolorem ex et facilis sint beatae vero quisquam.', 1, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 4),
(38, 'Laborum modi aut optio praesentium et esse.', 1, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 4),
(39, 'Nesciunt soluta officia qui consectetur sint vitae et.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 4),
(40, 'Ipsum at dolorem ratione ullam.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 4),
(41, 'Numquam ut quod pariatur voluptatem.', 1, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 5),
(42, 'Modi ullam et sunt officia expedita assumenda.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 5),
(43, 'Sed neque neque asperiores quisquam error ut.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 5),
(44, 'Vero consectetur et enim tempora molestiae.', 0, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 5),
(45, 'Id a molestias culpa et est tempore occaecati.', 1, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 5),
(46, 'Voluptas et eligendi aut mollitia velit.', 1, '2023-11-30 20:43:25', '2023-11-30 20:43:25', 5),
(47, 'Sapiente excepturi et porro et occaecati.', 1, '2023-11-30 20:43:26', '2023-11-30 20:43:26', 5),
(48, 'Quis nesciunt eius modi aut velit et iste molestiae.', 1, '2023-11-30 20:43:26', '2023-11-30 20:43:26', 5),
(49, 'Necessitatibus et et nobis dolore occaecati mollitia.', 1, '2023-11-30 20:43:26', '2023-11-30 20:43:26', 5),
(50, 'Culpa a nihil sit et voluptatibus at enim quos.', 0, '2023-11-30 20:43:26', '2023-11-30 20:43:26', 5),
(51, 'Random task.', 0, '2023-12-12 00:34:56', '2023-12-12 00:34:56', NULL),
(52, 'Task Manager', 0, '2023-12-12 00:35:51', '2023-12-12 00:35:51', NULL),
(53, 'Task manager', 0, '2023-12-12 00:38:16', '2023-12-12 00:38:16', NULL),
(54, 'Create a cookie', 0, '2023-12-12 00:38:32', '2023-12-12 00:38:32', NULL),
(55, 'Go to xmas party', 0, '2023-12-13 01:04:57', '2023-12-13 01:04:57', NULL),
(56, 'Go to task scheduler', 0, '2023-12-13 01:06:36', '2023-12-13 01:06:36', NULL),
(57, 'task store', 0, '2023-12-13 01:07:34', '2023-12-13 01:07:34', NULL),
(58, 'Buy new hot wheels die cast toy', 1, '2023-12-16 18:31:55', '2023-12-16 18:32:07', 6),
(59, 'buy new hot wheels track', 0, '2023-12-16 18:32:03', '2023-12-16 18:32:03', 6);

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
(1, 'Ms. Nola Cartwright MD', 'izaiah80@example.com', '2023-11-30 20:43:25', '$2y$12$kwLYNLGQ95jvVR7gPjMj0uajqUukEy9A52BIF1U3ZG7fmfod4oz2C', 'cJUKzWsrLlGSCvV85605x6nMK5pSQG0AuToCKz2lFKFBMPFmGPkJFPEuSDMK', '2023-11-30 20:43:25', '2023-11-30 20:43:25'),
(2, 'Leonor Durgan', 'schulist.hillard@example.net', '2023-11-30 20:43:25', '$2y$12$kwLYNLGQ95jvVR7gPjMj0uajqUukEy9A52BIF1U3ZG7fmfod4oz2C', 'CU3FUC18h2', '2023-11-30 20:43:25', '2023-11-30 20:43:25'),
(3, 'Norval Hill', 'sherman38@example.net', '2023-11-30 20:43:25', '$2y$12$kwLYNLGQ95jvVR7gPjMj0uajqUukEy9A52BIF1U3ZG7fmfod4oz2C', 'AfEQlrIQhH', '2023-11-30 20:43:25', '2023-11-30 20:43:25'),
(4, 'Alexandria Powlowski', 'cassin.van@example.net', '2023-11-30 20:43:25', '$2y$12$kwLYNLGQ95jvVR7gPjMj0uajqUukEy9A52BIF1U3ZG7fmfod4oz2C', 'iLa9kRUQ9c', '2023-11-30 20:43:25', '2023-11-30 20:43:25'),
(5, 'Prof. Graham McKenzie', 'addie88@example.org', '2023-11-30 20:43:25', '$2y$12$kwLYNLGQ95jvVR7gPjMj0uajqUukEy9A52BIF1U3ZG7fmfod4oz2C', 'EF6l0HBMFb', '2023-11-30 20:43:25', '2023-11-30 20:43:25'),
(6, 'Jim.Morrison', 'Jim.Morrison@gmail.com', NULL, '$2y$12$riw/T46XLyFSpgwEXPzNhuceYN5K8CJyfjfBUtA5FI/oywr1zNLyC', NULL, '2023-12-15 18:46:11', '2023-12-15 18:46:11'),
(7, 'Frank zappa', 'FrankZappa@gmail.com', NULL, '$2y$12$b5CVObsKNccxYp0ycAkwcOsTGHlksffywTCRUNclxuTyQH0QW0Ql6', NULL, '2023-12-16 18:06:24', '2023-12-16 18:06:24'),
(8, 'Katarina Ibanez', 'KatarinaIbanez@gmail.com', NULL, '$2y$12$CvdK3FQu42.Qa1sdpm6MAODlq0Qz5D66OYspV5MoMIz5aPouW21fm', NULL, '2023-12-16 18:26:51', '2023-12-16 18:26:51');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
