-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 04:28 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'USB', '2020-07-02 01:57:15', '2020-07-15 07:53:26'),
(2, 'SSD', '2020-07-02 01:57:15', '2020-07-15 07:53:41'),
(3, 'RAM Máy Tính', '2020-07-02 01:57:15', '2020-07-15 07:54:03'),
(4, 'HDD', '2020-07-02 01:57:15', '2020-07-15 07:54:41'),
(5, 'Camera Hành Trình', '2020-07-02 01:57:15', '2020-07-15 07:55:20'),
(6, 'Thẻ Nhớ', '2020-07-15 07:58:58', '2020-07-15 07:58:58'),
(8, 'Miss Ciara Osinski PhD', '2020-07-21 01:11:38', '2020-07-21 01:11:38'),
(9, 'Emely Carter', '2020-07-21 01:11:38', '2020-07-21 01:11:38'),
(10, 'Gail Torphy', '2020-07-21 01:11:38', '2020-07-21 01:11:38'),
(11, 'Jessyca Brakus', '2020-07-21 01:11:38', '2020-07-21 01:11:38'),
(12, 'Flavio Runolfsdottir', '2020-07-21 01:11:38', '2020-07-21 01:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_05_08_003252_create_product_brands_table', 1),
(2, '2020_05_08_003614_create_users_table', 1),
(3, '2020_05_31_043547_create_guest_table', 1),
(4, '2020_05_31_043646_create_categories_table', 1),
(5, '2020_05_31_052630_create_orders_table', 1),
(6, '2020_05_31_054034_create_products_table', 1),
(7, '2020_05_31_054130_create_order_details_table', 1),
(8, '2020_10_22_010825_create_jobs_table', 2),
(9, '2020_10_22_010907_create_failed_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `quality` int(11) NOT NULL,
  `total` double NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_brands_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `image`, `price`, `product_brands_id`, `categories_id`, `created_at`, `updated_at`) VALUES
(1, 'Thẻ Nhớ MicroSDHC SanDisk 32GB', 'Chính hãng, bảo hành 12 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/micro-sandisk-extreme-a1-32gb-02.jpg?v=1587628523700', '215000', 1, 6, '2020-07-02 01:57:15', '2020-07-15 08:07:35'),
(2, 'USB 3.0 Kingston DataTraverler 32 GB', 'Bảo hành 12 tháng', 'https://bizweb.dktcdn.net/100/329/122/products/dt-100-g3-32-01.jpg?v=1539429394210', '99000', 4, 1, '2020-07-02 01:57:16', '2020-07-15 08:11:35'),
(3, 'SSD Intel 540s Series M.2 2280 Sata III 180GB', 'Bảo hành 12 tháng', 'https://bizweb.dktcdn.net/100/329/122/products/intel-540s-m2-01.jpg?v=1564040726077', '550000', 5, 2, '2020-07-02 01:57:16', '2020-07-15 08:12:30'),
(4, 'Ram PC Corsair Vengeance RGB Pro 8GB', 'Bảo hành 24 tháng', 'https://bizweb.dktcdn.net/100/329/122/products/vengeance-rgb-pro-cmw8gx4m1d3000c16-01.jpg?v=1593592524773', '1090000', 6, 3, '2020-07-02 01:57:16', '2020-07-15 08:13:59'),
(5, 'HDD Seagate BarraCuda 1TB 3.5 inch SATA III', 'Bảo hành 24 tháng', 'https://bizweb.dktcdn.net/100/329/122/products/seagate-barracuda-3-5-1tb-1.jpg?v=1587461144060', '1000000', 8, 4, '2020-07-02 01:57:16', '2020-07-15 08:29:30'),
(6, 'Camera hành trình GoPro HERO8 Black CHDHX-801-RW', 'Bảo hành 12 tháng', 'https://bizweb.dktcdn.net/100/329/122/products/gopro-hero8-black-gift.jpg?v=1594207087450', '7150000', 13, 5, '2020-07-02 01:57:16', '2020-07-15 08:31:03'),
(8, 'USB 3.0 SanDisk Ultra Flair CZ73 16GB', 'Chính hãng, bảo hành 12 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/sandisk-ultra-flair-cz73-10.jpg?v=1539674978377', '105000', 1, 1, '2020-07-02 01:57:16', '2020-07-15 19:02:05'),
(9, 'USB 3.0 SanDisk Ultra SDCZ48 16GB', 'Chính hãng, bảo hành 12 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/sandisk-cz48-01.jpg?v=1539344879710', '105000', 1, 1, '2020-07-02 01:57:16', '2020-07-15 19:03:19'),
(10, 'USB 3.0 Kingston DataTraverler 100 G3 64', 'Chính hãng, bảo hành 12 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/dt-100-g3-64-01.jpg?v=1539429620897', '189000', 4, 1, '2020-07-02 01:57:16', '2020-07-15 19:04:48'),
(11, 'SSD Kingston A400 SATA 3 120GB', 'Chính hãng, bảo hành 36 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/a400-01.jpg?v=1541129390597', '550000', 4, 2, '2020-07-02 01:57:16', '2020-07-15 19:06:30'),
(12, 'SSD Kingston UV500 3D-NAND mSATA SATA III 120GB', 'Chính hãng, bảo hành 36 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/suv500-msata-01.jpg?v=1539341168857', '750000', 4, 2, '2020-07-02 01:57:16', '2020-07-15 19:07:48'),
(13, 'SSD Intel 545s Series M.2 2280 Sata III 256GB', 'Chính hãng, bảo hành 36 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/intel-545s-m2-01.jpg?v=1579168140357', '990000', 5, 2, '2020-07-02 01:57:16', '2020-07-15 19:08:58'),
(14, 'SSD Samsung 970 EVO Plus PCIe NVMe V-NAND M.2 2280 250GB', 'Chính hãng, bảo hành 36 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/970-evo-plus-250gb-03.jpg?v=1548230801343', '1650000', 2, 2, '2020-07-02 01:57:16', '2020-07-15 19:10:06'),
(15, 'Ram Corsair Vengeance DDR3 4GB Bus 1600', 'Chính hãng, bảo hành 24 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/vengeance-ddr3-laptop-01.jpg?v=1552985880960', '630000', 6, 3, '2020-07-02 01:57:16', '2020-07-15 19:13:58'),
(16, 'Ram Corsair DDR3L 8GB Bus 1600', 'Chính hãng, bảo hành 24 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/ramcorsairddr3lvalueselect.jpg?v=1536332140013', '970000', 6, 3, '2020-07-02 01:57:16', '2020-07-15 19:16:26'),
(17, 'Ram Laptop Samsung DDR4 4GB Bus 2400MHz', 'Chính hãng, bảo hành 24 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/m471a5244cb0-crc-01.jpg?v=1593687680597', '495000', 2, 3, '2020-07-02 01:57:16', '2020-07-15 19:19:05'),
(18, 'Ram Laptop Kingston DDR4 4GB Bus 2400', 'Chính hãng, bảo hành 24 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/kvr-ddr4-2400-4gb-01.jpg?v=1541407058667', '450000', 4, 3, '2020-07-02 01:57:16', '2020-07-15 19:22:07'),
(19, 'Ram PC Corsair Vengeance LPX 16GB 3000MHz DDR4', 'Chính hãng, bảo hành 24 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/corsair-ddr4-2400-bl-00-2595cc2c-a677-4c61-9a2d-92a8d645ad7f-67987cf4-8af8-4b48-869e-1f39e2dbe419.jpg?v=1580815993020', '1630000', 6, 3, '2020-07-02 01:57:16', '2020-07-15 19:24:39'),
(21, 'Ram PC Corsair Vengeance RGB Pro 16GB 3000Mhz DDR4', 'Chính hãng, bảo hành 24 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/vengeance-rgb-pro-cmw8gx4m1d3000c16-01-02876ae3-419a-4ebe-b836-378f83887e67.jpg?v=1594193450377', '1850000', 6, 3, '2020-07-02 01:57:16', '2020-07-15 19:29:43'),
(22, 'HDD WD Blue 1TB 3.5 inch SATA III 64MB', 'Chính hãng, bảo hành 12 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/wd10ezex-e3ac8513-5f2c-4593-821f-440263249073.jpg?v=1573548462117', '980000', 7, 4, '2020-07-02 01:57:16', '2020-07-15 20:58:21'),
(23, 'HDD WD Blue 2TB 3.5 inch SATA III 256MB', 'Chính hãng, bảo hành 12 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/wd20ezaz-b18900bc-7562-4628-9d76-2f81adafd2ff.jpg?v=1573548513170', '1390000', 7, 4, '2020-07-02 01:57:16', '2020-07-15 20:59:44'),
(24, 'HDD WD Purple 2TB 3.5 inch SATA III 64MB', 'Chính hãng, bảo hành 12 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/wd-purple-2tb.jpg?v=1573906151767', '1900000', 7, 4, '2020-07-02 01:57:16', '2020-07-15 21:00:34'),
(26, 'Camera hành trình GoPro MAX CHDHZ-201-RW', 'Chính hãng, bảo hành 24 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/gopro-max-gift.jpg?v=1574153296037', '11300000', 13, 5, '2020-07-02 01:57:16', '2020-07-15 21:02:43'),
(51, 'Thẻ Nhớ MicroSDHC SanDisk Ultra 16GB', 'Chính hãng, bảo hành 12 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/micro-sandisk-ultra-533x-16gb-01.jpg?v=1539428240847', '85000', 1, 6, '2020-07-15 21:06:56', '2020-07-15 21:06:56'),
(52, 'Thẻ nhớ MicroSDHC SanDisk Ultra A1 32GB', 'Chính hãng, bảo hành 12 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/micro-ultra-a1-32-03.jpg?v=1566362739570', '130000', 1, 6, '2020-07-15 21:09:40', '2020-07-15 21:09:40'),
(53, 'Thẻ nhớ SDHC SanDisk Extreme U3 V30 600X 32GB', 'Chính hãng, bảo hành 12 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/sd-extreme600x-v30-032-01.jpg?v=1577349700503', '200000', 1, 6, '2020-07-15 21:10:31', '2020-07-15 21:10:31'),
(54, 'Thẻ Nhớ MicroSDXC Samsung EVO Plus U3 512GB', 'Chính hãng, bảo hành 12 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/evoplus2017-512-03.jpg?v=1591085168170', '1990000', 2, 6, '2020-07-15 21:11:39', '2020-07-15 21:11:39'),
(55, 'Thẻ Nhớ MicroSDXC Samsung EVO Plus U3 256GB', 'Chính hãng, bảo hành 12 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/evoplus2017-256-03.jpg?v=1550660520347', '860000', 2, 6, '2020-07-15 21:13:25', '2020-07-15 21:13:25'),
(56, 'Thẻ Nhớ MicroSDHC Kingston Canvas Select Plus 256GB', 'Chính hãng, bảo hành 12 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/sdcs2-256gb-01.jpg?v=1594012951387', '860000', 4, 6, '2020-07-15 21:14:41', '2020-07-15 21:14:41'),
(57, 'Thẻ nhớ MicroSDHC Kingston Canvas Select 16GB', 'Chính hãng, bảo hành 12 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/kingston-microsd-80mb-16-01.jpg?v=1592192981170', '79000', 4, 6, '2020-07-15 21:15:18', '2020-07-15 21:15:18'),
(58, 'Thẻ Nhớ MicroSDHC Kingston Canvas Select Plus 32GB', 'Chính hãng, bảo hành 12 tháng.', 'https://bizweb.dktcdn.net/100/329/122/products/sdcs2-32gb-01.jpg?v=1575521874480', '105000', 4, 6, '2020-07-15 21:15:49', '2020-07-16 00:18:46'),
(60, 'Amina Pacocha', 'Quae maiores unde similique voluptas in. Ex laudantium voluptatum omnis eum dignissimos.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '6', 16, 9, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(61, 'Irma Terry Sr.', 'Sit vel voluptatem laboriosam perspiciatis. Reprehenderit veniam non omnis ratione. Et aut quo tempore et sed praesentium. Eos nihil nulla eveniet autem.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '8', 2, 10, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(62, 'Miss Onie Frami', 'Possimus est magni similique vero quia qui. Saepe non vel deserunt ut. Illum vel similique non ut voluptas laudantium omnis. Fugiat omnis voluptatem distinctio praesentium magni a ut eveniet.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '1', 19, 12, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(63, 'Lexus Gusikowski MD', 'Iure impedit dolorem ipsum magnam et. Delectus quia consequatur itaque cupiditate rerum nulla qui ullam. Molestias dolor est dolore cumque sit. Ex culpa cupiditate occaecati quaerat non laborum.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '8', 2, 1, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(64, 'Shaniya Lakin', 'Quia atque minus et cumque perferendis velit molestias officia. Eos ullam eligendi voluptate et est quia ut. Qui accusamus commodi ut qui maxime dolor minima. Beatae sunt est ut cumque quos.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '9', 16, 9, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(65, 'Trey Emard', 'Enim tenetur dolores nihil voluptas harum. Tempora deleniti odit inventore voluptates eaque blanditiis. Natus dolorem optio et temporibus inventore non.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '2', 2, 1, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(66, 'Theodore Bins', 'Repudiandae qui porro quia omnis. Quo et quia nobis corporis architecto. Vel amet accusamus sit. Qui asperiores minima eos. Debitis ad voluptatem dolorem consequatur omnis nihil et.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '5', 3, 1, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(67, 'Aniyah Vandervort', 'Temporibus et molestiae perferendis recusandae voluptas ipsa adipisci vel. Optio quae rem eum esse. Amet ullam in enim id blanditiis tenetur iure. In est minus dolorum deserunt nobis quaerat.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '9', 4, 2, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(68, 'Rogelio Marks', 'Natus eos laborum ducimus quia soluta molestiae. Accusamus ab fuga a possimus qui. Repellendus dignissimos excepturi ipsa. Est iusto et soluta magni et.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '2', 19, 9, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(69, 'Christian Leffler', 'Itaque laboriosam voluptatibus accusamus et ut. Recusandae porro reprehenderit eos et dignissimos pariatur est. Est dolor ipsam tempora in libero.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '2', 16, 4, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(70, 'Rosetta Toy', 'Et sapiente soluta aut vel omnis suscipit recusandae. Porro aut mollitia omnis eaque asperiores. Natus esse adipisci mollitia et perspiciatis rerum.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '4', 8, 8, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(71, 'Mallie Douglas DVM', 'Deleniti laborum ipsum voluptas. Porro dolores nostrum quo quia facere maxime.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '8', 19, 3, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(72, 'Cleora Dickinson', 'Voluptatem sit earum vero. Necessitatibus inventore nulla ab excepturi molestias. Est corporis eum illo repudiandae omnis quaerat consectetur facere. Ex autem voluptates sint et.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '6', 16, 6, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(73, 'Rylan D\'Amore', 'Ipsam non itaque reiciendis enim omnis in. Necessitatibus molestias labore rerum ullam. Totam sapiente occaecati accusantium est et explicabo. Est accusamus nulla quia odio ut omnis necessitatibus.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '7', 13, 4, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(74, 'Dr. Monserrat Johnston', 'Dolor quod architecto ut illo odio. Architecto qui accusantium aut voluptatum nihil.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '3', 3, 1, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(75, 'Mr. Cullen Ryan Jr.', 'At quae ipsam laudantium recusandae autem. Ratione sapiente beatae sint qui. Reiciendis mollitia doloribus ratione quo dolores quam. Accusantium voluptates atque qui fugiat cum quia quod.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '1', 13, 12, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(76, 'Mabelle Aufderhar V', 'Praesentium quibusdam id nobis quam. Quisquam est est illo distinctio eos. Quisquam exercitationem harum ut velit. Eum est ex est dolores atque. Pariatur id consequuntur dolores optio consectetur.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '3', 6, 9, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(77, 'Mrs. Julia Crooks PhD', 'Earum sequi officiis error voluptates similique. Rerum harum quisquam quo ducimus quo. Nihil distinctio ut accusantium et. Adipisci commodi doloremque enim et.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '7', 17, 12, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(78, 'Marielle Mills V', 'Est dolorem ut perferendis sit qui ea magnam. Eos fuga eius est neque nobis minima. Minus sit illo neque et rerum. Est quia libero aut omnis.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '4', 3, 4, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(79, 'Dr. Elwyn Dibbert', 'Eos aut quia facilis. Natus aut temporibus autem ipsam excepturi. Et in repudiandae et. Id at voluptates excepturi.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '2', 4, 9, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(80, 'Caleigh Cummings', 'Consequuntur sit nihil consequuntur alias quo sit possimus. Qui et qui aut. Natus sint in impedit sequi. Culpa quae provident delectus laboriosam sunt.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '7', 8, 10, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(81, 'Miss Chasity Daniel V', 'Exercitationem nulla quia aliquid. Fugit ratione error dignissimos cumque. Vitae quia voluptatibus sunt illo et enim voluptatem.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '4', 4, 3, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(82, 'Summer Mertz', 'Doloremque quo dignissimos pariatur inventore sint animi iure. Animi eaque non deleniti saepe inventore magni dignissimos.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '2', 7, 1, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(83, 'Levi Hoppe', 'Velit ut sit quaerat itaque consequatur. Ad ut veniam natus doloribus. Consequatur consequatur suscipit consequatur sequi maiores dolorum. Consequatur quae fuga minima quas temporibus ut quia.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '8', 17, 8, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(84, 'Ms. Angelina Franecki DDS', 'Occaecati accusantium architecto omnis quo quis nulla aperiam. Error consequuntur commodi ut repellendus repellat. Similique velit qui a quo.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '7', 8, 12, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(85, 'Alvina Berge', 'Accusantium odit beatae minima voluptatibus. Iure iusto iste architecto quia qui asperiores cumque. Vitae quae in veniam minus qui ut dicta.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '2', 4, 6, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(86, 'Hazel Stroman', 'Non sint aut debitis illo. Corporis sed fugit excepturi vitae ullam veritatis molestiae. Et voluptatum dolor ratione omnis.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '8', 3, 9, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(87, 'Mrs. Amanda Powlowski III', 'Ullam unde repudiandae dolorem omnis fuga impedit. Nihil nihil quis necessitatibus eius ad. Deserunt ut culpa ex aperiam voluptas. Ut porro alias sit. Autem provident perspiciatis et.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '5', 3, 12, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(88, 'Mavis Thompson', 'Quia quis dolor et dolores dolorum voluptates velit tempora. Ab ut illo illum et amet. Eaque sunt non dolorem sapiente sed repellendus. Sed eligendi numquam voluptates dolor quia error.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '7', 4, 2, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(89, 'Miss Leola Collins PhD', 'Voluptatem illum similique animi totam explicabo autem quas. Adipisci officiis velit est.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '9', 7, 12, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(90, 'Tate Pagac', 'Occaecati illo libero voluptatem. Ut veritatis quis commodi enim ea assumenda eveniet. Eum et magnam tempore quae officiis voluptatem nemo.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '1', 18, 5, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(91, 'Neva Boyer', 'Accusamus sapiente autem accusantium quia dolorem. Quis ut dolores nulla qui. Odio aut quis alias. Tenetur quo laudantium illo qui consequatur reiciendis.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '1', 6, 9, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(92, 'Maryam Lowe II', 'Animi quo et occaecati odit. Illo magnam omnis distinctio sunt veniam magnam. Explicabo deleniti iste sint. Omnis sit ullam iusto eaque fuga non. Ut minus nisi est et omnis.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '6', 8, 11, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(93, 'Shanon Lemke', 'Nihil laborum laudantium quibusdam expedita. Eveniet dicta aperiam consequuntur at voluptatem rerum consequatur. Asperiores ipsa possimus odio dolore accusantium totam vero.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '2', 5, 3, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(94, 'Berry Buckridge', 'Quasi odio eum laborum aut exercitationem. Et odit est veritatis sunt quo ab. Minima ipsa explicabo id corrupti ipsam mollitia odit eum.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '6', 18, 10, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(95, 'Abel Hirthe', 'Sint sunt cumque et itaque officiis. Reiciendis magni animi dicta nulla est dignissimos. Doloribus assumenda illum explicabo mollitia dolor qui amet pariatur.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '3', 6, 10, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(96, 'Elise Rosenbaum', 'Repellendus nihil voluptas dignissimos iusto. Aperiam est debitis dolores eligendi molestiae. Ex sit provident omnis est doloremque eveniet velit.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '8', 5, 5, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(97, 'Kiel Rosenbaum', 'Autem sed veritatis dignissimos labore. Quidem incidunt dolorem rerum laboriosam omnis rerum tempore. Sunt molestiae qui eum incidunt quae atque natus aliquid.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '5', 13, 2, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(98, 'Hailee Emard', 'Eius maxime iure ut eos. Facere blanditiis dicta accusamus adipisci recusandae illum quasi. Repellendus distinctio delectus sint expedita eos et repellat aperiam.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '8', 15, 10, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(99, 'Paige Kozey II', 'Ad animi adipisci vel placeat consequatur ab dolor. Dicta temporibus molestiae doloremque et repellat incidunt odio.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '5', 15, 2, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(100, 'Mr. Javier Jacobs', 'Eos praesentium odio velit et voluptatem. Maiores modi est molestias quas vitae magni autem. Quisquam sit maxime eos sed. Dolores in asperiores molestiae quaerat qui ut.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '6', 16, 4, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(101, 'Ewald Sanford', 'Sit enim tenetur ullam et modi recusandae. Deserunt et rerum tempore eos. Rerum dolorem nobis laborum vel repudiandae pariatur harum.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '2', 3, 12, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(102, 'Madisyn Cole', 'Aliquid quia quaerat nisi praesentium sed enim in molestiae. Est aliquam ab doloremque iure voluptates aut laboriosam. Facere iusto vel culpa voluptatem.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '1', 6, 10, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(103, 'London Murray Jr.', 'Explicabo ea quibusdam est. Dicta excepturi porro quia et error dolore consequatur. Omnis commodi ut voluptates recusandae ad.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '6', 13, 9, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(104, 'Kasandra Ernser', 'Rerum accusamus corrupti aut saepe quo totam. Neque aspernatur quis tenetur temporibus quia. Nihil consequatur excepturi aut ab sint.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '3', 3, 9, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(105, 'Geovanny Jacobi', 'Voluptates est odio aperiam fuga laudantium voluptatem reprehenderit. Occaecati voluptas assumenda praesentium impedit eum autem in. Qui recusandae consequatur quod neque.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '9', 6, 1, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(106, 'Valerie Howe', 'Quidem ipsa reiciendis ducimus quia. Dolore et sint voluptatem suscipit reiciendis eos. Praesentium explicabo ex sunt reprehenderit nesciunt eaque.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '1', 18, 5, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(107, 'Bridgette Reilly', 'Qui culpa quia deserunt officia aut qui aut sed. Iste iste adipisci dolorem ab neque odit vitae officia. Officia dolorem et accusantium enim.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '2', 2, 2, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(108, 'Spencer Gusikowski', 'Maxime totam culpa non aut assumenda veritatis. Perferendis natus inventore quaerat ut aut. Tempora nisi perspiciatis est iusto placeat rerum. Nobis non aut illo.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '5', 15, 4, '2020-07-21 01:11:39', '2020-07-21 01:11:39'),
(109, 'Burley Towne', 'Debitis excepturi omnis eos ut dolorem. Voluptas nihil corporis commodi. Qui doloremque vero ut nemo ea. Nulla repudiandae numquam cum inventore tempore.', 'https://kenh14cdn.com/thumb_w/640/Images/Uploaded/Share/2010/08/03/6a1040810DSvietblogavatar.jpg', '6', 6, 1, '2020-07-21 01:11:39', '2020-07-21 01:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_brands`
--

CREATE TABLE `product_brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_brands`
--

INSERT INTO `product_brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sandisk', '2020-07-02 01:57:15', '2020-07-15 08:03:01'),
(2, 'Samsung', '2020-07-02 01:57:15', '2020-07-15 08:03:06'),
(3, 'Toshiba', '2020-07-02 01:57:15', '2020-07-15 08:03:10'),
(4, 'Kingston', '2020-07-02 01:57:15', '2020-07-15 08:03:14'),
(5, 'Intel', '2020-07-02 01:57:15', '2020-07-15 08:03:37'),
(6, 'Corsair', '2020-07-15 08:06:42', '2020-07-15 08:06:42'),
(7, 'Western Digital', '2020-07-15 08:14:28', '2020-07-15 08:14:28'),
(8, 'Seagate', '2020-07-15 08:14:50', '2020-07-15 08:14:50'),
(13, 'GoPro', '2020-07-15 08:30:15', '2020-07-15 08:30:15'),
(15, 'Bode PLC', '2020-07-21 01:11:38', '2020-07-21 01:11:38'),
(16, 'Gleichner-Koepp', '2020-07-21 01:11:38', '2020-07-21 01:11:38'),
(17, 'Renner-Bergstrom', '2020-07-21 01:11:38', '2020-07-21 01:11:38'),
(18, 'Ernser, Bogan and Rath', '2020-07-21 01:11:38', '2020-07-21 01:11:38'),
(19, 'Rowe-Marvin', '2020-07-21 01:11:38', '2020-07-21 01:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hoà', 'hoagamer2k@gmail.com', NULL, '$2y$10$7P4LDwvLTB1WkD69//7b9Ozt9pIxFCp4CM/5dvcOWye9dJo9w56nC', '0', NULL, '2020-07-02 01:58:10', '2020-07-02 01:58:10'),
(2, 'Admin', 'Admin@gmail.com', NULL, '$2y$10$CUoqIL.WRvbe.s6Hq83SAeLO/wRtXtHwHkFIjicUweqVIwiVukfwO', '1', NULL, '2020-07-02 23:51:47', '2020-07-02 23:51:47'),
(3, 'hhh', '2@gmail.com', NULL, '$2y$10$Gtd.f6wRi1WM1dkBQ4hHTeyK5GmsdWsgw.RgIk6KghBgwGt9PpMwy', '0', NULL, '2020-07-06 00:44:08', '2020-07-06 00:44:08'),
(4, 'hh', '9@gmail.com', NULL, '$2y$10$ztT/DZMbMa3y/EQfUl0LSOElLznsvnoovBPuazxeTB4jS8smiiWQe', '0', NULL, '2020-07-06 00:51:41', '2020-07-06 00:51:41'),
(5, 'hoà', 'hoagamer2kk@gmail.com', NULL, '$2y$10$Pg2kI6MC09PMoHAJiQmZHOhI7iSKqXVsHla2m4WI0/Kl0fq/PudtC', '0', NULL, '2020-07-06 00:52:47', '2020-07-06 00:52:47'),
(6, 'đâsdasdsa', 'dhoagamer2k@gmail.com', NULL, '$2y$10$c3GWXA8A8B6I.JLDFvEinel0GJdqSLPp7eJxbKMl7MRQEGVbtp/wq', '0', NULL, '2020-07-06 00:57:37', '2020-07-06 00:57:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
  ADD KEY `orders_users_id_foreign` (`users_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_orders_id_foreign` (`orders_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_brands_id_foreign` (`product_brands_id`),
  ADD KEY `products_categories_id_foreign` (`categories_id`);

--
-- Indexes for table `product_brands`
--
ALTER TABLE `product_brands`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `product_brands`
--
ALTER TABLE `product_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `guest` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_orders_id_foreign` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_product_brands_id_foreign` FOREIGN KEY (`product_brands_id`) REFERENCES `product_brands` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
