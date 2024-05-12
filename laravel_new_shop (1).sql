-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2024 at 07:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_new_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_slug` varchar(255) NOT NULL,
  `brand_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `category_id`, `brand_name`, `brand_slug`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'test', 'test', 1, NULL, NULL),
(2, 'Select Category', 'Muhammad sami', 'Muhammad-sami', 1, '2024-04-20 22:02:50', '2024-04-20 22:02:50'),
(3, '39', 'thora', 'thora', 1, '2024-04-20 22:15:54', '2024-04-20 22:15:54'),
(4, '42', 'small test', 'small-test', 0, '2024-04-20 22:22:23', '2024-04-20 22:22:23'),
(5, 'Select Category', 'ff', 'ff', 1, '2024-04-20 22:39:29', '2024-04-20 22:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'clothes', 'clothes', NULL, 1, '2024-01-28 01:49:45', '2024-01-28 01:49:45'),
(2, 'sdffds', 'fdfd', NULL, 1, '2024-01-28 02:15:22', '2024-01-28 02:15:22'),
(3, 'males shirts', 'males-shirts', NULL, 1, '2024-01-28 03:17:55', '2024-01-28 03:17:55'),
(4, 'dfasfasdf', 'dfasfasdf', NULL, 1, '2024-01-28 03:18:44', '2024-04-20 03:15:24'),
(5, 'this', 'this', NULL, 1, '2024-01-28 03:38:10', '2024-01-28 03:38:10'),
(6, 'phone', 'phone', NULL, 1, '2024-01-28 04:00:43', '2024-01-28 04:00:43'),
(7, 'whennn', 'whennn', NULL, 1, '2024-01-28 04:00:49', '2024-04-20 03:13:13'),
(8, 'which', 'which', NULL, 1, '2024-01-28 04:00:54', '2024-01-28 04:00:54'),
(9, 'would', 'would', NULL, 1, '2024-01-28 04:01:00', '2024-01-28 04:01:00'),
(10, 'which is', 'which-is', NULL, 1, '2024-01-28 04:01:21', '2024-01-28 04:01:21'),
(11, 'whichcould', 'whichcould', NULL, 1, '2024-01-28 04:01:33', '2024-01-28 04:01:33'),
(12, 'Jessy Gislason', 'quae-architecto-inventore-voluptatibus-id-nobis', NULL, 0, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(13, 'Dr. Kennedi Heathcote', 'doloremque-ea-repellat-eligendi-fugiat-deleniti', NULL, 1, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(15, 'Ephraim Rodriguez', 'animi-nesciunt-labore-neque-velit-enim-at-dolorum', NULL, 0, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(17, 'Prof. Domenica Ritchie Jr.', 'eveniet-vel-ratione-nemo-alias-ea-maiores-saepe', NULL, 1, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(18, 'Prof. Helena Terry', 'eos-rerum-reprehenderit-aut-blanditiis-tenetur-cumque-hic', NULL, 0, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(19, 'jamous watch', 'jamous-watch', NULL, 1, '2024-01-28 04:14:35', '2024-04-20 03:34:03'),
(20, 'Dr. Rosina Schmitt PhD', 'magnam-ratione-nobis-reprehenderit-et-pariatur', NULL, 0, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(21, 'Magdalena Rau', 'quas-id-inventore-quia-et-sint-modi-id-et', NULL, 1, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(22, 'Nichole Herman', 'temporibus-deleniti-numquam-dolorem-tempore-debitis-cupiditate-esse-necessitatibus', NULL, 0, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(23, 'Emelia Kuphal', 'ab-cum-sed-sed-deserunt-assumenda-autem-fuga-doloribus', NULL, 1, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(24, 'Armando Fay', 'dolorum-dicta-nulla-incidunt-velit-eum-minus-error-officia', NULL, 0, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(25, 'Kamron Schultz', 'beatae-ad-corporis-similique-labore-perspiciatis-beatae-quisquam', NULL, 1, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(26, 'Samara Monahan', 'earum-asperiores-est-earum-dolore-sit-est-consequatur', NULL, 1, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(27, 'Kaia Lind', 'ut-molestiae-omnis-ratione-culpa-provident', NULL, 1, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(28, 'Mr. Skye Mueller', 'nemo-odit-assumenda-dolorum-quam-qui', NULL, 0, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(29, 'Merle Steuber', 'veritatis-nam-assumenda-laudantium-rerum-alias', NULL, 1, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(30, 'Dr. Vinnie Terry II', 'atque-ratione-et-incidunt-quos', NULL, 0, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(31, 'Cloyd Yost Sr.', 'minima-expedita-suscipit-omnis-aut-porro-quia-ea-ipsa', NULL, 0, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(32, 'Brain Kemmer', 'sunt-velit-dolorem-iure-et', NULL, 0, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(33, 'Kyla Hayes', 'aut-enim-molestias-qui-fugit-animi', NULL, 1, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(34, 'Prof. Omer Price', 'minus-incidunt-magnam-ullam-est', NULL, 0, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(35, 'Hazel Cassin', 'perferendis-est-ut-quisquam-dolorem-cumque-fugiat-voluptatem', NULL, 0, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(36, 'Mr. Hobart Sporer', 'tempora-dolor-quia-nostrum-qui-qui', NULL, 1, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(37, 'Ms. Layla Wolff PhD', 'architecto-occaecati-qui-et-dicta-labore', NULL, 1, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(38, 'Francis Smitham', 'sed-consequatur-deserunt-repellat-tempore', NULL, 1, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(39, 'Thora Kling', 'iusto-animi-assumenda-sunt-vero-deserunt-accusantium-dicta', NULL, 0, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(40, 'Dean Spencer', 'debitis-tempora-sunt-esse-rerum', NULL, 0, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(41, 'Haylie Satterfield', 'sequi-ut-accusamus-possimus-et-ut-iusto-sunt', NULL, 0, '2024-01-28 04:14:35', '2024-01-28 04:14:35'),
(42, 'admin', 'admin', NULL, 1, '2024-02-20 06:03:13', '2024-02-20 06:03:13'),
(43, 'shahzai bimt a', 'shahzai-bimt-a', NULL, 1, '2024-02-20 06:06:49', '2024-04-20 03:28:30'),
(48, 'test-categoruy', 'test-categoruy', NULL, 1, '2024-04-20 20:50:15', '2024-04-20 20:50:15'),
(49, 'fdsadsfafdsafdsafa', 'fdsadsfafdsafdsafa', NULL, 1, '2024-04-20 21:14:13', '2024-04-20 21:14:13'),
(50, 'fdsa', 'fdsa', NULL, 1, '2024-04-20 21:14:31', '2024-04-20 21:14:31'),
(51, 'fdsafdsa', 'fdsafdsa', NULL, 1, '2024-04-20 21:15:27', '2024-04-20 21:15:27'),
(52, 'fdsfdsafdsfdsadsa', 'fdsfdsafdsfdsadsa', NULL, 1, '2024-04-20 21:15:34', '2024-04-20 21:15:34'),
(53, 'fdsafjgdsfkdsabfidshflkjdsagfdsaigf', 'fdsafjgdsfkdsabfidshflkjdsagfdsaigf', NULL, 1, '2024-04-20 21:15:40', '2024-04-20 21:15:40'),
(54, 'fdsadsa', 'fdsadsa', NULL, 1, '2024-04-20 21:15:46', '2024-04-20 21:15:46'),
(55, 'fdsds', 'fdsds', NULL, 1, '2024-04-20 21:15:51', '2024-04-20 21:15:51'),
(56, 'shahzaib imtiaz fsafdsadsfafdsa', 'shahzaib-imtiaz-fsafdsadsfafdsa', NULL, 1, '2024-04-20 21:35:24', '2024-04-20 22:30:09'),
(57, 'pakistan', 'pakistan', NULL, 1, '2024-05-01 07:39:52', '2024-05-01 07:39:52'),
(58, '64e6', '64e6', NULL, 1, '2024-05-01 07:41:07', '2024-05-01 07:41:07'),
(59, '23324sdf3', '23324sdf3', NULL, 1, '2024-05-01 07:42:56', '2024-05-01 07:42:56'),
(60, 'sd343dfd', 'sd343dfd', NULL, 1, '2024-05-01 07:45:55', '2024-05-01 07:45:55'),
(61, 'este', 'este', NULL, 1, '2024-05-01 07:47:13', '2024-05-01 07:47:13'),
(62, 'testete', 'testete', NULL, 1, '2024-05-01 07:47:35', '2024-05-01 07:47:35'),
(63, 'sdfasdfasdfafasdfqwe23123', 'sdfasdfasdfafasdfqwe23123', NULL, 1, '2024-05-01 07:47:54', '2024-05-01 07:47:54'),
(64, 'this_si _sdf', 'this_si-_sdf', NULL, 1, '2024-05-01 07:48:23', '2024-05-01 07:48:23'),
(65, 'ddfas3434', 'ddfas3434', NULL, 1, '2024-05-01 07:48:46', '2024-05-01 07:48:46'),
(66, 'sdjhfasih2e129u', 'sdjhfasih2e129u', NULL, 1, '2024-05-01 07:49:25', '2024-05-01 07:49:25'),
(67, 'sdfas3', 'sdfas3', NULL, 1, '2024-05-01 07:50:25', '2024-05-01 07:50:25'),
(68, 'sdf sdl flsfmqwpm', 'sdf-sdl-flsfmqwpm', NULL, 1, '2024-05-01 07:50:46', '2024-05-01 07:50:46'),
(69, 'sdf33-', 'sdf33-', NULL, 1, '2024-05-01 07:59:25', '2024-05-01 07:59:25'),
(70, 'sdfds43423', 'sdfds43423', NULL, 1, '2024-05-01 08:07:58', '2024-05-01 08:07:58'),
(71, 'test', 'test', NULL, 1, '2024-05-02 21:50:07', '2024-05-02 21:50:07'),
(72, 'sdf3erd', 'sdf3erd', NULL, 1, '2024-05-02 21:53:03', '2024-05-02 21:53:03'),
(73, 'stest', 'stest', NULL, 1, '2024-05-02 21:54:06', '2024-05-02 21:54:06'),
(74, 'sdfas', 'sdfas', NULL, 1, '2024-05-02 21:55:05', '2024-05-02 21:55:05'),
(75, 'sdfsdaasdf', 'sdfsdaasdf', NULL, 1, '2024-05-02 21:55:27', '2024-05-02 21:55:27'),
(76, 'etete', 'etete', NULL, 1, '2024-05-02 21:56:04', '2024-05-02 21:56:04'),
(77, 'nmbkb', 'nmbkb', NULL, 1, '2024-05-02 21:58:22', '2024-05-02 21:58:22'),
(78, 'dfsafdf', 'dfsafdf', NULL, 1, '2024-05-02 21:59:22', '2024-05-02 21:59:22'),
(79, 'dsfdfs', 'dsfdfs', NULL, 1, '2024-05-02 22:00:28', '2024-05-02 22:00:28'),
(80, 'testet', 'testet', NULL, 1, '2024-05-02 22:03:18', '2024-05-02 22:03:18'),
(81, 'SDFSDDFSDA', 'SDFSDDFSDA', NULL, 1, '2024-05-02 22:05:21', '2024-05-02 22:05:21'),
(82, 'dasfasasd', 'dasfasasd', NULL, 1, '2024-05-02 22:07:08', '2024-05-02 22:07:08'),
(83, 'fasdfasdfnasdf', 'fasdfasdfnasdf', '83.jpg', 1, '2024-05-02 22:11:00', '2024-05-02 22:11:00'),
(84, 'testest', 'testest', NULL, 1, '2024-05-03 13:21:57', '2024-05-03 13:21:57'),
(85, 'testestasdsdfafa', 'testestasdsdfafa', NULL, 1, '2024-05-03 13:22:29', '2024-05-03 13:22:29'),
(86, 'testestasdsdfafafd', 'testestasdsdfafafd', NULL, 1, '2024-05-03 13:23:01', '2024-05-03 13:23:01'),
(87, 'nsdlfsdfsdnfk', 'nsdlfsdfsdnfk', NULL, 1, '2024-05-03 13:23:33', '2024-05-03 13:23:33'),
(88, 'sdjnfdsnfdslnnfjsdnfjlndsj', 'sdjnfdsnfdslnnfjsdnfjlndsj', NULL, 1, '2024-05-03 13:24:56', '2024-05-03 13:24:56'),
(89, 'dfsfds', 'dfsfds', NULL, 1, '2024-05-03 13:39:40', '2024-05-03 13:39:40'),
(90, 'khyijghgg', 'khyijghgg', NULL, 1, '2024-05-03 13:40:22', '2024-05-03 13:40:22'),
(91, 'sdfbsdjfbasdjfbsi', 'sdfbsdjfbasdjfbsi', NULL, 1, '2024-05-03 13:42:38', '2024-05-03 13:42:38'),
(92, 'xcvxcxcv', 'xcvxcxcv', '92.png', 1, '2024-05-03 13:43:22', '2024-05-03 13:43:22'),
(93, 'shahzaib category for shahzaib', 'shahzaib-category-for-shahzaib', '93.png', 0, '2024-05-05 00:38:49', '2024-05-10 12:35:47'),
(94, 'testintggs', 'testintggs', NULL, 0, '2024-05-10 12:38:04', '2024-05-10 12:38:04'),
(95, 'bdfsdkfdsjf', 'bdfsdkfdsjf', NULL, 1, '2024-05-10 12:40:58', '2024-05-10 12:40:58'),
(96, 'd fsdlnflsd', 'd-fsdlnflsd', NULL, 1, '2024-05-10 12:42:24', '2024-05-10 12:42:24'),
(97, 'dbfkdsbfkds', 'dbfkdsbfkds', NULL, 1, '2024-05-10 12:43:28', '2024-05-10 12:43:28'),
(98, 'sdfsdlnfsdjklfbkldsnf', 'sdfsdlnfsdjklfbkldsnf', NULL, 1, '2024-05-10 12:44:20', '2024-05-10 12:44:20'),
(99, 'sdlnfjldnsfn', 'sdfsdlnfsdjklfbkldsnfsfdsf', '99-1715364389.jpg', 0, '2024-05-10 12:45:52', '2024-05-10 13:06:29');

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
(5, '2024_01_27_141631_create_categories_table', 2),
(6, '2024_02_20_125830_sub_categories', 3),
(7, '2024_04_20_132345_create_brands', 4),
(8, '2024_05_01_111436_create_temp__image_table', 5),
(9, '2024_05_01_122011_create_temp_image_table', 6);

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

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Parent_category_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `Parent_category_id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '7', 'strer', 'strer', NULL, 0, '2024-02-20 08:13:31', '2024-02-20 08:13:31'),
(2, '7', 'strerd', 'strerd', NULL, 0, '2024-02-20 08:15:15', '2024-02-20 08:15:15'),
(3, '5', 'testett', 'testett', NULL, 0, '2024-02-20 08:17:09', '2024-02-20 08:17:09'),
(4, '5', 'testett', 'testett', NULL, 0, '2024-02-20 08:17:11', '2024-02-20 08:17:11'),
(5, '5', 'testett', 'testett', NULL, 0, '2024-02-20 08:17:11', '2024-02-20 08:17:11'),
(6, '5', 'testett', 'testett', NULL, 0, '2024-02-20 08:17:12', '2024-02-20 08:17:12'),
(7, '5', 'testett', 'testett', NULL, 0, '2024-02-20 08:17:12', '2024-02-20 08:17:12'),
(8, '5', 'testett', 'testett', NULL, 0, '2024-02-20 08:17:13', '2024-02-20 08:17:13'),
(9, '5', 'testett', 'testett', NULL, 0, '2024-02-20 08:17:13', '2024-02-20 08:17:13'),
(10, '5', 'testett', 'testett', NULL, 0, '2024-02-20 08:17:14', '2024-02-20 08:17:14'),
(11, '5', 'testett', 'testett', NULL, 0, '2024-02-20 08:17:14', '2024-02-20 08:17:14'),
(12, '5', 'testett', 'testett', NULL, 0, '2024-02-20 08:17:14', '2024-02-20 08:17:14'),
(13, '5', 'testett', 'testett', NULL, 0, '2024-02-20 08:17:22', '2024-02-20 08:17:22'),
(14, '4', 'testtet', 'testtet', NULL, 0, '2024-02-20 08:28:41', '2024-02-20 08:28:41'),
(15, '4', 'testtet', 'testtet', NULL, 0, '2024-02-20 08:33:59', '2024-02-20 08:33:59'),
(16, '8', 'ttere', 'ttere', NULL, 0, '2024-02-20 08:34:16', '2024-02-20 08:34:16'),
(17, '8', 'ttere', 'ttere', NULL, 0, '2024-02-20 08:34:17', '2024-02-20 08:34:17'),
(18, '8', 'ttere', 'ttere', NULL, 0, '2024-02-20 08:34:18', '2024-02-20 08:34:18'),
(19, '8', 'ttere', 'ttere', NULL, 0, '2024-02-20 08:34:19', '2024-02-20 08:34:19'),
(20, '8', 'ttere', 'ttere', NULL, 0, '2024-02-20 08:34:19', '2024-02-20 08:34:19'),
(21, '8', 'ttere', 'ttere', NULL, 0, '2024-02-20 08:34:19', '2024-02-20 08:34:19'),
(22, '8', 'ttere', 'ttere', NULL, 0, '2024-02-20 08:34:20', '2024-02-20 08:34:20'),
(23, '8', 'ttere', 'ttere', NULL, 0, '2024-02-20 08:34:20', '2024-02-20 08:34:20'),
(24, '8', 'ttere', 'ttere', NULL, 0, '2024-02-20 08:34:26', '2024-02-20 08:34:26'),
(25, '8', 'ttere', 'ttere', NULL, 0, '2024-02-20 08:34:29', '2024-02-20 08:34:29'),
(26, '4', 'rerere', 'rerere', NULL, 0, '2024-02-20 08:35:01', '2024-02-20 08:35:01'),
(27, '5', 'tere', 'tere', NULL, 0, '2024-02-20 10:27:21', '2024-02-20 10:27:21'),
(28, '5', 'tere', 'tere', NULL, 0, '2024-02-20 10:27:31', '2024-02-20 10:27:31'),
(29, '6', 'trere', 'trere', NULL, 0, '2024-02-20 10:28:02', '2024-02-20 10:28:02'),
(30, '4', 'tere', 'tere', NULL, 0, '2024-02-20 10:29:37', '2024-02-20 10:29:37'),
(31, '4', 'tere', 'tere', NULL, 0, '2024-02-20 10:29:38', '2024-02-20 10:29:38'),
(32, '3', 'testinggg', 'testinggg', NULL, 0, '2024-03-18 05:31:40', '2024-03-18 05:31:40'),
(33, '3', 'testinggg', 'testinggg', NULL, 0, '2024-03-18 05:31:42', '2024-03-18 05:31:42'),
(34, '3', 'testinggg', 'testinggg', NULL, 0, '2024-03-18 05:31:43', '2024-03-18 05:31:43'),
(35, '3', 'testinggg', 'testinggg', NULL, 0, '2024-03-18 05:31:43', '2024-03-18 05:31:43'),
(36, '3', 'testinggg', 'testinggg', NULL, 0, '2024-03-18 05:31:44', '2024-03-18 05:31:44'),
(37, '3', 'testinggg', 'testinggg', NULL, 0, '2024-03-18 05:31:44', '2024-03-18 05:31:44'),
(38, '3', 'testinggg', 'testinggg', NULL, 0, '2024-03-18 05:31:44', '2024-03-18 05:31:44'),
(39, '3', 'testinggg', 'testinggg', NULL, 0, '2024-03-18 05:32:00', '2024-03-18 05:32:00'),
(40, '3', 'testinggg', 'testinggg', NULL, 0, '2024-03-18 05:35:47', '2024-03-18 05:35:47'),
(41, '9', 'testsssfsafas', 'testsssfsafas', NULL, 0, '2024-04-16 13:32:36', '2024-04-16 13:32:36'),
(42, '9', 'testsssfsafas', 'testsssfsafas', NULL, 0, '2024-04-16 13:32:37', '2024-04-16 13:32:37'),
(43, '9', 'testsssfsafasfsdafasfasfa', 'testsssfsafasfsdafasfasfa', NULL, 0, '2024-04-16 13:32:43', '2024-04-16 13:32:43'),
(44, '9', 'testsssfsafasfsdafasfasfa', 'testsssfsafasfsdafasfasfa', NULL, 0, '2024-04-16 13:32:44', '2024-04-16 13:32:44'),
(45, '9', 'testsssfsafasfsdafasfasfa', 'testsssfsafasfsdafasfasfa', NULL, 0, '2024-04-16 13:32:45', '2024-04-16 13:32:45'),
(46, '9', 'testsssfsafasfsdafasfasfa', 'testsssfsafasfsdafasfasfa', NULL, 0, '2024-04-16 13:32:45', '2024-04-16 13:32:45'),
(47, '9', 'testsssfsafasfsdafasfasfa', 'testsssfsafasfsdafasfasfa', NULL, 0, '2024-04-16 13:32:45', '2024-04-16 13:32:45'),
(48, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 0, '2024-04-16 13:32:56', '2024-04-16 13:32:56'),
(49, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 0, '2024-04-16 13:32:58', '2024-04-16 13:32:58'),
(50, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:32:59', '2024-04-16 13:32:59'),
(51, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:32:59', '2024-04-16 13:32:59'),
(52, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:32:59', '2024-04-16 13:32:59'),
(53, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:00', '2024-04-16 13:33:00'),
(54, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:00', '2024-04-16 13:33:00'),
(55, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:00', '2024-04-16 13:33:00'),
(56, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:01', '2024-04-16 13:33:01'),
(57, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:01', '2024-04-16 13:33:01'),
(58, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:02', '2024-04-16 13:33:02'),
(59, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:02', '2024-04-16 13:33:02'),
(60, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:03', '2024-04-16 13:33:03'),
(61, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:03', '2024-04-16 13:33:03'),
(62, '33', 'test sub', 'test-sub', NULL, 1, '2024-04-20 04:00:19', '2024-04-20 04:00:19'),
(63, '33', 'test sub', 'test-sub', NULL, 1, '2024-04-20 04:00:21', '2024-04-20 04:00:21'),
(64, '33', 'test sub', 'test-sub', NULL, 1, '2024-04-20 04:00:22', '2024-04-20 04:00:22'),
(65, '33', 'test sub', 'test-sub', NULL, 1, '2024-04-20 04:00:22', '2024-04-20 04:00:22'),
(66, '33', 'test sub', 'test-sub', NULL, 1, '2024-04-20 04:00:22', '2024-04-20 04:00:22'),
(67, '33', 'test sub', 'test-sub', NULL, 1, '2024-04-20 04:00:23', '2024-04-20 04:00:23'),
(68, '33', 'test sub', 'test-sub', NULL, 1, '2024-04-20 04:00:23', '2024-04-20 04:00:23'),
(69, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:36', '2024-04-20 04:00:36'),
(70, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:37', '2024-04-20 04:00:37'),
(71, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:38', '2024-04-20 04:00:38'),
(72, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:38', '2024-04-20 04:00:38'),
(73, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:38', '2024-04-20 04:00:38'),
(74, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:39', '2024-04-20 04:00:39'),
(75, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:39', '2024-04-20 04:00:39'),
(76, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:39', '2024-04-20 04:00:39'),
(77, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:40', '2024-04-20 04:00:40'),
(78, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:40', '2024-04-20 04:00:40'),
(79, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:40', '2024-04-20 04:00:40'),
(80, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:41', '2024-04-20 04:00:41'),
(81, '5', 'test d', 'test-d', NULL, 1, '2024-04-20 04:03:13', '2024-04-20 04:03:13'),
(82, '7', 'test--d', 'test--d', NULL, 1, '2024-04-20 04:03:28', '2024-04-20 04:03:28'),
(83, '6', 'fda', 'fda', NULL, 1, '2024-04-20 04:03:50', '2024-04-20 04:03:50'),
(84, '6', 'fdasdfa', 'fdasdfa', NULL, 1, '2024-04-20 04:03:57', '2024-04-20 04:03:57'),
(85, '7', 'strer', 'strer', NULL, 1, '2024-02-20 08:13:31', '2024-02-20 08:13:31'),
(86, '7', 'strerd', 'strerd', NULL, 1, '2024-02-20 08:15:15', '2024-02-20 08:15:15'),
(87, '5', 'testett', 'testett', NULL, 1, '2024-02-20 08:17:09', '2024-02-20 08:17:09'),
(88, '5', 'testett', 'testett', NULL, 1, '2024-02-20 08:17:11', '2024-02-20 08:17:11'),
(89, '5', 'testett', 'testett', NULL, 1, '2024-02-20 08:17:11', '2024-02-20 08:17:11'),
(90, '5', 'testett', 'testett', NULL, 1, '2024-02-20 08:17:12', '2024-02-20 08:17:12'),
(91, '5', 'testett', 'testett', NULL, 1, '2024-02-20 08:17:12', '2024-02-20 08:17:12'),
(92, '5', 'testett', 'testett', NULL, 1, '2024-02-20 08:17:13', '2024-02-20 08:17:13'),
(93, '5', 'testett', 'testett', NULL, 1, '2024-02-20 08:17:13', '2024-02-20 08:17:13'),
(94, '5', 'testett', 'testett', NULL, 1, '2024-02-20 08:17:14', '2024-02-20 08:17:14'),
(95, '5', 'testett', 'testett', NULL, 1, '2024-02-20 08:17:14', '2024-02-20 08:17:14'),
(96, '5', 'testett', 'testett', NULL, 1, '2024-02-20 08:17:14', '2024-02-20 08:17:14'),
(97, '5', 'testett', 'testett', NULL, 1, '2024-02-20 08:17:22', '2024-02-20 08:17:22'),
(98, '4', 'testtet', 'testtet', NULL, 1, '2024-02-20 08:28:41', '2024-02-20 08:28:41'),
(99, '4', 'testtet', 'testtet', NULL, 1, '2024-02-20 08:33:59', '2024-02-20 08:33:59'),
(100, '8', 'ttere', 'ttere', NULL, 1, '2024-02-20 08:34:16', '2024-02-20 08:34:16'),
(101, '8', 'ttere', 'ttere', NULL, 1, '2024-02-20 08:34:17', '2024-02-20 08:34:17'),
(102, '8', 'ttere', 'ttere', NULL, 1, '2024-02-20 08:34:18', '2024-02-20 08:34:18'),
(103, '8', 'ttere', 'ttere', NULL, 1, '2024-02-20 08:34:19', '2024-02-20 08:34:19'),
(104, '8', 'ttere', 'ttere', NULL, 1, '2024-02-20 08:34:19', '2024-02-20 08:34:19'),
(105, '8', 'ttere', 'ttere', NULL, 1, '2024-02-20 08:34:19', '2024-02-20 08:34:19'),
(106, '8', 'ttere', 'ttere', NULL, 1, '2024-02-20 08:34:20', '2024-02-20 08:34:20'),
(107, '8', 'ttere', 'ttere', NULL, 1, '2024-02-20 08:34:20', '2024-02-20 08:34:20'),
(108, '8', 'ttere', 'ttere', NULL, 1, '2024-02-20 08:34:26', '2024-02-20 08:34:26'),
(109, '8', 'ttere', 'ttere', NULL, 1, '2024-02-20 08:34:29', '2024-02-20 08:34:29'),
(110, '4', 'rerere', 'rerere', NULL, 1, '2024-02-20 08:35:01', '2024-02-20 08:35:01'),
(111, '5', 'tere', 'tere', NULL, 1, '2024-02-20 10:27:21', '2024-02-20 10:27:21'),
(112, '5', 'tere', 'tere', NULL, 1, '2024-02-20 10:27:31', '2024-02-20 10:27:31'),
(113, '6', 'trere', 'trere', NULL, 1, '2024-02-20 10:28:02', '2024-02-20 10:28:02'),
(114, '4', 'tere', 'tere', NULL, 1, '2024-02-20 10:29:37', '2024-02-20 10:29:37'),
(115, '4', 'tere', 'tere', NULL, 1, '2024-02-20 10:29:38', '2024-02-20 10:29:38'),
(116, '3', 'testinggg', 'testinggg', NULL, 1, '2024-03-18 05:31:40', '2024-03-18 05:31:40'),
(117, '3', 'testinggg', 'testinggg', NULL, 1, '2024-03-18 05:31:42', '2024-03-18 05:31:42'),
(118, '3', 'testinggg', 'testinggg', NULL, 1, '2024-03-18 05:31:43', '2024-03-18 05:31:43'),
(119, '3', 'testinggg', 'testinggg', NULL, 1, '2024-03-18 05:31:43', '2024-03-18 05:31:43'),
(120, '3', 'testinggg', 'testinggg', NULL, 1, '2024-03-18 05:31:44', '2024-03-18 05:31:44'),
(121, '3', 'testinggg', 'testinggg', NULL, 1, '2024-03-18 05:31:44', '2024-03-18 05:31:44'),
(122, '3', 'testinggg', 'testinggg', NULL, 1, '2024-03-18 05:31:44', '2024-03-18 05:31:44'),
(123, '3', 'testinggg', 'testinggg', NULL, 1, '2024-03-18 05:32:00', '2024-03-18 05:32:00'),
(124, '3', 'testinggg', 'testinggg', NULL, 1, '2024-03-18 05:35:47', '2024-03-18 05:35:47'),
(125, '9', 'testsssfsafas', 'testsssfsafas', NULL, 1, '2024-04-16 13:32:36', '2024-04-16 13:32:36'),
(126, '9', 'testsssfsafas', 'testsssfsafas', NULL, 1, '2024-04-16 13:32:37', '2024-04-16 13:32:37'),
(127, '9', 'testsssfsafasfsdafasfasfa', 'testsssfsafasfsdafasfasfa', NULL, 1, '2024-04-16 13:32:43', '2024-04-16 13:32:43'),
(128, '9', 'testsssfsafasfsdafasfasfa', 'testsssfsafasfsdafasfasfa', NULL, 1, '2024-04-16 13:32:44', '2024-04-16 13:32:44'),
(129, '9', 'testsssfsafasfsdafasfasfa', 'testsssfsafasfsdafasfasfa', NULL, 1, '2024-04-16 13:32:45', '2024-04-16 13:32:45'),
(130, '9', 'testsssfsafasfsdafasfasfa', 'testsssfsafasfsdafasfasfa', NULL, 1, '2024-04-16 13:32:45', '2024-04-16 13:32:45'),
(131, '9', 'testsssfsafasfsdafasfasfa', 'testsssfsafasfsdafasfasfa', NULL, 1, '2024-04-16 13:32:45', '2024-04-16 13:32:45'),
(132, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:32:56', '2024-04-16 13:32:56'),
(133, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:32:58', '2024-04-16 13:32:58'),
(134, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:32:59', '2024-04-16 13:32:59'),
(135, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:32:59', '2024-04-16 13:32:59'),
(136, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:32:59', '2024-04-16 13:32:59'),
(137, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:00', '2024-04-16 13:33:00'),
(138, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:00', '2024-04-16 13:33:00'),
(139, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:00', '2024-04-16 13:33:00'),
(140, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:01', '2024-04-16 13:33:01'),
(141, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:01', '2024-04-16 13:33:01'),
(142, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:02', '2024-04-16 13:33:02'),
(143, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:02', '2024-04-16 13:33:02'),
(144, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:03', '2024-04-16 13:33:03'),
(145, '9', 'thsishdslfsdjfhasdkfufnshkhh', 'thsishdslfsdjfhasdkfufnshkhh', NULL, 1, '2024-04-16 13:33:03', '2024-04-16 13:33:03'),
(146, '33', 'test sub', 'test-sub', NULL, 1, '2024-04-20 04:00:19', '2024-04-20 04:00:19'),
(147, '33', 'test sub', 'test-sub', NULL, 1, '2024-04-20 04:00:21', '2024-04-20 04:00:21'),
(148, '33', 'test sub', 'test-sub', NULL, 1, '2024-04-20 04:00:22', '2024-04-20 04:00:22'),
(149, '33', 'test sub', 'test-sub', NULL, 1, '2024-04-20 04:00:22', '2024-04-20 04:00:22'),
(150, '33', 'test sub', 'test-sub', NULL, 1, '2024-04-20 04:00:22', '2024-04-20 04:00:22'),
(151, '33', 'test sub', 'test-sub', NULL, 1, '2024-04-20 04:00:23', '2024-04-20 04:00:23'),
(152, '33', 'test sub', 'test-sub', NULL, 1, '2024-04-20 04:00:23', '2024-04-20 04:00:23'),
(153, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:36', '2024-04-20 04:00:36'),
(154, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:37', '2024-04-20 04:00:37'),
(155, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:38', '2024-04-20 04:00:38'),
(156, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:38', '2024-04-20 04:00:38'),
(157, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:38', '2024-04-20 04:00:38'),
(158, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:39', '2024-04-20 04:00:39'),
(159, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:39', '2024-04-20 04:00:39'),
(160, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:39', '2024-04-20 04:00:39'),
(161, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:40', '2024-04-20 04:00:40'),
(162, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:40', '2024-04-20 04:00:40'),
(163, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:40', '2024-04-20 04:00:40'),
(164, '10', 'test', 'test', NULL, 1, '2024-04-20 04:00:41', '2024-04-20 04:00:41'),
(165, '5', 'test d', 'test-d', NULL, 1, '2024-04-20 04:03:13', '2024-04-20 04:03:13'),
(166, '7', 'test--d', 'test--d', NULL, 1, '2024-04-20 04:03:28', '2024-04-20 04:03:28'),
(167, '6', 'fda', 'fda', NULL, 1, '2024-04-20 04:03:50', '2024-04-20 04:03:50'),
(168, '6', 'fdasdfa', 'fdasdfa', NULL, 1, '2024-04-20 04:03:57', '2024-04-20 04:03:57'),
(212, '39', 'test-fsdafas', 'test-fsdafas', NULL, 1, '2024-04-20 05:03:00', '2024-04-20 05:03:00'),
(213, '11', 'sdaffbsajkfbasdifbkl', 'sdaffbsajkfbasdifbkl', NULL, 1, '2024-04-20 05:03:13', '2024-04-20 05:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `temp_images`
--

CREATE TABLE `temp_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_images`
--

INSERT INTO `temp_images` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1714566245.png', '2024-05-01 07:24:05', '2024-05-01 07:24:05'),
(2, '1714566432.gif', '2024-05-01 07:27:12', '2024-05-01 07:27:12'),
(3, '1714566443.jpg', '2024-05-01 07:27:23', '2024-05-01 07:27:23'),
(4, '1714567189.jpg', '2024-05-01 07:39:49', '2024-05-01 07:39:49'),
(5, '1714567263.png', '2024-05-01 07:41:03', '2024-05-01 07:41:03'),
(6, '1714567370.png', '2024-05-01 07:42:50', '2024-05-01 07:42:50'),
(7, '1714567549.jpg', '2024-05-01 07:45:49', '2024-05-01 07:45:49'),
(8, '1714567620.png', '2024-05-01 07:47:00', '2024-05-01 07:47:00'),
(9, '1714567645.png', '2024-05-01 07:47:25', '2024-05-01 07:47:25'),
(10, '1714567697.png', '2024-05-01 07:48:17', '2024-05-01 07:48:17'),
(11, '1714567724.png', '2024-05-01 07:48:44', '2024-05-01 07:48:44'),
(12, '1714567763.png', '2024-05-01 07:49:23', '2024-05-01 07:49:23'),
(13, '1714567822.png', '2024-05-01 07:50:22', '2024-05-01 07:50:22'),
(14, '1714567845.png', '2024-05-01 07:50:45', '2024-05-01 07:50:45'),
(15, '1714568362.png', '2024-05-01 07:59:22', '2024-05-01 07:59:22'),
(16, '1714568876.png', '2024-05-01 08:07:56', '2024-05-01 08:07:56'),
(17, '1714704578.jpg', '2024-05-02 21:49:38', '2024-05-02 21:49:38'),
(18, '1714704779.jpg', '2024-05-02 21:52:59', '2024-05-02 21:52:59'),
(19, '1714704842.png', '2024-05-02 21:54:02', '2024-05-02 21:54:02'),
(20, '1714704904.jpg', '2024-05-02 21:55:04', '2024-05-02 21:55:04'),
(21, '1714704926.png', '2024-05-02 21:55:26', '2024-05-02 21:55:26'),
(22, '1714704958.jpg', '2024-05-02 21:55:58', '2024-05-02 21:55:58'),
(23, '1714705091.jpg', '2024-05-02 21:58:11', '2024-05-02 21:58:11'),
(24, '1714705101.jpeg', '2024-05-02 21:58:21', '2024-05-02 21:58:21'),
(25, '1714705147.png', '2024-05-02 21:59:07', '2024-05-02 21:59:07'),
(26, '1714705220.png', '2024-05-02 22:00:20', '2024-05-02 22:00:20'),
(27, '1714705385.png', '2024-05-02 22:03:05', '2024-05-02 22:03:05'),
(28, '1714705516.jpg', '2024-05-02 22:05:16', '2024-05-02 22:05:16'),
(29, '1714705625.jpeg', '2024-05-02 22:07:05', '2024-05-02 22:07:05'),
(30, '1714705856.jpg', '2024-05-02 22:10:56', '2024-05-02 22:10:56'),
(31, '1714760514.png', '2024-05-03 13:21:54', '2024-05-03 13:21:54'),
(32, '1714760563.jpg', '2024-05-03 13:22:43', '2024-05-03 13:22:43'),
(33, '1714760609.jpeg', '2024-05-03 13:23:29', '2024-05-03 13:23:29'),
(34, '1714760694.jpg', '2024-05-03 13:24:54', '2024-05-03 13:24:54'),
(35, '1714761578.jpg', '2024-05-03 13:39:38', '2024-05-03 13:39:38'),
(36, '1714761619.png', '2024-05-03 13:40:19', '2024-05-03 13:40:19'),
(37, '1714761749.png', '2024-05-03 13:42:29', '2024-05-03 13:42:29'),
(38, '1714761797.png', '2024-05-03 13:43:17', '2024-05-03 13:43:17'),
(39, '1714887509.png', '2024-05-05 00:38:29', '2024-05-05 00:38:29'),
(40, '1715361711.png', '2024-05-10 12:21:51', '2024-05-10 12:21:51'),
(41, '1715361767.png', '2024-05-10 12:22:47', '2024-05-10 12:22:47'),
(42, '1715361884.jpg', '2024-05-10 12:24:44', '2024-05-10 12:24:44'),
(43, '1715362545.jpg', '2024-05-10 12:35:45', '2024-05-10 12:35:45'),
(44, '1715362679.jpg', '2024-05-10 12:37:59', '2024-05-10 12:37:59'),
(45, '1715362856.jpg', '2024-05-10 12:40:56', '2024-05-10 12:40:56'),
(46, '1715362942.jpg', '2024-05-10 12:42:22', '2024-05-10 12:42:22'),
(47, '1715363005.png', '2024-05-10 12:43:25', '2024-05-10 12:43:25'),
(48, '1715363057.png', '2024-05-10 12:44:17', '2024-05-10 12:44:17'),
(49, '1715363151.png', '2024-05-10 12:45:51', '2024-05-10 12:45:51'),
(50, '1715363165.jpg', '2024-05-10 12:46:05', '2024-05-10 12:46:05'),
(51, '1715363251.jpg', '2024-05-10 12:47:31', '2024-05-10 12:47:31'),
(52, '1715363286.jpg', '2024-05-10 12:48:06', '2024-05-10 12:48:06'),
(53, '1715364044.png', '2024-05-10 13:00:44', '2024-05-10 13:00:44'),
(54, '1715364254.jpeg', '2024-05-10 13:04:14', '2024-05-10 13:04:14'),
(55, '1715364299.png', '2024-05-10 13:04:59', '2024-05-10 13:04:59'),
(56, '1715364363.jpg', '2024-05-10 13:06:03', '2024-05-10 13:06:03'),
(57, '1715364388.jpg', '2024-05-10 13:06:28', '2024-05-10 13:06:28');

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
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(2, 'user', 'user@example.com', NULL, '$2y$12$J5pfKXGB4RgIFW0ZBUXUquS8AtgHoRHVSqPrzn1OOqpr3FPQCpkZy', NULL, '1', '2024-01-16 14:16:42', '2024-01-16 14:16:42'),
(4, 'admin', 'admin@gmail.com', '2024-01-27 04:42:48', '$2y$12$kgsTNzuecR.kgUverE.J1.YgqGJ0UpHfhDoI72K88G5xZgmWL5SkK', 'vEIXI2y6vwmOokJ1LEE53MJdQ8nRoTpNCZKAgvGwejjtJzqWHw161kvSlwK3', '1', '2024-01-27 04:42:49', '2024-01-27 04:42:49'),
(5, 'User', 'user@gmail.com', '2024-01-27 04:44:01', '$2y$12$r01nukf/D7n4Womm9xeAtOcb/GI0FtxNpv1uXwmgupdFCOMtwIJma', 'MaHRpWGULzrjyHBqg1AXRk2zNtDDfTnE7gyz7yg3fOVFbvEk9kCrc6GacKSJ', '2', '2024-01-27 04:44:01', '2024-01-27 04:44:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_images`
--
ALTER TABLE `temp_images`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `temp_images`
--
ALTER TABLE `temp_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
