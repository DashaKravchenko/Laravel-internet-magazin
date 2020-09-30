-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 25 2020 г., 16:30
-- Версия сервера: 5.7.29
-- Версия PHP: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kravchenkod`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Для ежедневного сна', 'diva', 'images/divan_aleks_2_1.jpg', '2020-09-03 19:34:29', NULL),
(2, 'Прямые', 'pryamyye', 'images/Divan_026.jpg', '2020-09-03 20:11:05', NULL),
(3, 'Детские', 'detskiye', 'images/Divan_030.jpg', '2020-09-03 20:15:28', NULL),
(4, 'Компактные', 'кompaktnyye', 'images/Divan_054.jpg', '2020-09-03 20:18:13', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `letter_items`
--

CREATE TABLE `letter_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `letter_items`
--

INSERT INTO `letter_items` (`id`, `name`, `tel`, `email`, `text`, `created_at`, `updated_at`) VALUES
(1, 'sdfsf', 'sdf', 'sdf@sd.sd', 'dfgdfg', '2020-09-23 13:21:30', '2020-09-23 13:21:30'),
(2, 'eeeee', '+380975055120', 'dasha0445S@gmail.com', 'ewtv', '2020-09-23 13:48:01', '2020-09-23 13:48:01'),
(3, 'eeeee', '+38097FSgF', 'dasha0445@gmail.com', 'ewtv', '2020-09-23 13:49:02', '2020-09-23 13:49:02'),
(4, 'eeeeegrezg', '+38097FSgF', 'dasha0445@gmail.com', 'efGREHY', '2020-09-23 13:50:41', '2020-09-23 13:50:41'),
(5, 'sssss', '55555', 'sssss@gmail.com', 'sssssssss', '2020-09-23 13:52:28', '2020-09-23 13:52:28'),
(6, 'gg', '6666', 'gggg@gmail.com', 'wetzrey', '2020-09-23 13:55:36', '2020-09-23 13:55:36'),
(7, 'gg', '0668856790', 'gggg@gmail.com', 'fdffzhez', '2020-09-23 13:57:08', '2020-09-23 13:57:08'),
(8, 'gg', '0668856790', 'dasha0445@gmail.com', 'fdffzhez', '2020-09-23 13:58:15', '2020-09-23 13:58:15'),
(9, 'gg', '+380975055120', 'gggg@gmail.com', 'gsdg', '2020-09-23 14:00:21', '2020-09-23 14:00:21'),
(10, 'gg', '+380619998477', 'gggg@gmail.com', 'sdgdg', '2020-09-23 14:00:55', '2020-09-23 14:00:55'),
(11, 'gg', '55555', 'gggg@gmail.com', 'gggggggggggggggggggggggggggg5tttttttttttttttt5wn', '2020-09-23 14:01:50', '2020-09-23 14:01:50'),
(12, 'gewtag', '55555553432', 'ggdsffrvgg@gmail.com', 'ggggggg5tttttttttttttttt5wn\r\ndhfhEFB dbhFVke\r\nfhsgfiys \r\nchsgfiyw fiehouwglonccudirnfhg\r\ndjfjgutntnjf jfujbfugf hfgbieus\r\njsfbghizyr  juguzerhg\r\njsfhbilzayergt', '2020-09-23 14:03:57', '2020-09-23 14:03:57'),
(13, 'gewtagdgzszr3333', '977893432', 'gg@gmail.com', 'ggggggg5tttttttttttttttt5wn\r\ndhfhEFB dbhFVke\r\nfh', '2020-09-23 14:07:28', '2020-09-23 14:07:28'),
(14, 'gg', '0668856790', 'gggg@gmail.com', 'ffffff', '2020-09-23 14:07:44', '2020-09-23 14:07:44'),
(15, 'dasha0445', '0668856790', 'gggg@gmail.com', 'fzg', '2020-09-24 09:39:15', '2020-09-24 09:39:15'),
(16, 'dasha0445', '+380975055120', 'dasha0445S@gmail.com', 'dqwf', '2020-09-24 09:49:11', '2020-09-24 09:49:11'),
(17, 'Дарья', '55555', 'gggg@gmail.com', 'egeyhae', '2020-09-24 09:51:00', '2020-09-24 09:51:00'),
(18, 'Дарья', '0668856790', 'gggg@gmail.com', 'hiuh', '2020-09-24 09:52:10', '2020-09-24 09:52:10'),
(19, 'dasha0445', '0668856790', 'gggg@gmail.com', 'bg', '2020-09-24 09:55:15', '2020-09-24 09:55:15'),
(20, 'dasha0445', '0668856790', 'gggg@gmail.com', 'bg', '2020-09-24 09:56:48', '2020-09-24 09:56:48'),
(21, 'wwwww', '55555', 'gggg@gmail.com', 'gx', '2020-09-24 09:57:24', '2020-09-24 09:57:24'),
(22, 'wwwww', '+380619998477', 'admin@gmail.com', 'llgyl', '2020-09-24 09:58:37', '2020-09-24 09:58:37'),
(23, 'vv', '0668856790', 'dasha0445@gmail.com', 'vcc', '2020-09-24 09:59:07', '2020-09-24 09:59:07'),
(24, 'vv', '0668856790', 'dasha0445@gmail.com', 'vcc', '2020-09-24 09:59:07', '2020-09-24 09:59:07'),
(25, 'Дарья', '0668856790', 'dashaASD0445@gmail.com', 'fhxt', '2020-09-24 10:11:35', '2020-09-24 10:11:35'),
(26, 'dasha0445', '+380975055120', 'dasha0445S@gmail.com', 'gzrrh', '2020-09-24 10:12:10', '2020-09-24 10:12:10'),
(27, 'dasha0445', '0668856790', 'dasha0445S@gmail.com', 'ggg', '2020-09-25 07:33:33', '2020-09-25 07:33:33'),
(28, 'Дарья', '0668856790', 'dasha0445S@gmail.com', 'ffff', '2020-09-25 07:34:34', '2020-09-25 07:34:34'),
(29, 'dasha0445', '0668856790', 'dasha0445@gmail.com', 'zxb', '2020-09-25 07:35:40', '2020-09-25 07:35:40'),
(30, 'dasha0445', '0668856790', 'dasha0445S@gmail.com', 'vcwvsev', '2020-09-25 07:37:05', '2020-09-25 07:37:05'),
(31, 'dasha0445', '0668856790', 'dashaASD0445@gmail.com', 'sdg', '2020-09-25 07:39:53', '2020-09-25 07:39:53'),
(32, 'Дарья', '+380619998477', 'gggg@gmail.com', 'nff', '2020-09-25 07:40:28', '2020-09-25 07:40:28'),
(33, 'dasha0445', '0668856790', 'dasha0445@gmail.com', 'gwg', '2020-09-25 07:41:55', '2020-09-25 07:41:55'),
(34, 'dasha0445', '0668856790', 'dasha0445@gmail.com', 'gwg', '2020-09-25 07:41:55', '2020-09-25 07:41:55'),
(35, 'Дарья', '+380975055120', 'admin@gmail.com', 'dfe', '2020-09-25 08:09:03', '2020-09-25 08:09:03'),
(36, 'dasha0445', '0668856790', 'dasha0445S@gmail.com', 'E', '2020-09-25 08:10:12', '2020-09-25 08:10:12'),
(37, 'dasha0445', '0668856790', 'dasha0445S@gmail.com', 'jj', '2020-09-25 08:11:25', '2020-09-25 08:11:25'),
(38, 'Дарья', '+380668856790', 'admin@gmail.com', 'чсич', '2020-09-25 08:13:13', '2020-09-25 08:13:13'),
(39, 'Дарья', '+380668856790', 'admin@gmail.com', 'чсич', '2020-09-25 08:13:13', '2020-09-25 08:13:13'),
(40, 'Дарья', '0668856790', 'dasha0445S@gmail.com', 'фцв', '2020-09-25 08:14:20', '2020-09-25 08:14:20'),
(41, 'dasha0445', '0668856790', 'dasha0445S@gmail.com', 'ып', '2020-09-25 08:15:02', '2020-09-25 08:15:02'),
(42, 'dasha0445', '0668856790', 'dasha0445S@gmail.com', 'цйв', '2020-09-25 08:16:13', '2020-09-25 08:16:13'),
(43, 'dasha0445', '0668856790', 'dasha0445S@gmail.com', 'sfbG', '2020-09-25 08:18:11', '2020-09-25 08:18:11'),
(44, 'dasha0445', '0668856790', 'dasha0445S@gmail.com', 'r2', '2020-09-25 08:18:33', '2020-09-25 08:18:33'),
(45, 'dasha0445', '0668856790', 'dasha0445S@gmail.com', 'r2', '2020-09-25 08:18:37', '2020-09-25 08:18:37'),
(46, 'dasha0445', '0668856790', 'dasha0445S@gmail.com', '.l', '2020-09-25 08:20:44', '2020-09-25 08:20:44'),
(47, 'dasha0445', '0668856790', 'dasha0445S@gmail.com', 'ghh', '2020-09-25 08:21:18', '2020-09-25 08:21:18'),
(48, 'wwwww', '0668856790', 'dasha0445S@gmail.com', 'd', '2020-09-25 08:29:55', '2020-09-25 08:29:55'),
(49, 'dasha0445', '0668856790', 'gggg@gmail.com', 'DD', '2020-09-25 08:31:01', '2020-09-25 08:31:01'),
(50, 'dasha0445', '+380975055120', 'dashaASD0445@gmail.com', 'sz', '2020-09-25 08:33:30', '2020-09-25 08:33:30'),
(51, 'dasha0445', '+380975055120', 'dashaASD0445@gmail.com', 'ипі', '2020-09-25 08:34:25', '2020-09-25 08:34:25'),
(52, 'dasha0445', '0668856790', 'dasha0445S@gmail.com', 'уяег', '2020-09-25 08:37:17', '2020-09-25 08:37:17'),
(53, 'Дарья', '0668856790', 'gggg@gmail.com', 'fff', '2020-09-25 08:39:08', '2020-09-25 08:39:08'),
(54, 'dasha0445', '+380975055120', 'dasha0445S@gmail.com', 'ru', '2020-09-25 08:40:01', '2020-09-25 08:40:01'),
(55, 'Дарья', '+380975055120', 'dasha0445@gmail.com', 'gfj', '2020-09-25 08:40:27', '2020-09-25 08:40:27'),
(56, 'dasha0445', '0668856790', 'dasha0445@gmail.com', 'fas', '2020-09-25 08:41:19', '2020-09-25 08:41:19'),
(57, 'dasha0445', '0668856790', 'dasha0445S@gmail.com', 'dt', '2020-09-25 08:42:22', '2020-09-25 08:42:22'),
(58, 'dasha0445', '0668856790', 'dasha0445S@gmail.com', 'j', '2020-09-25 08:43:29', '2020-09-25 08:43:29'),
(59, 'dasha0445', 'fff', 'dasha0445@gmail.com', 'z', '2020-09-25 08:44:21', '2020-09-25 08:44:21'),
(60, 'dasha0445', 'ddd', 'gggg@gmail.com', 'dd', '2020-09-25 08:45:00', '2020-09-25 08:45:00'),
(61, 'dasha0445', 'ddd', 'dasha0445S@gmail.com', 'dd', '2020-09-25 08:46:23', '2020-09-25 08:46:23'),
(62, 'dasha0445', '5536', 'dasha0445S@gmail.com', 'dqFR', '2020-09-25 08:59:17', '2020-09-25 08:59:17'),
(63, 'dasha0445', 'fff', 'dasha0445@gmail.com', 'FQF', '2020-09-25 08:59:59', '2020-09-25 08:59:59'),
(64, '5345', '5536', 'dasha0445S@gmail.com', 'sgtw', '2020-09-25 09:07:50', '2020-09-25 09:07:50'),
(65, 'dasha0445', '5536', 'dasha0445S@gmail.com', 'tu', '2020-09-25 09:13:57', '2020-09-25 09:13:57'),
(66, 'dasha0445са', 'аукпк', 'dasha0445S@gmail.com', 'аіяе', '2020-09-25 09:16:49', '2020-09-25 09:16:49');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_09_03_191409_create_categories_table', 2),
(8, '2020_09_03_191728_create_products_table', 2),
(9, '2020_08_28_164416_create_orders_table', 3),
(10, '2020_08_28_164523_create_order_items_table', 3),
(15, '2020_09_22_103740_create_letters_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_sum` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_sum`, `created_at`, `updated_at`) VALUES
(1, 19, 70870.00, '2020-09-14 13:48:51', '2020-09-14 13:48:51'),
(2, 19, 70870.00, '2020-09-14 13:48:58', '2020-09-14 13:48:58'),
(3, 19, 70870.00, '2020-09-14 13:51:10', '2020-09-14 13:51:10'),
(4, 19, 124370.00, '2020-09-14 14:38:55', '2020-09-14 14:38:55'),
(5, 21, 8870.00, '2020-09-23 13:53:52', '2020-09-23 13:53:52'),
(6, 21, 8950.00, '2020-09-24 08:43:20', '2020-09-24 08:43:20'),
(7, 21, 8950.00, '2020-09-24 08:47:57', '2020-09-24 08:47:57'),
(8, 21, 8950.00, '2020-09-24 08:47:58', '2020-09-24 08:47:58'),
(9, 21, 8950.00, '2020-09-24 08:48:15', '2020-09-24 08:48:15');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `name`, `qty`, `img`, `price`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'Диван Ява', 1, '..//images/divan_002.jpg', 7670.00, 1, '2020-09-14 13:48:51', '2020-09-14 13:48:51'),
(2, 'Диван Канзас', 1, '..//images/divan_kanzas.jpg', 9500.00, 1, '2020-09-14 13:48:51', '2020-09-14 13:48:51'),
(3, 'Диван Алекс ', 6, '..//images/Divan_046.jpg', 8950.00, 1, '2020-09-14 13:48:51', '2020-09-14 13:48:51'),
(4, 'Диван Ява', 1, '..//images/divan_002.jpg', 7670.00, 2, '2020-09-14 13:48:58', '2020-09-14 13:48:58'),
(5, 'Диван Канзас', 1, '..//images/divan_kanzas.jpg', 9500.00, 2, '2020-09-14 13:48:58', '2020-09-14 13:48:58'),
(6, 'Диван Алекс ', 6, '..//images/Divan_046.jpg', 8950.00, 2, '2020-09-14 13:48:58', '2020-09-14 13:48:58'),
(7, 'Диван Ява', 1, '..//images/divan_002.jpg', 7670.00, 3, '2020-09-14 13:51:10', '2020-09-14 13:51:10'),
(8, 'Диван Канзас', 1, '..//images/divan_kanzas.jpg', 9500.00, 3, '2020-09-14 13:51:10', '2020-09-14 13:51:10'),
(9, 'Диван Алекс ', 6, '..//images/Divan_046.jpg', 8950.00, 3, '2020-09-14 13:51:10', '2020-09-14 13:51:10'),
(10, 'Диван Монако', 1, '..//images/Divan_monako.jpg', 8870.00, 4, '2020-09-14 14:38:55', '2020-09-14 14:38:55'),
(11, 'Диван Сидней', 15, '..//images/Divan_018.jpg', 5880.00, 4, '2020-09-14 14:38:55', '2020-09-14 14:38:55'),
(12, 'Диван \"Демо\"', 3, '..//images/Divan_026.jpg', 9100.00, 4, '2020-09-14 14:38:55', '2020-09-14 14:38:55'),
(13, 'Диван Монако', 1, '..//images/Divan_monako.jpg', 8870.00, 5, '2020-09-23 13:53:52', '2020-09-23 13:53:52'),
(14, 'Диван Алекс ', 1, '..//images/Divan_046.jpg', 8950.00, 6, '2020-09-24 08:43:20', '2020-09-24 08:43:20'),
(15, 'Диван Алекс ', 1, '..//images/Divan_046.jpg', 8950.00, 7, '2020-09-24 08:47:57', '2020-09-24 08:47:57'),
(16, 'Диван Алекс ', 1, '..//images/Divan_046.jpg', 8950.00, 8, '2020-09-24 08:47:58', '2020-09-24 08:47:58'),
(17, 'Диван Алекс ', 1, '..//images/Divan_046.jpg', 8950.00, 9, '2020-09-24 08:48:15', '2020-09-24 08:48:15');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dasha0445@gmail.com', '$2y$10$iJ1UFr/bsOtselbAVX354encQdEhssx7i0IlNNo3s9g.kOx9Q4nhS', '2020-09-24 08:37:47');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `recommended` tinyint(1) NOT NULL DEFAULT '0',
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dimensions` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `img`, `price`, `description`, `recommended`, `category_id`, `created_at`, `updated_at`, `dimensions`) VALUES
(1, 'Диван Канзас', 'divan-kanzas', '..//images/divan_kanzas.jpg', 9500.00, 'Современный стиль и долговечность в использовании. Данная модель дивана подчеркнет стиль Loft или просто оживит интерьер Вашей комнаты. Неприхотливая в уходе ткань позволит Вам не думать о том, стоит ли пить чай на этом диване. Уникальная раскладка дивана позволит выставить его углом в любую сторону или сделать из него полноценное двухспальное место. При раскладке дивана, по бокам появляются прикраватные тумбы.  ', 1, 1, '2020-09-03 19:37:49', NULL, 'общий: 2.35*1.00; \r\nспальное: 2.0*1.40'),
(2, 'Диван Ява', 'divan-yava', '..//images/divan_002.jpg', 7670.00, 'Диван \"Ява\" - прочная модель, выполнена на усиленном каркасе.  В данной моделе минимум сложных механизмов, что делает диван выносливым к ежедневному использованию. При раскладке дивана появляется короб для белья. Разложить диван можно в два движения. Раскладка \"еврокнижка\" превращает данную модель в полноценное место для сна на двоих. Данная модель представлена с мягкими быльцами. ', 0, 2, '2020-09-03 20:34:40', NULL, 'общий: 2.25*1.10 ;  \r\nспальное место:1.55*2.00'),
(3, 'Диван Малыш', 'divan-malysh', '..//images/divan_030.jpg', 4500.00, 'Небольшой детский диванчик с быльцами по бокам сделает сон Вашего ребенка безопастным и комфортным. Механизм раскладки \"перекидной наперед\" позволил разместить выкатную нишу для хранения белья под  диванчиком. И главное, в разложенном виде у дивана нет перепадов или впадин. Боковые спинки с обеих сторон позволяют не выпасть с кроватки. ', 1, 3, '2020-09-07 06:11:56', NULL, 'общий: 1.10*0.90; \r\nспальное место: 1.00*1.80'),
(4, 'Тахта \"Марта\"', 'takhta-marta', '..//images/takhta_marta.jpg', 8140.00, 'Тахта для тех, кто любит классику. Небольшие габариты тахты позволяют украсить даже самую небольшую комнату. Раскладка \"дельфин\" превратит тахту в полноценное спальное место как для гостей, так и для детей. ', 0, 4, '2020-09-07 07:34:52', NULL, 'общий: 2.25*0.90; \r\nспальное место:1.40*1.95\r\n'),
(5, 'Диван Монако', 'divan-monako', '..//images/Divan_monako.jpg', 8870.00, 'Современный диван с функциональными быльцами. Данная модель выполнена на пружинном блоке. Имеет нишу для белья в одной быльце, вторая же быльца служит выездным баром. Так же, при раскладке дивана появляется короб для белья. Верх былец выступает полезным местом. Данная модель дивана не имеет ножек или колес, по всей длинне изделия набит толстый брус, который добавляет дивану прочности. Механизм раскладки \"еврокнижка\". Диван отлично подойдет для ежедневного сна на двоих. Выдержит десятки лет игры детей и прочие усиленные нагрузки.', 0, 2, NULL, NULL, 'общий: 2.40*1.00; \r\nспальное: 1.60*1.90 '),
(6, 'Диван Сидней', 'divan-cidney', '..//images/Divan_018.jpg', 5880.00, 'Недорогой, качественный диван на ламелях с раскладкой \"дельфин\". Небольшие габариты дивана позволяют его установку даже в самых маленьких помещениях. Диван на ламелях отлично послужит приему гостей или не ежедневному сну на даче. Пенополиуритан делает диван более жестким, что позволяет не просидать полезному месту. ', 0, 2, '2020-09-07 10:54:58', NULL, 'общий: 2.25*1.05; \r\nспальное место: 1.45*1.95'),
(7, 'Диван Монако ', 'divan-monako', '..//images/Divan_022.jpg', 8870.00, 'Современный диван с функциональными быльцами. Данная модель выполнена на пружинном блоке. Имеет нишу для белья в одной быльце, вторая же быльца служит выездным баром. Так же, при раскладке дивана появляется короб для белья. Верх былец выступает полезным местом. Данная модель дивана не имеет ножек или колес, по всей длинне изделия набит толстый брус, который добавляет дивану прочности. Механизм раскладки \"еврокнижка\". Диван отлично подойдет для ежедневного сна на двоих. Выдержит десятки лет игры детей и прочие усиленные нагрузки.', 0, 2, '2020-09-07 10:57:21', NULL, 'общий: 2.40*1.00; спальное: 1.60*1.90'),
(8, 'Диван Алекс ', 'divan-aleks', '..//images/Divan_046.jpg', 8950.00, 'Настоящая находка для тех, кто ищет диван для ежедневного сна. Полноценное двухспальное место без перепадов и впадин на пружинном блоке превращает этот диван в настоящую кровать. Тонкая задняя спинка не ворует полезное место в комнате, а быльца дивана несут двойную функцию, полезное место сверху и ниши для белья в каждом быльце. Так же, под диваном есть выкотная ниша для хранения вещей.', 1, 1, '2020-09-07 11:07:38', NULL, 'общий:2.18*1.05; спальное место: 1.80*2.00'),
(9, 'Диван Малыш', 'divan -malysh', '..//images/Divan_042.jpg', 4500.00, 'Небольшой детский диванчик с быльцами по бокам сделает сон Вашего ребенка безопастным и комфортным. Механизм раскладки \"перекидной наперед\" позволил разместить выкатную нишу для хранения белья под  диванчиком. И главное, в разложенном виде у дивана нет перепадов или впадин. Боковые спинки с обеих сторон позволяют не выпасть с кроватки. ', 0, 3, '2020-09-07 11:58:40', NULL, 'общий:1.10*0.95; спальное: 1.80*1.0\r\n'),
(10, 'Диван \"Демо\"', 'divan-demo', '..//images/Divan_026.jpg', 9100.00, 'Данная модель дивана выполнена с расладкой \"еврокнижка\". Большие быльца таят в себе ниши для хранения белья по всему размеру. Встроенные ручки на передней части дивана помогут в раскладке даже ребенку. Усиленный передний брус служит дивану ножками, что позволяет не царапать пол. Пружинный блок сделает ваш сон максимально комфортным.', 1, 2, '2020-09-07 12:09:39', NULL, 'общий:2.40*1.10; спальное: 1.95*1.55\r\n'),
(11, 'Диван Алекс ', 'divan-aleks', '..//images/Divan-061.jpg', 8950.00, 'Диван \"Алекс\" - это полноценное двухспальное место при раскладке дивана. Если Вы ищите диван для ежедневного сна, лучший выбор перед Вами. Усиленный каркас делает его выносливым к каждодневному использованию, пружинный блок делает Ваш сон комфортным. Выездная ниша для белья становится доступной в одно движение. Большое полезное место в сложенном виде позволит собраться у телевизора всей семье.', 0, 1, '2020-09-07 12:17:44', NULL, 'общий габарит:2.06*1.05; спальное место: 1.80*2.00\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vasy', 'dasha0445@gmail.com', NULL, '$2y$10$S9c5XgSvoWWTW47lcjnsIOybzRpIsJffYpOaiSXsXueOGQ5pJ2XF6', 'R8YpTD4STzDwxFAlEvKAWr8IzIQP0XY3eoebAST37OXdVuN6MFQr7RHiNpvx', '2020-09-02 16:23:01', '2020-09-24 08:18:05'),
(4, 'vas33y', 'dasha044335@gmail.com', NULL, 'dasha04453', NULL, '2020-09-02 16:24:23', '2020-09-02 16:24:23'),
(6, 'vas3366y', 'dasha0443356666@gmail.com', NULL, 'dasha04666453', NULL, '2020-09-02 16:24:48', '2020-09-02 16:24:48'),
(8, 'Nicklaus Jacobson', 'morgan.muller@example.com', '2020-09-02 16:33:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iRQssCWFQw', '2020-09-02 16:33:02', '2020-09-02 16:33:02'),
(9, 'Ilene Ankunding', 'rick.eichmann@example.com', '2020-09-02 16:33:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RPSTTTvy9o', '2020-09-02 16:33:37', '2020-09-02 16:33:37'),
(10, 'Serenity Hermann Sr.', 'damion96@example.net', '2020-09-02 16:33:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QCoYpOOsRE', '2020-09-02 16:33:37', '2020-09-02 16:33:37'),
(11, 'Arturo Johnson', 'jerrod99@example.net', '2020-09-02 16:33:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4YtzIJ3uxR', '2020-09-02 16:33:37', '2020-09-02 16:33:37'),
(12, 'admin123', 'admin123@gmail.com', NULL, '$2y$10$gejmJr42D3dSCGuWyU8VW.gH10oEdc7g1C/dayl1aYlvjeNqdUIqK', NULL, '2020-09-02 16:37:29', '2020-09-02 16:37:29'),
(13, 'q', 'q@gmail.com', NULL, '$2y$10$956YjDOaDic32z.R.aid4urcqLUVWWT3HIXriAIZcCCotd5IJCJP6', NULL, '2020-09-02 16:46:14', '2020-09-02 16:46:14'),
(15, 'dasha0445', 'dasha0445S@gmail.com', NULL, '$2y$10$Ury3NpglJRgXm6xNWtZ3Ge2uFYTFVwS7qAnCQrd/S9KDAmOfqXxV2', NULL, '2020-09-03 15:42:03', '2020-09-03 15:42:03'),
(16, 'dasha0445', 'dasha044445S@gmail.com', NULL, '$2y$10$FjlDej4onroekQtudBv3PeKJt8TNrtelJbgRnJ8FHbyg1uOhFJbVm', NULL, '2020-09-03 15:42:37', '2020-09-03 15:42:37'),
(17, 'Дарья', 'adminqwedqvt@gmail.com', NULL, '$2y$10$flCHuHYGaZtdxFQIHiXv9.oTcNZ0KhdsPBiAdnIJ20FDPHMcIq8iq', NULL, '2020-09-03 15:50:23', '2020-09-03 15:50:23'),
(18, 'wwwww', 'www@gmail.com', NULL, '$2y$10$hq9kZxyXZIQsNNUyPdCbD.hrb/vgoBznYYlnXcS4Hvra5ILCmMxhy', NULL, '2020-09-07 04:19:40', '2020-09-07 04:19:40'),
(19, 'Шекспир', 'dasha@gmail.ru', NULL, '$2y$10$T7/1Lvlm6lgSTyHTAtHdceITJkIw83SILEucH9aRC/C76DJnspG5u', NULL, '2020-09-14 13:43:07', '2020-09-14 13:43:07'),
(20, 'Muhammad Ullrich', 'sfritsch@example.net', '2020-09-14 13:45:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8vo3r9JRiu', '2020-09-14 13:45:52', '2020-09-14 13:45:52'),
(21, 'gg', 'gggg@gmail.com', NULL, '$2y$10$3bJTfjb4Jvom7M1l.vSUjevOMSP86KWrMD3dOjTYAKS4kl7IimBTC', 'nSoTeowK6E5Lav4b6ayk4f8k2DA5CtDQTxMonWorNE9mznU5EUe5tq9DYCy3', '2020-09-23 05:44:41', '2020-09-23 05:44:41');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `letter_items`
--
ALTER TABLE `letter_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `letter_items_email_foreign` (`email`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `letter_items`
--
ALTER TABLE `letter_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
