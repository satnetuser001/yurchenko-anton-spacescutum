-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mariadb
-- Generation Time: Feb 11, 2025 at 09:37 PM
-- Server version: 11.6.2-MariaDB-ubu2404
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
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
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 'This is a comment on Product1', '2025-02-11 19:33:52', '2025-02-11 19:33:52'),
(2, 8, 2, 'This is a comment on Product2', '2025-02-11 19:34:03', '2025-02-11 19:34:03'),
(3, 7, 3, 'This is a comment on Product3', '2025-02-11 19:34:30', '2025-02-11 19:34:30'),
(4, 7, 4, 'This is a comment on Product4', '2025-02-11 19:34:37', '2025-02-11 19:34:37'),
(5, 6, 5, 'This is a comment on Product5', '2025-02-11 19:34:58', '2025-02-11 19:34:58'),
(6, 6, 6, 'This is a comment on Product6', '2025-02-11 19:35:05', '2025-02-11 19:35:05'),
(7, 5, 7, 'This is a comment on Product7', '2025-02-11 19:35:23', '2025-02-11 19:35:23'),
(8, 5, 8, 'This is a comment on Product8', '2025-02-11 19:35:33', '2025-02-11 19:35:33'),
(9, 4, 9, 'This is a comment on Product9', '2025-02-11 19:35:53', '2025-02-11 19:35:53'),
(10, 4, 10, 'This is a comment on Product10', '2025-02-11 19:36:01', '2025-02-11 19:36:01'),
(11, 3, 11, 'This is a comment on Product11', '2025-02-11 19:36:19', '2025-02-11 19:36:19'),
(12, 3, 12, 'This is a comment on Product12', '2025-02-11 19:36:27', '2025-02-11 19:36:27'),
(13, 2, 13, 'This is a comment on Product13', '2025-02-11 19:36:46', '2025-02-11 19:36:46'),
(14, 2, 14, 'This is a comment on Product14', '2025-02-11 19:36:55', '2025-02-11 19:36:55'),
(15, 1, 15, 'This is a comment on Product15', '2025-02-11 19:37:13', '2025-02-11 19:37:13'),
(16, 1, 16, 'This is a comment on Product16', '2025-02-11 19:37:20', '2025-02-11 19:37:20');

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
(55, '0001_01_01_000000_create_users_table', 1),
(56, '0001_01_01_000001_create_cache_table', 1),
(57, '0001_01_01_000002_create_jobs_table', 1),
(58, '2025_02_08_173358_create_personal_access_tokens_table', 1),
(59, '2025_02_10_162025_create_products_table', 1),
(60, '2025_02_10_162033_create_orders_table', 1),
(61, '2025_02_10_162039_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2025-02-11 18:00:15', '2025-02-11 18:00:15'),
(2, 1, 1, 2, '2025-02-11 18:00:31', '2025-02-11 18:00:31'),
(3, 1, 1, 3, '2025-02-11 18:00:35', '2025-02-11 18:00:35'),
(4, 1, 1, 4, '2025-02-11 18:00:40', '2025-02-11 18:00:40'),
(5, 1, 1, 5, '2025-02-11 18:00:46', '2025-02-11 18:00:46'),
(6, 1, 1, 6, '2025-02-11 18:00:51', '2025-02-11 18:00:51'),
(7, 1, 1, 7, '2025-02-11 18:00:56', '2025-02-11 18:00:56'),
(8, 1, 1, 8, '2025-02-11 18:01:02', '2025-02-11 18:01:02'),
(9, 2, 1, 9, '2025-02-11 18:01:09', '2025-02-11 18:01:09'),
(10, 2, 1, 10, '2025-02-11 18:01:13', '2025-02-11 18:01:13'),
(11, 2, 1, 11, '2025-02-11 18:01:17', '2025-02-11 18:01:17'),
(12, 2, 1, 12, '2025-02-11 18:01:22', '2025-02-11 18:01:22'),
(13, 2, 1, 13, '2025-02-11 18:01:25', '2025-02-11 18:01:25'),
(14, 2, 1, 14, '2025-02-11 18:01:29', '2025-02-11 18:01:29'),
(15, 2, 1, 15, '2025-02-11 18:01:33', '2025-02-11 18:01:33'),
(16, 2, 1, 16, '2025-02-11 18:01:38', '2025-02-11 18:01:38'),
(17, 3, 2, 1, '2025-02-11 18:02:32', '2025-02-11 18:02:32'),
(18, 3, 2, 2, '2025-02-11 18:02:36', '2025-02-11 18:02:36'),
(19, 3, 2, 3, '2025-02-11 18:02:40', '2025-02-11 18:02:40'),
(20, 3, 2, 4, '2025-02-11 18:02:43', '2025-02-11 18:02:43'),
(21, 3, 2, 5, '2025-02-11 18:02:48', '2025-02-11 18:02:48'),
(22, 3, 2, 6, '2025-02-11 18:02:52', '2025-02-11 18:02:52'),
(23, 3, 2, 7, '2025-02-11 18:02:56', '2025-02-11 18:02:56'),
(24, 4, 2, 8, '2025-02-11 18:03:04', '2025-02-11 18:03:04'),
(25, 4, 2, 9, '2025-02-11 18:03:08', '2025-02-11 18:03:08'),
(26, 4, 2, 10, '2025-02-11 18:03:12', '2025-02-11 18:03:12'),
(27, 4, 2, 11, '2025-02-11 18:03:15', '2025-02-11 18:03:15'),
(28, 4, 2, 12, '2025-02-11 18:03:20', '2025-02-11 18:03:20'),
(29, 4, 2, 13, '2025-02-11 18:03:24', '2025-02-11 18:03:24'),
(30, 4, 2, 14, '2025-02-11 18:03:28', '2025-02-11 18:03:28'),
(31, 5, 3, 1, '2025-02-11 18:03:59', '2025-02-11 18:03:59'),
(32, 5, 3, 2, '2025-02-11 18:04:04', '2025-02-11 18:04:04'),
(33, 5, 3, 3, '2025-02-11 18:04:07', '2025-02-11 18:04:07'),
(34, 5, 3, 4, '2025-02-11 18:04:12', '2025-02-11 18:04:12'),
(35, 5, 3, 5, '2025-02-11 18:04:16', '2025-02-11 18:04:16'),
(36, 5, 3, 6, '2025-02-11 18:04:20', '2025-02-11 18:04:20'),
(37, 6, 3, 7, '2025-02-11 18:04:27', '2025-02-11 18:04:27'),
(38, 6, 3, 8, '2025-02-11 18:04:31', '2025-02-11 18:04:31'),
(39, 6, 3, 9, '2025-02-11 18:04:36', '2025-02-11 18:04:36'),
(40, 6, 3, 10, '2025-02-11 18:04:41', '2025-02-11 18:04:41'),
(41, 6, 3, 11, '2025-02-11 18:04:45', '2025-02-11 18:04:45'),
(42, 6, 3, 12, '2025-02-11 18:04:50', '2025-02-11 18:04:50'),
(43, 7, 4, 1, '2025-02-11 18:05:25', '2025-02-11 18:05:25'),
(44, 7, 4, 2, '2025-02-11 18:05:31', '2025-02-11 18:05:31'),
(45, 7, 4, 3, '2025-02-11 18:05:36', '2025-02-11 18:05:36'),
(46, 7, 4, 4, '2025-02-11 18:05:40', '2025-02-11 18:05:40'),
(47, 7, 4, 5, '2025-02-11 18:05:44', '2025-02-11 18:05:44'),
(48, 8, 4, 6, '2025-02-11 18:05:51', '2025-02-11 18:05:51'),
(49, 8, 4, 7, '2025-02-11 18:05:55', '2025-02-11 18:05:55'),
(50, 8, 4, 8, '2025-02-11 18:05:58', '2025-02-11 18:05:58'),
(51, 8, 4, 9, '2025-02-11 18:06:02', '2025-02-11 18:06:02'),
(52, 8, 4, 10, '2025-02-11 18:06:06', '2025-02-11 18:06:06'),
(53, 9, 5, 1, '2025-02-11 18:06:38', '2025-02-11 18:06:38'),
(54, 9, 5, 2, '2025-02-11 18:06:45', '2025-02-11 18:06:45'),
(55, 9, 5, 3, '2025-02-11 18:06:49', '2025-02-11 18:06:49'),
(56, 9, 5, 4, '2025-02-11 18:06:53', '2025-02-11 18:06:53'),
(57, 10, 5, 5, '2025-02-11 18:06:59', '2025-02-11 18:06:59'),
(58, 10, 5, 6, '2025-02-11 18:07:04', '2025-02-11 18:07:04'),
(59, 10, 5, 7, '2025-02-11 18:07:08', '2025-02-11 18:07:08'),
(60, 10, 5, 8, '2025-02-11 18:07:12', '2025-02-11 18:07:12'),
(61, 11, 6, 1, '2025-02-11 18:07:48', '2025-02-11 18:07:48'),
(62, 11, 6, 2, '2025-02-11 18:07:54', '2025-02-11 18:07:54'),
(63, 11, 6, 3, '2025-02-11 18:07:59', '2025-02-11 18:07:59'),
(64, 12, 6, 4, '2025-02-11 18:08:07', '2025-02-11 18:08:07'),
(65, 12, 6, 5, '2025-02-11 18:08:12', '2025-02-11 18:08:12'),
(66, 12, 6, 6, '2025-02-11 18:08:16', '2025-02-11 18:08:16'),
(67, 13, 7, 1, '2025-02-11 18:08:57', '2025-02-11 18:08:57'),
(68, 13, 7, 2, '2025-02-11 18:09:03', '2025-02-11 18:09:03'),
(69, 14, 7, 3, '2025-02-11 18:09:12', '2025-02-11 18:09:12'),
(70, 14, 7, 4, '2025-02-11 18:09:18', '2025-02-11 18:09:18'),
(71, 15, 8, 1, '2025-02-11 18:09:51', '2025-02-11 18:09:51'),
(72, 16, 8, 2, '2025-02-11 18:10:11', '2025-02-11 18:10:11');

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
(1, 'App\\Models\\User', 1, 'API', '726b475838e533d8965ac5a60bda750bd57f434c8e5e7a408cd5d366e68778c8', '[\"*\"]', '2025-02-11 19:37:20', NULL, '2025-02-11 17:18:14', '2025-02-11 19:37:20'),
(2, 'App\\Models\\User', 2, 'API', '3bddfd0eb4d57a1fa35ee360860a1f1aee1b490d3fe9ee4165c655b5bc81a9bf', '[\"*\"]', '2025-02-11 19:36:55', NULL, '2025-02-11 17:21:43', '2025-02-11 19:36:55'),
(3, 'App\\Models\\User', 3, 'API', 'f0484bffd684871265c73ce182999ff426f7a6dfa3daeed1b0d2c5f145751b40', '[\"*\"]', '2025-02-11 19:36:27', NULL, '2025-02-11 17:22:23', '2025-02-11 19:36:27'),
(4, 'App\\Models\\User', 4, 'API', 'a37b37708c793d674dc58261b30fa5e44314cd3ff33fe8da8f985f464c9be7a6', '[\"*\"]', '2025-02-11 19:36:01', NULL, '2025-02-11 17:22:53', '2025-02-11 19:36:01'),
(5, 'App\\Models\\User', 5, 'API', '097a37a9ef0face3f428acaa50235ddab494fd00fd5aac908f061baf0b972ca5', '[\"*\"]', '2025-02-11 19:35:33', NULL, '2025-02-11 17:23:21', '2025-02-11 19:35:33'),
(6, 'App\\Models\\User', 6, 'API', 'f0ec83c4e7ca96083a3b421bc9840a3fe2dec76044f3cd1b7d863707c01992a9', '[\"*\"]', '2025-02-11 19:35:05', NULL, '2025-02-11 17:23:54', '2025-02-11 19:35:05'),
(7, 'App\\Models\\User', 7, 'web_gen', 'e374207c987bce0cabce8b55aedb18f293bfce0243054b0f999f36983fb1fcc0', '[\"*\"]', '2025-02-11 19:34:37', NULL, '2025-02-11 17:25:15', '2025-02-11 19:34:37'),
(9, 'App\\Models\\User', 8, 'web_regen', '7c6fc1b343c0a38a3ab84582a77582bbba4b03f7195d3de9100fc642d200e193', '[\"*\"]', '2025-02-11 19:34:03', NULL, '2025-02-11 17:26:26', '2025-02-11 19:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Product1', 'Description of Product1', 1.01, 'Category1', 'http://example.com/product1.jpg', '2025-02-11 17:39:26', '2025-02-11 17:39:26'),
(2, 'Product2', 'Description of Product2', 2.02, 'Category2', 'http://example.com/product2.jpg', '2025-02-11 17:40:50', '2025-02-11 17:40:50'),
(3, 'Product3', 'Description of Product3', 3.03, 'Category1', 'http://example.com/product3.jpg', '2025-02-11 17:41:56', '2025-02-11 17:41:56'),
(4, 'Product4', 'Description of Product4', 4.04, 'Category2', 'http://example.com/product4.jpg', '2025-02-11 17:42:15', '2025-02-11 17:42:15'),
(5, 'Product5', 'Description of Product5', 5.05, 'Category1', 'http://example.com/product5.jpg', '2025-02-11 17:42:47', '2025-02-11 17:42:47'),
(6, 'Product6', 'Description of Product6', 6.06, 'Category2', 'http://example.com/product6.jpg', '2025-02-11 17:43:14', '2025-02-11 17:43:14'),
(7, 'Product7', 'Description of Product7', 7.07, 'Category1', 'http://example.com/product7.jpg', '2025-02-11 17:43:52', '2025-02-11 17:43:52'),
(8, 'Product8', 'Description of Product8', 8.08, 'Category2', 'http://example.com/product8.jpg', '2025-02-11 17:44:10', '2025-02-11 17:44:10'),
(9, 'Product9', 'Description of Product9', 9.09, 'Category1', 'http://example.com/product9.jpg', '2025-02-11 17:44:45', '2025-02-11 17:44:45'),
(10, 'Product10', 'Description of Product10', 10.10, 'Category2', 'http://example.com/product10.jpg', '2025-02-11 17:45:15', '2025-02-11 17:45:15'),
(11, 'Product11', 'Description of Product11', 11.11, 'Category1', 'http://example.com/product11.jpg', '2025-02-11 17:45:43', '2025-02-11 17:45:43'),
(12, 'Product12', 'Description of Product12', 12.12, 'Category2', 'http://example.com/product12.jpg', '2025-02-11 17:46:02', '2025-02-11 17:46:02'),
(13, 'Product13', 'Description of Product13', 13.13, 'Category1', 'http://example.com/product13.jpg', '2025-02-11 17:46:35', '2025-02-11 17:46:35'),
(14, 'Product14', 'Description of Product14', 14.14, 'Category2', 'http://example.com/product14.jpg', '2025-02-11 17:46:55', '2025-02-11 17:46:55'),
(15, 'Product15', 'Description of Product15', 15.15, 'Category1', 'http://example.com/product15.jpg', '2025-02-11 17:47:28', '2025-02-11 17:47:28'),
(16, 'Product16', 'Description of Product16', 16.16, 'Category2', 'http://example.com/product16.jpg', '2025-02-11 17:47:49', '2025-02-11 17:47:49');

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
('PhMFNo5clMjAhgSCLTRcS7m1F2myWKNF47r5oAQg', 8, '172.18.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieXFrTm9YY1dJOGFsNGFIeVY5dWd3Wmo2TzU3UFJ2eUVpcFZwNWc2OCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA5OS9wcm9maWxlIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODt9', 1739294786);

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
(1, 'user1', 'user1@example.com', NULL, '$2y$12$.cakhA.j8AG2QqwsI/kkmOx1ql9TNOQLR6GoYx/Rs..gHhfOAOEHa', NULL, '2025-02-11 17:18:14', '2025-02-11 17:18:14'),
(2, 'user2', 'user2@example.com', NULL, '$2y$12$HXi3pAnGYDXgWGAo/xOkt.RZ5qgdZh47cE3g/XeWXaiRocafi.LFq', NULL, '2025-02-11 17:21:43', '2025-02-11 17:21:43'),
(3, 'user3', 'user3@example.com', NULL, '$2y$12$dOEv0g5zjyL7OjxcE8NQ3OCdFOhTK3BZ1H88GmDNF.sW2RI4e0gyS', NULL, '2025-02-11 17:22:23', '2025-02-11 17:22:23'),
(4, 'user4', 'user4@example.com', NULL, '$2y$12$9Qr1T6iOn/CNSdV9/UgzZuougDiszNSHZIh73.T/doYEUP0nKqgUu', NULL, '2025-02-11 17:22:53', '2025-02-11 17:22:53'),
(5, 'user5', 'user5@example.com', NULL, '$2y$12$7Z3OfCPMdNEkYwMHIuTZpevsTABfNME8apLUHWtVie8/0WA6wHLzi', NULL, '2025-02-11 17:23:21', '2025-02-11 17:23:21'),
(6, 'user6', 'user6@example.com', NULL, '$2y$12$L1hq8OlcueWaYf3nZFsekO1tB6425mbr9JvMBSBSXyyBC6mPcxzPa', NULL, '2025-02-11 17:23:54', '2025-02-11 17:23:54'),
(7, 'user7', 'user7@example.com', NULL, '$2y$12$d6dmrgEruMEHSfrOASDo0emlMrja2GsoWwBrjTbGP25GXh0KgBajK', NULL, '2025-02-11 17:25:15', '2025-02-11 17:25:15'),
(8, 'user8', 'user8@example.com', NULL, '$2y$12$8OcNfLHpfGh5Ef8KP7Z0WeRG6KaDb.U4OSYvl3FO.i9VIgfAwkMUG', NULL, '2025-02-11 17:26:13', '2025-02-11 17:26:13');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_product_id_foreign` (`product_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
