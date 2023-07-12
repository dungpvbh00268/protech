-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2023 at 03:00 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `protech`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT 0,
  `dob` date DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` int(11) DEFAULT 0,
  `id_giftcode` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `is_admin`, `gender`, `email`, `address`, `phone_number`, `ban`, `dob`, `avatar`, `description`, `balance`, `id_giftcode`, `created_at`, `updated_at`) VALUES
(8, '1', '1', 1, 'male', NULL, NULL, NULL, 0, '2023-06-05', 'avatar1.png', NULL, 0, NULL, '2023-06-05 08:25:45', '2023-06-05 08:25:45'),
(9, '2', '2', 0, 'male', NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2023-06-07 03:30:10', '2023-06-07 03:30:10'),
(10, 'phamdung2209', 'phamdung2209', 1, 'male', 'phamdung.22092003@gmail.com', 'Ha Noi', NULL, 0, '2003-09-22', 'avatar.png', NULL, 30000000, NULL, '2023-06-07 03:34:34', '2023-06-07 03:34:34'),
(11, 'zzzzzz', 'zzzzzz', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2023-06-07 10:16:15', '2023-06-07 10:16:15'),
(12, 'qqqqqq', 'qqqqqq', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2023-06-07 10:59:03', '2023-06-07 10:59:03'),
(13, '222222', '222222', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2023-06-07 11:26:48', '2023-06-07 11:26:48'),
(14, 'cccccc', 'cccccc', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2023-06-07 12:16:30', '2023-06-07 12:16:30'),
(15, 'ssssss', 'ssssss', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2023-06-08 01:32:05', '2023-06-08 01:32:05'),
(17, 'user', 'user', 0, 'male', 'phamdung.22092003@gmail.com', 'Ha Noi', 787099745, 0, '2003-09-22', 'avatar1.png', NULL, 20000, NULL, '2023-06-21 00:27:37', '2023-06-21 00:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'msi', NULL, NULL),
(2, 'acer', NULL, NULL),
(3, 'asus', NULL, NULL),
(4, 'lenovo', NULL, NULL),
(5, 'dell', NULL, NULL),
(6, 'think pad', NULL, NULL),
(12, 'null', '2023-06-29 08:53:23', '2023-06-29 08:53:23'),
(14, 'think pad1', '2023-06-29 09:05:12', '2023-06-29 09:05:12'),
(15, 'abc', '2023-07-12 03:19:10', '2023-07-12 03:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, NULL),
(2, 9, NULL, NULL),
(3, 10, NULL, NULL),
(4, 11, NULL, NULL),
(5, 12, NULL, NULL),
(6, 13, NULL, NULL),
(7, 14, NULL, NULL),
(8, 15, NULL, NULL),
(9, 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart_pro`
--

CREATE TABLE `cart_pro` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_cart` bigint(20) UNSIGNED DEFAULT NULL,
  `id_product` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_pro`
--

INSERT INTO `cart_pro` (`id`, `id_cart`, `id_product`, `quantity`, `created_at`, `updated_at`) VALUES
(18, 6, 1, 9, '2023-06-07 11:28:05', '2023-06-07 12:05:34'),
(19, 6, 2, 6, '2023-06-07 11:28:05', '2023-06-07 12:05:45'),
(22, 2, 3, 2, '2023-06-08 01:09:12', '2023-06-08 01:10:04'),
(23, 2, 1, 2, '2023-06-08 01:09:24', '2023-06-08 01:10:28'),
(24, 2, 2, 3, '2023-06-08 01:09:42', '2023-06-08 01:10:18'),
(31, 8, 1, 1, '2023-06-08 03:13:13', '2023-06-08 03:13:13'),
(41, 1, 4, 2, '2023-06-10 00:40:00', '2023-06-10 00:44:52'),
(42, 1, 3, 1, '2023-06-10 00:40:19', '2023-06-10 00:40:19'),
(43, 1, 2, 1, '2023-06-10 00:40:29', '2023-06-10 00:40:29'),
(44, 1, 1, 2, '2023-06-10 00:40:44', '2023-06-10 00:40:54'),
(56, 9, 5, 1, '2023-06-21 00:46:42', '2023-06-21 00:46:42'),
(57, 9, 1, 4, '2023-06-21 00:46:59', '2023-06-21 00:46:59'),
(66, 9, 4, 1, '2023-06-28 04:37:38', '2023-06-28 04:37:38'),
(67, 3, 52, 2, '2023-06-28 23:46:12', '2023-07-12 03:14:38'),
(68, 3, 5, 3, '2023-07-05 00:48:05', '2023-07-05 00:52:23'),
(69, 3, 3, 2, '2023-07-05 00:49:18', '2023-07-11 22:17:18'),
(71, 3, 56, 1, '2023-07-11 22:13:58', '2023-07-11 22:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', NULL, NULL, NULL),
(2, 'PC', NULL, NULL, NULL),
(3, 'Mouse', NULL, NULL, NULL),
(4, 'Nitro 5', 'Laptop acer nitro 5 ...', NULL, '2023-06-29 01:08:42'),
(5, 'Legion 5', 'Laptop lenove legion 5', '2023-06-29 00:29:08', '2023-06-29 01:12:38'),
(12, 'NULL', 'NULL', '2023-06-29 01:27:56', '2023-06-29 01:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `id_products` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `giftcode`
--

CREATE TABLE `giftcode` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giftcode`
--

INSERT INTO `giftcode` (`id`, `code`, `detail`, `expired`, `created_at`, `updated_at`) VALUES
(1, '12', '12', '2023-07-02 11:06:46', NULL, NULL),
(2, '1111', '111', '2023-07-02 11:06:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fileName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filePath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_product` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2023_05_18_125139_create_giftcode_table', 2),
(17, '2023_05_18_125113_create_account_table', 3),
(18, '2023_05_18_125146_create_cart_table', 4),
(19, '2023_05_18_125348_create_brands_table', 5),
(20, '2023_05_31_111906_create_type_product_table', 6),
(21, '2023_05_18_125304_create_categories_table', 7),
(22, '2023_05_18_125338_create_products_table', 8),
(23, '2023_05_18_125330_create_images_table', 9),
(24, '2023_05_18_125219_create_cart_pro_table', 10),
(25, '2023_05_18_125156_create_comment_table', 11),
(26, '2023_05_18_125234_create_order_table', 12),
(27, '2023_05_18_125318_create_order_pro_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','shipped','delivered') COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `quantity`, `address`, `bill_info`, `status`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 10, 'Ha Noi', '[\"phamdung2209\",\"0787099745\",\"29999999\",\"8afGh7R2b9aghfw0\", \"Screen Gaming Acer Nitro\", \"2\"]', 'pending', 10, '2023-07-12 05:26:09', '2023-07-12 05:26:09'),
(2, 12, 'Ha Noi', '[\"dungpham\",\"0787099745\",\"123456\",\"Dell Gaming\",\"2\",\"db2Mam\"]', 'processing', 10, '2023-07-12 04:29:31', '2023-07-12 04:29:31'),
(3, 1, 'Ha Noi', '[\"dungpham\",\"0787099745\",\"123456\",\"Dell Gaming\",\"2\",\"DHoHS6\"]', 'shipped', 10, '2023-07-12 04:36:41', '2023-07-12 04:36:41'),
(4, 1000, 'Ha Noi', '[\"dungpham\",\"0787099745\",\"30000000\",\"Dell Gaming\",\"2\",\"dYTI0P\"]', 'delivered', 10, '2023-07-12 05:13:27', '2023-07-12 05:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `order_pro`
--

CREATE TABLE `order_pro` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_order` bigint(20) UNSIGNED DEFAULT NULL,
  `id_product` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` int(10) UNSIGNED NOT NULL,
  `cost_old` int(11) DEFAULT 0,
  `cpu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `screen_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warranty_period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyboard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connector` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_typeProduct` bigint(20) UNSIGNED DEFAULT NULL,
  `id_category` bigint(20) UNSIGNED DEFAULT NULL,
  `id_brand` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `cost`, `cost_old`, `cpu`, `gpu`, `ram`, `storage`, `screen_size`, `warranty_period`, `os`, `keyboard`, `pin`, `connector`, `id_typeProduct`, `id_category`, `id_brand`, `created_at`, `updated_at`) VALUES
(1, 'Laptop Acer Predator Helios Neo 16 PHN16-71-59TN Geforce RTX 4060 8GB Intel Core i5 13500HX 16GB 512GB 16″ WQXGA IPS 165Hz RGB 4-Zone Win11 N9.QJSWW.002\n                ', 'Helios', 'laptop1.png', 26890000, 30490000, 'i5 13500HXA', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', '	Windows 11 64 Bit', '4-Zone RGB Gaming Keyboard', '3 Cell 53.5 Battery (Whr)', '1x Mic-in/Headphone-out Combo Jack I/O PORTS 1x Type-C (USB3.2 Gen1 / DP) 2x Type-A USB3.2 Gen1 1x Type-A USB2.0 1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz) 1x RJ45', 1, 1, 2, NULL, NULL),
(2, 'Screen Gaming Acer Nitro KG241Y-P (24″/ IPS/ FullHD/ 165Hz/ 0.5ms/ 99% sRGB)', 'Screen Acer Nitro', 'screen acer.jpg', 5990000, 4990000, 'i5 13500HX', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', NULL, NULL, NULL, NULL, 2, 1, 2, NULL, NULL),
(3, 'Screen  ASUS TUF Gaming VG249Q1A (24″/ Full HD/ IPS/ 1ms MPRT/ 165Hz)', 'Screen ASUS', 'screen asus.jpg', 5490000, 4990000, 'i5 13500HX', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', NULL, NULL, NULL, NULL, 2, 1, 3, NULL, NULL),
(4, 'Laptop Acer Predator Helios Neo 16 PHN16-71-59TN Geforce RTX 4060 8GB Intel Core i5 13500HX 16GB 512GB 16″ WQXGA IPS 165Hz RGB 4-Zone Win11 N9.QJSWW.002\n                ', 'Nitro 7', 'laptop main.png', 26890000, 30490000, 'i5 13500HX', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', NULL, NULL, NULL, NULL, 1, 1, 5, NULL, NULL),
(5, 'Screen Gaming Acer Nitro KG241Y-P (24″/ IPS/ FullHD/ 165Hz/ 0.5ms/ 99% sRGB)', 'Screen Acer Nitro', 'screen acer.jpg', 5990000, 4990000, 'i5 13500HX', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', NULL, NULL, NULL, NULL, 2, 1, 2, NULL, NULL),
(47, 'Screen Gaming Acer Nitro KG241Y-P (24″/ IPS/ FullHD/ 165Hz/ 0.5ms/ 99% sRGB)', 'Screen Acer Nitro', '1687954697_casse.png', 5990000, 4990000, 'i5 13500HX', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', '1', '1', '1', '1', 2, 1, 2, '2023-06-28 03:41:27', '2023-06-28 05:18:17'),
(51, 'Screen Gaming Acer Nitro KG241Y-P (24″/ IPS/ FullHD/ 165Hz/ 0.5ms/ 99% sRGB)', 'Screen Acer Nitro', '1687954729_screen1.png', 5990000, 4990000, 'i5 13500HX', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', '1', '1', '1', '1', 2, 1, 2, '2023-06-28 05:18:49', '2023-06-28 05:18:49'),
(52, 'Laptop Acer Predator Helios Neo 16 PHN16-71-59TN Geforce RTX 4060 8GB Intel Core i5 13500HX 16GB 512GB 16″ WQXGA IPS 165Hz RGB 4-Zone Win11 N9.QJSWW.002', 'Helios', '1687954864_laptop4.png', 26890000, 30490000, 'i5 13500HXA', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', 'Windows 11 64 Bit', '4-Zone RGB Gaming Keyboard', '3 Cell 53.5 Battery (Whr)', '1x Mic-in/Headphone-out Combo Jack I/O PORTS 1x Type-C (USB3.2 Gen1 / DP) 2x Type-A USB3.2 Gen1 1x Type-A USB2.0 1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz) 1x RJ45', 1, 1, 2, '2023-06-28 05:21:04', '2023-06-28 05:21:04'),
(56, '1', 'Helios', '1688054355_1687954697_casse.png', 26890000, 30490000, 'i5 13500HXA', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', 'Windows 11 64 Bit', '4-Zone RGB Gaming Keyboard', '3 Cell 53.5 Battery (Whr)', '1x Mic-in/Headphone-out Combo Jack I/O PORTS 1x Type-C (USB3.2 Gen1 / DP) 2x Type-A USB3.2 Gen1 1x Type-A USB2.0 1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz) 1x RJ45', 1, 12, 12, '2023-06-29 01:42:54', '2023-06-29 08:59:23'),
(57, '2', 'Helios', '1689157255_laptop4.png', 26890000, 30490000, 'i5 13500HXA', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', 'Windows 11 64 Bit', '4-Zone RGB Gaming Keyboard', '3 Cell 53.5 Battery (Whr)', '1x Mic-in/Headphone-out Combo Jack I/O PORTS 1x Type-C (USB3.2 Gen1 / DP) 2x Type-A USB3.2 Gen1 1x Type-A USB2.0 1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz) 1x RJ45', 1, 4, 2, '2023-07-12 03:20:55', '2023-07-12 03:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `type_product`
--

CREATE TABLE `type_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_product`
--

INSERT INTO `type_product` (`id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Laptop', NULL, NULL),
(2, 2, 'PC', NULL, NULL),
(3, 3, 'Screen', NULL, NULL),
(4, 4, 'Mouse', NULL, NULL),
(5, 5, 'Case PC', NULL, NULL);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_username_unique` (`username`),
  ADD KEY `account_id_giftcode_foreign` (`id_giftcode`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id_user_foreign` (`id_user`);

--
-- Indexes for table `cart_pro`
--
ALTER TABLE `cart_pro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_pro_id_cart_foreign` (`id_cart`),
  ADD KEY `cart_pro_id_product_foreign` (`id_product`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id_user_foreign` (`id_user`),
  ADD KEY `comment_id_products_foreign` (`id_products`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `giftcode`
--
ALTER TABLE `giftcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_id_product_foreign` (`id_product`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id_user_foreign` (`id_user`);

--
-- Indexes for table `order_pro`
--
ALTER TABLE `order_pro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_pro_id_order_foreign` (`id_order`),
  ADD KEY `order_pro_id_product_foreign` (`id_product`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_typeproduct_foreign` (`id_typeProduct`),
  ADD KEY `products_id_category_foreign` (`id_category`),
  ADD KEY `products_id_brand_foreign` (`id_brand`);

--
-- Indexes for table `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cart_pro`
--
ALTER TABLE `cart_pro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giftcode`
--
ALTER TABLE `giftcode`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_pro`
--
ALTER TABLE `order_pro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_id_giftcode_foreign` FOREIGN KEY (`id_giftcode`) REFERENCES `giftcode` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `account` (`id`);

--
-- Constraints for table `cart_pro`
--
ALTER TABLE `cart_pro`
  ADD CONSTRAINT `cart_pro_id_cart_foreign` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `cart_pro_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_id_products_foreign` FOREIGN KEY (`id_products`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `comment_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `account` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `account` (`id`);

--
-- Constraints for table `order_pro`
--
ALTER TABLE `order_pro`
  ADD CONSTRAINT `order_pro_id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `order_pro_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_brand_foreign` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_id_typeproduct_foreign` FOREIGN KEY (`id_typeProduct`) REFERENCES `type_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
