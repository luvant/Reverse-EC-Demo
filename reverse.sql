-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2018 at 11:09 PM
-- Server version: 5.7.21
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reverse`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `name`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Imbracaminte', '', '2018-09-02 16:10:20', '2018-09-02 16:10:20'),
(4, 'Incaltaminte', '', '2018-09-02 16:10:33', '2018-09-02 16:10:33'),
(5, 'Accesorii', '', '2018-09-02 16:11:07', '2018-09-02 16:11:07'),
(6, 'Bebelusi', '', '2018-09-02 16:11:15', '2018-09-02 16:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `country` varchar(90) NOT NULL,
  `city` varchar(90) NOT NULL,
  `address` varchar(90) NOT NULL,
  `telefon` varchar(90) NOT NULL,
  `message` text NOT NULL,
  `id_order` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `name`, `country`, `city`, `address`, `telefon`, `message`, `id_order`, `updated_at`, `created_at`) VALUES
(2, 'sadasdsaf asfasfasfasfasf', 'Red', 'asfasfasf', 'afsafasf, afs', '0037369562779', 'fasf', 7, '2018-08-30 04:25:32', '2018-08-30 04:25:32'),
(3, 'sadasdsaf asfasfasfasfasf', 'Red', 'asfasfasf', 'afsafasf, afs', '0037369562779', '', 8, '2018-08-30 04:29:50', '2018-08-30 04:29:50'),
(4, 'sadasdsaf asfasfasfasfasf', 'Red', 'asfasfasf', 'afsafasf, afs', '0037369562779', '', 9, '2018-08-30 04:33:01', '2018-08-30 04:33:01'),
(5, 'sadasdsaf asfasfasfasfasf', 'Red', 'asfasfasf', 'afsafasf, afs', '0037369562779', '', 10, '2018-08-30 04:35:05', '2018-08-30 04:35:05'),
(6, 'sadasdsaf asfasfasfasfasf', 'Red', 'asfasfasf', 'afsafasf, afs', '0037369562779', '', 11, '2018-08-30 04:35:55', '2018-08-30 04:35:55'),
(7, 'sadasdsaf asfasfasfasfasf', 'Red', 'asfasfasf', 'afsafasf, afs', '0037369562779', '', 12, '2018-08-30 04:37:20', '2018-08-30 04:37:20'),
(8, 'sadasdsaf asfasfasfasfasf', 'Red', 'asfasfasf', 'afsafasf, afs', '0037369562779', '', 13, '2018-08-30 04:39:56', '2018-08-30 04:39:56'),
(9, 'sadasdsaf asfasfasfasfasf', 'Red', 'asfasfasf', 'afsafasf, afs', '0037369562779', '', 14, '2018-08-30 04:44:28', '2018-08-30 04:44:28'),
(10, 'Ho Trung', 'Red', 'Chisinau', 'Chisinau', '54654654', '', 15, '2018-09-04 04:39:51', '2018-09-04 04:39:51'),
(11, 'sadasdsaf asfasfasfasfasf', 'Choose your country', 'asfasfasf', 'afsafasf, afs', '', '', 16, '2018-09-04 11:36:33', '2018-09-04 11:36:33'),
(12, 'sadasdsaf asfasfasfasfasf', 'Choose your country', 'asfasfasf', 'afsafasf, afs', '', '', 17, '2018-09-04 11:36:54', '2018-09-04 11:36:54'),
(13, 'sadasdsaf asfasfasfasfasf', 'Choose your country', 'asfasfasf', 'afsafasf, afs', '', '', 18, '2018-09-04 14:43:46', '2018-09-04 14:43:46'),
(14, 'sadasdsaf asfasfasfasfasf', 'Choose your country', 'asfasfasf', 'afsafasf, afs', '', '', 19, '2018-09-04 18:10:43', '2018-09-04 18:10:43'),
(15, 'sadasdsaf asfasfasfasfasf', 'Choose your country', 'asfasfasf', 'afsafasf, afs', '', '', 20, '2018-09-04 18:12:22', '2018-09-04 18:12:22'),
(16, 'sadasdsaf asfasfasfasfasf', 'Choose your country', 'asfasfasf', 'afsafasf, afs', '', '', 21, '2018-09-04 18:13:08', '2018-09-04 18:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `lot`
--

CREATE TABLE `lot` (
  `id_lot` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `stoc` int(11) NOT NULL,
  `size` varchar(10) NOT NULL,
  `color` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `total` double(20,3) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `status` varchar(10) NOT NULL,
  `permis` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_order`, `id_client`, `total`, `created_at`, `updated_at`, `status`, `permis`) VALUES
(21, 5, 73.000, '2018-09-04 18:13:08', '2018-09-04 18:13:08', '', 0),
(20, 5, 73.000, '2018-09-04 18:12:22', '2018-09-04 18:12:22', '', 0),
(19, 5, 73.000, '2018-09-04 18:10:43', '2018-09-04 18:10:43', '', 0),
(18, 5, 59.000, '2018-09-04 14:43:46', '2018-09-04 14:43:46', '', 0),
(17, 5, 39.000, '2018-09-04 11:36:54', '2018-09-04 11:36:54', '', 0),
(16, 5, 39.000, '2018-09-04 11:36:33', '2018-09-04 11:36:33', '', 0),
(15, 5, 325.000, '2018-09-04 04:39:51', '2018-09-04 04:39:51', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id_order_item` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` double(20,3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id_order_item`, `id_order`, `id_product`, `qty`, `subtotal`) VALUES
(35, 21, 159, 1, 14.000),
(34, 21, 95, 1, 59.000),
(33, 20, 159, 1, 14.000),
(32, 20, 95, 1, 59.000),
(31, 19, 159, 1, 14.000),
(30, 19, 95, 1, 59.000),
(29, 18, 95, 1, 59.000),
(28, 17, 60, 1, 39.000),
(27, 16, 60, 1, 39.000),
(26, 15, 99, 1, 59.000),
(25, 15, 112, 1, 110.000),
(24, 15, 86, 1, 39.000),
(23, 15, 10, 3, 117.000);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` double NOT NULL,
  `id_subcategorie` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT '0',
  `image` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `image_link` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `name`, `price`, `id_subcategorie`, `tax`, `image`, `description`, `created_at`, `updated_at`, `image_link`) VALUES
(42, '                      Camasa cu gluga Kenvelo                                                       ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/351023-630-788/IMG_8616.jpg?v=636632555338770000'),
(41, '                      Camasa Lara in carouri                                                        ', 59, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/316723-630-788/IMG_1193.jpg?v=636492637223930000'),
(5, '                      Camasa Lara in carouri                                                        ', 59, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/316723-630-788/IMG_1193.jpg?v=636492637223930000'),
(6, '                      Camasa cu gluga Kenvelo                                                       ', 39, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/351023-630-788/IMG_8616.jpg?v=636632555338770000'),
(7, '                      Camasa Kenvelo albastra in carouri                                            ', 39, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/351087-630-788/IMG_8758.jpg?v=636632601297070000'),
(8, '                      Camasa Tania din bumbac                                                       ', 39, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/315799-630-788/IMG_6221.jpg?v=636489178739000000'),
(9, '                      Camasa Gatria regular fit                                                     ', 39, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/301505-630-788/IMG_5549.jpg?v=636458238764330000'),
(10, '                      Camasa Kenvelo cu maneca lunga                                                ', 39, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/361201-630-788/IMG_2696.jpg?v=636705256783500000'),
(11, '                      Bluza Harold cu maneca lunga                                                  ', 19, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/361210-630-788/IMG_2712.jpg?v=636705260901930000'),
(12, '                      Camasa rosie Kenvelo din bumbac                                               ', 39, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/351182-630-788/IMG_8394.jpg?v=636632703222930000'),
(13, '                      Camasa Kenvelo cu maneca scurta                                               ', 39, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/351326-630-788/IMG_8447.jpg?v=636633421189500000'),
(14, '                      Camasa Kenvelo albastra cu maneca scurta                                      ', 39, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/351081-630-788/IMG_8750.jpg?v=636632600212330000'),
(15, '                      Camasa Kenvelo albastra in carouri                                            ', 39, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/350968-630-788/IMG_8483.jpg?v=636632469317130000'),
(16, '                      Camasa din bumbac Kenvelo cu maneca scurta                                    ', 39, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/351002-630-788/IMG_8561.jpg?v=636632542412470000'),
(17, '                      Bluza T-Bone din bumbac cu model brodat                                       ', 39, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/329715-630-788/IMG_1199.jpg?v=636546320356570000'),
(18, '                      Camasa Dalila din bumbac                                                      ', 59, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/315426-630-788/IMG_3218.jpg?v=636488440950930000'),
(19, '                      Camasa Taliman din bumbac                                                     ', 39, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/308175-630-788/IMG_5231.jpg?v=636471069203700000'),
(20, '                      Camasa Vega din bumbac                                                        ', 39, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/312177-630-788/IMG_8897.jpg?v=636481400843400000'),
(21, '                      Camasa Adha regular fit                                                       ', 39, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/323817-630-788/IMG_9891.jpg?v=636528005421670000'),
(22, '                      Camasa Nihal cu maneca lunga                                                  ', 39, 4, 0, '', '', '2018-09-02 17:14:03', '2018-09-02 17:14:03', 'https://miniprix.vteximg.com.br/arquivos/ids/226752-630-788/IMG_3081.jpg?v=636442589800000000'),
(23, '                      Camasa cu maneca scurta                                                       ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/343963-630-788/IMG_3463.jpg?v=636601603728570000'),
(24, '                      Camasa cu maneca lunga                                                        ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/340088-630-788/IMG_7850.jpg?v=636583314157200000'),
(25, '                      Camasa cu maneca scurta                                                       ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/343960-630-788/IMG_3449.jpg?v=636601603017270000'),
(26, '                      Bluza Davvie din bumbac                                                       ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/361782-630-788/IMG_3571.jpg?v=636709591867470000'),
(27, '                      Bluza Caycce din bumbac                                                       ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/361791-630-788/IMG_3588.jpg?v=636709598382730000'),
(28, '                      Camasa Carrlo din bumbac                                                      ', 59, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/358032-630-788/IMG_0659.jpg?v=636680077483630000'),
(29, '                      Camasa albastra Kenvelo din bumbac                                            ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/351185-630-788/IMG_8404.jpg?v=636632704066200000'),
(30, '                      Camasa Kenvelo albastra in carouri                                            ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/351176-630-788/IMG_8385.jpg?v=636632701448970000'),
(31, '                      Camasa rosie Kenvelo cu maneca scurta                                         ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/351320-630-788/IMG_8433.jpg?v=636633419868600000'),
(32, '                      Camasa Kenvelo din bumbac                                                     ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/351044-630-788/IMG_8664.jpg?v=636632561996830000'),
(33, '                      Camasa Kenvelo din bumbac                                                     ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/351093-630-788/IMG_8774.jpg?v=636632602718300000'),
(34, '                      Camasa Kenvelo cu maneca scurta                                               ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/351090-630-788/IMG_8766.jpg?v=636632602199600000'),
(35, '                      Camasa slim Kenvelo in carouri                                                ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/350972-630-788/IMG_8497.jpg?v=636632470590000000'),
(36, '                      Camasa Chaos uni din bumbac                                                   ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/350925-630-788/IMG_8289.jpg?v=636631835066300000'),
(37, '                      Camasa Pery cu maneca scurta                                                  ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/350913-630-788/IMG_8113.jpg?v=636631805556200000'),
(38, '                      Camasa Chaos cu imprimeu                                                      ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/350931-630-788/IMG_8304.jpg?v=636631843416000000'),
(39, '                      Camasa Deion cu imprimeu floral                                               ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/350870-630-788/IMG_8273.jpg?v=636631769452230000'),
(40, '                      Camasa Chaos din bumbac                                                       ', 39, 4, 0, '', '', '2018-09-02 17:14:04', '2018-09-02 17:14:04', 'https://miniprix.vteximg.com.br/arquivos/ids/350928-630-788/IMG_8293.jpg?v=636631838926330000'),
(43, '                      Camasa Kenvelo albastra in carouri                                            ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/351087-630-788/IMG_8758.jpg?v=636632601297070000'),
(44, '                      Camasa Tania din bumbac                                                       ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/315799-630-788/IMG_6221.jpg?v=636489178739000000'),
(45, '                      Camasa Gatria regular fit                                                     ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/301505-630-788/IMG_5549.jpg?v=636458238764330000'),
(46, '                      Camasa Kenvelo cu maneca lunga                                                ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/361201-630-788/IMG_2696.jpg?v=636705256783500000'),
(47, '                      Bluza Harold cu maneca lunga                                                  ', 19, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/361210-630-788/IMG_2712.jpg?v=636705260901930000'),
(48, '                      Camasa rosie Kenvelo din bumbac                                               ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/351182-630-788/IMG_8394.jpg?v=636632703222930000'),
(49, '                      Camasa Kenvelo cu maneca scurta                                               ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/351326-630-788/IMG_8447.jpg?v=636633421189500000'),
(50, '                      Camasa Kenvelo albastra cu maneca scurta                                      ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/351081-630-788/IMG_8750.jpg?v=636632600212330000'),
(51, '                      Camasa Kenvelo albastra in carouri                                            ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/350968-630-788/IMG_8483.jpg?v=636632469317130000'),
(52, '                      Camasa din bumbac Kenvelo cu maneca scurta                                    ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/351002-630-788/IMG_8561.jpg?v=636632542412470000'),
(53, '                      Bluza T-Bone din bumbac cu model brodat                                       ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/329715-630-788/IMG_1199.jpg?v=636546320356570000'),
(54, '                      Camasa Dalila din bumbac                                                      ', 59, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/315426-630-788/IMG_3218.jpg?v=636488440950930000'),
(55, '                      Camasa Taliman din bumbac                                                     ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/308175-630-788/IMG_5231.jpg?v=636471069203700000'),
(56, '                      Camasa Vega din bumbac                                                        ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/312177-630-788/IMG_8897.jpg?v=636481400843400000'),
(57, '                      Camasa Adha regular fit                                                       ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/323817-630-788/IMG_9891.jpg?v=636528005421670000'),
(58, '                      Camasa Nihal cu maneca lunga                                                  ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/226752-630-788/IMG_3081.jpg?v=636442589800000000'),
(59, '                      Camasa cu maneca scurta                                                       ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/343963-630-788/IMG_3463.jpg?v=636601603728570000'),
(60, '                      Camasa cu maneca lunga                                                        ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/340088-630-788/IMG_7850.jpg?v=636583314157200000'),
(61, '                      Camasa cu maneca scurta                                                       ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/343960-630-788/IMG_3449.jpg?v=636601603017270000'),
(62, '                      Bluza Davvie din bumbac                                                       ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/361782-630-788/IMG_3571.jpg?v=636709591867470000'),
(63, '                      Bluza Caycce din bumbac                                                       ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/361791-630-788/IMG_3588.jpg?v=636709598382730000'),
(64, '                      Camasa Carrlo din bumbac                                                      ', 59, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/358032-630-788/IMG_0659.jpg?v=636680077483630000'),
(65, '                      Camasa albastra Kenvelo din bumbac                                            ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/351185-630-788/IMG_8404.jpg?v=636632704066200000'),
(66, '                      Camasa Kenvelo albastra in carouri                                            ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/351176-630-788/IMG_8385.jpg?v=636632701448970000'),
(67, '                      Camasa rosie Kenvelo cu maneca scurta                                         ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/351320-630-788/IMG_8433.jpg?v=636633419868600000'),
(68, '                      Camasa Kenvelo din bumbac                                                     ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/351044-630-788/IMG_8664.jpg?v=636632561996830000'),
(69, '                      Camasa Kenvelo din bumbac                                                     ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/351093-630-788/IMG_8774.jpg?v=636632602718300000'),
(70, '                      Camasa Kenvelo cu maneca scurta                                               ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/351090-630-788/IMG_8766.jpg?v=636632602199600000'),
(71, '                      Camasa slim Kenvelo in carouri                                                ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/350972-630-788/IMG_8497.jpg?v=636632470590000000'),
(72, '                      Camasa Chaos uni din bumbac                                                   ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/350925-630-788/IMG_8289.jpg?v=636631835066300000'),
(73, '                      Camasa Pery cu maneca scurta                                                  ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/350913-630-788/IMG_8113.jpg?v=636631805556200000'),
(74, '                      Camasa Chaos cu imprimeu                                                      ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/350931-630-788/IMG_8304.jpg?v=636631843416000000'),
(75, '                      Camasa Deion cu imprimeu floral                                               ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/350870-630-788/IMG_8273.jpg?v=636631769452230000'),
(76, '                      Camasa Chaos din bumbac                                                       ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/350928-630-788/IMG_8293.jpg?v=636631838926330000'),
(77, '                      Camasa Arden cu maneca scurta                                                 ', 29, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/340409-630-788/IMG_9442.jpg?v=636584266020600000'),
(78, '                      Bluza T-Bone uni                                                           ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/329804-630-788/IMG_1356.jpg?v=636546359634700000'),
(79, '                      Bluza Abbot cu maneca scurta                                                  ', 29, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/321159-630-788/IMG_2690.jpg?v=636513306384970000'),
(80, '                      Camasa Celia din bumbac                                                       ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/316502-630-788/IMG_0638.jpg?v=636491941615270000'),
(81, '                      Bluza Estela uni                                                           ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/316705-630-788/IMG_1165.jpg?v=636492631943770000'),
(82, '                      Camasa Azra cu maneca lunga                                                   ', 49, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/285512-630-788/IMG_9746.jpg?v=636449610253400000'),
(83, '                      Camasa Alya din bumbac                                                        ', 19, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/304628-630-788/IMG_0066.jpg?v=636464947466500000'),
(84, '                      Camasa Enif cu maneca lunga                                                   ', 9, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/289318-630-788/IMG_9246.jpg?v=636450500749400000'),
(85, '                      Camasa Mallik din bumbac                                                      ', 59, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/358076-630-788/IMG_0687.jpg?v=636680187495930000'),
(86, '                      Camasa rosie Kenvelo in carouri                                               ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/351188-630-788/IMG_8411.jpg?v=636632704684670000'),
(87, '                      Camasa Kenvelo in carouri                                                     ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/351253-630-788/IMG_8470.jpg?v=636633312058900000'),
(88, '                      Camasa in carouri Kenvelo din bumbac                                          ', 39, 4, 0, '', '', '2018-09-02 17:35:12', '2018-09-02 17:35:12', 'https://miniprix.vteximg.com.br/arquivos/ids/351020-630-788/IMG_8607.jpg?v=636632553043470000'),
(89, '                      Jacheta Devon cu fermoar                                                      ', 59, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/353742-630-788/IMG_1056.jpg?v=636650632770700000'),
(90, '                      Jacheta Kasia cu nasturi                                                      ', 110, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/316670-630-788/IMG_1044.jpg?v=636492615662470000'),
(91, '                      Sacou Gatria cu buzunare                                                      ', 110, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/284896-630-788/IMG_9629.jpg?v=636449596408400000'),
(92, '                      Sacou Adha din bumbac                                                         ', 79, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/292977-630-788/IMG_0039.jpg?v=636450518984900000'),
(93, '                      Jacheta Alcott cu doua fete                                                   ', 69, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/213095-630-788/IMG_8648.jpg?v=636442490638630000'),
(94, '                      Jacheta Devvon cu fermoar si capse                                            ', 59, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/353734-630-788/IMG_1039.jpg?v=636650628891630000'),
(95, '                      Jacheta Deyon cu fermoar si capse                                             ', 59, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/353762-630-788/IMG_1127.jpg?v=636650640062430000'),
(96, '                      Jacheta Liam cu fermoar si capse                                              ', 59, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/353778-630-788/IMG_1170.jpg?v=636650659879530000'),
(97, '                      Geaca Corinthia cu gluga                                                      ', 89, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/326282-630-788/IMG_2978.jpg?v=636535107190230000'),
(98, '                      Geaca Navi Kenvelo de ski                                                     ', 220, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/308458-630-788/IMG_5670.jpg?v=636471210515970000'),
(99, '                      Cardigan Atria tricotat                                                       ', 59, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/293403-630-788/IMG_0052.jpg?v=636450521353000000'),
(100, '                      Sacou Cygni cu nasturi                                                        ', 79, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/285037-630-788/IMG_9700.jpg?v=636449599340800000'),
(101, '                      Sacou Enif cu nasturi                                                         ', 110, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/285049-630-788/IMG_9635.jpg?v=636449599759270000'),
(102, '                      Sacou Mirra clasic                                                           ', 89, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/284920-630-788/IMG_9309.jpg?v=636449596894600000'),
(103, '                      Sacou Lucida                                                           ', 79, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/323997-630-788/IMG_0500.jpg?v=636528232184200000'),
(104, '                      Sacou Atria din bumbac                                                        ', 79, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/284936-630-788/IMG_9686.jpg?v=636449597219600000'),
(105, '                      Sacou Peacok clasic                                                           ', 128, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/292740-630-788/IMG_0170.jpg?v=636450517584900000'),
(106, '                      Sacou Azra din lana                                                           ', 110, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/284689-630-788/IMG_9804.jpg?v=636449591191600000'),
(107, '                      Sacou elegant                                                           ', 110, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/199244-630-788/IMG_8180.jpg?v=636441052377870000'),
(108, '                      Jacheta Abbot cu fermoar                                                      ', 59, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/353750-630-788/IMG_1083.jpg?v=636650635612770000'),
(109, '                      Jacheta Deyon cu fermoar                                                      ', 59, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/353754-630-788/IMG_1100.jpg?v=636650637144000000'),
(110, '                      Jacheta Devon cu fermoar si capse                                             ', 59, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/353746-630-788/IMG_1071.jpg?v=636650633975370000'),
(111, '                      Geaca Jiao cu gluga detasabila                                                ', 79, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/325966-630-788/IMG_2384.jpg?v=636534189639430000'),
(112, '                      Palton Beidd cu nasturi                                                       ', 110, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/305223-630-788/IMG_0414.jpg?v=636465194370130000'),
(113, '                      Sacou Baten                                                           ', 110, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/284956-630-788/IMG_9494.jpg?v=636449597656970000'),
(114, '                      Sacou Peacok                                                           ', 89, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/292862-630-788/IMG_0164.jpg?v=636450518313230000'),
(115, '                      Sacou Azha in carouri                                                         ', 89, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/292815-630-788/IMG_0108.jpg?v=636450518044430000'),
(116, '                      Jacheta tricotata                                                           ', 79, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/201263-630-788/IMG_7902.jpg?v=636441103809070000'),
(117, '                      Jacheta Arden cu fermoar                                                      ', 59, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/353710-630-788/IMG_0974.jpg?v=636650599262870000'),
(118, '                      Jacheta Liam cu fermoar                                                       ', 59, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/353758-630-788/IMG_1111.jpg?v=636650638445930000'),
(119, '                      Jacheta Kenvelo cu fermoar                                                    ', 49, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/361213-630-788/IMG_2720.jpg?v=636705262377930000'),
(120, '                      Jacheta Kenvelo cu capse                                                      ', 49, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/361409-630-788/IMG_2804.jpg?v=636705980981630000'),
(121, '                      Vesta Camile de costum                                                        ', 39, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/333024-630-788/IMG_7757.jpg?v=636558303405370000'),
(122, '                      Vesta Emma de costum                                                          ', 39, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/333062-630-788/IMG_7874.jpg?v=636558405839630000'),
(123, '                      Vesta Bright Bespoke de costum                                                ', 39, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/333077-630-788/IMG_7902.jpg?v=636558413834230000'),
(124, '                      Vesta Bright Bespoke de costum cu nasturi                                     ', 39, 6, 0, '', '', '2018-09-02 18:24:35', '2018-09-02 18:24:35', 'https://miniprix.vteximg.com.br/arquivos/ids/333092-630-788/IMG_7923.jpg?v=636558420220430000'),
(125, '                      Cravata Dover                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/342181-630-788/IMG_8676.jpg?v=636591987750330000'),
(126, '                      Cravata Tania                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324033-630-788/IMG_9699.jpg?v=636528887300700000'),
(127, '                      Cravata Dabih                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324040-630-788/IMG_9704.jpg?v=636528890016600000'),
(128, '                      Cravata Sarya                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324050-630-788/IMG_9746.jpg?v=636528893045430000'),
(129, '                      Cravata Maasym                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324008-630-788/IMG_9588.jpg?v=636528856270730000'),
(130, '                      Cravata Hadyr                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324098-630-788/IMG_9876.jpg?v=636528906409430000'),
(131, '                      Cravata Kuma                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324093-630-788/IMG_9860.jpg?v=636528904929700000'),
(132, '                      Cravata Barnard                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324148-630-788/IMG_9997.jpg?v=636528928300600000'),
(133, '                      Cravata Azaleh                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324039-630-788/IMG_9702.jpg?v=636528889610930000'),
(134, '                      Cravata Megrez                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324048-630-788/IMG_9744.jpg?v=636528892621030000'),
(135, '                      Cravata Alya                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324122-630-788/IMG_9935.jpg?v=636528912843100000'),
(136, '                      Cravata Askella                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324031-630-788/IMG_9695.jpg?v=636528886009800000'),
(137, '                      Cravata Lucida                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324006-630-788/IMG_9585.jpg?v=636528855629200000'),
(138, '                      Cravata Phact                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324019-630-788/IMG_9627.jpg?v=636528878901770000'),
(139, '                      Cravata Nihal                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324071-630-788/IMG_9789.jpg?v=636528901630430000'),
(140, '                      Cravata Kuma                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324055-630-788/IMG_9766.jpg?v=636528895133430000'),
(141, '                      Cravata Mizar                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324096-630-788/IMG_9874.jpg?v=636528905530130000'),
(142, '                      Cravata Kruger                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324004-630-788/IMG_9582.jpg?v=636528854869430000'),
(143, '                      Cravata Alsafi                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324125-630-788/IMG_9953.jpg?v=636528913506100000'),
(144, '                      Cravata Jabbah                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324105-630-788/IMG_9908.jpg?v=636528908375230000'),
(145, '                      Cravata Merga                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324016-630-788/IMG_9601.jpg?v=636528877410400000'),
(146, '                      Cravata Sham                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324076-630-788/IMG_9806.jpg?v=636528902322600000'),
(147, '                      Cravata Maya                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324003-630-788/IMG_9579.jpg?v=636528851620800000'),
(148, '                      Cravata Tureis                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324042-630-788/IMG_9708.jpg?v=636528890550700000'),
(149, '                      Cravata Merope                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324021-630-788/IMG_9642.jpg?v=636528879515370000'),
(150, '                      Cravata Nunki                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324023-630-788/IMG_9644.jpg?v=636528880955430000'),
(151, '                      Cravata Enif                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:27', '2018-09-04 15:23:27', 'https://miniprix.vteximg.com.br/arquivos/ids/324087-630-788/IMG_9856.jpg?v=636528904500200000'),
(152, '                      Cravata Syrma                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324061-630-788/IMG_9784.jpg?v=636528896721400000'),
(153, '                      Cravata Murzim                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324018-630-788/IMG_9625.jpg?v=636528878371100000'),
(154, '                      Cravata Azha                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324134-630-788/IMG_9977.jpg?v=636528915850030000'),
(155, '                      Cravata Mira                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324082-630-788/IMG_9850.jpg?v=636528903466900000'),
(156, '                      Cravata Ankaa                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324118-630-788/IMG_9932.jpg?v=636528912227030000'),
(157, '                      Cravata Maasym                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324014-630-788/IMG_9597.jpg?v=636528876918700000'),
(158, '                      Cravata Heze                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324109-630-788/IMG_9911.jpg?v=636528910316730000'),
(159, '                      Cravata Marri                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324010-630-788/IMG_9592.jpg?v=636528856795900000'),
(160, '                      Cravata Sarin                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324078-630-788/IMG_9822.jpg?v=636528903091530000'),
(161, '                      Cravata Menkar                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324085-630-788/IMG_9853.jpg?v=636528903869070000'),
(162, '                      Cravata Ross                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324052-630-788/IMG_9750.jpg?v=636528894546800000'),
(163, '                      Cravata Beid                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324045-630-788/IMG_9723.jpg?v=636528891074200000'),
(164, '                      Cravata Libra                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324000-630-788/IMG_0014.jpg?v=636528850321830000'),
(165, '                      Cravata Kochab                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324013-630-788/IMG_9594.jpg?v=636528875886230000'),
(166, '                      Cravata Rigel                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324025-630-788/IMG_9660.jpg?v=636528881911100000'),
(167, '                      Cravata Grafias                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324027-630-788/IMG_9676.jpg?v=636528883610330000'),
(168, '                      Cravata Lira                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324133-630-788/IMG_9975.jpg?v=636528915310270000'),
(169, '                      Cravata Skat                                                           ', 14, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/324047-630-788/IMG_9741.jpg?v=636528891697200000'),
(170, '                      Cravata slim Alcott                                                           ', 9, 52, 0, '', '', '2018-09-04 15:23:28', '2018-09-04 15:23:28', 'https://miniprix.vteximg.com.br/arquivos/ids/284596-630-788/IMG_5318.jpg?v=636446941590030000');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categorie`
--

CREATE TABLE `sub_categorie` (
  `id_subcategorie` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categorie`
--

INSERT INTO `sub_categorie` (`id_subcategorie`, `name`, `id_categorie`, `created_at`, `updated_at`, `description`) VALUES
(1, 'Men shoes', 1, NULL, NULL, ''),
(2, 'Men hats', 1, NULL, NULL, ''),
(4, 'Bluze &amp; Camasi', 3, '2018-09-02 16:37:47', '2018-09-02 16:37:47', ''),
(5, 'Fuste', 3, '2018-09-02 16:37:47', '2018-09-02 16:37:47', ''),
(6, 'Jachete &amp; Paltoane', 3, '2018-09-02 16:37:47', '2018-09-02 16:37:47', ''),
(7, 'Lenjerie', 3, '2018-09-02 16:37:47', '2018-09-02 16:37:47', ''),
(8, 'Jeans', 3, '2018-09-02 16:37:47', '2018-09-02 16:37:47', ''),
(9, 'Mamici', 3, '2018-09-02 16:37:47', '2018-09-02 16:37:47', ''),
(10, 'Pantaloni', 3, '2018-09-02 16:37:47', '2018-09-02 16:37:47', ''),
(11, 'Pantaloni Scurti', 3, '2018-09-02 16:37:47', '2018-09-02 16:37:47', ''),
(12, 'Pulovere', 3, '2018-09-02 16:37:47', '2018-09-02 16:37:47', ''),
(13, 'Rochii', 3, '2018-09-02 16:37:47', '2018-09-02 16:37:47', ''),
(14, 'Salopete', 3, '2018-09-02 16:37:47', '2018-09-02 16:37:47', ''),
(15, 'Sport', 3, '2018-09-02 16:37:47', '2018-09-02 16:37:47', ''),
(16, 'Topuri &amp; Tricouri', 3, '2018-09-02 16:37:47', '2018-09-02 16:37:47', ''),
(17, 'Plaja &amp; Piscina', 3, '2018-09-02 16:37:47', '2018-09-02 16:37:47', ''),
(26, 'Incaltaminte Sport', 4, '2018-09-02 16:41:11', '2018-09-02 16:41:11', ''),
(25, 'Ghete &amp; Cizme', 4, '2018-09-02 16:41:11', '2018-09-02 16:41:11', ''),
(24, 'Incaltaminte', 4, '2018-09-02 16:41:11', '2018-09-02 16:41:11', ''),
(27, 'Pantofi', 4, '2018-09-02 16:41:11', '2018-09-02 16:41:11', ''),
(28, 'Papuci', 4, '2018-09-02 16:41:11', '2018-09-02 16:41:11', ''),
(29, 'Sandale', 4, '2018-09-02 16:41:11', '2018-09-02 16:41:11', ''),
(47, 'Accesorii de par', 5, '2018-09-02 16:42:14', '2018-09-02 16:42:14', ''),
(48, 'Accesorii diverse', 5, '2018-09-02 16:42:14', '2018-09-02 16:42:14', ''),
(49, 'Bijuterii', 5, '2018-09-02 16:42:14', '2018-09-02 16:42:14', ''),
(50, 'Caciuli', 5, '2018-09-02 16:42:14', '2018-09-02 16:42:14', ''),
(51, 'Casti', 5, '2018-09-02 16:42:14', '2018-09-02 16:42:14', ''),
(52, 'Cravate &amp; Papioane', 5, '2018-09-02 16:42:14', '2018-09-02 16:42:14', ''),
(53, 'Curele &amp; Bretele', 5, '2018-09-02 16:42:14', '2018-09-02 16:42:14', ''),
(54, 'Esarfe &amp; Fulare', 5, '2018-09-02 16:42:14', '2018-09-02 16:42:14', ''),
(55, 'Genti', 5, '2018-09-02 16:42:14', '2018-09-02 16:42:14', ''),
(56, 'Manusi', 5, '2018-09-02 16:42:14', '2018-09-02 16:42:14', ''),
(57, 'Ochelari de soare', 5, '2018-09-02 16:42:14', '2018-09-02 16:42:14', ''),
(58, 'Palarii &amp; Sepci', 5, '2018-09-02 16:42:14', '2018-09-02 16:42:14', ''),
(59, 'Portofele', 5, '2018-09-02 16:42:14', '2018-09-02 16:42:14', ''),
(60, 'Portfarduri', 5, '2018-09-02 16:42:14', '2018-09-02 16:42:14', ''),
(61, 'Umbrele', 5, '2018-09-02 16:42:14', '2018-09-02 16:42:14', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rule` int(11) NOT NULL,
  `telefon` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `occupation` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(33) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `rule`, `telefon`, `country`, `city`, `occupation`, `birthday`) VALUES
(1, 'Trung', 'trung.ng.ho@gmail.com', '$2y$10$M7oFLCS171a6X7oe6FOvC.IzikTgGcZ5Xu56Ym/iznd2gQUuh6cT.', 'BPUb92abflGBDGbS1HceN34vJk4vcyqBxdaIlCy3rStYtqYhLMUJ3GQU9SUa', '2018-07-04 16:58:54', '2018-08-31 13:41:01', 10, '', '', '', '', ''),
(2, 'Concac', 'hoangclub@gmail.com', '$2y$10$Otn//2QzSXTAuTjHB5qYj.IfvecsFFa65r2VjDORwepDH/TlRxoFy', 'UGyWDG2Rz2FiIWfFFDL1PjeuV1LbOUwqfP3nr6OrVxUqJxLXGb7z69JiObbB', '2018-07-15 16:07:31', '2018-07-15 16:10:38', 0, '', '', '', '', ''),
(3, 'Bui Hong Nhung', 'nhungbn96@gmail.com', '$2y$10$rymHLrsioAd76h578t6nAeT/kfUN4vsFqqBASYOUlgRapgbf7KmES', 'G925vwDrlIS69Pg4iQeGv53ELh8OIYBCtam3wPWqPzuh4x1OmYFkuLTTfXl6', '2018-07-23 08:29:25', '2018-07-23 08:34:02', 0, '', '', '', '', ''),
(4, 'trung nh', 'trung.nhocksock.tk@gmail.com', '$2y$10$fJphMtl1c6OWZC7PLylL8eHMMITNvHqjwGs2ojb0VqdcSrVcUvQjy', NULL, '2018-08-29 11:59:00', '2018-08-29 11:59:00', 0, '', '', '', '', ''),
(5, 'Trung Ho Ngoc', 'trung.ng.luv@gmail.com', '$2y$10$TQlRYaYoHh4/9fclSmmAC.to6rzPuk.3Eb8GSfuhGdD8/Av5Vhtcm', 'TAtTp3BckM4LrRDi1SaZxOwcBg8uP7ZgZiwVnpd70NrECXWyhKVzjQYtlOmN', '2018-08-29 18:01:38', '2018-09-04 19:02:42', 0, '3213213123', '', '', 'fasf', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`),
  ADD KEY `id_order` (`id_order`);

--
-- Indexes for table `lot`
--
ALTER TABLE `lot`
  ADD PRIMARY KEY (`id_lot`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_client` (`id_client`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id_order_item`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_order` (`id_order`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `sub_categorie`
--
ALTER TABLE `sub_categorie`
  ADD PRIMARY KEY (`id_subcategorie`),
  ADD KEY `id_categorie` (`id_categorie`);

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
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `lot`
--
ALTER TABLE `lot`
  MODIFY `id_lot` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id_order_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `sub_categorie`
--
ALTER TABLE `sub_categorie`
  MODIFY `id_subcategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
