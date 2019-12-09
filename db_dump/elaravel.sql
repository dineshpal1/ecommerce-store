-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 09, 2019 at 10:45 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_10_19_134256_create_tbl_admin_table', 1),
(2, '2019_10_19_170628_create_tbl_category_table', 2),
(3, '2019_10_20_105852_create_manufacture_table', 3),
(4, '2019_10_21_024922_create_tbl_products_table', 4),
(5, '2019_10_23_230801_create_tbl_slider_table', 5),
(6, '2019_10_27_015820_create_tbl_customer_table', 6),
(7, '2019_10_27_033417_create_tbl_shipping_table', 7),
(8, '2019_10_27_161101_create_tbl_payment_table', 8),
(9, '2019_10_27_161503_create_tbl_order_table', 8),
(10, '2019_10_27_162240_create_tbl_order_details_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'dinesh@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Dinesh', '123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(8, 'Men', 'This is men', 1, NULL, NULL),
(9, 'Women', 'This is women', 1, NULL, NULL),
(10, 'Child', 'This is child', 1, NULL, NULL),
(11, 'Electronics', 'This is electronics', 1, NULL, NULL),
(12, 'Others', 'This is others', 1, NULL, NULL),
(13, 'Furniture', 'This is furniture', 1, NULL, NULL),
(14, 'Sports', 'This is sports', 1, NULL, NULL),
(15, 'Laptop', 'This is laptop', 1, NULL, NULL),
(16, 'Clothes', 'This is clothes', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `password`, `mobile_number`, `created_at`, `updated_at`) VALUES
(1, 'Dinesh', 'dinesh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '12345678', NULL, NULL),
(5, 'Ram', 'ram@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '12345678', '2019-10-19 18:30:00', NULL),
(6, 'Garima', 'Garima@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '123321', '2019-10-08 18:30:00', NULL),
(7, 'Anwar', 'anwar@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '987987987', '2019-10-01 00:58:38', NULL),
(8, 'rani', 'rani@raja.com', 'e10adc3949ba59abbe56e057f20f883e', '369369369', NULL, NULL),
(9, 'Ramesh', 'ramesh@gmail.com', '202cb962ac59075b964b07152d234b70', '787878', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacture`
--

DROP TABLE IF EXISTS `tbl_manufacture`;
CREATE TABLE IF NOT EXISTS `tbl_manufacture` (
  `manufacture_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `manufacture_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`manufacture_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `manufacture_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'This is samsung', 1, NULL, NULL),
(2, 'Zara', 'update zara', 1, NULL, NULL),
(7, 'Others', 'This is other manufactures', 1, NULL, NULL),
(4, 'Apple', 'Apple brands are too much good !!!!!!', 1, NULL, NULL),
(6, 'Chillor rose', 'womens brand', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE IF NOT EXISTS `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(2, 1, 8, 9, '72,000.00', 'pending', '2019-10-28 03:19:30', NULL),
(3, 8, 9, 10, '4,000.00', 'pending', '2019-10-28 03:46:05', NULL),
(4, 1, 11, 11, '6,000.00', 'pending', '2019-10-29 08:13:42', NULL),
(5, 1, 11, 12, '6,000.00', 'pending', '2019-10-29 08:14:27', NULL),
(6, 1, 11, 13, '6,000.00', 'pending', '2019-10-29 08:15:02', NULL),
(7, 1, 11, 14, '6,000.00', 'pending', '2019-10-29 08:59:49', NULL),
(8, 1, 11, 15, '6,000.00', 'pending', '2019-10-29 09:37:07', NULL),
(9, 1, 11, 16, '6,000.00', 'pending', '2019-10-29 09:38:10', NULL),
(10, 1, 11, 17, '6,000.00', 'pending', '2019-10-29 09:39:38', NULL),
(11, 1, 11, 18, '6,000.00', 'pending', '2019-10-29 09:40:01', NULL),
(12, 1, 11, 19, '6,000.00', 'pending', '2019-10-29 09:42:47', NULL),
(13, 1, 11, 20, '6,000.00', 'pending', '2019-10-29 09:43:14', NULL),
(14, 1, 11, 21, '6,000.00', 'pending', '2019-10-29 09:43:44', NULL),
(15, 1, 11, 22, '6,000.00', 'pending', '2019-10-29 09:56:00', NULL),
(16, 9, 12, 23, '60,000.00', 'pending', '2019-11-21 11:42:38', NULL),
(17, 9, 12, 24, '60,000.00', 'pending', '2019-11-21 11:47:20', NULL),
(18, 9, 13, 25, '60,000.00', 'pending', '2019-11-21 11:57:17', NULL),
(19, 9, 14, 26, '21,000.00', 'pending', '2019-11-21 11:58:05', NULL),
(20, 9, 14, 27, '21,000.00', 'pending', '2019-11-21 11:58:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

DROP TABLE IF EXISTS `tbl_order_details`;
CREATE TABLE IF NOT EXISTS `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`order_details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'iphone8', '60000', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

DROP TABLE IF EXISTS `tbl_payment`;
CREATE TABLE IF NOT EXISTS `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(27, 'paypal', 'pending', '2019-11-21 11:58:13', NULL),
(26, 'cart', 'pending', '2019-11-21 11:58:05', NULL),
(25, 'handcash', 'pending', '2019-11-21 11:57:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE IF NOT EXISTS `tbl_products` (
  `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `product_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `category_id`, `manufacture_id`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_size`, `product_color`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'iphone8', 11, 4, 'Its good......', 'sfsfsfs', 60000.00, 'image/QNY2ycmmKpc4BlYdHOd0.jpg', '4.8 inches', 'Brown,Red,Black', 1, NULL, NULL),
(2, 'Tablet', 11, 1, 'it is tablet', 'from samsung', 21000.00, 'image/XXfyH78ow4sFvvTs5H5o.jpg', '6', 'brown,blue', 1, NULL, NULL),
(3, 'Kings bed', 13, 7, 'King size bed', 'very comfortable', 12000.00, 'image/vggPDqxVP6AJDUtfx6hA.jpg', '6x6', 'Maroon,Black', 1, NULL, NULL),
(4, 'chair', 13, 7, 'easy chair', 'chair', 2000.00, 'image/SO5YFMSbwcLA87N3dFMs.jpg', '2', 'white', 1, NULL, NULL),
(6, 'gown', 10, 2, 'full length gown', 'for baby girl', 2800.00, 'image/GzaJ0Ni0UA1pI7G5079q.jpg', '90cm', 'red', 1, NULL, NULL),
(8, 'Punjabi dress', 10, 2, 'Punjabi dress', 'sfssgfs', 2300.00, 'image/yr6t9ml9QRINrOy8Eysa.jpg', 'xx', 'Black,Red and Green', 1, NULL, NULL),
(9, 'Tops', 9, 6, 'women tops', 'tops look like kurties', 4000.00, 'image/TnSxg89pYy14rdxG2Moi.jpg', 'xl', 'Brown,Yellow', 1, NULL, NULL),
(10, 'skirt top', 9, 6, 'mini skirt and top', 'fsgsd', 6000.00, 'image/UYbGrro22hqKqlyzZpfV.jpg', 'xLL', 'florish pink white red', 1, NULL, NULL),
(11, 'women Gown', 9, 6, 'full lenth gown', 'gown', 8000.00, 'image/wK0eQAne52Jd0izBmIiL.jpg', 'xxl', 'Red,White and Pink', 1, NULL, NULL),
(12, 'Mens shirt', 8, 7, 'Mens shirt', 'shirt', 2000.00, 'image/ppKKTpVueVBwNQ4YoV5v.jpg', 'xl', 'pink,blue,green', 1, NULL, NULL),
(13, 'Tshirt', 8, 7, 'Mens Tshirt', 'tshirt', 1500.00, 'image/KmzukOjsrOYKuPqcw0AZ.jpg', 'xxl', 'black', 1, NULL, NULL),
(14, 'Jacket', 8, 7, 'Mens jacket', 'jacket', 5000.00, 'image/4fqDFhOUHQV8lXQPmq6P.jpg', 'xxl', 'Brown', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

DROP TABLE IF EXISTS `tbl_shipping`;
CREATE TABLE IF NOT EXISTS `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `shipping_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_mobile_number` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_email`, `shipping_first_name`, `shipping_last_name`, `shipping_address`, `shipping_mobile_number`, `shipping_city`, `created_at`, `updated_at`) VALUES
(1, 'dinesh@gmail.com', 'Dinesh', 'Pal', 'Nangloi', '12345678', 'Delhi', NULL, NULL),
(2, 'dinesh@gmail.com', 'Dinesh', 'Pal', 'Nangloi', '12345678', 'Delhi', NULL, NULL),
(3, 'dinesh@gmail.com', 'Dinesh', 'Pal', 'Nangloi', '12345678', 'Delhi', NULL, NULL),
(4, 'ram@gmas.com', 'fsf', 'sfs', 'sfs', '123213', 'fsfs', NULL, NULL),
(5, 'ram@gmas.com', 'fsf', 'sfs', 'sfs', '123213', 'fsfs', NULL, NULL),
(6, 'ram@gmas.com', 'fsf', 'sfs', 'sfs', '12345678', 'fsfs', NULL, NULL),
(7, 'dinesh@gmail.com', 'Dinesh', 'Pal', 'Nangloi', '12345678', 'Delhi', NULL, NULL),
(8, 'dinesh@gmail.com', 'Dinesh', 'Pal', 'Nangloi', '12345678', 'Delhi', NULL, NULL),
(9, 'rani@raja.com', 'Rani', 'Raja', 'fsfs', '369369369', 'sdfdsf', NULL, NULL),
(10, 'dinesh@gmail.com', 'Dinesh', 'Pal', 'Nangloi', '12345678', 'Delhi', NULL, NULL),
(11, 'dinesh@gmail.com', 'Dinesh', 'Pal', 'Nangloi', '12345678', 'Delhi', NULL, NULL),
(12, 'ram@gmas.com', 'fsf', 'sfs', 'Nangloi', '123213', 'Delhi', NULL, NULL),
(13, 'ram@gmas.com', 'Dinesh', 'Pal', 'Nangloi', '12345678', 'Delhi', NULL, NULL),
(14, 'dinesh@gmail.com', 'Dinesh', 'Pal', 'Nangloi', '12345678', 'Delhi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'slider/GQcauO1xMpLw2uRDiiWu.jpg', 1, NULL, NULL),
(2, 'slider/acRNcOQqOJm44NwHLXtc.jpg', 1, NULL, NULL),
(3, 'slider/YUmNUFKbiF3idp4zXB0L.jpg', 1, NULL, NULL),
(4, 'slider/syeEAHtiGDqZYNvq0awJ.jpg', 1, NULL, NULL),
(5, 'slider/VPMYkjqMwBSeCt8HhCE9.jpg', 1, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
