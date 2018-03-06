-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 05, 2018 lúc 03:34 PM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.1.8

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
(1, 'Nike', NULL, '2018-02-26 08:43:26', '2018-02-26 08:43:26'),
(2, 'Adidas', NULL, '2018-02-26 08:43:55', '2018-02-26 08:43:55'),
(3, 'Puma', NULL, '2018-02-26 08:44:01', '2018-02-26 08:44:01');

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
(5, 0, 'Cầu lông', 'cau-long', 'product', '2018-02-28 08:11:06', '2018-02-28 08:11:06'),
(6, 0, 'Bóng đá', 'bong-da', 'product', '2018-02-28 08:11:15', '2018-02-28 08:11:15'),
(7, 0, 'Máy chạy bộ điện HQ 222', 'may-chay-bo-dien-hq-222', 'product', '2018-02-28 08:12:35', '2018-02-28 08:12:35'),
(9, 0, 'Tin tức', 'tin-tuc', 'post', '2018-02-28 10:47:19', '2018-02-28 10:47:19');

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

--
-- Đang đổ dữ liệu cho bảng `img_products`
--

INSERT INTO `img_products` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, '/photos/1/abc/3-490x450.jpg', '2018-02-26 08:46:50', '2018-02-26 08:46:50'),
(2, 2, '/photos/1/abc/4-490x450.jpg', '2018-02-26 08:46:50', '2018-02-26 08:46:50');

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
(29, '2018_03_02_063705_create_failed_jobs_table', 2);

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
(1, 9, 'Tiêu Nếu mình biết mình cũng sẽ k mách bạn đâu', 'Chẳng có cái vẹo gì', '<div id=\"comment_js_3\" class=\"UFIRow UFIComment _4oep\" role=\"article\" aria-label=\"B&igrave;nh luận\" data-ft=\"{\">\r\n<div class=\"_3b-9\">\r\n<div>\r\n<div class=\"clearfix\">\r\n<div class=\"\">\r\n<div class=\"UFIImageBlockContent _42ef\">\r\n<div class=\"UFICommentContentBlock\">\r\n<div class=\"UFICommentContent\">\r\n<div class=\"_26f8\">\r\n<div class=\"_10la _10lg\"><span class=\" UFICommentActorAndBody\"><span data-ft=\"{\"><span class=\"UFICommentBody\">bạn kia t&igrave;m chỗ thực tập m&agrave; đ&ograve;i cao thế&nbsp;<span class=\"_47e3 _5mfr\" title=\"Biểu tượng cảm x&uacute;c pacman\"><img class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" aria-hidden=\"true\">:v</span></span></span></span></span></div>\r\n<span class=\"_36rj\"><a class=\"UFICommentCloseButton _1-be _xw0 _xw9 _5upp _42ft\" href=\"https://www.facebook.com/axit.clohidric.71/posts/2017973348415990?comment_id=2017992748414050&amp;notif_id=1519839867425931&amp;notif_t=feed_comment_reply&amp;ref=notif\" aria-label=\"Ẩn\" data-testid=\"ufi_comment_close_button\" data-hover=\"tooltip\" data-tooltip-alignh=\"center\" data-tooltip-content=\"Ẩn\">Quản l&yacute;</a></span></div>\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"fsm fwn fcg UFICommentActions\">\r\n<div class=\"_khz _4sz1 _4rw5 _3wv2\"><a class=\"UFILikeLink UFIReactionLink\" tabindex=\"0\" role=\"button\" href=\"https://www.facebook.com/axit.clohidric.71/posts/2017973348415990?comment_id=2017992748414050&amp;notif_id=1519839867425931&amp;notif_t=feed_comment_reply&amp;ref=notif\" aria-pressed=\"false\" data-testid=\"ufi_comment_like_link\">Th&iacute;ch</a><span class=\"accessible_elem\" tabindex=\"-1\" role=\"button\" data-accessibilityid=\"virtual_cursor_trigger\">Hiển thị th&ecirc;m cảm x&uacute;c</span></div>\r\n<span role=\"presentation\" aria-hidden=\"true\">&nbsp;&middot;&nbsp;</span><a class=\"UFIReplyLink _460i\" role=\"button\" href=\"https://www.facebook.com/axit.clohidric.71/posts/2017973348415990?comment_id=2017992748414050&amp;notif_id=1519839867425931&amp;notif_t=feed_comment_reply&amp;ref=notif\">Trả lời</a><span role=\"presentation\" aria-hidden=\"true\">&nbsp;&middot;&nbsp;</span><a class=\"uiLinkSubtle\" href=\"https://www.facebook.com/axit.clohidric.71/posts/2017973348415990?comment_id=2017978171748841&amp;comment_tracking=%7B%22tn%22%3A%22R3%22%7D\" data-ft=\"{\" data-testid=\"ufi_comment_timestamp\"><abbr class=\"livetimestamp\" title=\"28 Th&aacute;ng 2 2018 l&uacute;c 23:52\" data-utime=\"1519836748\" data-minimize=\"true\" data-shorten=\"true\"><span class=\"timestampContent\">55 ph&uacute;t</span></abbr></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\" UFIReplyList\">\r\n<div class=\"UFIRow UFIReplySocialSentenceRow _4204 _2o9m\">\r\n<div class=\"clearfix\">\r\n<div class=\"_ohe lfloat\">\r\n<div class=\"UFIReplyActorPhotoWrapper UFIReplyActor img _8o _8r UFIImageBlockImage\"><img class=\"img UFIActorImage _54ru img\" src=\"https://scontent.fhan2-3.fna.fbcdn.net/v/t1.0-1/p32x32/12313520_406255852904468_786169062635726125_n.jpg?oh=9bc665469830552c192946f49b8577ef&amp;oe=5B06392F\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"\">\r\n<div class=\"UFIImageBlockContent _42ef _8u\"><span class=\"\"><span class=\"UFIReplySocialSentenceLinkText\">Binh Tran đ&atilde; trả lời<span role=\"presentation\" aria-hidden=\"true\">&nbsp;&middot;&nbsp;</span>2 phản hồi</span><span class=\"fcg\"><span role=\"presentation\" aria-hidden=\"true\">&nbsp;&middot;&nbsp;</span><abbr class=\"livetimestamp\" title=\"28 Th&aacute;ng 2 2018 l&uacute;c 23:55\" data-utime=\"1519836926\" data-shorten=\"true\"><span class=\"timestampContent\">52 ph&uacute;t</span></abbr></span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"comment_js_4\" class=\"UFIRow UFIComment _4oep\" role=\"article\" aria-label=\"B&igrave;nh luận\" data-ft=\"{\">\r\n<div class=\"_3b-9\">\r\n<div>\r\n<div class=\"clearfix\">\r\n<div class=\"_ohe lfloat\"><a class=\"img _8o _8s UFIImageBlockImage\" tabindex=\"-1\" href=\"https://www.facebook.com/nam.kieu.90857901?fref=ufi\" data-ft=\"{\" data-hovercard=\"/ajax/hovercard/hovercard.php?id=100023276116424&amp;extragetparams=%7B%22on_public_ufi%22%3Afalse%2C%22hc_location%22%3A%22ufi%22%7D\" aria-hidden=\"true\"><img class=\"img UFIActorImage _54ru img\" src=\"https://scontent.fhan2-3.fna.fbcdn.net/v/t1.0-1/p32x32/28379328_174404760012060_2524407835834926382_n.jpg?oh=e79deb4d2f1e209658344728c3dd45fa&amp;oe=5B03109D\" alt=\"Kiều Nhật Nam\" /></a></div>\r\n<div class=\"\">\r\n<div class=\"UFIImageBlockContent _42ef\">\r\n<div class=\"UFICommentContentBlock\">\r\n<div class=\"UFICommentContent\">\r\n<div class=\"_26f8\">\r\n<div class=\"_10la\"><span class=\" UFICommentActorAndBody\"><span class=\"\"><a class=\" UFICommentActorName\" dir=\"ltr\" href=\"https://www.facebook.com/nam.kieu.90857901?fref=ufi\" data-ft=\"{\" data-hovercard=\"/ajax/hovercard/hovercard.php?id=100023276116424&amp;extragetparams=%7B%22is_public%22%3Afalse%2C%22hc_location%22%3A%22ufi%22%7D\">Kiều Nhật Nam</a></span>&nbsp;<span data-ft=\"{\"><span class=\"UFICommentBody\">Qu&aacute; đ&aacute;ng vl&nbsp;<span class=\"_47e3 _5mfr\"><img class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fd0/1/16/1f602.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\">😂</span></span><span class=\"_47e3 _5mfr\"><img class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fd0/1/16/1f602.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\">😂</span></span><span class=\"_47e3 _5mfr\"><img class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/fd0/1/16/1f602.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\">😂</span></span></span></span></span></div>\r\n<span class=\"_36rj\"><a class=\"UFICommentCloseButton _1-be _xw0 _xw9 _5upp _42ft\" href=\"https://www.facebook.com/axit.clohidric.71/posts/2017973348415990?comment_id=2017992748414050&amp;notif_id=1519839867425931&amp;notif_t=feed_comment_reply&amp;ref=notif\" aria-label=\"Ẩn\" data-testid=\"ufi_comment_close_button\" data-hover=\"tooltip\" data-tooltip-alignh=\"center\" data-tooltip-content=\"Ẩn\">Quản l&yacute;</a></span></div>\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"fsm fwn fcg UFICommentActions\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\" UFIReplyList\">\r\n<div class=\"UFIRow UFIReplySocialSentenceRow _4204 _2o9m\">\r\n<div class=\"clearfix\">\r\n<div class=\"_ohe lfloat\">\r\n<div class=\"UFIReplyActorPhotoWrapper UFIReplyActor img _8o _8r UFIImageBlockImage\"><img class=\"img UFIActorImage _54ru img\" src=\"https://scontent.fhan2-3.fna.fbcdn.net/v/t1.0-1/c4.0.24.24/p24x24/28168469_2017034358509889_430415571899869911_n.jpg?oh=b63947727f060a5fa349954b54e40197&amp;oe=5B40A5A8\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"\">\r\n<div class=\"UFIImageBlockContent _42ef _8u\"><span class=\"\"><span class=\"UFIReplySocialSentenceLinkText\">Quy&ecirc;n H&agrave; đ&atilde; trả lời<span role=\"presentation\" aria-hidden=\"true\">&nbsp;&middot;&nbsp;</span>3 phản hồi</span><span class=\"fcg\"><span role=\"presentation\" aria-hidden=\"true\">&nbsp;&middot;&nbsp;</span><abbr class=\"livetimestamp\" title=\"1 Th&aacute;ng 3 2018 l&uacute;c 0:06\" data-utime=\"1519837585\" data-shorten=\"true\"><span class=\"timestampContent\">41 ph&uacute;t</span></abbr></span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"comment_js_5\" class=\"UFIRow UFIComment _4oep\" role=\"article\" aria-label=\"B&igrave;nh luận\" data-ft=\"{\">\r\n<div class=\"_3b-9\">\r\n<div>\r\n<div class=\"clearfix\">\r\n<div class=\"_ohe lfloat\"><a class=\"img _8o _8s UFIImageBlockImage\" tabindex=\"-1\" href=\"https://www.facebook.com/profile.php?id=100005253556863&amp;fref=ufi\" data-ft=\"{\" data-hovercard=\"/ajax/hovercard/hovercard.php?id=100005253556863&amp;extragetparams=%7B%22on_public_ufi%22%3Afalse%2C%22hc_location%22%3A%22ufi%22%7D\" aria-hidden=\"true\"><img class=\"img UFIActorImage _54ru img\" src=\"https://scontent.fhan2-3.fna.fbcdn.net/v/t1.0-1/p32x32/27336409_768686739983104_980178398667165745_n.jpg?oh=1c9bc81c9f6d8285ef97b0ed4f5d784e&amp;oe=5B125A2D\" alt=\"Giỏi Trần\" /></a></div>\r\n<div class=\"\">\r\n<div class=\"UFIImageBlockContent _42ef\">\r\n<div class=\"UFICommentContentBlock\">\r\n<div class=\"UFICommentContent\">\r\n<div class=\"_26f8\">\r\n<div class=\"_10la\"><span class=\" UFICommentActorAndBody\"><span class=\"\"><a class=\" UFICommentActorName\" dir=\"ltr\" href=\"https://www.facebook.com/profile.php?id=100005253556863&amp;fref=ufi\" data-ft=\"{\" data-hovercard=\"/ajax/hovercard/hovercard.php?id=100005253556863&amp;extragetparams=%7B%22is_public%22%3Afalse%2C%22hc_location%22%3A%22ufi%22%7D\">Giỏi Trần</a></span>&nbsp;<span data-ft=\"{\"><span class=\"UFICommentBody\">mở combat hay v&atilde;i&nbsp;<span class=\"_47e3 _5mfr\" title=\"Biểu tượng cảm x&uacute;c pacman\"><img class=\"img\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/e31/1/16/PACMAN.png\" alt=\"\" width=\"16\" height=\"16\" /><span class=\"_7oe\" aria-hidden=\"true\">:v</span></span></span></span></span></div>\r\n<span class=\"_36rj\"><a class=\"UFICommentCloseButton _1-be _xw0 _xw9 _5upp _42ft\" href=\"https://www.facebook.com/axit.clohidric.71/posts/2017973348415990?comment_id=2017992748414050&amp;notif_id=1519839867425931&amp;notif_t=feed_comment_reply&amp;ref=notif\" aria-label=\"Ẩn\" data-testid=\"ufi_comment_close_button\" data-hover=\"tooltip\" data-tooltip-alignh=\"center\" data-tooltip-content=\"Ẩn\">Quản l&yacute;</a></span></div>\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"fsm fwn fcg UFICommentActions\">\r\n<div class=\"_khz _4sz1 _4rw5 _3wv2\"><a class=\"UFILikeLink UFIReactionLink\" tabindex=\"0\" role=\"button\" href=\"https://www.facebook.com/axit.clohidric.71/posts/2017973348415990?comment_id=2017992748414050&amp;notif_id=1519839867425931&amp;notif_t=feed_comment_reply&amp;ref=notif\" aria-pressed=\"false\" data-testid=\"ufi_comment_like_link\">Th&iacute;ch</a><span class=\"accessible_elem\" tabindex=\"-1\" role=\"button\" data-accessibilityid=\"virtual_cursor_trigger\">Hiển thị th&ecirc;m cảm x&uacute;c</span></div>\r\n<span role=\"presentation\" aria-hidden=\"true\">&nbsp;&middot;&nbsp;</span><a class=\"UFIReplyLink _460i\" role=\"button\" href=\"https://www.facebook.com/axit.clohidric.71/posts/2017973348415990?comment_id=2017992748414050&amp;notif_id=1519839867425931&amp;notif_t=feed_comment_reply&amp;ref=notif\">Trả lời</a><span role=\"presentation\" aria-hidden=\"true\">&nbsp;&middot;&nbsp;</span><a class=\"uiLinkSubtle\" href=\"https://www.facebook.com/axit.clohidric.71/posts/2017973348415990?comment_id=2017981991748459&amp;comment_tracking=%7B%22tn%22%3A%22R1%22%7D\" data-ft=\"{\" data-testid=\"ufi_comment_timestamp\"><abbr class=\"livetimestamp\" title=\"1 Th&aacute;ng 3 2018 l&uacute;c 0:08\" data-utime=\"1519837684\" data-minimize=\"true\" data-shorten=\"true\"><span class=\"timestampContent\">39 ph&uacute;t</span></abbr></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\" UFIReplyList\">\r\n<div class=\"UFIRow UFIReplySocialSentenceRow _4204 _2o9m\">\r\n<div class=\"clearfix\">\r\n<div class=\"_ohe lfloat\">\r\n<div class=\"UFIReplyActorPhotoWrapper UFIReplyActor img _8o _8r UFIImageBlockImage\"><img class=\"img UFIActorImage _54ru img\" src=\"https://scontent.fhan2-3.fna.fbcdn.net/v/t1.0-1/c4.0.24.24/p24x24/28168469_2017034358509889_430415571899869911_n.jpg?oh=b63947727f060a5fa349954b54e40197&amp;oe=5B40A5A8\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"\">\r\n<div class=\"UFIImageBlockContent _42ef _8u\"><span class=\"\"><span class=\"UFIReplySocialSentenceLinkText\">Quy&ecirc;n H&agrave; đ&atilde; trả lời<span role=\"presentation\" aria-hidden=\"true\">&nbsp;&middot;&nbsp;</span>1 c&acirc;u trả lời</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"comment_js_6\" class=\"UFIRow UFIComment _4oep\" role=\"article\" aria-label=\"B&igrave;nh luận\" data-ft=\"{\">\r\n<div class=\"_3b-9\">\r\n<div>\r\n<div class=\"clearfix\">\r\n<div class=\"_ohe lfloat\"><a class=\"img _8o _8s UFIImageBlockImage\" tabindex=\"-1\" href=\"https://www.facebook.com/hai.bom.345?fref=ufi\" data-ft=\"{\" data-hovercard=\"/ajax/hovercard/hovercard.php?id=100004287884372&amp;extragetparams=%7B%22on_public_ufi%22%3Afalse%2C%22hc_location%22%3A%22ufi%22%7D\" aria-hidden=\"true\"><img class=\"img UFIActorImage _54ru img\" src=\"https://scontent.fhan2-3.fna.fbcdn.net/v/t1.0-1/p32x32/22089691_926821744137413_6062111839636797118_n.jpg?oh=a6f589597dfe797e7a98285c9537dd5b&amp;oe=5B1571CE\" alt=\"Hải Đức\" /></a></div>\r\n<div class=\"\">\r\n<div class=\"UFIImageBlockContent _42ef\">\r\n<div class=\"UFICommentContentBlock\">\r\n<div class=\"UFICommentContent\">\r\n<div class=\"_26f8\">\r\n<div class=\"_10la _10lg\"><span class=\" UFICommentActorAndBody\"><span class=\"\"><a class=\" UFICommentActorName\" dir=\"ltr\" href=\"https://www.facebook.com/hai.bom.345?fref=ufi\" data-ft=\"{\" data-hovercard=\"/ajax/hovercard/hovercard.php?id=100004287884372&amp;extragetparams=%7B%22is_public%22%3Afalse%2C%22hc_location%22%3A%22ufi%22%7D\">Hải Đức</a></span>&nbsp;<span data-ft=\"{\"><span class=\"UFICommentBody\">L&agrave;m v&agrave;o đ&oacute; hỏi k&eacute; chỗ thực tập m&agrave; kh&ocirc;ng được nốt!</span></span></span>\r\n<div class=\"_10lo _10lp\">\r\n<div class=\"_3t53 UFICommentReactionsBling _4ar- _ipn\"><span class=\"UFICommentLikeButton\">1</span></div>\r\n</div>\r\n</div>\r\n<span class=\"_36rj\"><a class=\"UFICommentCloseButton _1-be _xw0 _xw9 _5upp _42ft\" href=\"https://www.facebook.com/axit.clohidric.71/posts/2017973348415990?comment_id=2017992748414050&amp;notif_id=1519839867425931&amp;notif_t=feed_comment_reply&amp;ref=notif\" aria-label=\"Chỉnh sửa hoặc x&oacute;a\" data-testid=\"ufi_comment_close_button\" data-hover=\"tooltip\" data-tooltip-alignh=\"center\" data-tooltip-content=\"Chỉnh sửa hoặc x&oacute;a\">Quản l&yacute;</a></span></div>\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"fsm fwn fcg UFICommentActions\">\r\n<div class=\"_khz _4sz1 _4rw5 _3wv2\"><a class=\"UFILikeLink UFIReactionLink\" tabindex=\"0\" role=\"button\" href=\"https://www.facebook.com/axit.clohidric.71/posts/2017973348415990?comment_id=2017992748414050&amp;notif_id=1519839867425931&amp;notif_t=feed_comment_reply&amp;ref=notif\" aria-pressed=\"false\" data-testid=\"ufi_comment_like_link\">Th&iacute;ch</a><span class=\"accessible_elem\" tabindex=\"-1\" role=\"button\" data-accessibilityid=\"virtual_cursor_trigger\">Hiển thị th&ecirc;m cảm x&uacute;c</span></div>\r\n<span role=\"presentation\" aria-hidden=\"true\">&nbsp;&middot;&nbsp;</span><a class=\"UFIReplyLink _460i\" role=\"button\" href=\"https://www.facebook.com/axit.clohidric.71/posts/2017973348415990?comment_id=2017992748414050&amp;notif_id=1519839867425931&amp;notif_t=feed_comment_reply&amp;ref=notif\">Trả lời</a><span role=\"presentation\" aria-hidden=\"true\">&nbsp;&middot;&nbsp;</span><a class=\"uiLinkSubtle\" href=\"https://www.facebook.com/axit.clohidric.71/posts/2017973348415990?comment_id=2017986598414665&amp;comment_tracking=%7B%22tn%22%3A%22R0%22%7D\" data-ft=\"{\" data-testid=\"ufi_comment_timestamp\"><abbr class=\"livetimestamp\" title=\"1 Th&aacute;ng 3 2018 l&uacute;c 0:23\" data-utime=\"1519838620\" data-minimize=\"true\" data-shorten=\"true\"><span class=\"timestampContent\">24 ph&uacute;t</span></abbr></a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\" UFIReplyList\">\r\n<div class=\"UFIRow UFIReplySocialSentenceRow _4204 _2o9m\">\r\n<div class=\"clearfix\">\r\n<div class=\"_ohe lfloat\">\r\n<div class=\"UFIReplyActorPhotoWrapper UFIReplyActor img _8o _8r UFIImageBlockImage\"><img class=\"img UFIActorImage _54ru img\" src=\"https://scontent.fhan2-3.fna.fbcdn.net/v/t1.0-1/p32x32/22089691_926821744137413_6062111839636797118_n.jpg?oh=a6f589597dfe797e7a98285c9537dd5b&amp;oe=5B1571CE\" alt=\"\" /></div>\r\n</div>\r\n<div class=\"\">\r\n<div class=\"UFIImageBlockContent _42ef _8u\"><span class=\"\"><span class=\"UFIReplySocialSentenceLinkText\">Hải Đức đ&atilde; trả lời<span role=\"presentation\" aria-hidden=\"true\">&nbsp;&middot;&nbsp;</span>9 phản hồi</span><span class=\"fcg\"><span role=\"presentation\" aria-hidden=\"true\">&nbsp;</span></span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', NULL, '', NULL, NULL, 0, 0, '2018-02-28 10:47:58', '2018-03-01 10:51:40');

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `order` tinyint(4) NOT NULL,
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
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `img_products`
--
ALTER TABLE `img_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
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
