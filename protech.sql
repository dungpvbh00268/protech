-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 25, 2023 lúc 12:23 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `protech`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
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
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `is_admin`, `gender`, `email`, `address`, `phone_number`, `ban`, `dob`, `avatar`, `description`, `balance`, `id_giftcode`, `created_at`, `updated_at`) VALUES
(8, '1', '1', 1, 'male', NULL, NULL, NULL, 0, '2023-06-05', 'avatar1.png', NULL, 0, NULL, '2023-06-05 08:25:45', '2023-06-05 08:25:45'),
(9, '2', '2', 0, 'male', NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2023-06-07 03:30:10', '2023-06-07 03:30:10'),
(10, 'phamdung2209', 'phamdung2209', 2, 'male', 'phamdung.22092003@gmail.com', 'Ha Noi', NULL, 0, '2003-09-22', 'avatar.png', NULL, 30000000, NULL, '2023-06-07 03:34:34', '2023-06-07 03:34:34'),
(11, 'zzzzzz', 'zzzzzz', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2023-06-07 10:16:15', '2023-06-07 10:16:15'),
(12, 'qqqqqq', 'qqqqqq', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2023-06-07 10:59:03', '2023-06-07 10:59:03'),
(13, '222222', '222222', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, '2023-06-07 11:26:48', '2023-06-07 11:26:48'),
(17, 'user', 'user', 0, 'male', 'phamdung.22092003@gmail.com', 'Ha Noi', 787099745, 0, '2003-09-22', 'avatar1.png', NULL, 20000, NULL, '2023-06-21 00:27:37', '2023-06-21 00:27:37'),
(26, 'phamdung22092003', 'phamdung22092003', 1, 'male', 'phamdung.22092003@gmail.com', 'Ha Noi', 787099745, 0, '2003-09-22', 'null.png', 'abc', 20000, NULL, '2023-07-16 03:52:37', '2023-07-16 03:52:37'),
(29, 'phamdung22091', 'phamdung22091', 0, 'male', 'phamdung.22092003@gmail.com', 'Ha Noi', 787099745, 0, '2023-07-16', 'null.png', 'abc', 20000, NULL, '2023-07-16 06:40:02', '2023-07-16 06:40:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
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
(15, 'abc', '2023-07-12 03:19:10', '2023-07-12 03:19:10'),
(16, 'logitech', '2023-07-12 03:19:10', '2023-07-12 03:19:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, NULL),
(2, 9, NULL, NULL),
(3, 10, NULL, NULL),
(4, 11, NULL, NULL),
(5, 12, NULL, NULL),
(6, 13, NULL, NULL),
(9, 17, NULL, NULL),
(19, 29, '2023-07-16 06:40:02', '2023-07-16 06:40:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_pro`
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
-- Đang đổ dữ liệu cho bảng `cart_pro`
--

INSERT INTO `cart_pro` (`id`, `id_cart`, `id_product`, `quantity`, `created_at`, `updated_at`) VALUES
(18, 6, 1, 9, '2023-06-07 11:28:05', '2023-06-07 12:05:34'),
(22, 2, 3, 2, '2023-06-08 01:09:12', '2023-06-08 01:10:04'),
(23, 2, 1, 2, '2023-06-08 01:09:24', '2023-06-08 01:10:28'),
(41, 1, 4, 2, '2023-06-10 00:40:00', '2023-06-10 00:44:52'),
(42, 1, 3, 1, '2023-06-10 00:40:19', '2023-06-10 00:40:19'),
(44, 1, 1, 2, '2023-06-10 00:40:44', '2023-06-10 00:40:54'),
(57, 9, 1, 4, '2023-06-21 00:46:59', '2023-06-21 00:46:59'),
(66, 9, 4, 1, '2023-06-28 04:37:38', '2023-06-28 04:37:38'),
(67, 3, 52, 2, '2023-06-28 23:46:12', '2023-07-12 03:14:38'),
(69, 3, 3, 2, '2023-07-05 00:49:18', '2023-07-11 22:17:18'),
(73, 3, 1, 2, '2023-07-12 12:13:13', '2023-07-13 00:52:56'),
(74, 3, 62, 2, '2023-07-13 07:51:50', '2023-07-13 09:29:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', NULL, NULL, NULL),
(2, 'PC', NULL, NULL, NULL),
(3, 'Mouse', NULL, NULL, NULL),
(4, 'Nitro 5', 'Laptop acer nitro 5 ...', NULL, '2023-06-29 01:08:42'),
(5, 'Legion 5', 'Laptop lenove legion 5', '2023-06-29 00:29:08', '2023-06-29 01:12:38'),
(12, 'NULL', 'NULL', '2023-06-29 01:27:56', '2023-06-29 01:27:56'),
(18, 'Keyboard', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
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
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `giftcode`
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
-- Đang đổ dữ liệu cho bảng `giftcode`
--

INSERT INTO `giftcode` (`id`, `code`, `detail`, `expired`, `created_at`, `updated_at`) VALUES
(1, '12', '12', '2023-07-02 11:06:46', NULL, NULL),
(2, '1111', '111', '2023-07-02 11:06:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
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

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `fileName`, `filePath`, `description`, `id_product`, `created_at`, `updated_at`) VALUES
(1, 'Acer Predator Helios Neo 16 PHN16-71-59TN', '[\"1689182209_laptop2.png\",\"info-lap.png\"]', 'The perfect gaming experience with the all-new Acer Predator Helios Neo\n                                                    16\n                                                    PHN16-71-59TN 2023. The ultra-fast 16″ WQXGA 240Hz display puts victory\n                                                    in\n                                                    your\n                                                    hands and kills your opponents with ease. Equipped with NVIDIA® GeForce\n                                                    RTX™\n                                                    4060\n                                                    graphics, 13th Gen Intel® Core™ i5, and exclusive 5th Gen AeroBlade™ 3D\n                                                    Technology.', 1, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(2, 'PERFORMANCE EXPLOSION', '[\"1687954864_laptop4.png\",\"predator-laptop-helios-16-full-range-of-ports-1.png\"]', 'Acer Predator Helios Neo 16 PHN16-71-59TN is powered by a 13th generation Intel®\r\n                                    Core™ i5 processor that delivers\r\n                                    blazing fast processing speeds with high clock speeds. Combined with the built-in\r\n                                    super-speed 16GB DDR5 Ram for\r\n                                    the purpose of optimizing the user\'s usage process, it always happens smoothly even\r\n                                    when opening many tasks at\r\n                                    the same time.', 1, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(3, 'NVIDIA® GEFORCE RTX™ 40 SERIES', '[\"laptop.png\",\"predator-laptop-helios-16-beyond-performance-1-scaled-1.png\"]', 'Acer Predator Helios Neo 16 PHN16-71-59TN features an RTX 40 Series GPU that\r\n                                    delivers ultimate\r\n                                    performance for gamers and creators. Powered by NVIDIA\'s 3rd generation RTX Ampere\r\n                                    architecture –\r\n                                    with new Ray Tracing Cores, Tensor Cores, and streaming multiprocessors for a\r\n                                    performance leap.', 1, NULL, NULL),
(4, 'AMAZING PHOTO', '[\"Laptop-ASUS-ROG-Zephyrus-G14-GA402NJ-L4056W-768x768.jpg\",\"laptop-acer-predator-helios-16-ph16-71-72bv-geforce-rtx-4070-8gb-intel-core-i7-13700hx-16gb-512gb-16e280b3-wqxga-ips-240hz-rgb-per-keys-win11-n9-qjsww-002-26848.jpg\"]', 'Lock your eyes on the Acer Predator Helios Neo 16 PHN16-71-59TN monitor. Measuring\r\n                                    16 inches with a\r\n                                    16:10 aspect ratio and 165Hz refresh rate, the WQXGA1 panel works at full power and\r\n                                    includes NVIDIA®\r\n                                    G-SYNC® and Advanced Optimus for maximum graphics power.', 1, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(5, 'AMAZING PHOTO', '[\"Laptop-ASUS-ROG-Zephyrus-G14-GA402NJ-L4056W-768x768.jpg\",\"laptop-acer-predator-helios-16-ph16-71-72bv-geforce-rtx-4070-8gb-intel-core-i7-13700hx-16gb-512gb-16e280b3-wqxga-ips-240hz-rgb-per-keys-win11-n9-qjsww-002-26848.jpg\"]', 'Lock your eyes on the Acer Predator Helios Neo 16 PHN16-71-59TN monitor. Measuring\r\n                                    16 inches with a\r\n                                    16:10 aspect ratio and 165Hz refresh rate, the WQXGA1 panel works at full power and\r\n                                    includes NVIDIA®\r\n                                    G-SYNC® and Advanced Optimus for maximum graphics power.', 1, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(6, 'AMAZING PHOTO 1', '[\"Laptop-ASUS-ROG-Zephyrus-G14-GA402NJ-L4056W-768x768.jpg\",\"laptop-acer-predator-helios-16-ph16-71-72bv-geforce-rtx-4070-8gb-intel-core-i7-13700hx-16gb-512gb-16e280b3-wqxga-ips-240hz-rgb-per-keys-win11-n9-qjsww-002-26848.jpg\"]', 'Lock your eyes on the Acer Predator Helios Neo 16 PHN16-71-59TN monitor. Measuring\n                                    16 inches with a\n                                    16:10 aspect ratio and 165Hz refresh rate, the WQXGA1 panel works at full power and\n                                    includes NVIDIA®\n                                    G-SYNC® and Advanced Optimus for maximum graphics power.', 1, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(7, 'Laptop Gaming MSI Vector GP68 HX 12VH-070VN', '[\"th (1).jpg\",\"gp68-d9-scaled.jpg\"]', '', 62, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(8, 'BORN FOR PERFORMANCE', '[\"th (2).jpg\",\"gp68-d9-scaled.jpg\"]', 'Series Vector GP sử dụng “Vector” làm khởi nguồn cảm hứng, tạo thành cấu trúc lập thể thứ 2 và thứ 3 và mở rộng đến vô hạn. Laptop Gaming MSI Vector GP68 HX 12VH-070VN chắc chắn là người tiên phong trong lĩnh vực khoa học', 62, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(9, '', '[\"th.jpg\",\"gp68-d8-scaled.jpg\"]', 'Laptop Gaming MSI Vector GP68 HX 12VH-070VN có thể được trang bị lên đến bộ xử lý Intel® Core™ i9 thế hệ thứ 12, xây dựng trên kiến trúc lõi lai cải tiến, 8 lõi Hiệu suất và 8 lõi Hiệu quả, giúp xử lý đa nhiệm tốt hơn và chạy các trò chơi đòi hỏi khắt khe.', 62, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(10, 'Trang bị RTX 40 Series mới nhất', '[\"OIP.jpg\",\"gp77-13th-d8-scaled.jpg\"]', 'Laptop Gaming MSI Vector GP68 HX 12VH-070VN trang bị GPU NVIDIA® GeForce RTX™ 40 Series có tốc độ vượt trội dành cho các game thủ và người sáng tạo. Chúng được hỗ trợ bởi kiến trúc NVIDIA Ada Lovelace cực kỳ hiệu quả, mang lại bước nhảy vọt về cả hiệu suất và đồ họa do AI hỗ trợ. Trải nghiệm thế giới ảo sống động như thật với tính năng dò tia và chơi game FPS cực cao với độ trễ thấp nhất. Ngoài ra, bộ công nghệ Max-Q tối ưu hóa hiệu suất hệ thống, năng lượng, tuổi thọ pin và âm thanh để đạt hiệu quả cao nhất.', 62, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(11, 'Công nghệ MSI Overboost', '[\"Laptop-ASUS-ROG-Zephyrus-G14-GA402NJ-L4056W-768x768.jpg\",\"gp68-d7-scaled.jpg\"]', 'Trải nghiệm toàn bộ công suất 230W* trên Laptop Gaming MSI Vector GP68 HX 12VH-070VN. Với Laptop Gaming MSI Vector GP68 HX 12VH-070VN, khả năng của CPU và GPU sẽ vượt qua các giới hạn mà không làm giảm tần suất hoặc sự ổn định.', 62, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(12, '', '[\"Laptop-ASUS-ROG-Zephyrus-G14-GA402NJ-L4056W-768x768.jpg\",\"gp68-d4-scaled.jpg\"]', 'Laptop Gaming MSI Vector GP68 HX 12VH-070VN được thiết kế riêng cho game thủ. Với màn 16\" độ phân giải FHD+ (1920*1200) và tốc độ làm mới nhanh 144Hz, trải nghiệm chơi game sống động như thật và chơi game mượt mà.', 62, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(13, 'Tản nhiệt Cooler Boost 5 độc quyền', '[\"Laptop-ASUS-ROG-Zephyrus-G14-GA402NJ-L4056W-768x768.jpg\",\"gp68-d6-scaled.jpg\"]', 'Thiết kế Shared-Pipe mới, ống dẫn nhiệt gắn trên cả CPU và GPU. Shared-Pipe có thể cải thiện khả năng tản nhiệt nhanh chóng, đặc biệt là giải phóng hiệu năng của CPU. Với MSI Cooler Boost 5, game thủ có thể tự do khám phá thế giới trò chơi ngày càng phức tạp trên Laptop Gaming MSI Vector GP68 HX 12VH-070VN.', 62, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(14, 'Truyền dữ liệu tốc độ cao', '[\"Laptop-ASUS-ROG-Zephyrus-G14-GA402NJ-L4056W-768x768.jpg\",\"gp68-d3-scaled.jpg\"]', 'Laptop Gaming MSI Vector GP68 HX 12VH-070VN trang bị ram DDR5 và SSD Gen 4x4 cho sự kết hợp hoàn hảo giữa giao diện truyền dữ liệu và băng thông rộng nhất cho trải nghiệm vô song.', 62, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(15, 'Bàn phím Led Per-keys đến từ Steelseries', '[\"Laptop-ASUS-ROG-Zephyrus-G14-GA402NJ-L4056W-768x768.jpg\",\"gp68-d9-scaled.jpg\"]', 'Laptop Gaming MSI Vector GP68 HX 12VH-070VN có thể tùy chỉnh từng phím theo ý thích của bạn và cảm nhận trạng thái trong trò chơi theo thời gian thực thông qua ánh sáng bàn phím hoặc thậm chí cảm nhận led nhảy theo giai điệu yêu thích của bạn.', 62, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(16, 'Âm thanh như phòng thu', '[\"Laptop-ASUS-ROG-Zephyrus-G14-GA402NJ-L4056W-768x768.jpg\",\"gp68-d2-scaled.jpg\"]', 'Đắm chìm trong các bản nhạc lossless và tận hưởng chất lượng âm thanh cao cấp với Laptop Gaming MSI Vector GP68 HX 12VH-070VN nhờ trang bị loa Nahimic đến từ Steelseries.', 62, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(17, 'TRẢI NGHIỆM KHÔNG DÂY HOÀN HẢO', '[\"Laptop-ASUS-ROG-Zephyrus-G14-GA402NJ-L4056W-768x768.jpg\",\"gp-d3.png\"]', 'Laptop Gaming MSI Vector GP68 HX 12VH-070VN được trang bị Wi-Fi 6E mới nhất mang đến tốc độ tuyệt vời đồng thời giữ cho mạng mượt mà và ổn định ngay cả khi chia sẻ mạng với nhiều người dùng. Với thông lượng vượt trội và độ trễ thấp, bạn có thể đánh bại những người khác.', 62, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(18, 'Cổng kết nối', '[\"Laptop-ASUS-ROG-Zephyrus-G14-GA402NJ-L4056W-768x768.jpg\",\"gp68-d1-scaled.jpg\"]', 'Laptop Gaming MSI Vector GP68 HX 12VH-070VN trang bị đầy đủ cổng kết nối với các cổng Thunder Bolt 4, 2x USB-A, 2x USB-C (w PD and DP), HDMI 2.1, cổng LAN, jack 3.5mm, SD-card.', 62, '2023-07-12 17:50:53', '2023-07-12 17:50:53'),
(34, 'title', '[\"1689518880_OIP.jpg\",\"1689518880_predator-laptop-helios-16-full-range-of-ports-1.png\"]', 'Case PC', 65, '2023-07-16 07:48:00', '2023-07-16 07:48:00'),
(35, 'MIXED WITH THE BEST', '[\"1690279949_12.png\",\"1690279949_12.png\"]', 'Des', 70, '2023-07-25 03:12:29', '2023-07-25 03:12:29'),
(36, 'MIXED WITH THE BEST', '[\"1690279999_13.png\",\"1690279999_13.png\"]', 'Logitech G903 Hero', 70, '2023-07-25 03:13:19', '2023-07-25 03:13:19'),
(37, 'MIXED WITH THE BEST', '[\"1690280015_14.png\",\"1690280015_14.png\"]', 'Logitech G903 Hero', 70, '2023-07-25 03:13:35', '2023-07-25 03:13:35'),
(38, 'MIXED WITH THE BEST', '[\"1690280092_18.png\",\"1690280092_18.png\"]', 'Logitech G903 Hero', 70, '2023-07-25 03:14:52', '2023-07-25 03:14:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
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
-- Cấu trúc bảng cho bảng `order`
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
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `quantity`, `address`, `bill_info`, `status`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 10, 'Ha Noi', '[\"phamdung2209\",\"0787099745\",\"29999999\",\"8afGh7R2b9aghfw0\", \"Screen Gaming Acer Nitro\", \"2\"]', 'pending', 10, '2023-07-12 05:26:09', '2023-07-12 05:26:09'),
(2, 12, 'Ha Noi', '[\"dungpham\",\"0787099745\",\"123456\",\"Dell Gaming\",\"2\",\"db2Mam\"]', 'processing', 10, '2023-07-12 04:29:31', '2023-07-12 04:29:31'),
(3, 1, 'Ha Noi', '[\"dungpham\",\"0787099745\",\"123456\",\"Dell Gaming\",\"2\",\"DHoHS6\"]', 'shipped', 10, '2023-07-12 04:36:41', '2023-07-12 04:36:41'),
(4, 1000, 'Ha Noi', '[\"dungpham\",\"0787099745\",\"30000000\",\"Dell Gaming\",\"2\",\"dYTI0P\"]', 'delivered', 10, '2023-07-12 05:13:27', '2023-07-12 05:13:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_pro`
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
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `products`
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
  `connector` varchar(2550) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_typeProduct` bigint(20) UNSIGNED DEFAULT NULL,
  `id_category` bigint(20) UNSIGNED DEFAULT NULL,
  `id_brand` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `cost`, `cost_old`, `cpu`, `gpu`, `ram`, `storage`, `screen_size`, `warranty_period`, `os`, `keyboard`, `pin`, `connector`, `id_typeProduct`, `id_category`, `id_brand`, `created_at`, `updated_at`) VALUES
(1, 'Laptop Acer Predator Helios Neo 16 PHN16-71-59TN Geforce RTX 4060 8GB Intel Core i5 13500HX 16GB 512GB 16″ WQXGA IPS 165Hz RGB 4-Zone Win11 N9.QJSWW.002\n                ', 'Helios', 'laptop1.png', 26890000, 30490000, 'i5 13500HXA', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', '	Windows 11 64 Bit', '4-Zone RGB Gaming Keyboard', '3 Cell 53.5 Battery (Whr)', '1x Mic-in/Headphone-out Combo Jack I/O PORTS 1x Type-C (USB3.2 Gen1 / DP) 2x Type-A USB3.2 Gen1 1x Type-A USB2.0 1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz) 1x RJ45', 1, 1, 2, NULL, NULL),
(3, 'Screen  ASUS TUF Gaming VG249Q1A (24″/ Full HD/ IPS/ 1ms MPRT/ 165Hz)', 'Screen ASUS', 'screen asus.jpg', 4490000, 4990000, 'i5 13500HX', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', NULL, NULL, NULL, NULL, 2, 1, 3, NULL, NULL),
(4, 'Laptop Acer Predator Helios Neo 16 PHN16-71-59TN Geforce RTX 4060 8GB Intel Core i5 13500HX 16GB 512GB 16″ WQXGA IPS 165Hz RGB 4-Zone Win11 N9.QJSWW.002\n                ', 'Nitro 7', 'laptop main.png', 26890000, 30490000, 'i5 13500HX', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', NULL, NULL, NULL, NULL, 1, 1, 5, NULL, NULL),
(47, 'Screen Gaming Acer Nitro KG241Y-P (24″/ IPS/ FullHD/ 165Hz/ 0.5ms/ 99% sRGB)', 'Screen Acer Nitro', '1687954697_casse.png', 4990000, 6990000, 'i5 13500HX', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', '1', '1', '1', '1', 2, 1, 2, '2023-06-28 03:41:27', '2023-06-28 05:18:17'),
(51, 'Screen Gaming Acer Nitro KG241Y-P (24″/ IPS/ FullHD/ 165Hz/ 0.5ms/ 99% sRGB)', 'Screen Acer Nitro', '1687954729_screen1.png', 4990000, 5990000, 'i5 13500HX', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', '1', '1', '1', '1', 2, 1, 2, '2023-06-28 05:18:49', '2023-06-28 05:18:49'),
(52, 'Laptop Acer Predator Helios Neo 16 PHN16-71-59TN Geforce RTX 4060 8GB Intel Core i5 13500HX 16GB 512GB 16″ WQXGA IPS 165Hz RGB 4-Zone Win11 N9.QJSWW.002', 'Helios', '1687954864_laptop4.png', 26890000, 30490000, 'i5 13500HXA', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', 'Windows 11 64 Bit', '4-Zone RGB Gaming Keyboard', '3 Cell 53.5 Battery (Whr)', '1x Mic-in/Headphone-out Combo Jack I/O PORTS 1x Type-C (USB3.2 Gen1 / DP) 2x Type-A USB3.2 Gen1 1x Type-A USB2.0 1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz) 1x RJ45', 1, 1, 2, '2023-06-28 05:21:04', '2023-06-28 05:21:04'),
(58, 'Laptop Acer Predator Helios Neo 16 PHN16-71-59TN Geforce RTX 4060 8GB Intel Core i5 13500HX 16GB 512GB 16″ WQXGA IPS 165Hz RGB 4-Zone Win11 N9.QJSWW.002', 'Helios', '1689182209_laptop2.png', 29890000, 30490000, 'i5 13500HXA', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', 'Windows 11 64 Bit', '4-Zone RGB Gaming Keyboard', '3 Cell 53.5 Battery (Whr)', '1x Mic-in/Headphone-out Combo Jack I/O PORTS 1x Type-C (USB3.2 Gen1 / DP) 2x Type-A USB3.2 Gen1 1x Type-A USB2.0 1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz) 1x RJ45', 1, 1, 2, '2023-07-12 10:16:49', '2023-07-12 10:16:49'),
(59, 'Laptop Acer Predator Helios Neo 16 PHN16-71-59TN Geforce RTX 4060 8GB Intel Core i5 13500HX 16GB 512GB 16″ WQXGA IPS 165Hz RGB 4-Zone Win11 N9.QJSWW.002', 'Helios', '1689182678_laptop4.png', 27890000, 30490000, 'i5 13500HXA', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', 'Windows 11 64 Bit', '4-Zone RGB Gaming Keyboard', '3 Cell 53.5 Battery (Whr)', '1x Mic-in/Headphone-out Combo Jack I/O PORTS 1x Type-C (USB3.2 Gen1 / DP) 2x Type-A USB3.2 Gen1 1x Type-A USB2.0 1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz) 1x RJ45', 1, 1, 2, '2023-07-12 10:24:38', '2023-07-12 10:24:38'),
(60, 'Laptop Acer Predator Helios Neo 16 PHN16-71-59TN Geforce RTX 4060 8GB Intel Core i5 13500HX 16GB 512GB 16″ WQXGA IPS 165Hz RGB 4-Zone Win11 N9.QJSWW.002', 'Helios', '1689182830_laptop3.png', 26990000, 30490000, 'i5 13500HXA', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', 'Windows 11 64 Bit', '4-Zone RGB Gaming Keyboard', '3 Cell 53.5 Battery (Whr)', '1x Mic-in/Headphone-out Combo Jack I/O PORTS 1x Type-C (USB3.2 Gen1 / DP) 2x Type-A USB3.2 Gen1 1x Type-A USB2.0 1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz) 1x RJ45', 1, 1, 2, '2023-07-12 10:27:10', '2023-07-12 10:27:10'),
(61, 'Laptop Acer Predator Helios Neo 16 PHN16-71-59TN Geforce RTX 4060 8GB Intel Core i5 13500HX 16GB 512GB 16″ WQXGA IPS 165Hz RGB 4-Zone Win11 N9.QJSWW.002', 'Helios', '1689182961_Laptop-ASUS-ROG-Zephyrus-G14-GA402NJ-L4056W-768x768.jpg', 16990000, 30490000, 'i5 13500HXA', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', 'Windows 11 64 Bit', '4-Zone RGB Gaming Keyboard', '3 Cell 53.5 Battery (Whr)', '1x Mic-in/Headphone-out Combo Jack I/O PORTS 1x Type-C (USB3.2 Gen1 / DP) 2x Type-A USB3.2 Gen1 1x Type-A USB2.0 1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz) 1x RJ45', 1, 1, 2, '2023-07-12 10:29:21', '2023-07-12 10:29:21'),
(62, 'Laptop Gaming MSI Vector GP68 HX 12VH-070VN RTX 4080 12GB Intel i9 12900HX 16GB 1TB 16″ FHD+ 144Hz Perkey RGB Win 11', 'MSI Vector', '1689235264_gp68-1-768x614.jpg', 60890000, 61990000, 'i9 12900HX', 'RTX 4080 12GB', 'DDR5 16GB', '1TB SSD', '16\" 16:10 FHD+', '12 months 3s1', 'Windows 11 SL 64 Bit', 'Per-Key RGB Gaming Keyboard by SteelSeries', '4 Cell, 90Whrs', 'Gb LAN (Up to 2.5G) 1x Type-C (USB3.2 Gen2 / DP) 1x Type-C (USB / DP / Thunderbolt™ 4) 1x Type-C (USB3.2 Gen2 / DP) with PD charging 1x Type-A USB3.2 Gen1 1x Type-A USB3.2 Gen2 1x SD Express Card Reader 1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz) 1x RJ45 1x Mic-in/Headphone-out Combo Jack', 1, 1, 1, '2023-07-13 01:01:04', '2023-07-13 01:01:04'),
(63, 'Screen Gaming Acer Nitro KG241Y-P (24″/ IPS/ FullHD/ 165Hz/ 0.5ms/ 99% sRGB)', 'Screen Acer Nitro', '1689269326_casse.png', 4990000, 5190000, 'i5 13500HX', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', '1', '1', '1', '1', 2, 2, 2, '2023-07-13 10:28:46', '2023-07-13 10:28:46'),
(64, 'PC ProTech UD5 Intel i5-12400F 16GB RTX 3060 12G Ram DDR4 16GB', 'Case pc', '1689269922_casse.png', 19290000, 23990000, 'Core i5-12400F', 'RTX 3060', 'DDR4 16GB', '250GB NVME', 'B760M', '12 months Genuine 3S1', '660W', 'ABC', 'ABC', 'abc', 5, 2, 1, '2023-07-13 10:38:42', '2023-07-13 10:38:42'),
(65, 'PC ProTech UD5 Intel i5-12400F 16GB RTX 3060 12G Ram DDR4 16GB', 'Case pc', '1689270034_casse.png', 19290000, 23990000, 'Core i5-12400F', 'RTX 3060', 'DDR4 16GB', '250GB NVME', 'B760M', '12 months Genuine 3S1', '660W', 'ABC', 'ABC', 'abc', 2, 2, 1, '2023-07-13 10:40:34', '2023-07-13 10:40:34'),
(66, 'Asus TUF Gaming M3 Gen II Wired Mouse', 'TUF Gaming M3', '1690103086_mice.png', 1990000, 2550000, 'i5 13500HXA', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', 'Windows 11 64 Bit', '4-Zone RGB Gaming Keyboard', '3 Cell 53.5 Battery (Whr)', '1x Mic-in/Headphone-out Combo Jack I/O PORTS 1x Type-C (USB3.2 Gen1 / DP) 2x Type-A USB3.2 Gen1 1x Type-A USB2.0 1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz) 1x RJ45', 4, 3, 3, '2023-07-23 02:03:31', '2023-07-23 02:04:46'),
(67, 'Screen Gaming Acer Nitro KG241Y-P (24″/ IPS/ FullHD/ 165Hz/ 0.5ms/ 99% sRGB)', 'Screen Acer Nitro', '1690216653_screen acer.jpg', 4990000, 5990000, 'i5 13500HX', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', '1', '1', '1', '1', 3, 2, 2, '2023-07-24 09:37:33', '2023-07-24 09:37:33'),
(68, 'Asus ROG Strix Scope NX Deluxe Blue Keyboard', 'ROG Strix', '1690279112_keyboard.png', 3190000, 3990000, 'i5 13500HXA', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', 'Windows 11 64 Bit', '4-Zone RGB Gaming Keyboard', '3 Cell 53.5 Battery (Whr)', '1x Mic-in/Headphone-out Combo Jack I/O PORTS 1x Type-C (USB3.2 Gen1 / DP) 2x Type-A USB3.2 Gen1 1x Type-A USB2.0 1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz) 1x RJ45', 6, 18, 3, '2023-07-25 02:58:32', '2023-07-25 02:58:32'),
(69, 'Asus ROG Strix Scope NX Deluxe Blue Keyboard', 'ROG Strix', '1690279370_1690279112_keyboard.png', 3190000, 4500000, 'i5 13500HXA', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', 'Windows 11 64 Bit', '4-Zone RGB Gaming Keyboard', '3 Cell 53.5 Battery (Whr)', '1x Mic-in/Headphone-out Combo Jack I/O PORTS 1x Type-C (USB3.2 Gen1 / DP) 2x Type-A USB3.2 Gen1 1x Type-A USB2.0 1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz) 1x RJ45', 6, 18, 3, '2023-07-25 03:01:37', '2023-07-25 03:02:50'),
(70, 'Logitech G903 Hero Lightspeed Wireless Mouse', 'Logitech G903 Hero', '1690279825_11.png', 2277500, 3416250, 'i5 13500HXA', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', 'Windows 11 64 Bit', '4-Zone RGB Gaming Keyboard', '3 Cell 53.5 Battery (Whr)', '1x Mic-in/Headphone-out Combo Jack I/O PORTS 1x Type-C (USB3.2 Gen1 / DP) 2x Type-A USB3.2 Gen1 1x Type-A USB2.0 1x HDMI™ 2.1 (8K @ 60Hz / 4K @ 120Hz) 1x RJ45', 4, 3, 16, '2023-07-25 03:10:25', '2023-07-25 03:10:25'),
(71, 'Screen Gaming Acer Nitro KG241Y-P (24″/ IPS/ FullHD/ 165Hz/ 0.5ms/ 99% sRGB)', 'Screen Acer Nitro', '1690280522_1690216653_screen acer.jpg', 4990000, 5990000, 'i5 13500HX', 'RTX 4060', 'DDR5 16GB', '512GB', '16\" 2K+ 165Hz', '12 months 3s1', '1', '1', '1', '1', 3, 2, 2, '2023-07-25 03:22:02', '2023-07-25 03:22:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_product`
--

CREATE TABLE `type_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_product`
--

INSERT INTO `type_product` (`id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Laptop', NULL, NULL),
(2, 2, 'PC', NULL, NULL),
(3, 3, 'Screen', NULL, NULL),
(4, 4, 'Mouse', NULL, NULL),
(5, 5, 'Case PC', NULL, NULL),
(6, 6, 'Keyboard', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_username_unique` (`username`),
  ADD KEY `account_id_giftcode_foreign` (`id_giftcode`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `cart_pro`
--
ALTER TABLE `cart_pro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_pro_id_cart_foreign` (`id_cart`),
  ADD KEY `cart_pro_id_product_foreign` (`id_product`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id_user_foreign` (`id_user`),
  ADD KEY `comment_id_products_foreign` (`id_products`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_id_product_foreign` (`id_product`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `order_pro`
--
ALTER TABLE `order_pro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_pro_id_order_foreign` (`id_order`),
  ADD KEY `order_pro_id_product_foreign` (`id_product`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_typeproduct_foreign` (`id_typeProduct`),
  ADD KEY `products_id_category_foreign` (`id_category`),
  ADD KEY `products_id_brand_foreign` (`id_brand`);

--
-- Chỉ mục cho bảng `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `cart_pro`
--
ALTER TABLE `cart_pro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giftcode`
--
ALTER TABLE `giftcode`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `order_pro`
--
ALTER TABLE `order_pro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `type_product`
--
ALTER TABLE `type_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_id_giftcode_foreign` FOREIGN KEY (`id_giftcode`) REFERENCES `giftcode` (`id`);

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `cart_pro`
--
ALTER TABLE `cart_pro`
  ADD CONSTRAINT `cart_pro_id_cart_foreign` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `cart_pro_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_id_products_foreign` FOREIGN KEY (`id_products`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `comment_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `order_pro`
--
ALTER TABLE `order_pro`
  ADD CONSTRAINT `order_pro_id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `order_pro_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_brand_foreign` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_id_typeproduct_foreign` FOREIGN KEY (`id_typeProduct`) REFERENCES `type_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
