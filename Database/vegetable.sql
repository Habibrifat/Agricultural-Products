-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2022 at 06:21 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vegetable`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT 0,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'admin@gmail.com', '01774560076', 0, '1646587130admin-1.png', '$2y$10$p35S2FczpEfpbe41CX4j4.XE548tHBtF5weGLPxZ56MX5dsOFtaCC', 1, 'POuUncscDunsP1rr5LXUM4ojRGMRO5cVmdJAf6s9HxMFeYBSyAXVt2Wobl9Y', '2018-02-28 23:27:08', '2022-03-14 03:12:56', 'Agricultural Products');

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_conversations`
--

INSERT INTO `admin_user_conversations` (`id`, `subject`, `user_id`, `message`, `created_at`, `updated_at`, `type`, `order_number`) VALUES
(13, 'about product', 74, 'tnx for purchasing', '2022-03-19 07:03:35', '2022-03-19 07:03:35', NULL, NULL),
(14, 'so late', 74, 'why so late to product delivery', '2022-03-19 07:17:13', '2022-03-19 07:17:13', 'Dispute', 'EtJaOhO5h4'),
(15, 'ok', 74, 'tnx', '2022-03-19 07:19:50', '2022-03-19 07:19:50', NULL, NULL),
(16, 'efe', 85, 'vvvvvvvv', '2022-03-19 08:25:42', '2022-03-19 08:25:42', 'Dispute', 'weresewrw3454');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_user_messages`
--

INSERT INTO `admin_user_messages` (`id`, `conversation_id`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(20, 13, 'tnx for purchasing', NULL, '2022-03-19 07:03:35', '2022-03-19 07:03:35'),
(21, 14, 'why so late to product delivery', 74, '2022-03-19 07:17:13', '2022-03-19 07:17:13'),
(22, 15, 'tnx', NULL, '2022-03-19 07:19:50', '2022-03-19 07:19:50'),
(23, 14, 'ok', 74, '2022-03-19 07:21:07', '2022-03-19 07:21:07'),
(24, 14, 'welcome', NULL, '2022-03-19 07:21:40', '2022-03-19 07:21:40'),
(25, 14, 'ok.....', NULL, '2022-03-19 07:22:04', '2022-03-19 07:22:04'),
(26, 16, 'vvvvvvvv', 85, '2022-03-19 08:25:42', '2022-03-19 08:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `is_featured`, `image`) VALUES
(20, 'Fresh Vegetables', 'fresh-vegetables', 1, '1643787871broccoli.png', 0, NULL),
(23, 'Fresh Masala', 'fresh-masala', 1, '1646649758masala-1.jpg', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `text`, `created_at`, `updated_at`) VALUES
(2, 74, 216, 'nice service', '2022-03-21 17:06:33', '2022-03-21 17:06:33'),
(3, 88, 219, 'nice', '2022-03-21 18:58:13', '2022-03-21 18:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT 0,
  `todays_count` int(11) NOT NULL DEFAULT 0,
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(19, 'browser', 'Windows 10', 38, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'DH', 'Dhaka'),
(2, 'CH', 'Chittagong'),
(3, 'RH', 'Rajshahi'),
(4, 'SY', 'Sylhet'),
(5, 'KH', 'Khulna'),
(6, 'BS', 'Barisal'),
(7, 'RG', 'Rangpur'),
(8, 'MY', 'Mymensingh');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`) VALUES
(1, 'eqwe', 1, 12.22, '990', 18, 1, '2019-01-15', '2026-08-20'),
(2, 'sdsdsasd', 0, 11, NULL, 2, 1, '2019-05-23', '2022-05-26'),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08'),
(4, 'asdasd', 1, 23.5, NULL, 1, 1, '2019-05-23', '2020-05-28'),
(5, 'kopakopakopa', 0, 40, NULL, 3, 1, '2019-05-23', '2032-05-20'),
(6, 'rererere', 1, 9, '665', 1, 1, '2019-05-23', '2022-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'BDT', '৳', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Agricultural Products', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(265, 202, '1646466195pape-7.png'),
(266, 202, '1646466195papa-6.jpg'),
(267, 203, '1646467658beans-3.jpg'),
(268, 203, '1646467658beans-1.jpg'),
(269, 204, '1646468401Corn-3.jpg'),
(270, 204, '1646468401Corn-1.jpg'),
(271, 205, '1646469339Sweetpumpkin-4.jpg'),
(272, 205, '1646469339Sweetpumpkin-3.jpg'),
(273, 206, '1646470068Orka-3jpg.jpg'),
(274, 206, '1646470068Orka-2.jpg'),
(275, 207, '1646470889radish-3.jpg'),
(276, 207, '1646470889radish-2.jpg'),
(277, 208, '1646471848kochur-loti-4.png'),
(278, 208, '1646471848loti-2.jpg'),
(279, 209, '1646472519jhinga-3.jpg'),
(280, 209, '1646472519jhinga-2.jpg'),
(281, 209, '1646472519jhinga-1.jpg'),
(282, 210, '1646472915chalkumra-3.jpg'),
(283, 210, '1646472915chalkumra-2.jpg'),
(284, 211, '1646473541lau-4.jpg'),
(285, 211, '1646473541lau-3.jpg'),
(286, 211, '1646473541lau-1.jpg'),
(287, 212, '1646476243korolauccha-2.jpg'),
(288, 212, '1646476243korolauccha-1.jpg'),
(289, 213, '1646476513korola-3.jpg'),
(290, 213, '1646476513korola-1.jpg'),
(291, 213, '1646476513korola-2.jpg'),
(292, 214, '1646477269Chilie-3.jpg'),
(293, 214, '1646477269Chilie-2.jpg'),
(294, 215, '1646478005cicinga-3.jpg'),
(295, 215, '1646478005cicinga-1.jpg'),
(296, 216, '1646511078tomatonew-4.jpg'),
(297, 216, '1646511078tomatonew-3.jpg'),
(298, 216, '1646511078tomatonew-2.jpg'),
(299, 216, '1646511078tomatonew-1.jpg'),
(300, 217, '1646511683tomatokacha-2.jpg'),
(301, 217, '1646511683tomatokacha-1.jpg'),
(302, 218, '1646512081cabbage-3.jpg'),
(303, 218, '1646512081cabbage-2.jpg'),
(304, 219, '1646512627Broccoli-4.jpg'),
(305, 219, '1646512627Broccoli-2.jpg'),
(306, 220, '1646513129fullkopi-4.jpg'),
(307, 220, '1646513129fullkopi-3.jpg'),
(308, 220, '1646513129fullkopi-2.jpg'),
(309, 221, '1646513600carrot-3.jpg'),
(310, 221, '1646513600carrot-2.jpg'),
(311, 222, '1646514219onion4.jpg'),
(312, 222, '1646514219onion2.jpg'),
(313, 222, '1646514219onion1.jpg'),
(314, 223, '1646514802onion-imported-2.jpg'),
(315, 223, '1646514802onion-imported-1.jpg'),
(316, 224, '1646515611garlic-3.jpg'),
(317, 224, '1646515611garlic-2.jpg'),
(318, 225, '1646516025garlic-impoted-2.jpg'),
(319, 225, '1646516025garlic-impoted-3.jpg'),
(320, 226, '1646519948dimondalu-3.jpg'),
(321, 226, '1646519949dimondalu-2.jpg'),
(322, 226, '1646519949dimondalu-1.jpg'),
(327, 228, '1646521251jaam-alu-2.jpg'),
(328, 228, '1646521251jaam-alu-1.jpg'),
(330, 227, 'Wiae1AO08E.jpg'),
(334, 227, '8RMKoSMrbH.jpg'),
(335, 227, '4TTomm1dX5.jpg'),
(336, 227, 'zq3z7NNTZO.jpg'),
(337, 227, 'PX7H1ucmyP.jpg'),
(339, 227, 'LgXWjcTEX8.jpg'),
(340, 229, '1646522235sweetpotato-3.jpg'),
(341, 229, '1646522235sweetpotato-2.jpg'),
(344, 240, '1647685098begun-3.jpg'),
(345, 240, '1647685098begun-2.jpg'),
(346, 240, '1647685098begun-1.jpg'),
(347, 241, '1647685316begun-lomg-4.jpg'),
(348, 241, '1647685317begun-lomg-2.jpg'),
(349, 241, '1647685317begun-lomg-1.jpg'),
(350, 242, '1647685826shalgom-3.jpg'),
(351, 242, '1647685826shalgom-2.jpg'),
(352, 243, '1647686189kacha-kola-3.jpg'),
(353, 243, '1647686189kacha-kola-2.jpg'),
(354, 244, '1647686565ada-2.jpg'),
(355, 244, '1647686565ada-1.jpg'),
(357, 246, '1647770327farmer_potato-5.jpg'),
(358, 246, '1647770327farmer_potato-7.jpg'),
(359, 255, '1647810409farmer-piyaj-1.jpg'),
(360, 255, '1647810409farmer-piyaj-3.jpg'),
(361, 256, '1647811483farmer-ada-2.jpeg'),
(362, 257, '1647812234farmer-roshon-3.jpg'),
(363, 258, '1648494703labu-1.jpg'),
(364, 259, '1648496660farmer-roshon-1.jpg'),
(365, 260, '1648640697farmer_potato-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT 1,
  `talkto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_language` tinyint(1) NOT NULL DEFAULT 1,
  `is_loader` tinyint(1) NOT NULL DEFAULT 1,
  `map_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disqus` tinyint(1) NOT NULL DEFAULT 0,
  `disqus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_contact` tinyint(1) NOT NULL DEFAULT 0,
  `is_faq` tinyint(1) NOT NULL DEFAULT 0,
  `guest_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_check` tinyint(1) NOT NULL DEFAULT 0,
  `cod_check` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_format` tinyint(1) NOT NULL DEFAULT 0,
  `withdraw_fee` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `is_comment` tinyint(1) NOT NULL DEFAULT 1,
  `is_currency` tinyint(1) NOT NULL DEFAULT 1,
  `add_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_stock` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_wish` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_wish` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_remove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_compare` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_compare` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_remove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_change` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_found` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_coupon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_coupon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_affilate` tinyint(1) NOT NULL DEFAULT 1,
  `affilate_charge` int(100) NOT NULL DEFAULT 0,
  `affilate_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_commission` double NOT NULL DEFAULT 0,
  `percentage_commission` double NOT NULL DEFAULT 0,
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT 0,
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT 0,
  `reg_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `cod_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT 0,
  `menu_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_hover_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT 0,
  `is_verification_email` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instamojo` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_sandbox` tinyint(1) NOT NULL DEFAULT 0,
  `is_paystack` tinyint(1) NOT NULL DEFAULT 0,
  `paystack_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wholesell` int(191) NOT NULL DEFAULT 0,
  `is_capcha` tinyint(1) NOT NULL DEFAULT 0,
  `error_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT 0,
  `popup_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT 0,
  `is_report` tinyint(1) NOT NULL,
  `paypal_check` tinyint(1) DEFAULT 0,
  `paypal_business` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_merchant` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_website` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_industry` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paytm` int(11) NOT NULL DEFAULT 1,
  `paytm_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_mode` enum('sandbox','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_molly` tinyint(1) NOT NULL DEFAULT 0,
  `molly_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `molly_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_razorpay` int(11) NOT NULL DEFAULT 1,
  `razorpay_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_stock` tinyint(1) NOT NULL DEFAULT 0,
  `is_maintain` tinyint(1) NOT NULL DEFAULT 0,
  `maintain_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `header_email`, `header_phone`, `footer`, `copyright`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `map_key`, `is_disqus`, `disqus`, `is_contact`, `is_faq`, `guest_checkout`, `stripe_check`, `cod_check`, `stripe_key`, `stripe_secret`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `tax`, `shipping_cost`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `add_cart`, `out_stock`, `add_wish`, `already_wish`, `wish_remove`, `add_compare`, `already_compare`, `compare_remove`, `color_change`, `coupon_found`, `no_coupon`, `already_coupon`, `order_title`, `order_text`, `is_affilate`, `affilate_charge`, `affilate_banner`, `already_cart`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `cod_text`, `paypal_text`, `stripe_text`, `header_color`, `footer_color`, `copyright_color`, `is_admin_loader`, `menu_color`, `menu_hover_color`, `is_home`, `is_verification_email`, `instamojo_key`, `instamojo_token`, `instamojo_text`, `is_instamojo`, `instamojo_sandbox`, `is_paystack`, `paystack_key`, `paystack_email`, `paystack_text`, `wholesell`, `is_capcha`, `error_banner`, `is_popup`, `popup_title`, `popup_text`, `popup_background`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `paypal_check`, `paypal_business`, `footer_logo`, `email_encryption`, `paytm_merchant`, `paytm_secret`, `paytm_website`, `paytm_industry`, `is_paytm`, `paytm_text`, `paytm_mode`, `is_molly`, `molly_key`, `molly_text`, `is_razorpay`, `razorpay_key`, `razorpay_secret`, `razorpay_text`, `show_stock`, `is_maintain`, `maintain_text`) VALUES
(1, '1646649368LogoDesign2.png', '1646349736logo-5.png', 'Agricultural Products', 'smtp', '0123 456789', 'This Website will help the customer can get the agricultural product at hand at any time and get the product at a low cost and easily. This can save the customer valuable time and hassle-free work.', '<br>', '#105c52', '1643783757copper.gif', '1643783755Hourglass.gif', 1, '<script src=\"https://apps.elfsight.com/p/platform.js\" defer></script>\r\n<div class=\"elfsight-app-149b9017-f3f3-4840-87ff-8a58f4a08d8f\"></div>', 0, 1, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 1, '<div id=\"disqus_thread\">         \r\n    <script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://junnun.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n    </script>\r\n    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n    </div>', 1, 0, 0, 0, 1, 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 0, 0, 2, 0, 5, NULL, NULL, NULL, NULL, 'geniustest11@gmail.com', 'GeniusTest', 1, 1, 0, 'Successfully Added To Cart', 'Out Of Stock', 'Add To Wishlist', 'Already Added To Wishlist', 'Successfully Removed From The Wishlist', 'Successfully Added To Compare', 'Already Added To Compare', 'Successfully Removed From The Compare', 'Successfully Changed The Color', 'Coupon Found', 'No Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR PURCHASE.', 'We\'ll email you an order confirmation with details and tracking info.', 1, 8, '15587771131554048228onepiece.jpeg', 'Already Added To Cart', 0, 2, 1, 1, 1, 1, 'Pay with cash upon delivery.', 'Pay via your PayPal account.', 'Pay via your Credit Card.', '#ffffff', '#142624', '#cd8c52', 1, '#ff5500', '#02020c', 1, 0, 'test_172371aa837ae5cad6047dc3052', 'test_4ac5a785e25fc596b67dbc5c267', 'Pay via your Instamojo account.', 0, 0, 0, 'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2', 'junnuns@gmail.com', 'Pay via your Paystack account.', 6, 0, '1643784190404_page_cover.jpg', 0, 'NEWSLETTER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita porro ipsa nulla, alias, ab minus.', '1584934329adv-banner.jpg', '1646347350logo-3.png', '1646566909customer.jpg', '#333333', 0, 0, 0, 'shaon143-facilitator-1@gmail.com', '1646347567logo-4.png', NULL, 'tkogux49985047638244', 'LhNGUUKE9xCQ9xY8', 'WEBSTAGING', 'Retail', 0, 'Pay via your Paytm account.', 'live', 0, 'test_5HcWVs9qc5pzy36H9Tu9mwAyats33J', 'Pay with Molly Payment.', 0, 'rzp_test_xDH74d48cwl8DF', 'cr0H1BiQ20hVzhpHfHuNbGri', 'Pay via your Razorpay account.', 1, 0, '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`) VALUES
(1, 1, 'English', '1579926860LzpDa1Y7.json'),
(3, 0, 'বাংলা', 'HrFekaE4s7.json');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(164, NULL, NULL, NULL, 245, NULL, 1, '2022-03-20 10:49:30', '2022-03-20 19:51:15'),
(172, NULL, NULL, NULL, 256, NULL, 1, '2022-03-21 05:50:36', '2022-03-21 13:32:51'),
(179, NULL, 90, NULL, NULL, NULL, 1, '2022-03-22 08:09:20', '2022-03-22 09:39:10'),
(180, 105, NULL, NULL, NULL, NULL, 1, '2022-03-22 13:27:22', '2022-03-22 13:32:54'),
(181, 106, NULL, NULL, NULL, NULL, 1, '2022-03-23 07:05:46', '2022-03-25 15:52:22'),
(182, 107, NULL, NULL, NULL, NULL, 1, '2022-03-23 12:10:13', '2022-03-25 15:52:22'),
(183, NULL, 91, NULL, NULL, NULL, 1, '2022-03-24 06:08:17', '2022-03-25 13:16:37'),
(184, 108, NULL, NULL, NULL, NULL, 1, '2022-03-24 06:10:13', '2022-03-25 15:52:22'),
(185, 109, NULL, NULL, NULL, NULL, 1, '2022-03-25 14:00:38', '2022-03-25 15:52:22'),
(186, NULL, 92, NULL, NULL, NULL, 1, '2022-03-28 19:27:07', '2022-03-28 19:29:50'),
(187, 110, NULL, NULL, NULL, NULL, 1, '2022-03-28 19:28:01', '2022-03-28 19:29:51'),
(188, NULL, 93, NULL, NULL, NULL, 1, '2022-03-28 19:33:45', '2022-03-28 19:37:23'),
(189, 111, NULL, NULL, NULL, NULL, 1, '2022-03-29 01:49:50', '2022-03-29 01:50:20'),
(190, 112, NULL, NULL, NULL, NULL, 1, '2022-03-29 04:26:45', '2022-03-30 11:40:20'),
(191, 113, NULL, NULL, NULL, NULL, 1, '2022-03-29 04:27:59', '2022-03-30 11:40:20'),
(192, NULL, 94, NULL, NULL, NULL, 1, '2022-03-30 11:31:59', '2022-03-30 11:39:31'),
(193, 114, NULL, NULL, NULL, NULL, 1, '2022-03-30 11:32:47', '2022-03-30 11:40:20');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT 0,
  `tax` int(191) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT 0,
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_shipping_id` int(191) NOT NULL DEFAULT 0,
  `vendor_packing_id` int(191) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`) VALUES
(86, 74, 'BZh91AY&SY¡7±\0 _ù@\0Psø;ýt¿ÿÿú @À\0`_\0è\0)@\0\0\0>hÉbÐ`A dÉ£&Cq£&FAM& 1ÆF M4\ZL2d0ÂTh\0\0\r\0\0\0\0\02\rªÓMM1¢4hÂMPÉêi4b2\0$AÉ!¤Êiõ=M¨i@§©êoR0 Ö3³ëjúâûôï>ä~F°¢OÚ\\÷àûÏµöÞm13*^|©%§î^©uå§¾T¼.në]e92´h¦(§>å,ni­NM,Â4læÃ	»,¬­Ôü84SEìO9´»ÍÓxè<Î×S&ªS©«¬¦«&^yØÞÿ<\"\rçSñt¬éyÔËý_cFê|g¹îëII?EÑ|kIYX½Ù]/ú¥*HªSD´R4ZL¬Â1Tù¥¤OhZL´^êjÙxL,¨]vÐ¡)HR,Ä»÷IkL´b&ªÂ%(U²ë0à´Ä(aL¬Ë¥YR%L°ºì¹5?&eI«E×j§Z8iä8Ø$\r@8hñ$r5cSF­hºÍ-E6eªócdÃ©ªíY«FÃDÂY0Ù£	Ie×\\a£-4%Û\n]0ÔXÌÑ´MSVÍ¦£©\'Þüù ¥D¥$¥H]gìùl¥JÁeE.´²¡JK3©bÒGr½¥èº¤\nBÈJQï º ¥H¢©NSªné8ªDoré´\"?d©F®¹ªÊÙ³6h¼êÎ[(ëYµ×j×CóyZ­8V8±¥Û²¹»U£&êÚ«\r5Q®ÓFÌåWYfËÎ.\r\ZNlÙvë1ªqaªË¶d¦\\¹Þ§{ý¨ðc]DDjAè«EQ@vG³²B§¥môÉ&¥=ê=O3O®S´÷8Sp~µÒ¦M\n¤¶YÖ-&%ï+¾èÄ¯RjSy)HÉp£<5mD}Ì%æ²hy2Ýæ`í8Êë|SÎÄNCét43ÈíX-5\'Îpl3:£ó^sGM§JÓ\rZ§[ºr3G\'%K¬©³[s?yc¾RðºEÝåÙMæ\Z·]¤ºË\Zi>¦(¥2LµM§Övñ:§lã4{µJÉrò­8®éIÊTÖy1Cc²WL©Ù)ÁOg\'krjaf®·t÷¿)QuÏZ¹ã8¼óU5u,Qé^^y?KV[ÍÓÀî{IÐô\'àñ]gÂ{JT|ÔµIvóÑ\n*\"È{B§Üàÿ±´ËÆGbó²{\'	iìs*8·jËTbTú%ãµ.úhO\'áTó¼g[g¥Ù\'ÁLI6=)ìxJ)5Yc (³@²¥©35h/.æòîå.ÌÄÐÂn4bbìÚPÌº]iKªuËÇ#IaÊN/)hlOæKXu¾v\nGÁ³/,Ôp·ùK¼E%MI»üe§DïiétÏB|ßOùg¬©U*R¥çl¤ÂÔê#Îo=iÛ)«ívBú¨q2´~÷µS<åK%l¤nÑÙy¬ô¹¾7«Ú£ÔÙO*T)\n_:¥IR***Q**TKRD²RTUI×9O7¡ë]\Z;zI¢wÍZNÈ-,á6*TÂ-1,²~çÍyÆN¡KIS+)ºze:jÙ´TèJ(²i8Nw¬ÌÄÃ©véÁgºróÃyàÒ(|)6t{wDõñÞý,DÑ4K7LÂÎésï,ívËI),ÿuMÉJvª¦òÒVæaÔùOkÅðÅ=¨RK X`B.**,z/ÄÏ¢âãgñw$S	\nqË', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '2', 55, NULL, NULL, 'bAHcYXszSy', 'Completed', 'deen@gmail.com', 'Deen', 'Rajshahi', '01774560076', 'shohid jobbar club road, ray bahadur road', 'bogra', 'bogra', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-20 08:46:40', '2022-03-20 08:53:14', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(87, 75, 'BZh91AY&SYÙx¬\0¹ßù@\0Psø;Ëô¿ÿÿú)\0\0Á@AÀ\0PûÝ\r²\0\02dÐÄbhÀ#00M\Zdhª{LI¦  \0\0\0\0\0A&¥\0M0\0CCC	ÄÓ\0\r\Z48ÉC£\0Â\0ÀM4i H5\ZaSòSÔôõM4£ÓQ§{T\0\n$ñ$6\0Ã?%Ã0	9ÔnAæ8JyðøIFK^ñR,æH=ã%eûæ!c X\n<B§\\	;\"Ü%Uò­É³$û`gghZM%Éè:)Ó~óRÌ{µ\"ã¼*ñ7¡\0sbH¹©°Øtvx	hâ~	BTòUuby@i¡¶·¶õV`µ<ËK\Z(ãqkÅ*lMÌU¶bÀPBªÛ- ²Å²:DªÁr¥6¥d\rºE)A<È´­DV5Ú3ÚAí$$Ð©R`\n,H\\ªÊ¨½»\"¹Ø-0aIF&^q½°TP©Q52µqk\np)**QÔukPÉUW¹/¹	|ðM PÄ¦QlßeÆ¨ `²ÉEôR!Ë`ÒB¤db@¤6lz¼·\Z1%	mh?XÆV$C(ÊIâZÍlPI©lc)Vå±*\nI\nBXd\'N±JBPJä®T±JÞnæfYMÖ¼N*:çY³ô§ÃSÜ{<ËqBÇå½_ÔX÷WÌÌÃôè=ÇÉz,z3PÍÙ«Jø ò?Q¬ûÆ~3¤G}ÁèYPâ{¬ûÚp7u3¨S­TFÒ¥@ênââ#1ØB_!äÙD\rÍZN$£ã\'j4cÒÐØñ5GYAÕs´ÚtÛ¶0L2¡´Ë:Ï¡¸r}£\'8xxãÓKåb/bÃnEk+3äm2:U¦f)$ÁÐ²âIt\\Ü=7\'Î¦Ó`M¸o>ßâ5{]|úÌ;3jå\nÁös3`@øùNkä~ÔòBø9\"HK!;ÏJv}\rçâhPðÚJ£]\Ze[¢=J\\B(_ÔæßØc¸¾ðõgPîï1Í/à&GH\\\n5ÑqTÈÅ4\'bàNT\nR¡BLÞ%J*@èÍI]Â¡T®)5´Ôú¦äfzï¡7ÕÆè5×¬vdp*Nó¸?ÈÁ¦6XSLê\ZØÔ×Hï¡ÒuSXC=¬\rWQV«ÜO°¬ÒPw,Ã[#³oûüÏÁú@ÜHÀEÙJb$ÉBE	)fy~|SC:^¤»EUæZÆÒ$ÆUPI]±ÑÉÀ\\Òðwsa1f1f¶¨È\ZO©C%]lZ*P/tf×±/©7ïæe§AÜB¤Õ]qDo\'è>È+¾¦3.@Õ¨½FSáÍâ$ýþMH5.Â^$ö^.O2ñtº{>ËÅãü]ÉáBBweâ°', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 13, NULL, NULL, 'vGXWav7UGV', 'Completed', 'duha@gmail.com', 'Duha', 'Rajshahi', '01774560000', 'Malotinagar high school field,', 'bogra', 'dhunat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-20 08:49:03', '2022-03-20 08:53:29', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(88, 76, 'BZh91AY&SY>\n\0ª_ù@\0Psø;Ûô¿ÿÿú)\0\0Á@AÀ\0`^|\0(P\nH  ¨q&CMÐÄÑ¦L@ÈÂhÓL É2dÑi¡4ÉM\Zi1ÆL1\r40CF1#	£M0&8ÉF!¦hbhÓ& da4i¦dÂ%\ZOÕ0ÓDõié\0õ3Phõ¤¦!¢di\Z4\ZC@D@µ4\'à¸1û7@SHáÈ öCÝ`{Ãå«sck\ZÀÐÅhì8+TºòÓôÊÎ­uêei:\ZS£ö(àÎ4u6if¦î¶NegÜ£Jidæ»Òm.ë:Û2Þu¯;ó½JS£ÌY²,zgxÇª Þv¾Öët:,óÉÁÉÜ²ê=ñd>E$ù]Ái2£æÒÍ*Dì(©JEI¦Í6lÌiRG¡òµu(Jl©-%²¦nûlI%)Q0¶TeX¥)%¤¥)\"(P¼²ë®ÂæíÚÕm*AifØR¥,®¶T¡e¥ååÔP²Y<³\nu-\"Zo³L4Ëf¥T±´©S{ííF­Í­­ÜÞZfo5.KË$Ìq-)¦ÊY§&Â4Ýy¹º]»+\"¦ì0ÞÍn4K&´ÂRYu×ií4K·0ºa°±f]6M4Äá2{ÑÌ\"iQ!\0!vh¡bï¢¢å*)e¥Bf)RÅ»Ád´/ieìE¢Q5)T,¤¦´ê\"RR¥<ÓÍ8t9ªDqv^Ðú%J2ÊëY[2Áf^tÎ^e;T³W]³nM«Íäsl´æsXæ¶.ÜáÎ\ZXáJ2p­Ua±¥mÔÝf4«²³uç7\r8i©ÉÈÂ×SlØieÛ²S,E¬SåAÛtØð;í÷â\\\ZHZáy®høiö_JýsùS¸÷¶.§RnùTwJiI¢)&ÍÖ|nÔxÌ§Íõ¹ÌËÈ/!q²Æ±ÌÞq<n)¯¶ý¦®Ã¶6´7\\i×-l\Z¸W(^ÂÐ×7è`ðr\'Ï-#âS\n8>ë©Bªjq9N©ÃÌô®©yëG9MÓ§5\nTJ}O4:Þw\'$îo=s¤íttXY¼ºÊ7(ó±å)x]O\\¢ïKÅe7SwµÎjRR¢¥É¦iüOªvNÒ¦T¥%ND¼¹yTn*ch.³çª7!pk²ö6°Ö!µÆó0êí=ùùß¾TXñRyÞÏ7SNÅ;Rï!ùi§9Í<IiO¼9ß³ÜEC<\ZEç7Nd(DY9*|SÞ÷5<XyHô1=Áà÷ÎsÜû,:ÌÅÕ§&[£§×0ÄzäOÈünãØ(ô=³¹»Ñ\'ÖïYRN&ç¾nõÑI²Ë>2T³¸Ø0¤ëtnMNN\"ìKºÓÓ.äÀÂìÌLIbËÝµ¥ÂÒTíÂ¢S)6yKCtvËç:$æèP¨©³É¡Äö¿»sØ©*r>ô¤æùÝ«<OLÌKNÉ§¤\"pý³Æ]äTª)FÒÉÔæÊL)<\\HîORvÊlç;gs2Ð¢}ªåL½NF#,§Ü]ëfÇd´²XöJG$ð=çÔì|nöÎ=Mß4h$¤H­\0\n4 °bã=siÝ:ç±êYw¤ò&Sá4ÔèY¹yw)ÁR¦Qigjéäµ§9:Þ*ZM]MÏdìr]»ñHä©JNQÙQdÚsîðYÂp6:¥=ÌÂlÚ(wÒnèQìxÎÝsÈzFI³aÜBF§ÕS#E`Ñ0m\n8-¥&O®Qí|¤Oß	=¾Ùñ!JJ@hAèP,òq¤þÃôTÂ`é5\Zø»)ÂðTø', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '2', 58, NULL, NULL, '9JUn82eGZI', 'Completed', 'ghaazi@gmail.com', 'Ghaazi', 'Rajshahi', '01774560000', 'MM Sky Touch Garden', 'Bogra', 'Bogura Sadar', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-20 08:51:40', '2022-03-20 08:52:25', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(89, 77, 'BZh91AY&SYº]\0¶ßÙ@\0Psø+ô¿ÿÿú\0\0\0@\0P¹¼ÁllE\0hP#\0&L\0&Â0\0R\r\0\04\0\0\0\0j&¥OHÐ\0h\0hd\0Ì\0&\0	a\0Ha	ÐhS Äz\0ÓSEC	!Ælo0$ùîz`lq|t|Î>;7\Z0KgÀHQÄVÍÙGÀKÜNþPb\"Nòa©3M]\nW)Ý-9­½$aKµÆâ¤²2©;36©3ÖA:)î4B\0à}\"H±ûGò ñ¢Zaà0<$×~¡2B&fÛm©Ai«Öy\rB`\nÉ¬¼ÐiDÁ°²®ì×DðLHæ×¤Dê¡u\\9¶ RåkÂ)\"f®ó\nÆf®ó|NÂÍÆP(Ãq±aRD%5æTÍ:Å3¨:ÎÒ,YXÄË]uVPtTzÃ¤Y\'X\Z¡ vG ).r¦ÛhÞ3¹\'$äBY°¤.¸bÆ¨ `²å\ZQD,à©PR¨HÂ\n@Õ)IØöúÌX¼BPÐ$~cuÒH¡7&äCljîcf¥0ôRåÔ»­K;-),\'2$]ËC©Z©µ©\"¬ZÏD»ÍZ³%<aÒ¹B8Ç©@rÀô|QCÆ¹Ø<ÎÉwªx3X}nP`ÚU´u5	)ä{ÏY¶í=ÇÀ\'m¡5#í<Zf²F£E289)\rG3-àd9¢`H:ED¨çÝÎ ©bå°	¼Qê¯\r6HÄµ9\rFe2Ê,J0È¾Ã6D.#$ûFKvøvvßÂêß\"Z6*\r¹\nU>GÄÌÐÀÓ0$%xÎÃ0¸²,kC&;ß9ì»PJ7§ø56·ò0ÞYÓ2¡ÊâáL¼ìyàSæx¯ÉxÚHlH>uHcH*ñ;þ´%ÐZHÐï,A×à\\j	Rk-;\"áð´/#¸äÓjmM¤éÜuäÆï\"I­^EE2´DH¥Ä&YszhÑE\\ªÑrèm:Íñ\r0&¤8ëhÃÌÄ6ó:#4ÊøÎï2]Ë\n2óØ5·lvæq&8ÈÙÈÁ¦6Pí5c4®k4´Îhë´Òí}¬FN¤¢üFB´iT7mr*qÇÇe;YÖÝÃÖåJb$Ð@Àm$HPÒ`Ä_3SC#¦|¡ÜAMzPÖB¼°Æ\\.\"=°`\Z¹8NWÊ¥¬F%C	qV\n¬G½.\nÕ5ëKFÌg»~9À!+Ê*¸\"7ùâ\0a\n¢oF0*@Õ.^.ú¾£¢ÄH:õïBl8_CüD?§ø£þ.äp¡!u+0º', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 45, NULL, NULL, 'UdytbUWvUH', 'Completed', 'haafiz@gmail.com', 'Haafiz', 'Rajshahi', '01774560076', 'Altafunnessa playing ground', 'Bogra', 'Bogura Sadar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-20 08:54:46', '2022-03-20 09:05:33', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(90, 78, 'BZh91AY&SYb5\0	_ù@\0Psø?¿ÿ¿ÿÿúa!ÐÑÀ\0`	ß\n	BR\n I&C##&4@4\Z4Èb\Z\0qÐÈdddÐÐ#FC@2`\Z\0Ðda\0ÐhÓ!hÆLC!C@\Z \Z\r\Zd1\r\0$©èÔÓDÓL\0\0\0	\0$Ab	¦	¡G¨ýFSÒi§=G¨z©´ÍPQ£ÔýRÄ$~çØgûiO[Öô7§àívºbO¹=Q)(É=t×{SøÎ+J/Qì(¯UT¼¹cØQxM3Y¦=\Z .åcÃò°wq´iÈô:rÓt6¼Û·Cw\Zw~v6cÉË´\rXìy7pÜlvÆw>#´`va¢Óa¡±³³ßO\0wÔê$N7µ©u8Üåt%Û79Z_±ó8\'È®ÆÂNH¬×\'dì>zrNñi©nÇ2R\\X®Å`Ó»g\rÂá+hÂ!)#Á0¦Î&ØÀ+Ö@v\0b&;7Á\ZÏ,¦ÀH£Â!ÃN:l§2.Â\njX³q#³M7nûåác¸G\r8uÇªd0-rûGdÑGÌgIp¢ÃMXM3£±¬¸¹bËËÆM¸Ë³,LÝ9z]Ü»¶\rÇt.ÜX\ZlìíN».!wg-ÐÁHY»vÀáËg´!w``8lÝC»0SHeËpÝ!¸ò*?á;\0c###lÓîÅ°Æ,i  Æ-¬`B¾Ó õ±pF#B´¡zZ 7c 4¢Y0R0#ÚÐß7êÓd¡&¡8exI\'E%æ2í\r:Ë§M÷{l6i£¶ÂãÛnÝÓ®NG¶Ø6M<73gaÝÃaÝÓC0p;µ!pÐå¡ÓXÌ*6oDÉ(§fwwwIäò°vnpppðçt0ÝÝ¦ÎpðÐn\\p¸÷ã:?ó¡ê`~#éq54\ZÞfÃÔô¤mLÜ%&o.sÔ¶ãKaæ{í*rqÜlÇ>sÂÌc!Æ\"g4KNµxbTØsåç°¤ø=Î$¤¦`à<ÍS\\ðO¨ú¯KZÊW!ï609!iÌyäóÌL!s4m;ÉÀTÉ/>`çoLÍe#ôJJr°9òór«Ý`0Ènnðú\r^A!¸GBEc\0!ØGNùÖk6Mî	ù&Ù0ËJ4°<h`ôi<@³ Ùê{Í1ÙÏSÖÝÓ»c!£A0CCÇ3ÃAÖãqNñ¨Æ5*ZYKcD¼ØÒQÖ\\Î&i¼­ÊeNy®8fb/2ÓëÒ¤÷.	È´;ÓÙ04ÊMÅR¥\'<êbbdtóI¤s³âCtæ8]§1û+àyZ0b­(øèÔJ:¹àÃ\\ã8]e\ZKð\r¼]pÆ<»+päÂæé!±÷>ÖÁß%Nç5Ï*`§­­\'l¤w1j4N©à:çE%\rÒÓÂ	yPÝ2Cô54LäLKÆØtó¡¹y6CÉröeIô1FÂX©£¼la&ôÐz²bK3X¨ `T±1m¡ß=íÌ	Ðo%ç\nÎY&È*p¨±¢dMG{ËÏ5µÊfü!sZyÊÉôNIiã­\'IÆOzz>QyâJRªQR2ÐüæÙ²c¨n\'w\\M(ðÃ©k9©»Üi!Þð0ÒÙ²aÈ.ÎÂTM´W43dìS9²RwÝpóP|à @b	<ö+\0Å\nÀ\"PÀÅT´¨\"ªNs3à:&Ùßc8â)Ð0ù¦Fä´±i¤Í(£	\Z4të{æá	ê,nÇqé;áÙxnìrw\nÒBöV\Z!Àqg¼Ó¸Cd!°:N=ä.DÕ*Q>jR}3Îj&Ó¨.Ð§HwQ§c¨.úá§¤(ROÆ£J*qÊca ±PÎaÒ	Ø)ßsÉa!××\"¥\n*Ññ>)IHî\"RH?óü½\'ø]ý_zîæ,{$Åñh|¹ÿÉòw.îq;ü]ÉáB@1Ö(', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '3', 90, NULL, NULL, 'b88IdGhxm3', 'Completed', 'imran@gmail.com', 'imran', 'Rajshahi', '01774566666', 'Altafunnessa ln', 'Bogra', 'Bogura Sadar', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-20 08:56:45', '2022-03-20 09:06:28', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(91, 73, 'BZh91AY&SY88\0_ù@\0Psø;õÄ¿ÿÿú \0\0AÀ\0`\0èB@ $¨AÍ220CFi£F i#\0iÉ\Z0#M\Z1L\0sLLÑÁ\ZhÑ\ZdÈÀ\0Cdd2`&ÓF@Ó&F\0@M2hCQ£A£@4hd4\n!\Z)´É¡4õ¦¦F§¤Èz4Z ÌAÚ÷,ÑÀì>ä~\'ì>óØ\\áí{o6/G²TÓí^©uå§²T¼.n÷.²ZNQQ§Ü£s8jÐäÕ¢Ì#FÎMÙefëOzÇh²q]Øm.è:m:\räé:Ü¦MNn¢Æ­/,ò\0vóy¢\rçµïr:Ç7Câ`ÙGÌ<Â#©%I.Zè>e¥QS*$ñQ#	QH©2Ñ£F#*u²T*L­eL2ÑxÂË*FÔË2Ë1RXJR¡Bø]eg­å<Mae¬¼¥FË[Ðü]µ4Yg-[7z^\rf²¡¢,Õ³,Â\"TË¯2Õiy,¬Âx9ËO¢ZrKº\rc¹¦Î7pánh[&[AASe³G¢nËv&ÆÉSeÚ¶³V²a³FË®¸ÃF[4hK¶0ºa¨±f]5M\Z17L¦]©;ÑyçyJ\nTJR0rg¢!qM1/h²B0h 6j Ùé¢ê\Z!$!|¡\räi@VFa¡Ðã3R(ÐEÔ\'#R²ºæ+VX2ÌÑ¢æ0ëQ²Î¶µ×j×C­y¼U§ÇlnÂæí7RÌ«SFqÃjnÆ«-MÛ­5jÝ»V.Ñ»vvN,4YvìËÓ|T|óîç.úg¦^|òÓ3ë\nw6yåNÞe´ËÜô3õJtåÔâ¼Tsµ4RhP¥$Õ²ÊsHùgÙ9®öJ>øqSW1¼í7ÀìhyÜíÎgÙ£qâN\"ÍãstVÏ!=ï¡ÌÑ;\\¥IõËDá0z]Dv(:&i¼è¸æèþKK.¦òJE*GäêíÓ­æ§9£¡Ð°³iu2?\'IÃrÃú<òÔõJ.ò¼Ë)²<®ö\Z·\\ÒMZL)DÐ¥)rh÷7lÎGã9Ï$å2Ru-:	ò­8®éh\\x(a\r¦gc´Ã\râÎSAy°·\Z;]Øü%Gï\\øÔ®ùÅÛ7SG2Å?\'s3Ô?ÈËàä´§sÄÝéö=fÏùP*]$G©ÂwÂ²)Ä¡SÕ<#Iw¢GyÑ<&ÒÓäq*87jËTbTøKÇb]ÒÞôÑEN·lÑT:äw¸OKËE&«,øÉRÍêNM	£(²òî)Ù.ò0,Ì¼ºl//é]Ø,Òa0´¦:¥ã´°,òÃ\0½µ,ÂÊ<Û@}\\Ày\rÃ|/*9B¢¦Ìç¥ý\'ëjËÔ)*`YÊi(Öfw[#NË¨ CÔÑ¬##@³CÆå2òÀ\ZÍä6ÀÈï6rò0ëZO]R¦V×K0ß©tä¹Rì»ÍgkÁÔÕçQÜÙÅã\0ïbB2wÈÐb\"FF$b4BU¢(È»¦³®tO3¥Úø.RwDñ´Ë ³FGF7Mí:\rÒSs\ZRÆÅøó¥ÁvÍÛÅHq´¢%N3«4&ÃS§(w4M[Â8|)7s(ý/kåz\'Kª|c¼Z&	féæS\r^i£á)ÞîRòK%ã)NÕ!N³eÆÜÁå1ÊÀ±¤5c²#óAxx^à ÂDAÐ=\0uÀ§IÒ!ü?Ä£¨£þ.äp¡ p\nq', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '2', 40, NULL, NULL, 'VTtUUlAYT0', 'Completed', 'bijoy@gmail.com', 'Bijoy Hossian', 'Rajshahi', '01664560076', 'ms club road, colony', 'Bogra', 'Bogura Sadar', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-20 08:58:45', '2022-03-20 09:06:33', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(92, 72, 'BZh91AY&SYû4\Z\0²_ù@\0Psø;õ4¿ÿÿú \0@À\0PÞè©rË h\0(%J\r @Ð\0\Z \0\Z¨4	5SLÐ\0\0\0\0\0\0\0MDU©ª\04\r¨\0\0\0\0\0pÓLFL0	¦bd4ÈÐÐ	SiOQ6	¦@Ó\rM6ê\0$	#ÖzKãõ6\0h»¡({	éÃ{zÍÙº$(ô¾nÊ7D¸Yµêºu¤isX³¶ÉÚ¦jÒ&®ÊsWÒÅUÖ2ÎXFS¸¸æ7óÊ±ç©u>RIþDqcâ3qÎ3ÚSÈK(<2D6P±Íf²Ú©¨Ã%âQâ	Y³Úé$LÚR¢sJ\\A\n«2]Ì`¤*ªñeP·`H»¼mXqwz<¤RA#1R¼Ê!\nê\n¡#Ú\09¤($ÌÄ,ÊCÈLHM.Ädª=%ÜÈ)4\0J\n·¡zª®d¾Kµi&Ð6h*ò²ÅQL\\£J*ÌA¤H À¨Å) ¤QÔâ»YÌX¼BY¸c)9H´X¤ÊLµd§=/%æb.qeÐÂÈ,é\"¬¢®ÌÅd0è Â(«´ak¦®âë«AY¡%uL 56o<gÃAï<ÇY#a¸±ê»ßiá29Ë<Æ$ÏhÍ¦ê<yfkC«U6® 1®ãØg¼gÔ~D»MA¼ô³çÌÈPsÎ¼ô&¤X4ZÈ¬0½ç&O§*3<L.\nÂHùHÉåñhlYÑkÌÆrºëAZIÐÔt|Êcp·%ò9Tèé¯dí}H&Ae\"¥FÜÅ:«3PwÍf%|$¨HàÆ\\Ä%e¢ar.58ÍCÁî¡\\òí§ ü>CPqkfã£¤½Ùù:	\\\\@ôr]+i´ç!´`:Æ9+à\\xØH´ÈÒp/ á$IM¬/µ,ï$µ½&-æã`3_I~Ü\rAÞÉy]ÎSZ!qE@²ÎXT-TDdºIl(H¢½LE a2JP93I%©@¢X\nC^¼f£v\ZwPdÑ\Ze¨?2\\Uõ\ZeÆa«û4FüA¸Îl^#ÎLÈ}Æâ8\r1²âaÍ[Í\0Ò¸àµ¸\ZÎyê3ÈÀÀe!|ÎE(§a ä4¯\r¤\Z2ú8×8ÜÏ\"P\"F/e*21F#%@\r¡(i0bM­ÅM&c~[z\"ºÒà*®Õ9@AdÑÈ»L].poñbëHÁd c *`a-BdËÁeùÑRauÈÁ®´¿Fsñm/Ç#l¬UUQz¢# ý³B°ÖÑ%\Z¬×xÉç<-¨_ ðx9!6\r!Ðt?c\"GÇÃè\'ñw$S	_³A ', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 40, NULL, NULL, 'xIcTWFSSBU', 'Completed', 'akash@gmail.com', 'Akash Ahamad', 'Rajshahi', '01774560076', 'thonthonia jame masjid, sherpur road', 'Bogra', 'Bogura Sadar', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-20 09:00:32', '2022-03-20 09:06:40', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(93, 71, 'BZh91AY&SYÍo2\0ºßÙ@\0Psø/ôD¿ÿÿú ÀA@À\0PÖ¼±	±A 2dÄb`Éd\0Ñ``@B¦hÊ=\ZÁ¨0\0=HÀ$ÔE5@\02\r2\Zi¦\0=#C2b10dÁ2\0hÂ00	!2&\0SSò4\0y\r@E	#ÌY£ô?³B[Åñ<hayê öIñ=ÜÛ9láp©»(áág\'ßtó)Ã¡%´3m½:O&Xa²ü+UO¯Ý.wBÆS7%ìXÈffÍDË:.ª¦ãZ@ý8\"Çèbdq4±è,ÏAæÍ&ò;ªÆÅ½¶H dÈa^.åSHZ¸Y0\Z5¦²m	2²c7Ô$¸!ÅÕ¦P¹EÑjì{ÅPª¬fË ¡n+ÁIýIJ5G<×\0Ç8ç9Pã r@`Ò¥f×¤Ù{Û\0Ú­A*	a1Î_µ)Ôæå2x	ºÍØ£ Á0§\0åÔBÂ»JvÞ½ëP\",`)®ùH\nctSf)Eê³i©#\",Ë¡0lØõ\ZúLX°¡ Hô13[ÙRTppÕtây#Ýg\Z\r°æÃÌm/S­Í3iÌE°ÐfåËÃkZÅ·Æ`Ö§i§ÐÕ¹È%eù¿ôBGaSO¤ñ}¥Çä`Xüî¥Ä\n½ÌÒ§sWJ¶Á)À÷\Z¥ùí;bë¤(¤p>s´ü\rZÏy¨­PÇjùhMH¨m2\r;ÒLÞ`0öe¸Ñ#kâÅæ%øGQê¯\r\r$V¡Î&eÞÃ,¤y(eÁã:ÐnQãävËgðjÉÅÌ+v°|3aA¦`)$8-,HJñBEQSHôÒ;ß\Z­SÐ»~Ãîï\Z£[xm,îÌð±2eö\n``. @÷üÇó<O(Ø´t½BD ò«Ðëò\\Kº¤ue<)µõ¥Q1$°hV9A·»H»XjÅ7ò9îc\nÄt#`T	µEG1Ìk#¢¸Ý ôArG ÃrÔàsf²K2¤TR\nõ¬ê %ÄXìFi Xçï%Ñ_pÓ,v\r_ëÕò7JÍÁÞ?yÆÙB¨Çàx*Íf´19­®FÃlõÂê`b2æ£¬Pu+\r®EZ<ýWu³»{Mu*21F#%	@ACImq.:L¸B)­.B¢ôP¸Ì¼ÆOÚ0C.¢kA 3âàHxÍ7Ê¥¬F+JC.00¸÷/V-ÞYµëKØÂÚFwXæ<r:ÃLMMEWFâ_ïØ@!TMëh¤\rjÄüÓs¯	ó$\r½½ÈEjk0B	A¬ÖqÓüqñw$S	Øó ', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 15, NULL, NULL, '8FNuOxkZ5R', 'Completed', 'adain@gmail.com', 'Adain Ahamad', 'Rajshahi', '01774560076', 'Thanthania bus stand, sherpur road', 'Bogra', 'Bogura Sadar', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-20 09:02:07', '2022-03-20 09:06:47', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(94, 70, 'BZh91AY&SY=pÓ\0½_ù@\0Psø+ô¤¿ïÿú \0@À\0PÞh¨\\c\04Ðh!Ì	 ÂdÉ#	i¦F&\0(4D$¨\0h\0h\0\0\0\0$Ô¨@\0\02 \0\0 4914L2da0M4ÈÄÀÀ$DF&&BA=5£OL¡ä EDSÚT÷á¸»Åâ{ÆçæIjwt(TdµÜ1|¹ÌwIÆa÷Tä[¨}½ÎhN(Ýu	g&Òª4ø9ªWEÐ²Ë ÑK4\ZMTz¹/¢®óbÓù8	\"Ç àwÇ¨³<âZ`½¦P=P²®¬ØÁTbT«*SAÆ7AÆ}f(y!*Vó(`@Ø4LVU`\'¬aF0;¥#SøMLw\n¼HHÃ¸K¨Iî38¦xK@ãµJ®Hç!%Q$H`©¸Ô1Lí¾æ³&L²d3æ1ydÐË6Ú&dÖnÅ6KÂ\nu%^®º\nª¾¶¡/¼RB,`)×t¤FÉLlQLYZQD4Yf\r$*D )\"G(ÊpòLTaÇ¤qÄ¦K)¹8õ\\ðBFùc[7ÉÛl9³(É¢KGr(F\\Â3jæ\r±¦³]DædÓEÙTNhzÖ	eÎéß¨âu°¬¼Åç´ú?aqöÕàXÜl\'´z7ñVíf õ»¸`ÚWÚ;\r@UGâ{ÍsñÚX\'~ ªyÖ{Ó=g¨A­TÇbë©E%áÊd:`Ú\rÆ#q	lS³:$Uqc#Ó ¸~ðpFC²Äy@46-(¾ðÕCÈÔ]pbaÌ,3Yó!p¢_HÉÛº¶ï¥ø\\Pe÷lW\r¹×+Ï#ÄÒl1*&¤G¸S2ÄgI%czrÍS=tÌ&íûNÔj·p1ÜYÝ¤ðJÃ¬é2.ÄÄìÄ	g¡[yÎ¼l\0P¬JDd*ÌÂKf½ÌyÓ¹dØu ódJ£Xá}oE}	[t¡tX×¸ârð1¶Àú3JáÒ}\\Ìa|GNC»n±tÄI;74b¢Il²K,Æ©+Y2:2IY¨U.¡Pp,V±ÈÌ5ð[\ZeõþDô,.\Ze¡¬;9#A¼ªPi7/¸~#ò9ç\ZceÄ/°Ï*¥F´r°\"³9M·lj ë`ht)è\n¥`ÞAó^Wt³¾¸À·R #b2@ÄÚ@6¡¤Á6¸\ZÌÎ:7Â+±.\"ªô\\i!`Xc((D.nH1÷¸V&òÖM#¡@Æ@\\bc;¢¥+ë!ò¢¥ûÑ^¤¾l-¤goÀàc 7%EE[Ñðý¤\0Ââo¢Mj^ÎásNÈ-Û¹  R\rO°/¢ùøuÇÙü_?ÅÜN$E4À', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 15, NULL, NULL, 'Oux5NX6H2j', 'Completed', 'abair@gmail.com', 'Abair', 'Rajshahi', '01774560076', 'M/S Club math, Colony', 'Bogra', 'Bogura Sadar', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-20 09:03:40', '2022-03-20 09:06:53', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(95, 78, 'BZh91AY&SY@DÙ\0³ßù@\0Pø/Kô¿ÿÿú!\0\0	\0@\0P¹à\0\0i&&	¦0`À%A¦AP=@Ð\0M\ZCM\0\0HE)6\0b&ÆLÐ¡Í12dÑÁ14À&Ô0)áSÐ§§¥=F4CÓ&£!BHÈxx	uúp!:ÎbÝÎ3K0MtD9êt¤bêè\\\r.è¡iø³\"oSe«Eñ¶YV¤eþdÎÎÐ´´Û´®FA©ÒÅ\Zÿ²]W½,n<Í°¯r(÷%L¬õP·ÛÚve¦Î} H¨4ÐÅkÞôU`\r(âiYAq@t\"ûZ¨«c	Lh)ÖF ·WV¬ÄZ-¦6ÂäÃ\n(CaNåÞ3\0#fU©ú(±«VfÙÌÐB¥HH*`±!rHJ«eUèÔW[Åq&*IAAzck`,¨¡S¢j&d)jâÖàRU.T£©*êÖ¡ª­t%ø/\0	´\rÚÀ©ÊÕiÈFÕ(ZlT4´lDI¤4	A_4@#iâóÌÑ,%«@¸c+Iñr´+A.DÐ¹ôBèÈFj±tEÍÅ Ya2_E(LIòIRn­jÊV¢<R,ëI¡È|«\"9oùç¾{7ESÔè;áþfºÏ3ôgjño­m³V6ñ*æ}æ³øô>$\Z?y©9àiâs5$ØxªÄô^(¤¸n4M»ÀÚPàf0ì%,~Ý(¹¡cFYHGÆHÌwYæi Ûª1ð¡ÐØxÛ¶0L2¡´Ë<21Ê%÷<8ÃÃÇT¾RX/bÃnEk+#ò57\ZfbIK!.Ø3Ày?UM<i°&Üwú\Z³\\9ð0í©¸|ä¡S¨N3 æµÚ½dEæm!nqC\ZD ó°ÄÎ§~Ö\'·Iäw0AÛ@U\ZÏ+Öè Ï¡+pN¨_ÐâÆ¼¹·{YäÊóèuäÆì&E¶XT-TD´\\IàêAUB´©Zear:3q*Ã\nó¢Þ0ùCQoàÐÓ/PÁßò\'êYXi=²÷øÇ}¡ê*\ZC9=ÙbM>fJ­m¨èÎ«pï°Üo§!\rVÊ³\nãJáÄsç«OoKwgL{­Øbhß½\r&cÆÐ@Àm$HPÒ`Ä]§myÂ+½.¢ªêZÇ##DAB!z¼ Ì6spùÔ×9ÁI¤hµP133qRëAñEJîÚôKóaF~îC=Â¡	QQE×$G1ñÞhn(¬BnÚ!fk2×ËÞ6ñ¨_Á ÚÚÛBl0qy1Dò<ÏqùÊ0ø»)ÂÂ&È', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 6000, NULL, NULL, 'C8g6bXbYgU', 'Completed', 'imran@gmail.com', 'imran', 'Rajshahi', '01774566666', 'Altafunnessa ln', 'Bogra', 'Bogura Sadar', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-20 10:49:30', '2022-03-21 13:45:32', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(96, 78, 'BZh91AY&SYiø\0²_ù@\0Pø+ô¿ÿÿú!\0\0	\0@\0P½î´±@(!Ì&0a0`\02i a)\r1&¨\Z\0\0\0\0\0\0Ì&0a0`\02i a¢d ¡´\0\0 iÐM<LÓÔõSÊz()=<¾\"äC!!ÖRwZ<xä¼¡Q×ÄAâEÉÉF<`]RI~é)WcÚj(ÇUKV³·i´ÒóSiy:\r\ZË`A¤ã¤±b?\nÙWyÊÀT¬¸_/\Z¥Ò¬EsaM(¶ñP^­e¦ÎZBE¦ÚÖ¡VAÔ@\"B\"®+KJ^ñP`R´)Z­J`@Ø0¯YyUF ¨ë­BÂ*!°«¬V\'a`%2ÕmSæIA«VfÞ\rÄ*@Ì	 ©bAÊDªeLT9Gw	C5!Dô´\"¤Ña$¥(\nÕa) Z\"¸L©jTRÛk®Ñu©ªÑ{Ñr>!Hb\"ÀòjA´âhmJ\"$bc9Z3±L&5HELÆ=f·£6$°¦#Èc+Ièä½ª5Hz\"¬D²TÅQUß1Pp.ó.^eÚpYhY¦4¦T²-FAìÃÖp¥ÚÖv0ÀY\nnYRèBúãTgiôÔx¤\')%O¸ö}f\'uvè`Gôö%ãnöA¨>×f¬0m+¯ ø\Z§è3Àí Éüê¤Þ|O³ÔÒI­TÇÛRKaêhåACiÂ(ÌftHØÀÌ±ARçôb;Æ¶#J;Ëï\ru8hÑ¨h0¼fÃ÷!p¢_HÉÛºîý»évX.°Q±XmÈ­eqèz\ZM%F¤Gó	`3 ä\\jc5ÍS-tÌ&Û¹OÇÌj¶ð1Ú^í¤Ø>P©Ðyxo»Ü-®³ÙX	\"Ù¨P`6¶k)ÖÔò|ITk.­È ÏVÀ(_¡ÌnL|Ëþ%ÜìÍ^[ÏÁ.è\"ÀKZ,*ª\"O5À¦÷b\n¬\nw)8@×XýåÅU`tfÒUÃ\nú#d·=M·¤[w#4Ëª^¤õ¬,4ËÎñ¬<5ÇV÷JMG±Á§=Ãm!såT¨Öê8£lÙZk4|\Z2XS*0Äd(:FÁ¸ÉqÍ×ÆÝ,æ¿¹ÈÄÐ1¾öB5aa \"¬4Ems9Î:7Â+±.\"ªâZÆFãDAB!p×!÷\0ÊÃ¼æ4a7ÞÒ02ZTdÆFSº*PÁ`,ÇÊ®F-vìÕúvj8ç¤ç\n%EE-ÈqOaïÚ@#ëÚÑeä\r]Eæ2_:Yf$d	\0¢¡û>ÈC(°}ÏãD ý2Oñw$S		(v', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '3', 600, NULL, NULL, 'W5C29zBNXK', 'Completed', 'imran@gmail.com', 'imran', 'Rajshahi', '01774566666', 'Altafunnessa ln', 'Bogra', 'Bogura Sadar', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-20 10:51:12', '2022-03-29 01:51:14', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(97, 87, 'BZh91AY&SYejÀg\0²ß@\0ø/ßôÄ¿ÿÿúPy¼ÆÀC ªhA¦#@À CL$RÕ\0\r\0\0\0\0\0I©4Òbd\Zh\0\rê4ÐÓ\0		\0L\0Á\"I&èÑ J#j\0ÐÊ$¢Ho&Âv(\"M««¢Ìkt£kÛüU;·AºY´Ñ*7cìæÅO(Îy+UO¯ÃÖÖëx±22åá´ã´±B2 ÷Ð8	\"MHzÆçb¬3¬Ý «N)*8\n	!`ÆÑUéf)Î2Bjó§9r%ç²\"ÀPBªñ~íFÙñÁUW)yó2A%­êda&&\"\'qÔªbæìcQCdÊ2YJÚÂ¤ÒõÝ°lÖ`É2&1Ëâò¥:Ü¨CÄÝfìQ`Srj!a]É¥Jºék3``X\nÀR¯³0\Z¢1(¸§-\Z}I\nÈ0#.¤B\n<·¾n$Q¥${©-è©*K¸S<þ~$â\"LclABßnnæöù50jÜ¶Ü³i2]b¶¹µ3­km±,gTjp·¬¼]\r[9¥P .A$£?¦èÁ¹ta/ÞK1ð>kxÛÜÈ4½ÑªJ¶ÀÃó?9|FyÙ.ef¤v<#\rÇÈÈ°Ü¦F½{æ\\¤T7f[ÀÈ¸à`0Ô¬\\}ØÜ½BÅæ%øÈGù`:«ÇlFH­CmÆ¦&Ò6@EC&ì3Àô!r\'Ôd¸iÎÜ8Ý[äP+BæÅA·!R§ÜÚo0&4Ì\"D¥	^3©\"¨©¸{nïYø]°%N<×ú\Z«Zja¡gM¦ñë\"âgP  |{-Äõ^ &ÒAÒ¦cH6ÐíÖ¹9uÄ$I\\ÖÖuEÃ=I-á-¨_ÉÌâÏjx«3ÄõætäÆê&E\0[(+M\"KÄd²¤È#ÐF`eÑ\ZÉRãC°0HJ]Å!À°_éÀùá¢1CL¬ÂÇo2]Õô\Ze`ÕþÜã¿iÌ¢Pn=I£àjGa¦6Lí1Âi\\ÖÀó:\"óªÌuÄÌßw!¯cK)(¿ î4ª\ZfäT×tìÎvû|0}PAD\"1(@m$HPÒ`Ä\\ÊrOz]5õ¡´ya¹\\D-| À6rp;Ì¯KY4J2ã.,¬X&\\ª0këKÑ¶÷z\ZÌrÜv	%r¹E$G^å¡\00îIXMèÑ%\ZÚ¹þý&®8NÂ@ääòÂ((Sþ.äp¡ ÊÕÎ', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 2100, NULL, NULL, 'raWOS1OnYH', 'Completed', 'b@gmail.com', 'fghfghfgh', 'Sylhet', '01546166164', 'dfgfghfghgf', 'rfrfr', 'frfrffrrfrf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-20 19:22:56', '2022-03-29 01:51:23', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(98, 74, 'BZh91AY&SY»ß¯a\0«ß@\0ø;KôT¿ÿÿúPÝ131 h\0G0\0\0\0\0\0\0\0)@\02\0\0\0i MDD¡£@õ7ª\Z\0 1¨\0s\0\0\0\0\0\0\0\0$DD&Òi£BSLj4d14ÓOSj$¢Hq\'~ÏtÐ³Üèè³q£%¯ÄAüZdä2QÏ¤ËÙX\nÐ»¡Ll3 ¸Yq¡DÖ1»º_=Á¡!*ãTQ;MÚàÁ¸êÐ¹cvÂj¼@\"H±s\\9²LYÙ(K´íWyi©h Æ	4Æo,Ê@Ajñ\"0À\nÉx¼bl2\\B,.³y«D¢è«x¼)ó4UgK,\"¸¯Zàï.±/Yî&F5ZO- ÌÈ<I	*T©2$¦EBUZUxU<\Z\0µLQfÂV©&(,PµCUP\Z¢ZÀ28k8S&!ËÈOÚsÎÆ	`(@Ås2ÁcTÁeÊ3¤²of`ÒB¤d	©0\0iÇ¼ÞñÐhÄBmG¼c)3%¢ÅhV­\'Ek¿WJ\ZÔ¥/%ó¹¬\r/iHÈÅ$Å ÃÁaÉrµ\"ÂÊ*m/,ÃÞó°««ZQiÅQdÍOQóÞ{OQq%Où^°Øzîô0|\nä<ëñµtäìÕ\r¥|£h Aÿ§¼Û?ãêA£½qð3è<Í¤\n¤q?5åRK¦©·J&c	dPý4¢G\ZÌ*B?È:î°<àb>ÁúÆ}fÓymÈÌ7HN	X7àgîTØnò{ûÔîwoäÆ½M	¯èÔÊQ\\\n÷Y\Zc é3*4ÌÅ$82%äEÍãØ3xðùÔÓZl	·.\'Ïê5 X(wÀBãØiÄÍß à>É(d;Â,`9#êðÝ«Äô^	!°Îç$1¤B&vÝÖ\'¸I©ØdAÙ I*gÖè ÏBW\0È_CÔõäemáèÍ@¹^¾go&0¼GhZÙaPµQN¨<H±%\nI1(J³y*£\nî¨ÃÌÌ5¬ZðFhi°dsó\'µbÃLÈöcË|ví9J\rÇ¡Ég\"9m¶Tì4Î©Q­ñ;ÔwÐÔáMðzØ\Z¬)Ìd(;Ã®ÍNN·m9SmÞxÀ¾¨ ÈÆ\"A#%	IS\"	\"Í\rM=¼¡à1UzXÜBÁÆQP]{àÌ6rpö»9ÈÆHÑnP133QRK ºÐ|QR{£6½i}Øe¸ga6ÁÈ!**(ºäê\'î>®ÞH¶>6 jô^)ì<y¡y` R\rOø»)ÂÞý{', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 1.05, NULL, NULL, 'ct55UB1EG8', 'Completed', 'deen@gmail.com', 'Deen', 'Rajshahi', '01774560076', 'shohid jobbar club road, ray bahadur road', 'bogra', 'bogra', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-20 19:44:52', '2022-03-20 19:52:04', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(99, 74, 'BZh91AY&SY,X\0¦_@\0ø+Ëö¤¿ÿÿúPÝ1ÀZt\'¨z@Ð4 \0 	A¢ÔCõ@h\r\0\0hÐ\0B¢mÄ\Z\Zd\Z26¦F@s\0À\0L\0\0\0\0\"Ò¨õ \0h\Z=O)\n6À^Áï>÷#³düh;N¾¼*2ZøD©s$¥ 4¡wM9ÓÅWPÆxÒmUF¿-îiFåÉÔÐÖ¸±Sw\nYärB\0ðEò6ÍÂWI´¡.ýàm:Ú-K9i	¢Õ­ZGÈ:\r\"A¡\\Vd¤PÚQI¥.\r¦	´\rRmJ¢¢¤$2«©ÓÄR²HÂ]#È­{ËËS6äÂ¡ÌrxÊ(ÌAFK$0IÔÛSa3â+ÁóF5B4ÉægZ^Ù42Í¦vu±§ à¥\n$QBl5Z4ÔÕÈÍôa¡ºC\"4HPÆ©ÈSc%§.\r\rÔÉ<ÓàKYIs@P³\nQn¾Ù³\néEq\n&¢Jd¸²H»K­»îæhÆ8ItHm66kRjà·Ñcà)ä¶°MÆ¶µ¬ÙÃÎ¥6ªÍ\\ 2sèê\"38JùX<FÅi@¸LuWÈ:´ÞÈÈ8ÍX`ÚWÂ7TàpØgýfïECë>ã-ç©&fõR9åî©E%ÃêkÈ\rJC¼°(}YÑ#2Æ&f9HGÆÈwX(ØQ{ê&fâÚu\ZÈF$ý$ÁpÜgÎG¡aÊ%÷=:ÃÁáÓÆÆÁBö(Ø¬6äVª¹þqÌÈ¨Ó2HàÂs!,Fs$º.o7µLøS@uð?Oèjö\rW=êÌÎCÌñ¡S ¹Ü)PgP$}>QoÜ¼Uä6×:¡\"y`13ØwïbxNÆ³	%Q¬±½nõ%r	ÜÏàæ¶8õ0ÔÃz°r\"ûv=,axâdX	kuBÕDI:.2{PESe$Ä¢ÊNnKXÂD¼#b¹<ÌÃaqäÓ/PÀØìHÙâ¢IFÊûÔ áT¾@ÄF6Tï3Ê©Q­ÔÙß3Ê!\r{Y¬)ä2ÆÃ%Ïþ}­ÝaíCPD2\\qYI&Ò40ÖÅ&mzÂ+É.ÂªúXÜBÄÀc((D/d\Zup¬<\rq`FKUc#)é<Ê1X-Í(`Úö¥èÃ\rã>ÍsÔîB¢¢®¨#©Ohz·B\0a7Í¢¤Á>øÖx¡ÃÃÄ,\'ñw$S	ÅÈ°', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 2040, NULL, NULL, 'zEZe2Kh2pj', 'Completed', 'deen@gmail.com', 'Deen', 'Rajshahi', '01774560076', 'shohid jobbar club road, ray bahadur road', 'bogra', 'bogra', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-20 19:58:12', '2022-03-20 19:59:19', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(100, 78, 'BZh91AY&SYæ¾Ç\0¤_Ù@\0Psø?öD¿ÿÿú!	ÁAAÀ\0`_}B¨ Q@J ¨q&CMÐÄÑ¦L@ÈÂhÓL É2dÑi¡4ÉM\Zi1ÆL1\r40CF1#	£M0&8ÉF!¦hbhÓ& da4i¦dÂ$<hM$Éé¤4ÓA\0Ñ  ÈÐ*H MOBe=M<¦M\Zõ\r\Zh1ÒÑ»Þÿ½÷¿ëÁ>´|¦ \0öH>!î:VptÚµÓÆßj¥×ºT¼.ÝüWYNV¡Áe)ÅO­crìêÐèjÑf\r¥MraÝ¾ÕÖN\rÑdâ»ÀÚ]ÈääËy¼]Ngsìu²ju:ßzæÍÓGíI$wsÏm>Ó¡õ©Ôô=nn¥?-ÔöÛSXì=·DhÊÓßF=Ú®»o~ì0BÕï\ZB¡°Eè)\"H$]BîíÙ4Q¥*Id¦Òek)Y_EAò)4TJR¤h¦.¾U\"ñ,%)\nP¡kaK.¦]Î¥Ø¼Bë¬¼häµº¡µ×]\Z11!JS+0Ã%ÕªD©×sÃGÐ¶eLÍJe£2ÖTå)ál6onni\rnpol84-Éyóe2Ùf-E7eºñ±²]\"¦«¶mf­\r	dÃf%%]q¶hÐl(atÃQc3\nÌºj4bnLµzÒu\">ÓÂ ¥#,\"8âXaSDB-,ÄUKuCµIh^ÒþÉeQA0(ÂA¤RAT¥Ô±\nT§TêGB¤Fð%º­ªT£,®¹¢Í5hÉ£3-1ªsYÖÁÖ»,5kÁ©Ö¼ÒG«N%Tqh³cv7h±¢YFìïU±«S\n6Á´geQ³f­Ú´(ÙvíÌjXeeÛ[%pZZæbÞ+OÚùgÙ×7Þp³¾àj>sÌòÃâx\\·yÂVG÷ùå;SRêq6|Ê,ìå4RhP¥$Õ²Ï[­\"b4øOªvye9)îyc\\x\\6s¼OÈf5²¿ga³¬å:Ïtx³0Éñ¥2t»Ò`ùWR}2Ñ>Å)Âh|ÎLÄw(9M&óå7pGÁiâ¦òJJT¦[6N¦gtNsGææ¸³yu4ÎyìXóJ^SÆQwk½e6SgÄða«uÚJQ«I(¥.M\Z&³ú	Îy\'	`Ù°YàXÔh]6:8Ä\ZìÉ*tÊn§Å:tIvÇr§ÔøJU\'k¾pvÍÑÌ³±g{vffÌ?[ÌËâ<	iN÷¨\\ÓÖ`û§¥Jº©âg.vP  ¤Jì0G; Ü/lm+uçdøæÒÓÐâ//TpnÕ¨Ä©÷KÇ.æìnès\'ïJ)Øð\r¡ó©üÔím4x½ãs¢UzIRÎãPÂRfz^íQeÝ)äp`³2òéÁ11,lÄÅÛZPü/ÀÖe2´¦U;eã¥´°Êe&²/)hqNÙØX{\'1w]¨á\n²6úK½)»E%Mt¤Ýïu,Ðj»-ÈÓ¬è3 ã²Ñ#!$!ömÈ}ÎSTÄ-äp6ÐÞ3G8åa¬ås0íZOmS-ËÆK=,r.7X&´Òe³×2ÆÁÝ g07Ð81!8Ðb\"FF$b´A\0¢(ÈMîÃÎäïYv$ñ&SñM4Ë ´³y¥L?bægzî¶Êµ§DÞ\nZJYNén»VÍ¢¤8ÇLZQE¥Õ4\'»Öi?C3tØltJwC3	³hqR|¤}ÙÒQïlñâå=ÀaxK5OQ±øaê0¥hi1tÈ8ÜM00t£õ<¨\\$ôúg©\nRRdAõ?tÁ¢¡\rSæ<¡ÌCçéþóþ.äp¡ 	Í}', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '4', 8190, NULL, NULL, '6zPOuUapvX', 'Completed', 'imran@gmail.com', 'imran', 'Rajshahi', '01774566666', 'Altafunnessa ln', 'Bogra', 'Bogura Sadar', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-21 05:50:36', '2022-03-21 06:05:22', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(101, 88, 'BZh91AY&SY,È\0	£ßù@\0Psø?ÿü¿ÿÿú`@\0`	ß>\"\0¡@	@P¨QB9Ð\ZF#AÓ&&Ð2M 4hÂ412bh0 09Ð\ZF#AÓ&&Ð2M 4hÂ412bh0 0\"#ô£#M\Z\0hh\0\0\r\0\0\0)J&jz bhOTÍ5£jOLz 6£OSB¦ÅOô¿KþÔt_üþoWîWÜ¿L±a~åö­W-Ë÷®^§q±¹>Á(>0ÕÉ!mÊ-¡¶õ´\'XpéÅæý,ÝYÓ!´îõÜ8Bøa4ð÷Ø<:iÓ¤sµ¶;×[¢én¸ë^kÖÿWìo\\n¼h¹[£kÒvÒ©ñ/CÖTä7±\"ÜjÜëaýÜàº¬[ºvAz è£j^ëHcll²4Ó\Z§Á,U+Ë§N.X@#LD,\ræÜ9lÂFÀ²9#Ìó ;\0F:(MjÍ¸p1$a90HF(ÆËN[pý§`{£¤>óì(Ú\0p@C½A2×`Ã#ËM9pÕØá§\ra÷Î¶(0å¶XÃ³òs&5$ QHG.)¡ÐÔjo6640âjhlq7`°¤L¯<» \"åîÓ§°ìxrðØn;¡À°6mÝÞ;¤0!wNSm¶9wté¢+nàÀm´0ì\rCÈZ!§N(Ú6½òzj_$ûR¬²¦XÅÀ[iù¢ØÆ,i ¡Æ-8XÀ¡ôdeÕ´È6FB(b¢\"°Q4(Ó#tS0#Ð:=9=¬À3H*øa¶Øå§;:r:r;63©ÃNSm»;rt=Móvh9ln4[¸ðå±áÙ¡Ó9i&Ã³ClàÌ$7mÅrDÝ°æìððìè9<ÞfÄ9<ð;´ÛÃ^M8^;åCÓ¯¨>sæ8¾ÇÒØ÷ìs~÷ØÕÌü¯°û_R£á¼Åù÷ß­öµòµÐ×é2ð^{ÖË\Z}ÖÇLCCDÙÝ§Ø0Cù<>vúØËü)äµ¿ô9:\ZºOÒåyK|jaû_;yþ¤úÎÎÓë<¦§aÛ\Z^Ñ_E±º58\'ræe²ò_ÍàK±o^§ÄýFîhÑc²íºíª·Ø.óÈèrºcJ¾ûCÓWQäeÕh2a:åÂà<vãÀæuï¥ÒÔ´¹\ZÞö¶ë\\ú/2ø¶´mmì¾+Lwc»Ù{N4báv¸Yb8,²Ër8\\#í_Èì;N£k©¤a¢55ZÍ©VëÄ´¨ÃÚjqã3¡Ë±âKuâMm÷¢óËî2>f«×dw^Öî:¬¸Z­^¦¦ã¾ó,z×Âæs{½é\rÆZ^äp½1ï_Ü²Â_6Æ%xî\'±eV¿$rXX{öÛÍoHy­O1ñMmÌµ=-Õµ9ÝW}Æ­ÆóZónÊ¨v¬²Ë/CÉw®¶ç|,|¬yQò0æpöÞày/jv|¡6èC£¤n:Ûíõkn5ºã°Ùºî¶^û[;sC¡°ºa¦°ÀÝ\ZvÖã-¬55®µ±ö7º6-ÍN2Opn2Ð¸ºG{©Þ~kbø2Öõ£ßWë+s=ÀÖãVöFW÷¯óÚ^K¬ð6£C½ØüÜ)÷C¶÷220#AHz¡Òú-òmdvù=rî.g²;L¾ç+¬î;í÷m¤±ÛÐÃkJÖÖ4¹ø4Æd¸Jóêp=W;òÝÛbø®/¦Þ(À¼À¥`X±pÅXeah±d2Q¥`Á3+ÀÞyêº]×µ­[ï4õ#|~cÞv-(´4º7U¡¸ÒÒ=C©:]öZ&ZYq^KnÆîëy/]h Á 4¾#NCÁlrEÆx¼òØÜ8ÜeÎÈüâþü7bÅó^Îèzºø25£hÚ4¸Ç|´¿3¼Ý|^´ïj¦[ÞÃ©eÝd´:­ÆÚ?Qkå^ëø>\'²£ø{½ÓòTËX\ZX3IýÐÃñIXÞÿ§ÔÿõÛf­ÏÁ¹¹ø6pWþ¹6~/Äü]þ.äp¡ Y\Z', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '3', 75, NULL, NULL, 'n9wO0GwLcl', 'Completed', 'rifat@gmail.com', 'rifat', 'Rajshahi', '01774560076', 'bogra', 'Bogra', 'Bogura Sadar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-21 06:00:39', '2022-03-21 06:01:49', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(102, 88, 'BZh91AY&SYm©yK\0¤_ù@\0Psø;;üÄ¿ÿÿú\0\00\0À\0`\0è\0)@\0\0\0\ZiÂi4Â0LL\Z\Zdb0`!M0!¦Fá¦&`L#ÄÈi¡ 8i¦F#	¦ÓÁ12\ZdhhÕ\Z©úê=O\"dÈ\r&¦\'¨Äõ\0\n!`Bz	dÓ2&LÒÑbõµ>W´Hõ#ñ1\n(z¬¹öàûKÓy´ÄÌ©z>ÉRKNy¥ê^Z}¥áswBë)É¤äÃE0±E8½J73­MZ,Â4læal¦ì¯,¦ï½Gh²q]Öm.æ9m9©QÎu=K°ht:K\Z²vN°ãö§A¼àéz]N,¾§ÂÁ²tz\":RG¶{Daî­*¨»+2§¸¤/BJT&R£Ei,ÑFU>E²T*K²½Õ.ËEäOyeu+®Ë%¡BR¥\nYØv©SËéK*,©o}fd¥\nÂYÙ|uy¤(eMhÃäfTS,.»-O½yF-v¢R.5ÆC <qHaä\rRÈ¦0ôLÇFRÍZ¨ÊRË.èh)³-&EMWlÚÍZ6\Z&ÉÍJK.ºã\rlÑ¡.ØPÂé»-Í&­Öa6MZ±6L¦^êO*#î=É ¥D¥$¥H]gÓìYJÊ]ieBf)RÅÉNõ&aKÑu)D¥*%²É¡¤T\"RR¥:gLÝÐqTÞçè´\">R]sU³,flÑsj£©fìK®Õ¯RóxZ­8â£67asv©FMÖâ­\Z\Z¨«·¥5bÊ¦7nÝ«IÁÀÂ)ºËêXj²í)¦Ø3©éyWA=S¬é;Sª)\"S\";#ÙË	Q+ðNÖXM§âúfÒG´ØºgõQÀ|ªh¤Ð¡JI«e¹%ã2ì·;¾Q*(IÊ%U%1¸b1R Äed@z|Qñ30É¡ä8Êhs;	Ì`îq\'Õ-iärb#È ã4Mç»èjâ5Gæ´ïGMÓ¦ÎåÒÈ¥H³¢6N¦fgÑ4rrXY´ºÊÙÌpÜ£¬ó<%/©ç]ÚïYMÙÚïa«uÚJw¬läÚ|ÍVQ7)Jd·Nè?)Õ;g	§^\\¼«MsK$ÞTñÃSÉ+©äÝO33­).¦tì~2¢ëÊNÇàì)£±O1<ãëx¨£-æéàKJw=¢s¼Ðy¤ô©$÷©j#Å¼ð`â§¶J<gÌö[L<Ò:×sÚËOiÌæª986e²1*|2ñÚt¢zÞ/J)NëygÌIú)äk2ó<g²ï¢Us¥ÔFQeåÜS¶]ØÀ³2óC	²ffXÑ³iCÔÙ¬ÊeiLªtËÇ\"JL¤ôH¼¥¡ÀR®s§Îò­­¡x©f£ó¾yw°\Z)*l|RïäYçzÝÞyf±/:g~e=sÍ,ñ*UJ£2ÉñÎgRaIÎ<ðéÁÂRuÊjã:çc¡Dø(q2´]t³~2¥Ç³)\Z§t´u^k<^ã¥«ÙQÞÙïÁð%J!R«àT²)*EEEJ\"¥EJbQÊIIR%TwÍ\'Tå<Îå\'2ÊhÒs!ifób¥L\"ÓË\'Úðu^qÞ¥¤©ÜòÎwÚ¶m!Æ9âÒ,NÝË31<Vnp§)NØm0´%\'¾¥&Îå¸¹ç°;Å Âa,Õ;ágl»ð,ëuËI),ú7%)Ö¨ZqËJMXOç(ÃÞ=¹çDü!\'£Ñ=´)IJ%cõ?T	?þùû¿gî¿ø»)ÂmKÊX', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '2', 40, NULL, NULL, 'WkCPKOGOyu', 'Completed', 'rifat@gmail.com', 'rifat', 'Rajshahi', '01774560076', 'bogra', 'Bogra', 'Bogura Sadar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-21 06:03:50', '2022-03-21 06:06:38', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(103, 88, 'BZh91AY&SYKÑ\0²_ù@\0Psø;õ4¿ÿÿú \0@À\0PÙ¼Ã1uÀÐu§@ÂSRSÑÚ2= ¡ Äê	@ JÔ\04\0Ð\0\0\0\0\0M(dd#Aêi i dyh\0ÃM21M0À&F	Ó#C@$H\0HmC@\0CÔòFæ7Ì\'Ôê ¹LÈcE\ZlöµQ³)­#Y3:¢\ZFR(æqÔzÒÁ´°Âº³\Zõ©-FÕ-^üÄËcÚ¦héLÚTfs±cAËA¤£ÇHSÜkB\0à§$X©ëÚmõu:b¢HKF6!L:`$SeM ®^-aÆÑ\n\rÒ\"NfÈÏIm*¶UÚJ!m`ÂJ«¤FJ¥vF\r®ØS¹wblIUWÖ!C]T©Þ(s|c|psbSI2$¦e,H²f­Xóg.]\"RÏ{µªáIÉ¨EFwpÕ÷tBÈéeK¸½QS$¾ä%÷­BÚÀmb*z¡´ä#Cj-6B!lµhq3B\Z1à1\r6lzÆÃÇÒMñ)0îY¬L©Ò#¦æÝç{[4iÌ¬Æ1ªk1LR©& Ã1JfÔ]¼\ZÎsTk$)v1²j-+>l(µlÛ;ÇÁ¨ð¥ÆÑÀ	}!ÀHlÂ£*n^bìCÊ6§ÎáyRMH`ÚYg \"Æ¹N#¡ZyOysÊÔ6Íóã0Òx14«ÚzªâjECQî3ÖdÍÅôi4°({ùÐ.HÈ6ÀTÀÄÌÂÁq¤$ÊFhÄvXÅ¥¨vLädi)PbPËÆC°ÌÏ\"É|ÆKfèvvÙ¾u¾ ªBæÅA·1N§¬?3I°Ä§yÐ&f+ËA	d2§q0²,kMMwäAøv¬ô	o&³1Rá¸D¡D­ÊDà¸a+ @÷u|<Î£hÁ\"*nC\ZD ê¬0g2ÁÓ¥Ið©\Zeäò	SkëuQ1d°Àv!r;MàÍû\nó5&å7ò9ñLaXÐLa\ZÏIQ\\VÍp%¾¸r½LE`PÑØWSpé±C¢dGÂu! {d®ÑkÚ1CL­ÁcèK¢¾L±Ú)åu©Î&*[èÐ-$Ã­°9§4grSkØ\r+ÖÁÓa¶záð``2è^\'RëñÈd(:+Ã·\"§<ýêÎg\0c@Æü`Òi¦1i(16BPÒ`Ä]¥\rFG,ø÷E6%ÌT\\\nÐÐBÀ°ÆML]º À3ààt;!ß-dÒ0Y¨È\nK|\\Le`ªÄ{QBak#½)y0¶Çüs9ðÜzI¥EE«/!ïÚ@!TMìh¤\rRkÌdô^(^± ïïêØ60nma¬(7ñô}EÇáúPP¹\"(H%è', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 40, NULL, NULL, 'f4D8vtIRj6', 'Completed', 'rifat@gmail.com', 'rifat', 'Rajshahi', '01774560076', 'bogra', 'bogra', 'Bogura Sadar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-21 06:13:44', '2022-03-21 06:14:50', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(104, 74, 'BZh91AY&SYË+ñ\0´_ñ@\0Psø+üD¿ÿÿú\0\0\0@\0P¾iÂÌl\0\r9LÈÀÄÄÂa0CLM0\Z\0Hh\0h\0\0\0\0\0jL¨ \0\0ié\r\0\0\0\0ÓCÀL\0LL&4ÄÓ\" Å1\rC OSbm@ IGqcx	|Åõ;PÆ3¸ãCõ>_)0(Tdµð;³ øI¹`00dþó.0C£ÂÌVg2Kxº²Ë¤ÓL\r&!¨Ûó(X×°×UàoB\0â\'!$`bk4÷QáÐâ<r©ÙÄÇÃ$¥K0I/eÌH0B­jóRKÊ¦KÖ®á*E UêùÓ%¤¼Ñ6%Mjà(²\nåeø%$ªÖl£f$Í²æ óbT©.IL$NX\\ I9\Z#ï@OJ(Q31+TT1\"ªÐõ	h@@â¤)vÙÇ3zO$øÍâhX\nÀR\Z¯Wt¤FÊcª)ËdR!ÓeÁ¤¡FFDª R(AGlxë2bK	kh=ãZL¡Z´Nôc3J³7@Ä¢Àåâô²P³(´ ±qg\"©ókL®b¨XÖJö¼NtA%öCå°ôSÜIö<¥àK½ö¼L\nÑé:®KÅ_ÔÌCÎìÕ\r¥|#0A\nû\r3ñì>;ë\n©8³Üe°þ\rDHày×¥ã!ØÓ¼\r%Ci	`PóçDÌè\n¬Q wXDCbÒÜ5Ðè25Ï8ÀeC3m>ä.#Ké;ú!àðßÑKã%ö=%aãn½Ö¬ú\ZÍæ£LÐ)$ÁæBXê$º.lc6Î¦[iK-Çðý¤©®Í;j |äPwÅq1`@øøÅ«ì:Nó°m\0Ø$uàrC\ZD ìXÖaÚxnSÀ-Òn<F$,ÂITk,o[¢<Ä­á:Ðº£iîäamÞÍ `WQ×Å/¤L-gaPµQNK;èRK\n¥H,P¤Ö%LY¬b¡T¼\"À°A°aõ2\rs³Ü¹%2.\ZÒz\r3Ð5§ttê9J\rG ûø9Ò4ÆÊ½Z*\ZÌ<Ü+hï´ÝMy¬)ä2cJáÀkç¼{-ÖÎX~H=Æ\'¾ÄH#É#i\n\ZLkciÏOEw%ÌU_k\Z@Aeð9í ÓÉÀ2°ñ<­sHÉjP14\Z\'T¡ç Åh Ð£1ô#^D¾ì0Ö3Õà1ËQÖ¢¢®HrÄoÞ@#¼f\"o{D3mÏ\0Àoö!>¤»vü\"H58C8\'ôá?Çñw$S	²¿P', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 15, NULL, NULL, 'ZFbdep8LV6', 'Completed', 'deen@gmail.com', 'Deen', 'Rajshahi', '01774560076', 'shohid jobbar club road, ray bahadur road', 'bogra', 'bogra', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-21 13:36:02', '2022-03-21 13:46:33', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(105, 83, 'BZh91AY&SYFIQë\0²_ù@\0Psø;õ4¿ÿÿú \0@À\0PÙ¼Á­,(\n\npÓLFL0	¦bd4ÈÐÐ\r	¦!H=@\0\0\0\0\0\0\0	zM\r\r\0\Z\r\0d\0\0\Z4Ó#Ói`\r244DÐ	¦ÔLjb\Z\0ÑÄÚF¾oØç\0°_$1AGÓ02àzIª!À2F¯]G®håjäFë1A\'¼ÓE!|ªTÒ¦*Î°±Í¥de;çæ¬z*CaO¨ÖÖ¦ñ$\\Xöàmé)Ðè%L	!-ÍÈ6!L:`$SeM ®YXgpè  í3s,Ö`6Ò««´CÚÁWH Jì	%]!°§rîÄØ.ª¯l1uXgÈ£téAF³#¨¢5D¦U89º5¼%PFQí\01)Ezei©UAycL²h.æÁo,ÖW¡zª®d½HKÖµ\nBh´\ry¡´ä#Cj-6B!r´8ÄD¸ Lc¸ CbM³õl±%x³4	hÆRrh±IjÉNzX¹.Qt¤ïV tAfHY\n23¨Q9QWX#QjÒÂÕ\nbRåetÔ0DÔÙÄñ­\'äyO#qÀ±è»ß¬ðÎë<Æ$ÏHÍæqë;o$ó,<¬ØwVª0m,ô Ac_Ðl×Ï	ï!ÇyÚDÞ7Ì4\"F&B6eæ¡5\"Á¨Ät2ÖDÍÅ÷i4°*|ÙT(6ÀXÀÄÈÂà¡ $tîXÅ¡°iÄÌh+\\	¡Q\r\rcÐfÁô\"Û\"HemscÑéµºv¾¤ ²R£nbU¬=æa^ÓLÈT$Hpc,ä%eÂar.5@ÍcÁð¡dòí«¨ü=ÃPskwÃ¬½ÙW;	\\\\Àõt]ky¼çA´`:Æ:+ä\\ùØXµHÔr/ å$IM¬/µ,ï$µ¾sJ¸³¬¿InF°ïdÀ¼®î\'-é-¹\" F¶6LÅ<(­¶W:ZBÁÉ)@äÍDb¤`)zñ\ZÌBAÜ@jà-aF(i \\rý	sWÔi¯îÓr:%A¹xO12^áûÎr\ZceÄ.ã>TJmq4JãØ:àl6Ï\\!F)àt)E<sA¥xo ÖäXåÉÎ½ÎæyzMÝdCM1cLiA´\0Ú$ÚàTÔf8å¿°+±.Bªë-S9#á ¸j\0Ë­À2î#2¾,]ri,dL%º(Lr¸,±ÔT]r0kÆÅÙÆxwãÈ7Qã&UT^¨ê$¾#Ý´B°ØÑ%\Z¬×xÉè<Mè^Ñ ííèØ60p¿!ù Cþ?GìÞ8?ôâ8ø»)Â2JX', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 40, NULL, NULL, 'uP7jI7nDfm', 'Completed', 'khaaaliq@gmail.com', 'khaaliq hossian', 'Rajshahi', '01774560076', 'Mohasthan', 'Bogra', 'Bogura Sadar', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-22 13:27:22', '2022-03-22 13:29:55', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(106, 74, 'BZh91AY&SY:´\0¸ßù@\0Pø+ô¿ïÿú!\0\0	\0@\0PÝØË\0AÀ&d`bba0!¦&	QÔÅ@Ð\0\0\0\04a\Z	5ÕCFi@ÂFÂ\r4Àhs\0	Â``$D\"hÁ2£Å=O ODhõ<TD²Ht\'Ó!\'19Ï¼c³#ôrrIFK_ ÄAò\"Îdô(ËúhL½k\0ÌDÚI+øÌ¨°æE\ZDaÍ*»¥|¦£¥WZ°Ù°Ál66,Gø ­yÒ\09\"Æã´âl+áë>0W+(KÏÎU¾Ógð\0ª\r41ZöµYæ2RRa@©³Rùªö¶mB¨ª£.E ÕÞ.R@±º¹¬äÝÜ³ç0`¸¬eò0$­]ÌbNTu*!À()QÇ¢`±!rHJªÆQDïbmºàñkI\n/8Ä^Ø*(TÅ¨\nZ¸µ8K(êJºµ¨dª«CÅ/Õ	Uó	h\Z·\nI«òË5E0YrE(¢Äl¨4©eÑI¦lfãsÏ°Õ,K± HüÆ2´! v¢î1&[b-CðË¡{¥K2¢YÊLT±EÁÇ­k-a¦aZÉbWhEÁÉ½Q¥7Ìyg¬!ºv,~\0£ó4?^eÇüG°éR^-ïdCîvjÃÒ¾#PA\nú#lþ£>´Gî1U\'#â|M7i&¦åR8õî©E%Ã¸Ðu6oaCÂÀj3\"¿Z$w05,dfje Tx9#1Ýd<àb6¢÷ÊæÒÚë&PÔË;O±åýC\'xxßÆÊKìQ±XmÈ­esê}\r§qQ¦f)$ÁÐ²Ôè¹Ø=Fv\'Î¦©¨M¸ï??ÔZáÌÏm¤PêráÈkÉyÄHm:\\à4AãW[È]²v£t	%Q¬ò½nô%wíBæpL{¸÷Üí¹÷91â:`%­U$­x:UaP¡ï(Rq^#õ*«£7¶ *KÈR8«Ãö6þ¢Ó3CL½CìOÊÃLÁí\ZËÝº<6çd¤ì9ÐSLl©©®Jl¢2:®áßC¸ßMÐ½­-VÊ³\n¥pâAÚä¹ß§Kx3¿Ä\0c@ÆýÌ0j1F#!BEEÈHµÞXí5:lå¯r]UÐµ¤  eÏt¼+y³)¹&Ø c ,fg<b¥,ÖÞÝµìKìÃF{7ÌõÚu\n%EE\\Q	ûóù¬	½í|L\Z½W Ê{O_T/yyzÑ\nA©ØvtæGqÌx¹\"(HZ\0', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 1326, NULL, NULL, 'Y11yP94suu', 'Completed', 'deen@gmail.com', 'Deen', 'Rajshahi', '01774560076', 'shohid jobbar club road, ray bahadur road', 'bogra', 'bogra', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-23 07:05:46', '2022-03-23 07:14:58', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(107, 78, 'BZh91AY&SY\nÝ÷\0£ßÙ@\0Psø+ô¿ÿÿú\0@\0`}\0\n(¤\0¢R(9¦&L0&&À!0#Í12dÑÁ14À&i&&	¦0`ÀsLL4a0LM0	C`FGé	ê=¥4Ú2 4mFF \0TA54\0LÕIê\Z\Z=KD?£÷?ócÀHûÑø¾P`á!ÑptÓl¸75aXV;i%yi÷JÍßÙuèei:#\r¦zÍÍ2Õ©ÐÙ¢Ì#F®l0²ÊÍßáG&h²p»¼Ö]ÌæÕÓêTé;.déu4e2ï \'1Óî;Ï3ê|5u,{G±eOdGRJÕ$¹k¢2Ýi3(¦VeKÒD<Õ\"ÉQui2Ñ£,FU=Jt©\"éP©0Ñ{ª]£WÖÄR®Êì\n¥)%ä¤)IJB(^Yu×aÚyImLµkïÑeJIJYfhéffaAe/f²¬²Ì,©¦Y]Ñî\\bRhÊë/aó4odeÁ«V82Ñ«fFöZÌrË-V0³)MV]ÖÔSV[/66Me6aÖjÑ°Ñ0,lÑ¤²ë®0ÑË4hL62ºa¨±Vâ*ÈÞ6,\\æ\ZNr6J¢wÙRÁeD¥$¥HagÛQr²ÒÑP¥EåT©b »Ð´-ÚY{,¥(*%IJ¡d%&¼êR¤JQ\nT§\\ëº\"7-{B#í(³®eehËY4^ug.µ;³®Õ¯&bói\'\rV,pÓ7lnÊæíV5R´â«cV¦Ê4ÃzRËÙ[¯6nÝ»V.äääÎÉÃ\r]»%2ái¾Æy­=Ól»FÔ^6}hÞ#QÄÞc ¤Ç3_	NÔÐº¦b¡îSE&\nP·6ÉF·ÞòCAºXÞ`9¨PÜ Î^F]o+íqÒö;¬½×HÕ¡ßO	W	y¬§9¼	ÌÁâå*Oá-iàáÕI´Þq7rGÅiâR¦òJ¨s\r\'KIá:\'LÑÍÍafæóªh9·(ë>ÂÇ¥áu=r»ë)²;Þ5n¹¤ù(Ù¬ÊMJR&­Siò=sªwÎS%%ND¼¹yV.âY&ò§ªuCc®W9S2©äÌáØÃ¢K´zóù¿Ì¨±ä¤ïyNNù²:Kíy11&fïPûOi£âè©äKÊ]ì&îií?í)@÷R-I!ñ}-çA1Î;ÆY}M$º^Óê|XtÌÅÕ96e²LJ¼x%ÝHcé<¯LÙ£²O{±ï]byªr½odö½4Rl²Ï2T³@º¥ö5&f­bY4·ã\" P³,Ãss@|K\0UC¥Ä /`\nEÝRX-IÝ(|§@í}áÜP¨©«© Þl;6ròÁê`s¦ñCÐêj\r@u.N$áC´gaaj¤ôº9ªwô\'t¦çtêaºÐ¢|(q*ehºéfüJK¹HÕ<%£¶óYèpóuµzÔy6}p|¥B©UðT²)*EEEJ\"¥EJX ¥$@#Bí5·½ç|ÐdPJI=$Ê~EN¢È-,ÞlT©ZbYdòvZr¡èRÒTÊÊlzg6ëµlÚ*CsJ(²i9NWx¬ÌÄÙ6\ZOÔ³Â\ZL¦Í¡ÂÞÔ:?kÊnáÓ=CÊd%ÈØl43HPà2n;X5¢U¢^7%)à¨ZsKJMOÆQ¼áõ½h¿[ã	<üçèB¢YIV?\'äù¡ÿ_æÃæÿâîH§\n@Û¾à', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '2', 55, NULL, NULL, 'GScuxBEPyJ', 'Completed', 'imran@gmail.com', 'imran', 'Rajshahi', '01774566666', 'Altafunnessa ln', 'Bogra', 'Bogura Sadar', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-23 12:10:13', '2022-03-29 01:52:07', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(108, 91, 'BZh91AY&SYÒëÇÃ\0·_ù@\0Psø++ü¿ÿÿú)ÑÀ\0Pû<Æ1@2dÐÄbhÀ#00M\ZdhM)©=\'¤\0\0\0\0ÓL\0\0H\0\0\04\0Ð\0µ2dÐÄbhÀ#00M\Zdh$M4\' M\ZHò@ÐÐSÊ\0\0$PIeEü÷2JÐ»Î1£{3ÞÞrÈ$QÕ7EcXÔ®ã¢Ôz!×j&*tßS#âMªÂ­ñ\"3-L1ªÊDáa+\r¥Ide:3:;Meõk ´µ«7\Z!\0p?C*l>Ó3#C´k;C°$-SZHJv!eEQS0i¡¢R(ÐPsic¡RtDÀmMÎPMlðLD(@Ø0¤RUAX(uÆD\n¨Lt	AUfaÅUXhæLª\")0ï>¡ÜQSnb+X§dcAÁÍD0¦GÊ08ÈåE1¸iÕ@·6å)»lU$#$]B\nîá7TØ(C¤`GL%TIIé\"o ÀÀq	´\rÚÄJ9ZÚq46¤¢hÜÜÕpÄBL@\"d\0lÆ=f·v£$®¶#Ô1æeÔ%áÍ¹Ê±²\r÷zQ,4Ã\Z\Z1¦\ZÌÃ,eT,9X¥ÈÑXLã8J5j!K£9M\"ÙêLÖ¦9¦þÙÚ:Ã§\"EÂ	y;¡íà´}ÃÄåa\'UNæd®P`ÚVÖ1¦?ä3Ò3Äî=]uqE3yç=ãÒg¡âl$fh¬#rî°hm0[È¼¼aé!*=M#¡B¥Æ×#Â¼v«|	¡±3$l+PÕCy¨¦Y@EIfJ\ne÷Øq!o\'Ô2[wCµ½­Ñ¢D¡U\\J¤Áí8MfMÁIQ´ËÅ\"DeBWê$ZMCÄf¡ÜøXa®x©»CÕë\Z[xí*èÌ×	&rÓÌ\\\\@ïó>+°ØybÒÕSzÒ!b¸`Î£]\räúE¤Í\r§2òG^A\"òjÇ1ÂêUò&·õ¡d^oL{8ø¢µ&tqo.²¼ÂØbdP	52!}>äHã¡ipAhÂ£ÀäÍ%ÔP2\Z^Ð¤8¦Att-¨d o/:ü	Ük\n2ó¼kFÇÄ ì5\ZÃîx{DºÆ6Û(B°ÇÄÆXÖbä¡yÔ´¸gÑhïhÀe)ÍwÁFD)ÆáÄkqË?>Í«Üâ14oÐÈCM1cLi@ÄÚ\0m	CImq(l7³\"ÎºEb÷\nPÌqQ ¸ëðÇ{´u:L¯KªÃk©·EËÕájÈz\"Âam¨½¯tG®±¸aÈ7%55­È	x~\0Â6TMèÑÈ\Z¶kÈdüç>g¥Ö$ùùÀÉlc«Á[,âÙö]+0¥Ò³ü]ÉáBCK¯', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '6', 69, NULL, NULL, 'qkvjBzCatm', 'Completed', 'mota@gmil.com', 'mota', 'Rajshahi', '01455555566', 'jsjsjhghjsg', 'noakhali', 'gu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-24 06:10:13', '2022-03-29 01:52:01', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(109, 78, 'BZh91AY&SYp ë\0·ßù@\0Pø+ô¿ïÿú!\0\0	\0@\0P¼2kÀ\0\rs\0	Â``4COP\0\0\0\0\0\0MDTiê=&@\0Ða\0m&dz0	L&i¦D&)è(ñOS#CAPBÉ!Î~£p¤ü¸\"§Ä³V¡ÉÉfÉ\"[5	\n>El7e\Z¸u~uNPhÀbB¿qÐèÄ&ìÅWt¯f(HBº¹´¹-ÊàA¤ã¤©R?\nUSy± *\\Öt9ö°K$+îîSeeWéE¦*Úµ£ î;I%$Û	D\\NvÀ¥y\00iR³\'Z\n¸!Wy¹IÆêæ6\nÈ(^»fºæLP·5zLI\"g]({\Z­$¥[ÀÄHÀ¡B\\$$BTU2ª§j®«½k\"åÔæ&JÒ1@ ÄdªCÒ ÐA	ºVU¬Ì&u¥íB^åï	M lÏ\nIW,XÕÁeÊ3¢\"n2 ÒB¤dD\n@RF!FmnÖBI6HI¥!Æ\"gbRC°v\n%Ý``«3h(¨òâè/t¨³(´ ± qgÂY;CR§W5¬Àµ¥jK%vZ87²RcpwâL Ú\"°KÍ÷e%öAÆëäÈ4ÜêÕF\r¥kÆ`Çò={FzOz)ÏQê2Ôz$ÍJn<	©\rfC¡£`\Z	LFzÉ#1<³F¶eLLÌ2\nÑì°0\r±\ZQkDÎ£#I\\óP30¸ÎèBÞ9\"OÐ2[6Ã»¾ÍÓ¶*©6ÅQ·!VªÇÈøMf%¤Hà¼²!,r$Y:ÎàøPËTó	WvÃó÷AÉ­¼vuÒ@øH3JÅx=¼ÅõØy®°CiãcjÒ!]Æ&q=ªKxºdtä²	Sk-K\"c<É-a-(\\\r¬kVâÞEu:@¹^GìahBdT	5¢¢Z\"$Id·ÚèAEu2dY2r¼\ru´±EHÙ°Ò\\ Q.ÁHp,ÖÑÌÒ9-¨Å\r2ÔþdºÖ\ZeÏ¬<uG=QÌªR:\ráñÈàG1¦6PÈÏ*%6´YÅ±Û#Y²z¡\rx4²HR1\ncJÁ¸¥È±Õw\ZógUûÐzAMñd!ID1\n,,¦DE]EN3ðkK¨¸©¤q ¸jÏ{e!Üê4a+ºi­\n2¦&2Ý&]\\,²ÄPZÈÅ®ô¾/¤g~ÃzNA@¦¦¢Ër#i/ ÷l?\"@@I\\MìhØf`HjÔ^c\'àvòB÷ggjH5:Y\"Nsüi(þÍgü]ÉáBAÂ#¬', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 1326, NULL, NULL, 'ibFnqHoQ0v', 'Completed', 'imran@gmail.com', 'imran', 'Rajshahi', '01774566666', 'Altafunnessa ln', 'Bogra', 'Bogura Sadar', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-25 14:00:38', '2022-03-29 01:52:14', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(110, 92, 'BZh91AY&SY}¿»\0¸ßù@\0Psø+þ¿ïÿú \0\0\0À\0P¹ä¬±Ø\0 °4\Zhh@\0\Z\0\0\014£\"(\Z\0\0\0\0\0\0\0	§z@zI§¨=@¦\0\0914L2da0M4ÈÄÀÀ$HÚ2&é4h#5=@$	#ÈÎ}M %È/êCrÖr\\Tf,ÀÊkpÄCi2uD7¤Q£ÑÌ«îV¡iE¯¤æ°\Z6³\ZºÂÊS7%¡¤îh`Fßy2¦ÍH+eNä Gôí	#1¤æ:$4%g\0µ	t`·Ï\r!+à4ñ2¨Û@`ÓC2Æ-aA@ha/P\"Àm«\\«°å!\rÃPe¡m`ÂL«-gTfb©da$«¢6î]Ø 3âîìÆ5*¶^Zl!° £fb`¹RAbD%Ee4íõTéy.§12ËZ¤PzJIR°ÒUAîIjY4&èIYV³0TTò¥ïBZ®\"ÚÀmb*mjÓ\rªP´Ù#KV5l¡¡i0Mh¸ Ä6=M^ÀBZ4	Ñ¤å\"\n1F!ÖLØÓ0&.U¹Ì\nXáËÐ½Ò¥K:9, ó&¥PÅöµ¡Ë®\Ze`µ²½ªj¤ £I¦mØ¦ñ´!²l\n@æpDô§fÕ²s(H4V`¦R+\Z­T`ÚV¼j!LÚl¸gàA¶À¢Èõ³-Nó¨ª¡ÎåÝBjEièiSp\Z7>ââX>|îQ#kÅ\nb!8£Ù`<`\Zl\rkÉ¢¹ç% faqYä?Énßîû¸NØH¨Z¤ÛFÜZ«çêP;Íã\"ÃLÈR$Hpc,ÈK!\"Æ£Èf£Áó¡\\ó	Wóñø\rAØ×f;Ëºõ>r$Lìó{a\\LC >^Qlè¼ÅÌ66;nrC\ZD ó,í<:è.¹Bä<DÚÇRÈÏKhK©Äom³^©°=ÌÔãÐìàÆí±\"pÚÒÂj\"$K5ÀùP%u2d%ÔàsgY%¡bD¼bàX­£ØÌ6ó[\Ze¨:zIu¬*4ËÃXzu\n%QÀ>#ï8Ìi!w}¦UJhÑ¸1:-£¶fÓtúáô02HR2\nÁ¥`àAµÈ±Ë/Zö3üè=`Æ&ëdCM1cLiAm$HPÒ`Ä\\fgM8Â)µ.b¢ò©ÔBÀ¸ÆML\\µÏe!Üæi¬^é¤b´P1ÂÆFSã&`°,Ç½&²2kÐì´õ0æcÌl;CBTTQº#/òÞ@!XMîhA¬­yÆ^³VÓ¸Ì$\Zµo¡6\r8¤\"ÂÂ><<>~ 7ÅÜN$aoîÀ', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 30, NULL, NULL, 'IkGIiUuvja', 'Completed', 'roktim@gmail.com', 'roktim', 'Rajshahi', '01774560000', 'Malotinagar highschool field', 'Bogra', 'Bogura Sadar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-28 19:28:01', '2022-03-28 19:29:07', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(111, 78, 'BZh91AY&SY*Mzþ\0®ßù@\0Psø+þ¿ïÿú \0\0\0À\0P¹ä\'X\0\04À&L20&db``\ZbÀ&LLÀL\0*hhhÈ\0É \0\014914L2da0M4ÈÄÀÀ$DML&HõÊmM\0h6£Ô\0¡S\"§ù6^ûÄäY«¿¿f±$.:%Åi.Ê5´³Áu5óA¯Q<Ùí´w±ªö\"¸iJ,hªãÊÎÐ³¡¦± è:¼K5ó µÕxÐ9éÚ5 ú2üë,lÜ´]ÝÚ<QQJ©\"\nXF$LéàÌ? 2gKW\0IñxÀqQ¨0t ÔB@uw§Ã¡·.\n UUâÉØK¤SÂµbLÆÕ¥(Z¨¦,RëàAàHIb¥H$0,H\\«è#ÂH¡,À%z´ F9Á\r¨ cT*aj&¢fB®°§\0aIT¸AR¤«­4ÁÏrçqxzÈØHH%ÖôlED¶°PYfH¯R!k1ÅUAdÄÇYXKF#Ø1¤Éxw­\nÔ½¥R¶6ÐÊf÷ÊÆÙ1;ÁÚ01¤Ú6T+Á@4Cl7	\nªpÆA*¹!ÉJ5¼UQÇ·YóÄÎIrÇÔ	y?¡ßWñ%NG°·¬{\"^¥l©Ù«JøFÀA\n÷Ã\\ûFp=Ä»ÑAÈõ³-gÀÐ3Z©ÎõßRKÓ1ÔÒÆà4*t>ãJX=Z°*¹ræ%MF9HG¾ÈwX(D^á®QÐ[V¨ÀeCQ6IåúÆONøx<:xRøÉ`½6+\r¹¬®|Ô¨|\rgIq¦f)$Áê!,Æv]61çS=´Ôn;ÏËÜ5c\\9o0vè |ägj  |>1iÉv<Ñ´±ëÀà4AÚ±3¬óvXBÛ&£Ì`AÙI*eëtPg+pOB3{iìà^ºÃÅ\0À¯GW0¼GX¿ä(ÖÕ$ê\\	ÞêAU¡B	&/%J*@èÍ¤­\n¥æÜ0ýA»³éFHi¨`uwµca¦`w\rcß²:´8J{Çð8Ìcm²¤.ã?¬ÎÉU­1:ÑÛ3iº!\rVÊr\nÁ¥pÞAµÉs}¼íØÎxyÐ} Æ&úY`ÓÂ	Â)DdQ¨° ±®E¦£«N0îKª¾BÖ:@AeËd®.ÌÓ¹	¤d´P1qs3:q1XÖ¡ïEJîÚô%äÃ\rc7¦Ìµw\ZÏ0rJªª1X\"8ä>[È+¾2.@Õ¨¼SÒvýçZmíî# H@ñÌ-<§!Èrãä3rE8P*Mzþ', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '2', 60, NULL, NULL, 'Pe4nqLTPic', 'Completed', 'imran@gmail.com', 'imran', 'Rajshahi', '01774566666', 'Altafunnessa ln', 'Bogra', 'Bogura Sadar', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-29 01:49:50', '2022-03-29 01:50:49', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(112, 78, 'BZh91AY&SY¥ðíÈ\0²_ù@\0Psø;õ4¿ÿÿú \0@À\0PÞîÍK,²ÂT Ð2\04\r\0¡\Z\0 z@5HÍ\0\0\0\0\0\0\0\0$ÔEQúú @Ðz\0\0\0\r4ÈÄa4ÀC\0a&&CL\r\0 A50F#Q6	¦@ÓÓi H =G ±í?S`	|ÜUaCÖHöÌöÛÖh`ÈÍÑ!G ­óvQº%ÂÍ¯UÓ« Ì Ñ\ZKu¨Yq}Bÿ3]Ò½.«¬,e3±,§qqÌoæ3cÏRë\n}¤ ý6\"âÇÄfãg°§#)0Px$6l¡c3cYmBÔÀTaÄÌÕÚn! v8­®DÀm¥)ÊsRTA\n¬^.Èw1Pª«ÅABÜV1)\"bîñ¶QbÅÞYé*Hòy	ÅJ2òD/*H,HNW9HpnG)*((LÀJÒ1@ ÄdªCÒ Ð@@áÂn-BõU\\É{ÐÁi&Ð6h*ò²ÅQL\\£J*ÌA¤H À¨Å) ¤QÔâ»YÌX¼BY¸c)9H´X¤ÊLµd§=/%æfneÒÂÈ-	AVQXAaÅL(è Ä0¬³ajÖ±ë¢\nÕ¤¬Òº¦H7#ß ÷S°Ä´ÜXô]ïàxc¶Ï13Ø3i §z»É<Ë+5ÕªJ×FA×që3ËÜ3ê?\"]¦ ÞzQsædHÄÎ¨G9æ^jR,\ZLGC-@dLÖ^³ÀsK§ÓB\0Æ&Fá$|¤dGrÀxÀ46,èµDÍæc9]u ­¤Èhj:	Â>eM±¸[Ïùªtt×²v¾¤ ²R£nbU¨;æ³½g$¨HàÆ\\Ä%e¢ar.58ÍCÁî¡\\òí§ ü>CPqkfã£¤½Ùù:	\\\\@ôr]+i´ç!±icHÃp.<lO¤Zdi8pÌ$¦ÖÚDÆwZ^Bóq°¯¤¿An ïdÀ¼®Íç\r©-¸\" CYg,*ª\"D²]$¶A$Q^¦LD¢Ð0%(¤ÌT Q,!À¯^#QH;H\r;¨2hÅ\r2Ô.*ú2ã0Õýº#~GAD Üg6/	æ&Kä>ãqÙq´æÊM­æi\\pZÇ\\\rg<õBã``2¾g\"SÇ0ÈPr\ZWÒ\rNE}kÉng¤#²ÄH#M Ð41&Öâ¦1¿-½D]ipWIjÄ  2hdBÝ¦.\0ÊC¸7Êø±uÉ¤`²P100È¡2eÊà²Ä|è©0ºä`×b_£¹xvãÀ6AØM*ª¨½QÐI~ÙÎ@!XMëhÄ\rVk¼dó3Ô/uõòBl8C è$<~=ÆDÑ\"OâîH§\n¾¹\0', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '1', 40, NULL, NULL, '8lrnupWu8e', 'Pending', 'imran@gmail.com', 'imran', 'Rajshahi', '01774566666', 'Altafunnessa ln', 'Bogra', 'Bogura Sadar', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-03-29 04:26:45', '2022-03-29 04:26:45', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0),
(113, 78, 'BZh91AY&SYåÙ{\0³_ù@\0Psø;õ4¿ÿÿú \0@À\0PÞîÍ¤l±Ø\0d:%TýP @Ð\0È4È \0\0%\0DIP4d\0\0\0MB¦¨\Z\0\0Ðz\0\0\Z¨pÓLFL0	¦bd4ÈÐÐ	&!50\0$õÑ£@Ñ£i6 H¸IÎTõ©¸½bî(0¸ô=S=Æîíó\rB[7¢´nÊ7¸YÀö];RÉ±V)aE×Ö¦G¹6T´!nD&fU³ív4£,e3aRYNÅÃa£zÇHSÚjB\0Þ§$X©íÄØ3ð.êuÅ&\n&½tuØéF\rhÛ!!j`Ta¡PÊÍPJæèÂAÕªðè\0ª¨¨!Yyd¦@«¹ÂªÊ,¹YE$L»¼æX¬w8JààØQ#\ndq2Pác)¤¥,¢ÛV¶·0a\"Rßk¬$#$b¡ÝÂ*qT#à!Ò,GUT±[Õ3%ù!/ZÒ)M lÐ6BëÎÍf1º)ÌªPNC2\r$*DÒ0*b9D\nH\"H¡£C¿9WK3@öeÓÆRâ¬E©µ¶ÁµÞïJ5s!­±©«\ZÓ`Ì9bI2ÃK¦°h÷hÆ ¬ç5F¦ÎbÓX¶v£JB¦ñêã²uÇ:ç8³>°¬E# \"Aé By |À£¨w#ôT6m\ZA\"c]Ç¤Ï/ÄgÐ~dºÍAÈóç¼È\\FÃÌ¼×R*\ZLGq 2&k/Iá6KÏäÁ²\0¦&Fá${¤dGeñhlYÑZÆr³@EC.añÉ|ÆK^Øvv×ºu¾ ªBæÅA·1N§¼ÔÆsYOÐ&d+Ë°³©ÚL,\Zf¡àøÜf×<¡:éÚ}þá¨:5»i¼½Õ);Bá¬X8ÛÔYo\\ï:HDTÚ4AÕX`Îe§JÞ-24ËÈ9æ	SkëuQ1ä ÐÈânkÞ_ ¯3Pw²`^Sw#Æ]Æ@2¦ç±$ºA}ÄæËa¤rS)8íl(@èì+©´tØPÁ!(â°Mãj)§µM¡¦Và±Ïô%Ñ_A¦XÌ5DrÈÚ\\Læåâ<ÄÉ{Üq#Ó,Bò\\o \ZV9­c¦³dõBä``2è^ó©uÊxæ\n£JðàA©È©Ï/¥:³¥äAâHÀEí¥AF1Äd¡´\0Ú$ÚâPÒf9eÃ´)­.b¢ÞVa#Ã4A2!qÓ÷\0Ë¡Ø9Êø©k&É@Æ@PÀÂ[¢âdË+V#ØY5ãðvìâà_G0ÜO4¨¨¢õr#i%ðí\0ÂDÞ¶1*@Õ&»ÆO9ä:ðBöÁÕ	°l`ÔÞ\ràØBÑû<ÂÏáý6ø»)Â.ËÛø', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '6', 160, NULL, NULL, 'ZXh1FTHniN', 'Pending', 'imran@gmail.com', 'imran', 'Rajshahi', '01774566666', 'Altafunnessa ln', 'Bogra', 'Bogura Sadar', NULL, 'Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2022-03-29 04:27:59', '2022-03-29 04:27:59', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0);
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`) VALUES
(114, 94, 'BZh91AY&SYÄÆ\0½_ù@\0Psø?Kô¿ïÿú!\0!Å@\0PþÉÚBl A \\E	¡È4A \riM\ZA()¤¨\0é\0\0\r¨\0\0\0Rj*4FM\0\0¦FÁ2dÑbi4Á&&h\0Â	L4Ò§í4z@\r&jyM\0DÄö>cÐ^{Ïy 	zî>1¨ô8 õ·9	uNDá\rJî1ÃtÉ±ÙuË¸¨UÓÒ¦ia£]ÓB­èÌÊ¶}ºp¯Fò²XUaa¬Ëq\n5=æÔ \r,26ÌIÚY\'ND\'Æ!%ßÆ¨Ì£<fáAFA«ªUuQPÚ8Hè02´Í:	\0+&/a*!J«Åã¬xhÊ¤³Äæk(]ãs,$0åWvEDE!Ýã\"°â¤»¼¹¬c¬1¼89SIe8È¸Eºw¬N`ÂD¥¾0×X\nHFHÅB*3»Tâ¨GÀ(C¤X1$,ÅAt\'Ö#¥* ,!uðfQLbVP¢i!pe$*DÌ`TZ@`\rÃc·ö$­-GÚ(¤Ã¹l÷2<N±v9È½Tls¥±¡£\ZS`Ì9bI2ÃK£j¸´ÄæÒZS2¯i¤[;AÔÃ¡´ÝÃ:æùÌÚ{(ï\'Éhé;²`¡»\"ïÚe)äf°òº5AiWd`!T>óë1â3Ê{H/fÀ¢òÍã¸ÃiÄØHÖmS#3ÌµL©H¬5F¡ÐÍÀ`L72âI\\LóÛRFL\rEKE·ÈG¶\rpô,WùCbÅX(h`l+×YtVP5Z3iàBà9\"OÉoÎÍúU]´*]\nÜJ*ÎóÜk2.&4Ë\"D¼­ÀZ+1¡×Âeû*Ô¦yWä56·h]Y¸nÖ¤iQQ#vÉÚZ\0çaÔ-|Yâu Y¡ÑqÁi±\\0gAÕë:gÎO YÔfvkÀ$ITÖ«kh¨g%¼%± àÛÄ®x6a>=\'<ØÂ¸¡2(5ÐT Î:hqøÐ\r#H c|!ðÃ[ÇyY58*>lÚTµ	¥Ú)Y?3Ë_.F°N]ä¹«¨vR.<ãWü{ciA {Gæ=Ç]#m!fj¾h*xAÈé\ZÌ/:áÛ¸ßVP\Z08Ro\n¥XhAYÆþ½ég.n¼@\"F.ÂTdc E(@\r¡(i0bM®%¦-yÂ)\\5È¥H@AeH¢!]²VnaÀÂÙVYa\0á\"å¡qt·ÄÊX`V¯H¡PWD\\×^\rkàz7ðÄæJ¥RhäóÜz%`70òÂ©RñWëä¡3Ø$]]hMjoâr\'¸àà9SLþ.äp¡!$', 'Cash On Delivery', 'shipto', 'Bogra Sadar', '10', 40, NULL, NULL, '1D8VBSUHPp', 'Completed', 'sohagnazmul12@gmail.com', 'sohag', 'Rajshahi', '01705508276', 'Malotinagar highschool field', 'Bogra', 'Bogura Sadar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'completed', '2022-03-30 11:32:47', '2022-03-30 11:42:05', NULL, NULL, '৳', 1, 0, 0, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(21, 22, 'Pending', 'You have successfully placed your order.', '2022-03-03 14:47:10', '2022-03-03 14:47:10'),
(22, 22, 'nice', 'complete trying', '2022-03-03 14:52:38', '2022-03-03 14:52:38'),
(23, 22, 'Processing', 'thanks', '2022-03-03 14:53:27', '2022-03-03 14:53:27'),
(24, 22, 'Completed', 'thnaks', '2022-03-03 14:54:39', '2022-03-03 14:54:39'),
(25, 24, 'Pending', 'You have successfully placed your order.', '2022-03-03 15:05:53', '2022-03-03 15:05:53'),
(26, 24, 'Completed', 'nice', '2022-03-03 15:11:39', '2022-03-03 15:11:39'),
(27, 25, 'Pending', 'You have successfully placed your order.', '2022-03-03 16:01:33', '2022-03-03 16:01:33'),
(28, 27, 'Pending', 'You have successfully placed your order.', '2022-03-03 16:54:17', '2022-03-03 16:54:17'),
(29, 27, 'ok', 'try', '2022-03-03 16:56:40', '2022-03-03 16:56:40'),
(30, 27, 'Completed', 'nice deal', '2022-03-03 16:57:23', '2022-03-03 16:57:23'),
(31, 28, 'Pending', 'You have successfully placed your order.', '2022-03-03 17:04:39', '2022-03-03 17:04:39'),
(32, 29, 'Pending', 'You have successfully placed your order.', '2022-03-05 08:06:19', '2022-03-05 08:06:19'),
(33, 30, 'Pending', 'ok', '2022-03-05 08:18:08', '2022-03-05 08:36:24'),
(34, 31, 'Pending', 'You have successfully placed your order.', '2022-03-05 08:33:38', '2022-03-05 08:33:38'),
(35, 29, 'Completed', 'tnx', '2022-03-05 08:35:30', '2022-03-05 08:35:30'),
(36, 32, 'Pending', 'You have successfully placed your order.', '2022-03-05 15:14:08', '2022-03-05 15:14:08'),
(37, 33, 'Pending', 'You have successfully placed your order.', '2022-03-06 14:01:14', '2022-03-06 14:01:14'),
(38, 33, 'Completed', 'jij', '2022-03-07 03:23:31', '2022-03-07 03:23:31'),
(39, 32, 'pppppp', 'byhb', '2022-03-07 03:27:25', '2022-03-07 03:27:25'),
(40, 32, 'processing', 'on process', '2022-03-07 03:30:16', '2022-03-07 03:30:16'),
(41, 32, 'Completed', 'enjoy', '2022-03-07 03:32:50', '2022-03-07 03:32:50'),
(42, 35, 'Pending', 'You have successfully placed your order.', '2022-03-08 15:44:59', '2022-03-08 15:44:59'),
(43, 36, 'Pending', 'You have successfully placed your order.', '2022-03-08 15:46:05', '2022-03-08 15:46:05'),
(44, 37, 'Pending', 'You have successfully placed your order.', '2022-03-08 16:09:06', '2022-03-08 16:09:06'),
(45, 37, 'Completed', 'try', '2022-03-08 16:11:14', '2022-03-08 16:11:14'),
(46, 34, 'Completed', 'cccc', '2022-03-08 16:11:25', '2022-03-08 16:11:25'),
(47, 36, 'Completed', 'tnx', '2022-03-08 16:11:38', '2022-03-08 16:11:38'),
(48, 35, 'Completed', 'tnx', '2022-03-08 16:11:49', '2022-03-08 16:11:49'),
(49, 38, 'Pending', 'You have successfully placed your order.', '2022-03-08 17:02:52', '2022-03-08 17:02:52'),
(50, 39, 'Pending', 'You have successfully placed your order.', '2022-03-08 17:22:15', '2022-03-08 17:22:15'),
(51, 41, 'Pending', 'You have successfully placed your order.', '2022-03-09 02:10:51', '2022-03-09 02:10:51'),
(52, 42, 'Pending', 'You have successfully placed your order.', '2022-03-09 02:25:04', '2022-03-09 02:25:04'),
(53, 43, 'Pending', 'You have successfully placed your order.', '2022-03-09 02:26:26', '2022-03-09 02:26:26'),
(54, 44, 'Pending', 'You have successfully placed your order.', '2022-03-09 02:51:36', '2022-03-09 02:51:36'),
(55, 45, 'Pending', 'You have successfully placed your order.', '2022-03-09 02:57:28', '2022-03-09 02:57:28'),
(56, 46, 'Pending', 'You have successfully placed your order.', '2022-03-09 03:15:27', '2022-03-09 03:15:27'),
(57, 47, 'Pending', 'You have successfully placed your order.', '2022-03-09 13:11:37', '2022-03-09 13:11:37'),
(58, 48, 'Pending', 'You have successfully placed your order.', '2022-03-09 13:13:52', '2022-03-09 13:13:52'),
(59, 49, 'Pending', 'You have successfully placed your order.', '2022-03-10 00:29:12', '2022-03-10 00:29:12'),
(60, 50, 'Pending', 'You have successfully placed your order.', '2022-03-12 19:39:04', '2022-03-12 19:39:04'),
(61, 51, 'Pending', 'You have successfully placed your order.', '2022-03-12 19:48:46', '2022-03-12 19:48:46'),
(62, 52, 'Pending', 'You have successfully placed your order.', '2022-03-12 21:39:45', '2022-03-12 21:39:45'),
(63, 53, 'Pending', 'You have successfully placed your order.', '2022-03-13 08:23:47', '2022-03-13 08:23:47'),
(64, 54, 'Pending', 'You have successfully placed your order.', '2022-03-13 08:25:47', '2022-03-13 08:25:47'),
(65, 54, 'Completed', 'thanks', '2022-03-13 09:19:58', '2022-03-13 09:19:58'),
(66, 55, 'Pending', 'You have successfully placed your order.', '2022-03-13 17:53:13', '2022-03-13 17:53:13'),
(67, 56, 'Pending', 'You have successfully placed your order.', '2022-03-13 19:51:05', '2022-03-13 19:51:05'),
(68, 56, 'Processing', 'process', '2022-03-13 20:49:59', '2022-03-13 20:49:59'),
(69, 56, 'On Delivery', 'hi', '2022-03-13 20:50:58', '2022-03-13 20:50:58'),
(70, 56, 'Completed', 'tnx', '2022-03-13 20:52:48', '2022-03-13 20:52:48'),
(71, 56, 'what', 'jjfgj', '2022-03-13 20:53:21', '2022-03-13 20:54:03'),
(72, 56, 'nice', 'what', '2022-03-13 20:54:53', '2022-03-13 20:54:53'),
(73, 57, 'Pending', 'You have successfully placed your order.', '2022-03-13 20:59:06', '2022-03-13 20:59:06'),
(74, 58, 'Pending', 'You have successfully placed your order.', '2022-03-13 10:06:01', '2022-03-13 10:06:01'),
(75, 58, 'Completed', 'tnx', '2022-03-13 10:09:09', '2022-03-13 10:09:09'),
(76, 59, 'Pending', 'You have successfully placed your order.', '2022-03-13 10:25:26', '2022-03-13 10:25:26'),
(77, 60, 'Pending', 'You have successfully placed your order.', '2022-03-13 10:27:01', '2022-03-13 10:27:01'),
(78, 61, 'Pending', 'You have successfully placed your order.', '2022-03-13 10:35:28', '2022-03-13 10:35:28'),
(79, 62, 'Pending', 'You have successfully placed your order.', '2022-03-13 10:44:53', '2022-03-13 10:44:53'),
(80, 63, 'Pending', 'You have successfully placed your order.', '2022-03-13 10:51:26', '2022-03-13 10:51:26'),
(81, 64, 'Pending', 'You have successfully placed your order.', '2022-03-14 02:33:30', '2022-03-14 02:33:30'),
(82, 65, 'Pending', 'You have successfully placed your order.', '2022-03-14 03:04:59', '2022-03-14 03:04:59'),
(83, 65, 'hi', 'fffff', '2022-03-14 03:05:48', '2022-03-14 03:05:48'),
(84, 65, 'ADMIN', 'tnx for purchasing', '2022-03-14 03:06:45', '2022-03-14 03:06:45'),
(85, 64, 'Processing', 'ok', '2022-03-14 03:07:12', '2022-03-14 03:07:12'),
(86, 64, 'Completed', 'tnx', '2022-03-14 03:07:27', '2022-03-14 03:07:27'),
(87, 65, 'Completed', 'tnx', '2022-03-14 03:08:31', '2022-03-14 03:08:31'),
(88, 66, 'Pending', 'You have successfully placed your order.', '2022-03-14 10:40:40', '2022-03-14 10:40:40'),
(89, 67, 'Pending', 'You have successfully placed your order.', '2022-03-15 15:40:13', '2022-03-15 15:40:13'),
(90, 68, 'Pending', 'You have successfully placed your order.', '2022-03-16 10:08:02', '2022-03-16 10:08:02'),
(91, 69, 'Pending', 'You have successfully placed your order.', '2022-03-17 16:38:12', '2022-03-17 16:38:12'),
(92, 70, 'Pending', 'You have successfully placed your order.', '2022-03-17 17:43:44', '2022-03-17 17:43:44'),
(93, 71, 'Pending', 'You have successfully placed your order.', '2022-03-19 07:00:40', '2022-03-19 07:00:40'),
(94, 71, 'Processing', 'tnx', '2022-03-19 07:02:34', '2022-03-19 07:02:34'),
(95, 72, 'Pending', 'You have successfully placed your order.', '2022-03-20 04:58:06', '2022-03-20 04:58:06'),
(96, 73, 'Pending', 'You have successfully placed your order.', '2022-03-20 04:58:55', '2022-03-20 04:58:55'),
(97, 74, 'Pending', 'You have successfully placed your order.', '2022-03-20 04:59:41', '2022-03-20 04:59:41'),
(98, 75, 'Pending', 'You have successfully placed your order.', '2022-03-20 05:01:25', '2022-03-20 05:01:25'),
(99, 76, 'Pending', 'You have successfully placed your order.', '2022-03-20 05:02:08', '2022-03-20 05:02:08'),
(100, 77, 'Pending', 'You have successfully placed your order.', '2022-03-20 05:03:10', '2022-03-20 05:03:10'),
(101, 78, 'Pending', 'You have successfully placed your order.', '2022-03-20 05:05:00', '2022-03-20 05:05:00'),
(102, 79, 'Pending', 'You have successfully placed your order.', '2022-03-20 05:05:41', '2022-03-20 05:05:41'),
(103, 80, 'Pending', 'You have successfully placed your order.', '2022-03-20 05:08:38', '2022-03-20 05:08:38'),
(104, 81, 'Pending', 'You have successfully placed your order.', '2022-03-20 05:09:43', '2022-03-20 05:09:43'),
(105, 82, 'Pending', 'You have successfully placed your order.', '2022-03-20 05:11:13', '2022-03-20 05:11:13'),
(106, 83, 'Pending', 'You have successfully placed your order.', '2022-03-20 05:12:34', '2022-03-20 05:12:34'),
(107, 84, 'Pending', 'You have successfully placed your order.', '2022-03-20 05:20:48', '2022-03-20 05:20:48'),
(108, 85, 'Pending', 'You have successfully placed your order.', '2022-03-20 05:23:38', '2022-03-20 05:23:38'),
(109, 86, 'Pending', 'You have successfully placed your order.', '2022-03-20 08:46:40', '2022-03-20 08:46:40'),
(110, 87, 'Pending', 'You have successfully placed your order.', '2022-03-20 08:49:03', '2022-03-20 08:49:03'),
(111, 88, 'Pending', 'You have successfully placed your order.', '2022-03-20 08:51:40', '2022-03-20 08:51:40'),
(112, 88, 'Completed', 'Thank You', '2022-03-20 08:52:25', '2022-03-20 08:52:25'),
(113, 86, 'Completed', 'Thank You', '2022-03-20 08:53:14', '2022-03-20 08:53:14'),
(114, 87, 'Completed', 'Thank You', '2022-03-20 08:53:29', '2022-03-20 08:53:29'),
(115, 89, 'Pending', 'You have successfully placed your order.', '2022-03-20 08:54:46', '2022-03-20 08:54:46'),
(116, 90, 'Pending', 'tnx', '2022-03-20 08:56:45', '2022-03-20 09:05:55'),
(117, 91, 'Pending', 'You have successfully placed your order.', '2022-03-20 08:58:45', '2022-03-20 08:58:45'),
(118, 92, 'Pending', 'You have successfully placed your order.', '2022-03-20 09:00:32', '2022-03-20 09:00:32'),
(119, 93, 'Pending', 'You have successfully placed your order.', '2022-03-20 09:02:07', '2022-03-20 09:02:07'),
(120, 94, 'Pending', 'You have successfully placed your order.', '2022-03-20 09:03:40', '2022-03-20 09:03:40'),
(121, 89, 'Completed', 'ok', '2022-03-20 09:05:33', '2022-03-20 09:05:33'),
(122, 95, 'Pending', 'You have successfully placed your order.', '2022-03-20 10:49:30', '2022-03-20 10:49:30'),
(123, 96, 'Pending', 'You have successfully placed your order.', '2022-03-20 10:51:12', '2022-03-20 10:51:12'),
(124, 97, 'Pending', 'You have successfully placed your order.', '2022-03-20 19:22:56', '2022-03-20 19:22:56'),
(125, 98, 'Pending', 'You have successfully placed your order.', '2022-03-20 19:44:52', '2022-03-20 19:44:52'),
(126, 99, 'Pending', 'You have successfully placed your order.', '2022-03-20 19:58:12', '2022-03-20 19:58:12'),
(127, 100, 'Pending', 'You have successfully placed your order.', '2022-03-21 05:50:36', '2022-03-21 05:50:36'),
(128, 101, 'Pending', 'You have successfully placed your order.', '2022-03-21 06:00:39', '2022-03-21 06:00:39'),
(129, 101, 'Completed', 'tnx', '2022-03-21 06:01:49', '2022-03-21 06:01:49'),
(130, 102, 'Pending', 'You have successfully placed your order.', '2022-03-21 06:03:50', '2022-03-21 06:03:50'),
(131, 103, 'Pending', 'tnx', '2022-03-21 06:13:44', '2022-03-21 06:14:37'),
(132, 104, 'Pending', 'You have successfully placed your order.', '2022-03-21 13:36:03', '2022-03-21 13:36:03'),
(133, 104, 'On Delivery', 'okkkkkkkk', '2022-03-21 13:39:51', '2022-03-21 13:39:51'),
(134, 95, 'Completed', 'tnx', '2022-03-21 13:45:32', '2022-03-21 13:45:32'),
(135, 104, 'Completed', 'tnx', '2022-03-21 13:46:33', '2022-03-21 13:46:33'),
(136, 105, 'Pending', 'You have successfully placed your order.', '2022-03-22 13:27:22', '2022-03-22 13:27:22'),
(137, 106, 'Pending', 'You have successfully placed your order.', '2022-03-23 07:05:46', '2022-03-23 07:05:46'),
(138, 106, 'Completed', 'nice', '2022-03-23 07:14:58', '2022-03-23 07:14:58'),
(139, 107, 'Pending', 'You have successfully placed your order.', '2022-03-23 12:10:13', '2022-03-23 12:10:13'),
(140, 108, 'Pending', 'You have successfully placed your order.', '2022-03-24 06:10:13', '2022-03-24 06:10:13'),
(141, 109, 'Pending', 'You have successfully placed your order.', '2022-03-25 14:00:38', '2022-03-25 14:00:38'),
(142, 110, 'Pending', 'You have successfully placed your order.', '2022-03-28 19:28:01', '2022-03-28 19:28:01'),
(143, 110, 'Completed', 'Thnaks', '2022-03-28 19:29:07', '2022-03-28 19:29:07'),
(144, 111, 'Pending', 'You have successfully placed your order.', '2022-03-29 01:49:50', '2022-03-29 01:49:50'),
(145, 112, 'Pending', 'You have successfully placed your order.', '2022-03-29 04:26:45', '2022-03-29 04:26:45'),
(146, 113, 'Pending', 'You have successfully placed your order.', '2022-03-29 04:27:59', '2022-03-29 04:27:59'),
(147, 114, 'Pending', 'You have successfully placed your order.', '2022-03-30 11:32:47', '2022-03-30 11:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` tinyint(1) NOT NULL DEFAULT 0,
  `footer` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`, `header`, `footer`) VALUES
(1, 'About Us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2 align=\"center\"><font color=\"#FFFF99\"><font color=\"#FFFFFF\"><span style=\"font-weight: normal;\"><i><font size=\"6\">\"Customer service is our priority\"</font></i></span></font><font color=\"#FFFFCC\"><br></font></font></h2><div align=\"center\"><font size=\"5\" color=\"#FFFFCC\"><span style=\"font-size:12.0pt;line-height:106%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-SA\"><br></span><span style=\"font-size:12.0pt;\r\nline-height:150%;font-family:&quot;Times New Roman&quot;,serif\"></span></font></div><font size=\"5\" color=\"#FFFFCC\">\r\n\r\n</font><!--[if gte mso 9]><xml>\r\n <o:OfficeDocumentSettings>\r\n  <o:AllowPNG/>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val=\"Cambria Math\"/>\r\n   <m:brkBin m:val=\"before\"/>\r\n   <m:brkBinSub m:val=\"&#45;-\"/>\r\n   <m:smallFrac m:val=\"off\"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val=\"0\"/>\r\n   <m:rMargin m:val=\"0\"/>\r\n   <m:defJc m:val=\"centerGroup\"/>\r\n   <m:wrapIndent m:val=\"1440\"/>\r\n   <m:intLim m:val=\"subSup\"/>\r\n   <m:naryLim m:val=\"undOvr\"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\r\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"376\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"header\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footer\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"index heading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of figures\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope address\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"envelope return\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"footnote reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"line number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"page number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote reference\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"endnote text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"table of authorities\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"macro\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"toa heading\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Bullet 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Number 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Closing\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Signature\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"List Continue 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Message Header\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Salutation\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Date\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text First Indent 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Note Heading\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Body Text Indent 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Block Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Hyperlink\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"FollowedHyperlink\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Document Map\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Plain Text\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"E-mail Signature\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Top of Form\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Bottom of Form\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal (Web)\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Acronym\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Address\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Cite\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Code\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Definition\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Keyboard\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Preformatted\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Sample\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Typewriter\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"HTML Variable\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Normal Table\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"annotation subject\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"No List\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Outline List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Simple 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Classic 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Colorful 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Columns 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Grid 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 4\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 5\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 7\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table List 8\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table 3D effects 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Contemporary\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Elegant\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Professional\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Subtle 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 2\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Web 3\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Balloon Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Table Theme\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"\r\n   Name=\"List Paragraph\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"\r\n   Name=\"Intense Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"\r\n   Name=\"Subtle Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"\r\n   Name=\"Intense Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"\r\n   Name=\"Subtle Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"\r\n   Name=\"Intense Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" Name=\"Bibliography\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\r\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"Grid Table 1 Light Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"Grid Table 6 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"Grid Table 7 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"46\"\r\n   Name=\"List Table 1 Light Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"51\"\r\n   Name=\"List Table 6 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"52\"\r\n   Name=\"List Table 7 Colorful Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Mention\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Smart Hyperlink\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Hashtag\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Unresolved Mention\"/>\r\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\r\n   Name=\"Smart Link\"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-para-margin-top:0in;\r\n	mso-para-margin-right:0in;\r\n	mso-para-margin-bottom:8.0pt;\r\n	mso-para-margin-left:0in;\r\n	line-height:107%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Calibri\",sans-serif;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n</style>\r\n<![endif]--><p align=\"center\"><font size=\"5\" color=\"#FFFFCC\"><span style=\"font-size:12.0pt;line-height:106%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-SA\"></span></font></p><p align=\"center\"><font color=\"#000000\"><span style=\"font-size:12.0pt;line-height:106%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-SA\"><font size=\"4\" color=\"#FFFFFF\"><font size=\"5\">Our main objective is to deliver the service to the customer\'s doorstep. And customers will always find us by their side for their convenient service.<br>We try to keep the product as per the demand of the customer with the utmost respect to the demand of the customer and we are determined to keep the price of the product within the reach of the customer because our only and main objective is customer service</font>.</font><font color=\"#FFFFFF\"> </font><br></span></font></p><p align=\"center\"><font size=\"4\" color=\"#000000\"><span style=\"font-weight: 400;\"><span style=\"font-size:12.0pt;line-height:106%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-SA\"><br></span></span><span style=\"font-size:12.0pt;\r\nline-height:150%;font-family:&quot;Times New Roman&quot;,serif\"></span></font><font color=\"#000000\"><span style=\"font-size:12.0pt;line-height:106%;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:\r\nminor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:\r\nAR-SA\"></span></font></p><p><!--[if gte mso 9]><xml>\r\n <o:OfficeDocumentSettings>\r\n  <o:AllowPNG/>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]--></p><p><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val=\"Cambria Math\"/>\r\n   <m:brkBin m:val=\"before\"/>\r\n   <m:brkBinSub m:val=\"&#45;-\"/>\r\n   <m:smallFrac m:val=\"off\"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val=\"0\"/>\r\n   <m:rMargin m:val=\"0\"/>\r\n   <m:defJc m:val=\"centerGroup\"/>\r\n   <m:wrapIndent m:val=\"1440\"/>\r\n   <m:intLim m:val=\"subSup\"/>\r\n   <m:naryLim m:val=\"undOvr\"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--></p><br></div>', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` tinyint(1) NOT NULL DEFAULT 1,
  `service` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 1,
  `small_banner` tinyint(1) NOT NULL DEFAULT 1,
  `best` tinyint(1) NOT NULL DEFAULT 1,
  `top_rated` tinyint(1) NOT NULL DEFAULT 1,
  `large_banner` tinyint(1) NOT NULL DEFAULT 1,
  `big` tinyint(1) NOT NULL DEFAULT 1,
  `hot_sale` tinyint(1) NOT NULL DEFAULT 1,
  `partners` tinyint(1) NOT NULL DEFAULT 0,
  `review_blog` tinyint(1) NOT NULL DEFAULT 1,
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom_small` tinyint(1) NOT NULL DEFAULT 0,
  `flash_deal` tinyint(1) NOT NULL DEFAULT 0,
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_category` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `side_title`, `side_text`, `street`, `phone`, `fax`, `email`, `site`, `slider`, `service`, `featured`, `small_banner`, `best`, `top_rated`, `large_banner`, `big`, `hot_sale`, `partners`, `review_blog`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `bottom_small`, `flash_deal`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `featured_category`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'shah.newaz.habib.rifat@gmail.com', '<div align=\"center\"><blockquote><div><h1><font size=\"6\"><i><b>Contact Us</b></i></font></h1></div></blockquote></div>', '<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>', '<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>', '<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>', 'Satmatha-Bogra, Rajshahi.', '01774560076', NULL, 'shah.newaz.habib.rifat@gmail.com', NULL, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, '1646222487Screenshot2022-03-02at03-37-05basket-full-vegetables_1112-316jpg(WEBPImage,740×521pixels)_ccexpress.png', 'http://google.com', '1565150264banner3.jpg', 'http://google.com', 0, 0, '1646222487Screenshot2022-03-02at03-37-05basket-full-vegetables_1112-316jpg(WEBPImage,740×521pixels)_ccexpress.png', 'http://google.com', '1565150264banner4.jpg', 'http://google.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(2, 'Bogra Sadar'),
(3, 'Sherpur 	'),
(4, 'Sariakandi'),
(5, 'Sonatala'),
(6, 'Dhunat');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text DEFAULT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `views` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text DEFAULT NULL,
  `colors` text DEFAULT NULL,
  `product_condition` tinyint(1) NOT NULL DEFAULT 0,
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT 0,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `trending` tinyint(1) NOT NULL DEFAULT 0,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT 0,
  `discount_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_catalog` tinyint(1) NOT NULL DEFAULT 0,
  `catalog_id` int(191) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(202, 'g614212pRE', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Papaya (কাঁচা পেঁপে) 500 gram', 'papaya-kannca-pennpe-500-gram-g614212pre', 'fyELIirwBC.png', 'rIlZcWwv22.jpg', NULL, NULL, NULL, NULL, NULL, 15, 20, 'পেঁপে পাবেন হাতের কাছেই। দামও সহনীয়। সবজি ও সালাদ হিসেবে কাঁচা পেঁপের বেশ কদর রয়েছে।পেঁপে খেলে ওজন কমে, চোখের জন্য দরকারি, ডায়াবেটিসে উপকারী, ত্বক পরিষ্কার হয়। অ্যান্টি-অক্সিডেন্ট আর নানা উপকারী\r\n উপাদানে ভরপুর পেঁপে খেলে একদিকে স্বাস্থ্য যেমন ভালো থাকে, তেমনি চুল আর \r\nত্বকের জন্যও উপকারী। খাবারে তাই পেঁপে রাখাটা জরুরি।হজমশক্তি বাড়াতে এবং পেটের গোলযোগ এড়াতেও খেতে পারেন পেঁপে।', 30, '<pre class=\"tw-data-text tw-text-large tw-ta\" data-placeholder=\"অনুবাদ\" id=\"tw-target-text\" style=\"text-align:left\" dir=\"ltr\"><span class=\"Y2IQFc\" lang=\"bn\">গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত </span><span class=\"Y2IQFc\" lang=\"bn\">যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><b><br></b></span><b><span class=\"Y2IQFc\" lang=\"bn\"><span class=\"Y2IQFc\" lang=\"bn\">বিশেষ</span> দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</span></b><span class=\"Y2IQFc\" lang=\"bn\"></span></pre>', 1, 7, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-05 15:43:14', '2022-03-21 03:19:18', 0, NULL, NULL, NULL, 0, 0),
(203, 'fDv6714hu6', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Beans (মটরশুটি)  500 gram', 'beans-mtrsuti-500-gram-fdv6714hu6', 'VWbOXsckyy.png', 'IxNxRRuYPU.jpg', NULL, NULL, NULL, NULL, NULL, 25, 30, '<div>মটরশুটি অনেকেরই প্রিয় একটি সবজি। এটি বিভিন্ন খাবারের স্বাদ বাড়াতেও ব্যবহার করা হয়।মটরশুটি খুব পুষ্টিকর খাদ্য। এই সবজিতে বেশ ভালো পরিমাণে তন্তু থাকায় পেট পরিস্কার রাখে ও কোষ্ঠকাঠিন্য রোধ করে।</div><div>মটরশুটি রক্তে কোলেস্টেরলের মাত্রা কমায়। অ্যান্টি অক্সিডেন্ট হিসেবে এই সবজি দারুণ কাজ করে ও শিশুদের রোগ প্রতিরোধ ক্ষমতা বাড়ায়।</div><div>ডায়াবেটিক রোগীরা মটরশুটি খেতে পারেন। এছাড়া এটি শরীরে হাড় শক্ত করতেও \r\nখুব ভালো। ফলিক অ্যাসিড থাকায় প্রসূতি মায়েরা মটরশুটি খেতে পারেন।</div><div>ত্বকের জন্যও মটরশুটি খুব উপকারি। ত্বকের উজ্জ্বলতা বাড়ায় ও চোখের দৃষ্টিশক্তিও বাড়িয়ে তোলে মটরশুটি।</div>', 18, '<pre class=\"tw-data-text tw-text-large tw-ta\" data-placeholder=\"অনুবাদ\" id=\"tw-target-text\" style=\"text-align:left\" dir=\"ltr\"><span class=\"Y2IQFc\" lang=\"bn\">গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত </span><span class=\"Y2IQFc\" lang=\"bn\">যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><b><br></b></span><b><span class=\"Y2IQFc\" lang=\"bn\"><span class=\"Y2IQFc\" lang=\"bn\">বিশেষ</span> দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</span></b></pre>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2022-03-05 16:07:38', '2022-03-20 17:53:16', 0, NULL, NULL, NULL, 0, 0),
(204, '6nR7694o1u', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Corn (ভুট্টা) 500 gram', 'corn-vutta-500-gram-6nr7694o1u', 'Oyoejd9bTg.png', 'BsxlRAVOng.jpg', NULL, NULL, NULL, NULL, NULL, 15, 17, '<div><strong></strong> ভুট্টা সাধারণত রোস্ট বা স্টেম করে খাওয়া যায়। তাই \r\nপ্রতিদিন খেলেও ওজন বেড়ে যাওয়ার বিষয়ে দুশ্চিন্তা করা লাগবে না। চাইলে \r\nভুট্টা মাইক্রোওয়েভ ওভেনে গ্রিল করেও খেতে পারেন।</div><div>ভুট্টা আঁশে ভরা। এতে পরিপাকতন্ত্র সুস্থ থাকে। এতে বায়োফ্লাভোনয়েডস ও \r\nক্যারোটিনয়েডসের মতো প্রচুর অ্যান্টিঅক্সিডেন্ট থাকে, যা শরীরকে সুস্থ \r\nরাখে।</div><div> ভুট্টায় প্রচুর পরিমাণে ফাইবার রয়েছে, যা কোষ্ঠকাঠিন্য দূর করে এবং হজমে সহায়তা করে।</div><div>ভুট্টায় প্রচুর পরিমাণে আয়রন ও ভিটামিন বি১২ বর্তমান, যা নতুন রক্তকোষ তৈরি করতে সাহায্য করে। এতে রক্তাল্পতা দূর হয়।</div>', 56, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2022-03-05 16:20:01', '2022-03-20 08:58:45', 0, NULL, NULL, NULL, 0, 0),
(205, 'sFk9059HzW', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Sweet pumpkin (মিষ্টি কুমড়ো) 500 gram', 'sweet-pumpkin-mishti-kumdo-500-gram-sfk9059hzw', 'eRgUCd1aKG.png', 'PCh26ozMHR.jpg', NULL, NULL, NULL, NULL, NULL, 20, 22, '<div>মিষ্টি কুমড়ায় রয়েছে প্রচুর পরিমাণ ভিটামিন এ (বিটা-ক্যারোটিন), ভিটামিন \r\nবি-কমপ্লেক্স, ভিটামিন সি এবং ভিটামিন ই, পটাশিয়াম, ম্যাগনেসিয়াম, \r\nক্যালসিয়াম, ম্যাঙ্গানিজ, আয়রন, জিঙ্ক, ফসফরাস, কপার, ক্যারটিনয়েড এবং \r\nঅন্যান্য অ্যান্টিঅক্সিডেন্টস।</div><div>মিষ্টি কুমড়া আমাদের দেশে পরিচিত একটি সবজি। এটি দেখতে যতটা সুন্দর, এর \r\nউপকারিতাও ততটাই বেশি। ভাজা, ভাজি, ভর্তা কিংবা ঝোল করে তো খাওয়া যায়ই, \r\nমিষ্টি কুমড়া দিয়ে তৈরি করা যায় সুস্বাদু হালুয়া। আপনি যদি মিষ্টি কুমড়া \r\nখেতে পছন্দ না করেন, তবে অনেক স্বাস্থ্যোপকারিতা থেকে বঞ্চিত হচ্ছেন।</div>', 12, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2022-03-05 16:35:39', '2022-03-21 03:20:03', 0, NULL, NULL, NULL, 0, 0),
(206, 'dTP9359tO1', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Okra (ঢেঁড়শ) 250 gram', 'okra-dhennds-250-gram-dtp9359to1', 'YzgkNThk0b.png', 'erTtZlTCGq.jpg', NULL, NULL, NULL, NULL, NULL, 25, 30, '<div>ঢেঁড়সকে আমারা সধারণত মনে করি গুরুত্ত্বহীন৷ কিন্তু এই ঢেঁড়স আমাদের \r\nশরীরে অজান্তেই অনেক উপকার করে৷ ঢেঁড়সের কিছু গুণ রয়েছে যা শরীরকে অনেক \r\nরোগ থেকে রক্ষা করে৷</div><div>ঢেঁড়সে রয়েছে সলিউবল ফাইবার পেকটিন যা রক্তের বাজে কোলেস্টেরলকে কমাতে \r\nসাহায্য করে। ঢেঁড়সের মধ্যে রয়েছে অনেক ওষুধ গুণ। এর মধ্যে রয়েছে আঁশ, \r\nভিটামিন এ, অ্যান্টি অক্সিডেন্ট। এটি রোগ প্রতিরোধক্ষমতা বাড়ায়, শ্বাসকষ্ট \r\nপ্রতিরোধ করে। <br></div><div>প্রতিদিন ১০০ গ্রাম করে সেদ্ধ ঢেঁড়স খাওয়া শুরু করলে শরীরে \r\nকার্বোহাইড্রেট, প্রোটিন, ফাইবার, নিয়াসিন, ভিটামিন সি, ই, কে, সেই সঙ্গে\r\n ক্যালসিয়াম, কপার, আয়রন, ম্যাগনেসিয়াম এবং ফসফরাসের প্রবেশ ঘটতে শুরু \r\nকরে।</div>', 44, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2022-03-05 16:47:48', '2022-03-13 10:06:01', 0, NULL, NULL, NULL, 0, 0),
(207, 'ud20078ZqE', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Radish (মূলা ) 500 gram', 'radish-muula-500-gram-ud20078zqe', 'lzlOvtpr24.png', '1wzk4mIe6v.jpg', NULL, NULL, NULL, NULL, NULL, 10, 5, 'মুলা! নাম শুনেই অনেকে চোখ কুঁচকান। অনেকেই মুলা খেতে চান না। কিন্তু মুলায়\r\n মেলে নানা উপকার। তরকারি হিসেবে বা সালাদে নানাভাবে মুলা খাওয়া যায়। \r\nপুষ্টিবিদেরা বলেন, মুলার মেলা পুষ্টিগুণ। যকৃৎ ও পাকস্থলী পরিষ্কারে মুলার\r\n জুড়ি মেলা ভার। নিয়মিত তাই খাবার টেবিলে মুলা রাখতেই পারেন।', 27, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><b><br>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-05 17:01:28', '2022-03-23 12:10:13', 0, NULL, NULL, NULL, 0, 0),
(208, 't9A09268mJ', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Kachur Lati (কচুর লতি) 500 gram', 'kachur-lati-kcur-lti-500-gram-t9a09268mj', 'nEXEs8Z5p9.png', 'JOvhpxRVU6.jpg', NULL, NULL, NULL, NULL, NULL, 25, 30, '<div>কচুর লতিতে আছে প্রচুর পরিমানে ভিটামিন, যা মানব দেহের জন্য খুবই দরকারি।</div><div><p style=\"text-align:justify\">কচুর লতিতে রয়েছে প্রচুর পরিমাণে আয়রণ। লতি \r\nমানবদেহে রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে। গর্ভ্স্থ অবস্থা, খেলোয়াড়, \r\nবাড়ন্ত শিশু, কেমোথেরাপি পাচ্ছে এমন রোগীদের জন্য কচুর লতি ভীষণ উপকারী। \r\nএতে রয়েছে পর্যাপ্ত পরিমাণে ক্যালসিয়াম। ক্যালসিয়াম হাড় শক্ত করে।</p>\r\n\r\n<p style=\"text-align:justify\">এই সবজিতে ডায়াটারি ফাইবার বা অশের পরিমাণ খুব বেশি। এই আশ খাবার হজমে সাহায্য করে দীর্ঘ বছরের কোষ্ঠকাঠিন্য দূর করে।</p></div>', 39, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-05 17:17:27', '2022-03-21 03:21:08', 0, NULL, NULL, NULL, 0, 0),
(209, 'o1R18529Tx', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Jhinga (ঝিংগা)  500 gram', 'jhinga-jhingga-500-gram-o1r18529tx', '6mmi8U5YsB.png', 'rusgVYh9mA.jpg', NULL, NULL, NULL, NULL, NULL, 40, 45, 'ভাজি কিংবা ভর্তা হিসেবেও ঝিঙে খেতে দারুণ। তবে কেবল সুস্বাদুই নয়, এর \r\nঅসাধারণ ভেষজ গুণ রয়েছে। পাশাপাশি বাড়তি ওজন ঝরাতে চান যঁারা, তাঁরা \r\nনিয়মিতই ঝিঙে রাখতে পারেন খাদ্যতালিকায়। কারণ, এতে যেকোনো সবজির তুলনায় \r\nবেশি আঁশ রয়েছে, যা বাড়তি মেদ ও কোলেস্টেরল কমিয়ে দেয়। তা ছাড়া খাবারে ঝিঙে\r\n রাখলে ঘন ঘন খাদ্য গ্রহণের ইচ্ছেও কমে যায়।<br>এতে খাদ্য-আঁশ\r\n ছাড়াও রয়েছে ভিটামিন সি, রিবোফ্ল্যাভিন, জিঙ্ক, লোহা, থায়ামিন ও \r\nম্যাগনেশিয়াম।', 39, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-05 17:28:39', '2022-03-13 08:25:47', 0, NULL, NULL, NULL, 0, 0),
(210, 'yZQ2522Klh', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Chal Kumra (চাল কুমড়া) per piece', 'chal-kumra-cal-kumda-per-piece-yzq2522klh', '92yTImH3KL.png', 'X2hFyBidfF.jpg', NULL, NULL, NULL, NULL, NULL, 30, 35, '<div><span class=\"CssComponent__CssInlineComponent-sc-1oskqb9-1 UserSelectableText___StyledCssInlineComponent-lsmoq4-0 kghFzc\"><span class=\"q-box qu-userSelect--text\" style=\"box-sizing: border-box;\"><span style=\"font-weight: normal; font-style: normal; background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;\">চাল কুমড়া পুষ্টিকর একটি সবজি। এতে বিভিন্ন ধরনের ভিটামিন, খনিজ, শর্করা ও ফাইবার থাকায় এটি স্বাস্থ্যের জন্য দারুণ উপকারী।</span></span></span></div><div><span class=\"CssComponent__CssInlineComponent-sc-1oskqb9-1 UserSelectableText___StyledCssInlineComponent-lsmoq4-0 kghFzc\"><span class=\"q-box qu-userSelect--text\" style=\"box-sizing: border-box;\"><p class=\"q-text qu-display--block qu-wordBreak--break-word qu-textAlign--start\" style=\"box-sizing: border-box; margin-bottom: 1em; overflow-wrap: anywhere; direction: ltr;\"><span style=\"font-weight: normal; font-style: normal; background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;\">চাল কুমড়ার বীজ গ্যাস্ট্রিক রোগের উপশম করে। কোষ্ঠকাঠিন্য, পেট ফাঁপা এবং প্রস্রাবের সমস্যা কমাতে চাল কুমড়ার জুড়ি নেই।</span></p> <p class=\"q-text qu-display--block qu-wordBreak--break-word qu-textAlign--start\" style=\"box-sizing: border-box; margin-bottom: 1em; overflow-wrap: anywhere; direction: ltr;\"><span style=\"font-weight: normal; font-style: normal; background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;\">ফাইবার\r\n এবং বেশিরভাগ অংশ জলীয় হওয়ার কারণে চালকুমড়া আমাদের হজমে উন্নতি করতে এবং \r\nকার্যকরভাবে ওজন হ্রাস করতে সহায়তা করতে পারে। এটি দ্রবণীয় ফাইবারের একটি\r\n সমৃদ্ধ উৎস, যা হজম প্রক্রিয়া হ্রাস করে এবং দীর্ঘ সময়ের জন্য পেট ভরিয়ে\r\n রাখতে পারে।</span></p> <p class=\"q-text qu-display--block qu-wordBreak--break-word qu-textAlign--start\" style=\"box-sizing: border-box; margin-bottom: 1em; overflow-wrap: anywhere; direction: ltr;\"><span style=\"font-weight: normal; font-style: normal; background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;\">ত্বক\r\n এবং চুলের যত্নে চাল কুমড়ার রস বেশ কার্যকরী। এ রস নিয়মিত চুল ও ত্বকে \r\nমাখলে উপকার পাওয়া যায়। ত্বকে বয়সের ছাপ প্রতিরোধ করতে চাল কুমড়া ভূমিকা \r\nরাখে।</span></p></span></span><span class=\"CssComponent__CssInlineComponent-sc-1oskqb9-1 UserSelectableText___StyledCssInlineComponent-lsmoq4-0 kghFzc\"><span class=\"q-box qu-userSelect--text\" style=\"box-sizing: border-box;\"><span style=\"font-weight: normal; font-style: normal; background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;\"></span></span></span></div>', 33, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><b><br>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2022-03-05 17:35:15', '2022-03-20 05:11:13', 0, NULL, NULL, NULL, 0, 0),
(211, 'HlF2938eek', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Lau (লাউ) per piece', 'lau-lau-per-piece-hlf2938eek', 'fQuWT5AHYp.png', 'TLcepkNfFJ.jpg', NULL, NULL, NULL, NULL, NULL, 35, 40, 'লাউয়ের ভিতরে মজুত রয়েছে প্রচুর মাত্রায় ভিটামিন সি, বি এবং ডি, সেই সঙ্গে \r\nক্যালসিয়াম, সোডিয়াম, ম্যাগনেসিয়াম, ফসফরাস, ফোলেট, আয়রন এবং পটাশিয়াম,\r\n যা নানাবিধ রোগের হাত থেকে শরীরকে সুস্থ রাখতে গুরুত্বপূর্ণ ভূমিকা পালন \r\nকরে থাকে।', 40, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-05 17:45:41', '2022-03-07 00:27:16', 0, NULL, NULL, NULL, 0, 0),
(212, 'Jyi3544Cis', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Korola Small Uchsse (করলা উচ্ছা) 500 gram', 'korola-small-uchsse-krla-uccha-500-gram-jyi3544cis', '5EoJI810LQ.png', '7FE9aL4p6A.jpg', NULL, NULL, NULL, NULL, NULL, 50, 55, 'করলা (উচ্ছা) এক প্রকার ফল জাতীয় সবজি।&nbsp;এলার্জি প্রতিরোধে \r\nএর রস দারুণ উপকারি। ডায়াবেটিস রোগীদের জন্যও এটি উত্তম। প্রতিদিন \r\nনিয়মিতভাবে করলার রস খেলে রক্তের সুগার নিয়ন্ত্রণে রাখা সম্ভব। করলায় \r\nযথেষ্ট পরিমাণে বিটা ক্যারোটিন ছাড়াও এতে রয়েছে বহু গুণ।', 39, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-05 18:30:43', '2022-03-13 08:25:47', 0, NULL, NULL, NULL, 0, 0),
(213, 'ZgM6255IX6', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Korola (করলা) 500 gram', 'korola-krla-500-gram-zgm6255ix6', 'JCi9mc9ZNR.png', 'HhneHNEprq.jpg', NULL, NULL, NULL, NULL, NULL, 60, 65, 'করলায় যথেষ্ট পরিমাণে ভিটামিন-সি রয়েছে। ভিটামিন সি ত্বক ও চুলের জন্য একান্ত জরুরি।\r\nভিটামিন সি আমাদের দেহে প্রোটিন ও আয়রন যোগায় এবং ভাইরাস ও ব্যাকটেরিয়ার \r\nবিরুদ্ধে প্রতিরোধক ক্ষমতা গড়ে তোলে। ফাইবার সমৃদ্ধ করলা কোষ্ঠকাঠিন্য \r\nসমস্যা কমায়। করলায় রয়েছে ভিটামিন-বি কমপ্লেক্স, ম্যাগনেসিয়াম, ফলিক এসিড, \r\nজিঙ্ক, ফসফরাস, ম্যাগনেসিয়াম।&nbsp;&nbsp;\r\n<p> <br>\r\nঅসুখ নিরাময়ে সাহায্য করে। ডায়বেটিসের পেশেন্টের ডায়েটে করলা রাখুন। করলায় \r\nরয়েছে পলিপেপটাইড পি, যা ব্লাড ও ইউরিন সুগার লেভেল নিয়ন্ত্রনে রাখতে \r\nসাহায্য করে। ডাক্তারের পরামর্শ নিয়ে করলার রস ও করলা সিদ্ধ খেতে পারেন। \r\nনানা রকমের ব্লাড ডিজঅর্ডার যেমন স্ক্যাবিজ, রিং ওয়র্ম এর সমস্যায় করলা \r\nউপকারি। ব্লাড পিউরিফিকেশনে সাহায্য করে। স্কিন ডিজিজ ও ইনফেকশন প্রতিরোধে \r\nসাহায্য করে।</p>', 97, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><b><br>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 5, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2022-03-05 18:35:13', '2022-03-13 10:06:01', 0, NULL, NULL, NULL, 0, 0),
(214, '5pk6516u1h', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Green Chili (কাঁচা মরিচ)  500 gram', 'green-chili-kannca-mric-500-gram-5pk6516u1h', 'ayE5Lk3W2Y.png', 'eru8t3G68U.jpg', NULL, NULL, NULL, NULL, NULL, 20, 25, '<div>ভাতের স্বাদ বাড়ায় কাঁচা মরিচ। এ দেশের শ্রমজীবী মানুষ কাঁচা মরিচ ছাড়া ভাত\r\n খাওয়ার কথা ভাবতেই পারেন না। তবে সালাদে কিংবা তরকারিতে কাঁচা মরিচ \r\nব্যবহার করেন না, এমন মানুষ খুঁজে পাওয়া ভার।</div><div><br></div><div>ভিটামিন এ থাকায় এটি সব বয়সী ব্যক্তির দৃষ্টিশক্তি ভালো রাখে ও চোখব্যথা দূর করে।কাঁচা মরিচের অণুজীব–প্রতিরোধক্ষমতা শরীরে জীবাণু সংক্রমণ রুখতে সাহায্য \r\nকরে। এ ছাড়া এতে পর্যাপ্ত পরিমাণে ভিটামিন সি রয়েছে। ফলে তা ত্বককে \r\nস্বাস্থ্যোজ্জ্বল রাখে।শরীরের রোগপ্রতিরোধ–ব্যবস্থা মজবুত করতে সাহায্য করে কাঁচা মরিচ।</div>', 98, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-05 18:47:49', '2022-03-21 03:21:54', 0, NULL, NULL, NULL, 0, 0),
(215, 'paK7639zae', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Snake gourd (চিচিঙা) 500 gram', 'snake-gourd-cicinga-500-gram-pak7639zae', 'TjWF1IJpXB.png', '1ff0aTObLP.jpg', NULL, NULL, NULL, NULL, NULL, 25, 30, '<p style=\"text-align:justify\">চিচিঙ্গার প্রচুর স্বাস্থ্য গুণ রয়েছে। এতে \r\nপ্রচুর পুষ্টি উপাদান, ভিটামিন এবং খনিজ রয়েছে। এছাড়া এতে আঁশ, সামান্য \r\nক্যালরি এবং প্রচুর পরিমাণে ভিটামিন এ, বি, সি রয়েছে -যা মানবদেহের জন্য \r\nখুবই উপকারী।</p>\r\n\r\nচিচিঙ্গা অনেকের কাছে প্রিয় একটি \r\nগ্রীষ্মকালীন সবজি। এর অনেক ঔষধি গুণও রয়েছে। চিচিঙ্গার ১০০ ভাগ ভক্ষণযোগ্য\r\n অংশে ৯৫ ভাগ পানি, ৩.২-৩.৭ গ্রাম শর্করা, ০.৪-০.৭ গ্রাম আমিষ, ৩৫-৪০ \r\nমিলিগ্রাম ক্যালসিয়াম, ০.৫-০.৭ মিলিগ্রাম লৌহ এবং ৫-৮ মিলিগ্রাম খাদ্যপ্রাণ\r\n সি রয়েছে।', 45, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><b><br>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2022-03-05 19:00:05', '2022-03-21 06:03:50', 0, NULL, NULL, NULL, 0, 0),
(216, '0iF9996sVi', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Tomato (টমেটো) 500 gram', 'tomato-tmeto-500-gram-0if9996svi', 'XojxFCE7eS.png', 'Sh13Rx6arv.jpg', NULL, NULL, NULL, NULL, NULL, 15, 17, '<div>টমেটো একটি সুস্বাদু ও পুষ্টিকর সবজি। টমেটো শীতকালীন সবজি হলেও এখন সারা \r\nবছর পাওয়া যায়। কাঁচা কিংবা পাকা দুভাবে টমেটো খাওয়া যায়। খাবারের স্বাদ \r\nবাড়াতে টমেটোর জুড়ি মেলা ভার। অনেকে আবার সালাদে টমেটো খেয়ে থাকেন। শুধু \r\nখাবারে স্বাদই বাড়ায় না, টমেটো থেকে তৈরি হয় নানা রকমের কেচাপ, সস।</div><div>পুষ্টিতে ভরপুর টমেটো। এতে আছে প্রচুর পরিমাণে ভিটামিন এ, সি, কে, ফলেট এবং\r\n পটাসিয়াম। টমেটো থেকে আরও পাওয়া যায় থায়ামিন, নায়াসিন, ভিটামিন বি৬, \r\nম্যাগনেসিয়াম, ফসফরাস এবং কপার। এ ছাড়াও এই এক কাপের টমেটোর মধ্যেই থাকে \r\nদুই গ্রামের মতো ফাইবার। অনেকটা পানিও রয়েছে এর মধ্যে।</div>', 48, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><b><br>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 7, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2022-03-06 04:11:17', '2022-03-30 11:47:59', 0, NULL, NULL, NULL, 0, 0),
(217, 'HPy1136lw4', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Green tomato (সবুজ টমেটো) 500 gram', 'green-tomato-sbuj-tmeto-500-gram-hpy1136lw4', 'oXM8z4M8XJ.png', 'sWY2LPouuE.jpg', NULL, NULL, NULL, NULL, NULL, 13, 15, '<div>এখন বাজারে প্রচুর কাঁচা টমেটো পাওয়া যায়। এটি সবজি ও সালাদ হিসেবে বেশি \r\nব্যবহার করা হয়। একজন মানুষ যদি প্রতিদিন ২-৩টা করে টমেটো খায় তাহলে অনেক \r\nউপকার পাবে।</div><div><span class=\"CssComponent__CssInlineComponent-sc-1oskqb9-1 UserSelectableText___StyledCssInlineComponent-lsmoq4-0 kghFzc\"><span class=\"q-box qu-userSelect--text\" style=\"box-sizing: border-box;\"><span style=\"font-weight: normal; font-style: normal; background: rgba(0, 0, 0, 0) none repeat scroll 0% 0%;\">মাত্র\r\n এক কাপ তরতাজা পাকা টমেটোতে আছে প্রচুর পরিমাণে ভিটামিন এ, সি, কে, ফলেট \r\nএবং পটাসিয়াম। টমেটার মাঝে কম পরিমাণে থাকে সোডিয়াম, স্যাচুরেটেড ফ্যাট, \r\nকোলেস্টেরল এবং ক্যালোরি। টমেটা থেকে আরও পাওয়া যায় থায়ামিন, নায়াসিন, \r\nভিটামিন বি৬, ম্যাগনেসিয়াম, ফসফরাস এবং কপার।</span></span></span></div>', 99, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-06 04:21:23', '2022-03-13 08:25:47', 0, NULL, NULL, NULL, 0, 0),
(218, 'RyZ1687m03', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Vegetable Cabbage (বাঁধাকপি) Per piece', 'vegetable-cabbage-banndhakpi-per-piece-ryz1687m03', 'EhfeaIstQw.png', 'LfxPvc1W3n.jpg', NULL, NULL, NULL, NULL, NULL, 30, 35, '<div>শীতের সবজি বলতে যেগুলোর কথা মাথায় আসে, তার মধ্যে অবশ্যই থাকে বাঁধাকপি। \r\nনানা পুষ্টিগুণে সমৃদ্ধ এই বাঁধাকপি কিন্তু হালের কোনো সবজি নয়, বরং এর \r\nচাষ হয়ে আসছে চার হাজার বছর ধরে। চীন, মধ্য ও পশ্চিম ইউরোপ আর মেসোপটেমিয়ায়\r\n বাঁধাকপি আবাদের ইতিহাস মেলে।</div><div>এক কাপ বা ৯০ গ্রাম বাঁধাকপিতে রয়েছে ২২ ক্যালরি শক্তি। প্রোটিন আছে ১ \r\nগ্রাম, ফাইবার ২ গ্রাম; আর প্রতিদিনের প্রয়োজনীয় ভিটামিন সির ৫৪ শতাংশ, \r\nভিটামিন কের ৮৫ শতাংশ, ফোলেটের ১০ শতাংশ, ম্যাঙ্গানিজের ৭ শতাংশ, ভিটামিন \r\nবি সিক্সের ৬ শতাংশ, ক্যালসিয়ামের ৪ শতাংশ, পটাশিয়ামের ৪ শতাংশ ও \r\nম্যাগনেশিয়ামের ৩ শতাংশ মেলে।</div>', 35, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-06 04:28:01', '2022-03-06 04:28:01', 0, NULL, NULL, NULL, 0, 0),
(219, 'kYS2091itM', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Vegetable Broccoli (সবুজ ফুলকপি) Per piece', 'vegetable-broccoli-sbuj-fulkpi-per-piece-kys2091itm', 'VCoL9YOMVZ.png', 'Fm0AcsRsze.jpg', NULL, NULL, NULL, NULL, NULL, 40, 45, '<div>অনেকটা ফুলকপির মতোই দেখতে সবুজ রঙের সবিজিটির নাম ব্রকলি। দিনে দিনে এটি \r\nবেশ পরিচিত হয়েছে আমাদের দেশে। চাইনিজ জাতীয় খাবারে ব্যবহৃত অন্যতম প্রধান \r\nউপকরণ এই সবজি। দেশেও চাষ হচ্ছে ব্রকলির। কাঁচা কিংবা রান্না করে, ব্রকলি \r\nখাওয়া যায় দুইভাবেই।</div><div><p>ব্রকলিতে প্রচুর পরিমাণে ফ্ল্যাভোনয়েড, লিউটেনের সঙ্গে ক্যারটিনয়েড, \r\nবিটা-ক্যারোটিন এবং জিক্সানথিন- সব শক্তিশালী অ্যান্টিঅক্সিডেন্ট আছে যা \r\nঅনেক গুরুতর রোগ প্রতিরোধ করে।</p>\r\n<p>ব্রকলি পটাসিয়াম এবং ম্যাগনেসিয়াম সমৃদ্ধ। সুস্থ স্নায়ুতন্ত্রের যা \r\nঅত্যন্ত গুরুত্বপূর্ণ। এতে ক্যালসিয়ামের আধিক্য থাকায় হাড়ের জন্য এটি বেশ \r\nউপকারী।</p></div>', 40, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 29, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2022-03-06 04:37:07', '2022-03-29 04:32:06', 0, NULL, NULL, NULL, 0, 0),
(220, 'kxt26805dN', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Vegetable Cauliflower (ফুলকপি) Per Piece', 'vegetable-cauliflower-fulkpi-per-piece-kxt26805dn', '0IPRpXihej.png', 'ggAtt73id2.jpg', NULL, NULL, NULL, NULL, NULL, 35, 40, '<div>ফুলকপি সবচেয়ে স্বাস্থ্যকর সবজিগুলোর একটি যা ক্রুসিফেরি পরিবারের \r\nঅন্তর্ভুক্ত। এতে পানির পরিমাণ থাকে ৮৫% এবং খুব অল্প পরিমাণে \r\nকার্বোহাইড্রেট, ফ্যাট ও প্রোটিন থাকে। কিন্তু এতে গুরুত্বপূর্ণ ভিটামিন, \r\nমিনারেল, অ্যান্টিঅক্সিডেন্ট এবং অন্য ফাইটোকেমিক্যাল ও থাকে। এতে \r\nক্যালোরির পরিমাণ খুবই কম থাকে। <br></div><div>ফুলকপির অ্যান্টিঅক্সিডেন্ট এবং অন্যান্য পুষ্টি উপাদান শরীর পরিষ্কার হতে \r\nসাহায্য করে। এছাড়াও এতে গ্লুকোসাইনোলেটস থাকে যা এনজাইমকে সক্রিয় করে এবং \r\nডিটক্স হতে সাহায্য করে। </div>', 39, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-06 04:45:29', '2022-03-13 08:23:47', 0, NULL, NULL, NULL, 0, 0),
(221, '0lM3141s2T', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Carrot (গাঁজর ) 500 gram', 'carrot-gannjr-500-gram-0lm3141s2t', 'ttabBGnU6S.png', 'YgIVGC4Ero.jpg', NULL, NULL, NULL, NULL, NULL, 20, 25, '<p>গাজরকে বলা হয়ে থাকে ‘শক্তিশালী’ খাদ্য উপাদান। গাজরে রয়েছে ভিটামিন \r\n‘এ’। জেনে নিন গাজর খাওয়ার ৭টি উপকারিতা…১. গাজর খেলে দৃষ্টিশক্তি বাড়ে। \r\nকেননা এতে আছে বেটা ক্যারোটিন।</p>			\r\n				<p>২. গাজর ক্যান্সারের ঝুঁকি কমায়। নিয়মিত গাজর খেলে ব্রেস্ট, কোলন, ফুসফুসের ক্যান্সার হওয়ার ঝুঁকি কম থাকে।</p>\r\n<p>৩. ত্বক সুন্দর রাখতে চাইলে গাজর খেতে পারেন। এটা ত্বককে ভেতর থেকে \r\nসুন্দর করে তুলতে সাহায্য করে। এর ভিটামিন ‘এ’ ও এন্টিওক্সিডেন্ট আপনার \r\nত্বকের রোদে পোড়া ভাব দূর করবে।</p><p>৪. গাজর অ্যান্টিসেপটিক হিসেবে কাজ করে। \r\nএটি ইনফেকশন হওয়া থেকে রক্ষা করে। কোথাও কেটে গেলে বা পুড়ে গেলে সেখানে \r\nকুচি করা গাজর বা সিদ্ধ করা গাজরের পেস্ট লাগিয়ে দিন। এতে ইনফেকশন হবার \r\nআশঙ্কা কমে যাবে।</p>', 77, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-06 04:53:19', '2022-03-21 03:16:16', 0, NULL, NULL, NULL, 0, 0),
(222, '8Po36048Xb', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Onion Local (দেশী পেঁয়াজ ) 500 gram', 'onion-local-desee-pennzaj-500-gram-8po36048xb', 'JEQfaGN8I8.png', 'SSRogdbhAn.jpg', NULL, NULL, NULL, NULL, NULL, 25, 30, '<div>পিয়াজ আমাদের নিত্য প্রয়োজনীয় একটি জিনিস। পেঁয়াজ আমাদের যে কোন খাবারের \r\nস্বাদ বাড়িয়ে দেয় দ্বিগুণ। এছাড়া পেঁয়াজের মধ্যে পুষ্টিগুণের সঙ্গে যে \r\nফাইটোকেমিক্যাল রয়েছে তা মানবদেহের জন্য খুবই উপকারি। <br></div><div><strong></strong>নিয়মিত পেঁয়াজ খেলে রক্ত চলাচল ঠিক থাকে। যার ফলে হার্টের অসুখের সম্ভাবনাও অনেকটা কমে যায়।</div><div>হজমে যাদের সমস্যা রয়েছে তাঁরা প্রতিদিন একটু কাঁচা পেঁয়াজ খেতে পারেন। \r\nপেঁয়াজ খাবার হজমের জন্য প্রয়োজনীয় বিভিন্ন এনজাইম বাড়াতে সাহায্য করে। \r\nফলে খাবার দ্রুত হজম হয়।</div>', 198, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-06 05:03:39', '2022-03-21 06:00:39', 0, NULL, NULL, NULL, 0, 0),
(223, 'Grx4224ki9', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Onion Imported (পেঁয়াজ আমদানিকৃত) 500 gram', 'onion-imported-pennzaj-amdanikrrit-500-gram-grx4224ki9', 'sSpwytdor6.png', 'soiE3zBy7r.jpg', NULL, NULL, NULL, NULL, NULL, 23, 25, '<div>খাওয়ার পাতে কয়েক টুকরো কাঁচা পেঁয়াজ সালাড হিসেবে খাওয়ার অভ্যেস রয়েছে \r\nঅনেকের। কেউ বা যে কোনও রান্নাতেই পেঁয়াজ দিতে পছন্দ করেন। আবার কারও বা \r\nপেঁয়াজ একেবারেই পছন্দ নয়। পেঁয়াজ খাওয়ার পর ভাল করে মুখ না ধুলে গন্ধের \r\nসমস্যার কারণে পেঁয়াজ এড়িয়ে চলেন অনেকে।</div><div>পেঁয়াজের মধ্যে রয়েছে ভিটামিন, মিনারেল, ফাইবার যা ইমিউনিটি বাড়ায়, হাড় \r\nশক্ত করে। এর মধ্যে থাকা ভিটামিন সি শক্তিশালী অ্যান্টিঅক্সিডেন্ট হিসেবে \r\nকাজ করে। পেশীর গঠনে সাহায্য করে। এছাড়া পেঁয়াজের মধ্যে থাকা ভিটামিন বি, \r\nবি নাইন, বি সিক্স মেটাবলিজম বাড়ায়। পাশাপাশি শরীরে লোহিত রক্ত কণিকার \r\nপরিমাণ বাড়াতে সাহায্য করে।</div><div>গবেষণায় দেখা গিয়েছে প্রতিদিন ১৬২ মিলিগ্রাম পেঁয়াজ খেলে রক্তচাপ নিয়ন্ত্রণে থাকে।</div>', 97, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-06 05:13:22', '2022-03-24 06:10:13', 0, NULL, NULL, NULL, 0, 0),
(224, 'su35465STH', 'normal', NULL, 0, 23, NULL, NULL, NULL, 'Garlic local (রসুন দেশি) 500 gram', 'garlic-local-rsun-desi-500-gram-su35465sth', '0tjQXqD8Jq.png', 'BUEbNt20hS.jpg', NULL, NULL, NULL, NULL, NULL, 30, 35, '<div>রসুন আমাদের দৈনন্দিন খাবারের একটি গুরুত্বপূর্ণ উপাদান; এই রসুনে রয়েছে \r\nথিয়ামিন (ভিটামিন বি১), রিবোফ্লাবিন (ভিটামিন বি২), নায়াসিন (ভিটামিন বি৩),\r\n প্যান্টোথেনিক অ্যাসিড (ভিটামিন বি৫), ভিটামিন বি৬, ফোলেট (ভিটামিন বি৯) ও\r\n সেলেনিয়াম। সেলেনিয়াম ক্যানসার প্রতিরোধে দারুণ কাজ করে। রসুনের মধ্যে \r\nরয়েছে এলিসিন নামে এক জরুরি ও গুরুত্বপূর্ণ উপাদান, যা ক্যানসারসহ বিভিন্ন \r\nশারীরিক সমস্যা দূর করতে কার্যকর। এই এলিসিন নামে যে কম্পাউন্ড রসুনে পাওয়া\r\n যায়, তার কারণে রসুনকে সুপারফুডে অন্তর্ভুক্ত করা হয়েছে।</div><div>প্রাচীন ইতিহাস ঘেঁটে দেখলে জানতে পারবেন, তখন রসুন কিন্তু শুধু বিভিন্ন \r\nঅসুখ সারানোর জন্যই ব্যবহার হতো। মিসরীয়, ব্যাবিলনীয়, গ্রিক, রোমান ও চৈনিক\r\n সভ্যতায় ওষুধ হিসেবে রসুন ব্যবহারের নিদর্শন পাওয়া গেছে। এমনকি সকালে খালি\r\n পেটে রসুন চিবানোও স্বাস্থ্যের জন্য ভালো।</div>', 398, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><b><br>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 4, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-06 05:26:51', '2022-03-28 19:42:05', 0, NULL, NULL, NULL, 0, 0),
(225, 'CLO56158Jc', 'normal', NULL, 0, 23, NULL, NULL, NULL, 'Garlic imported (রসুন আমদানিকৃত ) 500 gram', 'garlic-imported-rsun-amdanikrrit-500-gram-clo56158jc', 'cQhsmWHBZd.png', 'WErX6bKBG8.jpg', NULL, NULL, NULL, NULL, NULL, 30, 25, '<div>রসুন আমাদের দৈনন্দিন খাবারের একটি গুরুত্বপূর্ণ উপাদান; এই রসুনে রয়েছে \r\nথিয়ামিন (ভিটামিন বি১), রিবোফ্লাবিন (ভিটামিন বি২), নায়াসিন (ভিটামিন বি৩),\r\n প্যান্টোথেনিক অ্যাসিড (ভিটামিন বি৫), ভিটামিন বি৬, ফোলেট (ভিটামিন বি৯) ও\r\n সেলেনিয়াম। সেলেনিয়াম ক্যানসার প্রতিরোধে দারুণ কাজ করে। রসুনের মধ্যে \r\nরয়েছে এলিসিন নামে এক জরুরি ও গুরুত্বপূর্ণ উপাদান, যা ক্যানসারসহ বিভিন্ন \r\nশারীরিক সমস্যা দূর করতে কার্যকর। এই এলিসিন নামে যে কম্পাউন্ড রসুনে পাওয়া\r\n যায়, তার কারণে রসুনকে সুপারফুডে অন্তর্ভুক্ত করা হয়েছে।</div><div>যাঁরা হৃদপিণ্ডের ছোটখাটো সমস্যা নিয়ে বিব্রত আছেন, মাঝেমধ্যে বুকের বাঁ \r\nপাশে ব্যথা অনুভূত হয়, সিঁড়ি বেয়ে উঠতে কষ্ট হয়, তাঁদের জন্য প্রতিদিন \r\nসকালে খালি পেটে দুই কোয়া রসুন পানি দিয়ে গিলে খেয়ে ফেলতে হবে, এতে করে \r\nহৃদপিণ্ড শক্তিশালী হবে, রক্ত সঞ্চালন বৃদ্ধির কারণে হৃদপিণ্ডের ব্লকগুলো \r\nআর বাড়বে না এবং ব্যাঘাত সৃষ্টি করতে পারবে না, বুকের ব্যথা কমে যাবে, \r\nসিঁড়ি বেয়ে উঠতে কষ্ট হবে না।</div>', 190, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 9, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-06 05:33:45', '2022-03-28 19:46:43', 0, NULL, NULL, NULL, 0, 0),
(226, 'Bn59629IHn', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Big Diamond Potato (বড় ডায়মন্ড আলু) 500 gram', 'big-diamond-potato-br-dazmnd-alu-500-gram-bn59629ihn', 'vcsOwHtzrW.png', 'GU3ot40Jjx.jpg', NULL, NULL, NULL, NULL, NULL, 10, 14, '<div>সারাবিশ্বে সবজি হিসেবে আলু এতই জনপ্রিয় যে, সাধারণ মানুষ এর ভালো-মন্দ \r\nগুণাগুণ বিচারের ধার ধারেন না। তবে পুষ্টিবিদরা এর সঠিক গুণাগুণ অনেক আগেই \r\nনিশ্চিত করেছেন। আলু শুধু সবজিই নয়, এর তৈরি শুকনা খাবারও বাজারে ব্যাপক \r\nজনপ্রিয়। আবার বাঙালির রসনায়ও আলু অন্যতম প্রধান অনুষঙ্গ। বিশ্বে সবচেয়ে \r\nবেশি উৎপাদিত শস্যের তালিকায় আলুর স্থান চতুর্থ।</div><div><br></div><div>আলুতে রয়েছে প্রয়োজনীয় ভিটামিন ও খনিজ উপাদান, যা আমাদের শরীরের জন্য খুবই \r\nগুরুত্বপূর্ণ। এতে আছে ক্যারোটিনয়েড ও পলিফেনলের মতো প্রয়োজনীয় \r\nফাইটোকেমিক্যাল। পুষ্টিমান বিবেচনায় আলুর <br>গুরুত্বপূর্ণ বৈশিষ্ট্য হচ্ছে এর কার্বোহাইড্রেট উপাদান।</div>', 296, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে</b>।<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-06 06:39:08', '2022-03-30 11:32:47', 0, NULL, NULL, NULL, 0, 0),
(227, 'nFi9952DHM', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Red Potato Cardinal (লাল আলু কার্ডিনাল) 500 gram', 'red-potato-cardinal-lal-alu-kardinal-500-gram-nfi9952dhm', 'rCDjkvVpMj.png', '6yAggTN7Mt.jpg', NULL, NULL, NULL, NULL, NULL, 10, 13, '<div>আলুতে রয়েছে প্রয়োজনীয় ভিটামিন ও খনিজ উপাদান, যা আমাদের শরীরের জন্য খুবই \r\nগুরুত্বপূর্ণ। এতে আছে ক্যারোটিনয়েড ও পলিফেনলের মতো প্রয়োজনীয় \r\nফাইটোকেমিক্যাল। পুষ্টিমান বিবেচনায় আলুর গুরুত্বপূর্ণ বৈশিষ্ট্য হচ্ছে এর কার্বোহাইড্রেট উপাদান।</div><div>কার্বোহাইড্রেট ও ক্যালরিসমৃদ্ধ আলু আমাদের শারীরিক শক্তির উৎস। ভিটামিন \r\nসি, ভিটামিন বি৬, কপার, ম্যাঙ্গানিজ ও ফাইবারে সমৃদ্ধ থাকার কারণে আলু \r\nআমাদের শরীরের বিভিন্ন ভিটামিনের ঘাটতি খুব সহজেই মেটাতে পারে। মিষ্টি \r\nআলুতে ক্যালরি খুব কম এবং ফ্যাট নেই বললেই চলে। তাই যাদের ক্ষেত্রে ক্যালরি\r\n ফ্যাটের সমস্যা তারাও আলু খেতে পারবে। আলুতে রয়েছে বিটা ক্যারোটিন, \r\nপটাশিয়াম ও ভিটামিন এ, যা খুবই প্রয়োজনীয়। এনার্জি বা শক্তি উৎপাদক হিসেবে \r\nআলু খুবই নির্ভরযোগ্য একটি খাদ্য। আলু থেকে প্রাপ্ত শক্তি লাইকোজেন হিসেবে \r\nমাংসপেশি ও লিভারে সঞ্চিত থাকে। তাই শারীরিক ব্যায়ামের ক্ষেত্রে বিশেষ করে \r\nখেলোয়াড়দের জন্য আলু একটি উত্তম খাদ্য। আলু কম মাত্রায় সোডিয়ামযুক্ত, প্রায়\r\n ফ্যাটমুক্ত ও সহজে হজমযোগ্য হওয়ায় প্রতিদিনের খাবার তালিকায় রাখা যায়। </div>', 299, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-06 06:49:14', '2022-03-21 03:18:39', 0, NULL, NULL, NULL, 0, 0),
(228, 'VVs0558NT6', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Jaam Alu (জাম আলু) 500 gram', 'jaam-alu-jam-alu-500-gram-vvs0558nt6', 'M5QEhswMZu.png', 'U89XC5Uzoa.jpg', NULL, NULL, NULL, NULL, NULL, 20, 17, 'আলু খাদ্য হিসেবে বেশ সুস্বাদু। বাঙালিরা আলু দিয়ে নানা রকম তরকারি রান্না \r\nকরে থাকে। আলু একদিকে যেমন সস্তা, তেমন আলু অত্যন্ত খাদ্যগুণ সম্পন্ন। \r\nআলুতে রয়েছে প্রচুর পরিমাণে ফাইবার, মিনারেল, ও ভিটামিন যা মানুষকে \r\nসুস্বাস্থ্য দেয় ও নানা রোগ প্রতিহত করতে সাহায্য করে। আজকাল যদিও অনেকেই \r\nকম কার্বোহাইড্রেট যুক্ত খাদ্য খাওয়ার জন্য আলু খাওয়ার পরিমাণ কমিয়ে \r\nদিয়েছেন, কিন্তু বৈজ্ঞানিকভাবে প্রমাণিত হয়েছে যে আলু খাওয়ার নানারকম \r\nউপকারিতা রয়েছে। তাই, নিয়মিত কম পরিমাণে আলু খেলে আপনি বিভিন্ন ধরণের উপকার\r\n পাবেন।', 99, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-06 07:00:50', '2022-03-14 20:49:53', 0, NULL, NULL, NULL, 0, 0),
(229, 'fEU1809MWN', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Sweet Potato (মিষ্টি আলু) 500 gram', 'sweet-potato-mishti-alu-500-gram-feu1809mwn', 'vDhT53PKHW.png', 'uc2AcDaphw.jpg', NULL, NULL, NULL, NULL, NULL, 25, 27, '<div>মিষ্টি আলুকে বলা হয় ‘সুপার ফুড’। অসংখ্য পুষ্টিগুণের কারণে এটিকে এই নামে ডাকা হয়।এতে রয়েছে প্রচুর পরিমাণ বিটা ক্যারটিন, ভিটামিন সি, ভিটামিন বি৬, ফাইবার।</div><div>একটি মিষ্টি আলুতে ১০০ এর বেশি ভিটামিন এ রয়েছে, যা প্রতিদিনের ভিটামিনের \r\nচাহিদা পূরণ করে থাকে। হাত-পায়ের আঙুল ফোলা কমানো, প্রসাবের সমস্যা দূর \r\nকরাসহ বিভিন্ন রোগের চিকিৎসার জন্য মিষ্টি আলুর পাতা ও মূল ব্যবহার করা \r\nহয়ে থাকে।</div>', 79, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 3, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-06 07:17:14', '2022-03-14 20:53:29', 0, NULL, NULL, NULL, 0, 0),
(240, 'EFz4667wr9', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Begun (সবুজ গোল বেগুন) 500 gram', 'begun-sbuj-gol-begun-500-gram-efz4667wr9', '8NzckFRDcf.png', 't8QZHqNtWY.jpg', NULL, NULL, NULL, NULL, NULL, 25, 26, '<div>বহু বছর ধরেই খাদ্য তালিকায় বেগুন যোগ করার কথা বলা হয়েছে। এর প্রধান কারণ হল বেগুনের স্বাস্থ্য উপকারিতার জন্য।বেগুন খুব সহজ ভাবেই ডায়াবেটিস নিয়ন্ত্রণ করতে পারে বলে জানা যায় । এর \r\nপ্রধান কারণ হল বেগুনে রয়েছে উচ্চ পরিমানে ফাইবার ও নিম্ন পরিমানে \r\nকার্বোহাইড্রেট যা রক্তে শর্করার মাত্রা কম করতে সাহায্য করে ও বেশি \r\nপরিমানে গ্লুকোজ শোষণ করতে দেয় না।</div><div>হার্টের জন্যে বেগুনের উপকারিতা অনেক কারণ এটি কোলেস্টরলের মাত্রা ও উচ্চ \r\nরক্তচাপ কমাতে সাহায্য করে। এমনকি, পটাশিয়াম থাকার ফলে এটি আপনার শরীরকে \r\nবেশ আর্দ্র রাখে।</div><div>স্মৃতি শক্তি দীর্ঘকাল প্রখর রাখতে আপনার খাদ্য তালিকায় অবশ্যই যোগ করুন \r\nবেগুন। বেগুনে রয়েছে ফাইটোনিউট্রিয়েন্ট যা মস্তিষ্কের কোষগুলিকে নষ্ট হওয়া\r\n থেকে বাঁচায় এবং এর ফলে আপনার স্মৃতি মজবুত হয়।</div><div>ধূমপানের নেশা থাকলে তা ছাড়ানো বেশ কঠিন হয়ে ওঠে। তাহলে বেগুন কিভাবে \r\nএক্ষেত্রে সাহায্য করে? বিভিন্ন বৈজ্ঞানিক পরীক্ষায় প্রমাণিত হয়েছে যে, \r\nবেগুনে অন্যান্য কোনো সবজির তুলনায় সব থেকে বেশি নিকোটিন রয়েছে <a href=\"https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4864980/\" target=\"_blank\" rel=\"dofollow noopener\">(৪)</a>।\r\n বেগুনে উপস্থিত এই নিকোটিনিক অ্যাসিড আপনার ধূমপান ছাড়ানোর কষ্টকে অনায়াসে\r\n লাঘব করতে পারে ও এর সাহায্যে আপনি ধীরে ধীরে ধূমপান ত্যাগ করতে পারেন।</div>', 60, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-19 10:18:17', '2022-03-19 10:19:38', 0, NULL, NULL, NULL, 0, 0),
(241, '5rS5109knG', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Begun (লম্বা বেগুন কালো) 500 gram', 'begun-lmba-begun-kalo-500-gram-5rs5109kng', 'WngJdLnyOT.png', 'UcJx1P0jR4.jpg', NULL, NULL, NULL, NULL, NULL, 25, 30, '<div>বহু বছর ধরেই খাদ্য তালিকায় বেগুন যোগ করার কথা বলা হয়েছে। এর প্রধান \r\nকারণ হল বেগুনের স্বাস্থ্য উপকারিতার জন্য।বেগুন খুব সহজ ভাবেই ডায়াবেটিস \r\nনিয়ন্ত্রণ করতে পারে বলে জানা যায় । এর \r\nপ্রধান কারণ হল বেগুনে রয়েছে উচ্চ পরিমানে ফাইবার ও নিম্ন পরিমানে \r\nকার্বোহাইড্রেট যা রক্তে শর্করার মাত্রা কম করতে সাহায্য করে ও বেশি \r\nপরিমানে গ্লুকোজ শোষণ করতে দেয় না।</div><div>হার্টের জন্যে বেগুনের উপকারিতা অনেক কারণ এটি কোলেস্টরলের মাত্রা ও উচ্চ \r\nরক্তচাপ কমাতে সাহায্য করে। এমনকি, পটাশিয়াম থাকার ফলে এটি আপনার শরীরকে \r\nবেশ আর্দ্র রাখে।</div><div>স্মৃতি শক্তি দীর্ঘকাল প্রখর রাখতে আপনার খাদ্য তালিকায় অবশ্যই যোগ করুন \r\nবেগুন। বেগুনে রয়েছে ফাইটোনিউট্রিয়েন্ট যা মস্তিষ্কের কোষগুলিকে নষ্ট হওয়া\r\n থেকে বাঁচায় এবং এর ফলে আপনার স্মৃতি মজবুত হয়।</div><div>ধূমপানের নেশা থাকলে তা ছাড়ানো বেশ কঠিন হয়ে ওঠে। তাহলে বেগুন কিভাবে \r\nএক্ষেত্রে সাহায্য করে? বিভিন্ন বৈজ্ঞানিক পরীক্ষায় প্রমাণিত হয়েছে যে, \r\nবেগুনে অন্যান্য কোনো সবজির তুলনায় সব থেকে বেশি নিকোটিন রয়েছে <a href=\"https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4864980/\" target=\"_blank\" rel=\"dofollow noopener\">(৪)</a>।\r\n বেগুনে উপস্থিত এই নিকোটিনিক অ্যাসিড আপনার ধূমপান ছাড়ানোর কষ্টকে অনায়াসে\r\n লাঘব করতে পারে ও এর সাহায্যে আপনি ধীরে ধীরে ধূমপান ত্যাগ করতে পারেন।</div>', 59, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে \r\nনা। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক \r\nডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল \r\nকরতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-19 10:21:56', '2022-03-20 05:02:08', 0, NULL, NULL, NULL, 0, 0),
(242, 'NJZ5321YL1', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Shalgom (শালগম) 500 gram', 'shalgom-salgm-500-gram-njz5321yl1', 'TAEr5Dufv5.png', '1Q9VxAiBxM.jpg', NULL, NULL, NULL, NULL, NULL, 20, 25, '<div>শালগম ভিটামিন এ, সি এবং কে সমৃদ্ধ। এছাড়াও এতে আছে খনিজ উপাদান-\r\nক্যালসিয়াম, ফোলায়েট, ম্যাগনেসিয়াম, ফসফরাস এবং পটাশিয়াম।</div><div>শালগমে আছে ক্যালসিয়াম। যা হাড় ও দাঁত সুস্থ রাখতে সাহায্য করে।\r\nপ্রতিটা শালগমে দৈনিক চাহিদার ১৫ শতাংশ ক্যালসিয়াম থাকে। যা দাঁতের ক্ষয়, অস্টিওপোরোসিস\r\nও অস্টিওআর্থ্রাইটিস থেকে রক্ষা পেতে সহায়তা করে।</div><div>শালগমে ৫০\r\nশতাংশই আঁশ। তাই প্রতিদিন খাবারে শালগম যোগ করা হলে তা হজমে সহায়তা করে ও বিপাক বাড়ায়।\r\nএছাড়াও, এতে&nbsp; কার্বোহাইড্রেইটের জটিল যৌগ থাকায়\r\nতা দীর্ঘক্ষণ পেট ভরা অনুভূতি দেয়।শালগমে প্রচুর পরিমাণে ভিটামিন কে থাকে যা হৃদপিণ্ড ও রক্ত ভালো\r\nরাখতে সহায়তা করে। লোহিত রক্ত কণিকা, হিমোগ্লোবিনের মাত্রা ঠিক রাখে। দৈনিক দুটি শালগম\r\nখাওয়া শরীরে হিমোগ্লবিনের মাত্রা ঠিক রাখতে সহায়তা করে।</div>', 47, '<pre class=\"tw-data-text tw-text-large tw-ta\" data-placeholder=\"অনুবাদ\" id=\"tw-target-text\" style=\"text-align:left\" dir=\"ltr\"><span class=\"Y2IQFc\" lang=\"bn\">গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত </span><span class=\"Y2IQFc\" lang=\"bn\">যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><b><br></b></span><b><span class=\"Y2IQFc\" lang=\"bn\"><span class=\"Y2IQFc\" lang=\"bn\">বিশেষ</span> দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</span></b></pre>', 1, 8, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-19 10:30:26', '2022-03-21 06:00:39', 0, NULL, NULL, NULL, 0, 0),
(243, 'Tkf58330pw', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Green Banana (কাঁচা কলা) 500 gram', 'green-banana-kannca-kla-500-gram-tkf58330pw', 'CQHTImLGdo.png', 'kdNbPPteAp.jpg', NULL, NULL, NULL, NULL, NULL, 30, 25, '<div>সারা বিশ্বে এক হাজারেরও বেশি জাতের কলা উৎপন্ন হয়। <br></div><div><span class=\"ILfuVd\"><span class=\"hgKElc\"><b>কাঁচা কলা</b> ক্ষুধা \r\nনিয়ন্ত্রণের পাশাপাশি ওজন কমাতে সাহায্য করে। এতে কিছু পরিমাণে ফাইবার \r\nপাওয়া যায় এবং ফাইবার দ্রুত হজম হয় না, যার কারণে অনেকক্ষণ পেট ভরা \r\nথাকে। এমতাবস্থায় কিছু খাওয়ার ইচ্ছা থাকে না, যার কারণে ওজন কিছুটা হলেও \r\nকমতে পারে।</span></span><span class=\"kX21rb ZYHQ7e\"></span></div>', 98, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন \r\nকোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা\r\n পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে \r\nতাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-19 10:36:28', '2022-03-21 06:00:39', 0, NULL, NULL, NULL, 0, 0),
(244, 'oPg6198LL0', 'normal', NULL, 0, 23, NULL, NULL, NULL, 'Ginger (আদা) 500 gram', 'ginger-ada-500-gram-opg6198ll0', 'JiPQsA2jFz.png', '1t6kLd1q5h.jpg', NULL, NULL, NULL, NULL, NULL, 45, 50, '<div><span style=\"font-weight: 400;\">আদা একটি খুব ভাল ঔষধি হিসাবে পরিচিত। \r\nআদাতে ভিটামিন এ, ভিটামিন সি, ভিটামিন ই এবং বি কমপ্লেক্স থাকে। এটি \r\nম্যাগনেসিয়াম, ফসফরাস, সিলিকন, সোডিয়াম, আয়রন, দস্তা, ক্যালসিয়াম, বিটা\r\n ক্যারোটিন জাতীয় খনিজ সমৃদ্ধ। এটি শরীরের প্রতিরোধ ক্ষমতা বাড়াতে \r\nসহায়তা করে।</span></div><div>যাঁরা এসব সমস্যায় ভুগছেন, তাঁদের জন্য খাওয়ার পর এক কাপ গরম পানিতে এক \r\nচা–চামচ আদার রস মিশিয়ে খেলে আমাশয়, পেটফাঁপা, পেটব্যথা দূর হবে। যাঁরা এ \r\nসমস্যায় দীর্ঘদিন ধরে ভুগছেন, তাঁরা এক চা–চামচ করে আদার রস, লেবুর রস ও \r\nমধু, একত্রে এক কাপ গরম পানিতে মিশিয়ে চায়ের মতো করে দিনে এবং রাতে নিয়মিত \r\nখেলে সুফল পাবেন। <br></div><div>ফুসফুসের ধমনিতে কোনো সংক্রমণ থাকলে এবং শ্বাস নিতে কষ্ট হলে অথবা হাঁপানি \r\nথাকলে প্রতিদিন দুবেলা এক চা–চামচ করে আদার রস, লেবুর রস, মধু এক কাপ গরম \r\nপানিতে মিশিয়ে চায়ের মতো করে খেলে এবং ঠান্ডাজাতীয় খাবার এড়িয়ে চললে ১৫ \r\nদিনের মধ্যে এর সুফল পাবেন।<span style=\"font-weight: 400;\"></span></div>', 195, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন \r\nকোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা\r\n পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে \r\nতাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-19 10:42:45', '2022-03-23 12:10:13', 0, NULL, NULL, NULL, 0, 0);
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`) VALUES
(246, '1Pc99831kN', 'normal', NULL, 83, 20, NULL, NULL, NULL, 'বড় আলু 2 মণ', 'br-alu-2-mn-1pc99831kn', '6JG0w0602y.png', 'OhSfQgcgGh.jpg', NULL, NULL, NULL, NULL, NULL, 1300, 0, '<div style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">এখানা সকল প্রকার আলু ,পিঁয়াজ পাওয়া যায়।</div><div style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">ফোন ঃ 01774560070</div>', 8, '<br>', 1, 8, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2022-03-20 09:58:46', '2022-03-25 14:00:38', 0, NULL, NULL, NULL, 0, 0),
(255, 'XyG968262p', 'normal', NULL, 82, 20, NULL, NULL, NULL, 'দেশী পেঁয়াজ ৪ মণ', 'desee-pennzaj-4-mn-xyg968262p', 'dKtn7uJlBCrj.jpg', 'pVEOOjVMIFhB.jpg', NULL, NULL, NULL, NULL, NULL, 6400, 0, '&nbsp;এই পেঁয়াজের মান অনেক ভালো। আরও পিঁয়াজ কিনতে কল করতে পারেন। মোবাইল -&nbsp;01774560044<br>', 10, '<br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2022-03-20 21:06:49', '2022-03-20 21:39:14', 0, NULL, NULL, NULL, 0, 0),
(256, 'Aja1382BjJ', 'normal', NULL, 81, 23, NULL, NULL, NULL, 'আদা দেশি ১ মণ', 'ada-desi-1-mn-aja1382bjj', 'BgpzpFXxD6.png', 'Mjs4eogYZx.jpg', NULL, NULL, NULL, NULL, NULL, 4000, 0, 'আদা অনেক ভালো মানের । মোবাইল -&nbsp;01474560076', 3, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2022-03-20 21:24:42', '2022-03-28 19:43:55', 0, NULL, NULL, NULL, 0, 0),
(257, 'Bqn1795qVv', 'normal', NULL, 85, 23, NULL, NULL, NULL, 'রসুন ১ মণ', 'rsun-1-mn-bqn1795qvv', 'Lf9416Fiqc.png', 'cA3Tyk2Dym.jpg', NULL, NULL, NULL, NULL, NULL, 3500, 0, 'মোবাইল-01774560077', 10, '<br>', 1, 6, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2022-03-20 21:37:14', '2022-03-28 19:41:33', 0, NULL, NULL, NULL, 0, 0),
(258, 'UCb4448z1Q', 'normal', NULL, 0, 20, NULL, NULL, NULL, 'Lebu (লেবু ৪টি)', 'lebu-lebu-4ti-ucb4448z1q', 'TSS45TgnFU.png', 'xcxfv8J167.jpg', NULL, NULL, NULL, NULL, NULL, 30, 35, '<div>লেবু ভিটামিন সি-তে ভরপুর। লেবুর ভিটামিন সি শরীরের নানা উপকারে আসে। ওজন \r\nকমানো, রক্তের কোলেস্টেরল কমানো ছাড়াও রক্তস্বল্পতা কমাতে লেবুর অনেক \r\nভূমিকা রয়েছে। <br></div><div>লেবুতে রয়েছে পেকটিন, খাদ্য আঁশ, যা ক্ষুধা নিয়ন্ত্রণ করে। এর ফলে ওজন কমে।</div>', 497, 'গ্রাহকের কাছে ইতিমধ্যেই বিতরণ করা হয়েছে এমন কোনো পরিবর্তন প্রযোজ্য হবে না। কিন্ত যদি পণ্যের গুণমান বা পরিমাণে সমস্যা পাওয়া যায় তবে গ্রাহক ডেলিভারির সময় ডেলিভারি ব্যক্তির উপস্থিতিতে তাদের অর্ডার ফেরত বা বাতিল করতে পারেন।<br><br><b>বিশেষ দ্রষ্টব্য: স্টকে পণ্যে স্বল্পতার কারণে সরবরাহের সময়কাল পরিবর্তিত হতে পারে।</b><br>', 1, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2022-03-28 19:11:43', '2022-03-29 01:49:50', 0, NULL, NULL, NULL, 0, 0),
(259, 'GQu6372IhV', 'normal', NULL, 93, 23, NULL, NULL, NULL, 'রসুন দেশি ১ মণ', 'rsun-desi-1-mn-gqu6372ihv', 'M5jZzFuWUvVl.jpg', 'kUWlg7T0Ow1K.jpg', NULL, NULL, NULL, NULL, NULL, 6000, 0, '<h4 class=\"product-name\"><span style=\"color: rgb(70, 85, 65); font-size: 14px;\">রসুন অনেক ভালো মানের । মোবাইল -&nbsp;01474560076</span><br></h4><br>', 5, '<br>', 1, 0, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-28 19:44:20', '2022-03-28 19:45:54', 0, NULL, NULL, NULL, 0, 0),
(260, '5HA0651H7Y', 'normal', NULL, 94, 20, NULL, NULL, NULL, 'আদা দেশি ১ মণ', 'ada-desi-1-mn-5ha0651h7y', 'IOoNcglOOqdB.jpg', 'ai2lmfEQhPR1.jpg', NULL, NULL, NULL, NULL, NULL, 600, 0, '<br>', 10, '<br>', 1, 2, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2022-03-30 11:44:45', '2022-03-30 11:53:48', 0, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(58, 202, '2022-03-05'),
(59, 202, '2022-03-05'),
(60, 202, '2022-03-05'),
(61, 202, '2022-03-05'),
(62, 202, '2022-03-05'),
(63, 202, '2022-03-05'),
(71, 204, '2022-03-05'),
(81, 225, '2022-03-06'),
(82, 225, '2022-03-06'),
(83, 225, '2022-03-06'),
(84, 229, '2022-03-06'),
(85, 229, '2022-03-06'),
(86, 219, '2022-03-06'),
(87, 222, '2022-03-06'),
(88, 219, '2022-03-07'),
(89, 219, '2022-03-07'),
(90, 210, '2022-03-07'),
(91, 210, '2022-03-07'),
(92, 206, '2022-03-07'),
(93, 219, '2022-03-08'),
(94, 225, '2022-03-08'),
(95, 225, '2022-03-08'),
(96, 205, '2022-03-08'),
(97, 206, '2022-03-08'),
(98, 206, '2022-03-08'),
(99, 213, '2022-03-08'),
(100, 213, '2022-03-08'),
(101, 213, '2022-03-08'),
(102, 210, '2022-03-08'),
(103, 207, '2022-03-08'),
(104, 213, '2022-03-08'),
(105, 213, '2022-03-08'),
(106, 219, '2022-03-08'),
(107, 219, '2022-03-08'),
(108, 219, '2022-03-08'),
(109, 216, '2022-03-13'),
(110, 216, '2022-03-13'),
(111, 219, '2022-03-13'),
(112, 219, '2022-03-13'),
(113, 219, '2022-03-13'),
(118, 228, '2022-03-13'),
(119, 215, '2022-03-13'),
(120, 225, '2022-03-13'),
(122, 215, '2022-03-13'),
(123, 225, '2022-03-15'),
(124, 228, '2022-03-15'),
(125, 204, '2022-03-15'),
(126, 229, '2022-03-15'),
(127, 224, '2022-03-15'),
(128, 224, '2022-03-15'),
(129, 224, '2022-03-15'),
(131, 240, '2022-03-19'),
(132, 202, '2022-03-19'),
(133, 205, '2022-03-19'),
(134, 219, '2022-03-20'),
(135, 242, '2022-03-20'),
(136, 242, '2022-03-20'),
(137, 242, '2022-03-20'),
(138, 242, '2022-03-20'),
(139, 242, '2022-03-20'),
(140, 242, '2022-03-20'),
(141, 242, '2022-03-20'),
(142, 219, '2022-03-20'),
(143, 226, '2022-03-20'),
(146, 246, '2022-03-20'),
(155, 246, '2022-03-20'),
(156, 246, '2022-03-20'),
(157, 203, '2022-03-20'),
(165, 246, '2022-03-20'),
(166, 246, '2022-03-20'),
(181, 219, '2022-03-20'),
(187, 242, '2022-03-20'),
(191, 203, '2022-03-20'),
(192, 203, '2022-03-20'),
(193, 203, '2022-03-20'),
(194, 203, '2022-03-20'),
(255, 246, '2022-03-21'),
(256, 255, '2022-03-21'),
(257, 257, '2022-03-21'),
(258, 246, '2022-03-21'),
(259, 257, '2022-03-21'),
(260, 257, '2022-03-21'),
(261, 257, '2022-03-21'),
(262, 257, '2022-03-21'),
(263, 246, '2022-03-21'),
(264, 216, '2022-03-21'),
(265, 216, '2022-03-21'),
(266, 216, '2022-03-21'),
(267, 216, '2022-03-21'),
(268, 219, '2022-03-22'),
(269, 219, '2022-03-22'),
(270, 219, '2022-03-22'),
(271, 219, '2022-03-22'),
(272, 219, '2022-03-22'),
(273, 219, '2022-03-22'),
(274, 219, '2022-03-22'),
(275, 219, '2022-03-22'),
(276, 219, '2022-03-22'),
(277, 219, '2022-03-22'),
(278, 219, '2022-03-22'),
(279, 219, '2022-03-22'),
(280, 219, '2022-03-22'),
(281, 225, '2022-03-22'),
(282, 225, '2022-03-29'),
(283, 257, '2022-03-29'),
(284, 256, '2022-03-29'),
(285, 224, '2022-03-29'),
(286, 256, '2022-03-29'),
(287, 258, '2022-03-29'),
(288, 219, '2022-03-29'),
(289, 219, '2022-03-29'),
(290, 219, '2022-03-29'),
(291, 226, '2022-03-30'),
(292, 216, '2022-03-30'),
(293, 260, '2022-03-30'),
(294, 260, '2022-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 88, 3, 'very nice', '2022-03-21 18:58:23', '2022-03-21 18:58:23'),
(2, 88, 3, 'nice', '2022-03-21 19:00:13', '2022-03-21 19:00:13'),
(3, 88, 3, 'ok', '2022-03-21 19:00:19', '2022-03-21 19:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keys` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`) VALUES
(8, 'Fresh vegetables', '24', '#ffffff', 'slideInUp', 'Fresh is Everything', '60', '#ffffff', 'slideInDown', 'Freshness, quality, and sustainability\r\nis our priority.', '16', '#ffffff', 'slideInRight', '1646354406slider-01.png', 'slide-three', 'http://localhost/vegetable/category/fresh-vegetables'),
(9, 'Fresh Vegetables', '24', '#105c52', 'slideInUp', 'Fresh is Everything', '60', '#105c52', 'slideInDown', 'Freshness, quality, and sustainability\r\nis our priority.', '16', '#105c52', 'slideInRight', '1643758967pexels-pixabay-372882.jpg', 'slide-three', 'http://localhost/vegetable/category/fresh-vegetables'),
(10, 'Fresh vegetables', '24', '#000000', 'slideInUp', 'Fresh is Everything', '60', '#000000', 'slideInDown', 'Freshness, quality, and sustainability\r\nis our priority.', '16', '#000000', 'slideInLeft', '1643758337pepper-154377.png', 'slide-one', 'http://localhost/vegetable/category/fresh-vegetables'),
(11, 'Fresh Masala', '20', '#ffffff', 'slideInUp', 'Fresh is Everything', '60', '#ffffff', 'slideInDown', 'Freshness, quality, and sustainability\r\nis our priority.', '16', '#ffffff', 'slideInLeft', '1643766302spices-166903_1920.jpg', 'slide-one', 'http://localhost/vegetable/category/fresh-vegetables'),
(12, 'Fresh Vegetables', '24', '#000000', 'slideInUp', 'Fresh is Everything', '60', '#000000', 'slideInDown', 'Freshness, quality and sustainability\r\nis our priority.', '16', '#000000', 'slideInLeft', '1646355305slider-02.png', 'slide-one', 'http://localhost/vegetable/category/fresh-vegetables');

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT 1,
  `g_status` tinyint(4) NOT NULL DEFAULT 1,
  `t_status` tinyint(4) NOT NULL DEFAULT 1,
  `l_status` tinyint(4) NOT NULL DEFAULT 1,
  `d_status` tinyint(4) NOT NULL DEFAULT 1,
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 0, 0, 0, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://localhost/vegetable/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'http://localhost/vegetable/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`) VALUES
(8, 'সাধারণ', '৳', 'BDT', 0, 150, 0, 'এখানে প্রতি পণ্যের উপর 2% টাকা কাটা হবে ।<br>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT 0,
  `status` tinyint(10) NOT NULL DEFAULT 0,
  `verification_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_income` double NOT NULL DEFAULT 0,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `f_check` tinyint(1) NOT NULL DEFAULT 0,
  `g_check` tinyint(1) NOT NULL DEFAULT 0,
  `t_check` tinyint(1) NOT NULL DEFAULT 0,
  `l_check` tinyint(1) NOT NULL DEFAULT 0,
  `mail_sent` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `current_balance` double NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`) VALUES
(65, 'MD.Rohomot Ullah', NULL, 'sherpur', 'bogra', 'Rajshahi', 'sherpur,bogra', '01774560076', NULL, 'rohomot@gmail.com', '$2y$10$c4Kt8Oy5EnksnzBTL/zhyenMDFnB/rtBpgurjAUUBG6AjlC3SRgSG', NULL, '2022-03-13 07:46:18', '2022-03-25 13:52:07', 0, 0, '2da1e034b52bec856d792a22773d5c12', 'Yes', 'c5520020715b5d2521d55a4de00d89ce', 0, 'romij vegetable store', 'romij', '06', 'sherpur.bogra', NULL, NULL, '<br>', NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2022-08-10', 0),
(70, 'Abair', NULL, 'Bogura Sadar', 'Bogra', 'Rajshahi', 'M/S Club math, Colony', '01774560076', NULL, 'abair@gmail.com', '$2y$10$.K81JJ7sn1ezkOSUNoQn5eSszVfkFw/bKgki8Juoi4aOY/ii57LzO', NULL, '2022-03-18 09:42:30', '2022-03-20 09:03:13', 0, 0, '8f9652bf9336b9dd31b118f5597fcc84', 'Yes', '79675036a01dc8f25e798d54c97f723d', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(71, 'Adain Ahamad', NULL, 'Bogura Sadar', 'Bogra', 'Rajshahi', 'Thanthania bus stand, sherpur road', '01774560076', NULL, 'adain@gmail.com', '$2y$10$4ea00hVhLi2L/f5eXsNSIuHCO8GGZ0x3/xtPPG7dPDP1xS4oH3zsG', NULL, '2022-03-18 09:48:01', '2022-03-20 09:01:46', 0, 0, '83eff780a28175abea521507ee8a38f7', 'Yes', 'b9d8a357be17fc8fd13c2c06fb527131', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(72, 'Akash Ahamad', NULL, 'Bogura Sadar', 'Bogra', 'Rajshahi', 'thonthonia jame masjid, sherpur road', '01774560076', NULL, 'akash@gmail.com', '$2y$10$/DjPuseq6PRpHQabbtjpmunKQlbwQ313xS31vRkADb2xaTw/4msCq', NULL, '2022-03-18 09:51:44', '2022-03-20 08:59:37', 0, 0, '2a89bf655e60d50438257359ffa4212c', 'Yes', '2b5048b063fcff545617346b4fe857fb', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(73, 'Bijoy Hossian', NULL, 'Bogura Sadar', 'Bogra', 'Rajshahi', 'ms club road, colony', '01664560076', NULL, 'bijoy@gmail.com', '$2y$10$B.P8El/MXmFkDPYReir8VesvvCyjREq949YDHojMINaHrhHUbkUyS', NULL, '2022-03-18 10:04:16', '2022-03-20 08:58:16', 0, 0, 'a09983ccc7a69e50ef1bd578535b8aaf', 'Yes', '9ee39e9d6ab37e84e24152099450b0fc', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(74, 'Deen', NULL, 'bogra', 'bogra', 'Rajshahi', 'shohid jobbar club road, ray bahadur road', '01774560076', NULL, 'deen@gmail.com', '$2y$10$G5VeRtXM6IDHT3cx4Sv5o.crtdGy0gF.PAMhav54CwAigLt10r.Ii', NULL, '2022-03-18 10:10:22', '2022-03-20 05:02:58', 0, 0, '6f1f9380aafd7abd19a384d6773c9bfa', 'Yes', 'c44e300e80096adccbbce728ee15b193', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(75, 'Duha', NULL, 'dhunat', 'bogra', 'Rajshahi', 'Malotinagar high school field,', '01774560000', NULL, 'duha@gmail.com', '$2y$10$rrKZi6UtJGdDCGhmGRp0V.HpM08ZlnYAEZAryM50iIJtUyVme9iLS', NULL, '2022-03-18 10:15:50', '2022-03-20 08:49:32', 0, 0, '387dd6ddcd78faadb5636f110ff9d2f5', 'Yes', '06f5461a98f97048b2d5be0acd3c7693', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(76, 'Ghaazi', NULL, 'Bogura Sadar', 'Bogra', 'Rajshahi', 'MM Sky Touch Garden', '01774560000', NULL, 'ghaazi@gmail.com', '$2y$10$WEjOJzbLySuAXWkuXNzk0ueuYKYBNBWqkQ3D2lQyAAxDi3pqnDqV6', NULL, '2022-03-18 10:18:24', '2022-03-20 08:51:07', 0, 0, '95615b942a7d0253384ecccb9a7aef81', 'Yes', 'f26c60c43a8f076d8cb3de5fa88030a8', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(77, 'Haafiz', NULL, 'Bogura Sadar', 'Bogra', 'Rajshahi', 'Altafunnessa playing ground', '01774560076', NULL, 'haafiz@gmail.com', '$2y$10$TcSZ353qRW2p5yU5vxw.Z.qronS.cjOPYuBJpcOW7xCR3QPw3mqSu', NULL, '2022-03-18 10:21:09', '2022-03-20 08:55:14', 0, 0, '4d8f0873a0f5598e0f513f15fd8bbfc1', 'Yes', '2bddf977e88aecc0fb99e59c1415d7d9', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(78, 'imran', NULL, 'Bogura Sadar', 'Bogra', 'Rajshahi', 'Altafunnessa ln', '01774566666', NULL, 'imran@gmail.com', '$2y$10$uLwNUprCtPHag1ZhrWw28OcA.zBYHH3Wjjlgf3EzYfC/XlRjahTym', NULL, '2022-03-18 10:23:34', '2022-03-25 13:53:07', 0, 0, 'cc61b137d5a36490ab8315f419849c13', 'Yes', 'cf51fc2e17e98f4ff2aec24737d24005', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(79, 'jari', NULL, NULL, NULL, NULL, 'Nur Masjid ln', '01774560076', NULL, 'jari@gmail.com', '$2y$10$A7KZv6I/FhGPaWlGbCuKIuTaRDZm0xC/bgvK5pkUdeiee3lep8SCi', NULL, '2022-03-18 10:27:12', '2022-03-18 10:27:12', 0, 0, 'a1e4a1d9e89d7ce528adfc4c5676bad4', 'Yes', 'fc733b74b243f5c750b8b9caec0651ee', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(80, 'Mazin', NULL, NULL, NULL, NULL, 'Bhatkhandi road', '01770560076', NULL, 'mazin@gmail.com', '$2y$10$.YJlyHyi83PfH2fB1gqsFeQTtC4jR1LW5xKqodGZlJ/NcMHyOk41O', NULL, '2022-03-18 10:32:40', '2022-03-18 10:32:40', 0, 0, 'cf2479c2953554ec45f17ccca583442d', 'Yes', 'ae7dc60e04e77a837975d078f8e85d68', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(81, 'Musad Mia', NULL, 'Bogura Sadar', 'Bogra', 'Rajshahi', 'Mahasthan', '01474560076', NULL, 'musad@gmail.com', '$2y$10$5kyLjaXnrw3C0p/LwAWdb.wS1to9GmHn/8I475E42qncFSaki2B/6', NULL, '2022-03-18 10:36:59', '2022-03-21 06:05:22', 0, 0, 'cd4fe4a6178139d9abb96133d0d52dc8', 'Yes', '29a8d57554ff52da1691a8f60a3338ce', 0, 'Musad vegetable store', 'Musad', '01', 'Mohasthan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 8160, '2022-08-15', 0),
(82, 'Kamal Uddin Molla', NULL, 'dhunat', 'Bogra', 'Rajshahi', 'Dhunat Bazar', '01774560044', NULL, 'kamal@gmail.com', '$2y$10$h0MGH1kSlgM9PQGcCLqY4.BUMqdi0YSimyUltwzgNa9bN.8l9ZYyW', NULL, '2022-03-18 10:46:02', '2022-03-20 21:06:56', 0, 0, 'f0d448d2e46f788b9cf4d4852c3d7786', 'Yes', 'b99595d04e2cedf922239d2c9131f502', 0, 'kamal vegetable store', 'kamal', '02', 'Mohasthan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2022-08-15', 0),
(83, 'khaaliq hossian', NULL, 'Bogura Sadar', 'Bogra', 'Rajshahi', 'Mohasthan', '01774560076', NULL, 'khaaaliq@gmail.com', '$2y$10$.iMcSS00DJ7Dqmc/VV6nquqx5M/zhj4nstsNJnb7CMPUit8.BsTOG', NULL, '2022-03-18 10:51:11', '2022-03-29 01:52:14', 0, 0, '6ed14339eb302f65075048cee4cca6c1', 'Yes', '36bd3dc0e59da5c66895e2c02cddea8e', 0, 'khaaliq vegetable dokan', 'karim', '03', 'Mohasthan-shigonj road', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 6253.2, '2022-08-15', 0),
(84, 'Yasin ali', NULL, NULL, NULL, NULL, 'aliar hat', '01774560006', NULL, 'yasin@gmail.com', '$2y$10$4rePitd1Kw316tL5RPu2NONPRcsa6l8kNpaIKQc0.L71HShUY.y9a', NULL, '2022-03-18 10:58:23', '2022-03-29 04:29:34', 0, 0, '7aa8841f32400aeef881076af71d959b', 'Yes', 'b0622fd1a42e09adfe0b8adeb07a3a65', 0, 'Yasin ali', 'Yasin', '04', 'aliar hat , shibganj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2022-08-26', 0),
(85, 'Romjan ali', NULL, 'dhunat', NULL, NULL, 'Naldanga bazar, dhunat', '01774560077', NULL, 'romjan@gmail.com', '$2y$10$cIAgofeIgIeXA9WUxnLqVuUDTDOPGcAwKwfgdMPxT3krLdd6Epjbu', NULL, '2022-03-19 06:52:29', '2022-03-23 18:00:01', 0, 0, 'aee6201fac7d6742707373c412fada0d', 'Yes', 'fb85eecc6ab4c36d10a8a7f211263fed', 0, 'romjan vegetable', 'romjan ali', '05', 'Naldanga bazar, dhunat', NULL, NULL, 'এইখানে টাটকা শাকসবজি সরবারহ করা হয় ।', NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2022-08-18', 0),
(88, 'rifat', NULL, NULL, NULL, NULL, 'bogra', '01774560076', NULL, 'rifat@gmail.com', '$2y$10$NhP8ufTk0MGDAM2mVBJRf.DNRym1rd171RI4A8qr9tqLu8Z25mase', NULL, '2022-03-21 05:59:05', '2022-03-21 05:59:05', 0, 0, 'a2f794793d1279bc9d645f7e41e10478', 'Yes', '4d9c152ee40a1aba98b849f8e0a49818', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(90, 'eer', NULL, NULL, NULL, NULL, 'wewewew', '01774560076', NULL, 'opin@gmail.com', '$2y$10$pEYMaMWtzCnbWDzxHWvBwuymSX0MpOmCWsEvJAp3gbEoAMSFD1NZO', NULL, '2022-03-22 08:09:18', '2022-03-22 08:09:19', 0, 0, '83ef8692af180fa837b9762313b99fc9', 'Yes', 'e46b6890ddf4d2afdcaaeb6d224872e1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(91, 'mota', NULL, NULL, NULL, NULL, 'jsjsjhghjsg', '01455555566', NULL, 'mota@gmil.com', '$2y$10$I2IEDXRx3LjEBn.3eicaQ.0/d7vh6AUGTxAQIuhdY790NP6LDx7/q', NULL, '2022-03-24 06:08:17', '2022-03-24 06:08:17', 0, 0, 'fae005be2f9c2ac4c717a1ab35a9f935', 'Yes', 'cbedb479bf9fd6538314b9f0eb9be774', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(92, 'roktim', NULL, NULL, NULL, NULL, 'Malotinagar highschool field', '01774560000', NULL, 'roktim@gmail.com', '$2y$10$mXDDgxe8xtjCPSjjJqWzUOEGps8ir89AhCmAfHDbJTbvz0SEc8GMu', NULL, '2022-03-28 19:27:07', '2022-03-28 19:27:07', 0, 0, 'd68248a911eb7be3498225477e0a453a', 'Yes', '73aabbaa6d77972606d7626c9683e1fe', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0),
(93, 'Rokib', NULL, NULL, NULL, NULL, 'upazila road, dhunat', '01700560076', NULL, 'rokib@gmail.com', '$2y$10$83geycaMsg93TP8PWgSfAuD3B39KEDDh.V98rDN9swybP.jE2VaI2', NULL, '2022-03-28 19:33:45', '2022-03-28 19:39:14', 0, 0, '7f6ee0417af7a69833c0ae8cf5367477', 'Yes', '2fbc27857fb98339ce8d82d4a9eae08b', 0, 'rokib vegetable store', 'rokib', '07', 'upazila road, dhunat', NULL, NULL, 'এইখানে অনেক কম দামে আলু পাওয়া যায় ।<br>', NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2022-08-26', 0),
(94, 'sohag', NULL, NULL, NULL, NULL, 'Malotinagar highschool field', '01705508276', NULL, 'sohagnazmul12@gmail.com', '$2y$10$Njf.dRrI/0yltN7WFWO1fu96A52RZgcsAwKJTs8CLKdkivM2EpzYq', NULL, '2022-03-30 11:31:59', '2022-03-30 11:43:20', 0, 0, '1bb0252b90154527a20f4163f9878166', 'Yes', 'ce1a8da642f35449048bc4bb393c680b', 0, 'rifat bolod store', 'namul', '099', 'upazila road, dhunat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2022-08-27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `order_number`, `is_read`, `created_at`, `updated_at`) VALUES
(38, 81, '6zPOuUapvX', 1, '2022-03-21 05:50:36', '2022-03-22 07:57:48'),
(39, 83, 'Y11yP94suu', 1, '2022-03-23 07:05:46', '2022-03-23 07:06:38'),
(40, 83, 'ibFnqHoQ0v', 1, '2022-03-25 14:00:38', '2022-03-25 15:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(97, 65, 8, 'সাধারণ', '৳', 'BDT', 0, 150, 0, 'এখানে প্রতি পণ্যের উপর 2% টাকা কাটা হবে ।<br>', 'Free', NULL, NULL, '2022-03-13 09:33:17', '2022-03-20 19:50:40', 1, NULL),
(100, 81, 8, 'সাধারণ', '৳', 'BDT', 0, 150, 0, 'এখানে প্রতি পণ্যের উপর 2% টাকা কাটা হবে ।<br>', 'Free', NULL, NULL, '2022-03-18 10:43:14', '2022-03-20 19:50:40', 1, NULL),
(101, 82, 8, 'সাধারণ', '৳', 'BDT', 0, 150, 0, 'এখানে প্রতি পণ্যের উপর 2% টাকা কাটা হবে ।<br>', 'Free', NULL, NULL, '2022-03-18 10:46:37', '2022-03-20 19:50:40', 1, NULL),
(102, 83, 8, 'সাধারণ', '৳', 'BDT', 0, 150, 0, 'এখানে প্রতি পণ্যের উপর 2% টাকা কাটা হবে ।<br>', 'Free', NULL, NULL, '2022-03-18 10:51:27', '2022-03-20 19:50:40', 1, NULL),
(105, 85, 8, 'সাধারণ', '৳', 'BDT', 0, 150, 0, 'এখানে প্রতি পণ্যের উপর 2% টাকা কাটা হবে ।<br>', 'Free', NULL, NULL, '2022-03-20 21:29:31', '2022-03-20 21:29:31', 1, NULL),
(106, 93, 8, 'সাধারণ', '৳', 'BDT', 0, 150, 0, 'এখানে প্রতি পণ্যের উপর 2% টাকা কাটা হবে ।<br>', 'Free', NULL, NULL, '2022-03-28 19:33:57', '2022-03-28 19:33:57', 1, NULL),
(107, 84, 8, 'সাধারণ', '৳', 'BDT', 0, 150, 0, 'এখানে প্রতি পণ্যের উপর 2% টাকা কাটা হবে ।<br>', 'Free', NULL, NULL, '2022-03-29 04:29:34', '2022-03-29 04:29:34', 1, NULL),
(108, 94, 8, 'সাধারণ', '৳', 'BDT', 0, 150, 0, 'এখানে প্রতি পণ্যের উপর 2% টাকা কাটা হবে ।<br>', 'Free', NULL, NULL, '2022-03-30 11:43:20', '2022-03-30 11:43:20', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `user_id`, `order_id`, `qty`, `price`, `order_number`, `status`) VALUES
(37, 83, 95, 1, 6000, 'C8g6bXbYgU', 'completed'),
(38, 83, 96, 2, 600, 'W5C29zBNXK', 'completed'),
(42, 81, 100, 2, 8160, '6zPOuUapvX', 'completed'),
(43, 83, 106, 1, 1326, 'Y11yP94suu', 'completed'),
(44, 83, 109, 1, 1326, 'ibFnqHoQ0v', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_warning` tinyint(1) NOT NULL DEFAULT 0,
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`) VALUES
(19, 72, 205),
(20, 72, 213),
(21, 72, 216),
(22, 72, 219);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `user_id`, `method`, `acc_email`, `iban`, `country`, `acc_name`, `address`, `swift`, `reference`, `amount`, `fee`, `created_at`, `updated_at`, `status`, `type`) VALUES
(11, 83, 'Bank', NULL, '6565464', NULL, 'sdfdsfds', 'dfdsfds', '26', NULL, 2080.8, 40.8, '2022-03-22 02:12:34', '2022-03-22 19:10:32', 'completed', 'vendor'),
(12, 83, 'Bank', NULL, '103216463126316333', NULL, 'kkkk', 'bogra', NULL, NULL, 510, 10, '2022-03-25 21:49:21', '2022-03-25 21:49:21', 'pending', 'vendor'),
(13, 83, 'Bank', NULL, '103216463126316333', NULL, 'kkkk', 'bogra', NULL, NULL, 408, 8, '2022-03-25 22:04:05', '2022-03-25 22:04:05', 'pending', 'vendor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
