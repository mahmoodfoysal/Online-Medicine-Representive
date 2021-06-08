-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2021 at 05:03 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Super Admin' COMMENT 'Admin|Super Admin',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone_no`, `avatar`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Foysal Mahmood', 'fmahmood081@gmail.com', '$2y$10$g1PuOafPWxIquhqgAE197uu.ge8zUt4bGc4U.y8zM.nU6.GVNWlKq', '01714226177', NULL, 'Super Admin', NULL, '2021-02-11 17:41:35', '2021-02-11 17:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(4, 'ACI Pharmaceuticals', NULL, '1613853990.png', '2021-02-11 17:40:47', '2021-02-20 14:46:30'),
(6, 'Incepta Pharmaceuticals', NULL, '1613852495.png', '2021-02-17 09:34:37', '2021-02-20 14:21:35'),
(7, 'Healthcare Pharmaceuticals', NULL, '1613854054.png', '2021-02-17 09:35:19', '2021-02-20 14:47:34'),
(9, 'Jayson Pharma Ltd', NULL, '1613853749.png', '2021-02-20 00:32:18', '2021-02-20 14:42:29'),
(10, 'Hamdard Bangladesh', NULL, '1613853964.png', '2021-02-20 14:15:27', '2021-02-20 14:46:04'),
(11, 'Acme Pharmaceuticals', NULL, '1613854332.png', '2021-02-20 14:49:07', '2021-02-20 14:52:12'),
(12, 'Square Pharmaceuticals', NULL, '1613854181.png', '2021-02-20 14:49:41', '2021-02-20 14:49:41'),
(13, 'Beximco Pharmaceuticals', NULL, '1613854233.png', '2021-02-20 14:50:34', '2021-02-20 14:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `order_id`, `ip_address`, `product_quantity`, `created_at`, `updated_at`) VALUES
(60, 41, NULL, NULL, '127.0.0.1', 1, '2021-02-21 02:32:06', '2021-02-21 02:32:06'),
(61, 39, NULL, NULL, '127.0.0.1', 1, '2021-02-21 02:32:43', '2021-02-21 02:32:43'),
(62, 21, NULL, NULL, '127.0.0.1', 1, '2021-02-21 02:33:03', '2021-02-21 02:33:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Eye Drops', NULL, '1613850879.png', NULL, '2021-02-11 17:39:18', '2021-02-20 13:54:40'),
(2, 'Loteprednol', NULL, '1613560833.png', 1, '2021-02-11 17:39:34', '2021-02-17 09:06:08'),
(7, 'Medicine', NULL, '1613851230.png', NULL, '2021-02-10 07:54:24', '2021-02-20 14:00:30'),
(8, 'Montelukast', NULL, '1613561199.png', 7, '2021-02-17 05:26:39', '2021-02-17 05:33:57'),
(10, 'Azithromycin', NULL, '1613573843.png', 7, '2021-02-17 08:57:23', '2021-02-17 08:57:23'),
(11, 'Astaxanthin', NULL, '1613573978.png', 7, '2021-02-17 08:59:38', '2021-02-17 08:59:38'),
(14, 'Vaccine', NULL, '1613850311.png', NULL, '2021-02-17 09:14:27', '2021-02-20 13:45:11'),
(19, 'Child Vaccine', NULL, '1613576257.png', 14, '2021-02-17 09:37:37', '2021-02-17 09:37:37'),
(20, 'All Vaccine', NULL, '1613576289.png', 14, '2021-02-17 09:38:09', '2021-02-17 09:38:20'),
(25, 'Pseudoephedrine', NULL, '1613801500.png', 7, '2021-02-20 00:11:40', '2021-02-20 00:11:40'),
(26, 'Neem', NULL, '1613802011.png', 7, '2021-02-20 00:20:11', '2021-02-20 00:20:11'),
(27, 'Chlorpheniramine', NULL, '1613802899.png', 7, '2021-02-20 00:34:59', '2021-02-20 00:34:59'),
(28, 'Aceclofenac', NULL, '1613803217.png', 7, '2021-02-20 00:40:17', '2021-02-20 00:40:17'),
(29, 'Metronidazole', NULL, '1613803534.png', 7, '2021-02-20 00:45:34', '2021-02-20 00:45:34'),
(30, 'Dipivoxil', NULL, '1613803778.png', 7, '2021-02-20 00:49:38', '2021-02-20 00:49:38'),
(31, 'Paracetamol', NULL, '1613814781.png', 7, '2021-02-20 03:53:02', '2021-02-20 03:53:02'),
(32, 'Skin and Hair', NULL, '1613851359.png', NULL, '2021-02-20 14:02:39', '2021-02-20 14:02:39'),
(33, 'Cetirizine Hydrochloride', NULL, '1613851473.png', 7, '2021-02-20 14:04:33', '2021-02-20 14:04:33'),
(34, 'Injectable', NULL, '1613893015.png', NULL, '2021-02-21 01:36:55', '2021-02-21 01:36:55'),
(35, 'Saline', NULL, '1613893237.png', 34, '2021-02-21 01:40:37', '2021-02-21 01:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `created_at`, `updated_at`) VALUES
(3, 'Khulna Sadar', 5, '2021-02-11 17:38:31', '2021-02-11 17:38:31'),
(5, 'Dhaka', 2, '2021-02-11 17:38:40', '2021-02-11 17:38:40'),
(7, 'Bagerhat', 5, '2021-02-11 17:38:52', '2021-02-11 17:38:52'),
(8, 'Rajshahi Metro', 3, '2021-02-04 13:45:02', '2021-02-10 10:33:27'),
(9, 'Dinajpur', 9, '2021-02-20 14:13:01', '2021-02-20 14:13:01'),
(10, 'Rangpur', 9, '2021-02-20 14:13:22', '2021-02-20 14:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `priority`, `created_at`, `updated_at`) VALUES
(2, 'Dhaka', 1, '2021-02-11 17:36:40', '2021-02-11 17:36:40'),
(3, 'Rajshahi', 2, '2021-02-11 17:36:58', '2021-02-11 17:36:58'),
(4, 'Mymensingh', 8, '2021-02-11 17:37:09', '2021-02-11 17:37:09'),
(5, 'Khulna', 4, '2021-02-11 17:37:20', '2021-02-11 17:37:20'),
(6, 'Barisal', 5, '2021-02-11 17:37:34', '2021-02-11 17:37:34'),
(7, 'Chittagong', 3, '2021-02-11 17:37:52', '2021-02-11 17:37:52'),
(8, 'Sylhet', 6, '2021-02-11 17:38:02', '2021-02-11 17:38:02'),
(9, 'Rangpur', 7, '2021-02-11 17:38:12', '2021-02-11 17:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2020_10_18_100000_create_password_resets_table', 1),
(4, '2020_11_05_165732_create_products_table', 2),
(5, '2020_11_07_014906_create_categories_table', 2),
(6, '2020_11_08_015040_create_brands_table', 2),
(8, '2020_11_16_020211_create_product_images_table', 2),
(10, '2020_10_15_000000_create_users_table', 3),
(11, '2020_11_22_115850_create_divisions_table', 4),
(12, '2020_11_22_115908_create_districts_table', 4),
(14, '2021_01_10_034133_create_carts_table', 5),
(15, '2021_01_21_083714_create_settings_table', 6),
(16, '2021_02_01_085245_create_payments_table', 7),
(17, '2021_01_08_033110_create_orders_table', 8),
(18, '2020_11_15_015128_create_admins_table', 9),
(19, '2021_02_07_043826_create_sliders_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `is_seen_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_charge` int(11) NOT NULL DEFAULT 15,
  `custom_discount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_id`, `ip_address`, `name`, `phone_no`, `shipping_address`, `email`, `message`, `is_paid`, `is_completed`, `is_seen_by_admin`, `transaction_id`, `created_at`, `updated_at`, `shipping_charge`, `custom_discount`) VALUES
(19, 8, 2, '127.0.0.1', 'Foysal Mahmood', '01714226177', '63, bilsimla', 'foysal@user.com', NULL, 0, 0, 1, '160201033', '2021-02-10 11:00:03', '2021-02-10 11:02:27', 20, 100),
(20, 8, 2, '127.0.0.1', 'Foysal Mahmood', '01714226177', '63, bilsimla', 'foysal@user.com', NULL, 0, 0, 1, '1000200222', '2021-02-10 14:55:41', '2021-02-10 14:55:53', 15, 0),
(21, 8, 1, '127.0.0.1', 'Foysal Mahmood', '01714226177', '63, bilsimla, Rajshahi', 'foysal@user.com', 'This is message', 1, 1, 1, NULL, '2021-02-10 16:16:25', '2021-02-10 16:18:00', 15, 0),
(22, 42, 2, '127.0.0.1', 'Tanvir Omit', '01711266665', '89jhdba', 'omit@user.com', NULL, 0, 0, 1, '1255522', '2021-02-10 16:51:37', '2021-02-10 16:54:21', 15, 0),
(23, 43, 3, '127.0.0.1', 'Jarif hasan', '125585885', '63, Rajshahi', 'jarifsaad@user.com', 'Hi thiis is Jarif.', 0, 0, 1, '14714789', '2021-02-11 09:11:23', '2021-02-11 09:14:29', 20, 20),
(24, 8, 2, '127.0.0.1', 'Foysal Mahmood', '01714226177', '63, bilsimla', 'foysal@user.com', 'adfafaf', 0, 0, 1, '155525522', '2021-02-11 12:53:15', '2021-02-11 12:53:25', 15, 0),
(25, 8, 3, '127.0.0.1', 'Foysal Mahmood', '01714226177', '63, bilsimla', 'foysal@user.com', 'ff', 0, 0, 1, '12225', '2021-02-14 10:58:44', '2021-02-14 11:46:08', 50, 50),
(26, 8, 1, '127.0.0.1', 'Foysal Mahmood', '01714226177', '63, bilsimla', 'foysal@user.com', NULL, 0, 0, 1, NULL, '2021-02-14 11:02:26', '2021-02-14 13:31:44', 10, 0),
(27, 43, 2, '127.0.0.1', 'Jarif hasan', '125585885', '63, Rajshahi.', 'jarifsaad@user.com', 'g', 0, 0, 1, '123', '2021-02-14 11:57:48', '2021-02-14 11:58:01', 15, 0),
(28, 43, 1, '127.0.0.1', 'Jarif hasan', '125585885', '63, Rajshahi.', 'jarifsaad@user.com', NULL, 0, 0, 1, NULL, '2021-02-14 12:59:32', '2021-02-14 13:30:17', 10, 0),
(29, 43, 3, '127.0.0.1', 'Jarif hasan', '125585885', '63, Rajshahi.', 'jarifsaad@user.com', 'Please sent my product as soon as possible...', 0, 0, 1, '45', '2021-02-14 13:51:33', '2021-02-14 13:51:53', 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `created_at` timestamp NULL DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`created_at`, `email`, `token`) VALUES
('2021-02-04 13:25:49', '', ''),
('2021-02-05 14:30:22', '', ''),
('2021-02-11 12:35:57', 'fmahmood081@gmail.com', '$2y$10$TLZP5EjHtiMu6h7glHYaDu5gLvb7lvLfplhiBb/SVsKE6oEw8bh3e');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(4) NOT NULL DEFAULT 1,
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Payment No',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'agent|personal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `image`, `priority`, `short_name`, `no`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Cash In', 'cash_in.jpg', 1, 'cash_in', NULL, NULL, '2021-02-11 17:33:37', '2021-02-11 17:33:37'),
(2, 'Bkash', 'bkash.jpg', 2, 'bkash', '01714226177', 'personal', '2021-02-11 17:33:49', '2021-02-11 17:33:49'),
(3, 'Rocket', 'rocket.jpg', 3, 'rocket', '01714226177', 'personal', '2021-02-11 17:34:00', '2021-02-11 17:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `offer_price` int(11) DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `title`, `description`, `slug`, `quantity`, `price`, `status`, `offer_price`, `admin_id`, `created_at`, `updated_at`) VALUES
(21, 27, 9, 'Histacin', 'Indicated mainly in allergic conditions including urticaria, sensitivity reactions, angioneurotic oedema, seasonal hay fever, vasomotor rhinitis, cough, common cold, motion sickness.', 'histacin', 500, 145, 0, NULL, 1, '2021-02-20 00:38:30', '2021-02-20 00:38:30'),
(28, 26, 10, 'Safi 100ml', 'Blood impurities\r\n#Skin diseases (like-Acne, pimple, boil, skin eruption, psoriasis, vitiligo, eczemaheat rash, itching, etc)\r\n#Constipation\r\n#Piles\r\n#General lassitude\r\n#Hypercholesterolaemia\r\nBurning sensation during urinationv Immune deficiency', 'safi-100ml', 12, 470, 0, NULL, 1, '2021-02-21 01:24:07', '2021-02-21 01:24:07'),
(29, 25, 12, 'Tusca Plus', 'This is indicated for the symptomatic relief of upper respiratory tract disorders accompanied by productive cough which benefits from the administration of a nasal decongestant, a histamine H1 receptor antagonist and an expectorant combination.', 'tusca-plus', 12, 740, 0, NULL, 1, '2021-02-21 01:26:59', '2021-02-21 01:26:59'),
(31, 35, 12, 'Amodis 500mg (Metronidazole)', 'Metronidazole is indicated in the treatment of following diseases: The prevention of post-operative infections due to anaerobic bacteria (particularly species of bacteroides and anaerobic streptococci). The treatment of septicaemia, bacteraemia, peritonitis, brain abscess, pelvic abscess, pelvic cellulitis and post-operative wound infections caused by anaerobes. In the treatment of urogenital trichomoniasis.', 'amodis-500mg', 12, 640, 0, NULL, 1, '2021-02-21 01:46:38', '2021-02-21 02:08:29'),
(33, 35, 12, 'Iventi 400mg (Moxifloxacin)', 'Moxifloxacin infusion is indicated for treating following infections in adults >18 years of age caused by designated, susceptible bacteria. Acute Bacterial Sinusitis Acute Bacterial Exacerbation of Chronic Bronchitis Community Acquired Pneumonia', 'iventi-400mg-moxifloxacin', 1, 350, 0, NULL, 1, '2021-02-21 01:57:52', '2021-02-21 01:57:52'),
(35, 35, 12, 'Ciprocin 200mg (Ciprofloxacin)', 'Ciprofloxacin is indicated for the treatment of Respiratory Tract Infections,Urinary tract infections, Pelvic Inflammatory Diseases, Infectious Diarrhea (Shigella dysenteriae, Vibrio cholera), Typhoid fever, Intra-abdominal infections, Prostatitis, Skin and Soft Tissue Infections, Bone and Joint Infections, Gonorrhea, Neutropenic patients with fever due to bacterial infection, Meningitis, Surgical prophylaxis.', 'ciprocin-200mg-ciprofloxacin', 10, 1400, 0, NULL, 1, '2021-02-21 02:06:56', '2021-02-21 02:06:56'),
(36, 28, 12, 'Flexi 100mg', 'Aceclofenac is indicated for the relief of pain and inflammation in osteoarthritis, rheumatoid arthritis, ankylosing spondylitis, toothache, trauma and lumbago.', 'flexi-100mg', 100, 500, 0, NULL, 1, '2021-02-21 02:10:51', '2021-02-21 02:10:51'),
(37, 10, 12, 'Zimax 500mg', 'Azithromycin is indicated for infections (caused by susceptible organisms) in lower respiratory tract infections including bronchitis and pneumonia, in upper respiratory tract infections including sinusitis and pharyngitis/tonsillitis, in otitis media, and in skin and soft tissue infections. In sexually transmitted diseases in men and women, Azithromycin is indicated in the treatment of non-gonococcal urethritis and cervicitis due to Chlamydia trachomatis.', 'zimax-500mg', 18, 632, 0, NULL, 1, '2021-02-21 02:14:09', '2021-02-21 02:14:09'),
(38, 30, 12, 'Antiva 10mg', 'Adefovir Dipivoxil is indicated for the treatment of chronic hepatitis B in adults with evidence of active viral replication and either evidence of persistent elevations in serum aminotransferases (ALT or AST) or histologically active disease.', 'antiva-10mg', 10, 352, 0, NULL, 1, '2021-02-21 02:17:41', '2021-02-21 02:17:41'),
(39, 31, 13, 'Napa Extra 500mg', 'The indications of Paracetamol & Caffeine are Headache, Migraine, Toothache, Neuralgia, Feverishness, Period pain, Sore throat, Backache, Helps reduce temperature, Aches and pain of colds and flu', 'napa-extra-500mg', 240, 599, 0, NULL, 1, '2021-02-21 02:20:04', '2021-02-21 02:20:04'),
(40, 8, 11, 'Monas 10mg', 'Montelukast is a leukotriene receptor antagonist indicated for:\r\nProphylaxis and chronic treatment of asthma in patients 12 months of age and older.\r\nAcute prevention of Exercise-Induced Bronchoconstriction (EIB) in patients 6 years of age and older.\r\nRelief of symptoms of Allergic Rhinitis (AR): Seasonal Allergic Rhinitis (SAR) in patients 2 years of age and older, and perennial allergic rhinitis (PAR) in patients 6 months of age and older.', 'monas-10mg', 30, 480, 0, NULL, 1, '2021-02-21 02:21:57', '2021-02-21 02:21:57'),
(41, 33, 12, 'Alatrol 10mg', 'It is indicated for the relief of symptoms associated with seasonal & perennial allergic rhinitis. It is also indicated for the treatment of the uncomplicated skin manifestations of chronic idiopathic urticaria and allergen induced asthma.', 'alatrol-10mg', 451, 150, 0, NULL, 1, '2021-02-21 02:25:19', '2021-02-21 02:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(43, 21, '16138031100.jpg', '2021-02-20 00:38:30', '2021-02-20 00:38:30'),
(53, 28, '16138922470.jpg', '2021-02-21 01:24:07', '2021-02-21 01:24:07'),
(54, 28, '16138922471.jpg', '2021-02-21 01:24:07', '2021-02-21 01:24:07'),
(55, 29, '16138924190.jpg', '2021-02-21 01:26:59', '2021-02-21 01:26:59'),
(57, 31, '16138935980.jpg', '2021-02-21 01:46:38', '2021-02-21 01:46:38'),
(59, 33, '16138942720.jpg', '2021-02-21 01:57:52', '2021-02-21 01:57:52'),
(61, 35, '16138948160.jpg', '2021-02-21 02:06:56', '2021-02-21 02:06:56'),
(62, 36, '16138950510.jpg', '2021-02-21 02:10:51', '2021-02-21 02:10:51'),
(63, 37, '16138952500.jpg', '2021-02-21 02:14:10', '2021-02-21 02:14:10'),
(64, 38, '16138954610.jpg', '2021-02-21 02:17:42', '2021-02-21 02:17:42'),
(65, 39, '16138956040.jpg', '2021-02-21 02:20:04', '2021-02-21 02:20:04'),
(66, 39, '16138956041.jpg', '2021-02-21 02:20:04', '2021-02-21 02:20:04'),
(67, 39, '16138956042.jpg', '2021-02-21 02:20:04', '2021-02-21 02:20:04'),
(68, 39, '16138956043.jpg', '2021-02-21 02:20:04', '2021-02-21 02:20:04'),
(69, 40, '16138957170.jpg', '2021-02-21 02:21:57', '2021-02-21 02:21:57'),
(70, 40, '16138957171.jpg', '2021-02-21 02:21:57', '2021-02-21 02:21:57'),
(71, 40, '16138957172.jpg', '2021-02-21 02:21:57', '2021-02-21 02:21:57'),
(72, 40, '16138957173.jpg', '2021-02-21 02:21:57', '2021-02-21 02:21:57'),
(73, 41, '16138959190.jpg', '2021-02-21 02:25:19', '2021-02-21 02:25:19'),
(74, 41, '16138959191.jpg', '2021-02-21 02:25:19', '2021-02-21 02:25:19'),
(75, 41, '16138959202.jpg', '2021-02-21 02:25:20', '2021-02-21 02:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `address`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(1, 'test@example.com', '01714226177', '63, New Bilsimla, Rajshahi', 15, '2021-02-11 17:28:54', '2021-02-11 17:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `button_text`, `button_link`, `priority`, `created_at`, `updated_at`) VALUES
(10, 'Online Pharmacy Shop Service (Medico)', '1613848659.png', NULL, NULL, 2, '2021-02-20 13:17:40', '2021-02-20 13:28:43'),
(11, 'medico.com', '1613848766.png', NULL, NULL, 1, '2021-02-20 13:19:26', '2021-02-20 13:22:01'),
(12, 'Online Pharmacy Shop Service (Medico)', '1613848995.png', NULL, NULL, 10, '2021-02-20 13:23:15', '2021-02-20 13:23:15'),
(13, 'medico.com', '1613849047.png', NULL, NULL, 3, '2021-02-20 13:24:07', '2021-02-20 13:25:15'),
(14, 'medico.com', '1613849224.png', NULL, NULL, 10, '2021-02-20 13:27:05', '2021-02-20 13:27:05'),
(15, 'medico.com', '1613849234.png', NULL, NULL, 10, '2021-02-20 13:27:15', '2021-02-20 13:27:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL COMMENT 'Division Table ID',
  `district_id` int(10) UNSIGNED NOT NULL COMMENT 'District Table ID',
  `status` int(11) DEFAULT 1 COMMENT '0=Inactive|1=Active|2=Ban',
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `phone_no`, `email`, `password`, `street_address`, `division_id`, `district_id`, `status`, `ip_address`, `avatar`, `shipping_address`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'Foysal', 'Mahmood', 'fmahmood', '01714226177', 'foysal@user.com', '$2y$10$g1PuOafPWxIquhqgAE197uu.ge8zUt4bGc4U.y8zM.nU6.GVNWlKq', 'Rajshahi, Bangladesh', 3, 5, 1, '127.0.0.1', NULL, '63, bilsimla', '8dcB2JEgyH4KhKl8aYX6Xw0LOmbOLQKYIQqgmeUWRoLptSRr6jpmSjdzIhq9', '2021-02-04 13:43:20', '2021-02-04 13:43:20'),
(33, 'mahmid', 'khan', 'mahmidkhan', '45689', 'mahmid@gmail.com', '$2y$10$lQm28TrFu0J4nhY2wOFpvOe8aU412Hl88QtNlg2ByTdHW75yV3aTG', '55 12', 3, 8, 1, '127.0.0.1', NULL, NULL, 'fe2GZWn2K9EGYFlotHLV2k8vk0YPwqqfaUCaSMYYe5ZSJhwgEtMqUGyFb2uV', '2021-02-04 16:58:12', '2021-02-04 16:58:12'),
(39, 'mehzad', 'khan', 'mehzadkhan', '2323', 'mehzad11@gmail.com', '$2y$10$E7lEdaT1SG6Z/uSA59EHj.Qvjeeygjunv7lmYSWmldo/SIZVEdfcO', '55 dhaka', 3, 8, 1, '127.0.0.1', NULL, NULL, 'af1cRQjChZgQ0SrM5Y3LbNFSlmvNrazqjYoiRIHZUxibnAD87wrmCJqzpL30', '2021-02-05 15:35:03', '2021-02-05 15:35:03'),
(42, 'Tanvir', 'Omit', 'tanviromit', '01711266665', 'omit@user.com', '$2y$10$gdgApq7H.30g23Aog/7JrOkJdsmsILDYTJA08w9zzBbYS2k/OsVAq', 'Rajshahi, Bangladesh', 3, 8, 1, '127.0.0.1', NULL, NULL, 'VSpP4E9kImccWD6clwoql4VIl1rHg6T0h2zN74uJrUzbH3lgV7UpycRHA1VE', '2021-02-08 14:15:48', '2021-02-08 14:15:48'),
(43, 'Jarif', 'hasan', 'jarifhasan', '125585885', 'jarifsaad@user.com', '$2y$10$DQjeUKFGyCoN6foVmq3urOATXT1xkp3YLyvWwawO9VUENRI1jSRBW', '63, Rajshahi', 3, 8, 1, '127.0.0.1', NULL, '63, Rajshahi.', 'pzbe6nYIBk4hnS5Qdademo7KwLMeCw5ZR8xBAJlEwlFIdz2nMrYL4XcR8D7N', '2021-02-11 09:08:45', '2021-02-11 11:12:26');

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
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
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
  ADD KEY `orders_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_short_name_unique` (`short_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_phone_no_unique` (`phone_no`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
