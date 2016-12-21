-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 09-Nov-2016 às 18:01
-- Versão do servidor: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cursomobile`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'aut', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(2, 'qui', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(3, 'suscipit', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(4, 'aut', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(5, 'distinctio', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(6, 'cumque', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(7, 'voluptatem', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(8, 'debitis', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(9, 'totam', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(10, 'accusamus', '2016-10-31 20:35:01', '2016-10-31 20:35:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `clients`
--

INSERT INTO `clients` (`id`, `user_id`, `phone`, `address`, `city`, `state`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 1, '(11) 752-0850 x706', '483 Aileen Extension\r\nSouth Bridgetshire, MO 66167-5236', 'Jacetown', 'Nebraska', '29925', '2016-10-31 20:35:00', '2016-11-02 21:48:01'),
(2, 2, '518.454.6559', '4546 Aniyah Lock Apt. 618\nSouth Milford, MN 04511', 'Lake Kirstin', 'New Jersey', '56343', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(3, 3, '(498) 624-7884', '72667 Legros Squares Apt. 259\nNew Soledad, CA 99716-2772', 'South Mittiemouth', 'Rhode Island', '58110-4928', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(4, 4, '1-490-599-1448 x41531', '783 Harris Village\nLake Mortimerside, MS 94416-3281', 'South Filiberto', 'Louisiana', '81900-1733', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(5, 5, '603-766-0773 x98634', '1580 Lesley Shores\nMarcelinoview, NC 80144', 'Calistabury', 'Pennsylvania', '76586', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(6, 6, '252.378.2155', '3061 Elliott Burg\nRoobmouth, NJ 75525', 'New Bernita', 'New Mexico', '50005-3799', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(7, 7, '(461) 598-6243', '93421 Connelly Skyway Suite 690\nRudolphland, LA 96191-3983', 'East Aydenburgh', 'Maryland', '14334', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(8, 8, '810-930-5288 x43085', '37959 Jacobi Rue\nMarkusborough, MA 00629-2366', 'Mercedestown', 'Idaho', '46246-9504', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(9, 9, '838.867.0016 x0938', '9755 Prosacco Union Suite 892\nEast Margaritastad, MA 65227', 'New Herbertview', 'Alabama', '33259', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(10, 10, '294.946.1598', '37411 Kiley Fields Apt. 818\nSouth Valentina, NC 68387', 'Lake Pattieville', 'Arkansas', '40925-9120', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(11, 12, '456454', 'fsadfsafas', 'recife', 'PE', '55898181', '2016-11-02 22:36:00', '2016-11-02 22:36:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cupoms`
--

CREATE TABLE `cupoms` (
  `id` int(11) NOT NULL,
  `code` varchar(150) NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `used` enum('0','1') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cupoms`
--

INSERT INTO `cupoms` (`id`, `code`, `value`, `used`, `created_at`, `updated_at`) VALUES
(1, '100', '25.85', '1', '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(2, '101', '85.87', '1', '2016-11-03 03:00:00', '2016-11-08 22:36:04'),
(3, '102', '152.58', '1', '2016-11-03 03:00:00', '2016-11-08 22:42:47'),
(4, '105', '658.87', '0', '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(5, '108', '598.78', '0', '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(6, '109', '54.75', '0', '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(7, '110', '25.45', '0', '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(8, '111', '36.25', '1', '2016-11-03 03:00:00', '2016-11-08 16:12:17'),
(9, '112', '12.14', '0', '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(10, '113', '24.15', '0', '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(11, 'fa10', '12.89', '0', '2016-11-03 16:34:47', '2016-11-03 16:34:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_10_31_130736_create_categories_table', 1),
('2016_10_31_140131_create_products_table', 1),
('2016_10_31_150248_create_clients_table', 1),
('2016_10_31_165639_create_orders_table', 1),
('2016_10_31_165820_create_order_items_table', 1),
('2014_04_24_110151_create_oauth_scopes_table', 2),
('2014_04_24_110304_create_oauth_grants_table', 2),
('2014_04_24_110403_create_oauth_grant_scopes_table', 2),
('2014_04_24_110459_create_oauth_clients_table', 2),
('2014_04_24_110557_create_oauth_client_endpoints_table', 2),
('2014_04_24_110705_create_oauth_client_scopes_table', 2),
('2014_04_24_110817_create_oauth_client_grants_table', 2),
('2014_04_24_111002_create_oauth_sessions_table', 2),
('2014_04_24_111109_create_oauth_session_scopes_table', 2),
('2014_04_24_111254_create_oauth_auth_codes_table', 2),
('2014_04_24_111403_create_oauth_auth_code_scopes_table', 2),
('2014_04_24_111518_create_oauth_access_tokens_table', 2),
('2014_04_24_111657_create_oauth_access_token_scopes_table', 2),
('2014_04_24_111810_create_oauth_refresh_tokens_table', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `session_id`, `expire_time`, `created_at`, `updated_at`) VALUES
('1pN0vvqlENlLYOZLV75Dc9gEmJtYlmg5cOePnlyb', 12, 1478610927, '2016-11-08 15:15:27', '2016-11-08 15:15:27'),
('3B6HUezQ9ztKEufXGn3lVhXRyeiUuhAZ9HJBsFVs', 9, 1478548281, '2016-11-07 21:51:21', '2016-11-07 21:51:21'),
('3Y3BA8jv0AhyOO7lt9lRFgeP5ZL4owfbwsbggOSe', 14, 1478611798, '2016-11-08 15:29:58', '2016-11-08 15:29:58'),
('59ok00GWLzAbZfjYoeAgfXioCbqaDepPHDnfJHik', 6, 1478541978, '2016-11-07 20:06:18', '2016-11-07 20:06:18'),
('EzTQoPXOB3oRLO1v2zSZW8LSmIeoLzYqLgbMCOgd', 11, 1478552206, '2016-11-07 22:56:46', '2016-11-07 22:56:46'),
('fWRqlg9r1WgcXXEeTxb56NIyMXKpZxxDZDHErbwc', 16, 1478616944, '2016-11-08 16:55:44', '2016-11-08 16:55:44'),
('JIqjiYlFhBDnEemNb8BVJjWh3Od77LH5b7GQ6tbO', 10, 1478550720, '2016-11-07 22:32:00', '2016-11-07 22:32:00'),
('keo1vWTCwpLHQtBbnNNiwHNbXhv96zQe68s2F6KO', 15, 1478613294, '2016-11-08 15:54:54', '2016-11-08 15:54:54'),
('ksjf7F9RakmHoOGoZzL5k050tur7Uo6cKKRtv7Uk', 13, 1478611534, '2016-11-08 15:25:34', '2016-11-08 15:25:34'),
('NSSYR5oTiMQuYPhYv3XEL8iz8AftXty9YP7Y3WYm', 17, 1478626712, '2016-11-08 19:38:32', '2016-11-08 19:38:32'),
('PvTHOxA4hRYBzMKZCsrp0A4IUKDOLebYNtT0SGos', 19, 1478634897, '2016-11-08 21:54:57', '2016-11-08 21:54:57'),
('qakIG4VKrcJ0ShpK12IbFxWL1AwSmuObq1qT12ze', 18, 1478631004, '2016-11-08 20:50:05', '2016-11-08 20:50:05'),
('qQuy4cU8UfofzCfB4VqqcgFcsBzxHKCkl8aCnf51', 20, 1478636670, '2016-11-08 22:24:30', '2016-11-08 22:24:30'),
('R8YB1oFOaOS5InLFG9mgyjqPuoGSTjZwu94FVDNA', 1, 1478529314, '2016-11-07 16:35:14', '2016-11-07 16:35:14'),
('rnNxM8tvQHE82AsBR6ZEAyplNSoIT48NRchtKn0b', 7, 1478542921, '2016-11-07 20:22:01', '2016-11-07 20:22:01'),
('Ru9eFIo3JsjEZxj3K3ZvSrSFr9kPEQWQFFsvbxFO', 2, 1478529810, '2016-11-07 16:43:30', '2016-11-07 16:43:30'),
('sOsXcab9PP0K3GaTXwKNt8A8LEBE0GoBMExn7b2m', 5, 1478541425, '2016-11-07 19:57:05', '2016-11-07 19:57:05'),
('uuiMPKGRDFDhQhKOOd1hCvVotKWcTbzFCDVLtGWz', 8, 1478544628, '2016-11-07 20:50:28', '2016-11-07 20:50:28'),
('VCMf2MTXorv1vNFEqFNxB0MIFJO9KplDxzMb6wPd', 4, 1478532743, '2016-11-07 17:32:23', '2016-11-07 17:32:23'),
('wqRnddBPAN51YymwYfsCi2VvJszxlIoPKRzPRmgj', 21, 1478698182, '2016-11-09 15:29:42', '2016-11-09 15:29:42'),
('ZnyEhFEu0NI4b06HP9CbzVBMfp6LG64kLQFdHFov', 3, 1478530797, '2016-11-07 16:59:57', '2016-11-07 16:59:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_access_token_scopes`
--

CREATE TABLE `oauth_access_token_scopes` (
  `id` int(10) UNSIGNED NOT NULL,
  `access_token_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `redirect_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_auth_code_scopes`
--

CREATE TABLE `oauth_auth_code_scopes` (
  `id` int(10) UNSIGNED NOT NULL,
  `auth_code_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `secret`, `name`, `created_at`, `updated_at`) VALUES
('appid01', 'secret', 'Meu App', '2016-11-07 03:00:00', '2016-11-07 03:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_client_endpoints`
--

CREATE TABLE `oauth_client_endpoints` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_client_grants`
--

CREATE TABLE `oauth_client_grants` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `grant_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_client_scopes`
--

CREATE TABLE `oauth_client_scopes` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_grants`
--

CREATE TABLE `oauth_grants` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_grant_scopes`
--

CREATE TABLE `oauth_grant_scopes` (
  `id` int(10) UNSIGNED NOT NULL,
  `grant_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `expire_time`, `created_at`, `updated_at`) VALUES
('QpZHRPndIYtDW2lIUA8EGTKYIXVpWMLLtihhaSlA', '1pN0vvqlENlLYOZLV75Dc9gEmJtYlmg5cOePnlyb', 1478643327, '2016-11-08 15:15:27', '2016-11-08 15:15:27'),
('sQyfYhVNxeLvTvHxoNoRKInyiGiPaFbf9og0ZC7r', '3B6HUezQ9ztKEufXGn3lVhXRyeiUuhAZ9HJBsFVs', 1478580681, '2016-11-07 21:51:21', '2016-11-07 21:51:21'),
('dI4j8ip9AJ9yR6fys5kR9N4TW84l9p5mOpyEsA7J', '3Y3BA8jv0AhyOO7lt9lRFgeP5ZL4owfbwsbggOSe', 1478644198, '2016-11-08 15:29:58', '2016-11-08 15:29:58'),
('CQDWhf6U9W8LQHrTpO1ZU7fHFSGrXkWjZIBIePQp', '59ok00GWLzAbZfjYoeAgfXioCbqaDepPHDnfJHik', 1478574378, '2016-11-07 20:06:19', '2016-11-07 20:06:19'),
('WrlgYN4JYq55ejOXwQwgopj05uXPsoIMo2LXKOJk', 'EzTQoPXOB3oRLO1v2zSZW8LSmIeoLzYqLgbMCOgd', 1478584606, '2016-11-07 22:56:46', '2016-11-07 22:56:46'),
('N6YoCIAE44kO6zVLZsQx1DSXkUfKV5Wx8ZRhuq7g', 'fWRqlg9r1WgcXXEeTxb56NIyMXKpZxxDZDHErbwc', 1478649344, '2016-11-08 16:55:44', '2016-11-08 16:55:44'),
('6dkiUropLmkzQAvUi4d7jmMHzk6EOwgOhtLs212y', 'JIqjiYlFhBDnEemNb8BVJjWh3Od77LH5b7GQ6tbO', 1478583120, '2016-11-07 22:32:00', '2016-11-07 22:32:00'),
('0g8fAzFOz72XznZIiv6MZrzaHA8IBlRmjGI5BFS1', 'keo1vWTCwpLHQtBbnNNiwHNbXhv96zQe68s2F6KO', 1478645694, '2016-11-08 15:54:54', '2016-11-08 15:54:54'),
('0a9btaVY1axkBFUOJMVmG8WWg5ZWDj0QiqlfigpN', 'ksjf7F9RakmHoOGoZzL5k050tur7Uo6cKKRtv7Uk', 1478643934, '2016-11-08 15:25:34', '2016-11-08 15:25:34'),
('7f20xS4wIO4vnaQKH1XJzp9U2gZDURkQkuAEQ3Aw', 'NSSYR5oTiMQuYPhYv3XEL8iz8AftXty9YP7Y3WYm', 1478659112, '2016-11-08 19:38:32', '2016-11-08 19:38:32'),
('Wv9GAAZWrYQfvhHKq2YNIT35IgJMeyV1ZJ1a0Q5h', 'PvTHOxA4hRYBzMKZCsrp0A4IUKDOLebYNtT0SGos', 1478667297, '2016-11-08 21:54:57', '2016-11-08 21:54:57'),
('v1qatFUwAb80JLddzrTkJsTURHFwKKEkqVkgtMWI', 'qakIG4VKrcJ0ShpK12IbFxWL1AwSmuObq1qT12ze', 1478663404, '2016-11-08 20:50:05', '2016-11-08 20:50:05'),
('6x5NhtjubEiAOVkSZhr6xNMIkaH8NDIE2gDHEjeO', 'qQuy4cU8UfofzCfB4VqqcgFcsBzxHKCkl8aCnf51', 1478669070, '2016-11-08 22:24:30', '2016-11-08 22:24:30'),
('gp8PPhzkWDXaUPAB1PDw1lp2SzqIW9JjJ0tbgW1M', 'rnNxM8tvQHE82AsBR6ZEAyplNSoIT48NRchtKn0b', 1478575321, '2016-11-07 20:22:01', '2016-11-07 20:22:01'),
('n3UmWiRbeDHJ2pwXm6IJcnWMinnGiSKRpMfNKkJW', 'Ru9eFIo3JsjEZxj3K3ZvSrSFr9kPEQWQFFsvbxFO', 1478562210, '2016-11-07 16:43:30', '2016-11-07 16:43:30'),
('AcCOpv82avp5e6KhpfmoBRvy8UunkT1Xa0JbqSWa', 'sOsXcab9PP0K3GaTXwKNt8A8LEBE0GoBMExn7b2m', 1478573825, '2016-11-07 19:57:05', '2016-11-07 19:57:05'),
('rzCeNFlCvVuevtDuhmxBIsZphuYCH49J9q2rSV9K', 'uuiMPKGRDFDhQhKOOd1hCvVotKWcTbzFCDVLtGWz', 1478577028, '2016-11-07 20:50:28', '2016-11-07 20:50:28'),
('Ujl52jImhCP2f8Ed9aXWhzMKvGhqyol4EAGH9tzg', 'VCMf2MTXorv1vNFEqFNxB0MIFJO9KplDxzMb6wPd', 1478565143, '2016-11-07 17:32:23', '2016-11-07 17:32:23'),
('nvS22P2sSk1ArKBhIftFdWpoig1QMudstzYlVClS', 'wqRnddBPAN51YymwYfsCi2VvJszxlIoPKRzPRmgj', 1478730582, '2016-11-09 15:29:42', '2016-11-09 15:29:42'),
('pKrfAYvtoH4ImNjmZUYQHgNj1n1c7Q6mHiaf61jH', 'ZnyEhFEu0NI4b06HP9CbzVBMfp6LG64kLQFdHFov', 1478563197, '2016-11-07 16:59:57', '2016-11-07 16:59:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_scopes`
--

CREATE TABLE `oauth_scopes` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_sessions`
--

CREATE TABLE `oauth_sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `owner_type` enum('client','user') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `owner_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_redirect_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `oauth_sessions`
--

INSERT INTO `oauth_sessions` (`id`, `client_id`, `owner_type`, `owner_id`, `client_redirect_uri`, `created_at`, `updated_at`) VALUES
(1, 'appid01', 'user', '11', NULL, '2016-11-07 16:35:14', '2016-11-07 16:35:14'),
(2, 'appid01', 'user', '11', NULL, '2016-11-07 16:39:56', '2016-11-07 16:39:56'),
(3, 'appid01', 'user', '11', NULL, '2016-11-07 16:59:57', '2016-11-07 16:59:57'),
(4, 'appid01', 'user', '12', NULL, '2016-11-07 17:32:23', '2016-11-07 17:32:23'),
(5, 'appid01', 'user', '12', NULL, '2016-11-07 19:57:05', '2016-11-07 19:57:05'),
(6, 'appid01', 'user', '13', NULL, '2016-11-07 20:06:18', '2016-11-07 20:06:18'),
(7, 'appid01', 'user', '12', NULL, '2016-11-07 20:22:01', '2016-11-07 20:22:01'),
(8, 'appid01', 'user', '12', NULL, '2016-11-07 20:50:28', '2016-11-07 20:50:28'),
(9, 'appid01', 'user', '12', NULL, '2016-11-07 21:51:21', '2016-11-07 21:51:21'),
(10, 'appid01', 'user', '13', NULL, '2016-11-07 22:32:00', '2016-11-07 22:32:00'),
(11, 'appid01', 'user', '13', NULL, '2016-11-07 22:56:46', '2016-11-07 22:56:46'),
(12, 'appid01', 'user', '13', NULL, '2016-11-08 15:15:27', '2016-11-08 15:15:27'),
(13, 'appid01', 'user', '13', NULL, '2016-11-08 15:25:34', '2016-11-08 15:25:34'),
(14, 'appid01', 'user', '13', NULL, '2016-11-08 15:29:58', '2016-11-08 15:29:58'),
(15, 'appid01', 'user', '12', NULL, '2016-11-08 15:54:54', '2016-11-08 15:54:54'),
(16, 'appid01', 'user', '12', NULL, '2016-11-08 16:55:44', '2016-11-08 16:55:44'),
(17, 'appid01', 'user', '12', NULL, '2016-11-08 19:38:32', '2016-11-08 19:38:32'),
(18, 'appid01', 'user', '12', NULL, '2016-11-08 20:50:04', '2016-11-08 20:50:04'),
(19, 'appid01', 'user', '12', NULL, '2016-11-08 21:54:57', '2016-11-08 21:54:57'),
(20, 'appid01', 'user', '12', NULL, '2016-11-08 22:24:30', '2016-11-08 22:24:30'),
(21, 'appid01', 'user', '13', NULL, '2016-11-09 15:29:42', '2016-11-09 15:29:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_session_scopes`
--

CREATE TABLE `oauth_session_scopes` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `user_deliveryman_id` int(10) UNSIGNED DEFAULT NULL,
  `cupom_id` int(11) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `orders`
--

INSERT INTO `orders` (`id`, `client_id`, `user_deliveryman_id`, `cupom_id`, `total`, `status`, `created_at`, `updated_at`) VALUES
(5, 1, 13, 1, '85.78', 1, '2016-11-03 03:00:00', '2016-11-08 15:36:13'),
(6, 2, 13, 2, '452.25', 0, '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(7, 3, 13, 3, '85.78', 0, '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(8, 4, 13, 4, '78.78', 0, '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(9, 11, 13, 11, '85.85', 0, '2016-11-04 03:00:00', '2016-11-04 03:00:00'),
(71, 11, NULL, 0, '96.00', 0, '2016-11-08 17:50:48', '2016-11-08 17:50:48'),
(72, 11, NULL, 0, '96.00', 0, '2016-11-08 22:26:52', '2016-11-08 22:26:52'),
(73, 11, NULL, 0, '96.00', 0, '2016-11-08 22:29:15', '2016-11-08 22:29:15'),
(74, 11, NULL, 0, '96.00', 0, '2016-11-08 22:32:29', '2016-11-08 22:32:29'),
(75, 11, NULL, 0, '96.00', 0, '2016-11-08 22:32:34', '2016-11-08 22:32:34'),
(76, 11, NULL, 0, '10.13', 0, '2016-11-08 22:36:04', '2016-11-08 22:36:04'),
(77, 11, NULL, 3, '-56.58', 0, '2016-11-08 22:42:48', '2016-11-08 22:42:48');

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `qtd` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `qtd`, `created_at`, `updated_at`) VALUES
(9, 1, 5, '77.47', 1, '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(10, 2, 5, '85.68', 1, '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(11, 6, 6, '56.58', 1, '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(12, 7, 6, '47.85', 1, '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(13, 10, 7, '47.58', 1, '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(14, 3, 7, '78.58', 1, '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(15, 12, 8, '52.26', 1, '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(16, 13, 8, '45.87', 1, '2016-11-03 03:00:00', '2016-11-03 03:00:00'),
(17, 5, 9, '85.69', 1, '2016-11-04 03:00:00', '2016-11-04 03:00:00'),
(25, 1, 71, '48.00', 2, '2016-11-08 17:50:48', '2016-11-08 17:50:48'),
(26, 1, 72, '48.00', 2, '2016-11-08 22:26:52', '2016-11-08 22:26:52'),
(27, 1, 73, '48.00', 2, '2016-11-08 22:29:15', '2016-11-08 22:29:15'),
(28, 1, 74, '48.00', 2, '2016-11-08 22:32:29', '2016-11-08 22:32:29'),
(29, 1, 75, '48.00', 2, '2016-11-08 22:32:34', '2016-11-08 22:32:34'),
(30, 1, 76, '48.00', 2, '2016-11-08 22:36:04', '2016-11-08 22:36:04'),
(31, 1, 77, '48.00', 2, '2016-11-08 22:42:48', '2016-11-08 22:42:48');

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'recusandae', 'Ipsam nihil quas debitis sed optio impedit dolores.', '48.00', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(2, 1, 'aliquam', 'Sit magnam blanditiis facilis iusto quis ut.', '11.00', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(3, 1, 'neque', 'Cupiditate est rerum totam doloremque cupiditate sed est aliquam.', '46.00', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(4, 1, 'fuga', 'Dicta aliquid officia quaerat neque voluptatem aut sit.', '24.00', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(5, 1, 'cumque', 'Rerum ut laudantium deserunt repellendus voluptas.', '21.00', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(6, 1, 'vitae', 'Dolorem perferendis exercitationem nisi.', '30.00', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(7, 2, 'officia', 'Quisquam assumenda sed et odio asperiores autem.', '32.00', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(8, 2, 'sit', 'Ut ad ab sunt iure sit asperiores.', '10.00', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(9, 2, 'eligendi', 'Voluptatem eum sint architecto sit sunt repudiandae doloremque.', '23.00', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(10, 2, 'ut', 'Sit cum quidem totam ut ullam dicta.', '24.00', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(11, 2, 'nesciunt', 'Magnam est doloremque consequuntur debitis laborum.', '24.00', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(12, 2, 'sit', 'Non accusamus voluptas laboriosam nam enim et.', '43.00', '2016-10-31 20:35:01', '2016-10-31 20:35:01'),
(13, 3, 'veniam', 'Maiores provident delectus sit ex praesentium vitae eius odit.', '49.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(14, 3, 'itaque', 'Qui repudiandae maxime quidem est rerum.', '28.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(15, 3, 'quos', 'Dolorem quasi sed qui eaque.', '49.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(16, 3, 'consequatur', 'Vitae nostrum quaerat ipsa et.', '33.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(17, 3, 'temporibus', 'Dolor quo quis itaque id et doloremque quod.', '45.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(18, 3, 'unde', 'Nihil quia totam dolorum dolore quasi.', '20.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(19, 4, 'accusantium', 'Id maiores dolore id illum velit deserunt.', '32.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(20, 4, 'odio', 'Est voluptatum deserunt sit ab qui corrupti.', '37.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(21, 4, 'temporibus', 'Quia quasi quod dolorum sequi.', '45.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(22, 4, 'adipisci', 'Quam et repudiandae aut pariatur dolore voluptas ratione occaecati.', '29.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(23, 4, 'repudiandae', 'Tempora praesentium sequi sequi magnam voluptatibus corrupti.', '35.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(24, 4, 'soluta', 'Sit accusantium ab possimus.', '45.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(25, 5, 'nesciunt', 'Error voluptatem voluptatem atque quis iste quae delectus.', '29.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(26, 5, 'labore', 'Odio cupiditate a aut qui aut vitae hic.', '43.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(27, 5, 'eligendi', 'Voluptates possimus sint voluptate.', '13.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(28, 5, 'magnam', 'Quo molestias voluptatem sit error et earum.', '14.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(29, 5, 'et', 'Excepturi magni voluptates eligendi doloremque at neque inventore suscipit.', '13.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(30, 5, 'quia', 'Fuga qui eligendi blanditiis aut repellat.', '40.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(31, 6, 'praesentium', 'Aut eaque sunt accusamus at enim aperiam.', '40.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(32, 6, 'ut', 'Delectus itaque sit reiciendis dolor qui et.', '26.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(33, 6, 'tempora', 'Dignissimos maiores et in natus velit magni.', '14.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(34, 6, 'eum', 'Recusandae dolore dignissimos et.', '32.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(35, 6, 'sequi', 'Cumque dolorem a dolorem nulla reprehenderit magnam.', '14.00', '2016-10-31 20:35:02', '2016-10-31 20:35:02'),
(36, 6, 'ipsam', 'Voluptatem impedit nisi doloremque quas.', '29.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(37, 7, 'sit', 'Doloremque sit quam quia blanditiis velit.', '29.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(38, 7, 'quis', 'Et est amet in ut dolorem dignissimos.', '16.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(39, 7, 'voluptatem', 'Fugit omnis vitae omnis debitis non sequi.', '21.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(40, 7, 'architecto', 'Et quia qui id.', '45.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(41, 7, 'praesentium', 'Adipisci quo laboriosam eius dolores nesciunt sed sequi.', '18.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(42, 7, 'a', 'Dicta in eum hic.', '14.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(43, 8, 'dolores', 'Id saepe molestiae soluta labore.', '40.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(44, 8, 'et', 'Ipsam atque veritatis vel corporis cupiditate maxime aut.', '24.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(45, 8, 'distinctio', 'Est eos temporibus perferendis vitae qui.', '15.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(46, 8, 'et', 'Numquam doloremque sequi consequatur tempora illum autem quia.', '14.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(47, 8, 'corporis', 'Laudantium dolorem saepe sint ducimus et nostrum sit.', '48.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(48, 8, 'ducimus', 'Aut tenetur aut adipisci.', '12.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(49, 9, 'repellendus', 'Dicta reprehenderit et fugiat eum magnam tempora.', '20.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(50, 9, 'eos', 'Et dignissimos expedita voluptatem possimus reprehenderit in voluptatem voluptatem.', '17.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(51, 9, 'similique', 'Facilis officia atque cum.', '46.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(52, 9, 'voluptatem', 'Iste harum cumque ab quasi.', '32.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(53, 9, 'sed', 'Architecto iusto labore deleniti nostrum.', '21.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(54, 9, 'dignissimos', 'Est nostrum cum sit ipsa repudiandae numquam iusto dignissimos.', '38.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(55, 10, 'autem', 'Sunt atque qui perferendis.', '46.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(56, 10, 'quidem', 'Hic suscipit quam temporibus blanditiis nostrum quia.', '42.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(57, 10, 'rerum', 'Rerum adipisci exercitationem reiciendis sit deserunt sed ea quidem.', '29.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(58, 10, 'laudantium', 'Nesciunt sequi dolorum est voluptatem fugiat quia.', '37.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(59, 10, 'aliquam', 'Sapiente dolor dolore totam est asperiores dolor.', '40.00', '2016-10-31 20:35:03', '2016-10-31 20:35:03'),
(60, 10, 'vel', 'Alias voluptas facere animi officia sed provident.', '40.00', '2016-10-31 20:35:04', '2016-10-31 20:35:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dock Von XX', 'yundt.stephany@example.org', '$2y$10$vEZqj8xljSqzqYEcPp48WO2srfCGcUw3yl1a8aHMAd.Z.TVax5mL6', 'client', 'bJAXdz0oRS', '2016-10-31 20:35:00', '2016-11-02 21:48:01'),
(2, 'Alessia Pfannerstill DVM', 'fhirthe@example.org', '$2y$10$nd1MAkK.nuliZfFPwDjUH.3jwg6so9VK3pHGyFapjU5Bj9w0eMDmq', 'client', 'Nn5XGkmHB0', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(3, 'Humberto McGlynn PhD', 'becker.florence@example.org', '$2y$10$CAx3zw20nH1aD8qOsX/6lOWmXTf33f/YBlRJRVjSxAWG7HKWMDKaC', 'client', 'L4hhd1qlfa', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(4, 'Norbert Schulist', 'ujacobson@example.com', '$2y$10$UGHb6itr7wbvKqYKcsvzI.4BF14MBaY6KFHuEpLq1Dyt8tUonitwa', 'client', 'cgP4UYmwGG', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(5, 'Mrs. Oleta Cole DDS', 'bahringer.baron@example.org', '$2y$10$8cbJZP.RFFt88IRIpp4AquILVFjOjYG5crpbOXO/Jf9qbOPw9C2hm', 'client', '0g9W1rHXoH', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(6, 'Missouri Buckridge', 'keichmann@example.com', '$2y$10$79J9qeVLyjg0./oS4JN7nuB4cpkjCv/isOp9JzUj/YNqbaJ94DhW.', 'client', 'G7LHpIIE6m', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(7, 'Miss Destiney Wyman DVM', 'feeney.marion@example.net', '$2y$10$X73qmtjnNLepjWe.QUkUQ.dCLkPDbsZ.DmYi9VYYWGwgTbHlGSSEi', 'client', 'oOf6scmmOA', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(8, 'Howell Heaney III', 'smorissette@example.net', '$2y$10$PMH8ykyP8E198JI/j0WKtOTqx2bExh7zLKsgpRDgFaSOJe1kxqbYO', 'client', 'ohEcpkVLv1', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(9, 'Hazle Erdman', 'znitzsche@example.com', '$2y$10$wc/kxFd4DHLmw/fdYakGhOK6w2/v2N6sPAv7a9PpUqxhcy5xnd0ie', 'client', 'NQ3rcst00C', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(10, 'Dr. Tony Barrows', 'reilly85@example.net', '$2y$10$6NM6xzLNzRcwumCVvALYGegtUamCuihtqgWVCd3xd93CTg/aFabUe', 'client', 'A37K5ScdJ3', '2016-10-31 20:35:00', '2016-10-31 20:35:00'),
(11, 'Admin', 'admin@user.com', '$2y$10$Gr9GFWKbB9gpl4Hz8WLMC.Lww9I1J8xYr0k0FqoSFkxAfjGCCoo16', 'admin', 'zFd6GLBWhLxW3U1VAxEFiwUHTELMB4k5fgRoI3QkH0HZgEROzQT6gawXgbH9', '2016-11-02 17:41:28', '2016-11-08 17:32:59'),
(12, 'Flávio ', 'flavio@email.com', '$2y$10$mhwSv9rWaewDa6vlVo7pau1hnchaQKmIz/jfbWryyhMYq0ezTz2H6', 'client', 'mG92DDKgxLghZMnlKqcGlRLeEXKbbTfhV0SOHgdG10NcgMfASNC5xYi5NzYw', '2016-11-02 22:36:00', '2016-11-08 17:38:25'),
(13, 'Jhon', 'jhon@user.com', '$2y$10$WFGD/fNDdy9KU..3jrGZaugaIYL62HpdjXwthMXtgNuc3WuHN78lm', 'deliveryman', NULL, '2016-11-03 03:00:14', '2016-11-03 03:00:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clients_user_id_foreign` (`user_id`);

--
-- Indexes for table `cupoms`
--
ALTER TABLE `cupoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth_access_tokens_id_session_id_unique` (`id`,`session_id`),
  ADD KEY `oauth_access_tokens_session_id_index` (`session_id`);

--
-- Indexes for table `oauth_access_token_scopes`
--
ALTER TABLE `oauth_access_token_scopes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_token_scopes_access_token_id_index` (`access_token_id`),
  ADD KEY `oauth_access_token_scopes_scope_id_index` (`scope_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_session_id_index` (`session_id`);

--
-- Indexes for table `oauth_auth_code_scopes`
--
ALTER TABLE `oauth_auth_code_scopes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_code_scopes_auth_code_id_index` (`auth_code_id`),
  ADD KEY `oauth_auth_code_scopes_scope_id_index` (`scope_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth_clients_id_secret_unique` (`id`,`secret`);

--
-- Indexes for table `oauth_client_endpoints`
--
ALTER TABLE `oauth_client_endpoints`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth_client_endpoints_client_id_redirect_uri_unique` (`client_id`,`redirect_uri`);

--
-- Indexes for table `oauth_client_grants`
--
ALTER TABLE `oauth_client_grants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_client_grants_client_id_index` (`client_id`),
  ADD KEY `oauth_client_grants_grant_id_index` (`grant_id`);

--
-- Indexes for table `oauth_client_scopes`
--
ALTER TABLE `oauth_client_scopes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_client_scopes_client_id_index` (`client_id`),
  ADD KEY `oauth_client_scopes_scope_id_index` (`scope_id`);

--
-- Indexes for table `oauth_grants`
--
ALTER TABLE `oauth_grants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_grant_scopes`
--
ALTER TABLE `oauth_grant_scopes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_grant_scopes_grant_id_index` (`grant_id`),
  ADD KEY `oauth_grant_scopes_scope_id_index` (`scope_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`access_token_id`),
  ADD UNIQUE KEY `oauth_refresh_tokens_id_unique` (`id`);

--
-- Indexes for table `oauth_scopes`
--
ALTER TABLE `oauth_scopes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_sessions`
--
ALTER TABLE `oauth_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_sessions_client_id_owner_type_owner_id_index` (`client_id`,`owner_type`,`owner_id`);

--
-- Indexes for table `oauth_session_scopes`
--
ALTER TABLE `oauth_session_scopes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_session_scopes_session_id_index` (`session_id`),
  ADD KEY `oauth_session_scopes_scope_id_index` (`scope_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_client_id_foreign` (`client_id`),
  ADD KEY `orders_user_deliveryman_id_foreign` (`user_deliveryman_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `cupoms`
--
ALTER TABLE `cupoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oauth_access_token_scopes`
--
ALTER TABLE `oauth_access_token_scopes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_auth_code_scopes`
--
ALTER TABLE `oauth_auth_code_scopes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_client_endpoints`
--
ALTER TABLE `oauth_client_endpoints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_client_grants`
--
ALTER TABLE `oauth_client_grants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_client_scopes`
--
ALTER TABLE `oauth_client_scopes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_grant_scopes`
--
ALTER TABLE `oauth_grant_scopes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_sessions`
--
ALTER TABLE `oauth_sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `oauth_session_scopes`
--
ALTER TABLE `oauth_session_scopes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD CONSTRAINT `oauth_access_tokens_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `oauth_access_token_scopes`
--
ALTER TABLE `oauth_access_token_scopes`
  ADD CONSTRAINT `oauth_access_token_scopes_access_token_id_foreign` FOREIGN KEY (`access_token_id`) REFERENCES `oauth_access_tokens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_access_token_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD CONSTRAINT `oauth_auth_codes_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `oauth_auth_code_scopes`
--
ALTER TABLE `oauth_auth_code_scopes`
  ADD CONSTRAINT `oauth_auth_code_scopes_auth_code_id_foreign` FOREIGN KEY (`auth_code_id`) REFERENCES `oauth_auth_codes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_auth_code_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `oauth_client_endpoints`
--
ALTER TABLE `oauth_client_endpoints`
  ADD CONSTRAINT `oauth_client_endpoints_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `oauth_client_grants`
--
ALTER TABLE `oauth_client_grants`
  ADD CONSTRAINT `oauth_client_grants_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `oauth_client_grants_grant_id_foreign` FOREIGN KEY (`grant_id`) REFERENCES `oauth_grants` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `oauth_client_scopes`
--
ALTER TABLE `oauth_client_scopes`
  ADD CONSTRAINT `oauth_client_scopes_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_client_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `oauth_grant_scopes`
--
ALTER TABLE `oauth_grant_scopes`
  ADD CONSTRAINT `oauth_grant_scopes_grant_id_foreign` FOREIGN KEY (`grant_id`) REFERENCES `oauth_grants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_grant_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD CONSTRAINT `oauth_refresh_tokens_access_token_id_foreign` FOREIGN KEY (`access_token_id`) REFERENCES `oauth_access_tokens` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `oauth_sessions`
--
ALTER TABLE `oauth_sessions`
  ADD CONSTRAINT `oauth_sessions_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `oauth_session_scopes`
--
ALTER TABLE `oauth_session_scopes`
  ADD CONSTRAINT `oauth_session_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oauth_session_scopes_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_user_deliveryman_id_foreign` FOREIGN KEY (`user_deliveryman_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
