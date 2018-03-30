-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 30, 2018 lúc 08:28 PM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hunghai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Nike', '/photos/1/brand/Nike-Logo-PNG-Image.png', '2018-03-23 07:51:56', '2018-03-23 07:51:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `category_type`, `created_at`, `updated_at`) VALUES
(1, 0, 'Cầu lông', 'cau-long', 'product', '2018-03-23 07:38:42', '2018-03-23 07:38:42'),
(2, 1, 'Vợt cầu lông', 'vot-cau-long', 'product', '2018-03-23 07:38:59', '2018-03-23 07:38:59'),
(3, 0, 'Khuyến mại', 'khuyen-mai', 'post', '2018-03-23 07:41:33', '2018-03-23 07:41:33'),
(4, 3, 'Giảm gía', 'giam-gia', 'post', '2018-03-23 07:41:52', '2018-03-23 07:41:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countdowns`
--

CREATE TABLE `countdowns` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `datetime` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `countdowns`
--

INSERT INTO `countdowns` (`id`, `product_id`, `datetime`, `created_at`, `updated_at`) VALUES
(2, 2, '2018-03-29 13:49:00', '2018-04-01 06:49:00', '2018-03-25 06:49:00'),
(3, 1, '2018-04-01 13:49:00', '2018-04-01 04:49:49', '2018-03-25 06:49:49'),
(5, 5, '2018-04-01 13:49:00', '2018-03-31 16:35:03', '2018-03-27 16:35:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img_products`
--

CREATE TABLE `img_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
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
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2018_01_17_041213_create_posts_table', 1),
(22, '2018_01_17_041245_create_slides_table', 1),
(23, '2018_01_17_043306_create_settings_table', 1),
(24, '2018_01_17_053502_create_products_table', 1),
(25, '2018_01_17_999999_create_categories_table', 1),
(26, '2018_02_07_105717_create_img_products_table', 1),
(27, '2018_02_23_081902_create_brands_table', 1),
(28, '2018_03_02_063630_create_jobs_table', 2),
(29, '2018_03_02_063705_create_failed_jobs_table', 2),
(30, '2018_03_07_085432_create_atrributes_table', 3),
(31, '2018_03_07_092342_create_species_table', 3),
(32, '2018_03_25_012730_create_countdowns_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `cusomer_id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `note` longtext,
  `status` tinyint(4) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `sale_price` decimal(10,0) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(2, 3, 'Đánh cầu lông có lợi cho sức khỏe', NULL, '<p>H&agrave;ng nh&agrave; e chuyến n&agrave;y về c&oacute;:&nbsp;<br />- M&aacute;y &eacute;p rau, củ quả cầm tay<br />- M&aacute;y say sinh tố shake take<br />- M&aacute;y say cầm tay v&agrave; dụng cụ đ&aacute;nh trứng<br />- Thẻ học th&ocirc;ng minh cho b&eacute; loại nhỏ<span class=\"text_exposed_show\"><br />- M&aacute;y đuổi muỗi x&ocirc;ng tinh dầu<br />- Kẹp đuổi muỗi cho b&eacute;&nbsp;<br />- V&ograve;i xịt gi&atilde;n nở 15m Magic hose<br />- Bọ cắm b&agrave;n chải h&uacute;t ch&acirc;n kh&ocirc;ng<br />- Kẹp s&aacute;ch chống cận cho b&eacute;<br />- Bộ đồ chơi c&acirc;u c&aacute; cho b&eacute;&nbsp;<br />- Bộ lau nh&agrave; tabi việt nam<br />- Gi&aacute; để gi&agrave;y d&eacute;p 4 tầng<br />- Gế ăn dặm gấp gọn cho b&eacute;&nbsp;<br />- Bột th&ocirc;ng cống h&agrave;n quốc</span></p>', '/photos/1/product/1-490x450.jpg', '', NULL, NULL, 1, 0, '2018-03-23 07:42:18', '2018-03-23 07:42:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `brand_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `meta_keywords` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `price`, `sale_price`, `short_description`, `description`, `image`, `slug`, `seo_title`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Alek Zieme', 2687627, 1000000, 'Tempora est consequuntur et accusamus omnis modi.', 'Labore voluptate sequi laboriosam est et dolorem. Necessitatibus id et exercitationem. Consectetur dolor voluptatem est reprehenderit incidunt aut. Expedita unde pariatur nemo suscipit id.', 'https://lorempixel.com/640/480/?70774', 'guiseppe-flatley', NULL, NULL, NULL, 1, 1, '2004-01-02 05:50:07', '2018-03-23 08:00:20'),
(2, 1, 1, 'Dr. Jazmin Ortiz III', 2909698, 1000000, 'Aspernatur deserunt cumque modi sed sint rem est.', 'Molestiae a nostrum delectus quae. Veritatis adipisci amet et deleniti. Asperiores explicabo sit et et.', 'https://lorempixel.com/640/480/?30309', 'mandy-harris-v', NULL, NULL, NULL, 1, 1, '2010-11-22 14:05:04', '2018-03-23 08:00:20'),
(3, 1, 1, 'Mrs. Mia Sawayn DVM', 3559703, 1000000, 'Ullam rerum deleniti tempore consequatur voluptatibus earum velit natus.', 'Possimus qui omnis aperiam occaecati ut. Ut adipisci aut autem et non. Harum quia in necessitatibus atque qui.', 'https://lorempixel.com/640/480/?34068', 'jack-huel', NULL, NULL, NULL, 1, 1, '1984-11-10 00:20:14', '2018-03-23 08:00:20'),
(4, 1, 1, 'Lucy Haley', 607940, 1000000, 'Sint voluptas omnis voluptatum voluptatum soluta tenetur ut sunt.', 'Adipisci omnis accusantium quis voluptatem. Dolor iste quia cumque occaecati odio. Rem soluta dolorem quasi rem recusandae. Quae inventore qui inventore est.', 'https://lorempixel.com/640/480/?29769', 'carole-collins', NULL, NULL, NULL, 1, 1, '2015-04-15 05:11:36', '2018-03-23 08:00:20'),
(5, 1, 1, 'Felicity West', 1332293, 1000000, 'Sunt rerum est commodi velit eaque nihil cumque corporis.', 'Aliquid repudiandae autem placeat aliquam nemo vero. Sed necessitatibus laudantium adipisci et. Minima sit nostrum numquam vel velit.', 'https://lorempixel.com/640/480/?12555', 'mr-tavares-mitchell-dds', NULL, NULL, NULL, 1, 1, '1991-10-21 12:28:23', '2018-03-23 08:00:20'),
(6, 1, 1, 'Terrell Goyette', 904890, 1000000, 'Explicabo velit qui aut et facere.', 'Blanditiis consequatur magnam doloribus aut consequatur. Reiciendis animi voluptatem ducimus dolor eum et qui. Ab velit dolor voluptatibus. Nam cupiditate voluptatibus dolorem nobis tempore.', 'https://lorempixel.com/640/480/?89460', 'prof-edwardo-schmitt-iv', NULL, NULL, NULL, 1, 1, '1991-05-01 19:30:16', '2018-03-23 08:00:20'),
(7, 1, 1, 'Florine Brakus', 3436771, 1000000, 'Dolorum minima itaque dolore voluptate id enim.', 'Explicabo magnam voluptatem totam eligendi autem consequatur. Vitae voluptatem mollitia eum odio aliquam qui ratione ab. Nihil quod eos modi architecto libero animi non explicabo.', 'https://lorempixel.com/640/480/?10429', 'kamron-okon', NULL, NULL, NULL, 1, 1, '2008-07-23 07:40:32', '2018-03-23 08:00:20'),
(8, 1, 1, 'Isai Littel', 3265077, 1000000, 'Voluptas fugiat aliquam adipisci quia aliquam at minus.', 'Eligendi repudiandae voluptatibus dicta. Iusto aut officiis velit ex ea qui. Exercitationem aliquam rerum et ex minus ut numquam. Ut dolorem animi numquam soluta debitis.', 'https://lorempixel.com/640/480/?88472', 'kari-rohan', NULL, NULL, NULL, 1, 1, '1990-04-29 13:15:12', '2018-03-23 08:00:20'),
(9, 1, 1, 'Coby Erdman', 3300052, 1000000, 'Et quibusdam repellat cupiditate praesentium est sapiente inventore.', 'Maiores quo esse rerum praesentium inventore exercitationem. Quod autem doloribus qui fuga et quidem.', 'https://lorempixel.com/640/480/?37102', 'william-walter', NULL, NULL, NULL, 1, 1, '2012-01-27 12:07:05', '2018-03-23 08:00:20'),
(10, 1, 1, 'Narciso Cormier MD', 3266118, 1000000, 'Odio nesciunt est hic esse ea est.', 'Qui consectetur ipsum in voluptas necessitatibus dolor consequatur. Laudantium molestias id dolor ut. Aut tempora qui voluptates doloribus ipsum accusantium architecto. Expedita omnis itaque est.', 'https://lorempixel.com/640/480/?86391', 'bria-friesen-sr', NULL, NULL, NULL, 1, 1, '1998-12-07 13:04:30', '2018-03-23 08:00:20'),
(11, 1, 1, 'Mr. Hyman Johnston II', 1973337, 1000000, 'Minus totam in voluptatem maxime quis exercitationem.', 'Magnam accusantium aliquam reiciendis eaque quae praesentium. Rerum consequuntur sit consequatur voluptatibus molestiae vitae aut eos. Modi iure eos suscipit quod enim cum quidem.', 'https://lorempixel.com/640/480/?13677', 'mr-gus-langosh-iv', NULL, NULL, NULL, 1, 1, '2006-02-10 13:22:29', '2018-03-23 08:00:20'),
(12, 1, 1, 'Dr. Unique Luettgen', 1103418, 1000000, 'Distinctio modi autem modi iste non laborum odit.', 'Cum voluptatibus ex velit officia qui et voluptatem nisi. Provident a voluptatum dolorum et voluptas illum. Quis itaque nobis vitae veritatis corporis dolore.', 'https://lorempixel.com/640/480/?30526', 'gianni-hilpert', NULL, NULL, NULL, 1, 1, '2003-05-04 19:27:59', '2018-03-23 08:00:20'),
(13, 1, 1, 'Murray Schmidt', 4941926, 1000000, 'Voluptatem ad qui qui voluptatem alias qui.', 'Maxime fuga aperiam quod maxime nostrum sequi. A praesentium aut sed perspiciatis nihil temporibus molestiae. Similique aliquid eligendi quibusdam mollitia.', 'https://lorempixel.com/640/480/?37420', 'joanie-borer', NULL, NULL, NULL, 1, 1, '2012-07-13 22:52:45', '2018-03-23 08:00:20'),
(14, 1, 1, 'Leila Kling', 3425035, 1000000, 'Alias laboriosam sed odit itaque assumenda inventore.', 'Ipsa excepturi est velit modi voluptas. Magnam quisquam aut est amet vero enim. Sunt omnis eum quia cum illo est.', 'https://lorempixel.com/640/480/?74215', 'jayden-stroman', NULL, NULL, NULL, 1, 1, '2004-09-23 21:23:52', '2018-03-23 08:00:21'),
(15, 1, 1, 'Giuseppe Paucek', 4082322, 1000000, 'Enim voluptatem ducimus ea aut ut voluptas.', 'Culpa quisquam eum aspernatur. Non fugit quia amet ipsam rerum ducimus qui. Vel rerum porro quia iusto quia. Neque tempora et aut excepturi voluptates quia magnam consequatur.', 'https://lorempixel.com/640/480/?69733', 'abbey-nicolas-iv', NULL, NULL, NULL, 1, 1, '2016-10-19 06:56:34', '2018-03-23 08:00:21'),
(16, 1, 1, 'Sandrine Predovic', 4176426, 1000000, 'Qui eligendi ea cum numquam saepe eaque consequatur.', 'Illum nobis delectus fuga. In quo autem est doloribus dolorum quasi velit. Et quaerat at veritatis. Distinctio deserunt consequatur inventore optio laborum sint deserunt.', 'https://lorempixel.com/640/480/?90033', 'miss-alisa-ward-dvm', NULL, NULL, NULL, 1, 1, '2013-06-02 07:00:26', '2018-03-23 08:00:21'),
(17, 1, 1, 'Lois Runte PhD', 1302542, 1000000, 'Consequuntur excepturi rerum perspiciatis ipsum qui nihil.', 'Qui voluptas natus dolor consequatur eum nihil. Delectus laboriosam assumenda iure nemo eveniet. Cumque neque amet reprehenderit molestias fugit a eum. Est sit assumenda quod tempora. A non velit et.', 'https://lorempixel.com/640/480/?34512', 'aurelia-paucek', NULL, NULL, NULL, 1, 1, '2002-09-29 15:25:15', '2018-03-23 08:00:21'),
(18, 1, 1, 'Manuela Hane', 1175878, 1000000, 'Porro est et delectus quam.', 'Sunt possimus itaque suscipit eum soluta rerum. Possimus quo dolore omnis et non velit aut.', 'https://lorempixel.com/640/480/?79597', 'carmela-hauck', NULL, NULL, NULL, 1, 1, '1999-06-01 19:18:26', '2018-03-23 08:00:21'),
(19, 1, 1, 'Prof. Noelia O\'Conner IV', 324835, 1000000, 'Ducimus quia ut consequuntur velit.', 'Repudiandae ullam quisquam et ea sapiente laborum. Sunt debitis ipsum praesentium optio. Sit non praesentium et sed voluptatem.', 'https://lorempixel.com/640/480/?48033', 'verna-jakubowski', NULL, NULL, NULL, 1, 1, '2008-08-15 01:16:12', '2018-03-23 08:00:21'),
(20, 1, 1, 'Wade Zemlak', 3868654, 1000000, 'Reiciendis quo labore et maxime sed laudantium ex.', 'Rem nihil cupiditate dolores. Nulla magnam sed reiciendis. Sunt molestias id id.', 'https://lorempixel.com/640/480/?78092', 'iva-rempel', NULL, NULL, NULL, 1, 1, '2011-12-29 15:41:35', '2018-03-23 08:00:21'),
(21, 1, 1, 'Keagan Eichmann', 952266, 1000000, 'Beatae amet tempora officiis incidunt.', 'Rem et vero dolore qui. Laudantium tempora labore voluptatibus accusantium commodi qui. Quos itaque dolorum est minus et optio. Beatae eos animi odit iste et.', 'https://lorempixel.com/640/480/?28082', 'prof-mavis-boyle-i', NULL, NULL, NULL, 1, 1, '1999-05-21 07:03:15', '2018-03-23 08:00:21'),
(22, 1, 1, 'Adolph Klocko', 3529330, 1000000, 'Alias voluptatem placeat harum quisquam praesentium repudiandae corrupti magnam.', 'Aperiam consectetur aut ab non odit. Culpa corporis ipsam minus occaecati ratione eos non. Sit perferendis adipisci sapiente voluptatem debitis non.', 'https://lorempixel.com/640/480/?46998', 'dr-frederik-casper', NULL, NULL, NULL, 1, 1, '1983-03-22 01:08:38', '2018-03-23 08:00:21'),
(23, 1, 1, 'Mae DuBuque II', 2843368, 1000000, 'Incidunt aut assumenda quos et fugit.', 'At iste nostrum libero rem quia sapiente quis. Cupiditate aut aut omnis. Libero non odit itaque vel sed.', 'https://lorempixel.com/640/480/?30404', 'prof-heaven-bradtke', NULL, NULL, NULL, 1, 1, '2005-11-18 18:45:08', '2018-03-23 08:00:21'),
(24, 1, 1, 'Dr. Kaia Goldner II', 4053114, 1000000, 'Quia sit maxime voluptatem illo accusantium esse.', 'Non aliquid unde alias fugiat omnis. Sed qui eos nobis aut. Recusandae quam aliquam quia illo voluptas ipsum. Sit est vel eos et ipsum exercitationem voluptatem minima.', 'https://lorempixel.com/640/480/?33407', 'dr-graham-kuhn', NULL, NULL, NULL, 1, 1, '1978-12-19 03:28:19', '2018-03-23 08:00:21'),
(25, 1, 1, 'Dr. Eloisa Kling IV', 4145654, NULL, 'Cupiditate amet eos aut eos laborum.', 'Suscipit molestiae qui et ex hic natus itaque ut. Expedita temporibus atque optio. Temporibus dolorem expedita aperiam expedita.', 'https://lorempixel.com/640/480/?52584', 'georgiana-boyle', NULL, NULL, NULL, 1, 0, '2001-09-19 20:33:53', '2018-03-23 08:00:21'),
(26, 1, 1, 'Caden Fritsch', 2679370, NULL, 'Inventore earum doloribus delectus veniam aut dolorem.', 'Sit inventore officiis occaecati ut. Similique eum ullam nisi autem temporibus. Blanditiis quia aut dolor atque. Voluptatem laboriosam et ut quia nisi et sunt.', 'https://lorempixel.com/640/480/?11634', 'carolanne-tromp', NULL, NULL, NULL, 1, 0, '1984-03-17 09:10:05', '2018-03-23 08:00:21'),
(27, 1, 1, 'Dr. Verna Eichmann PhD', 836759, NULL, 'Modi nostrum voluptates animi tenetur ipsam explicabo.', 'Sed repudiandae est ipsa distinctio iste. Vel eum ad aperiam aliquid. Illum culpa rerum dolor. Illum eos minus fugit consequatur rem ipsa laboriosam. Eius et enim voluptas dolor adipisci tempore in.', 'https://lorempixel.com/640/480/?58482', 'dr-jakob-kunde', NULL, NULL, NULL, 1, 0, '1984-06-29 10:46:11', '2018-03-23 08:00:21'),
(28, 1, 1, 'Mrs. Roselyn Vandervort', 4233777, NULL, 'Quis dolores esse iste nihil praesentium ut ut.', 'Qui voluptas ullam corrupti fugit. Voluptate est necessitatibus magnam commodi. Nihil sint consequatur ea quibusdam.', 'https://lorempixel.com/640/480/?64590', 'madelyn-wolff', NULL, NULL, NULL, 1, 0, '1981-01-25 23:11:57', '2018-03-23 08:00:21'),
(29, 1, 1, 'Gisselle Rohan', 628654, NULL, 'Eius possimus mollitia ut laudantium maxime.', 'Repudiandae consequatur magnam sunt itaque optio vel quo. Suscipit debitis quia officiis voluptas. Rem aut natus dicta quis ex fugiat molestias fugiat. Repudiandae in possimus et quis.', 'https://lorempixel.com/640/480/?92960', 'chance-hills', NULL, NULL, NULL, 1, 0, '1988-08-31 01:41:51', '2018-03-23 08:00:21'),
(30, 1, 1, 'Cory Reichert II', 2240371, NULL, 'Exercitationem accusamus quis expedita voluptatibus aut aut.', 'Ut aut doloribus porro officia et molestiae magni recusandae. Tempora earum nesciunt voluptas nisi. Dolore alias provident sed quidem cumque facilis. At similique odit id a rerum perferendis dolore.', 'https://lorempixel.com/640/480/?51162', 'citlalli-buckridge', NULL, NULL, NULL, 1, 0, '1982-04-03 00:18:10', '2018-03-23 08:00:21'),
(31, 1, 1, 'Prof. Brock Mayer V', 1171899, NULL, 'Laboriosam fugit consequatur ad enim.', 'Nisi ab alias pariatur quo quos quibusdam. Qui aut voluptate sint dolorum est similique dicta. Repellat eius fugiat sint aut.', 'https://lorempixel.com/640/480/?24953', 'maegan-schaefer', NULL, NULL, NULL, 1, 0, '1992-03-14 08:29:33', '2018-03-23 08:00:21'),
(32, 1, 1, 'Lew Gerhold', 1209435, NULL, 'Recusandae non assumenda quia explicabo rerum provident corrupti sit.', 'Sit veritatis placeat et impedit cumque velit sit hic. Voluptatum et totam qui nam veritatis consequuntur. Impedit animi et corrupti exercitationem enim. Occaecati voluptatem atque voluptate aut dolores sit deserunt.', 'https://lorempixel.com/640/480/?50613', 'creola-medhurst', NULL, NULL, NULL, 1, 0, '1983-06-19 00:19:24', '2018-03-23 08:00:21'),
(33, 1, 1, 'Dejon Zemlak DDS', 4779811, NULL, 'Dignissimos doloremque deserunt ab rerum sed sed.', 'Cupiditate qui sed repudiandae. Soluta neque sunt labore rerum cum voluptatem. Dolorem et quae rerum qui repellat necessitatibus. Hic repellat libero aliquam odit.', 'https://lorempixel.com/640/480/?61721', 'nyasia-considine', NULL, NULL, NULL, 1, 0, '1985-06-19 10:25:07', '2018-03-23 08:00:21'),
(34, 1, 1, 'Mrs. Kelli Rice V', 990337, NULL, 'Eaque ut explicabo et ipsum.', 'Et est in odit accusamus et deserunt nesciunt nesciunt. Porro non id ad voluptatum a nulla voluptatem et.', 'https://lorempixel.com/640/480/?84860', 'audie-bradtke', NULL, NULL, NULL, 1, 0, '1997-11-03 07:48:38', '2018-03-23 08:00:21'),
(35, 1, 1, 'Mr. Oren Murazik PhD', 3827848, NULL, 'Enim perferendis rerum dicta quam ea qui labore sit.', 'Rerum eos perferendis optio. Natus in at autem provident inventore vero. Harum porro voluptate rerum non nisi sit. Sapiente quo expedita quam at omnis tenetur.', 'https://lorempixel.com/640/480/?52321', 'prof-judson-ferry', NULL, NULL, NULL, 1, 0, '2014-06-16 08:32:43', '2018-03-23 08:00:21'),
(36, 1, 1, 'Hal Kunze DDS', 2076069, NULL, 'Illum qui omnis sit eius.', 'Accusantium vero ullam voluptatem sunt earum odit voluptate. Et et adipisci qui nisi nam dolorem. Voluptatem consequatur quis sint quo blanditiis.', 'https://lorempixel.com/640/480/?46025', 'will-wehner-md', NULL, NULL, NULL, 1, 0, '1993-03-03 07:47:12', '2018-03-23 08:00:21'),
(37, 1, 1, 'Prof. Alexandro Christiansen DVM', 2017948, NULL, 'Nulla dicta quia qui voluptas sunt sit rerum.', 'Et tempora voluptatem iusto voluptatibus sed autem. Cum hic veritatis molestiae molestiae. Eveniet rerum repellat et illum. Est et sit in dolorem impedit doloremque.', 'https://lorempixel.com/640/480/?21116', 'santino-hammes', NULL, NULL, NULL, 1, 0, '1995-09-09 05:05:07', '2018-03-23 08:00:21'),
(38, 1, 1, 'Catherine Brekke', 947313, NULL, 'Est amet accusantium error enim pariatur saepe itaque explicabo.', 'Et explicabo id voluptas earum. Aliquid itaque aspernatur enim quia reiciendis cumque inventore nemo. Quos pariatur qui similique provident. Laboriosam et dolore optio quia expedita.', 'https://lorempixel.com/640/480/?76348', 'rey-williamson', NULL, NULL, NULL, 1, 0, '1972-03-01 15:19:45', '2018-03-23 08:00:21'),
(39, 1, 1, 'Mr. Godfrey Sawayn II', 800888, NULL, 'Adipisci eaque nisi consequatur est aut.', 'Ea consequatur hic sunt. Laudantium enim perspiciatis in consequatur ab vero necessitatibus voluptatem. Iste aliquam quam excepturi. Nihil illo aliquid qui itaque quibusdam temporibus.', 'https://lorempixel.com/640/480/?51647', 'prof-jaime-terry-dds', NULL, NULL, NULL, 1, 0, '2014-01-26 17:31:20', '2018-03-23 08:00:21'),
(40, 1, 1, 'Samara Heaney', 3941431, NULL, 'Ullam quo ex quia sequi quis suscipit fugit.', 'Omnis alias aut autem corrupti et. Hic sint vel mollitia et magnam qui. Esse qui mollitia nihil dolorum fuga. Ex facere ut autem quidem sapiente quibusdam animi.', 'https://lorempixel.com/640/480/?93917', 'malcolm-nicolas-iii', NULL, NULL, NULL, 1, 0, '1982-06-14 13:27:01', '2018-03-23 08:00:21'),
(41, 1, 1, 'Yesenia Runte', 2690173, NULL, 'Praesentium qui quae ullam molestiae natus eligendi ducimus quos.', 'Harum voluptate tempora omnis ullam distinctio perspiciatis. Animi exercitationem sunt et inventore corporis adipisci. Dicta eius qui sed libero. Distinctio inventore illum beatae. Exercitationem aut illo eum.', 'https://lorempixel.com/640/480/?10272', 'bridie-bogan', NULL, NULL, NULL, 1, 0, '1998-01-05 11:56:45', '2018-03-23 08:00:21'),
(42, 1, 1, 'Prof. Brain O\'Keefe', 4987747, NULL, 'Est corrupti possimus sit cumque.', 'Et animi voluptatem qui odio. Ad rerum quaerat amet voluptas aut. Placeat officia praesentium aut aut soluta aliquam.', 'https://lorempixel.com/640/480/?82481', 'raoul-kihn-sr', NULL, NULL, NULL, 1, 0, '1974-11-27 02:58:10', '2018-03-23 08:00:21'),
(43, 1, 1, 'Santos Kutch IV', 2032472, NULL, 'Alias recusandae iure praesentium impedit rerum libero.', 'Doloribus quia repudiandae temporibus recusandae. Tenetur sint atque dolores velit qui. Accusamus reprehenderit odio ullam maiores numquam quas. Quo illum est aut quis.', 'https://lorempixel.com/640/480/?78804', 'nathanial-okon', NULL, NULL, NULL, 1, 0, '1999-04-25 13:12:54', '2018-03-23 08:00:21'),
(44, 1, 1, 'Miss Maymie Schmitt MD', 2493519, NULL, 'Suscipit eveniet quo culpa omnis fuga.', 'Minus maiores iste soluta officiis. Doloremque recusandae placeat ullam ad iusto quis ex. Laboriosam voluptatem animi porro id repellendus eos. Voluptatem ad id dolores aliquid. Eaque consectetur rerum commodi quam optio.', 'https://lorempixel.com/640/480/?60014', 'bertrand-johnson-i', NULL, NULL, NULL, 1, 0, '2000-04-06 01:38:47', '2018-03-23 08:00:21'),
(45, 1, 1, 'Antonette Carter', 457522, NULL, 'Animi at at excepturi laboriosam.', 'Tempora voluptatem enim molestiae veritatis cum. Impedit labore quia iure sed odit. Vitae fugit totam veritatis labore accusantium dolorem blanditiis ullam. Quasi est ipsum placeat beatae dolor quisquam.', 'https://lorempixel.com/640/480/?16231', 'addie-ullrich', NULL, NULL, NULL, 1, 0, '1970-11-04 06:11:55', '2018-03-23 08:00:21'),
(46, 1, 1, 'Roma Cronin', 4081398, NULL, 'A neque qui fugiat molestias assumenda voluptatem.', 'Molestiae saepe neque provident earum aut adipisci. Qui aliquid quo voluptatibus libero.', 'https://lorempixel.com/640/480/?47151', 'earline-hyatt', NULL, NULL, NULL, 1, 0, '2007-05-06 21:32:04', '2018-03-23 08:00:21'),
(47, 1, 1, 'Treva Gerhold II', 3416474, NULL, 'Cumque consequatur et explicabo omnis maxime.', 'Ipsum aliquid asperiores est nam. Qui tempora vel omnis repellat.', 'https://lorempixel.com/640/480/?29240', 'mr-regan-oberbrunner', NULL, NULL, NULL, 1, 0, '2015-08-17 15:44:54', '2018-03-23 08:00:21'),
(48, 1, 1, 'Brooke Glover', 609436, NULL, 'Veritatis laboriosam ipsa quam ratione officiis.', 'Occaecati sequi repudiandae sed eos nisi aspernatur incidunt. Eum atque ullam veritatis rerum sint necessitatibus. Molestiae nihil sapiente accusantium et dolores. Perferendis saepe officiis est ea commodi.', 'https://lorempixel.com/640/480/?81477', 'carlie-jacobs', NULL, NULL, NULL, 1, 0, '2008-04-17 16:15:57', '2018-03-23 08:00:21'),
(49, 1, 1, 'Prof. Sabryna Champlin', 2765641, NULL, 'Minima eos praesentium nisi odit delectus provident sint similique.', 'Dolor odit est est et qui. Eum et fuga eaque quis voluptatibus.', 'https://lorempixel.com/640/480/?40585', 'magdalen-batz', NULL, NULL, NULL, 1, 0, '1973-02-13 06:19:15', '2018-03-23 08:00:21'),
(50, 1, 1, 'Mauricio Grant', 2408115, NULL, 'Dolore ut est provident.', 'Quam enim et voluptate aliquam veniam. Quisquam ex voluptas voluptatem maxime et aspernatur. Iure ut labore laudantium consequatur rem temporibus delectus.', 'https://lorempixel.com/640/480/?47186', 'jared-bailey', NULL, NULL, NULL, 1, 0, '1970-01-10 16:00:54', '2018-03-23 08:00:21'),
(51, 2, 1, 'Godfrey Senger', 1318279, NULL, 'Et aut eius incidunt.', 'Consectetur enim delectus eum nostrum occaecati cumque fugiat. Et veniam maiores ut deserunt ex harum non ad. Sunt nobis dolorem sint veritatis. Minima error tenetur ea. Vel quae pariatur consequuntur et officiis ea est beatae.', 'https://lorempixel.com/640/480/?13724', 'jameson-hansen', NULL, NULL, NULL, 1, 0, '1975-07-15 16:40:28', '2018-03-23 08:00:21'),
(52, 2, 1, 'Prof. Lavon O\'Reilly Jr.', 712406, NULL, 'Velit non cum libero dignissimos alias consectetur qui.', 'Nam voluptas quia optio ab et. Rem exercitationem saepe dolor voluptatem ipsa error facilis. Sed ut et expedita aut sint quis. Officia et est blanditiis temporibus itaque qui eos.', 'https://lorempixel.com/640/480/?95109', 'mr-brooks-goldner-iv', NULL, NULL, NULL, 1, 0, '2010-06-05 08:22:54', '2018-03-23 08:00:21'),
(53, 2, 1, 'Lilly Kautzer', 2362149, NULL, 'Praesentium et sint cupiditate fuga repudiandae nostrum.', 'Assumenda maiores ea porro tempore aut. Occaecati sint voluptatibus nihil eveniet qui voluptatem eum. Quos et qui sed perferendis optio quia. Distinctio accusantium ratione deserunt voluptatibus. Rem cum ut consequuntur.', 'https://lorempixel.com/640/480/?13416', 'arno-mccullough', NULL, NULL, NULL, 1, 0, '1979-04-27 11:02:47', '2018-03-23 08:00:21'),
(54, 2, 1, 'Erling Wiza IV', 2249210, NULL, 'Sunt labore ad ipsam recusandae suscipit.', 'Quia omnis deserunt culpa nobis dolorem accusantium sunt quos. Quia ratione porro culpa rerum voluptatem. Animi cumque quidem autem et veritatis voluptatem. Ut nulla quos aut ipsa cum quas facere labore.', 'https://lorempixel.com/640/480/?42595', 'kamren-glover', NULL, NULL, NULL, 1, 0, '1980-08-17 08:33:22', '2018-03-23 08:00:21'),
(55, 2, 1, 'Mrs. Janie Hermiston V', 527695, NULL, 'Ad perspiciatis atque voluptatem.', 'Maxime provident hic hic pariatur eligendi. Placeat ut non molestiae provident dicta ratione. Ut exercitationem perferendis esse vitae non non sapiente.', 'https://lorempixel.com/640/480/?38234', 'vada-stroman', NULL, NULL, NULL, 1, 0, '1995-09-07 16:40:44', '2018-03-23 08:00:21'),
(56, 2, 1, 'Sigmund O\'Conner', 4210501, NULL, 'Et debitis cumque nihil ut ea.', 'Facere vero veritatis enim quas possimus laborum explicabo. Doloremque similique repellat aut natus consequuntur quod adipisci sint. Odit ex ipsa ipsam sit aliquam pariatur et. Eius reiciendis aspernatur labore soluta.', 'https://lorempixel.com/640/480/?83943', 'prof-faustino-bode-ii', NULL, NULL, NULL, 1, 0, '1996-01-09 15:06:53', '2018-03-23 08:00:21'),
(57, 2, 1, 'Kariane Wiegand', 1303939, NULL, 'Eos illo error eum iure.', 'Qui enim eos itaque assumenda ut omnis iusto. Tenetur voluptatem quisquam ut dicta suscipit.', 'https://lorempixel.com/640/480/?95085', 'kelton-kuvalis', NULL, NULL, NULL, 1, 0, '1989-11-24 23:34:39', '2018-03-23 08:00:21'),
(58, 2, 1, 'Trycia Boehm', 1615259, NULL, 'Dolores suscipit ducimus assumenda necessitatibus saepe animi.', 'Voluptatem quisquam et dolorem. Dolorum adipisci porro distinctio fugit. Qui repudiandae optio qui. Voluptatem est et magnam sit ut minima.', 'https://lorempixel.com/640/480/?91011', 'vella-daniel', NULL, NULL, NULL, 1, 0, '1975-10-16 01:39:46', '2018-03-23 08:00:21'),
(59, 2, 1, 'Miss Shaina Bashirian Sr.', 249040, NULL, 'Eos doloremque quis veritatis repudiandae est vel.', 'Quod quia tempore asperiores suscipit. Molestias et iusto omnis consequatur est non. Ut commodi est et.', 'https://lorempixel.com/640/480/?90581', 'dr-dale-weimann-ii', NULL, NULL, NULL, 1, 0, '2001-12-29 08:19:34', '2018-03-23 08:00:21'),
(60, 2, 1, 'Alice Rolfson', 2508407, NULL, 'Laboriosam fugit voluptatum fugit quidem.', 'Vitae id blanditiis dolorum est. Quos architecto et asperiores doloremque eos quis excepturi. Cum ipsum itaque molestias maxime. Omnis voluptatibus rerum amet eligendi et dolor ea.', 'https://lorempixel.com/640/480/?11773', 'ms-kaia-jerde-dds', NULL, NULL, NULL, 1, 0, '1975-05-24 21:47:56', '2018-03-23 08:00:21'),
(61, 2, 1, 'Nelda Lang DVM', 1850618, NULL, 'Fugiat enim sed et cupiditate eum.', 'Magnam repudiandae dolorem accusamus asperiores repellat commodi veniam consequatur. Et amet provident illum fugiat et totam laboriosam. Ullam nesciunt qui sed totam aut tempore maxime. Soluta sed laudantium ut facilis.', 'https://lorempixel.com/640/480/?39876', 'jake-emmerich-dds', NULL, NULL, NULL, 1, 0, '2003-04-13 06:21:26', '2018-03-23 08:00:21'),
(62, 2, 1, 'Freddie Heidenreich', 1392052, NULL, 'Ab consequatur sapiente corporis ut quaerat ut error.', 'Libero eius dignissimos ullam ipsum repudiandae perspiciatis. Ipsam harum aut libero ullam vel ducimus. Iusto iste dolorem ipsa quis rem quia ut.', 'https://lorempixel.com/640/480/?32189', 'rudolph-reilly', NULL, NULL, NULL, 1, 0, '2011-05-11 12:10:22', '2018-03-23 08:00:21'),
(63, 2, 1, 'Ozella Douglas', 3138155, NULL, 'Vitae perspiciatis nisi voluptatem ad debitis.', 'Cumque ut consequuntur cupiditate minima eos repellat facilis suscipit. Ipsam ullam ipsum esse ut. Omnis ea aut atque. Repellendus dolore qui aut ut enim. Neque possimus voluptatum sint et id minus doloremque.', 'https://lorempixel.com/640/480/?52533', 'jody-rempel', NULL, NULL, NULL, 1, 0, '1970-01-30 14:51:46', '2018-03-23 08:00:21'),
(64, 2, 1, 'Ines Klocko', 1856132, NULL, 'Aut iste qui sed sint tempora quo.', 'Corporis qui qui sed. Velit voluptas et aut esse. Nesciunt sunt culpa consectetur nihil. Ut veritatis molestiae delectus inventore ipsum.', 'https://lorempixel.com/640/480/?54202', 'mitchel-krajcik', NULL, NULL, NULL, 1, 0, '1974-10-08 14:50:13', '2018-03-23 08:00:21'),
(65, 2, 1, 'Mortimer Adams', 1828684, NULL, 'Iusto ut aspernatur quisquam rerum.', 'Maiores corporis et ex dolorem nostrum quibusdam quisquam. Non ut minima vel rerum vero iure. Eos sit quod corrupti explicabo optio non ut.', 'https://lorempixel.com/640/480/?55048', 'jaquelin-kunze-phd', NULL, NULL, NULL, 1, 0, '2013-07-09 01:45:47', '2018-03-23 08:00:21'),
(66, 2, 1, 'Craig Bailey', 4711524, NULL, 'Voluptatum aspernatur odit voluptates cumque deleniti et autem.', 'Praesentium reiciendis tempora vel ducimus repudiandae. Eaque eveniet maxime ipsam nesciunt labore. Quasi modi eveniet repudiandae doloremque.', 'https://lorempixel.com/640/480/?33818', 'dandre-rutherford', NULL, NULL, NULL, 1, 0, '2017-12-20 19:40:52', '2018-03-23 08:00:21'),
(67, 2, 1, 'Isom Marquardt', 4544124, NULL, 'Non suscipit suscipit esse odit.', 'Recusandae ea totam non fugiat vitae quia. Deserunt non necessitatibus voluptate eum facilis aut qui. Dolores magnam assumenda et quia omnis sapiente. Accusamus est ea numquam et doloremque et.', 'https://lorempixel.com/640/480/?63930', 'torey-dooley', NULL, NULL, NULL, 1, 0, '1980-06-10 11:25:06', '2018-03-23 08:00:21'),
(68, 2, 1, 'Loraine Bashirian DDS', 4250177, NULL, 'Aliquam dicta aut debitis est laboriosam.', 'Aut cupiditate cupiditate non quos at sit ratione. Ullam iste sunt accusamus. Iusto veritatis neque veritatis voluptas suscipit non atque. Fugiat illum eligendi est deserunt et ad libero.', 'https://lorempixel.com/640/480/?70504', 'ms-roxane-gusikowski', NULL, NULL, NULL, 1, 0, '1986-11-01 13:48:25', '2018-03-23 08:00:21'),
(69, 2, 1, 'Breana Feeney', 2496037, NULL, 'Blanditiis consequatur commodi ex ut nam cumque non.', 'Hic repudiandae animi magnam. Sint odit incidunt perspiciatis in dignissimos minus voluptatem perferendis. Fugiat consequatur cum et veritatis.', 'https://lorempixel.com/640/480/?72357', 'ernestina-okon', NULL, NULL, NULL, 1, 0, '1987-07-16 01:53:36', '2018-03-23 08:00:21'),
(70, 2, 1, 'Brianne Weber', 123237, NULL, 'Sunt nulla laboriosam odio sequi sit dolorum.', 'Cupiditate pariatur distinctio velit ducimus non optio. Libero veniam qui quos rerum repellendus. Quis quis voluptatem beatae similique.', 'https://lorempixel.com/640/480/?99548', 'frederique-turcotte-jr', NULL, NULL, NULL, 1, 0, '2016-02-25 00:42:17', '2018-03-23 08:00:21'),
(71, 2, 1, 'Prof. Frederick Schneider', 402716, NULL, 'Non aperiam quibusdam sed magnam consequatur est.', 'Cum qui ex explicabo est vero unde. Iure est et itaque sed similique est praesentium consequuntur. Sed quasi quae tenetur eveniet ab quo incidunt at.', 'https://lorempixel.com/640/480/?59457', 'heather-johns-sr', NULL, NULL, NULL, 1, 0, '1977-11-08 15:26:15', '2018-03-23 08:00:21'),
(72, 2, 1, 'Carmelo DuBuque', 4800380, NULL, 'Et laborum saepe temporibus tenetur sunt delectus aliquam.', 'Rerum ducimus provident soluta odit est quis ducimus. Beatae quo praesentium nulla at iure cupiditate. Repudiandae qui dolorem voluptas dolorum quibusdam qui. Ratione fugit saepe assumenda et autem rem officiis.', 'https://lorempixel.com/640/480/?28262', 'kara-orn', NULL, NULL, NULL, 1, 0, '1980-02-09 19:05:27', '2018-03-23 08:00:21'),
(73, 2, 1, 'Esta Ratke', 1159388, NULL, 'Illo quia sequi voluptas.', 'Aut molestiae nisi nesciunt delectus eum. Nesciunt quia id aut vero cupiditate cupiditate tempore. Consequatur voluptatem at est.', 'https://lorempixel.com/640/480/?58557', 'madge-klein', NULL, NULL, NULL, 1, 0, '2002-02-16 09:42:23', '2018-03-23 08:00:21'),
(74, 2, 1, 'Nathanial Metz', 615595, NULL, 'Vel dolorem error omnis sit laboriosam velit.', 'Facilis voluptas aliquid impedit consectetur aut illo. Nobis fuga magnam sint quis laborum placeat. Suscipit temporibus voluptates ut omnis occaecati. Illum esse repudiandae dolorem ex itaque.', 'https://lorempixel.com/640/480/?22840', 'ms-alessia-schneider-jr', NULL, NULL, NULL, 1, 0, '2016-05-10 00:58:30', '2018-03-23 08:00:21'),
(75, 2, 1, 'Prof. Lorenzo Walker', 474556, NULL, 'Ea perferendis aspernatur eveniet beatae ducimus possimus.', 'Officiis voluptatem a ut quasi. Vitae voluptatem dolores ut.', 'https://lorempixel.com/640/480/?27708', 'prof-wilfrid-russel-v', NULL, NULL, NULL, 1, 0, '2003-08-02 20:23:32', '2018-03-23 08:00:21'),
(76, 2, 1, 'Prof. Randall Schuster MD', 4468616, NULL, 'Et et sit odit praesentium voluptatem.', 'Et ut ratione blanditiis aut alias sit tempora in. Nihil rerum repellat laudantium perferendis et. Autem accusantium nobis vero aliquid quis et.', 'https://lorempixel.com/640/480/?67636', 'vernon-carter', NULL, NULL, NULL, 1, 0, '2004-01-06 14:32:36', '2018-03-23 08:00:21'),
(77, 2, 1, 'Muriel Dickinson', 2782059, NULL, 'Quo enim dolores quaerat laborum nam dolore.', 'Tempore labore sed occaecati dolor. Eum id et voluptatem deleniti dolor exercitationem. Hic quod velit dolore voluptatem quas tempore.', 'https://lorempixel.com/640/480/?20201', 'kelly-dare', NULL, NULL, NULL, 1, 0, '1998-05-05 23:24:05', '2018-03-23 08:00:21'),
(78, 2, 1, 'Dr. Nyah Lind I', 3008919, NULL, 'Nihil est maxime culpa error sit quam ducimus enim.', 'Consectetur a enim sequi autem rerum numquam. Unde culpa nulla maxime iusto quam asperiores.', 'https://lorempixel.com/640/480/?57569', 'aryanna-batz', NULL, NULL, NULL, 1, 0, '1991-02-09 03:31:51', '2018-03-23 08:00:21'),
(79, 2, 1, 'Miss Loraine Baumbach', 2396552, NULL, 'Molestiae eum autem quod nobis praesentium qui.', 'Nemo autem dolor occaecati voluptatem maxime rerum numquam. Iusto ea et magni rerum nemo aspernatur nihil aut. Voluptatem ullam repellat itaque quos consequatur eius. Aut non sed quae unde.', 'https://lorempixel.com/640/480/?17000', 'emanuel-corkery', NULL, NULL, NULL, 1, 0, '2015-03-16 09:56:02', '2018-03-23 08:00:21'),
(80, 2, 1, 'Prof. Keanu Treutel', 2789700, NULL, 'Velit sit commodi consequatur error.', 'Deserunt pariatur possimus alias accusamus itaque consequuntur. Delectus non unde quia. Suscipit soluta expedita sit sapiente. Dolore placeat dicta inventore sequi rerum facilis.', 'https://lorempixel.com/640/480/?71906', 'brain-watsica-iii', NULL, NULL, NULL, 1, 0, '1974-11-12 07:32:02', '2018-03-23 08:00:21'),
(81, 2, 1, 'Willie Johnson', 2223504, NULL, 'Occaecati culpa rerum dolores sed eum qui tempore.', 'Et necessitatibus officia deserunt et. Tenetur voluptas sed explicabo consequuntur nam. Facere possimus autem quidem sint. Ea molestiae rerum deleniti cumque doloribus quia.', 'https://lorempixel.com/640/480/?21506', 'josephine-nitzsche', NULL, NULL, NULL, 1, 0, '1995-03-25 12:28:03', '2018-03-23 08:00:21'),
(82, 2, 1, 'Maddison Kutch', 1228989, NULL, 'Adipisci et nostrum at nulla.', 'Rerum at quia dolorem rerum. Tenetur dolorum placeat qui ut voluptatum dolore. Alias ut odio exercitationem inventore. In quia tenetur quam tenetur qui libero aut asperiores.', 'https://lorempixel.com/640/480/?55573', 'otha-howell', NULL, NULL, NULL, 1, 0, '1994-09-19 00:12:56', '2018-03-23 08:00:21'),
(83, 2, 1, 'Delaney Feil', 2238268, NULL, 'Doloremque ipsa aliquam omnis similique quasi repellendus.', 'Aut autem et reprehenderit aliquid repellendus. Pariatur occaecati commodi occaecati corrupti inventore odit. Reprehenderit voluptas nostrum sed nobis impedit iure.', 'https://lorempixel.com/640/480/?69604', 'eleonore-herman', NULL, NULL, NULL, 1, 0, '1989-07-21 04:39:40', '2018-03-23 08:00:21'),
(84, 2, 1, 'Dr. Kirk Adams IV', 2831912, NULL, 'Et sit odio aspernatur aut.', 'Atque iusto occaecati repellat aliquid. Accusamus eos qui dolorum dolor illum rerum eligendi. Qui delectus fugiat quo suscipit et odit illum. Accusamus qui aspernatur quibusdam iste tempore omnis sunt.', 'https://lorempixel.com/640/480/?46956', 'isabell-price', NULL, NULL, NULL, 1, 0, '1995-08-30 20:27:47', '2018-03-23 08:00:21'),
(85, 2, 1, 'Dock Windler V', 3110015, NULL, 'Deleniti adipisci pariatur voluptatem unde voluptas.', 'Beatae sed nesciunt veniam. Aliquid aut nihil tempora. Provident corporis eveniet repellendus. Cumque ratione sint ut incidunt accusantium repellat non quia. Sit dicta in et laboriosam quidem reprehenderit enim.', 'https://lorempixel.com/640/480/?30516', 'isabel-stracke', NULL, NULL, NULL, 1, 0, '2003-08-03 12:04:02', '2018-03-23 08:00:21'),
(86, 2, 1, 'Jerry Morar', 299951, NULL, 'Architecto possimus optio fuga qui aut accusamus ducimus nobis.', 'Ut aut voluptas quasi labore illo. Vitae non at cumque laboriosam voluptatem eligendi ea. Accusantium natus saepe omnis in officiis blanditiis dolore architecto. Earum sed non aliquam cumque.', 'https://lorempixel.com/640/480/?61717', 'kody-jones-md', NULL, NULL, NULL, 1, 0, '1977-02-05 05:53:55', '2018-03-23 08:00:21'),
(87, 2, 1, 'Mrs. Annamae Dibbert DVM', 3580006, NULL, 'Officiis omnis culpa nobis dolorem.', 'Ducimus nam incidunt voluptatem qui ipsa. Ab facilis necessitatibus velit quis est et expedita. Eum animi tempore explicabo rerum voluptates blanditiis officiis error. Natus velit quos id.', 'https://lorempixel.com/640/480/?68689', 'cora-runolfsson', NULL, NULL, NULL, 1, 0, '1992-11-30 00:16:55', '2018-03-23 08:00:21'),
(88, 2, 1, 'Johnny Herzog', 3608742, NULL, 'Reprehenderit ex et possimus expedita non natus.', 'Dolor iste aut qui. Qui corporis id expedita harum. Porro natus et nemo unde tempore. Fugiat qui enim maxime et nemo et ut.', 'https://lorempixel.com/640/480/?52543', 'otho-ondricka', NULL, NULL, NULL, 1, 0, '2007-12-08 07:40:56', '2018-03-23 08:00:21'),
(89, 2, 1, 'Erling Purdy V', 2764462, NULL, 'Fugit non ut voluptas.', 'Dolorum nisi fugit et pariatur iste. Soluta non qui et ipsa. Aut velit et qui illum voluptatum non.', 'https://lorempixel.com/640/480/?14125', 'mr-donald-krajcik', NULL, NULL, NULL, 1, 0, '2011-12-24 01:41:33', '2018-03-23 08:00:21'),
(90, 2, 1, 'Dr. Brad Williamson Jr.', 4276664, NULL, 'Saepe facere temporibus dicta delectus animi.', 'Harum est vel suscipit vitae. Mollitia voluptatem enim nisi sit qui.', 'https://lorempixel.com/640/480/?49908', 'jordy-ullrich', NULL, NULL, NULL, 1, 0, '1971-03-02 21:33:29', '2018-03-23 08:00:21'),
(91, 2, 1, 'Elva Rohan MD', 223039, NULL, 'Autem voluptatem cum rem eaque aut.', 'Voluptatem beatae vero ut soluta ut voluptas nostrum ducimus. Et distinctio quia et quidem. Id et et ullam vel.', 'https://lorempixel.com/640/480/?80286', 'mrs-ofelia-bartell', NULL, NULL, NULL, 1, 0, '1975-09-22 13:35:50', '2018-03-23 08:00:21'),
(92, 2, 1, 'Vilma Nicolas MD', 4623810, NULL, 'Architecto placeat et laboriosam cumque.', 'Praesentium occaecati similique praesentium reprehenderit. Provident vel velit velit mollitia qui voluptas ipsum eius. Aut sunt molestiae id quam molestias in culpa. Optio voluptatem maxime adipisci et voluptatibus.', 'https://lorempixel.com/640/480/?25786', 'kaitlin-schimmel', NULL, NULL, NULL, 1, 0, '2004-08-22 07:04:47', '2018-03-23 08:00:21'),
(93, 2, 1, 'Oren Deckow', 1848570, NULL, 'Recusandae enim in tempora sint nostrum consequatur voluptas.', 'Quo unde ea veniam dolor omnis. Est tenetur reprehenderit repellat error. Vel maiores delectus impedit. Accusantium sit ducimus deserunt eius exercitationem rerum numquam.', 'https://lorempixel.com/640/480/?51185', 'miss-caroline-skiles-dds', NULL, NULL, NULL, 1, 0, '1973-10-14 21:40:54', '2018-03-23 08:00:21'),
(94, 2, 1, 'Dr. Leann Morar', 1342317, NULL, 'Consequuntur quia quia facere autem.', 'Eveniet mollitia itaque quibusdam delectus. Quia officiis qui amet at ex quia possimus. Aliquid aut rerum rerum.', 'https://lorempixel.com/640/480/?22913', 'shania-braun', NULL, NULL, NULL, 1, 0, '2008-06-22 06:55:49', '2018-03-23 08:00:21'),
(95, 2, 1, 'Hyman Brown', 639281, NULL, 'Iure consequatur itaque et corrupti magni sint aut facilis.', 'Voluptate autem est enim illo ut perferendis nisi. Omnis aut vitae voluptatem non odio. Dolorem harum explicabo et officia ut molestias. Ipsa et soluta iste et ut quis.', 'https://lorempixel.com/640/480/?64311', 'daphney-russel', NULL, NULL, NULL, 1, 0, '1973-04-21 18:37:39', '2018-03-23 08:00:21'),
(96, 2, 1, 'Camilla Parker', 2744196, NULL, 'Itaque minima est vel voluptatem velit.', 'Qui minima iure ut. Qui illo fugiat fugiat.', 'https://lorempixel.com/640/480/?76042', 'vada-lynch', NULL, NULL, NULL, 1, 0, '1995-01-06 06:19:06', '2018-03-23 08:00:21'),
(97, 2, 1, 'Lindsay Runte', 3205101, NULL, 'Sed quis aut sunt iusto molestiae officiis illo.', 'Aut dicta et sint omnis. Repudiandae error in ut perferendis. A error ut quis occaecati. Tempore accusamus ut quae et.', 'https://lorempixel.com/640/480/?48350', 'elliott-greenfelder', NULL, NULL, NULL, 1, 0, '2001-07-02 13:07:55', '2018-03-23 08:00:21'),
(98, 2, 1, 'Dr. Josue Gleason Jr.', 2775862, NULL, 'Temporibus dolorem ut voluptatem natus.', 'Nesciunt enim eos repellat voluptas temporibus omnis enim. Non et vel enim explicabo vitae nihil doloribus.', 'https://lorempixel.com/640/480/?52758', 'mr-hayden-kautzer-i', NULL, NULL, NULL, 1, 0, '1974-09-13 12:06:05', '2018-03-23 08:00:21'),
(99, 2, 1, 'Wiley Veum', 1474216, NULL, 'Nulla rerum tempore fugiat sint quidem est.', 'Asperiores quos quis iste amet omnis voluptatum. Qui et rem accusantium laborum id id impedit. Fugiat excepturi incidunt molestiae quia qui rem. Eaque eos eum qui perspiciatis similique dolorem.', 'https://lorempixel.com/640/480/?48182', 'dr-blair-wehner-md', NULL, NULL, NULL, 1, 0, '1996-10-12 09:25:25', '2018-03-23 08:00:21'),
(100, 2, 1, 'Raquel Kreiger', 914031, NULL, 'Et quia ipsa ut consequatur.', 'Odio et facere molestiae ipsa nesciunt. Rerum voluptate iure quas aut. Molestiae voluptas exercitationem ut et unde quae et. Laborum nisi et fugiat expedita sit.', 'https://lorempixel.com/640/480/?93937', 'prof-chelsie-frami-ii', NULL, NULL, NULL, 1, 0, '2007-08-09 07:35:44', '2018-03-23 08:00:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(3, 'email', 'hunghai@gmail.com', '2018-03-23 11:08:49', '2018-03-23 11:08:49'),
(4, 'phone', '01685062308', '2018-03-23 11:09:16', '2018-03-23 11:09:16'),
(5, 'countdown', '26/3/2018', '2018-03-24 18:19:33', '2018-03-24 18:19:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptions` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `order` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `title`, `sub_title`, `descriptions`, `link`, `title_link`, `image`, `type`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, '/photos/1/banner/Best-Abstract-Art-Wallpaper-HD.jpg', '0', 1, NULL, '2018-03-30 18:08:55', '2018-03-30 18:08:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `species`
--

CREATE TABLE `species` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avartar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `full_name`, `address`, `phone`, `avartar`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hai Duc Nguyen', 'duchai196@gmail.com', '$2y$10$FXefMJbITCrOpTbT0PBuXuKcxG.fArJBVx2NVAD8mImn39lWCIhpW', NULL, NULL, NULL, NULL, 0, 'a3kn52GLJ2IQc3W3Rhj04q7FZhuHR6US6sR92hFFdKVBfs5tbV2AFO51fFfp', '2018-02-26 08:46:27', '2018-02-26 08:46:27');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `countdowns`
--
ALTER TABLE `countdowns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countdowns_product_id_unique` (`product_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `img_products`
--
ALTER TABLE `img_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `species`
--
ALTER TABLE `species`
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
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `countdowns`
--
ALTER TABLE `countdowns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `img_products`
--
ALTER TABLE `img_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `species`
--
ALTER TABLE `species`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `img_products`
--
ALTER TABLE `img_products`
  ADD CONSTRAINT `img_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
