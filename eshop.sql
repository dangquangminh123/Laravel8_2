-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 07, 2022 lúc 12:36 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `eshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(12, 'SmartPhone', 'MobiePhone', 'Các thể loại smartphone', 1, 1, '1666752935.jpg', 'Smartphone', 'SmartPhone đang hot', 'smartphone', '2022-10-25 19:55:35', '2022-10-25 19:55:35'),
(13, 'Mafex Medicom Toys', 'Medicomtoys', 'Đồ Chơi mô hình dòng mafex', 1, 1, '1666753104.jpg', 'MAFEX MEDICOM', 'Các thể loại mô hình thuộc dòng mafex medicoms', 'MafexMedicom', '2022-10-25 19:58:24', '2022-10-25 19:58:24'),
(14, 'SHFIGUARTS', 'SHF', 'Mô hình SHFIGUARTS', 1, 1, '1666753166.jpg', 'Mô hình SHF', 'Các thể loại mô hình SHFIGUARTS', 'SHFIGUARTS', '2022-10-25 19:59:26', '2022-10-25 19:59:26'),
(15, 'Ipad', 'IPAD', 'Đồ dùng điện tử IPAD', 1, 1, '1666753290.jpg', 'IPAD', 'Máy tính bảng điện tử IPAD', 'IPAD', '2022-10-25 20:01:30', '2022-10-25 20:01:30'),
(16, 'Tai Nghe', 'TaiNghe', 'Các Loại Tai Nghe', 1, 1, '1666753455.jpg', 'Tai Nghe Điện tử', 'Các thể loại tai nghe đang hot', 'TaiNghe', '2022-10-25 20:04:15', '2022-10-25 20:04:15'),
(17, 'Macbook', 'MACBOOK', 'Các thể loại macbook', 1, 1, '1666753585.jpg', 'MacBook', 'Các thể loại macbook đang hot', 'MacBook', '2022-10-25 20:06:25', '2022-10-25 20:06:25'),
(18, 'LapTop', 'Laptop', 'các dòng Laptop', 1, 1, '1666753693.jpg', 'Laptop Điện Tử', 'Các loại laptop đang được hot', 'Laptop', '2022-10-25 20:08:13', '2022-10-25 20:08:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_11_102216_create_categories_table', 2),
(6, '2022_10_12_100436_create_products_table', 3),
(7, '2022_10_15_020421_create_carts_table', 4),
(8, '2022_10_17_035500_create_orders_table', 5),
(9, '2022_10_17_040948_create_order_items_table', 5),
(10, '2022_10_20_040153_create_wishlists_table', 6),
(11, '2022_10_22_214047_create_ratings_table', 7),
(13, '2022_10_23_060558_create_reviews_table', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` int(255) NOT NULL,
  `payment_mode` int(200) DEFAULT NULL,
  `payment_id` int(200) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(22, '2', 'PACIFICSKY DAN', 'QUANGTAM', 'dangquangminhdn86@gmail.com', '9717136031', '5050 NE 112TH AVE PORTLAND OR 97220 PORTLAND, OR 97220-1003 United States', '1127 Bellaire Blvd, Houston, Tx 77072 Houston', 'Portland', 'Oregon', 'United States', '97220', 49, 1, NULL, 1, NULL, 'QuangMinh8553', '2022-10-26 06:22:31', '2022-10-27 19:31:20'),
(23, '2', 'PACIFICSKY DAN', 'QUANGTAM', 'dangquangminhdn86@gmail.com', '9717136031', '5050 NE 112TH AVE PORTLAND OR 97220 PORTLAND, OR 97220-1003 United States', '1127 Bellaire Blvd, Houston, Tx 77072 Houston', 'Portland', 'Oregon', 'United States', '97220', 970, 1, NULL, 1, NULL, 'QuangMinh4934', '2022-10-27 20:09:40', '2022-10-27 20:56:37'),
(24, '2', 'new12', 'dangtam', 'minh@gmail.com', '07754187927', 'Unit 2 The Grainstore , Bendish Farm', '1127 Bellaire Blvd, Houston, Tx 77072 Houston', 'Hitchin', 'Hertfordshire', 'United Kingdom', 'SG4 8JD', 970, 1, NULL, 1, NULL, 'QuangMinh2979', '2022-10-29 06:04:40', '2022-10-29 06:11:21'),
(25, '2', 'new12', 'dangtam', 'minh@gmail.com', '07754187927', 'Unit 2 The Grainstore , Bendish Farm', '1127 Bellaire Blvd, Houston, Tx 77072 Houston', 'Hitchin', 'Hertfordshire', 'United Kingdom', 'SG4 8JD', 870, 1, NULL, 1, NULL, 'QuangMinh7166', '2022-10-29 06:47:00', '2022-10-29 06:47:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '2', '4', '1', '41', '2022-10-18 08:28:12', '2022-10-18 08:28:12'),
(2, '3', '4', '1', '41', '2022-10-18 08:37:14', '2022-10-18 08:37:14'),
(3, '4', '4', '1', '41', '2022-10-18 08:41:01', '2022-10-18 08:41:01'),
(4, '5', '4', '1', '41', '2022-10-18 08:47:51', '2022-10-18 08:47:51'),
(5, '6', '4', '1', '41', '2022-10-18 09:06:49', '2022-10-18 09:06:49'),
(6, '7', '4', '1', '41', '2022-10-18 20:18:48', '2022-10-18 20:18:48'),
(7, '8', '4', '1', '41', '2022-10-18 20:31:20', '2022-10-18 20:31:20'),
(8, '9', '4', '1', '41', '2022-10-18 20:31:57', '2022-10-18 20:31:57'),
(9, '10', '4', '1', '41', '2022-10-18 20:34:33', '2022-10-18 20:34:33'),
(10, '11', '4', '1', '41', '2022-10-18 20:35:34', '2022-10-18 20:35:34'),
(11, '12', '4', '1', '41', '2022-10-18 20:36:26', '2022-10-18 20:36:26'),
(12, '13', '4', '1', '41', '2022-10-18 20:37:15', '2022-10-18 20:37:15'),
(13, '14', '4', '1', '41', '2022-10-18 20:37:45', '2022-10-18 20:37:45'),
(14, '15', '4', '1', '41', '2022-10-18 20:43:40', '2022-10-18 20:43:40'),
(15, '16', '4', '1', '41', '2022-10-18 20:49:38', '2022-10-18 20:49:38'),
(16, '17', '4', '1', '41', '2022-10-18 20:51:37', '2022-10-18 20:51:37'),
(17, '18', '4', '1', '41', '2022-10-18 23:56:46', '2022-10-18 23:56:46'),
(18, '19', '4', '1', '41', '2022-10-19 00:02:09', '2022-10-19 00:02:09'),
(19, '20', '4', '1', '41', '2022-10-19 00:05:31', '2022-10-19 00:05:31'),
(20, '21', '4', '1', '41', '2022-10-19 00:36:49', '2022-10-19 00:36:49'),
(21, '22', '11', '1', '49', '2022-10-26 06:22:31', '2022-10-26 06:22:31'),
(22, '23', '20', '3', '970', '2022-10-27 20:09:40', '2022-10-27 20:09:40'),
(23, '24', '34', '1', '870', '2022-10-29 06:04:40', '2022-10-29 06:04:40'),
(24, '24', '15', '1', '100', '2022-10-29 06:04:40', '2022-10-29 06:04:40'),
(25, '25', '34', '1', '870', '2022-10-29 06:47:00', '2022-10-29 06:47:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(11, 14, 'SHFIGUARTS SPIDER MAN TOBEY', 'SHF', 'SHF SPIDER MAN', 'Biển thể SHF SPIDER MAN', '55', '49', '1666753807.jpg', '3', '2', 0, 1, 'SPIDER MAN TWO TOBEY', 'SHFSPIDERMAN', 'SHFIGUARTS biến thể spider man two tobey', '2022-10-25 20:10:07', '2022-10-25 21:26:38'),
(12, 12, 'samsung galaxy plus 22', 'Samsung', 'Samsung galaxy plus 22', 'Samsung galaxy plus 22', '400', '390', '1666754063.jpg', '2', '6', 0, 1, 'Samsung galaxy plus 22', 'Samsung', 'Samsung galaxy plus 22', '2022-10-25 20:14:23', '2022-10-25 21:26:45'),
(13, 12, 'samsung galaxy s22 ultra', 'Samsung', 'samsung galaxy s22 ultra', 'samsung galaxy s22 ultra', '600', '550', '1666754127.jpg', '3', '3', 0, 1, 'Smart phone samsung', 'samsung galaxy s22 ultra', 'samsung galaxy s22 ultra', '2022-10-25 20:15:27', '2022-10-25 21:26:53'),
(14, 14, 'SHFIGUARTS SPIDER MAN ANDREW', 'SHF', 'SPIDER MAN ANDREW', 'SHF SPIDERMAN FIGURE ANDREW', '61', '55', '1666925308.jpg', '3', '3', 0, 1, 'SHF SPIDERMAN ANDREW', 'SPIDERMANSHF', 'SHFIGUARTS SPIDERMAN ANDREW biến thể 2', '2022-10-25 20:17:10', '2022-10-27 19:48:28'),
(15, 13, 'MAFEX DOCTOR STRANGE', 'MAFEX', 'mafex medicomtoys doctor strange', 'mafex doctor strange phiên bản vô cực', '110', '100', '1666754336.jpg', '2', '3', 0, 1, 'DOCTOR STRANGE', 'MAFEXDOCTORSTRANGE', 'MAFEX MEDICOMSTOYS phù thủy tối thượng phiên bản chiến tranh vô cực', '2022-10-25 20:18:56', '2022-10-25 21:27:14'),
(16, 16, 'tai nghe bluetooth sony', 'tai nghe', 'tai nghe bluetooth sony', 'tai nghe bluetooth sony', '49', '47', '1666754520.jpg', '3', '4', 0, 1, 'tai nghe bluetooth sony', 'TaiNghe', 'tai nghe bluetooth sony', '2022-10-25 20:22:00', '2022-10-25 21:27:49'),
(17, 16, 'tai nghe SONY WF-C500', 'tai nghe', 'sản phẩm tai nghe SONY WF-C500', 'sản phẩm tai nghe SONY WF-C500', '35', '23', '1666754819.jpg', '2', '3', 0, 1, 'Tai nghe bluetooth SONY WF-C500', 'sản phẩm tai nghe SONY WF-C500', 'sản phẩm tai nghe SONY WF-C500', '2022-10-25 20:26:59', '2022-10-25 21:27:57'),
(18, 16, 'Tai Nghe Bluetooth Soundpeats TrueWings', 'TaiNghe', 'sản phẩm Tai Nghe Bluetooth Soundpeats TrueWings', 'sản phẩm Tai Nghe Bluetooth Soundpeats TrueWings', '15', '8', '1666755063.jpg', '2', '3', 0, 1, 'Bluetooth Soundpeats TrueWings', 'sản phẩm Tai Nghe Bluetooth Soundpeats TrueWings', 'sản phẩm Tai Nghe Bluetooth Soundpeats TrueWings', '2022-10-25 20:31:03', '2022-10-25 21:28:05'),
(19, 15, 'iPad Pro 2020 Wi-Fi 128GB 12.9-inch Silver (MY2J2ZA/A)', 'Ipad', 'sản phẩm iPad Pro 2020 Wi-Fi 128GB 12.9-inch Silver (MY2J2ZA/A)', 'sản phẩm iPad Pro 2020 Wi-Fi 128GB 12.9-inch Silver (MY2J2ZA/A)', '890', '870', '1666755238.jpg', '3', '10', 0, 1, 'iPad Pro 2020 Wi-Fi 128GB', 'IpadPro', 'sản phẩm iPad Pro 2020 Wi-Fi 128GB 12.9-inch Silver (MY2J2ZA/A)', '2022-10-25 20:33:58', '2022-10-25 21:28:16'),
(20, 15, 'iPad Pro 12.9 inch - M1 - 2021', 'Ipad', 'sản phẩm iPad Pro 12.9 inch - M1 - 2021', 'sản phẩm iPad Pro 12.9 inch - M1 - 2021', '1000', '970', '1666755475.jpg', '3', '25', 0, 1, 'iPad Pro 12.9 inch - M1 - 2021', 'sản phẩm iPad Pro 12.9 inch - M1 - 2021', 'sản phẩm iPad Pro 12.9 inch - M1 - 2021', '2022-10-25 20:37:55', '2022-10-25 21:28:32'),
(21, 15, 'iPad Pro 12.9 inch - M1 - 2021', 'Ipad', 'sản phẩm iPad Pro 12.9 inch - M1 - 2021', 'sản phẩm iPad Pro 12.9 inch - M1 - 2021', '1000', '990', '1666755553.jpg', '2', '3', 0, 1, 'iPad Pro 12.9 inch - M1 - 2021', 'sản phẩm iPad Pro 12.9 inch - M1 - 2021', 'sản phẩm iPad Pro 12.9 inch - M1 - 2021', '2022-10-25 20:39:13', '2022-10-25 21:28:42'),
(22, 12, 'Vivo v20', 'vivo', 'sản phẩm  vivo v20', 'sản phẩm  vivo v20', '580', '540', '1666755698.jpg', '3', '3', 0, 1, 'vivo v20', 'sản phẩm  vivo v20', 'sản phẩm  vivo v20', '2022-10-25 20:41:38', '2022-10-25 21:28:53'),
(23, 14, 'SHFIGUARTS BLACK WIDOW', 'SHF', 'SHF BLACK WIDOW AVENGERS ENDGAME', 'SHF BLACK WIDOW AVENGERS phiên bản endgame', '49', '40', '1666755803.jpg', '3', '2', 0, 1, 'BLACK WIDOW AVENGERS ENDGAME', 'BLACKWIDOW', 'SHFIGUARTS AVENGERS BLACK WIDOW trận chiến cuối cùng', '2022-10-25 20:43:23', '2022-10-25 21:29:03'),
(24, 14, 'SHF BLACK WIDOWS AVNEGERS 2012', 'SHF', 'góa phụ đen', 'góa phụ đen phiên bản avengers 2012', '60', '49', '1666755897.jpg', '3', '2', 0, 1, 'BLACK WIDOW AVENGERS 2012', 'BLACKWIDOW', 'SHFIGUARTS Góa Phụ Đen Phiên Bản Avengers 2012 new yorks', '2022-10-25 20:44:57', '2022-10-25 21:29:14'),
(26, 14, 'SHFIGUARTS BLACK WIDOWS SNOW SUITS', 'SHF', 'SHF BLACK WIDOWS', 'SHF Góa Phụ Đen Phiên Bản Tuyết', '65', '59', '1666756013.jpg', '2', '3', 0, 1, 'BLACK WIDOW SNOWS', 'BLACKWIDOW', 'SHFIGUARTS BLACK WIDOWS SNOW SUITS', '2022-10-25 20:46:53', '2022-10-25 21:29:24'),
(27, 13, 'IRON MAN MK 50', 'MAFEX', 'MAFEX IRON MAN MK 50', 'MAFEX IRONMAN MK 50 Phiên bản INFINITY WAR', '110', '99', '1666756092.jpg', '3', '3', 0, 1, 'IRONMAN INFINITY WAR', 'IRONMAN', 'MEDICOM MAFEX IRONMAN MK 50 Phiên bản INFINITY WAR', '2022-10-25 20:48:12', '2022-10-25 21:29:34'),
(28, 12, 'OPPO Reno8', 'OPPO', 'Smartphone OPPO Reno8', 'Smartphone OPPO Reno8', '90', '85', '1666756302.png', '2', '3', 0, 1, 'OPPO Reno8', 'OPPO', 'Smartphone OPPO Reno8', '2022-10-25 20:51:42', '2022-10-25 21:29:43'),
(29, 12, 'xiaomi redmi note 9 pro max', 'xiaomi', 'smartphone xiaomi redmi note 9 pro max', 'smartphone xiaomi redmi note 9 pro max', '89', '70', '1666756436.png', '3', '7', 0, 1, 'xiaomi redmi note 9', 'smartphone xiaomi redmi note 9 pro max', 'smartphone xiaomi redmi note 9 pro max', '2022-10-25 20:53:56', '2022-10-25 21:29:53'),
(30, 13, 'MAFEX IRON MAN MK 85', 'MAFEX', 'MAFEX IRON MAN MK 85 AVENGERS ENDGAME', 'MAFEX IRON MAN MK 85 AVENGERS ENDGAME', '120', '110', '1666756621.jpg', '3', '5', 0, 1, 'MAFEX IRONMAN', 'IRONMAN', 'MAFEX IRON MAN MK 85 AVENGERS trận chiến cuối cùng', '2022-10-25 20:57:01', '2022-10-25 21:30:03'),
(31, 13, 'MAFEX CAPTAIN ENDGAME', 'MAFEX', 'MAFEX CAPTAIN AVENGERS ENDGAME', 'Mô Hình đội trưởng mỹ trận chiến cuối cùng', '65', '59', '1666756851.jpg', '3', '3', 0, 1, 'CAPTAIN MAFEX', 'CAPTAIN', 'Mô Hình Đội trưởng mỹ trận chiến cuối cùng', '2022-10-25 21:00:51', '2022-10-25 21:30:14'),
(32, 13, 'MAFEX CAPTAIN INFINITY WAR', 'MAFEX', 'CAPTAIN INFINITY WAR', 'Đội trưởng mỹ phiên bản chiến tranh vô cực', '59', '52', '1666756980.jpg', '3', '3', 0, 1, 'MAFEX CAPTAIN INFINITY WAR', 'CAPTAIN', 'Mô Hình Đội trưởng mỹ phiên bản chiến tranh vô cực', '2022-10-25 21:03:00', '2022-10-25 21:30:39'),
(33, 18, 'Laptop Dell Latitude L3420CTO i3 1115G4/4GB/256G/14\"HD/Win 11', 'Laptop', 'Laptop Dell Latitude L3420CTO i3 1115G4/4GB/256G/14\"HD/Win 11', 'Laptop Dell Latitude L3420CTO i3 1115G4/4GB/256G/14\"HD/Win 11', '500', '450', '1666757173.avif', '3', '20', 0, 1, 'LAPTOP Dell', 'Laptop', 'Laptop Dell Latitude L3420CTO i3 1115G4/4GB/256G/14\"HD/Win 11', '2022-10-25 21:06:13', '2022-10-25 22:16:37'),
(34, 18, 'Laptop ASUS Zenbook 14 OLED UM3402YA-KM074W', 'Laptop', 'Laptop ASUS Zenbook 14 OLED UM3402YA-KM074W', 'Laptop ASUS Zenbook 14 OLED UM3402YA-KM074W', '900', '870', '1666757331.jpg', '5', '7', 0, 1, 'Laptop ASUS Zenbook 14 OLED UM3402YA-KM074W', 'LaptopAsus', 'Laptop ASUS Zenbook 14 OLED UM3402YA-KM074W', '2022-10-25 21:08:51', '2022-10-25 21:31:40'),
(35, 18, 'Laptop HP Envy', 'Laptop', 'Laptop HP Envy', 'Laptop HP Envy', '970', '960', '1666757780.jpg', '3', '4', 0, 1, 'Laptop HP Envy', 'LaoptopHP', 'Laptop HP Envy', '2022-10-25 21:16:20', '2022-10-25 21:31:27'),
(36, 17, 'Macbook Air 13\" 2020 - M1 256GB', 'MACBOOK', 'Macbook Air 13\" 2020 - M1 256GB', 'Macbook Air 13\" 2020 - M1 256GB', '1500', '1400', '1666757921.jpg', '2', '30', 0, 1, 'Macbook Air 13', 'Macbook', 'Macbook Air 13\" 2020 - M1 256GB', '2022-10-25 21:18:41', '2022-10-25 21:31:14'),
(37, 17, 'MacBook Pro 13-inch 2018 | Core i5 2.3GHz/8GB/256GB', 'MACBOOK', 'MacBook Pro 13-inch 2018 | Core i5 2.3GHz/8GB/256GB', 'MacBook Pro 13-inch 2018 | Core i5 2.3GHz/8GB/256GB', '1300', '1080', '1666758163.jpg', '2', '7', 0, 1, 'MacBook Pro 13-inch 2018', 'MacBook Pro 13-inch 2018 | Core i5 2.3GHz/8GB/256GB', 'MacBook Pro 13-inch 2018 | Core i5 2.3GHz/8GB/256GB', '2022-10-25 21:22:43', '2022-10-25 21:31:03'),
(38, 17, 'Apple MWP82LL/A 13-inch MacBook Pro with Retina Display (Mid 2020, Silver)', 'MACBOOK', 'Apple MWP82LL/A 13-inch MacBook Pro with Retina Display (Mid 2020, Silver)', 'Apple MWP82LL/A 13-inch MacBook Pro with Retina Display (Mid 2020, Silver)', '1800', '1690', '1666758304.jpg', '3', '39', 0, 1, 'Apple MWP82LL/A 13-inch MacBook Pro', 'Apple MWP82LL/A 13-inch MacBook Pro with Retina Display (Mid 2020, Silver)', 'Apple MWP82LL/A 13-inch MacBook Pro with Retina Display (Mid 2020, Silver)', '2022-10-25 21:25:04', '2022-10-25 21:30:51'),
(39, 14, 'SHFIGUARTS SPIDER MAN INTERGRATION', 'SHF', 'SPIDER MAN TOM HOLLAND', 'SHFIGUARTS SPIDER MAN PETER 1', '87', '67', '1666929516.jpg', '3', '2', 1, 1, 'SPIDER MAN PETER ONE', 'SPIDERMAN', 'SHFIGUARTS SPIDER MAN TOM HOLLAND PETER ONE', '2022-10-27 20:58:36', '2022-10-27 20:58:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars_rated` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `prod_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(2, '2', '11', '4', '2022-10-26 06:56:05', '2022-10-26 06:56:05'),
(3, '2', '34', '1', '2022-10-29 06:32:24', '2022-10-29 06:46:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_review` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `prod_id`, `user_review`, `created_at`, `updated_at`) VALUES
(2, '2', '11', 'Hàng rất tốt! Phụ kiện tốt và đẹp ! Đáng giá 4 sao', '2022-10-26 06:56:24', '2022-10-26 06:56:24'),
(3, '2', '15', 'Sản phẩm này rất tốt!', '2022-10-29 06:34:04', '2022-10-29 06:34:04'),
(4, '2', '34', 'Sản phẩm rất tốt chạy rất mượt mà', '2022-10-29 06:54:37', '2022-10-29 06:54:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(355) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(355) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(355) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(355) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(355) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$BR34YGfWz2FpRvWBxpnT7uo9vCpzGSEZnjFEa4dmIylkCYoC4EvaW', '', '', '', '', '', '', '', '', 1, NULL, '2022-10-10 09:33:02', '2022-10-10 09:33:02'),
(2, 'Quang Minh', 'minh@gmail.com', NULL, '$2y$10$dWmSIbEllCI5BDsUosifN.vvqzaP.Wc/9M78YNYX7gLBqRSfvPEru', '', '', '', '', '', '', '', '', 0, NULL, '2022-10-10 18:37:56', '2022-10-10 18:37:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `prod_id`, `created_at`, `updated_at`) VALUES
(4, '2', '22', '2022-10-27 20:11:48', '2022-10-27 20:11:48'),
(5, '2', '30', '2022-10-29 05:49:40', '2022-10-29 05:49:40');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
