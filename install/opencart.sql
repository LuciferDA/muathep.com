-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th4 23, 2019 lúc 09:08 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB-cll-lve
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `websanph_3020rc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'WkGe4714FvpIsYrcQIeqIhR6m5IBavx7LNDk9symB5LRRb8S6WUiDBWknaKFi4R5puvWnxYOCMZb2hOV7MVZwa8NKjU8XvhC58MpwaQlyKyQMVn2rrzDWijBUWJLwiygDdUAvfrmlaFW78PdtPWxSUb61hbXLyz8u7KV8Iwf6Eabbg1OVZ0GULaADeRjCmyvTeDKkWkbziQhfLde0wQvZJuHEgxUFrpNNLJ0QtEWbHf4sO9W1T5uhIF0UoRqZp6m', 1, '2017-08-14 21:49:51', '2017-08-14 21:49:51'),
(2, 'Default', 'Tdfftzhu0CbPguJVS5mxIS67WM4iRZ0VsPfmW6WjcxuNW8KAFaADzyl2vSBcvGVNkLpmQNhe2F3cDhjjABa7iFhEQGjsDn3j7BEnrQArDwC1lJINkROR1RCQxJOX3I3qAtIpQfD1MYDL5EIu4Ja28KNhaGNqjN86NreoykXHa9NguRwrYShqsoyJcBdQguBhpCx31FEax1p0CfcG4pGRMthV4XL99mBy1YyXWP1HEk74wRS4Id7JO0hNaDet7QZI', 1, '2018-10-03 17:20:21', '2018-10-03 17:20:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `session_id`, `ip`, `date_added`, `date_modified`) VALUES
(1, 1, '7b7ebd5c27e0c258227f40d6bc', '127.0.0.1', '2017-08-14 21:53:01', '2017-08-14 21:53:01'),
(2, 1, '69d3e3f11c3fca7dcddfd15859', '127.0.0.1', '2017-08-29 21:46:07', '2017-08-29 21:46:07'),
(3, 1, '75731e2d96f727c32311cae382', '127.0.0.1', '2017-08-29 21:46:36', '2017-08-29 21:46:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Slideshow trang chủ', 1),
(8, 'Manufacturers', 1),
(9, 'Banner dưới combo danh mục sản phẩm', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(124, 7, 1, 'Banner', '#', 'catalog/demo/banners/banner-2.png', 0),
(127, 9, 1, 'Banner', '#', 'catalog/demo/banners/banner-1.png', 0),
(131, 6, 1, 'Banner', '#', 'catalog/demo/banners/banner-vertical.jpg', 0),
(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(129, 6, 2, 'Banner', '#', 'catalog/demo/banners/banner-vertical.jpg', 0),
(130, 6, 2, 'Banner', '#', 'catalog/demo/banners/dien-thoai-lazada.jpg', 0),
(101, 8, 2, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(102, 8, 2, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(103, 8, 2, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(104, 8, 2, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(105, 8, 2, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(106, 8, 2, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(107, 8, 2, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(108, 8, 2, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(109, 8, 2, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(122, 7, 2, 'Banner', '#', 'catalog/demo/banners/banner-2.png', 0),
(123, 7, 1, 'Banner', '#', 'catalog/demo/banners/banner-1.png', 0),
(111, 8, 2, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(112, 8, 2, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(121, 7, 2, 'Banner', '#', 'catalog/demo/banners/banner-1.png', 0),
(126, 9, 2, 'Banner', '#', 'catalog/demo/banners/banner-2.png', 0),
(125, 9, 2, 'Banner', '#', 'catalog/demo/banners/banner-1.png', 0),
(128, 9, 1, 'Banner', '#', 'catalog/demo/banners/banner-2.png', 0),
(132, 6, 1, 'Banner', '#', 'catalog/demo/banners/dien-thoai-lazada.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, '', 0, 0, 1, 3, 1, '2009-01-31 01:04:25', '2018-10-04 11:02:59'),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2010-08-22 06:32:15'),
(20, 'catalog/demo/compaq_presario.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2018-10-04 00:35:29'),
(24, '', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2018-10-04 00:35:51'),
(18, 'catalog/demo/hp_2.jpg', 0, 0, 0, 2, 1, '2009-01-05 21:49:15', '2017-08-26 17:03:00'),
(28, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2010-08-22 06:32:46'),
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2010-08-22 06:31:45'),
(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2010-08-22 06:32:39'),
(30, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2010-08-22 06:33:00'),
(31, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2010-08-22 06:33:06'),
(32, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2010-08-22 06:33:12'),
(33, '', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2018-10-03 17:22:03'),
(34, 'catalog/demo/ipod_touch_4.jpg', 0, 1, 4, 7, 1, '2009-02-03 14:18:11', '2018-10-04 00:36:29'),
(35, '', 28, 0, 0, 0, 1, '2010-09-17 10:06:48', '2010-09-18 14:02:42'),
(36, '', 28, 0, 0, 0, 1, '2010-09-17 10:07:13', '2010-09-18 14:02:55'),
(37, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:39', '2011-04-22 01:55:08'),
(38, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:51', '2010-09-18 14:03:51'),
(39, '', 34, 0, 0, 0, 1, '2010-09-18 14:04:17', '2011-04-22 01:55:20'),
(40, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:36', '2010-09-18 14:05:36'),
(41, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:49', '2011-04-22 01:55:30'),
(42, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:34', '2010-11-07 20:31:04'),
(43, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:49', '2011-04-22 01:55:40'),
(44, '', 34, 0, 0, 0, 1, '2010-09-21 15:39:21', '2010-11-07 20:30:55'),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2011-04-26 08:52:11'),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2011-04-26 08:52:23'),
(47, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:16', '2010-11-07 11:13:16'),
(48, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:33', '2010-11-07 11:13:33'),
(49, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:04', '2010-11-07 11:14:04'),
(50, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:23', '2011-04-22 01:16:01'),
(51, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:38', '2011-04-22 01:16:13'),
(52, '', 34, 0, 0, 0, 1, '2010-11-07 11:16:09', '2011-04-22 01:54:57'),
(53, '', 34, 0, 0, 0, 1, '2010-11-07 11:28:53', '2011-04-22 01:14:36'),
(54, '', 34, 0, 0, 0, 1, '2010-11-07 11:29:16', '2011-04-22 01:16:50'),
(55, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:32', '2010-11-08 10:31:32'),
(56, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:50', '2011-04-22 01:16:37'),
(57, '', 0, 1, 1, 3, 1, '2011-04-26 08:53:16', '2018-10-04 00:36:07'),
(58, '', 52, 0, 0, 0, 1, '2011-05-08 13:44:16', '2011-05-08 13:44:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(28, 1, 'Monitors', '', 'Monitors', '', ''),
(32, 1, 'Web Cameras', '', 'Web Cameras', '', ''),
(31, 1, 'Scanners', '', 'Scanners', '', ''),
(30, 1, 'Printers', '', 'Printers', '', ''),
(29, 1, 'Mice and Trackballs', '', 'Mice and Trackballs', '', ''),
(27, 1, 'Mac', '', 'Mac', '', ''),
(26, 1, 'PC', '', 'PC', '', ''),
(35, 1, 'test 1', '', 'test 1', '', ''),
(36, 1, 'test 2', '', 'test 2', '', ''),
(37, 1, 'test 5', '', 'test 5', '', ''),
(38, 1, 'test 4', '', 'test 4', '', ''),
(39, 1, 'test 6', '', 'test 6', '', ''),
(40, 1, 'test 7', '', 'test 7', '', ''),
(41, 1, 'test 8', '', 'test 8', '', ''),
(42, 1, 'test 9', '', 'test 9', '', ''),
(43, 1, 'test 11', '', 'test 11', '', ''),
(18, 1, 'Laptops &amp; Notebooks', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Laptops &amp; Notebooks', '', ''),
(44, 1, 'test 12', '', 'test 12', '', ''),
(45, 1, 'Windows', '', 'Windows', '', ''),
(46, 1, 'Macs', '', 'Macs', '', ''),
(47, 1, 'test 15', '', 'test 15', '', ''),
(48, 1, 'test 16', '', 'test 16', '', ''),
(49, 1, 'test 17', '', 'test 17', '', ''),
(50, 1, 'test 18', '', 'test 18', '', ''),
(51, 1, 'test 19', '', 'test 19', '', ''),
(52, 1, 'test 20', '', 'test 20', '', ''),
(53, 1, 'test 21', '', 'test 21', '', ''),
(54, 1, 'test 22', '', 'test 22', '', ''),
(55, 1, 'test 23', '', 'test 23', '', ''),
(56, 1, 'test 24', '', 'test 24', '', ''),
(58, 1, 'test 25', '', 'test 25', '', ''),
(28, 2, 'Monitors', '', 'Monitors', '', ''),
(33, 2, 'Cameras', '', 'Cameras', '', ''),
(32, 2, 'Web Cameras', '', 'Web Cameras', '', ''),
(31, 2, 'Scanners', '', 'Scanners', '', ''),
(30, 2, 'Printers', '', 'Printers', '', ''),
(29, 2, 'Mice and Trackballs', '', 'Mice and Trackballs', '', ''),
(27, 2, 'Mac', '', 'Mac', '', ''),
(26, 2, 'PC', '', 'PC', '', ''),
(25, 2, 'Components', '', 'Components', '', ''),
(24, 2, 'Điện thoại', '', 'Phones &amp; PDAs', '', ''),
(20, 2, 'Máy tính bàn', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Desktops', 'Example of category description', ''),
(35, 2, 'test 1', '', 'test 1', '', ''),
(36, 2, 'test 2', '', 'test 2', '', ''),
(37, 2, 'test 5', '', 'test 5', '', ''),
(38, 2, 'test 4', '', 'test 4', '', ''),
(39, 2, 'test 6', '', 'test 6', '', ''),
(40, 2, 'test 7', '', 'test 7', '', ''),
(41, 2, 'test 8', '', 'test 8', '', ''),
(42, 2, 'test 9', '', 'test 9', '', ''),
(43, 2, 'test 11', '', 'test 11', '', ''),
(34, 2, 'Máy chơi nhạc', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'MP3 Players', '', ''),
(18, 2, 'Laptops &amp; Notebooks', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Laptops &amp; Notebooks', '', ''),
(44, 2, 'test 12', '', 'test 12', '', ''),
(45, 2, 'Windows', '', 'Windows', '', ''),
(46, 2, 'Macs', '', 'Macs', '', ''),
(47, 2, 'test 15', '', 'test 15', '', ''),
(48, 2, 'test 16', '', 'test 16', '', ''),
(49, 2, 'test 17', '', 'test 17', '', ''),
(50, 2, 'test 18', '', 'test 18', '', ''),
(51, 2, 'test 19', '', 'test 19', '', ''),
(52, 2, 'test 20', '', 'test 20', '', ''),
(53, 2, 'test 21', '', 'test 21', '', ''),
(54, 2, 'test 22', '', 'test 22', '', ''),
(55, 2, 'test 23', '', 'test 23', '', ''),
(56, 2, 'test 24', '', 'test 24', '', ''),
(57, 2, 'Máy tính bảng', '', 'Tablets', '', ''),
(58, 2, 'test 25', '', 'test 25', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_news`
--

CREATE TABLE `oc_category_news` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_news`
--

INSERT INTO `oc_category_news` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(1, 'catalog/demo/product/samsungtab.jpg', 0, 1, 1, 0, 1, '2017-08-19 00:42:58', '2018-10-04 00:21:12'),
(2, '', 0, 0, 1, 0, 1, '2018-10-04 00:30:26', '2018-10-04 00:30:26'),
(3, '', 0, 0, 1, 0, 1, '2018-10-04 00:31:12', '2018-10-04 00:31:12'),
(4, '', 0, 0, 1, 0, 1, '2018-10-04 00:31:45', '2018-10-04 00:31:45'),
(5, '', 0, 0, 1, 0, 1, '2018-10-04 00:32:09', '2018-10-04 00:32:09'),
(6, '', 0, 0, 1, 0, 1, '2018-10-04 00:32:32', '2018-10-04 00:32:32'),
(7, '', 0, 0, 1, 0, 1, '2018-10-04 00:32:56', '2018-10-04 00:32:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_news_description`
--

CREATE TABLE `oc_category_news_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_news_description`
--

INSERT INTO `oc_category_news_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(1, 2, 'Tin công nghệ', '', 'Công nghệ', '', ''),
(2, 2, 'Đánh giá', '', 'Đánh giá', '', ''),
(3, 2, 'Sự kiện', '', 'Sự kiện', '', ''),
(4, 2, 'Thị trường', '', 'Thị trường', '', ''),
(5, 2, 'Cuộc sống số', '', 'Cuộc sống số', '', ''),
(6, 2, 'Mẹo hay', '', 'Mẹo hay', '', ''),
(7, 2, 'Sản phẩm mới', '', 'Sản phẩm mới', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_news_path`
--

CREATE TABLE `oc_category_news_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_news_path`
--

INSERT INTO `oc_category_news_path` (`category_id`, `path_id`, `level`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 25, 0),
(28, 28, 1),
(35, 25, 0),
(35, 28, 1),
(35, 35, 2),
(36, 25, 0),
(36, 28, 1),
(36, 36, 2),
(29, 25, 0),
(29, 29, 1),
(30, 25, 0),
(30, 30, 1),
(31, 25, 0),
(31, 31, 1),
(32, 25, 0),
(32, 32, 1),
(20, 20, 0),
(27, 20, 0),
(27, 27, 1),
(26, 20, 0),
(26, 26, 1),
(24, 24, 0),
(18, 18, 0),
(45, 18, 0),
(45, 45, 1),
(46, 18, 0),
(46, 46, 1),
(33, 33, 0),
(34, 34, 0),
(37, 34, 0),
(37, 37, 1),
(38, 34, 0),
(38, 38, 1),
(39, 34, 0),
(39, 39, 1),
(40, 34, 0),
(40, 40, 1),
(41, 34, 0),
(41, 41, 1),
(42, 34, 0),
(42, 42, 1),
(43, 34, 0),
(43, 43, 1),
(44, 34, 0),
(44, 44, 1),
(47, 34, 0),
(47, 47, 1),
(48, 34, 0),
(48, 48, 1),
(49, 34, 0),
(49, 49, 1),
(50, 34, 0),
(50, 50, 1),
(51, 34, 0),
(51, 51, 1),
(52, 34, 0),
(52, 52, 1),
(58, 34, 0),
(58, 52, 1),
(58, 58, 2),
(53, 34, 0),
(53, 53, 1),
(54, 34, 0),
(54, 54, 1),
(55, 34, 0),
(55, 55, 1),
(56, 34, 0),
(56, 56, 1),
(57, 57, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(18, 0, 0),
(20, 0, 0),
(34, 0, 0),
(24, 0, 0),
(57, 0, 0),
(25, 0, 0),
(33, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Việt Nam Đồng', 'VND', '', ' đ', '0', 1.00000000, 1, '2019-04-23 00:55:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(49, 'module', 'category_product'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'module', 'quick_info'),
(43, 'module', 'product_by_categories'),
(44, 'module', 'news_latest'),
(45, 'module', 'special'),
(46, 'module', 'latest'),
(48, 'module', 'social_network'),
(50, 'module', 'google_map'),
(53, 'feed', 'google_sitemap');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_fraud_ip`
--

CREATE TABLE `oc_fraud_ip` (
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 2, 'Về chúng tôi', '&lt;p&gt;\r\n	Về chúng tôi&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 2, 'Điều khoản và điều kiện', '&lt;p&gt;\r\n	Điều khoản và điều kiện&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 'Chính sách', '&lt;p&gt;\r\n	Chính sách&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 2, 'Thông tin thanh toán', '&lt;p&gt;\r\n	Thông tin thanh toán&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0),
(6, 0, 0),
(5, 0, 0),
(3, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(2, 'Việt Nam', 'vi-vn', 'vi_VN.UTF-8,vi_VN,vi-vn,vietnamese', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Trang chủ'),
(2, 'Chi tiết sản phẩm'),
(3, 'Danh mục sản phẩm'),
(4, 'Mặc định'),
(5, 'Hãng sản xuất'),
(6, 'Tài khoản'),
(7, 'Thanh toán'),
(8, 'Liên hệ'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Trang thông tin'),
(12, 'So sánh sản phẩm'),
(13, 'Tìm kiếm sản phẩm'),
(14, 'Danh mục tin tức'),
(15, 'Chi tiết tin tức');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(180, 14, 'news_latest.39', 'column_left', 0),
(178, 5, 'latest.38', 'column_left', 1),
(195, 1, 'banner.30', 'column_right', 3),
(194, 1, 'news_latest.39', 'column_right', 2),
(161, 3, 'category_product.40', 'column_left', 0),
(193, 1, 'latest.38', 'column_right', 1),
(192, 1, 'special.37', 'column_right', 0),
(191, 1, 'carousel.29', 'content_bottom', 0),
(190, 1, 'news_latest.36', 'content_top', 6),
(189, 1, 'banner.35', 'content_top', 5),
(188, 1, 'featured.28', 'content_top', 4),
(187, 1, 'banner.34', 'content_top', 3),
(186, 1, 'product_by_categories.33', 'content_top', 2),
(185, 1, 'quick_info.32', 'content_top', 1),
(184, 1, 'slideshow.27', 'content_top', 0),
(162, 3, 'special.37', 'column_left', 1),
(163, 3, 'latest.38', 'column_left', 2),
(164, 3, 'news_latest.39', 'column_left', 3),
(207, 2, 'latest.38', 'column_left', 3),
(205, 2, 'special.37', 'column_left', 1),
(173, 13, 'news_latest.39', 'column_left', 1),
(172, 13, 'category_product.40', 'column_left', 0),
(174, 13, 'latest.38', 'column_left', 2),
(177, 5, 'category_product.40', 'column_left', 0),
(181, 14, 'latest.38', 'column_left', 1),
(182, 15, 'category_product.40', 'column_left', 0),
(183, 15, 'news_latest.39', 'column_left', 1),
(206, 2, 'news_latest.39', 'column_left', 2),
(204, 2, 'category_product.40', 'column_left', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(75, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(68, 3, 0, 'product/category'),
(83, 1, 0, 'common/home'),
(86, 2, 0, 'product/product'),
(79, 11, 0, 'information/information'),
(76, 7, 0, 'checkout/%'),
(78, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(80, 4, 0, ''),
(74, 5, 0, 'product/manufacturer/info'),
(77, 12, 0, 'product/compare'),
(72, 13, 0, 'product/search'),
(81, 14, 0, 'news/category'),
(82, 15, 0, 'news/news');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Banner - sidebar', 'banner', '{\"name\":\"Banner - sidebar\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Banner đối tác - trang chủ', 'carousel', '{\"name\":\"Banner \\u0111\\u1ed1i t\\u00e1c - trang ch\\u1ee7\",\"banner_id\":\"8\",\"width\":\"166\",\"height\":\"110\",\"status\":\"1\"}'),
(28, 'Sản phẩm nổi bật - trang chủ', 'featured', '{\"name\":\"S\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt - trang ch\\u1ee7\",\"product_name\":\"\",\"product\":[\"43\",\"40\",\"30\",\"42\",\"47\",\"28\",\"44\",\"45\"],\"limit\":\"20\",\"width\":\"400\",\"height\":\"400\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(32, 'Thông tin nhanh', 'quick_info', '{\"name\":\"Th\\u00f4ng tin nhanh\",\"status\":\"1\",\"module_description\":[{\"title\":{\"2\":\"HO\\u00c0N L\\u1ea0I TI\\u1ec0N\",\"1\":\"MONEY BACK\"},\"description\":{\"2\":\"Trong 30 ng\\u00e0y ho\\u00e0n l\\u1ea1i ti\\u1ec1n n\\u1ebfu kh\\u00f4ng \\u01b0ng \\u00fd\",\"1\":\"30 Days Money Back Guarantee\"},\"sort_order\":\"0\",\"status\":\"1\"},{\"title\":{\"2\":\"GIAO H\\u00c0NG MI\\u1ec4N PH\\u00cd\",\"1\":\"FREE SHIPPING\"},\"description\":{\"2\":\"Giao mi\\u1ec5n ph\\u00ed v\\u1edbi \\u0111\\u01a1n h\\u00e0ng tr\\u00ean 1 tri\\u1ec7u \\u0111\\u1ed3ng\",\"1\":\"Shipping on orders over $99\"},\"sort_order\":\"0\",\"status\":\"1\"},{\"title\":{\"2\":\"GI\\u1ea2M GI\\u00c1 \\u0110\\u1eb6C BI\\u1ec6T\",\"1\":\"SPECIAL SALE\"},\"description\":{\"2\":\"Gi\\u1ea3m gi\\u00e1 trong nhi\\u1ec7p d\\u1ecbp l\\u1ec5, t\\u1ebft\",\"1\":\"Extra $5 off on all items\"},\"sort_order\":\"0\",\"status\":\"1\"}]}'),
(33, 'Sản phẩm theo combo', 'product_by_categories', '{\"name\":\"S\\u1ea3n ph\\u1ea9m theo combo\",\"status\":\"1\",\"width\":\"400\",\"height\":\"400\",\"module_description\":[{\"category_id\":\"33\",\"limit\":\"20\",\"sort_order\":\"\"},{\"category_id\":\"20\",\"limit\":\"20\",\"sort_order\":\"\"}]}'),
(34, 'Banner dưới combo danh mục', 'banner', '{\"name\":\"Banner d\\u01b0\\u1edbi combo danh m\\u1ee5c\",\"banner_id\":\"9\",\"width\":\"500\",\"height\":\"200\",\"status\":\"1\"}'),
(35, 'Banner dưới sản phẩm nổi bật', 'banner', '{\"name\":\"Banner d\\u01b0\\u1edbi s\\u1ea3n ph\\u1ea9m n\\u1ed5i b\\u1eadt\",\"banner_id\":\"9\",\"width\":\"500\",\"height\":\"200\",\"status\":\"1\"}'),
(36, 'Tin tức mới nhất - trang chủ', 'news_latest', '{\"name\":\"Tin t\\u1ee9c m\\u1edbi nh\\u1ea5t - trang ch\\u1ee7\",\"limit\":\"10\",\"width\":\"400\",\"height\":\"300\",\"status\":\"1\"}'),
(37, 'Sản phẩm giảm giá - sidebar', 'special', '{\"name\":\"S\\u1ea3n ph\\u1ea9m gi\\u1ea3m gi\\u00e1 - sidebar\",\"limit\":\"10\",\"width\":\"400\",\"height\":\"400\",\"status\":\"1\"}'),
(38, 'Sản phẩm mới nhất - sidebar', 'latest', '{\"name\":\"S\\u1ea3n ph\\u1ea9m m\\u1edbi nh\\u1ea5t - sidebar\",\"limit\":\"18\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(39, 'Tin tức mới nhất - sidebar', 'news_latest', '{\"name\":\"Tin t\\u1ee9c m\\u1edbi nh\\u1ea5t - sidebar\",\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(40, 'Danh mục sản phẩm - sidebar các trang thành phần', 'category_product', '{\"name\":\"Danh m\\u1ee5c s\\u1ea3n ph\\u1ea9m - sidebar c\\u00e1c trang th\\u00e0nh ph\\u1ea7n\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_news`
--

CREATE TABLE `oc_news` (
  `news_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_news`
--

INSERT INTO `oc_news` (`news_id`, `image`, `date_available`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(1, 'catalog/demo/tin-tuc/img-news-4x3.jpg', '2017-08-18', 1, 1, 47, '2017-08-19 00:54:00', '2018-10-04 00:27:39'),
(2, 'catalog/demo/tin-tuc/img-news-2-4x3.jpg', '2017-08-18', 1, 1, 49, '2017-08-19 00:55:50', '2018-10-04 00:26:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_news_description`
--

CREATE TABLE `oc_news_description` (
  `news_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_news_description`
--

INSERT INTO `oc_news_description` (`news_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(1, 2, 'Đánh giá AMD Threadripper 1950X từ ArsTechnica: vượt trội Intel gần như mọi mặt', '&lt;p&gt;Rẻ hơn, mạnh hơn và nhiều tính năng hơn Skylake-X thì có gì để không thích?&lt;/p&gt;&lt;p&gt;Nếu Ryzen chỉ là một cái vuốt má nhẹ nhàng mà AMD dành cho Intel để đánh dấu sự trở lại của mình thì Threadripper thực sự là một cái tát nổ đom đóm mắt. Để nói về lịch sử phát triển CPU HEDT (High end desktop – máy bàn cao cấp) thì AMD chẳng thể so sánh với Intel nhưng đội đỏ mới chính là người cứu rỗi thị trường này.&lt;/p&gt;&lt;p&gt;Thất bại của Bulldozer trước Sandy Bridge cách đây hơn nửa thập kỷ đã đẩy AMD ra khỏi cuộc chơi CPU khiến Intel có thể hoàn toàn tự tung tự tác cũng như “đẻ” ra một thị trường ngách HEDT dành cho những người cần hiệu năng mạnh hơn thứ mà Core i mang lại cũng như chưa cần đến những tập lệnh chuyên biệt của Xeon để làm việc. Cũng bởi sự độc quyền này mà Intel có thể thoải mái đặt giá bán cho dòng CPU này.&lt;/p&gt;&lt;p&gt;Ở thời điểm hiện tại, cùng với 1000 USD, nếu theo đội xanh, bạn sẽ chỉ có một CPU i9-7900X 10 nhân 20 luồng trong khi với cùng số tiền đó, đội đỏ sẽ cho bạn Ryzen Threadripper 1950X với 16 nhân 32 luồng. Không những thế, Intel còn hạn chế tính năng của chipset và số làn PCIe ở những dòng CPU thấp hơn i9-7900X, nhất là từ i7-7740K trở xuống. Với AMD, bạn sẽ có đủ 64 làn PCIe, 8 khe cắm RAM với thiết lập kênh tứ kể cả với CPU Threadripper rẻ nhất.&lt;/p&gt;&lt;p&gt;Tất nhiên chúng ta không thể phủ nhận rằng các CPU Skylake-X vẫn là các CPU mạnh nhất phân khúc HEDT hiện nay khi so về chỉ số IPC hay khả năng cân số khung hình cao mà game và card đồ hoạ xuất ra. Vấn đề là phần lớn những người đầu tư HEDT sẽ sử dụng chúng để làm việc và hiệu năng đa nhiệm lại chính là thứ giúp Threadripper và chipset X399 toả sáng.&lt;/p&gt;&lt;p&gt;Thêm nhân là thêm sầu cho Intel&lt;/p&gt;&lt;p&gt;Khi AMD ra mắt vi kiến trúc Zen hay sau này được chuyển thể thành Ryzen, nhiều người đã tỏ ra hoài nghi về Infinity Fabric. Đây là kết nối nội CPU để truyền tải dữ liệu giữa các cụm nhân CCX. Như với Ryzen 7, CPU này là sự kết hợp của 2 cụm CCX có 4 nhân Zen, được liên kết bằng Infinity Fabric, để tạo thành một CPU 8 nhân. Chỉ đến gần đây, người ta mới nhận ra Infinity Fabric hoạt động tốt thế nào và AMD có thể ứng dụng nó trong việc thiết kế CPU thế nào.&lt;/p&gt;', '', 'Đánh giá AMD Threadripper 1950X từ ArsTechnica: vượt trội Intel gần như mọi mặt', '', ''),
(2, 2, 'Làm thế nào để thoát khỏi cảm giác mệt mỏi sau mỗi ngày làm việc?', '&lt;p&gt;Cảm giác mệt mỏi, lê từng bước chân ra khỏi văn phòng đôi khi còn đáng sợ hơn nạn tắc đường. Phải làm thế nào để luôn tỉnh táo và tràn đầy năng lượng?&lt;/p&gt;&lt;p&gt;Một cốc cà phê đắng ngắt hay đôi cái bánh mì dường như không thể cứu vãn được ngày mệt mỏi của bạn. Không chỉ do công việc căng thẳng, vất vả mới gây nên cảm giác tệ hại này, có rất nhiều lý do gây nên sự chán chường sau mỗi ngày làm việc.&lt;/p&gt;&lt;p&gt;Brad Stulberg, tác giả của cuốn &quot;Peak Performance: Elevate your Game, Avoid Burnout and Thrive with the New Science of Success&quot;, đã chỉ ra những nguyên nhân khiến con người &quot;mệt muốn chết&quot; sau khi tan sở, đồng thời cũng đưa ra cách khắc phục đơn giản nhưng hiệu quả:&lt;/p&gt;&lt;p&gt;1. Ngủ đủ giấc, ngủ quá ít hay quá nhiều đều gây ra mệt mỏi&lt;/p&gt;&lt;p&gt;Một giấc ngủ sâu, đủ 7 - 8 tiếng mỗi ngày sẽ giúp bạn luôn tỉnh táo mỗi khi thức dậy. Đi ngủ sớm và tắt hết các thiết bị điện tử như điện thoại, máy tính bảng, laptop… trước khi ngủ 20 phút sẽ giúp bạn dễ dàng chìm vào giấc ngủ một cách tự nhiên.&lt;/p&gt;&lt;p&gt;Lưu ý, chỉ ngủ đủ giấc, bạn có dạy sớm hơn cũng đừng ngủ nướng, nếu không muốn cả ngày sẽ ngáp dài.&lt;/p&gt;&lt;p&gt;2. Tập thể dục đều đặn&lt;/p&gt;&lt;p&gt;Có thể bạn chưa biết, tập thể dục đưa con người ra khỏi trạng thái ức chế khi ngồi hoặc nằm quá lâu. Có nghĩa là, muốn tỉnh táo thì bạn nên vận động thường xuyên.&lt;/p&gt;&lt;p&gt;Tập thể dục đem lại nhiều lợi ích tốt cho cơ thể và tâm trí của bạn. Bạn nên dành ít nhất 30 phút mỗi ngày để chạy bộ, bơi lội hay tập gym sẽ giúp bạn tăng endorphin và năng lượng thông qua các động tác thể dục. Một cơ thể khoẻ mạnh sẽ nuôi dưỡng một tâm trạng tốt.&lt;/p&gt;&lt;p&gt;3. Tuyệt đối không bỏ bữa sáng&lt;/p&gt;&lt;p&gt;Đừng lấy lý do bận rộn hay... lười để không ăn sáng. Điều này hết sức sai lầm. Một bữa sáng đủ chất sẽ cung cấp đủ năng lượng cho cả ngày làm việc của bạn. Một nghiên cứu mới đây cho biết ăn trứng vào bữa sáng giúp bạn no lâu hơn là ăn cháo hay ngũ cốc, tranh xa những loại thực phẩm dễ gây chướng bụng, đầy hơi.&lt;/p&gt;&lt;p&gt;4. Uống đủ nước&lt;/p&gt;&lt;p&gt;Nếu bạn để cơ thể thiếu nước thì đừng ngạc nhiên vì sao bạn luôn thấy mệt mỏi. Nước chiếm 70% cơ thể, mỗi ngày chúng ta cần cung cấp tối thiểu 2 lít nước. Tuy nhiên, con số đó thực sự không quan trọng, hãy uống nước theo nhu cầu của cơ thể.&lt;/p&gt;&lt;p&gt;5. Đừng quá tham công tiếc việc, hãy nghỉ ngơi theo định kỳ&lt;/p&gt;&lt;p&gt;Khi bạn cảm thấy căng thẳng trong công việc, hãy đứng lên và đi lại vài vòng, thực hiện các động tác thể dục nhẹ nhàng để đỡ mỏi cổ, vai, gáy.&lt;/p&gt;&lt;p&gt;Ngoài ra, hãy tận hưởng ngày cuối tuần một cách đúng nghĩa, tạm thời gác công việc để ở bên những người bạn cảm thấy thoải mái.&lt;/p&gt;&lt;p&gt;6. Biết nói &quot;không&quot; đúng lúc&lt;/p&gt;&lt;p&gt;Ví dụ, mức năng lượng của bạn là 10 điểm, nhưng lại ôm đồm công việc yêu cầu tới... 20 điểm năng lượng. Thử hỏi bạn có mệt mỏi và stress hay không?&lt;/p&gt;&lt;p&gt;Ôm đồm, tham công tiếc việc không hẳn là sai nhưng sẽ tạo nên gánh nặng vô hình lên cả thể xác lẫn tinh thần của bạn. Biết điểm dừng của bản thân là một lợi thế. Nhận quá nhiều việc khiến bạn bị căng thẳng và chẳng làm tốt được việc gì. Hãy từ chối nếu bạn đã nhận đủ việc trong khả năng của mình.&lt;/p&gt;&lt;p&gt;Tuy nhiên, nếu đã thử tất cả những cách trên mà vẫn mệt mỏi, bạn nên đi khám vì rất có thể đó là lý do liên quan đến sức khỏe.&lt;/p&gt;', '', 'Làm thế nào để thoát khỏi cảm giác mệt mỏi sau mỗi ngày làm việc?', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_news_image`
--

CREATE TABLE `oc_news_image` (
  `news_image_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_news_related`
--

CREATE TABLE `oc_news_related` (
  `news_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_news_to_category`
--

CREATE TABLE `oc_news_to_category` (
  `news_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_news_to_category`
--

INSERT INTO `oc_news_to_category` (`news_id`, `category_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_news_to_download`
--

CREATE TABLE `oc_news_to_download` (
  `news_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,0) NOT NULL DEFAULT '0',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,0) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,0) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/demo/san-pham/8b0Suachuadienthoailgtaihanoi.jpg', 5, 1, '9500000', 0, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 64, '2009-02-03 16:06:50', '2017-08-27 14:02:27'),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/san-pham/top-dien-thoai-cau-hinh-khung-muc-gia-3-trieu.jpg', 6, 1, '9000000', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 18, '2009-02-03 16:42:17', '2017-08-27 14:04:34'),
(30, 'Product 3', '', '', '', '', '', '', '', 7, 6, 'catalog/demo/san-pham/10157397_768780243265375_1481604284710848246_n.jpg', 9, 1, '8000000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 61, '2009-02-03 16:59:00', '2018-10-13 08:35:14'),
(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/san-pham/top-10-dien-thoai-gia-re-co-4g--phan-15.jpg', 0, 1, '7000000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 13, '2009-02-03 17:00:10', '2017-08-27 14:04:27'),
(32, 'Product 5', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/san-pham/nhung-smartphone-xach-tay-dang-chon-mua-ngay-8.jpg', 8, 1, '9000000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 76, '2009-02-03 17:07:26', '2017-08-27 14:03:52'),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/san-pham/dien-thoai-lazada.jpg', 0, 1, '7500000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 67, '2009-02-03 17:08:31', '2017-08-27 14:04:57'),
(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/san-pham/images658070_r.jpg', 8, 1, '8000000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 73, '2009-02-03 18:07:54', '2017-08-27 14:03:45'),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/san-pham/cach-ket-noi-dien-thoai-samsung-voi-tivi-3.jpg', 0, 0, '9000000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 12, '2009-02-03 18:08:31', '2017-08-27 14:04:41'),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/san-pham/dien-thoai-lazada.jpg', 8, 0, '6500000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 74, '2009-02-03 18:09:19', '2017-08-27 14:03:38'),
(40, 'product 11', '', '', '', '', '', '', '', 970, 5, 'catalog/demo/san-pham/Phan-phoi-dien-thoai-trung-quoc-tai-Can-Tho.jpg', 8, 1, '7500000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 75, '2009-02-03 21:07:12', '2017-08-27 14:03:26'),
(41, 'Product 14', '', '', '', '', '', '', '', 977, 5, 'catalog/demo/san-pham/Land-Rover-S3 (10).jpg', 8, 1, '5000000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 192, '2009-02-03 21:07:26', '2017-08-27 14:03:15'),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/san-pham/1-fkal-1495007224521.jpg', 8, 1, '14000000', 0, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 169, '2009-02-03 21:07:37', '2018-10-13 08:35:06'),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/demo/san-pham/nokia-asha-501.jpg', 8, 0, '8000000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 177, '2009-02-03 21:07:49', '2017-08-27 14:04:02'),
(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/san-pham/Phan-phoi-dien-thoai-trung-quoc-tai-Can-Tho.jpg', 8, 1, '8000000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 151, '2009-02-03 21:08:00', '2017-08-27 14:04:09'),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/san-pham/tinh-nang-da-cua-so-tren-dien-thoai-samsung-la-gi-1.jpg', 8, 1, '11000000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 150, '2009-02-03 21:08:17', '2017-08-27 14:04:20'),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/san-pham/InfinixHot3LTE_zing_0.jpg', 10, 1, '12000000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 144, '2009-02-03 21:08:29', '2017-08-27 14:03:01'),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/san-pham/587462b806e40-1470146773luachonmuadienthoaiodautaithuong.jpg', 7, 1, '9000000', 0, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 116, '2009-02-03 21:08:40', '2017-08-27 14:02:17'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 995, 5, 'catalog/demo/san-pham/cach-phan-chieu-hinh-anh-tu-ien-thoai-org-10.jpg', 8, 1, '100', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 96, '2009-02-08 17:21:51', '2018-10-03 17:24:32'),
(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/demo/san-pham/InfinixHot3LTE_zing_0.jpg', 0, 1, '9000000', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 12, '2011-04-26 08:57:34', '2017-08-27 14:04:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(35, 1, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', ''),
(40, 1, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', ''),
(28, 1, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '	 HTC Touch HD', '', ''),
(44, 1, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', ''),
(45, 1, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
(29, 1, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Palm Treo Pro', '', ''),
(36, 1, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', ''),
(46, 1, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Sony VAIO', '', ''),
(47, 1, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'HP LP3065', '', ''),
(32, 1, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '	 iPod Touch', '', ''),
(41, 1, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'iMac', '', ''),
(33, 1, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', 'Samsung SyncMaster 941BW', '', ''),
(34, 1, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', ''),
(43, 1, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', ''),
(31, 1, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
(49, 1, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', ''),
(35, 2, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', ''),
(48, 2, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', ''),
(40, 2, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', ''),
(28, 2, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '	 HTC Touch HD', '', ''),
(44, 2, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', ''),
(45, 2, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
(29, 2, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Palm Treo Pro', '', ''),
(36, 2, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', ''),
(46, 2, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Sony VAIO', '', ''),
(47, 2, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'HP LP3065', '', ''),
(32, 2, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '	 iPod Touch', '', ''),
(41, 2, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'iMac', '', ''),
(33, 2, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', 'Samsung SyncMaster 941BW', '', ''),
(34, 2, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', ''),
(43, 2, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', ''),
(31, 2, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
(49, 2, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', ''),
(42, 2, 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'doan', 'Apple Cinema 30', '', ''),
(30, 2, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', 'doan', 'sdf', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,0) NOT NULL DEFAULT '0',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2462, 36, 'catalog/demo/san-pham/nhung-smartphone-xach-tay-dang-chon-mua-ngay-8.jpg', 0),
(2466, 34, 'catalog/demo/san-pham/cach-ket-noi-dien-thoai-samsung-voi-tivi-3.jpg', 0),
(2470, 32, 'catalog/demo/san-pham/land-rover-a8+.jpg', 0),
(2478, 44, 'catalog/demo/san-pham/8b0Suachuadienthoailgtaihanoi.jpg', 0),
(2482, 45, 'catalog/demo/san-pham/7200284_571186db46640c8d4eb146ee26b9a34b.jpg', 0),
(2486, 31, 'catalog/demo/san-pham/Phan-phoi-dien-thoai-trung-quoc-tai-Can-Tho.jpg', 0),
(2488, 29, 'catalog/demo/san-pham/Phan-phoi-dien-thoai-trung-quoc-tai-Can-Tho.jpg', 0),
(2496, 48, 'catalog/demo/san-pham/1-fkal-1495007224521.jpg', 0),
(2457, 40, 'catalog/demo/san-pham/InfinixHot3LTE_zing_0.jpg', 0),
(2504, 30, 'catalog/demo/san-pham/587462b806e40-1470146773luachonmuadienthoaiodautaithuong.jpg', 0),
(2447, 28, 'catalog/demo/san-pham/Land-Rover-S3 (10).jpg', 0),
(2456, 40, 'catalog/demo/san-pham/10157397_768780243265375_1481604284710848246_n.jpg', 0),
(2461, 36, 'catalog/demo/san-pham/images658070_r.jpg', 0),
(2465, 34, 'catalog/demo/san-pham/7200284_571186db46640c8d4eb146ee26b9a34b.jpg', 0),
(2469, 32, 'catalog/demo/san-pham/1-fkal-1495007224521.jpg', 0),
(2475, 43, 'catalog/demo/san-pham/587462b806e40-1470146773luachonmuadienthoaiodautaithuong.jpg', 0),
(2481, 45, 'catalog/demo/san-pham/1-fkal-1495007224521.jpg', 0),
(2485, 31, 'catalog/demo/san-pham/7200284_571186db46640c8d4eb146ee26b9a34b.jpg', 0),
(2450, 46, 'catalog/demo/san-pham/cach-ket-noi-dien-thoai-samsung-voi-tivi-3.jpg', 0),
(2492, 49, 'catalog/demo/san-pham/dien-thoai-lazada.jpg', 0),
(2491, 49, 'catalog/demo/san-pham/1-fkal-1495007224521.jpg', 0),
(2501, 42, 'catalog/demo/san-pham/InfinixHot3LTE_zing_0.jpg', 0),
(2500, 42, 'catalog/demo/san-pham/587462b806e40-1470146773luachonmuadienthoaiodautaithuong.jpg', 0),
(2499, 42, 'catalog/demo/san-pham/7200284_571186db46640c8d4eb146ee26b9a34b.jpg', 0),
(2498, 42, 'catalog/demo/san-pham/8b0Suachuadienthoailgtaihanoi.jpg', 0),
(2503, 30, 'catalog/demo/san-pham/7200284_571186db46640c8d4eb146ee26b9a34b.jpg', 0),
(2444, 47, 'catalog/demo/san-pham/8b0Suachuadienthoailgtaihanoi.jpg', 0),
(2445, 47, 'catalog/demo/san-pham/7200284_571186db46640c8d4eb146ee26b9a34b.jpg', 0),
(2446, 28, 'catalog/demo/san-pham/InfinixHot3LTE_zing_0.jpg', 0),
(2449, 46, 'catalog/demo/san-pham/Land-Rover-S3 (10).jpg', 0),
(2448, 46, 'catalog/demo/san-pham/Phan-phoi-dien-thoai-trung-quoc-tai-Can-Tho.jpg', 0),
(2453, 41, 'catalog/demo/san-pham/Phan-phoi-dien-thoai-trung-quoc-tai-Can-Tho.jpg', 0),
(2452, 41, 'catalog/demo/san-pham/8b0Suachuadienthoailgtaihanoi.jpg', 0),
(2455, 40, 'catalog/demo/san-pham/1-fkal-1495007224521.jpg', 0),
(2454, 40, 'catalog/demo/san-pham/587462b806e40-1470146773luachonmuadienthoaiodautaithuong.jpg', 0),
(2495, 48, 'catalog/demo/san-pham/10157397_768780243265375_1481604284710848246_n.jpg', 0),
(2460, 36, 'catalog/demo/san-pham/1-fkal-1495007224521.jpg', 0),
(2459, 36, 'catalog/demo/san-pham/8b0Suachuadienthoailgtaihanoi.jpg', 0),
(2464, 34, 'catalog/demo/san-pham/1-fkal-1495007224521.jpg', 0),
(2463, 34, 'catalog/demo/san-pham/587462b806e40-1470146773luachonmuadienthoaiodautaithuong.jpg', 0),
(2471, 32, 'catalog/demo/san-pham/10157397_768780243265375_1481604284710848246_n.jpg', 0),
(2468, 32, 'catalog/demo/san-pham/8b0Suachuadienthoailgtaihanoi.jpg', 0),
(2467, 32, 'catalog/demo/san-pham/cach-ket-noi-dien-thoai-samsung-voi-tivi-3.jpg', 0),
(2474, 43, 'catalog/demo/san-pham/1-fkal-1495007224521.jpg', 0),
(2473, 43, 'catalog/demo/san-pham/10157397_768780243265375_1481604284710848246_n.jpg', 0),
(2480, 45, 'catalog/demo/san-pham/10157397_768780243265375_1481604284710848246_n.jpg', 0),
(2484, 31, 'catalog/demo/san-pham/1-fkal-1495007224521.jpg', 0),
(2483, 31, 'catalog/demo/san-pham/10157397_768780243265375_1481604284710848246_n.jpg', 0),
(2487, 29, 'catalog/demo/san-pham/10157397_768780243265375_1481604284710848246_n.jpg', 0),
(2493, 49, 'catalog/demo/san-pham/cach-ket-noi-dien-thoai-samsung-voi-tivi-3.jpg', 0),
(2490, 49, 'catalog/demo/san-pham/Land-Rover-S3 (10).jpg', 0),
(2489, 49, 'catalog/demo/san-pham/Phan-phoi-dien-thoai-trung-quoc-tai-Can-Tho.jpg', 0),
(2479, 44, 'catalog/demo/san-pham/nokia-asha-501.jpg', 0),
(2477, 44, 'catalog/demo/san-pham/land-rover-a8+.jpg', 0),
(2451, 46, 'catalog/demo/san-pham/1-fkal-1495007224521.jpg', 0),
(2458, 40, 'catalog/demo/san-pham/cach-ket-noi-dien-thoai-samsung-voi-tivi-3.jpg', 0),
(2472, 32, 'catalog/demo/san-pham/InfinixHot3LTE_zing_0.jpg', 0),
(2476, 43, 'catalog/demo/san-pham/Land-Rover-S3 (10).jpg', 0),
(2494, 49, 'catalog/demo/san-pham/rcz1468829755.jpg', 0),
(2497, 48, 'catalog/demo/san-pham/Phan-phoi-dien-thoai-trung-quoc-tai-Can-Tho.jpg', 0),
(2502, 42, 'catalog/demo/san-pham/10157397_768780243265375_1481604284710848246_n.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(40, 42),
(41, 42),
(42, 40),
(42, 41);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(552, 43, 1, 600);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,0) NOT NULL DEFAULT '0',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(453, 42, 1, 1, '12000000', '0000-00-00', '0000-00-00'),
(455, 30, 1, 2, '7200000', '0000-00-00', '0000-00-00'),
(454, 30, 1, 1, '7000000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 20),
(28, 24),
(29, 20),
(29, 24),
(30, 20),
(30, 33),
(31, 33),
(32, 34),
(33, 20),
(33, 28),
(33, 33),
(34, 34),
(35, 20),
(36, 34),
(40, 20),
(40, 24),
(41, 27),
(42, 20),
(42, 25),
(42, 28),
(42, 33),
(43, 18),
(43, 20),
(44, 18),
(44, 20),
(45, 18),
(46, 18),
(46, 20),
(47, 18),
(47, 20),
(48, 20),
(48, 34),
(49, 57);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(33, 0, 0),
(42, 0, 0),
(30, 0, 0),
(47, 0, 0),
(28, 0, 0),
(46, 0, 0),
(41, 0, 0),
(40, 0, 0),
(48, 0, 0),
(36, 0, 0),
(34, 0, 0),
(32, 0, 0),
(43, 0, 0),
(44, 0, 0),
(45, 0, 0),
(31, 0, 0),
(29, 0, 0),
(35, 0, 0),
(49, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 46, 0, 'Tuiqwewqe', 'sssssadasdadsadasdasdasdasddasdasd asd adasd asd d', 5, 0, '2019-03-18 22:43:43', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(894, 0, 2, 'product_id=48', 'ipod-classic'),
(730, 0, 1, 'manufacturer_id=8', 'apple'),
(844, 0, 1, 'information_id=4', 'about_us'),
(877, 0, 1, 'product_id=47', 'hp-lp3065'),
(878, 0, 1, 'product_id=28', 'htc-touch-hd'),
(885, 0, 1, 'product_id=43', 'macbook'),
(886, 0, 1, 'product_id=44', 'macbook-air'),
(887, 0, 1, 'product_id=45', 'macbook-pro'),
(888, 0, 1, 'product_id=31', 'nikon-d300'),
(889, 0, 1, 'product_id=29', 'palm-treo-pro'),
(890, 0, 1, 'product_id=35', 'product-8'),
(891, 0, 1, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(892, 0, 1, 'product_id=33', 'samsung-syncmaster-941bw'),
(879, 0, 1, 'product_id=46', 'sony-vaio'),
(880, 0, 1, 'product_id=41', 'imac'),
(881, 0, 1, 'product_id=40', 'iphone'),
(882, 0, 1, 'product_id=36', 'ipod-nano'),
(883, 0, 1, 'product_id=34', 'ipod-shuffle'),
(884, 0, 1, 'product_id=32', 'ipod-touch'),
(828, 0, 1, 'manufacturer_id=9', 'canon'),
(829, 0, 1, 'manufacturer_id=5', 'htc'),
(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(831, 0, 1, 'manufacturer_id=6', 'palm'),
(832, 0, 1, 'manufacturer_id=10', 'sony'),
(845, 0, 1, 'information_id=6', 'delivery'),
(847, 0, 1, 'information_id=3', 'privacy'),
(846, 0, 1, 'information_id=5', 'terms'),
(893, 0, 2, 'category_id=33', 'cameras'),
(895, 0, 2, 'category_news_id=1', 'tin-cong-nghe'),
(897, 0, 2, 'news_id=2', 'lam-the-nao-de-thoat-khoi-cam-giac-met-moi-sau-moi-ngay-lam-viec'),
(898, 0, 2, 'news_id=1', 'danh-gia-amd-threadripper-1950x'),
(899, 0, 2, 'category_news_id=2', 'danh-gia'),
(900, 0, 2, 'category_news_id=3', 'su-kien'),
(901, 0, 2, 'category_news_id=4', 'thi-truong'),
(902, 0, 2, 'category_news_id=5', 'cuoc-song-so'),
(903, 0, 2, 'category_news_id=6', 'meo-hay'),
(904, 0, 2, 'category_news_id=7', 'san-pham-moi'),
(905, 0, 2, 'category_id=20', 'may-tinh-ban'),
(906, 0, 2, 'category_id=24', 'dien-thoai'),
(907, 0, 2, 'category_id=57', 'may-tinh-bang'),
(908, 0, 2, 'category_id=34', 'may-choi-nhac'),
(909, 0, 2, 'category_id=25', 'components');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('000321fd43829ead44aeec8577', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 11:16:58'),
('0009d48252ca9a432e37ca3c24', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 07:20:38'),
('0017b4cc66ba6ed0793dfe11c6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 08:11:38'),
('0019521b3fbbf47e8e332090cd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 11:20:24'),
('00271f89457a6c40ee891aeb9d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 10:50:42'),
('002c53b4f10a8ef0703a0e4e49', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 17:30:48'),
('00392375d90498473c453d9a8c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-06 20:18:46'),
('00596522099ed174483a9c16c7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-04 02:48:59'),
('005f487e1ffeab7a7513dfbac7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 01:36:19'),
('0093054c6e6344e1dcc15f6d8d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 22:15:21'),
('009f97509620e971f31aa79bd4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-17 07:16:37'),
('00a54ddb204aeaa785cd2199db', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-03 13:37:19'),
('00af061413d8a129057bbd904d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:41'),
('00b27184b2a2c4f2935a375d58', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:16:42'),
('00bed3e313026000ef35921fc8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 11:36:07'),
('00d52fa961b5a0811be6b58eba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-01 00:52:51'),
('00dbd2876d630b93bd9fa0624d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:02:45'),
('00df6d73d0c708683b8c81e057', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 22:50:23'),
('00e60fe862496b0857e424b657', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 15:52:02'),
('00ec34d376fa8c9ea0e3be498b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 23:47:37'),
('01159ada175be630f1358bec98', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-04 02:31:08'),
('0119fb00185d47a931b2444289', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-03 08:56:10'),
('0120da79dcae0830e8ba8ab859', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 15:09:43'),
('01232ee70683e50131e42794a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 22:24:48'),
('012b456d89425f64ab00029d5d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-01 00:22:03'),
('0134648bc954c7fde2f96a6eb4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 14:58:46'),
('014b0197347d30439523885804', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-05 22:16:39'),
('016100a15dbff8d2fa7d0a665f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-08 16:09:59'),
('0197804b3426ed91ee2b228765', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-16 13:49:45'),
('019ff827b7cfb3a8aa74f50e71', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 00:30:09'),
('01a64af7f6b81aad5d5028d555', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-19 23:32:00'),
('01a8e7ccca247b988c2ec4ce4e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-29 11:34:58'),
('01ba3b9ec77837d347116668f6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 03:01:41'),
('01d7e46971107d5ceae875f269', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-23 21:03:59'),
('01d99e1aea29fb19b55a58e564', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 12:41:18'),
('01e0a7fcbdae0e4e0fa97e79ba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-18 10:35:26'),
('01e9171b66ee778a3b98525c78', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 03:22:26'),
('01fa50fdf14a0448d920b8c112', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 14:44:59'),
('020489078239c17cdc93c10ebb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 00:09:46'),
('02137ae3d54874bb9ed9a08afc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-20 09:19:07'),
('0213c128f5c5721210957e1ded', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 01:26:39'),
('02180340d2d05fa167d1c3b6ee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:01:33'),
('0235dc7547b080dd2dd3411965', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 03:42:44'),
('023e8678d7089d203da86ac17f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 12:50:05'),
('02582cfad757130fcc0f528987', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:49:37'),
('025904a7474f0773d6a405d67a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-26 10:01:47'),
('025aa118fb2bd71318370a4f2d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-31 11:41:20'),
('026513c5dce1c9de06a9249e03', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 00:39:57'),
('0265a08ffb582fff66bc28b432', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 14:02:55'),
('028baf6c37815dbff6fe94f24f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-08 19:20:28'),
('028d4b585e96647d913415eb85', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-01 12:04:41'),
('02937b7a13df5a87f38d2fd4a1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 07:02:49'),
('029be67d1b23d2f21dc3709292', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 06:25:35'),
('02a9ca5cf15b6240009bcd6399', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 11:18:27'),
('02ab0c3f95df48a5aea00cc8c7', 'false', '2019-01-14 19:10:10'),
('02ac5600c044a722d0a5ec8a5b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 05:47:14'),
('02b24366fd7d42665bbc5bab16', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 20:25:42'),
('02b2b4e4b5973c9870f200e006', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-10 19:01:44'),
('02bb417f9e6a8491815f64072d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 18:26:35'),
('02ca62619dcfdd1f70b4d37959', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 03:57:23'),
('02d397c12184924a15d2d5f163', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 19:23:49'),
('02ddc416ef0ad381acd63c09a2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 03:15:29'),
('02e2b034d7c8cf89cba4392ad4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:00:41'),
('02f765aad78dddbda8cc979862', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-29 13:24:02'),
('02f792c975115963be0a937754', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 11:50:22'),
('02fddc5ebd03fc1f961b21d6e4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 00:33:30'),
('03375fa49c7d4c0e82bcb1851c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-13 00:50:37'),
('0338df1dc18565913611c0e56e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:23:44'),
('034818a32d9a9a72cb5fec9566', 'false', '2019-01-14 19:10:16'),
('036740a8fa806fc887941a1bf8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 18:34:19'),
('03696137da31e723c74bb5398e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-25 13:48:15'),
('036b77b2afc4e08589f8a6aef1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 23:09:06'),
('0372ecb57bd4ea74878d1ebe61', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:45:20'),
('039e7336575ee9767b280f9574', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 09:56:10'),
('03a4d0661327bb9128f17cf75f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 06:58:08'),
('03d35a97ef816f5adb84d17a11', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 12:05:20'),
('03ea9bfe5d5413bf46d67129f6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 19:19:55'),
('041cbfc86aa8e733f659fc63b7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:47:24'),
('041cc1be70a0899064005b8612', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 00:44:08'),
('04234ca5024fcb1012b708fb88', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 11:22:06'),
('042abf59228112882610063a41', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:27:08'),
('0449ef227d68617b7f1c09cdfc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:31:12'),
('0468bf00a24998cded06832e84', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-16 21:36:17'),
('0471e23094564c75dadd5502a0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 12:44:55'),
('047cf3d6c80fc40b6fc8d4f9fe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 20:48:55'),
('04874c2dd922e5b0290d74191a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 12:13:49'),
('048a1d4be13cb74eebc064d8a1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-09 04:13:40'),
('049f631547e1fbdc0a241840ce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-23 19:51:15'),
('04c68ebc8323cc68c4c3e79cea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 12:53:12'),
('050640a4944d86b23c22d25374', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-18 12:07:38'),
('0510145e7027c9345faae91acb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 14:47:24'),
('05643ebaa57829638bacf63fb2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 05:32:39'),
('058b274e812d7cc5027793970b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 22:19:54'),
('05979d44ab40ff8a4b445d2dfc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 11:18:22'),
('05b06ec5e5f75a0d8253f9dfbb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 20:02:47'),
('05b8dce855b812c00d449b5169', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-13 21:42:34'),
('05c515827d5e14370a79a5484c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-05 16:43:06'),
('05cfc4168e724a85f141e9e538', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 11:30:56'),
('05d2e4adc4e7229647b7dbd3c8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 17:35:50'),
('05d63500812c294985922b6254', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 04:25:25'),
('05ecb9d3bfd0acc54d9e199002', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-04 02:49:36'),
('05f1a4b45d415daf04a08b2b44', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 05:58:12'),
('05f1c9f8f3bbfb6f0acb3c8686', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 20:35:20'),
('05f6cca9d48ff37d02edf0c346', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 12:49:39'),
('06251a4c888302fd49a08db84a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-27 01:14:32'),
('06257bb5d1d4b415f23de85803', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 08:25:19'),
('06264da8a8f369545432b38b78', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-15 04:52:04'),
('062a055a69a792223529d4d93f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-21 16:18:55'),
('064be60f5304bf2f48a57cb51b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 17:56:27'),
('065645d06a8a806ac90ba43e34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:21:41'),
('06769248b0bde3bc8f9fe3efc9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:44:45'),
('06794464ee9bec9dabe74d1503', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-26 20:47:04'),
('0691a7cabee2ac1a459115be4a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 10:33:48'),
('0696e5cb2732b805ac0ada9fb0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 18:48:03'),
('069e573f4f79ab34dcf45acf59', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:06:53'),
('069f92a6b1172f7a258947e1cf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-27 10:36:11'),
('06c285fa0fe0c71ce15d43f99e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 11:03:28'),
('06d0ef88d3384b8c700b7de997', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 19:26:18'),
('06d377b871b8f4f1694fe94869', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-12 09:41:46'),
('06d4956d08873107db70a24ab8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-04 05:08:16'),
('06e5db7dc870de4b5bc3704cf1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 22:30:09'),
('06ed742ec07cdfcb415d0cb58b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-10 18:22:07'),
('0747fb7e76c27c90cb5c418236', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 20:53:22'),
('075ce72d529cb0f0aacdd2fd72', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 00:23:25'),
('0761884a265dc9e896a86deef6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:09:49'),
('0773ac6902bfb4fd33fd690aed', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 14:51:41'),
('079277bada60213581f2178f34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 10:43:42'),
('07a63ee02a56c8a1a830a87cec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 06:52:20'),
('07bcfc7a899ca988687ea0cc19', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:26:52'),
('07c0ba2c1ae78fc919d0d98242', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 14:55:05'),
('07c0e99508d68bc9a1880f040c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 23:01:26'),
('07c65273d6b075c91529622f1e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-30 22:46:27'),
('07cec12f2ed5485fc2587558ef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 07:22:52'),
('07f621f511a27e602f6d1428c3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 14:06:40'),
('07f8031dd387cfd005020afe2e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-14 08:05:56'),
('080b0683d978474b2bd7aec521', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 08:12:25'),
('080f2fa90456517e11f46c5215', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 05:40:53'),
('083113060ec59fa838752ffa9b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 20:04:12'),
('08331e1530c6c49e1033b6ab32', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 19:03:05'),
('083466ba99392b43a6f601748e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 12:14:40'),
('083c585810e691b7f169cc9295', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-28 12:27:14'),
('08574c8c096ece7b2cff7fa78c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 19:05:46'),
('085e1c2639753710a68390f84c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 06:38:38'),
('08a1eaedfa2609988514d227a9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-21 15:24:24'),
('08abc2ed735dd296932a5718c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 06:48:14'),
('08ad6f349943fb83bcb8292ec3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-05 10:49:27'),
('08bf3835f0106b1c9ff6704293', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 18:16:07'),
('08bf42feb7cac5fd1f343b4bfe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-26 22:01:56'),
('08c354e082ccec0e95c0b134d6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 16:44:44'),
('08c37e358702e35164ac99ffe1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 11:50:42'),
('08c6d6fd9056d4c0e6eba5b7ae', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-04 06:30:16'),
('08e6d9144712440010e011eb79', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:11:39'),
('0977e1574265f266e49c8eb454', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:48:46'),
('097fc61d839f2e7ffab85f41c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 02:48:11'),
('09a50155ab0bddc5339250aa17', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-28 13:59:21'),
('09aa5d6c33e066b1743df0ccb9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 04:23:46'),
('09b636cd45f5e5d58f3e901f3e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-08 09:45:21'),
('09d9aea0fdaa9fe6e52e9c7899', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 15:05:28'),
('09e9d99b4d8916d4da1bbd379b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 04:21:58'),
('09eb4c6dd9239fcb7790838bc9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-24 20:21:58'),
('09eb4db6a5d37fbdbd427b4bd4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 23:05:38'),
('09ec92ecc5dbd4413e19ab6051', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-23 20:07:14'),
('09fd31c0a42dd7eafe5233da5c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 20:00:43'),
('0a0fade8ef17181752c806b568', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-10 18:24:07'),
('0a1e6cd076badc021b9fb18b21', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 04:58:41'),
('0a23367ec1994fae4916a35b65', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 00:49:13'),
('0a24881d46ee2bb7577bc40efc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 19:39:51'),
('0a48edd2e08b9e9af6c669f0cc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:42:26'),
('0a54e1e82679cc3aa695257e01', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-16 07:59:17'),
('0a5f5277814a3dc8d9818e640c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 19:47:22'),
('0a6ba757759eeba527db4e75a4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-18 19:13:05'),
('0a6c136f91cc56d851342c3494', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 07:12:13'),
('0a963d37ce80d754e3b751184e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-25 12:15:31'),
('0aa4fd78f7aec0e4d528b78ed9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 22:32:29'),
('0aa656fd0a98e5e51518f328ca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:37:24'),
('0aaa9d19fe0734ebd0e1021458', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 03:08:13'),
('0ac76b92257c618f4451d9bfea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 01:04:56'),
('0ae67d9d89860e366097492543', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 00:39:57'),
('0af76cf5fba3c3bb29a450ec3d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:54:14'),
('0b0b3871c1c9962d6b3359741b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 20:02:43'),
('0b1d4389aab8dfc5919e6c8f1f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-17 08:38:16'),
('0b3b9ecd73c272d456fa5a6306', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 09:53:17'),
('0b45fdcf4b891427173000c43e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 01:48:52'),
('0b7e73a3b1a583d81af144f306', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-27 00:21:31'),
('0b9c2e506290544b4494b018ec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 06:39:12'),
('0ba1671f676930246715672997', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 13:25:17'),
('0bb53d7102ba2cfdcb3652ce70', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-25 17:19:30'),
('0bc2aa69412f401a5a8919de39', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:36:47'),
('0bc8044b3795958f74f89f5d7e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 23:22:55'),
('0bdc77093b27bb4aa98f961e91', 'false', '2019-01-14 19:10:13'),
('0bf9cc09a7acae343057f643cb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:32:15'),
('0c11e24d2462a430c9217fde33', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-06 09:58:15'),
('0c1c4808c594551c242133cfeb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 21:36:32'),
('0c1ec5f4703407fea687a296b9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 04:22:16'),
('0c2ad79eae091e1b7297c75bb9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 04:12:44'),
('0c303a0542364b168f8b4fd9b3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 16:34:55'),
('0c41437ce9bb2673a996c9c17f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:53:30'),
('0c5e7676d1945b391b5596feed', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:10:10'),
('0c61a5f7d62742e89bebc97953', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 02:49:41'),
('0c7c2d13094d0ba7a43bfa3d95', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-02 16:42:26'),
('0c7f6a59c1ea90de5bc8cc1ea1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 04:12:19'),
('0c82c20fda8ba950af63e945c0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 17:14:07'),
('0c8d410e83c1fa66aa97b01955', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 22:11:54'),
('0c966c2c4e38cfe49af39e2178', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 21:14:24'),
('0ca6d8995e27e728ca1fba1d45', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 23:11:09'),
('0caa9a5d6ba2cf895e8e3473d1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 13:23:31'),
('0cb12bacb37d1216af82e2b9bb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 12:01:24'),
('0cc0434e19f88c14712974e401', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-04 23:17:41'),
('0cd94929fc539d93a0da322dba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-24 11:06:42'),
('0ce2166ce9e48647219bed6706', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 22:21:34'),
('0ce50ba1caa8ea798ba1cc08c7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 19:48:44'),
('0ce8fd9615d44754362e2453f5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 10:26:17'),
('0d07c2109d135d37aef291c166', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:13:01'),
('0d148b24ee62377444da4262eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 23:08:31'),
('0d1dc6ed0c8d0dfb3080a74f71', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:23:43'),
('0d288e800f4dff124a999419bf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 23:46:55'),
('0d2d9ffa2ba78b5f386eb913ab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-01 16:51:18'),
('0d545c36010f656061bfda604a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 09:40:38'),
('0d71dbd052641696b8d24bbd88', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-08 02:31:16'),
('0d8c26e887228eb44c4025755b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-23 20:07:06'),
('0d918b497e8fb48f654093db14', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 08:41:45'),
('0d96438dcd17803192212bd551', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 11:52:23'),
('0d9814f4774bbfec4a49d5bfb1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 17:49:23'),
('0d994aa7ecb6c54ce872d80ca6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 20:25:13'),
('0d9abb9c8764e22cff2dc043de', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 10:05:03'),
('0dab7292d8945b2acc499ae4cc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 03:31:51'),
('0daedcf5f42ad1b4db18634dda', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 00:52:39'),
('0db1ad40ced50a520690ef5455', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 22:47:46'),
('0dc47d859f397c32f4cf3c9378', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:38:02'),
('0dc5cf6248587ac7f4d19c9256', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/download\"}', '2018-12-27 11:15:03'),
('0dc930f4ccc2e01bc96cefb858', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-07 12:48:20'),
('0df35cbf0cbbf97e1dd94bc0a1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 02:09:15'),
('0e008f6688fd46f6de79946d1a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-06 08:53:01'),
('0e0d09f658a89645b72601475f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 13:58:14'),
('0e147272234adb1e838c431899', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 12:58:30'),
('0e1cbe9648671c8394574bb930', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 21:40:36'),
('0e3891794ad971805405c534c1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 23:54:36'),
('0e45c7bb838a31d8a008e96086', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-25 22:54:56'),
('0e4b85bc775cbb7fc52c5e13d8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-06 04:34:31'),
('0e67e97302a8dbec69af3cea66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 14:47:00'),
('0e6fc226b89a9d4e6b6b5b779b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 01:02:47'),
('0e70bafb160bf4b6f4a0688215', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 05:25:32'),
('0e884d586342f3038a92be2a9f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 21:29:54'),
('0e8dca7b609c5a5d725038e4b9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 08:04:22'),
('0e9180e8afe878b444ab1eeb30', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 10:11:07'),
('0e9b4e927eaeaf3e2a16ae012b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-31 04:58:28'),
('0ea55b462e7391bfb04ec61a79', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 02:45:18'),
('0eaa2c3ae48529aadd401c0714', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 11:23:37'),
('0eb700badd63e16fb484a6d806', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 13:36:16'),
('0ec0dc544b9acdf07ebd510a7e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 00:21:40'),
('0ed6a6a9de269339f19fc7064a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 23:21:46'),
('0eddfd3930fae36b1280ef94da', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-27 10:52:07'),
('0ef0feb7de34d97adacf161002', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:53:47'),
('0ef4323e9adf9a2705e38efbd3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 15:16:05'),
('0f0965f02143d23abac512b95d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 06:43:51'),
('0f0f28df2de1ce513c5c7d6311', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-02 00:28:20'),
('0f104f613f2081f883c594222a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:38:16'),
('0f13c510dfcc00b8dabdf69c35', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 16:38:21'),
('0f152b52dd676531dad84726d1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 15:43:51'),
('0f16e3ca9bdeafd2b160d88258', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 12:49:19'),
('0f22497d528f85837e92cc8f31', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 05:01:10'),
('0f2ab22ee185df9bd80a1e25e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 19:37:42'),
('0f2b5812aafc5fd278318185fa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-03 00:45:17'),
('0f34b87ed19e24a8b967cfdab1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 07:47:20'),
('0f36d2f96db7c3a9d2bafb8cee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-24 18:19:46'),
('0f3d7a6fa446847b96d2787f6f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 00:15:40'),
('0f4728dd7983eeb56fdbb1d0f6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-21 19:34:47'),
('0f495d252d728163a3ad09a22b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 01:43:02'),
('0f4c34a090675a23a6036b2c4b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-05 16:40:06'),
('0f650bf6a81dda0cde8db3cb29', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-01 13:50:31'),
('0f7a3c0e5068fab4e086c4534c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:14:41'),
('0f973b14b8f3b622cfcc6c4fdd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 20:03:56'),
('0fa95b010d41cca7fc358d9c6a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-05 07:15:54'),
('0fe8e0f063be1169bf74dbde78', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 21:26:12'),
('0febf4843ee83a4e8a433daa32', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 00:49:17'),
('0ffb23552484e9c8aeedae7a8a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-02 21:39:43'),
('10018afd3094210b8394122f7b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 19:30:49'),
('102da5e1012de9d8791940f884', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-18 13:37:37'),
('103e5540a291b606f6b2dc4d58', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 21:51:59'),
('104a35df9b1555a5764eb729a9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-09 04:13:23'),
('1056e7e207b503cc187618f37b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:18:38'),
('1057d02c14ba8a18b99bab0c32', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 10:42:47'),
('105d80f2bf04be711dd8b8fedb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 16:59:37'),
('1063e3d4ad66eca916d64c1f5e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 00:18:03'),
('107775117e0871b331108f5e15', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 10:55:51'),
('10789686ced371edb6f7d6bfef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 07:33:02'),
('10af85b6f5b4aa71994110ab83', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 16:30:12'),
('10b231d6b222c20e5fd98e57cd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:11:46'),
('10d67936f727bcf3c6f2b17c8b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 06:49:47'),
('10e316b97d37c2a78e462fc8c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 15:50:20'),
('10ecde91c70c83b17828fc6d6d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 04:53:11'),
('10fac78330df24bc3be33d5f6c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:44:21'),
('11238174e00c8f9bc43beb372c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 04:28:47'),
('11299ac8934a552bbd657cf36d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-23 21:08:55'),
('119d232fbf2f386d1f82f03d55', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:41:09'),
('11a1abcfd2eeead4c96bd66196', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-27 19:47:30'),
('11b4739e7ec0e9b9dfaa1ea7fc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 10:11:57'),
('11bb80a4f4760e8418888523ff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 08:27:25'),
('11c8cbb956add3117342a3cb0c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 12:25:18'),
('11cd811ba12b33a071b36dda25', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 16:14:19'),
('11d0c5d06d2c4ffeac5e80cfec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:39:32'),
('11d2d2251ba75bc83017c92b9c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 16:46:33'),
('11dec47c54f254cc5028245fd0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-04 18:37:53'),
('11e23cfdb685eca75839765448', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-30 09:12:45'),
('11eae7c90d5ff8415c6f2c8d8a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:29:41'),
('11f42cf3a2db37eb1cf3873873', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 03:07:08'),
('120a5d34403d73421ea993bfa4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-25 21:47:42'),
('12140e65abf4c16b544d381a02', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 17:23:10'),
('1216c91bf9a6a18ec287631cd0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 08:14:48'),
('1233caff83077fe83f80aed6ab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-06 05:04:40'),
('1246a3b1445bd734267004591f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-08 00:26:38'),
('124a3bcb706314d3c6c7f534b9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 16:32:54'),
('1261f15a9d6aa9cd89d40b1c92', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 08:36:23'),
('1270645be24aa26795588e8918', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 18:36:42'),
('129ddc78e3fdf3f3ff95ae9245', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-22 09:55:25'),
('12a9adeb519e1d9bece11ac9fc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 15:37:42'),
('12ac41b60667d9061c6d7467d0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:19:45'),
('12ae04183fc996c95ff5642ae3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 17:33:11'),
('12b008ebfb62626e034b6bf42c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-25 15:18:19'),
('12b5256dc0cfb6e3e28b272fee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 05:05:40'),
('12be427e3d993faca8fe6cf7a4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:31:20'),
('12d53e5ce7d5fdaf53e9281200', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 03:03:09'),
('12f69092b75f95e42092799e82', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 17:41:32'),
('130bf1d539ac8711762983eaaf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 15:01:12'),
('13108a6ce433c6a616b4e29bae', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:38:39'),
('131547fe89ec799235b9704e14', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 08:19:42'),
('1319394f01c64b1110624b49e3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 02:45:24'),
('131f51bfc725f8bb34cb06e14f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 12:40:07'),
('1359b553a6896c4bd8326bbe19', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:49:07'),
('135b7f4f171e3d094a04fbd0e1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-11 23:40:18'),
('135c63ef6ce78126867ba3d904', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-21 03:08:26'),
('135e39a2a2db64d3b272ca87ee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-01 08:42:48'),
('13733141fedfdf8428c6f42047', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 10:02:12'),
('139bbea68a1c732555745b5531', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 00:07:15'),
('13a081736a99bceab9bd4e859e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:43:22'),
('13c8c1779cd21c4a1c0e26c465', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-15 14:05:16'),
('13cd35214f7f8eb289e72002c1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:51:08'),
('13d5384cb247d691be948c0290', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 03:51:21'),
('13d74e97bd66fed1926c98de66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 07:28:34'),
('13dc24cad407591e82d0d6bbdd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-06 17:26:02'),
('140550c311d02dc4f0ad3f9281', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 02:10:30'),
('141d276d59e22fc4a0a50c17f4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 08:44:20'),
('141f87b70e9f5268a67f3aecd6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 11:54:57'),
('14221b2a5066881ab8b6fab14a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 16:44:15'),
('1446e7e4b7a098c82fbf5607a1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:22:52'),
('145bf9787fa7980f57213b71d5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-15 14:48:57'),
('146d589ba4ee8a0f3817dd7dc7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 01:32:04'),
('14888b318a76e64946c6b7b53d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 06:41:23'),
('1492f314f5a349f5dfb3630c09', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:17:43'),
('14a589c275cd35c3afdd510dca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 01:04:56'),
('14a69116dd6bf1d7f8a959495d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 16:21:15'),
('14b1602ee4b8e8f1d0fde53caa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:51:19'),
('14ba5abaf99fec72a55a9fd8a6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:25:52'),
('14bfc68754d84b061b04073a04', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:12:42'),
('14d34f37dd15999384f0f1b766', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:49:22'),
('14ded57fc3e4bb3d0ef4881a4f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 05:43:11'),
('14e707317cb3bec7d946c82176', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 18:09:51'),
('14ea3fd71918000020c4ad9190', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 03:42:58'),
('14f65ef90caaa1ff24494faebd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 00:34:12'),
('152edfca9f1e3bd360cefe3639', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-09 03:43:47'),
('15303e3fe25642aabd336a11ce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 00:14:04'),
('153bc80f7fad5071b9ad9e9248', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:42:03'),
('15413c0586d8a6cde9688c632c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 17:08:25'),
('15414b7e2ba401ab16467a538a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 10:03:46'),
('15706e2d9b3adcfacec82d690d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 13:39:55'),
('15712e16c96002b07cbfc2da98', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 14:07:20'),
('15856de46380564af26700c91c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-27 14:43:17'),
('159573d0433a8c0afe7039ded6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 21:58:31'),
('15bcf833196e3b2ec7dd80a28d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:56'),
('15cc00612a6d730fd1b058001e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 04:45:24'),
('15d41c17a8b3b683b20bd809e1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 16:37:36'),
('15d5682a6eaceba7d52c6a25f3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:20:39'),
('15e48f87678b7253027885c81e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 20:25:39'),
('15f31cb2f9b5531d7c20a16531', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:40:52'),
('15f8a6f48778d9460ac30546cb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 02:55:56'),
('15fdae9fb834826e8dbe47b83c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:48:35'),
('1621f471387b1df5032d37633f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 21:29:22'),
('1626620889ba5f0ab49bebfa93', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:38:20'),
('162a97c754474057cd13bfb7ae', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-15 08:14:48'),
('162d5faaa41130f3ce9538f050', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 15:38:59'),
('1654135f168ed4df0005acaf21', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 23:58:16'),
('166d556d33b8b3487d84f56201', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 06:35:18'),
('1690cde82072a9fd2a882792a4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:07:06'),
('16a134fe69ec3501a398e43598', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 23:20:21'),
('16a23e24046af994ec2e295d9c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 07:01:05'),
('16d1c258fedbd0fae4b18c3761', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-22 11:10:31'),
('16d41a440647d98d8332f008b9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 03:33:28'),
('16f9a49d60719d69a5a028aa4d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-02 00:51:14'),
('1713d03cb09dcbc69e89d9804e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 17:02:13'),
('1715450eda057708158382cb58', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 23:02:54'),
('1715ec205e65269dcc70b077ed', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 00:13:53'),
('1718f9c436d9b0825c6311eeea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-25 22:54:49'),
('1729410363d8fee071e0252b45', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 11:07:36'),
('172e46f07057583599ba18e172', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 18:27:04'),
('172e782eb3c77f1fb7988ad8a2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 06:34:27'),
('1732dae1f0ee934348edbdfea5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 04:18:25'),
('17466dd81fe9d844cea22d666a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 15:32:40'),
('17513943fb7d8bb648b757d8cc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 16:17:22'),
('1751e48907f0e3810cdc945fc8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:47:58'),
('175272e0a85a22924aca9e5a35', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-15 08:55:45'),
('175e335bea8c98bbe7fa788549', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 12:14:46'),
('176207462f49a12d007ede4ac2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 23:44:27'),
('17754c4ad90fec83f3ff4c808a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 05:55:19'),
('1788b8f81ae0a71e0f9eb5a1b5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-14 23:01:10'),
('1795cf39654527d8cbb387942f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 12:12:58'),
('17a16f52dae4f173d93b0516bd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 07:46:07'),
('17a5fe687093f695223e24396a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 16:19:45'),
('17a6d8d5cd3e71704294907089', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 14:33:09'),
('17b17400ec8c3f7ea9c23b4fff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 18:26:31'),
('17d37cdc554c2437b66f81f053', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 14:06:53'),
('17e1e376858d45a75964494e76', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 01:04:15'),
('18001dcffcc29aa9751d9ccb0f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 20:22:00'),
('181578092bb50bcdd66aeba7fa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 23:31:49'),
('181828580778db5fa8f3bb11c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 23:49:57'),
('18188340fcf4fcc318ec3ac931', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-06 09:58:25'),
('181abb4c1df31d7130eabf78cf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-10 04:32:36'),
('18206b69ff39e2df432657e2e3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 01:40:27'),
('1821902e23e965dbeec8b821d0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 13:19:22'),
('1821ca86009f5ab792c73bf96b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 09:18:59'),
('1835a5c9db5b14e52895e53b2b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 16:19:45'),
('1837f96659857998973d9acc17', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-18 19:12:49'),
('183ac78870684d3edb8a295cff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-13 02:05:35'),
('185371b222fc21ee4b7bdf5257', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 13:55:51'),
('18674e627abcf827b7e9cdb041', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 01:14:03'),
('186d2033b863306d358544df51', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-14 10:44:19'),
('186f765809e5baf8ce42994f32', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 10:19:05'),
('18803e1baa0ffc367683c03794', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:41:26'),
('189376d7498c8c8433fbc76a66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 11:28:04'),
('1894b8afab0e6694494600f253', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-08 14:53:14'),
('18a51fec8a716dbb0b0b579550', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 13:01:33'),
('18b2861d9fc1cdb647170e1bcc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 17:38:37'),
('18bfb9170291de03bf4e22b702', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 19:07:22'),
('18c528ee7bee71bb51dea9df8a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 23:46:42'),
('18ce78856eb64217723b5f9756', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 14:53:04'),
('18e3f6efbd06ff39bd5cf6ec83', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:11:36'),
('18fac83eb61d52702227e5e1ca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 13:20:17'),
('190902ba7b934865ede1f3a8c1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 01:04:25'),
('19113aaa80057380b03dfa52d8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:09:12'),
('1916750ae8d63df65a2375d5eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 07:43:37'),
('193774f6260f75859fb11726e5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 12:32:50'),
('19533f372ba3e1576d52c171e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-02 05:36:06'),
('19704b467133cda76354b89a75', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-09 16:35:55'),
('199e69ad0d23f58e19d4606ed2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 10:48:03'),
('19a54d7883a814c5c7f80c150c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 21:14:27'),
('19adca54234c7ee4f9938bfb12', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 15:20:12'),
('19bbddfb27447620d4ee4c4cb2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:35:52'),
('19e257300a26987557f2fa6a37', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 01:36:11'),
('19efc4d1537dca407872683ed1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 21:44:19'),
('19f9b3ea2909a6c4262aef0b8f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 11:59:13'),
('1a18d6fb7cbb2ff855ed9d7ba1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-10 17:10:22'),
('1a32e318b22d5c5550c276e7da', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:57:34'),
('1a34778287dff1c987e00a418d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-17 08:58:19'),
('1a499890abc02d3d98d6b6dc66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 15:52:10'),
('1a530864cce2824a9ad3d38a34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-16 21:40:11'),
('1a6a52f20697e9b125f2a6b102', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-03 15:35:36'),
('1a7340b7f97eebc357dca12744', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-20 12:29:45'),
('1a78af94b0be44feb60f40da08', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 00:43:14'),
('1a99b3ab5c1b60bd7bcd77c294', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:03:33'),
('1a9b025655fe29a62a8182f3a3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 21:19:21'),
('1aa7e7595983fae4c0db2befef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 07:44:09'),
('1aaf914fa122bb3abddb3e2ee8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 10:53:23'),
('1acf7b639c43c75b5d9e14cd6c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 20:49:15'),
('1ad0d05ba0a955d8f8f82f4905', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 16:27:00'),
('1adf24ecc4487478fdbb8d1e6b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 05:44:29'),
('1ae1e18945d347fdd325f96023', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:25:34'),
('1b05f1a1dece2ea5fd75d7a3aa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 07:50:58'),
('1b12220f393f3f91793cfee59f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-23 03:15:39'),
('1b19a294efd458e3cc7c7d73af', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 14:53:41'),
('1b19a2aff7c13144257a4adf11', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:40:02'),
('1b26cee152c7144f0c7772c123', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 12:07:48'),
('1b31d7cd2d95be7197fa020ad0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 07:11:01'),
('1b32b5d997dfb73d070b7c2fac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 15:44:01'),
('1b5322039acf4e3170fffd3d0c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-23 04:21:44'),
('1b6f0daa3e15199e39a74f551f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-26 15:50:13'),
('1b7d408a8d71d5143a2c19a900', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-27 01:48:11'),
('1b8dbca0fbce7e1f942d656682', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 12:23:22'),
('1b9bc833565a5e5ccc8121a8ab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 07:42:09'),
('1bb3ef6b7070f75169f27ebe00', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 16:13:34'),
('1bb9c16b2712a3034ce369ebc2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 07:49:42'),
('1bcf4e72cf1e02bbfe7e1c8ce2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-22 23:39:05'),
('1bd257e63f615c85f695836898', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 03:27:23'),
('1bd3172fe4769a000aca6dbb1f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:31:20'),
('1be2d8f33e49292f5e24816d55', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 03:56:13'),
('1bf2154a8745867780ffe65324', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 12:23:41'),
('1c1eaba7d61bc3ee402aa68dc0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:43:08'),
('1c23e675a65f8c41fd59c4ddea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-31 16:13:38'),
('1c242b5a11f8b04ded3c6b33b6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 05:12:19'),
('1c381e3cf6de7245abcd220c5a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-09 16:39:25'),
('1c4c9c435678b2239dd87ff117', 'false', '2019-02-24 23:26:16'),
('1c528e1c65fa9c9e634b9b30dd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 03:02:00');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('1c59e16d2650a41275ba5c6085', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 18:35:02'),
('1c689226b8bdfa188a0e4d3455', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 15:33:03'),
('1c6e0c2466acdcf076f0b9ab9f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 11:22:09'),
('1c6f48f1cf3b58c86950a53426', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-06 05:50:52'),
('1c750d2e2d68093196f55c76d9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 06:36:43'),
('1c7b275cb9ab877945f500e704', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-30 06:23:00'),
('1c917a5adfc4a84011bd8423a1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:56:25'),
('1c96ee059544ff1072cb826601', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-04 23:17:33'),
('1c9ba65ccc32b8b10a33f57e30', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:15:57'),
('1c9fa5999eb622fea66f45acaf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 06:16:52'),
('1ca068ee5289ce1c804668e846', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:04:29'),
('1cbd3b628a7841d26c8fe4b460', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 22:27:40'),
('1cbd8e44a8b29abc930622ce39', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-05 11:14:28'),
('1cbe26eb45d189ac7df4dfeab7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 22:54:19'),
('1ce33eb3dc76dfce7fd604977d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-08 08:27:50'),
('1cff756d739d7d92a8ec81ad2c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-28 01:57:31'),
('1d0ae584f32700f48e9a1dc7f8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-01 14:44:14'),
('1d1269023bd4411b9a749c7285', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 18:38:51'),
('1d2bd9ad4e9c2b61da8bfe32de', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:25:22'),
('1d3ec02ab9a670b43f7ce53b15', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:44:12'),
('1d465e69a39998f889dbe6f837', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 14:52:00'),
('1d63270c525b74a70abfd9b861', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 00:39:54'),
('1d775016e4c5b3a3ad9a8e7854', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-02 18:28:42'),
('1d85a9715b32b86fded707042e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:09:16'),
('1d9096dab8aa5897a7914689f5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 00:23:36'),
('1da34f8ba572a320f1f74b0459', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-06 15:22:09'),
('1da73e4cc166ca2583ffec8fa0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 06:59:27'),
('1daef2b32ef9399386e8f92f46', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 08:04:01'),
('1dce0d197cd0858144626a0b05', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 12:39:13'),
('1dd8c9a8aeafb52255de2641c6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 14:23:00'),
('1dda2e48254003409520a90c90', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-27 08:23:55'),
('1ded0d5473889d82f28f329ad0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 05:16:20'),
('1df832adcf9b92696d761f6063', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 03:33:30'),
('1dfa6ae811eca30a30464c7d06', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 10:24:27'),
('1e009745ff8f8711a3adfce85d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 16:14:38'),
('1e0a10cdd52f30d347d9234698', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-21 16:43:14'),
('1e0a64dfddea7a381ce7f5605f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:36:43'),
('1e2442d51d6a65e871122360d8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-15 11:33:01'),
('1e2be72e1ca5c6b1785e6eb157', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 16:08:48'),
('1e714cd0875d42428ab6e3d6f8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 06:20:36'),
('1e782bb46bff6ddbbbe27fa4c7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-26 18:52:19'),
('1e782bfac65e8018a58c821ec3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 13:22:56'),
('1e7b3acd7b3eef9c5fd6f4a569', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 22:17:39'),
('1ea5d7aaa94475decccfade954', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 12:14:18'),
('1eb3191ae78efc8f5c1dc4a5e2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-27 03:32:39'),
('1ec339404ba033595d8ca4aea8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-09 17:46:29'),
('1ec9d8d4456db24a4dd310967f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-07 14:21:03'),
('1eef3305248ac535273482c0ca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 12:05:18'),
('1ef2d9f205202bc4a611688c55', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-28 01:13:24'),
('1f030e34c4536cc47dd5d45027', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-03 04:22:11'),
('1f147adb4dd4643346d7b85ab7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 20:14:44'),
('1f201ff2ac419306fa3da67eee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 22:42:50'),
('1f2620979b463a2f98cafa8fc2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 21:53:20'),
('1f26a893ea83b41bd3204fb5a4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:45:26'),
('1f43ee3d91136d335f3d850175', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:43:29'),
('1f4599cc80324d634a701a6050', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 22:28:16'),
('1f603800127f8f0e4544fdfaee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 17:58:16'),
('1f647aff5f321d2513e387cbab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:02:06'),
('1f82e925c581f70c8dffe6b31b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 18:52:16'),
('1f96a4319c331a857e67378bbb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 17:31:04'),
('1fa0fe5fc19b543635aac765ed', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 08:49:52'),
('1fb495dcd9ae6aac97515245c7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2017-08-27 07:47:08'),
('1fc9a98cacd360b0f5c3224af9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 16:35:02'),
('1fe2779ca3fda8580c3be361e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 10:36:12'),
('1fe4d6e090f3692d8c6cf13ac1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 14:57:13'),
('1fe79011ac617625a9126ada06', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 21:45:43'),
('1fee3347ee355393acfcf9a71d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 08:34:52'),
('1ff21e732db01814fd3a2766d2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:03:53'),
('1ffa6a84b9cd7ea4d612f3d566', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 06:18:16'),
('1ffc455b1fc701daa44abae619', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 18:28:25'),
('200dad996251f221c9f9050936', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:10:07'),
('203e1e0858d9679479bb2202b4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 13:07:09'),
('20585960f04eb6612d5ae48875', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:11:56'),
('20802c2d620d226b946b3a4d10', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 13:48:41'),
('208a322f81c2e3cbbc2a9cf12d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:17:34'),
('20957194d5b38d5e02770843d5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-24 17:49:08'),
('20a1b41cb3adf45dacc7661adf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-18 14:11:30'),
('20a7528b016e7dbb6d62963411', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:34:44'),
('20a96ee9c3a6deae130721972f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-18 13:18:18'),
('20ad042ba186995cab137fc165', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 05:00:44'),
('20ad22a93377c6ca7ba55201fa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 23:52:08'),
('20c5b2c60c14b3417383ee29d2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 21:22:34'),
('20ce0492f46b5a588c65102759', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-25 03:07:21'),
('20f0f37422ab285742276092f6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 22:17:05'),
('212fc01578ad261998fb8ac56d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 11:15:36'),
('214567059352cc48daedd0b894', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 09:36:51'),
('215834896ef9e9c320a87a84bf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 10:26:46'),
('2158f139e6932179eb62955d71', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 11:19:37'),
('2161b8dd5d0d60f26e9ac3caeb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 13:15:21'),
('217123a53d770c456c3abb9af8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 18:12:13'),
('21746f479c4772233ca751964d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 03:00:49'),
('21817f6759d1b345856179b5db', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 09:37:42'),
('21a6a1d1fc7d7e6cfe8242de20', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 16:03:25'),
('21a8ca7128f1a2d324da933185', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 20:58:45'),
('21b4af45ba927b1bc032f67ff3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 05:11:25'),
('21bd8e43f8c31b2de64255c608', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 11:38:39'),
('21c06416fdad2d11492801938f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:16:40'),
('21c5de4f2801104cd47ee6cd93', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-09 23:45:49'),
('21d091915287bfc18d6bded1f3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-05 14:52:39'),
('21d231e28485201d175d60633d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 08:46:57'),
('21d363285155574d88223e66ae', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 15:20:22'),
('21fe387371eec0f24af18c7331', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 16:15:02'),
('220b232c8b17509c90a8f2fb3e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-18 17:25:18'),
('22149af61aa86b40544381da8b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 09:56:16'),
('221564c01002dc20ff9f96a8b2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 11:15:46'),
('22472d353b11ff52173286985d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-05 14:52:49'),
('224a65c500612c73c6b28b01a5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-05 14:52:39'),
('224e372f7b5a2731425f98cfb1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 17:31:32'),
('2268c7c4e5a0f3f95143c7a08d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-18 18:50:00'),
('228177e357eafddb94c8f89ccf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 21:01:11'),
('2284a3221ed64f39af85ece912', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 19:01:02'),
('228cd5f9da9b916ff81dd423eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 20:42:57'),
('229c96c5c8bd7633f116c94503', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 22:40:06'),
('22bf3b6d274d3a99ec8ac203b1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 03:54:01'),
('22c56b9620b57e737b1fcba82b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 12:47:40'),
('22e1b1bf17bb0550b6fb677a5f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 18:42:53'),
('232523523ff55390d51135dc67', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-30 06:53:41'),
('23363752bab3c4fff1aaf009d9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 15:53:44'),
('235583677acea83327d459054e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 04:09:41'),
('2356281597f4d9c8c5937b6e6f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 20:03:19'),
('237a4b15a029081b0ed72a4689', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 12:45:29'),
('2386ce38a5ba6cbb22a9541ed3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 16:48:44'),
('238ac879f444eebd9ed1044e97', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 17:15:54'),
('238b922eba4110efea4badca2a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-24 17:11:11'),
('239c2bbb27c622884d2ecae720', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 02:21:25'),
('239ecbb73a7d7a4bd9f0c4a74c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-10 06:04:47'),
('23b93f150f73e85196a5bf11da', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 16:51:01'),
('23bfdb927b16c09763d2a48f8b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 01:57:26'),
('23c88753dab42de75ff64ea54b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-21 18:04:15'),
('23ca0ed651bf65ac8ca078f9dc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:38:11'),
('23e0d710bb059635f35e483a7f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:27:04'),
('23ebc4c302d76b28aefa17355f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-16 21:53:54'),
('23fae061d352226f99138f6628', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 11:26:36'),
('240e2513dc5aac58e61b119a31', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 22:10:54'),
('2434a3a1fc284716dbd940623d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-12 12:23:06'),
('245a5fc89ded5e9259df4572f4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 20:32:29'),
('245afed72d172c8ffa0522858a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 14:07:52'),
('24660ec4528f29ab16eba6b3ef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-05 00:33:03'),
('246727c8ad323005bc0013cbe6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 14:32:18'),
('246d9c556ad1845bdbf5dad301', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:56:41'),
('2483477196ffd98a2d5393dd97', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 11:32:49'),
('248587b471e04fe9717d1d24ee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:03:56'),
('24a05c646ccdbb472caf1e333c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 11:27:37'),
('24a8d52bb128453459bed62761', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 03:27:55'),
('24b678dc2717960560e3f7fdb1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:38:09'),
('24b7d2d27cb2249ed70ae1a99a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 02:24:51'),
('24baea537341f473238dddfdc7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 19:26:49'),
('250876b3871e2e167fd2b92381', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 23:27:59'),
('251aba8b8fbc447cb8d6403dea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 06:02:03'),
('2556ebc4750a529c17f62c2d20', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:11'),
('25578047a1e1dde4e9d1cd39d5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 20:17:13'),
('2572f271fd3f2616acd95ce7f6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 13:16:09'),
('2578c18d49012034d7797a2b85', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 19:38:36'),
('257a719b5a545a1b8968c2cd78', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 10:15:58'),
('258b98c48280c1ae13a00db354', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 02:21:45'),
('2595c0e07978e7856a8b210727', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 22:57:30'),
('25b76c3ac77b4254919cfc1f88', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-05 02:40:47'),
('25b7fcbcf25a7664f9ae4c92e8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 11:37:47'),
('25c06af6708673ad58eaf82977', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 12:13:05'),
('25c79a7a0baa41f325469e97b3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 00:55:01'),
('25c8b84d1bcf7165e092de44d1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:57:10'),
('25ccfcf6690b9785b3b4ef6ee0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-26 15:18:14'),
('25e2d6e45f8c1721c569c58f60', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-28 12:33:38'),
('25e584507e5dd63ed4679e8db7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-18 15:53:23'),
('25e76f900b6e7b17c6861b9006', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 13:45:43'),
('25edb7cbdf4aebd30ea40da9b4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 20:27:16'),
('25ef695533242be28afcab3df4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 17:47:04'),
('25f2c6c805473df87a327a58bd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:08:13'),
('25f8177e68ac454505fa28ac14', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 11:16:25'),
('26220ad50c4030549a6d80b544', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 14:24:43'),
('262f96e6a8a8c7cce404da69a3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-17 16:57:51'),
('263e70f2ec8ee37fb2633dd1ed', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-23 15:30:26'),
('264cb6a04fe77438549aa04bba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 01:54:37'),
('2665a97c7cfbbcc3abc3b48a73', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 14:18:41'),
('2676989fd05675e160349e940a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-04 18:17:16'),
('26905081b2c1ba7e5d88527c7e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 09:34:28'),
('269470ff1325b8aa1bf78a6679', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 09:20:05'),
('26a583e2f53657c634ca11794f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-24 23:05:32'),
('26a9999bc5acc5ff63df43cae7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:37:58'),
('26a9a3a051e84645cf0856a06c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 22:01:20'),
('26ad1affb8782319d885f83471', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 22:59:14'),
('26c423ca7b24e17f751f70e050', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-23 11:12:59'),
('26d2c389f9a38ddc8cc875427d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-30 05:07:10'),
('26d530407c91c38255e813a96a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:18:25'),
('26d6aa7929882b74462b2e6f78', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 12:17:13'),
('26d90f05f80f8d17948178af1a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 22:45:58'),
('26eeb721d4aa9ce802cbd655af', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 08:03:35'),
('26f782872f233bf7e1ea2c1845', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-02 23:51:21'),
('2710556084f920a1e005be59cc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:42:54'),
('271f256a2b78c2321713efe0e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 23:52:56'),
('272bc3b3696f514e64553de6e2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:12:18'),
('272cb81df961306d36d41efeca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-12 04:56:08'),
('2730e1c1d0ee453265dde92e45', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 12:47:00'),
('2738f09026fb575156a82c0902', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-12 06:57:21'),
('2747cad173335b1ae2bbbfd457', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/order\"}', '2019-02-15 03:50:19'),
('274a909825ff3334d5547158c0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 21:40:19'),
('2754d02ff769b0ae93f88ab467', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 16:29:01'),
('275c564e1b2c2089d3224474a9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 02:46:50'),
('2768a714b0d81d4f03cf5e4856', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 18:54:29'),
('278fa2a7af45036938c3354f01', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 09:50:52'),
('279c4383a7090514c9430402de', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 06:12:21'),
('27ecef95df2e199fcc42c24a36', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-29 04:08:04'),
('28002ba458240eaf6b3b5914eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 14:37:49'),
('28018b7481ab280e8f65accd3b', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/order\"}', '2019-02-17 19:15:57'),
('28040b7909aea08d42981ce433', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 15:55:10'),
('280cebf5ff92715d5656f8d9b5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-20 01:58:48'),
('28123d8778c3a0fbaedef8b52b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-24 04:25:32'),
('2812fb444fbe21a682e9013df2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 19:09:20'),
('2816339fca6e6dec03a466cca8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 01:54:47'),
('281e04c30dae770e98b801a056', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 17:03:22'),
('2823bc90b3562c003c53d42566', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 21:54:37'),
('283cd3d80376c2de3b831055fd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-03 00:39:41'),
('28445ffcb95b6972bcd64f734e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-15 03:01:03'),
('2847caf7f9d28c8aa279955886', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-28 15:49:48'),
('284f5ad158ef7901506e8b8cc0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-06 03:23:30'),
('2862989640d9c7aa7475f4e35e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 15:41:48'),
('286e25cdf6c0c163addbc70fa8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 00:00:01'),
('2871c5ed39f6fb1ab2675eac6a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:00:34'),
('287e73c541ad652626ecde5342', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:19:52'),
('28952f617eb87f22c354d929c1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 15:19:51'),
('28c0e2913e8d1056aa107b1747', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:06:03'),
('28c54d38e880a3201cae3a2163', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-02 05:58:18'),
('28d6f369e85ef069f37978c741', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-22 08:51:26'),
('28df3cc51959e8af97d8c1f556', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:19:37'),
('28f566efd0e00f96b2d50ed3a1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 15:15:00'),
('28f9cdb64e7a4390a1761bd2dc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 15:26:14'),
('2923ae14a06e802e6af56a60ec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 03:30:37'),
('2937a83f1b465c7f4c3328893e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-10 13:52:42'),
('29476227508ef6dd87b1c085d3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 07:05:08'),
('294c5421cdbaf19f93c113002e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 10:53:56'),
('294c5bbd11bc93e1958772f2e3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 03:31:43'),
('2980bf3ac7031c131d5899767f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 11:23:33'),
('29cb262746faf9ae44b026f1b3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:14:26'),
('29e1f6b13724cdeae37a94b1b6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 08:14:49'),
('29ec764c136f6437f964304a46', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 23:05:39'),
('29fdaed355994e558b7eb0ff42', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 08:36:06'),
('2a0968ff32d8d1342dff9aa2de', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 03:46:34'),
('2a1a8525cf9f05c2f450e8d667', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 01:06:12'),
('2a1cee562fa66997016053a193', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:05:54'),
('2a27aa42f68024e1320a652332', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-31 04:24:53'),
('2a33a0b288c1d3d5ea367e8c74', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 11:50:27'),
('2a3d9dc2059c8498cdeb965a6a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 01:02:52'),
('2a3fd4803b5f7b4cf5d73bf5ed', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 10:42:02'),
('2a4f34faac0d1cd278bd348e3b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:23:29'),
('2a743114c3780ddbdff4582da9', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/order\"}', '2019-04-04 05:12:27'),
('2a74b3db6474189d984a107e02', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 00:20:48'),
('2a9cc7d6a613cb41a20a2cb1ea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-31 07:16:47'),
('2aaa9451aee7f61e9912d86b16', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 04:59:58'),
('2abe813aa7bd34801d4e4b6f7f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 15:53:40'),
('2ac28bd4da3b478937aa9f52b0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 06:17:18'),
('2ac595d27b86d90283a0974763', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:13:13'),
('2ad0393277c16161445df547e2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 21:08:36'),
('2ad29c2d21e793c0cbb1b042f5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-21 21:01:20'),
('2aeffeebb93df9a798cae62ec2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 05:38:53'),
('2afacb0c761725fae795eecf25', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:54'),
('2b1a55d9ded1379dc7b312688c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-09 15:05:58'),
('2b35602f2f5488f66e5cc8b875', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 07:33:04'),
('2b3ec42f18390a22ce95e78600', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-26 10:56:02'),
('2b519ed148de980e0328e68187', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 13:53:45'),
('2b5e335791551ef7b7c4b4c3cd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:27:01'),
('2b75c687d4a7d97d4668781e1c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 08:36:02'),
('2b7984fd85b253b1e33f6a08d4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 07:07:58'),
('2b7e1de7e640f73d99dad0d109', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 12:30:11'),
('2b7f0a2f8e0884fff86758d670', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 17:18:19'),
('2b8b12b1a31a94563a2260856e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 05:03:18'),
('2ba0b9539904d278f12feff07f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 13:09:37'),
('2bb191b8c83a5f2bcc993402ef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 11:13:48'),
('2bb2c49009a9698cf106e276c1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 16:27:45'),
('2bb729a0c8f6b91d31c89a5f12', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 13:59:54'),
('2bc061ab31cfe23703f23b7bc2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:22:26'),
('2bc5edf337e8b78736415b86bf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:23:14'),
('2bd413a2dcf6bf2211668749e8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 05:06:00'),
('2bd929ad465e98daca103496d0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:12:22'),
('2bdb22f5fec87094ffe7f44278', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:57:15'),
('2be171464c6550b5d5131d1c08', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 23:50:26'),
('2be7083c52bb345d99df1f1deb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-22 20:16:01'),
('2becd45e5911b8d8cd6322f165', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:09:53'),
('2bfd6878d27052f75230d68e3c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 22:49:25'),
('2c59ee78aac370fc45989a05d9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 10:59:03'),
('2c63e2bbe82ecafff8c241760c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-25 15:25:53'),
('2c725d875d08fc153079ea99ac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-22 03:42:56'),
('2c7314e328eaa063c23185b6ca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 13:21:31'),
('2c96fd67feb5b06dcd5a0dcf8a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 18:19:54'),
('2c9c0de54151715a72eeca6598', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-01 07:39:50'),
('2ca8d350fda8a39009e992cb6b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 03:04:55'),
('2cb793947bbc2fd265c23938f9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 19:41:15'),
('2cbf6222740d1b68241f9729d3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:54:34'),
('2cc06f8ebcea01577ef811c83d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-15 04:47:57'),
('2cf433eb2bd4fe726d7f6d4eaf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 00:16:39'),
('2cf90cc04b06b142e1081df059', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 07:13:12'),
('2d07c043f19a24932eccad0823', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 00:40:10'),
('2d0cbb21620558633ac9ed3cd3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-05 11:27:14'),
('2d0dbf656f7b0753885f940ed4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-18 15:54:14'),
('2d1d3c4d13d5921fb1ce951e70', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 19:09:51'),
('2d20c466a1c75fac70b0aa2137', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 10:41:44'),
('2d293a4e01d976ce7244a43585', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:11:58'),
('2d3c65a8bf084a65cfe97d37f1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-15 08:45:51'),
('2d43961c91808859e3a61114b6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-18 14:03:32'),
('2d4f605e16dffb09c17c65d51b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-21 04:25:05'),
('2d5534adfd9856d1e956159932', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:54:30'),
('2d85425814f3a6e112302ebda5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-30 00:58:45'),
('2da2079b3c0b3a7f59099c4425', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 09:24:46'),
('2da34fe21ab17582311e463a68', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:17:11'),
('2dae49394bc7daa1db6b9ccda8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-17 07:29:12'),
('2db877abc3a0212fbb76e29d14', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:20:04'),
('2dc95cb1ebf44cf8ca4c5a3aa2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:18:07'),
('2dcd44d8de8b80aa992124c833', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:09:04'),
('2de163c5dbb5f96efdc2486478', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-27 09:34:36'),
('2dfce1636bc9cd41cfbd6be175', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 09:27:52'),
('2e03da12ee17c079bb3b3a8579', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:20:39'),
('2e0f22f7e801d0f8c26d338f6b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:01:55'),
('2e2bb30afbcbaf298b51d01d60', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 06:52:32'),
('2e2d98c6b890635f5673003fe5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 14:00:38'),
('2e3ae5b47ac7537dbb4d60491f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 02:04:37'),
('2e4155447917844f85fd567f8b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:06:28'),
('2e4aa8d0a49c296804e8b97675', 'false', '2019-04-03 22:59:28'),
('2e5684b1b90faa5a72ca2d25f9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 18:20:41'),
('2e6a2b66d29f20890fd0b2065b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-29 11:34:47'),
('2e8540febb94247ca359eaf97b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 19:54:50'),
('2ea1adcc37fb9e5cc18cebb0f4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 04:23:17'),
('2ea9b12082a597c146a5bbb479', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 10:34:37'),
('2ed391434378e2989699293812', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 08:35:56'),
('2ed7195edb3aee25ae9182af20', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 05:48:04'),
('2edeaf6f2c80ba8e49e37b507c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 11:25:01'),
('2eeaba6e56b2ee0e22df3ff98d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 02:29:04'),
('2ef77805f18636d56968227c80', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 03:35:59'),
('2ef9518d157bfc0fb3a5003f48', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 07:13:46'),
('2f0d66a511d9bc679b9a5b21b6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:02:15'),
('2f256a71433362083ca578982b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:13:13'),
('2f29f1a0c3aa4692d6c2dac6ec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 10:00:09'),
('2f300fe817f485f78681262309', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:28:35'),
('2f3bdf2a24e7a04ff10e17cbe5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 01:16:30'),
('2f4e34cf3a4321fa4a09b680e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 00:09:02'),
('2f625e37cc92846376d3f8a7df', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-25 21:47:34'),
('2f62a312dec68a488a28c9aaa8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 16:33:00'),
('2f636b71b74e870583df20b9c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 16:53:32'),
('2f721042ae54ecc82730626e7c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-13 11:15:59'),
('2f84857ad741e1278f85797b93', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 00:33:57'),
('2f92ec5f3c2de318c989d1f2a8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 16:23:36'),
('2f9a58f68497e422b73cb705ef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 08:51:27'),
('2fb10402d932e7c735cd64409f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-13 18:10:59'),
('2fb6b15bfb092694e2efe27aa0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 02:40:02'),
('2fb6b3132590db7e573ebb5eb1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 07:14:16'),
('2fba810100e4eb6e82e6669ee0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-26 18:05:55'),
('2fcbbbd99d32dbea5cf3cd3b42', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-11 17:58:12'),
('2fcc7175faab3df28875be1b68', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:45:40'),
('2fd85b81b35f44533b1ef5b955', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 00:43:37'),
('2fda0dcc8a19208d72344ecfd6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:02'),
('2fe5942cc6d90d557b558d5ab5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:11:50'),
('2ff3d9e99559077718ee6998a9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 11:15:23'),
('300227c5c20db9521353c92fd1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 07:52:55'),
('3012f7bf251f8df7a1d572744b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 08:37:37'),
('30148992161d54059d784f469c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 10:11:34'),
('30310300800e3318f5e02a1582', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 13:11:12'),
('305056f3cd8fc8b7bd859f5cac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:44:43'),
('305ce58a6ae87143aabf65fef8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-18 19:11:16'),
('307c7450c7e80e241cd33e7f92', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 20:38:44'),
('30b607c41e441b89b84faca8cf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-15 08:20:06'),
('30ba942952b36c743ced7d9985', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 00:29:13'),
('30e1baf60df4b0cbe67a44c4aa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 08:21:04'),
('30e954a2aeb378f1d1976fa7dd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 00:20:21'),
('30ecb2c1227bc0885744d72c7f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 07:23:56'),
('31057e74a12b6057d032465b68', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 16:47:25'),
('310685d655fb7d3f98dd44b74a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 11:00:18'),
('3113509f502f141018d967ed23', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:12:45'),
('31175c7fca622b0c8b227ea981', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 23:10:52'),
('311e948b5e84442f905818e56c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 22:00:08'),
('3121638560b351bf2537220baa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-21 16:56:24'),
('313280ed6b09374e00025aecad', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 01:20:07'),
('31354f7b4120e990dd99174e35', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-06 01:24:30'),
('314d2c09d4ea4f2a4af3a5929b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:53:34'),
('315f7f64f7496383b0a89db63b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-01 20:07:43'),
('316337f26d5b4d018ae502e8d6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 09:53:24'),
('316943f461d870e7ad14b4da66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-20 19:15:11'),
('316b32adfd8f1d8db21d71c568', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 17:35:32'),
('316b55176ea52b6189449e1826', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-03 21:32:13'),
('317558b4ff01ca7a0f6dd47096', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-28 19:32:44'),
('3194ecc1150629f21cc6d9f860', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 21:13:09'),
('31a26012cda955264a58a702e9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:35:19'),
('31b0629afc8e52952f3078abbf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 07:17:08'),
('31cb7a610c40314c48b43c7c55', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-03 00:00:23'),
('31cf1b47ae6df2106e5ab3d29a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 07:30:15'),
('31dfc0012b4c04babf7d5eaef6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 13:34:59'),
('31e36c276a0e70330f9bcdb01b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 15:02:43'),
('31eca4aa73e1b571b18504ed1d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:17:39'),
('31ee0be7dfbe7a23e474f30948', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 11:59:03'),
('31f9ee8b4eadf5e11bf58ae041', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 13:48:21'),
('321f6a6c990affddae24d72328', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:16'),
('322ab00cdb28498fcef92d4a6c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 00:51:15'),
('3230efbf8c7b9d1c1e2515c1e8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 22:42:33'),
('3236b91571df57ebe6f6c0a648', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-15 18:18:40'),
('32397bc05beb081e5a71b5b0dc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 00:15:09'),
('32557b6176bf8e78257e5433d1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-24 15:17:33'),
('325b56c2fb09ce60ba2cc2fde4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-28 20:24:00'),
('32648a455bbe3ead5776dfc6a1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 14:51:50'),
('326850ef869c7ee0d4f65f63af', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-20 17:24:42'),
('3283050c4c011b70416c3b39c4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:53:03'),
('3287ed2384b8ed37d7dfed4901', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-29 21:10:24'),
('329af86162f99f40662b8e63b5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:10:17'),
('32a134fe774546d370cf1c807c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:27:49'),
('32a4bdc5aea49458d4291a9340', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 23:33:47'),
('32afbdcbec743bbe799ed50f74', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-27 08:05:39'),
('32b00d04185bcb5af5cc135419', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 19:59:01'),
('32b22bf8bb70e83a06be3e6d68', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-29 07:16:19'),
('32bf4521dbef62f51c86bde878', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 18:20:28'),
('32d63ddade2a541452ac38f975', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 00:58:43'),
('32d91f655216fefbba5fd7ee37', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 14:52:57'),
('32e9747d8a2ab85c450683d173', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-30 17:59:07'),
('330d4b9b9b8c293c18d6791d82', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 17:34:59'),
('3314f5228ecee4c62397968e54', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:46:25'),
('3336fe0b66acac365fe204439a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-16 06:43:42'),
('334b1c78523863008c9c85c6b1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 15:00:13'),
('33541de41085aa231f3b13df88', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 20:48:17'),
('336e0a2da90e7b06cc0c0d3cb8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 17:36:19'),
('3378f239586ddfff646db0cb53', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 09:17:41'),
('3381959fa9594cdd43a39b32c4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 11:16:17'),
('33a5b56a8667694dee2c0749c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 11:56:38'),
('33b23394b7e40eb70265cc1473', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 00:28:38'),
('33b59e7a116ea69e4dc6c3a4b0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 10:11:02'),
('33b8e4370c0c61f9789c8359ad', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:48:34'),
('33bb673b7174f236db3e61de1d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 11:38:49'),
('33c342069f4352be4fc3c417fc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:41:31'),
('33c7fef995a4ef8a7be3268138', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 02:38:26'),
('33f2e0e0c1d069d1fe44bbc51a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-28 00:11:34'),
('34028eeeccbb836d1bf072cad4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 09:04:08'),
('3417416b2f4fdb227f2e7f2cdf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 08:52:14'),
('34471432a45869265ec9e52286', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 23:29:27'),
('344dee96c3c210fce9339e6d0f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-02 22:12:08'),
('344e1f5e018c0f98f5cdb5d102', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 16:59:10'),
('3458a7f17b0494343b7a7dbfe3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-22 19:00:46'),
('349146f8658e186df7a86087a1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-05 11:42:54'),
('349c46f77878ba2cb01cb3705e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 14:31:34'),
('34a39bc10c6f29a51dc537094c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-25 12:15:00'),
('34a52cf1b56cf5e9df4da37423', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 04:40:51'),
('34c72017866d370bca7a73728b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 13:00:16'),
('34dd1c45fc88bdcea400eab875', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 09:13:57'),
('34ee6992d3023054d8c2ebb548', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 18:42:28'),
('34f2006fa29cb20984c2202754', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 19:34:26'),
('34f56c64cd9886a75b7ac319fa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 12:23:34'),
('351cc266899c3acc98127e9924', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 23:24:37'),
('3529e175991e5c13d5d62fb2fd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:17:50'),
('352d8b7580520fc5d4641ab299', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 04:16:07'),
('352df5da9d1a527099822c8d99', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 22:14:07'),
('356183056495ef3540fd22a7e6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 06:22:52'),
('356a1c235a29ebe69194e7bc36', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 17:47:18'),
('357e2c1a9541738ba5d4db10cb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 08:53:05'),
('358797fb07576f6060ce5f7e95', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-13 14:00:04'),
('358b0324955d954bc63c0b2f9b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 10:45:44'),
('35984bccd0f3dba8c5e1871ef5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 00:48:02'),
('35a0fb1dd2670ba286a55ad118', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:20:52'),
('35a48ba0b04309e08ad651c128', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 02:05:03'),
('35a7630b67f277dffcba101bbe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-08 01:54:17'),
('35a93c4855fd85d8426deb1aa0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 03:08:44'),
('35cb1d24019406c3f709a391d4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 01:17:15'),
('35d73b4e638efc5fe758b30911', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 08:05:29'),
('35d9d3b56886158bda20e76140', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 05:09:49'),
('35f2503e06a836dd76b2d0502c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-21 03:15:20'),
('35f25d607a5ddf884c3c869e55', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 01:27:39'),
('35f310d345b58fc00ca59ec8c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 17:53:44'),
('35ffed371f7357f2f6172db23a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 19:36:07'),
('360fb4122fec366df52f397ab0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-24 11:51:32'),
('36472d8cc70906c8c69e7b04c9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-16 10:31:06'),
('364a57e7719bc8b1dd451602a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 05:47:30'),
('364c58a0bf5ef04ec038b910e0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-05 09:40:54'),
('364cce5a51158c6dff0ad14885', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 08:37:44'),
('364ffe3af19b826da76b2ea099', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 10:27:56'),
('3651c11b264025a4ad5e0bcf0c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 18:00:59'),
('365958e046ac4ad2d9ff6c1561', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-24 13:17:57'),
('365e1002dba742f5eb2f1ffc6c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 13:12:30'),
('366262314f68395b5168a6aba5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 03:20:30'),
('3663ca55713d243cd33411a3c7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:34:49'),
('3689629061d0154c673e9b694c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 12:58:40'),
('368c3f5d7aeb1bdf4418be3f90', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-19 13:45:33'),
('36998c5ebfff7a1d70ad45e202', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:53:57'),
('36a06d83df2071684d42a9bdc1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 02:21:09'),
('36bf0cc21ced104470318e1391', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 07:01:04'),
('36c42064915c0a3c9d331a1d24', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-09 22:31:46'),
('36d8518826b5ac8b1da3e2bf76', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-09 07:16:20'),
('36e086a12bd814e219b2141d3a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 13:27:26'),
('36e69dfce3a8219d9ba4994aea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-06 13:46:38'),
('371f2ae14b2cfd345d9f3197f4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 13:00:11'),
('3727b95d62bdb6f5456108d4bb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 12:10:41'),
('372bc8b844a6ba6ff1587c0436', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-23 05:03:00'),
('372ee7c2c9b7dba5043c8bc3bc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 12:53:27'),
('3749520dc6c53108347fc2c4dd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:19:08'),
('374a0f2dc98405c3857c893c4d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 19:17:43'),
('3750dc46e89226ec612749d533', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-20 10:07:02');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('375fd0feb911db087eef26d28d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-10 06:21:01'),
('3760ce21950d1120fc01071325', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:07'),
('377a2dec6050d89096764963bd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:45:10'),
('377c29d0b5eedaf8674a7d7ccf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 00:00:17'),
('377c4ed5e85a14b6ca4afdcbef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:18:26'),
('378b88d211d682d9000dfe0da1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 00:42:36'),
('3792d5a1c6bfeb976e238ba8ed', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-09 21:14:15'),
('37a56f6ce6816b1f985ea97f4f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 14:46:33'),
('37aa2209144e2fe312f0198747', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-27 19:53:47'),
('37ba0e74d94a36c9e236c08cab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 14:11:12'),
('37bf044ca3a37ace1548ead819', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-24 05:53:40'),
('37bf56e959c658f795e5ac5f66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 23:17:35'),
('37bfb59167603af497a48b6794', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 22:19:55'),
('37d2a135c1aa434e1af77d1186', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 22:00:36'),
('37d52dd0ae38e20933c136f7d0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 18:29:41'),
('37f27b958c7df2589c62f058f9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 18:39:29'),
('37f63d02888edad25634883fd7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 21:27:44'),
('37f780a85a9a65fd2b7cf5d3f6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 00:01:12'),
('37ffca75081bee0eee2ff17111', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 13:02:15'),
('3805c1e10f8d5a9a3c76728293', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:08:19'),
('382a6facec6f5c75ae606d9241', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-21 17:11:20'),
('38347534c12e7f554926d7c8f7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 00:29:46'),
('383b046d71ec6844fada86675d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 13:13:20'),
('383b9ea1c120ff68469e32d103', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 12:07:14'),
('3857c4ba14c85e98d9045ab23e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 03:32:17'),
('38599cf06fb120b1a7d0d661e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 12:49:22'),
('38744c25367d13a6a84c1c0012', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-31 00:30:46'),
('3875102df3a81545cec1c40e0f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 13:18:46'),
('38907dce0ca7009331de1d8c4b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-15 07:28:15'),
('38aebf87f8123cd3dbdf1cfe97', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-23 21:06:32'),
('38b6c406945b91135a99ddb81e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 06:21:45'),
('38d5d80a5b73a283db442389fa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 17:05:22'),
('38dee7b10cd11e88d6d36212a0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-06 16:16:37'),
('38e6eafa6d6972b9d2e4763a40', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 22:55:18'),
('390283bf9391e8628a8feb66b0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 13:23:07'),
('3905c66d28e1b4f0514904e398', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-26 23:21:46'),
('39113cf8cb86554b027b756bde', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 13:34:16'),
('39283df6a0006a4ce374ac8d2b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 03:30:33'),
('394f719d353b498ab6af73e2fd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 01:21:01'),
('3967210318221afe9abdb9ce69', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-25 17:19:20'),
('396bda1e333fbb3e6f2f18093b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-14 01:30:33'),
('39772aabab12975728e63a2a83', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-03 10:54:08'),
('3986222c24278cd28ae24a2e58', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 04:29:10'),
('399260d389d73f1d36524319f3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 14:42:27'),
('39a66faa132be50cc9c3d76f99', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 20:48:00'),
('39abaa21cfd6fd9a8458839bc7', '{\"user_id\":\"1\",\"user_token\":\"lr9LtgRqe4Rwv8zW1EOEviVq80u2CRjR\",\"language\":\"vi-vn\",\"currency\":\"USD\"}', '2017-08-20 11:37:47'),
('39b3b7bbe9c8f92231e3da7bba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 11:18:53'),
('39b4fac166cb369f6f7abdd8d5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-12 06:57:37'),
('39c1db27a56b62579d111d27db', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 03:28:24'),
('39c8674cdaf5dd33e541c3ebab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-08 16:43:30'),
('39c8d77a3b78515fa9721e2187', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 14:24:31'),
('39ceff62f5c8ce6dbe8ba29189', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 07:31:59'),
('39ef55703c6c8265eb289680f8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 18:30:12'),
('3a0760c7f511d803b5bac50cdd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-01 02:34:10'),
('3a116699d6cb62bf431fd3babe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-12 13:07:49'),
('3a231344d2bd1be8c67a9ebee9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-02 11:58:46'),
('3a447d04e6e58cc4a37cfad9c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:49:30'),
('3a4bdd5e89be1b0445e5afed9a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 13:13:14'),
('3a4fd6de0f5ea52e3dc994afa7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:38:08'),
('3a594a772483b92d9852624741', 'false', '2019-01-14 19:10:09'),
('3aa1d50bfa366bb7e11b4b0060', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-08 20:28:55'),
('3aa42055834ffa437c2701f8ae', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-06 13:46:45'),
('3abfc6ce53145335e16f6844c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 07:16:43'),
('3adff031ecb71ac88f75888b24', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-30 09:42:04'),
('3ae7e036de1e1b6bbbc381e3bd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 14:22:32'),
('3af83ca20e821d8089c6dfbbea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 12:42:22'),
('3b0b865c39b3d8a7acae72d7a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 18:19:15'),
('3b10a3b6478a5497fa17e3feaa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 18:35:08'),
('3b15acba3d13aafff1ba9531c3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-25 21:02:19'),
('3b16601849ea3b20b0d0637a84', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 11:39:20'),
('3b167756982de27f757d023863', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 16:39:25'),
('3b2370899d4e481a55e45ae212', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 04:10:44'),
('3b369f8cb7e18537a5b13fba92', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 19:16:17'),
('3b3d37908959daf9b02f2a2709', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 12:49:03'),
('3b5914c0731fde3dfacde930f8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 08:46:29'),
('3b9c3eb3a34d09b6b86469f567', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-15 11:33:00'),
('3ba3dc43e0e661044071c9c2d6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-13 03:38:46'),
('3bab12368419948164ef008bf8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 19:40:14'),
('3bae6dfaa6c2d05f6f36612001', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:23:57'),
('3bbe501ce3358af9f4156b5a4e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 16:46:03'),
('3bc0463a2935100004ab332fab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 08:39:24'),
('3bc0cfb83596b8d0244e39b277', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 11:02:32'),
('3bc5eeb1d16eef81cef2d8f29c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 20:21:33'),
('3bd73bb5496227d025b9de10db', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 02:10:58'),
('3bd86215655ad0e9a85aac3922', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 05:48:17'),
('3bf41de7434368ac6cf5b9ee8c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 12:34:34'),
('3c0571d49b2c548cd83c1c020c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 13:32:26'),
('3c12207ca7fc37a56c07918724', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 01:21:49'),
('3c1458621b9a7e937eaf50406f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 20:57:26'),
('3c15416ce69cd92679d0c542c7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 19:52:55'),
('3c179f01b2b225c8a31e878b73', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 07:10:03'),
('3c1c03673d65212f810dbb676b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-10 07:30:14'),
('3c1f41492e854769c7e2716aef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 16:21:52'),
('3c22790e26e19525dca61f0f79', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 09:03:37'),
('3c3e6f3e391708bfc366f74324', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-17 08:38:06'),
('3c53e252de671590b7f94af4b9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 19:14:21'),
('3c561693ca47336b4e0135e2b8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 09:47:07'),
('3c5db03fb26d8dff5f295e5722', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:57:54'),
('3c619d41407cc5c9557a4762f9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-22 20:58:09'),
('3c7200875075a4c9b16b734a99', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-16 08:07:17'),
('3c7ce47907202e1d3214c51d6d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-30 05:07:17'),
('3c82fb0188982d7be2bdd58764', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 18:48:23'),
('3c899e95e1b4d0b11c424ac20b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 11:37:16'),
('3c9151629fb70bd28c4afc536d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:21:38'),
('3c968c09aecd673cffa1678e8a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 06:24:09'),
('3ca1cd8a1deb982461ce778275', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 23:09:11'),
('3ca6a34124c2ab0aa6993991f7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 19:31:57'),
('3cb3f9f1c60b2518be47217729', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 22:07:10'),
('3cb47684a63fe5a28d7c9bcbf4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 20:01:43'),
('3ce037deed6095879aab91d253', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:00:47'),
('3ce19c4d812339f5c55c690453', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 17:56:09'),
('3ce4315f72113b1555e7f5bd74', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 11:09:48'),
('3ce826e680b5123e3909f3d7b4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 00:40:49'),
('3cf7252ef0ee60193d71786909', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 08:13:30'),
('3d0036b519401b3386de1e9ab3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 21:06:18'),
('3d07c295a40544866540a3c828', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 17:17:33'),
('3d170685d807f616f81fd8872b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-18 21:52:03'),
('3d17712ce207ed1b0d52cb5550', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 09:21:01'),
('3d312404172bc3e464d2dad5ce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 16:56:50'),
('3d44b1f310186c5b11a37323df', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:28:35'),
('3d4970f8e6ee699973a3c5e460', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:43'),
('3d5fc925e9ec4385eecf4d3300', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 02:20:31'),
('3d758b2fc3218b468e4f6810ba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 05:38:39'),
('3d8b051ae0e6130aca5d8158ca', 'false', '2019-01-14 19:10:12'),
('3d8fc1ac4af67dbe977f81d9e9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-27 16:21:39'),
('3d8fee04ebe68c7fc25248b286', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:35:13'),
('3d9a912ec1d975ae7c8bed155d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-17 06:14:25'),
('3db1d57d1342a1c0fadac67318', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 11:50:19'),
('3dbc9f7a09bc6c3594a213cee4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 13:32:19'),
('3dc1a71758d3920c10e3a29c28', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 15:43:23'),
('3dc70c2b75689e569b60d0b4e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-01 17:27:13'),
('3dcdcff75f0da0aaaeac4451f0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 23:38:51'),
('3ddbe1d08284c3b88ff17596f2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-09 13:18:35'),
('3e0871999343576fc75b6feca9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-03 03:43:08'),
('3e0f9994f0d641c5d589981dde', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 22:20:00'),
('3e33034dcee9cec202a0211622', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-18 16:32:39'),
('3e366368851ff635dda718bbc6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 18:24:14'),
('3e49832717daa3c0fb53bd6ac3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 19:49:24'),
('3e6d8fd419a1f7761d8cdf8b5a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 13:12:09'),
('3e7932f4e69435049a3d96b32c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 22:03:53'),
('3e9bd00b14e0a618dd732f182e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-27 01:55:16'),
('3eab5e7f1f467dda5cffe3b2bb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 02:45:52'),
('3ebe0af80ff4248861517d0e61', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 00:07:57'),
('3ec2bfce0c492f0b6b628af76f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:43:51'),
('3ed05642fecc5b454401476bbf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-09 23:49:23'),
('3ed081475fa13fde5872fe3309', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-10 16:56:11'),
('3ed1bdb30663cdc4171a8c8d76', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:05:15'),
('3edcf569ff7c7287906a0a2d70', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 00:53:02'),
('3edf28f922d7fb02633ce9f59e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 13:43:40'),
('3ee812828d4f53160453d9b419', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-27 00:21:21'),
('3f1088f0cbe4ab4ed9ecccf559', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-17 05:51:45'),
('3f2ad33088b69455dc95a38156', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-18 16:32:43'),
('3f404d92377c63814b006624e5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 17:41:45'),
('3f46edfea1ade6beb03897e113', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-06 02:08:51'),
('3f4f4e047b2bbf33a9e55d3118', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-03 13:37:22'),
('3f609ba7d01d3410d1b5c97a9c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:48:43'),
('3f6607fc199852f274567dfd46', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 22:20:49'),
('3f76b093c780827e3f72c54918', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 11:13:38'),
('3f7795889bbd17890a73aa1f15', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:22:30'),
('3f7aa446eba9fff0ed906b9ba4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:59:55'),
('3f7cc35394bc9e5083953ff786', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-25 22:10:33'),
('3f9595f410c48731ffcb35fed2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-08 05:25:52'),
('3fc3eb5f8b146905682f0658dd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-22 22:04:08'),
('3fc5136db0c6047dd4c8ce5806', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 03:10:13'),
('3fc5f7b2405c940ec4cf2a50c8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-22 02:28:04'),
('3fe0256759329042d4d7712298', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-01 23:33:22'),
('3fe4bfdffbb2ff1bfb070581ee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:08:24'),
('3fec387ffd074180a86d91cb5c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-15 11:53:02'),
('40111a795280bda2bf6263cfaf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-21 11:18:26'),
('4017990df1585f076309b47934', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-23 06:40:09'),
('40310fd40a4184e7fa06e9ff0c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 11:26:53'),
('403937b0f9b8182a58a68ca1d0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 15:25:00'),
('40525d2696f8e12623aa061827', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:50:41'),
('4055313efc881c9624ba6418cb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 00:12:46'),
('406333541d5c950feb114eb774', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 00:02:24'),
('406aa0c391edbb948339f61055', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 11:09:25'),
('4078af4da96ae8ad46361470c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:11:09'),
('407dbad9eaee40981ba5f05028', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 01:12:30'),
('40882217974f8b59356fe366b4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:25:20'),
('40a8d50ce71fdab01292fdd1c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-10 02:10:17'),
('40ae9f8888727282e4d40d4b77', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-21 06:51:13'),
('40b1584b308aa8b2f22287816f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-07 22:36:26'),
('40b350f300b17dd1af7d81edb5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-31 21:39:31'),
('40bc066a66f149d7190b2ae470', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 11:11:06'),
('40c3bd635f81fe45dd7bd5d590', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-06 00:37:29'),
('40cc0073d76523f86502063f72', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-02 14:55:58'),
('40d95dde025b5135f70d3227aa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:34:31'),
('40da140afcde3c4e0805a179ce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 01:19:55'),
('40e4b29e64e6a24559a7444063', 'false', '2019-01-14 19:10:09'),
('40e5bfbc338c4ea8634443865a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-05 11:10:38'),
('4101108620b060ff503b5505b8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 03:39:47'),
('410b46ee953be1aa9e1b7a635f', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\"}', '2018-12-20 23:18:51'),
('411ef1ff51c478c84e55cd726b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:20:10'),
('412f8f2dddd60fc797cbfc245f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-22 13:46:17'),
('41439fa52adca067d69242644c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 11:00:31'),
('41442f332c0c94b864f3f95b1d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 12:20:08'),
('4148e64924834bb418a2cd4f67', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 04:29:00'),
('4153550b203ed21980c1574033', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-08 21:27:17'),
('41540794852c0d9883c4377094', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 19:28:43'),
('4160c3b0c4dfd81a4886eec9bc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 17:48:48'),
('4161e6247f52d19c295ae7daef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 07:12:51'),
('4163e1bf3fd6f9e3c948145cf5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 21:38:14'),
('4173d507ebb704445e60cc825b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 07:54:32'),
('4176334bbbb0ee603d6e91227d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:32:01'),
('417bb958c380db406001d73fd0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 10:13:54'),
('41823b7f4bf363adb72ed35a30', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-30 17:04:10'),
('4185973301a4c23f815552fe12', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 10:19:43'),
('418c3b573e80ce930ec14fde05', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:44:21'),
('419788be04934ed18b1a280f13', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-30 22:46:37'),
('41a1f0e15ecddc900e2fb1d237', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 17:00:37'),
('41a2f456ac9551bb8552caae72', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-16 10:39:56'),
('41ae0652ab64061cd7bc3afcb6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-20 01:02:10'),
('41e646f1bfddabafb7e9d58a9c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 09:47:19'),
('41ef9bf8c479fd752b63b46d20', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 04:51:23'),
('420241d94bdc679fc68baeb89f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 11:05:20'),
('420db0a2822653b8f5d13ceaa4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:23:54'),
('4212a5e4a03c52d5f4fc3a206a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 16:35:12'),
('421ec50f575767bb5097a14c9b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-01 04:55:19'),
('42229468ebdb1766a5f150534c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 01:41:59'),
('4224fc142ea495a46899406246', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 15:26:20'),
('42293ab751fc79128c25cbbf08', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:06:23'),
('423970460b63bb5e30be889775', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 21:45:00'),
('424e1bfbfce8e9457ae2b16995', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 17:05:51'),
('4253b413b76ad3699d86d1b4c0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 21:45:27'),
('4273233f0aedb893d0b9c96376', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:31:41'),
('42950564ced71fef28edc8abdf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 14:37:02'),
('42a2bf4b8c0a7749a88b12efc3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 11:59:23'),
('42a72630eae444d4b51d935923', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:58:24'),
('42a8a9fa098924f92597906e8d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 17:24:31'),
('42af46752edaa9abcfe5879ae7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-31 21:39:21'),
('42d2a0017abb8507643b193c4e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 10:43:05'),
('42f7623c4abb20c8f6c81e5033', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 06:14:06'),
('42f785b9cfc5cc88c539f124ae', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-18 19:11:23'),
('4319bbae98cf03e018280bccce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-16 08:53:32'),
('4326b37033af19da2bd651464a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 11:11:41'),
('433a2444789eff59fa8c6755e2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 21:37:46'),
('4354e23197b7cde8dc98a3e45d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 20:46:59'),
('4357c9f4c6ef1291c3a557cba4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 18:50:41'),
('435b6d0a9d904c95842c2c6c41', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 20:04:48'),
('4369a09b020077382a39a161f2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 19:03:13'),
('4370f92ae666e5dbb1ff83d1f4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-22 04:13:24'),
('4388cfc41897d24099b5c1b23a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 03:08:45'),
('438a023a16fcaa164564d9d9a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 13:22:33'),
('438d37264e013a82d4ca7aeee2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 22:09:03'),
('438de9f6b99df476e880f6bac2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 10:25:28'),
('439df56a6494549dddfa668b79', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 19:04:39'),
('43a5c2e27108f1bdb688b21d4a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:39:55'),
('43ba21e43ba29d515442e6e565', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 16:12:20'),
('43bf94c17b9d42553d50a9fb0f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 14:35:54'),
('43ee4f87d45248cf851b6b01ad', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 01:12:12'),
('441cb4e49ca617d75585d245ca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:48:44'),
('4431a1336cc2624b02f4581525', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 20:26:34'),
('443ab1cf5db3af8051eb1af39c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 10:40:19'),
('44464c33823ac7d48b94f700f9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 13:30:19'),
('4450e322c73530417fbfc5abb8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:49:51'),
('445551b53e06587bf4cb852866', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 21:29:23'),
('446a5395e281d9ba0cb60fb4e0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 03:17:19'),
('446b5248624f5663204b8d20f9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 12:00:23'),
('447038b0b53a33ebdb9b4fc1a6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 06:39:20'),
('4481b0b75ff2514f1ad6909f26', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 23:34:14'),
('44821e7bed7ce88fce9e561d5e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-11 03:18:28'),
('44956fe145c73a2a23a91d9841', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 08:06:50'),
('4497be6ba9fe8da9bff4a1567f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-03 21:54:06'),
('44a83b641c1c5d507e05cbabd7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 12:16:55'),
('44b78ef1f1de2f2326394d0488', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-02 13:57:41'),
('44c2048f01e67b644d8e284fc9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:29:23'),
('44c4130506e8b9ad7e51bf493e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 16:46:37'),
('44db4aea27f78342f7c76f8941', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-16 08:07:09'),
('44f4bdbc8ccdd22a5ee6c13bd7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-11 08:49:58'),
('44f94ba61e57a1f4c242de39c7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:11:27'),
('45011e64112e79bc75b341a873', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 16:28:27'),
('4514e145488cb5e9eb41eb838c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:58:21'),
('4516af15f8d8a790796e817aea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:18:03'),
('4516eee2b701698a8f94705edb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-10 10:45:16'),
('452dda89f312ed43a73d326f53', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 01:37:24'),
('453d8fa1e1a3384fd6a2107610', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 18:29:16'),
('45437f6a418ca561960acb84f7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 21:45:16'),
('45666c89adade4bba222d653b1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 05:28:14'),
('4566be804567be79e40b937dee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-05 15:29:35'),
('4568667f36fe12e2194c2b551a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:39:00'),
('4571f4e4cc3974e545b736549c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 15:35:09'),
('457e16a477eb30f2ee327493b6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-22 08:23:43'),
('457f1760488d4da1572d0b0b2a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-01 07:30:51'),
('4595c87006a1df1d226e7f4240', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 10:12:39'),
('45ac043d8c35d0cb3fea1ce76b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 21:45:22'),
('45ad3d88214e65dd01198b38c9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-08 08:40:07'),
('45c3d8e4ce559c9b2b2656a5bd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-24 12:07:35'),
('460b6572bc3129fe36e3aa5b3e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 19:41:35'),
('460bb8b1b7521f835ce7ea188e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 23:29:30'),
('46234f824b6e11dce9aa899c31', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-16 08:53:28'),
('4643230fe68ae7fa91240f139b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 06:57:54'),
('465cae6e97d937c199ff6047cb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-31 02:48:55'),
('465fb463738e5290bc854be686', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 07:52:19'),
('4665581132a7796561e274cc7e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-29 16:56:10'),
('4669e80372267f31248c659bb0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 01:25:28'),
('466cc39d246fbc51fa060135ab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-22 22:04:13'),
('46750ed6448c0dec552fb22e88', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-22 10:59:03'),
('467be1cae9a0446b9ec3ee1001', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 20:41:16'),
('468e53141947f4bd4199e25d57', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-13 21:02:34'),
('469e60bad64dc0c7e991b4458a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 13:58:29'),
('46a264671a69b2e74e6faed235', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:09:48'),
('46b3cc0091ba17f33d84e64747', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 00:29:46'),
('46beef568dc9f4e8c85dfb46b6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:38:13'),
('46cef472af149f1a97b2adcb12', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-03 13:37:47'),
('46d2f8bccca41c17e10c54ad97', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:02:59'),
('46fdc11dab579816822e889b37', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 10:47:45'),
('47046b15ed6a0999b5fe55d929', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 08:49:18'),
('47079ae8a7622133d441e514cb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-23 11:25:58'),
('470a7a42f2fec5a89e49da9c57', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 11:27:30'),
('4724ba85ee2bfff0972de83170', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-29 02:12:21'),
('474309387c2c6f314374f6da72', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 18:14:11'),
('4748a420f03df17de21715e3fb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 02:31:19'),
('47577640f8598f2dc7a8470a93', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:53:44'),
('4771f5de9a496874fd39fe201b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 08:00:03'),
('4775aefce95aab51c104418aeb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-01 08:49:08'),
('4791f598232965ac9c8c63df75', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 20:41:52'),
('47b7e92aed37b27d4797d92878', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 04:42:51'),
('47b8ddc39540f0e93d6e82a837', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 14:51:39'),
('47bc4db57bd61412f300498fb0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 20:30:47'),
('47f99b828265244e610a6e11c0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-22 07:29:38'),
('480dde4acb1f02666e08d8a2d9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 22:43:00'),
('481a686373d9027aadaa92a12c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 11:13:42'),
('483e29cd2f6fc258c6ed3e1a2b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 20:03:45'),
('4849208b8c38842558a6e31688', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 03:25:47'),
('486f80582974ad76c34ae2307a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 18:32:14'),
('487185e4186de89d29721a82b4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:49:37'),
('488295b8639797b5db336d3388', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 06:10:54'),
('488d27fdfc2f751cb1bbfe6c10', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-29 07:34:12'),
('48aafff5a93a8bd49a5dd6fe69', '{\"user_id\":\"1\",\"user_token\":\"bKEGsOBN1F6YybdO7WyGih9Wy5XU4fjH\",\"language\":\"vi-vn\",\"currency\":\"USD\"}', '2017-08-23 16:22:35'),
('48b2ec3d6578940f745935a8d2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 18:23:59'),
('48e3c19314fdd381a93bbfd1e5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 02:58:34'),
('48e87d04f54c87ddc6dca1edf4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-08 09:10:41'),
('48fb75e743b9ce0e02e589645c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 18:34:10'),
('48fc72dd4a6afe87c7eab05a0a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 11:43:46'),
('48fcfbd2162f693f17d9808c97', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 04:02:47'),
('491ddde692c7df1f51d9bf6349', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 07:31:49'),
('492bf175ca438da451473c3ebb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:38:46'),
('4944ccd0be4835e131363a8389', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 07:28:59'),
('49779d4052c65225005ce8cde1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 13:18:08'),
('4988d54382898c717402ee3467', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 00:58:40'),
('49a6df9cbcc7ef2b11de09503e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-18 09:51:24'),
('49a907cfa7d0a14bc24ec60af4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 13:50:35'),
('49b363acf6216d2e21c1e31e00', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 04:22:24'),
('49d0410ddedbfa5828b70f4c3c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-30 12:16:55'),
('49e4b2d8beb6ebc60cbcc60da3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-18 09:53:38'),
('49e64836e87f721eec34a883e5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 21:55:25'),
('4a09cc3928a1634562e81102a9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-22 10:18:55'),
('4a1134d452d221c7accdb7940d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-06 20:25:38'),
('4a15bdd58bca586e0be12c1e09', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-26 07:02:34'),
('4a2bdd6984b8c0f2039f7bffa2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 00:55:56'),
('4a383294c915bd9257eb152403', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:51:18'),
('4a5e3fe35af4b7a65fd680198a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:07:50'),
('4a76ea1bbcd8feceab184f3723', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 07:27:55'),
('4a79dd0f6fdfc03ce67fab05f9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 12:08:07'),
('4a7cf2e4c87d83b9dc9c75bf5c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:33:03'),
('4a8145848858ec30db50e96b07', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 19:32:50'),
('4a917c79ea4613b9db4b2105dd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 23:35:42'),
('4a98373199d6760e558edade3b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 02:03:38'),
('4aa46b37ccb34bdb0766b28ac4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 14:17:07'),
('4aadd73b031dab43471b53ccad', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 23:30:40'),
('4ab5668cf7fc7310ac770060be', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 14:39:29'),
('4abae71793caacdc49c2cf79d0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 18:31:34'),
('4ac5019c0e7764728c74706f4b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 20:37:14'),
('4ae9dd0abc97d0b7b19aaaab1a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-08 15:29:41'),
('4b038e96966ed372f6ba39512f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-28 05:17:19'),
('4b21804f6bf2bcda66674d55a4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-02 05:50:32'),
('4b2f714455ee1338ae4a01c13f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 15:11:51'),
('4b390c66e5ee762376164dc027', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:03:52'),
('4b3b2c3c8ee1d6b0d9459c362f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 19:03:21'),
('4b46135ff5ef92df8124b79468', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-29 07:16:11'),
('4b5588597db65bea993eee1282', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 00:11:32'),
('4b82cafd322e8ed2683f1f5dfd', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/download\"}', '2019-04-19 10:58:31'),
('4b9e7dc70bbb0f22c16d8ecea6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 01:40:02'),
('4b9fe18010fe4956933a2b5045', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-15 12:06:10'),
('4bb24b1aa36e82812a8ffb6b39', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:41:38'),
('4bd06197d7d78960010f592d5f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 00:01:50'),
('4be9aece0d7816009530789df8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 11:39:44'),
('4bf40650ed3fd3fd9ba96a12d0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 15:45:41'),
('4c0acf828cce819b78c4be74bf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-06 16:35:07'),
('4c0be7aa301041f2a45f4c89d9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-03 12:57:20'),
('4c262c030f809316c4d36d4222', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 05:00:00'),
('4c284a2716cb973ff4197bdc51', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 07:22:35'),
('4c2c3c6e8e4f8f9b0c1b893b66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 02:03:41'),
('4c30e7b8152253b62443f23022', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"user_id\":\"1\",\"user_token\":\"G0GqLCBPLjaodeb1mIHu3nZ3Ou9riIJr\"}', '2018-10-11 03:21:37'),
('4c33639fc117b07ec00cae56b0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:43:21'),
('4c34fe6b18efc18fcfd751d425', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:31:55'),
('4c3830adac733cc46eef23c475', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 17:41:34'),
('4c3ce8eee3f237be64453edbe0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 03:24:10'),
('4c4595a34ec7722666ee2cd0fe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:57:35'),
('4c4803866a019be70309d1a245', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 17:39:41'),
('4c4a51307ec3cc3c0556286be4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-10 18:33:11'),
('4c56b918f19057a96eec4932da', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-10 07:15:12'),
('4c58f5b43a85eb6c930649159e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 16:37:32'),
('4c5b028b4477a2b6449229df0d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 13:42:29'),
('4c663e50a8c1a4657608cfbe52', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-29 07:34:24'),
('4c6c7c0671040a0c8293a82d7b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 07:56:44'),
('4c76e6a6ff5f0c329f9e3239b2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 10:29:18'),
('4c8773c0e144db19fd187c9277', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 13:14:13'),
('4c8f7bfc6118cede87fe692d3b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:23:52'),
('4c9a51299c02844b453dfe71c8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-23 01:21:00'),
('4ca8c75286d46e0097b728059d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 20:03:18'),
('4caaa9e507fe910ff39ab8f680', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 12:37:34'),
('4cafbcc9a34d24d5bb44faf109', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 06:55:21'),
('4cb0dd9bc7c92e66c3177baa7a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 22:20:29'),
('4cb7e5e05f6a61978c661365c7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-07 10:21:44'),
('4cdd0ca8861eae94ff378aed28', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 19:07:07'),
('4cf5171957fa37950f65989e36', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 03:12:11'),
('4cf68035af82217e2137e959ae', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 18:11:04'),
('4d0353a4755b6208e4ad1a70bd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 13:34:04'),
('4d10909c28bc45566784163ba0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 10:24:34'),
('4d1b87e9514bb77110d9766fa2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 22:04:16'),
('4d2bbe9b0feacac789150a7962', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 04:21:59'),
('4d37fe056a5d56d02e916430b6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:54:28'),
('4d407ca1c2c608a156355580c1', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/newsletter\"}', '2018-11-11 23:56:36'),
('4d64eea0987e82d82c381634ba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-20 10:07:21'),
('4d79a2974e1a3d68fcd620b2d1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 16:55:40'),
('4d8f18995b4957efafe895472e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 21:51:59'),
('4db223d43711a607fda7162e66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-03 23:11:14'),
('4db32b1608254ef6ab2c476530', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 10:56:43'),
('4db91ffc4e6148038d381245eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-23 21:43:07'),
('4dbfa5dd8faf17f4c5dcb820ca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:20:39'),
('4dc0c624d98e7fd4436c52f474', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:11:31'),
('4dce259ab7df2436b4bdcd59fd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 17:55:59'),
('4dd049ed30127f0ea826f4ddcc', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"wishlist\":[\"48\"]}', '2019-02-13 05:12:17'),
('4ded5db294bdfaede4e8b4cd28', 'false', '2019-01-14 19:10:07'),
('4ded8e5b2170c03c5145db871e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-01 17:27:39'),
('4dee30329ce455cba998ea875d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 14:09:27'),
('4df129b186a1e3d33216d561d7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 15:48:34'),
('4df1c763189e5016647f4f58ff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:36:55'),
('4df1e047382fa8d0b8861b5928', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 19:49:35'),
('4df5393209ac602f259e131a04', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 01:55:18'),
('4dfff146db233b1b1424243a52', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 11:39:12'),
('4e22474c6da3e48e5acf53f9c7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 14:39:32'),
('4e2dc8a647777f2f600f3b5ff7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 10:13:47'),
('4e3ed54189d57d04686c9c1572', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 02:35:22'),
('4e403b57a834abe9fa42d549a5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 07:32:52'),
('4e5060452d2f03316882cc73a2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:15:21'),
('4e765647122c5c0f0525c81d98', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 21:11:44'),
('4e769542508dee97b205efd62b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 10:43:02'),
('4e9121ffbb3cde53ffd4531f52', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 10:58:55'),
('4eab84c57e2e146451d4f6a77d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 13:57:16'),
('4eb28dd53c90b1652317034cfe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 03:51:02'),
('4eb96637d4d04645a8f9bc24be', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 22:00:50'),
('4ed327a43ec13fe05d55b3e84d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:26:50'),
('4ee55c56a3ee6ed27131d255cd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 02:48:45'),
('4ef3b15ff91c776a7dce692cd8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 04:59:28'),
('4efc96c16995c769a38ac0c2c0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 16:28:13'),
('4f121f0eedbc8c18b81361ba03', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 16:09:52'),
('4f3ce02131ef401b963c792db9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 18:01:15'),
('4f5eada29d2167ff7a7f905da4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 08:43:22'),
('4f60359aa82ed8d056c81e1de0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-05 11:43:04'),
('4f75f146387b08634388fd85ba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 04:22:22'),
('4faf86c23a22fb9bd363af60c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 13:51:43'),
('4fba4eb3ad222ee88006ec51c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 07:44:53'),
('4fcb4a94e23819572980c4b813', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:28:58'),
('4fcc69a18ee9152a9cf5eaafe6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 08:13:46'),
('4fd449becd799683e30510ed53', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 00:16:53'),
('4fd4a35af42e72be0ac4637896', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-26 15:17:44'),
('4fdd5c1659af6673b584747a1c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 05:20:40'),
('4fdde538f8cdf432f5446c8218', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 10:35:30'),
('4fe306fce372c9088fa404a0c6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 12:39:12'),
('4ff18fa8553d7090a0357340bc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:53:10'),
('4ffbe8a4ab85e9ab0bec604c0a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 00:33:06'),
('500887e4dbe6b13da6cec6f39d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:16:42'),
('5011ac8af7c5240952a62a1e78', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-01 23:06:43'),
('501f1dc6ebe0401b7bf7754012', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 09:53:37'),
('50240ece5da3afcdf9138c9f37', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:06:15'),
('503dde1d53de97f959e8f266c6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 09:10:53'),
('505a8bf0217efc37495d4d2c34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 12:56:36'),
('5063d9da337fdcdc0b1f23c120', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-23 04:21:12'),
('50716343bfdb606427638c5784', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:57:51'),
('508034544d161930e47c5a00b1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 02:40:27'),
('50824a4c401569ad454f5f89d2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:15:30'),
('508e87793ee9940a7e49858f67', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 19:04:59'),
('509be41cc7595644ca6ad358ac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-20 09:19:17'),
('50a514a88fd6bc3f666740db26', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 03:06:57'),
('50b4207082bdcb9985b4ed0426', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 07:01:04'),
('50bd924d3c7fdd175f8b283d6e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 00:25:02'),
('50da5496d20128f1bd644c32dc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:14:36'),
('50e57b7c2d15ac2ab2ad0ba327', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 08:38:00'),
('50f2faef15c12be9c2d12e7890', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-01 02:34:18'),
('50f4d7ce2ab2dcd1cd802d05da', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 06:25:12'),
('510822d353127305a501322f99', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 02:54:28'),
('510cd4ed76698ce52f037cfad6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:47:20'),
('510d1904f420d168da435432d9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 11:38:45'),
('51291c9901ace935cb62bf9d9b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 20:01:08');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('5153c16ef659d73c45ad703723', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 04:42:43'),
('517cb3784ad5b4ffc23ab86475', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 06:37:31'),
('51801db8e6fdf1db673b69f025', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 23:45:46'),
('5186f957810b0c879cbcae9ff1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-15 12:03:39'),
('51a5cba457b2a9a758bc7bf585', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-21 16:59:14'),
('51c392ee47bffac80a3605f43f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 12:38:33'),
('51d63df0d1d270084c1e1be934', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 08:39:50'),
('51e3626961d4ce496b0d2e9efc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:17:10'),
('51eee854ed2363f49f4bb1c77a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 13:24:30'),
('51f0aadfff913456d4bbd403bf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 13:41:38'),
('51f869308ac496ef6b83a19927', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 01:22:05'),
('51fcf6f50914a3dd926a28cefc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-29 19:22:43'),
('521b496d97ef04059543725d26', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-07 02:19:22'),
('521c8ef44f3315827ebf04e9f3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 01:28:40'),
('521cd0c6e4d40ab2b1f0f2ab57', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-29 14:25:34'),
('522ab9abc3c46fa92cb6d85552', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 00:56:51'),
('5243854c889abf0a077156b614', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 22:25:03'),
('525c68cc376ee4008d08efd3ce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 01:49:23'),
('525da506d91064e9c40da2fe3c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 21:43:45'),
('52638cb8976e09b8a6c61bc4c9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 20:36:08'),
('5265a88a3e3166b45236806cb3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 00:39:47'),
('526abc92b36233764de50a49e3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 19:19:40'),
('528ca3df1a0c0b5087e4acdf61', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 11:55:40'),
('529427fd4eeef778f18d099002', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:38:28'),
('52966155a66db3578acd7644a2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-12 17:35:07'),
('52b1a05706bdc29d9e22404df5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 15:08:24'),
('52ba7aa1cf3e244a0ad11a31a6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 00:37:41'),
('52c221674f4a055d7deb8926ee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 20:02:54'),
('52c38e0b75715f3e97c646bedf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-26 13:38:29'),
('52da38251916fc3696f759a098', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:33:19'),
('52e7479c7abe7fcea36662ea1d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 20:17:38'),
('52f7045126a1b12d67e24a1f34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 15:25:26'),
('52fe1ea62c7a81997cba9608e9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:54:44'),
('5300b768d58a97bdf84a01362a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 11:11:38'),
('5303babba7690fba0d6f9115ab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 07:13:51'),
('531f4cb4708285958ed33e66ff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 13:07:59'),
('5335b792de994afe0f4302e923', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 06:00:52'),
('534b966ccd0de3c7db5e7a8401', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 01:37:43'),
('5364ae4c3394d9514268ba68db', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-10 19:42:11'),
('536fde6a9c4331ea1a15af0cfd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:26'),
('53743c8f0b5189a689c75637b7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 08:07:32'),
('537509646b43b0e5785baa9c95', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 09:36:52'),
('537719be37d552f4727fee4ffa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-09 21:47:55'),
('537d2dcbd443abb249a9a7228a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-24 06:45:20'),
('5386e0a1154a4db7b03c8a8d28', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 02:59:08'),
('5388c6761966664d2c485d67f5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 12:45:17'),
('539067f4d754d87a3b9bb8b3ec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-07 14:56:09'),
('5391bebfbb7c26d82d0662d47b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 04:27:27'),
('53b228112d4bbba598d00e51e5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 15:28:45'),
('53b92a31c1ed92c0da9c76a4dd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 00:44:36'),
('53b97aea84d00923ca35738fb4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 11:45:20'),
('53c441e8fa8b18253fbe3e9bb0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:21'),
('53cf7a78a02f203ffdf3400727', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-18 19:29:49'),
('53d4f3c77aff22b2605bf0b99d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 02:04:55'),
('53e4401a8c47dbc044ddb1cfee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:15:18'),
('53f4397d236d26f7f22dded546', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 08:45:44'),
('540369b1270a440a66d64f6ccd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 10:41:44'),
('5411ad86a51490d0be9e6369d5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 12:47:52'),
('542476467e98daa53495aa65d2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-05 14:52:39'),
('54294546836d276103bb39916f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 13:06:04'),
('542fa0c3bdab49065fc8795c49', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:23:51'),
('543bd375253232ca55b06a5aac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 23:35:02'),
('5442bc9ae5404c3bc848966242', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-25 00:51:04'),
('544eb9bd0f47157797a987eda1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 14:47:37'),
('5454bb920bfd2870d6a643388c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 22:03:35'),
('546699c9389aa957f290c6dc1d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:14'),
('5475a6834d22ff189caf934903', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:21:15'),
('54a9d1c72505214146052bd64e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-19 18:02:11'),
('54aac4f30e67c6b6083eedc1d0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:28:56'),
('54b8d7f8354455d49866a1ccdc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 12:11:58'),
('54cc8b4d6eecee8860eb1975ff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 16:35:59'),
('54cce9660b8d8643ae564dcf66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 10:12:19'),
('54d62fb996190bc50d84c76b04', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 22:37:52'),
('54ef396d81fcbb87dc9bc3564c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 11:30:04'),
('54f1305ea0c52629cd961222f8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 19:53:58'),
('55247498a5c84026041c4382ff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-31 06:46:37'),
('55256daa16908541862061117f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-05 01:32:45'),
('552a0b6544f0146812f0b08cd4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 00:01:04'),
('5532b454e7c09e09dae379f583', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 12:19:34'),
('5547f0dbd3ff3c76f1348b2abe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-02 08:32:37'),
('554926dab3973144b1eee02237', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-11 21:10:45'),
('5559f58f76c22b4d4ba247984f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 12:35:35'),
('556c40c11bfe4fbb36ba92f370', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-15 08:25:09'),
('557488d3e9148b2c8d954377a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-21 06:51:03'),
('559b9c88663ddd256dbbfecc18', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 13:09:33'),
('559e8979857475bda1ddc9493a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 03:00:01'),
('55d011c34717fe2abdd66364c3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 07:44:37'),
('55d1b1b78603f81340e83b90d3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:15:43'),
('55f38d410fb28eee5f5678587d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 08:45:33'),
('56152b82f0e82621e5e8ae050a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-27 16:55:23'),
('5616eb5c886ea1c79d50944a34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 10:03:49'),
('562287ba81cf7a68b0e09e660a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 08:12:15'),
('563730d58b7edab06371d9c032', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 01:20:07'),
('563c1ff9ef09835fab7536f15e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-27 20:06:00'),
('5643b5085addf4a5e009cb3650', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 05:05:30'),
('564898109d2ffe82b77fba9aba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 21:12:41'),
('56496d2271daeb697f4deede5c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 04:06:14'),
('56570169eb15d0eed60e76f0ea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-02 01:09:11'),
('5665a154b22cf5ae9089a75b35', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-07 00:37:05'),
('5667efa9f879952cfc524e68cf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:34:26'),
('56a35622ba473a022985247027', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 20:45:30'),
('56a3fb15633dd277c5bbe57cc4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 16:08:18'),
('56ad11018f41899806c97c874f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:03:35'),
('56c2037db60a6af013e9902dce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 19:32:26'),
('56c6f59b8a7349dd0a54c19efe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 19:47:40'),
('56cc72101b7c38025971c0010b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 12:27:17'),
('56d6c513d560e07fa1b1ff5cce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:28:15'),
('56dd3c3dfa79232f4233b09159', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-04 16:13:10'),
('56e17fd7fe7ead558d4bf66624', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 04:12:19'),
('56ee0c8ae1a37cff173a73e9ab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 00:52:04'),
('56f5042b918341509b5ee9c4a3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 12:00:16'),
('56fcae43714f6b261fa684f433', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 10:33:20'),
('570194e45f38f581d22d36650d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 07:28:00'),
('570867e4ef78a8a9d8a7b5bc90', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:13:46'),
('5713d45b20fb17de06472ba352', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-02 20:17:40'),
('5717b87d41ed134e62ec6f8274', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-13 08:17:43'),
('573e9e23be1aed1f2b3b003b81', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 03:32:29'),
('5772d9e09376766cf017fd55f5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 12:17:23'),
('57864a3b974d08bd0c21b1cae4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 05:00:40'),
('57afdda86982aa8c5cbd4c8e5b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 17:18:00'),
('57ba5947a9a017230d6c3eca29', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 10:07:26'),
('57c542a72797b01b927bebb40c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-28 11:15:51'),
('57c785eb11e0f0d7e448d62f7b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 16:49:12'),
('57d7860064d345ba1730d7d752', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 19:03:21'),
('57df474689284381f04b2c1c37', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-23 10:28:25'),
('5805bfe31917505b3ae62d7529', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-18 09:17:27'),
('58092f7fc0f05c82aebefa3b78', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 22:49:14'),
('58117c43d2c600fd318e999395', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:51:59'),
('5814123d7377da6385d577cfbf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:02:28'),
('58152073bfa311d7685644a7d3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-15 19:48:34'),
('581cb428062f79de2f1136cb20', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 10:57:21'),
('58370ea426d28828ed6a0a2082', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 10:41:34'),
('583cbc28a2de1ad21eb053b04e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:25:33'),
('584ade4fb14cd83a0e5823d5c9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 22:52:22'),
('584ba91ec30ee52526357bd3d2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 14:52:24'),
('584bd19aea7004ce917f57bb22', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 00:51:11'),
('58be85a8baab0055976f13523c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 02:45:55'),
('58e6b7ad646e072c84eff33357', 'false', '2019-01-14 19:10:06'),
('590e45b33d29d1a8f4ec9e1860', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 09:10:49'),
('5921164d958c4dbc14915e630f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 19:15:28'),
('595254598c618100d1b50f297d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 19:31:00'),
('59630314494700769e77079d4d', '{\"user_id\":\"1\",\"user_token\":\"lO6i0G4dxXgP9ChGvpVIvvOO1GeRInPC\",\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2017-08-28 17:51:49'),
('597190362db62baa374c753ca0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-08 23:45:50'),
('59849aca359f209c31962109ab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:35:10'),
('5988e71301d5779b59083fdd44', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 02:51:30'),
('59979f85f2567ec3c29b97b345', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 19:13:50'),
('59af4f5f55986a2ef8fba09dc6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 18:53:35'),
('59c037f31df6f8a6fcdb75b9c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 11:25:21'),
('59ca60e40a4037f74c1f6c0a8a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 04:56:31'),
('59e33fa411c9f731a963350262', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:28:29'),
('59e57af8bb464f42f525ae5807', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 16:17:45'),
('59efe656f3d2ae860fdddf06b7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 16:41:12'),
('59f6e98220983a6ca23dad09df', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-30 15:18:50'),
('59fcff6f837f8d31409785a51d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:27:57'),
('5a1cd0289c5ef64d562b5feeec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:37:30'),
('5a2cfec248fbc91df9c6f8db4f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 12:03:50'),
('5a2f0ff66815d6a99a1f4e7e2d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 08:33:11'),
('5a3a1b285cd662939f1b14185d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 01:05:26'),
('5a4c74e14b7ff76ac32b6088b9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-23 09:29:20'),
('5a61df37ac100095904f209704', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-14 05:31:14'),
('5a6fb76c9d146fa33ee1abdbe9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:31:01'),
('5aa3e671788adbcc546bedd8b7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 21:19:45'),
('5ab3c7b9e58647aa04da4fe8c9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 11:31:04'),
('5aba3d5214738f54827b90ed78', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-25 03:30:35'),
('5ac1b9825c5ff1502152357b64', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 07:53:21'),
('5af5c5b1afa03764df656c2a1b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 00:52:25'),
('5afdad34634e919ccdbe4cba0f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 01:37:46'),
('5b02869f294d8119dfca4c6ce1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:46:05'),
('5b23d66a4eef1c9bc713bee323', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-08 09:45:11'),
('5b2b3298bd4dffaea86a8053e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:55:12'),
('5b3263a766961563928d08176f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 05:21:24'),
('5b34f3468c6dd38497298f4577', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 18:50:12'),
('5b455e03b9c3fe76a02a93e41f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-24 17:55:33'),
('5b4688f66491b9cbb11f424bee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 17:08:22'),
('5b4689baa7a25fcb2fc011246a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 04:14:25'),
('5b5a94afaf18be614b49749236', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:28:35'),
('5b704553fcdd3b42fc625b3ff9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-05 17:30:33'),
('5b70cbaca31995fb285f1d38d3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 13:58:34'),
('5b7192b0bffeef0aa30dae93a1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-21 07:41:19'),
('5b7aa4adafdd9c962ab8798135', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 18:58:42'),
('5b7c829a202aba248e40b9b155', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 18:02:07'),
('5b8b16e51b5b7bb9ca9aa2c065', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 23:35:41'),
('5ba00fc5a92344a8c6c1f8dc97', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 22:14:04'),
('5bafae44e79d1b886cb9b97342', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 22:34:37'),
('5bc59d207b5b7c4c65cb89fae6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 05:26:56'),
('5bcdc5d637fca279ee85e55008', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-30 22:04:58'),
('5bd2859308f923dd7505b749f1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:51:23'),
('5bd98da9e272e19de36f2809ae', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 17:05:52'),
('5be73d21972f13c66ccee85282', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 11:45:30'),
('5c27dbaa79c4ac41ecdb45e3b5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 08:22:27'),
('5c2b09fdb118ab8eb861423df7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 12:02:31'),
('5c64ba5e7fba3d129ac2eb4973', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 16:11:25'),
('5c67b5323cdd81e7550df207e3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-04 06:09:03'),
('5c7bfbeb21273e88d1037e3071', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 07:14:26'),
('5c888ae179d0a0bf7df2b286ea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 00:38:11'),
('5c92b54ca5140856d262e84a55', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 01:06:33'),
('5c9760308310f3f4da887df264', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:15:07'),
('5c9f0660d17bafa95b5f3e4761', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 05:01:11'),
('5ca343532b1bd996f50e09bc9f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 23:10:24'),
('5cc92c29b272abb66a995061e0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 21:31:45'),
('5cd1f069ea31eae57862c9409a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 13:48:37'),
('5cd4a61ce356759da6549991eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 08:18:13'),
('5cdb751a7b1aa90b01aac8a9a1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 04:38:11'),
('5cef23d862adcf145a4235ec2a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-06 11:32:55'),
('5cefc2e0c60921457925535b79', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 07:01:49'),
('5cf5eec3f27722f14d50767965', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:05:08'),
('5d1208b8f61e5382e80466e106', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:16:38'),
('5d15155d053acbaa8797042b4f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 23:20:35'),
('5d3d2e392daf9d694e5f21b463', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-19 17:27:48'),
('5d435076b3ea66d60854c2ff6f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:56:00'),
('5d4f712e9ce5fdd7294bb6582f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 15:53:59'),
('5d6970534d38d6952b64b030a6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:34:49'),
('5d77ca3fa767cd3a19a86b268a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 05:25:32'),
('5d89693041cd3e95ce3b988d2d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 00:50:43'),
('5d9c3f0142c92528f3bec927d3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-20 15:10:57'),
('5db256b8db37efcd9ab39917b6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-09 03:58:01'),
('5e1d72c393e8b10afdf080d91c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:35:29'),
('5e299f44d4c050c8298be09d5d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 01:02:20'),
('5e421bd5ee06f396e8bd5cd630', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 03:38:46'),
('5e5d460dc56e361dfbb28f271a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 19:32:16'),
('5e62b3b44e66a60b803ae8fef2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 09:44:15'),
('5e63036f08c3ea3880c46d19f6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-10 10:49:22'),
('5e6c649bd3c1d6d92296e160ef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 01:42:15'),
('5e843479ea02a329bc50411b2a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-08 18:36:04'),
('5e9083680767638205eee5863f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-21 16:28:31'),
('5e964904550b297417544ea1ec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-02 23:05:55'),
('5eadf0a6e2cf1415a0df39eb3c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:27:34'),
('5eb83d1ee665cdafadc67b2960', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 04:15:55'),
('5ebc0477ca2936f11a26dcc41a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 18:16:36'),
('5ee1c03e1ed4227867944654c0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 23:47:00'),
('5ee8cef89e0e77a1584f8e7637', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 21:06:56'),
('5eff06bca1edc9ec19519bf09a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 20:30:42'),
('5f0296ef72ed8e72cb55183fb2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 11:43:24'),
('5f1a87c4a42ad107c8cf7ee9bb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 14:20:40'),
('5f2dbbb6109ab636f80206a253', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 14:24:11'),
('5f3fd1fbe8bcd96dc739f2d9b1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 01:40:52'),
('5f43da9f9bb88d1c15d5f3d030', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 12:13:48'),
('5f4b43d27541568b8cce453779', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 13:30:41'),
('5f4eecd7307baf70804d453f72', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-05 18:26:06'),
('5f6890dc1b4cbff8c0d290923a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 09:34:53'),
('5f818c2fac172d23f2030c728a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:57:46'),
('5f8fbbe23691393b2b1616154c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 02:45:54'),
('5fd02add9554d0950a7a674761', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 23:14:55'),
('5fdd630c986db25d9ddbe6f673', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 20:25:51'),
('5fe644d102e076cde02b9c7b9f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 23:35:15'),
('5ffeb459ca7cc93aeff811a3c6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 23:43:57'),
('5fff17146aaf83ba5bda026202', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-07 13:34:18'),
('60259ef50c13c5e4e598a22c66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-23 17:01:49'),
('6035af06d3bc3943d37a239415', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 05:45:52'),
('6038d3d583d705786b6fe028cf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-13 04:36:05'),
('6051bd5094f463e979e4e83e3b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 01:30:56'),
('608822ff9d7d5a1d0e1da0ee6b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 12:29:07'),
('608cc66e1498d6a7786e794b75', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-11 09:05:46'),
('6091c2f11f02a0599cb3b520ad', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 14:16:21'),
('60a4ca2c3b262ecf0374ba415d', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/newsletter\"}', '2019-04-04 05:12:30'),
('60b831cf7c9faee577e71f6a79', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:21:08'),
('60e0da464a171275db938295ad', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 15:58:28'),
('60e0e22bea910d43ea21b26977', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 23:44:25'),
('60edf1e658b7a1b7d8afbf04f7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 00:49:36'),
('6103ff31715a03da51d5bfc8f2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-11 03:24:25'),
('61080b1d8cfd0eeef31b9c7210', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 13:44:21'),
('6109611532a4fcf0628b501c3b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 13:46:35'),
('610cd2164fc9de66b1129bdab4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 19:34:54'),
('610d4ec45ff5d79f03670477f5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 05:19:45'),
('611a44a7de924675871b09c995', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-20 08:02:44'),
('614a9977148aa4c1378b97dc4f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 01:30:49'),
('614e3fac40fbdbb9dcb208c37b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 20:34:50'),
('615833f188c63e6a51fa0c0be8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:07:54'),
('6163f646d430ee1860879bdc91', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-19 17:49:39'),
('617e9b782ed082972c9be5998a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:03:54'),
('617f3c4ac9d0d142e3b2e601dc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 19:03:34'),
('6192f690f09f21b74548e818d8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-23 19:51:25'),
('6196abb783871e6fd872674b76', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 09:29:32'),
('619997250175b14a45fbc63fb9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:11:34'),
('61ab74eac68a3eb02b0a7e8408', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 05:49:22'),
('61cc92517b39672da79f8b4fd2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:45:12'),
('61d1aa6a5a7807fe05ca3480e0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 19:11:48'),
('61da4cb105f574278d778933ee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 22:49:59'),
('61ef59b73870709dcdbade5f7a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 21:48:56'),
('620c8be3043043a73899b4763f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 02:10:05'),
('62147b997b56b92cea0fc0190f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 12:32:37'),
('6222631762bd899063e2350eeb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-01 23:42:03'),
('6225128161696ae7656e6b67be', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 19:17:55'),
('6226a967649cfcd8a24fa72a22', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 16:24:19'),
('622956156aa71b89ff07a078b6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 12:15:14'),
('6230d5793267aad2752b5ef08a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 23:06:44'),
('62322466f2f1f15edfae29af03', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 00:45:46'),
('623ecccec1e9160d76c9840685', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 19:56:10'),
('6250f840d8a052dcfdaf4ac6ac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-18 12:06:56'),
('626a6794246c0871cfed2d281e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-30 11:32:56'),
('626ceea8543efbfe377a7906be', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 03:53:43'),
('627047e83812d93529352c3206', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:35:42'),
('6288a1e9fe76a82eae769acd38', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 07:23:52'),
('629a67e4449450dff5d86cf84b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 22:33:47'),
('62af4f634c0a0dd42fd915db20', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-27 16:55:30'),
('62afd53223abfc68cf18102bae', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-03 11:58:55'),
('62e23953378a52ba23b4c3fbd7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-30 20:32:29'),
('62e7eb3693ff84ed68e4612bcd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-31 13:59:52'),
('62ee730e537b99725cc24f55ef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 19:39:20'),
('62f77fc31f4ae234dfd42ca9c8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-17 02:05:22'),
('62fef4d696e4d393a7247e6791', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 11:00:28'),
('6314b214008dbdd864afa59235', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 19:06:38'),
('63198c3c1426fc1ebdacbf924d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-07 20:24:17'),
('63258ae80c2e9dcdbf7e355a36', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 21:38:13'),
('632717d5c092e061b88f4e9f56', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 14:01:39'),
('63411c47837c115ff2557942c0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-06 08:52:16'),
('634574ce381713475818939bd6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-31 19:35:55'),
('63504949aa988133e54d88f67c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:12:33'),
('635a33195e8c909f22f97ef2e0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-21 16:18:54'),
('638b2fab5aebc007d0c990f262', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 11:05:14'),
('6391dc7bbf4ce6238b7847c397', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 20:38:40'),
('639d90c707bb37b61b93867770', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:07:40'),
('63a65211b38eda2cdcdad9c0ff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-23 17:39:27'),
('63ae47a88947a86f71375e870f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-23 06:47:08'),
('63b3aefa9da6aba21601af089a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 14:13:10'),
('63be74f4a1f25fbae329e52711', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:19:29'),
('63d4e5bbca39c02ddaba7c0fc3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 20:55:25'),
('63d6949ac9f11df8b8644be81a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 20:00:49'),
('63d8b0650bae1fefe9e4dc6298', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-30 00:58:37'),
('63de113bd32da21c5d3e25477f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 15:09:01'),
('63f428c5e0ad5aab58af0627e3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 23:53:13'),
('6417dd9ad488549b49c2d1cbc4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-23 13:39:08'),
('64348932d5281f5f0214ea82e2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:39:56'),
('6456ddd4f49eac07d18c94f1d3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-25 18:19:00'),
('645f27fa6fd0013fa193f81dc6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 11:48:34'),
('6460d2d30ed664b727eabe81c6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 05:40:34'),
('647ee1071e62800e7e782fd867', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:38:51'),
('6490d578b375bf855a2c2b5af4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 09:39:13'),
('64941f0a0f09ceef518c6af95e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-11 20:36:58'),
('64b28283d247f18beb057567bd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 21:36:22'),
('64c836c07a123b2525de973520', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 16:09:00'),
('64cba7ee03e0f5fa6ca6c2b105', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:51:38'),
('64d2547855a807403272e90df1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:36'),
('64d646a641a8de9e1f9baf3089', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-29 23:22:20'),
('64db8300ae340c363a3261be93', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 19:45:26'),
('64dba3604f987fba86a37339fa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 08:20:50'),
('64f389f8d5b3d16715820163c6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 01:48:30'),
('6503bf4e3de95c6f7c41e64e95', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-24 05:53:33'),
('6527e60d027c1d115a387a3995', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 16:06:04'),
('6535ed526b05ad22723c943757', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 09:40:13'),
('653e217fe48f4b76bd2051ecef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 22:58:38'),
('654a77d11f2bc2fef0c51bc59d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:12:54'),
('655d50e48807370c7dc4d0b6cb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 07:36:37'),
('658d0e4e7739dccc9467f3b09e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-22 14:52:56'),
('6593c7a639ff0f01cf163e4572', 'false', '2018-11-12 22:26:03'),
('65973ec9bc7cb43df0331c5030', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 20:39:03'),
('65ae11511be7529d73b351bd39', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 12:38:06'),
('65b59863a62e55e702e753660b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 23:31:03'),
('65bb58496b9323b44666aa3279', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:56:08'),
('65c9594b0a7501b59b4cb4879d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 14:03:35'),
('65c9ef4d0b10a2ffbac1402895', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-01 08:43:04'),
('65d72d3bb649dee21c89b4b9de', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 13:40:45'),
('65e59df4fcf19c09b85973325a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-27 04:24:54'),
('65efb997ce4aff1721d44e8929', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 15:19:57'),
('661bdd7e9243cf6b84900f1a9b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 09:01:36'),
('662e7c154c60adbd45b71e64e1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-09 06:51:13'),
('662ff5f36b6475a19b5b6e2072', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 03:00:50'),
('663c73a2b33c62701e2c51af02', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:14:00'),
('663d37ec8291a1b67656d7e0b7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 19:08:05'),
('663e3b59ccc52d4e583b6c30e3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 03:59:28'),
('6651c79038605f58e040167442', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 08:06:09'),
('665f0d71724bfa2a0f8d98c65a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 08:43:41'),
('66736e50864a942c26b0278666', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 07:19:26'),
('66782aa7605e87143ffddc7154', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 01:35:43'),
('66a9b1c9d75cab59255ea1f7b3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 06:19:30'),
('66b7e536cd0bcd1a1df810cd5d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-28 23:16:05'),
('66c76a4cb97c3216a387b58a6d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 07:28:19'),
('66e1d8f89836a946bc0979e54e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:12:12'),
('66e8cef6c2513dd0a2bc7c68aa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 23:42:15'),
('66f29bc3a79062960aba1a6ce5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-14 05:34:59'),
('66fb3e47581332e61dfacb561f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 11:00:46'),
('670470a266f0687674c0dbe305', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 02:23:01'),
('670f24a29ea3abd8a05d170a7c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:55:36'),
('672092d17545d9e646c9b9ea66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-18 17:42:16'),
('67296027c2a7e1024e7cb7aa87', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 18:30:10'),
('674526bc214023994b99cc6f4c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 10:12:48'),
('67549c91ddf4390be135e2f20f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 09:18:58'),
('676e4128a74b705ca9858eb79f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:46:36'),
('676f3c5df0f8cee212548abae5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 09:24:26'),
('678cf222e91201084ce44dedbf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-14 05:11:37'),
('6797595b76a0b701dacc295c68', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 17:50:03'),
('67c6c729468829a0c8b0cee877', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-29 02:06:59'),
('67cc012c67b13b243aba73dcc4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 09:59:26'),
('67cc2b526e8e921e60d3801be6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 14:55:53'),
('67cdbc1945b15c797a5e15be01', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:57:29'),
('67d07319674078392a714a3de2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-09 04:23:11'),
('67d2d7efa8087dd1fb94594d06', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-16 15:17:19'),
('67e861ebfad8d2d4de087babe5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 06:47:09'),
('67fc6aeb8398fb520967f4fb4d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 14:36:24'),
('680d5f8edaf91027c8f9ffe58f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:17:38'),
('681828f5b5b11dec3316510a01', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 11:51:44'),
('68605f15f6146927dc4265c3a2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 10:41:55'),
('686553de36bd936defaf2e99ab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-31 16:48:13'),
('686859219d2c05b0b6f0676c9c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 06:56:24'),
('686aa08c2d0306813c37bb3f66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-22 03:32:18'),
('6872869274366c1a7258ec12dd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 13:38:09'),
('688a747e38b9971c1ef7df4e13', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 12:33:20'),
('6894ff73b5facb3c86433a2404', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 09:50:13'),
('689b019682e39b0c24fd4be70d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 16:18:28'),
('68a4181b0c482662d9376e4a87', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 15:49:11'),
('68ddaf5268f382cc0d25b8d3ee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-07 00:49:37'),
('69109b51212b2905b196ea14ac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-08 21:27:25'),
('691307f880bb177f257bbaaa71', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-02 14:55:50'),
('694d8724a46de0a9df4ad07d00', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 14:36:57'),
('694e91eec0adb42e40141134ae', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 21:54:21'),
('69504356513526675d896829d0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:39:14'),
('695f2a3d72449e435dfb8ea473', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 17:31:57'),
('696eb326122b59304450ac5492', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 23:06:22'),
('69709ce5f73f611e4e748887fa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-19 23:03:38'),
('697ce1f8c0712ba0657022e699', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 19:23:51'),
('697fcdf9365d11d05872273ecd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-24 07:55:54'),
('698034d33d9f18e85cce42675b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 21:10:34'),
('69955aa7decb52867bc55ee869', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 19:52:54'),
('69c379ccb635995b9e5237fa2c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 00:10:47'),
('69d2026e58528aabaad372f9b2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 14:56:04'),
('69d3e3f11c3fca7dcddfd15859', '{\"api_id\":\"1\"}', '2017-08-29 15:10:07'),
('69d4f42e32d679600709bca892', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:42:43'),
('69dc7072ab2950ccd9259d1fd5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 00:13:39'),
('69faf86f940f62240389011667', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 02:47:56'),
('6a1029288bb8b6af58a0826b2e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 08:03:52'),
('6a133808f6e9033a8f80b88d9f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 04:05:37'),
('6a1986db20b3764ee70771d768', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 02:10:57'),
('6a25261838b8964c7a2e60010b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 14:07:26'),
('6a41d0e11feb2db7f9a45e1def', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-09 21:32:14'),
('6a71d4a9756a69dbb912dd7425', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 07:44:56'),
('6a92d468ea6a11f413735ea8b0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 03:37:08'),
('6a9b83c4fa1d680ce16967131c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 19:19:48'),
('6a9d7187a9ac2385791518b219', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:10:03'),
('6aa910059c8f79bc1db7c77353', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:02:54'),
('6ab2f7c7d6ddd0f0891b1db3bc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:19:52'),
('6abce887dab217cd83d9e13717', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:36:42'),
('6accddd005a39244d1e080e78a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 22:09:33'),
('6ae76dbb26309a92f6f6824ca5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 14:56:23'),
('6b189a2096f250b2eaa1bd3467', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 00:52:37'),
('6b1b06740e840f7fc600f92b5b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 08:16:40'),
('6b1f8e04ea51ede6ec4802bcf5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 09:57:33'),
('6b26786b8cb5b3751cd5534d34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 11:25:11'),
('6b26c3d0021719bf272a66023d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 01:46:07'),
('6b368f31e863b2e25fd7fac5cf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 16:01:33'),
('6b3bd3e77b95bf7174c6719798', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:35:33'),
('6b3c2bdd19320a2d143a3c8715', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:51:37'),
('6b3f145e1df9c95f674d745421', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 00:57:15'),
('6b551488a8cdeefc19484b02af', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-23 06:06:37'),
('6b6be1378fc5447db69e557ca1', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/order\"}', '2019-04-16 02:40:06'),
('6b8f6380601c976dae0abbd01a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-01 09:29:00'),
('6b953fdbd9a1cf02899e37c918', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-18 21:52:02'),
('6b9b6a002ddc2149908033c8d5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-30 06:53:51'),
('6bbea7ccbc00d68a4129ba8d72', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 17:09:06'),
('6bc08dd23b04e9c346ae70ff93', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 11:16:38'),
('6bcafa172476d1c6901c37e712', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 21:37:27'),
('6bed852b1006285de2892f4196', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-23 03:49:18'),
('6c231383d4ac00b057af41cddd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-01 16:14:39'),
('6c2767c52dee21e778ac76683c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:14:50'),
('6c28620122c6ae3c84bd182440', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 23:13:04'),
('6c3793a61c5eed91c5fd3f920a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 22:43:06'),
('6c380a291b913fc976534c8b51', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 08:39:11'),
('6c5bfaa90e12cdaf0a544ccabb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:07:23'),
('6c6acda09c06868e81ee3162e4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-01 11:53:25'),
('6c81ae18beb9195cf98b5a145f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:20:25'),
('6c8776b119369f0320458dee28', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 06:16:56'),
('6c98a63a42833ca66fd505c9db', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 22:37:15'),
('6c98b495681aeb1fec007f9b35', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 12:12:00'),
('6cde05c5755cec19cc92e77823', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 07:37:27'),
('6ceea5819ceceb62e78c0f524d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 17:43:40'),
('6cef18113d4fc3bd6cd47ae217', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-23 11:43:06'),
('6cf6cce6fa52326d37591da879', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 10:40:55'),
('6d08b44f2013ace48f1de58708', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 03:42:06'),
('6d14608c1c05dcc22425fc7a5f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-24 16:47:27'),
('6d22ad733d7c9557c83d851008', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 06:11:43'),
('6d387abb27d5122734adb13670', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 21:08:22'),
('6d3994b653bd17bebeaa33e8d4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 10:55:08'),
('6d3dc056c0339ac72acea12ba9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 07:21:04'),
('6d3f42edf1c0ce4c48a1ae5dc2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-07 16:47:28'),
('6d4001641e88fb9df5156f49a6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 22:24:45'),
('6d45e3b58f86ae90e82525080f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 14:39:31'),
('6d4eef90a049040310e8937cc7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 18:08:13'),
('6d51a163580941d41f009462ce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 05:25:31'),
('6d54576e6add182b4daa52beae', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 01:06:55'),
('6d62418820d4ba08ebed551b69', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 21:25:34'),
('6d68c30f4282609d05f99f85c7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 11:21:37'),
('6d6ae0048e660eb22f10c49694', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 15:00:18'),
('6d71d6d74b792fae4acaac223d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 02:10:37'),
('6d84e41b2afa8267a7ff876e77', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 10:29:20'),
('6d881a657628fe470e7932d153', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:38:12'),
('6d92c2250c98b1181ae17a2862', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 10:22:02'),
('6d96369571db380cfd7f395ab5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 14:00:48'),
('6d96793b753417d5a571f4a66f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 23:21:58'),
('6dab4469343a4d8e3e64dd8846', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-30 07:15:07');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('6db65e4e2b73d2204ecb7f098e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 04:34:00'),
('6db910dee4a7d176bd9e6db4e8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 09:22:45'),
('6dbf773a1f4b6fcc496d6c8d7d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:55:06'),
('6dc62a9f4e25615bdc53d94fa8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-14 23:01:11'),
('6dc8dde47a809dfd441d0e5e8d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-05 04:18:35'),
('6dd124c4aa46ace237177984bd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-10 02:17:24'),
('6ddacd23e7ff3ef2e3993bfa1c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 17:53:14'),
('6df183d63fc9033b578b587084', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 14:37:44'),
('6df4d577cfa4b65e431fae25e4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-08 17:57:16'),
('6e158c41f1472ce9f77d74e42d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 16:13:26'),
('6e341654b246b4b927a6693a76', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 16:18:14'),
('6e527a36199157a97a1b8d3037', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-28 12:33:46'),
('6e563c867ed07e5c760ac10ca6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 01:18:39'),
('6e63966a33e2ace19ebb0b4dc6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 09:01:22'),
('6e63bb35b6188ded255f6067c7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-16 14:12:47'),
('6e6667c5ee09f02260bf2abcab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 01:11:17'),
('6e6aa8e1f4c02e14425d73f185', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:51:17'),
('6e861a55e8fbf1511c1c920700', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 11:09:28'),
('6e92e4719c3952c76221c1007b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 05:50:21'),
('6e9b91faaf54c47fc78c319ee2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:46:57'),
('6e9bc66eb90fd9d7e24b2e0495', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 09:29:30'),
('6e9f5a8d3c2e794f39dee536d2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 16:37:19'),
('6ea0e8e881c069c14f5a642bde', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 08:57:32'),
('6eab3c9c947af9fb4f79cecbf8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 02:37:10'),
('6ead8f89728bd417c6503105e6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-26 04:16:13'),
('6eb1349c6cfbb06a57546bcb9e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-21 02:11:13'),
('6eb672d5d3cf1651f4eaad42c0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 11:04:53'),
('6ebd852c642f2c9fc7b86738ab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-22 03:40:46'),
('6ebf96b660a2abb5e1a1e43aa8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-28 18:24:47'),
('6ed4ad2af4334cce9a05963fbc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 01:25:21'),
('6f16be778afeda17ccbdb56b7b', 'false', '2018-12-20 13:56:03'),
('6f27311ab736c06a1aadfc5ec7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-31 19:41:50'),
('6f40d20065c0ae93ddc3645465', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 10:13:58'),
('6f43638bd8a977113097e3f280', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:35:50'),
('6f9222f3e2a1458b7cc4556a8f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 11:49:02'),
('6fa36bc572df5b9b19f742cc40', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 13:27:08'),
('6faa6427df99186fa4a0335060', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:36:08'),
('6fb62e97ba6e02dfcd34780a46', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-21 06:04:06'),
('6fc83b9cca9ad83126fa036883', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 08:53:04'),
('6fcb6ba5f106afadfdc462e728', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 07:44:00'),
('6fe47838cbc07a0c21f421f6e4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-05 14:52:39'),
('6fea79e86f01f4f1df7f196cbb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 04:22:01'),
('6ff3f6dff67a6f1993b5de6c88', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 14:49:31'),
('6ffa1a9450ea59334af5d3a5d4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 03:11:30'),
('7007fe9fdebe8f88539b5796a8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 02:00:00'),
('700ccf4d91d4d3735f5294bf04', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 02:22:25'),
('7022119ce22b974f48f18cb1c9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-26 01:40:17'),
('7030a671b824c2592d53372af4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 17:33:10'),
('703955572eb83b5725d14ddf55', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 10:03:52'),
('70464456e0a586f015098bab92', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 17:31:40'),
('704bad2f338d897477c0b30520', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 19:59:33'),
('70642fed126dd2fb828e7e6901', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-31 18:32:08'),
('7067162a929b3bdc2935dd80c1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:35:45'),
('7067804774b1f22c781441bbf8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 10:58:24'),
('709100d072529a4199a8e43ce2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 09:04:13'),
('70acd7d867f3934617025eb018', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 13:19:06'),
('70b2e2cfe661bbde00bcb88c5f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-10 06:21:11'),
('70c1c665c8f8277fe3ba4e1665', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 00:30:30'),
('70e0894c5dd0eb1f863b629bac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:02:13'),
('70fcb4b2475fb51e36c9455682', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 08:05:21'),
('7124b3d1229572a90bfb2a93ed', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-06 10:15:06'),
('7133614e9539ee50e5ff982f0e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 03:34:48'),
('7133aebe49892a4d21882c3ec4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 14:56:25'),
('713b4f2d4c2b72cd259988d080', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-21 04:08:53'),
('71402b030683e48be8d7387bce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-15 17:00:57'),
('71402fc69f07c2fcb7e51a6e5e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 06:58:07'),
('7140f221651c938e3efefd7b17', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 11:14:08'),
('714dc4b7847757f84f18a7f4e0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-15 18:06:48'),
('714f68ca09a3f6e407983d5d42', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-04 17:22:32'),
('716c10baf2e5ce20104e663037', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:31:13'),
('71ab690f6707535d64146ee459', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 22:53:40'),
('71bc2c6600a3380d0e9abc63c0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 08:39:11'),
('71c794d3077afa50024f52a0b2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 17:13:46'),
('71e9448a43deab6fea56aff8c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 12:38:53'),
('71f8108c1f4be130444046835c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-23 04:31:58'),
('7203805c9bc8c000a9aad2a64c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-23 01:08:22'),
('7219c92ec0abe92cfe7cd624df', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 22:39:08'),
('721c6264ac21ba403229d48ef5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 17:37:29'),
('72322cf37bb6c11a15811d82fe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-02 04:31:36'),
('72322fd1fa3bf7c97f56106876', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-23 20:51:11'),
('7235c8aa0444ecdcdc03028dc3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 17:40:24'),
('72398ff71db0a6511e493a5ac3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-01 23:55:32'),
('72473b8493ff74573a7994f7be', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 22:42:43'),
('72481459be124ecf4ed3900abe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-01 12:03:08'),
('7258ad47e4ff44a0ab30834108', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 17:38:54'),
('726170331af3b2d9b3252269f8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 08:52:07'),
('726387f0dbaa239a09e0f31a3b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 16:57:03'),
('7263937b27e9ac5668262f4cdf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 21:12:51'),
('72685daccb22fc3f84f7f2eaac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:03:55'),
('72a486f5600f0c8c1a28fd396c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:49:09'),
('72a6071c95f8a4afe7b4d05bcc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 21:47:28'),
('72af4e78aff221f13a670e725e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 20:07:40'),
('72b7c65dbd79176043bd6d71b5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 11:21:59'),
('72ca034d621bc4bffa4fb4a358', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:02:20'),
('72e395a7e44c6ca4b17d458f8f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:10:50'),
('72ecafd0cd7b8727503f3da0ea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 16:47:43'),
('72ef1e7956114667dbc208d29c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:11:43'),
('7343f981affd65cde6dc138c76', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 23:45:34'),
('7347b0b977bc8779df2b8d225b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 16:46:37'),
('7347e4b298f9eb74ccb3224a09', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 06:45:08'),
('7357fe48e7ff50a2ebd57eb7c7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 13:35:08'),
('735805ba928bdb7c3620dc9440', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 03:47:29'),
('735a56f759a1222bf3753d6c87', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 22:19:56'),
('735ff3ecce46319e3774443d84', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-13 05:32:33'),
('73625b85f079e412fe5c813fdb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 03:39:53'),
('736d148cc7c5534f3ee63a784d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-25 21:09:49'),
('737402e93275a55e3c75ceb791', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 13:49:28'),
('7375abba0925bda415f8850534', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 16:41:37'),
('737f7e237f22ae84448bfbc04c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 02:55:14'),
('7388b3e3f66317ee60da38dbb6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:14:58'),
('738d8eb70798f5a1e1b552d9a6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 04:29:28'),
('739078d6258d2a20786d1535ce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-06 20:21:09'),
('7392547b4ba7bc2f945d31ad61', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-21 05:02:11'),
('739770b65668922a8a7663a19d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:34:33'),
('739eca109eb40ddc414d8a3c7e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:46:16'),
('73ba2b740d6b4d3e354543e386', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-07 17:39:36'),
('73c6af82712f336e7c8da17a77', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:16:45'),
('73de2eda47e0d942fb3efbd14f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 14:53:36'),
('73fa88bbf1a34998af78114083', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-15 03:36:18'),
('73fad8b54f70de03d98690f0cf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 08:35:54'),
('74087f22706a58f20e0172db6b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 01:44:41'),
('741c25fa88a0ac4fbf2241d758', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 11:52:47'),
('743e1d00a940fcdc075ba567dd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 01:55:05'),
('7443a74f201c7ecbb3f5ec365b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:56:49'),
('7458e246b424ac1929da1e0646', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 23:32:46'),
('7462e75aa4b48e4d8f3fbb11be', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 14:10:53'),
('747c1ab2c08489703d618082c8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 07:01:42'),
('748205630aea68031bc33af316', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-10 10:03:48'),
('74850e09535c80a295e943d8b8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-20 04:14:36'),
('74956b29f0fca8c1afb23d4337', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-03 00:15:47'),
('749c9372ca261ae6da2e433271', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 02:16:12'),
('74a1bc506eee83a68e3f3534c1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-15 03:28:23'),
('74afedbdc5601f3511811bee00', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:18:02'),
('74c4cee1e70cbd915be6d784e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 22:50:33'),
('74c5b705d6345e5835c8b51ec5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 10:17:12'),
('74cf186c85290e47e26781b78d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 11:10:36'),
('74dc5d705e4471d05840c42c13', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:30:08'),
('74e208c802014f68a8e6faf0e2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 17:47:08'),
('74fae73934df6299ebc5a07be5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:38:12'),
('750e979e5bc06dcdadaa1613cf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 00:56:41'),
('753dca9ee1b42e3dcd9d037334', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 07:42:25'),
('7542ea620f7956f22a5572efa1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 19:05:00'),
('754d1c05976af4e7675b548e33', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 16:48:05'),
('75549c1eae1411ca15bc1cbb55', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-26 03:49:20'),
('7555278deef596ed6304d22376', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:52:29'),
('756c9afe76cef461a871c602d1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:14:10'),
('75731e2d96f727c32311cae382', '{\"api_id\":\"1\"}', '2017-08-29 15:10:36'),
('7582103b32d7b1f82b3c72850f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 03:00:47'),
('758dec8abe624a0a7a35cacb8d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-04 17:09:13'),
('7592ed1d5a6bd00422a8dd0d7e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 02:38:35'),
('759aa81baa7ee65b417b55dcc2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:23:05'),
('759d586ac7553428c1e12577fe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 13:16:58'),
('75a4f84230a474d46fc3f0d59a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-26 15:50:21'),
('75b0eacb5b94660bda4115f43a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 13:36:07'),
('75b384e45c3a2d9531a66284b8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-01 16:51:09'),
('75babe426fc491da7bbc39ff91', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 07:16:02'),
('75bb1694ee0f188fec7e4c4310', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 23:41:44'),
('75d10b4cf393d6e4e188d5d039', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 01:47:16'),
('75eabc4c7975e9a4c9ca2fbde7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:09'),
('75ee6251c031b53a65ee3495b2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 18:58:32'),
('76057eb744b4a50ebee667412b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-23 07:59:06'),
('761add796db8c72b55f6aa535c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 12:49:28'),
('76265bb8c9e59fd34f6d34c2aa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 20:52:35'),
('762c6ef4322c5fcb54c77f416b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 12:56:57'),
('763c65b968a9337e89ab1df5c3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:30:56'),
('76471ad314aa6c5a9201882882', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 11:41:10'),
('76471d51ade628aed177016f59', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 23:57:51'),
('764985ed62243c211d58ffd584', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:49'),
('7649ecf5c2daa48555484fd6e5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 21:22:46'),
('7656d7c0e0b8b9bce7369bb86b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 02:22:32'),
('7669a114a860f4612d5974b473', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 05:36:47'),
('7684ad4761dfa754019df26a56', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-03 20:23:38'),
('76a627c5eade044caef0a9e1fc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:31:41'),
('76b29ccc6a70b03c8bc8014583', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 01:57:14'),
('76b91c93961fbd112237ab4f05', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-06 13:55:54'),
('76b932c0d9c7c06ac022bc3773', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 02:50:08'),
('76c5714a2290b939269503a358', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:09:49'),
('76d547d9430bc1dbd07d58ec10', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 23:39:03'),
('76d68d42ef4512abe703b7e9c3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-24 08:39:46'),
('76d8cb5b561610ce7801e9bb52', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 20:14:33'),
('76eb88bf01f79942042138434f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 09:12:14'),
('76ecd821a9dd834e7d23d5da4a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 14:32:44'),
('76f477bb045f60c5e5d11aa799', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-27 09:34:31'),
('7703d51c6b24042db5c344c59e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-19 23:03:43'),
('7711a4713dc37139b9a255c64c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 21:06:19'),
('771eceb3a8671e68fb777fd443', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 08:01:13'),
('772f144b700ecc04626917170a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 09:19:24'),
('7746e4a98bfc49df6d46716632', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 23:46:39'),
('775e1e627a82b4caa4e37cb23d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 07:46:23'),
('775f6b809c8005a0e92f85f8c4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 20:13:05'),
('77682eeeca19804a520afa27c8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-21 10:33:37'),
('776de64118278b245e8e7e795e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 17:03:45'),
('7770e152554d42222ad435616f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-11 08:50:13'),
('77752cddc5a9734020a0c50f93', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 20:43:10'),
('7785570b57d58d99d372c57aa7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:50:36'),
('77a11cbf617107bf6f96d7a2b3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 17:29:04'),
('77a19186ae2d6186008213b599', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-20 09:29:40'),
('77af917b7376767995aaa95b1e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:33:51'),
('77c0dbe88faf84672910998671', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-15 15:56:03'),
('77c7a7b019f097e75da82205f9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:19:48'),
('77e4340412f01f8a458b546f60', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 14:18:22'),
('77e63e238de3818e97327caa58', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 14:21:38'),
('77f284c0519bf13fdf3dd70662', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:59:30'),
('78047c633d8d0d5de6be2d24e4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-15 23:35:29'),
('782d32ac72952eb04934c9847b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 08:59:21'),
('783960d514a8192e41368ea391', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 16:44:04'),
('784e8044586bff52bb44a0a02c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-05 07:10:17'),
('78898754930b32b167bcfc85ad', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 07:43:58'),
('789216ecd719cc22b947b2c639', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 20:02:24'),
('789664874bf5174b2dd93c467c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 14:42:58'),
('789d75d7971ca1c00a670598dd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 22:13:33'),
('78bdddf31af65d06c99284457d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 12:35:27'),
('78c2bba63214faa4cc8aaa3e16', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:53:31'),
('78d19cfd3e061634be361fcc57', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 06:00:30'),
('79146bce8b47616d35869eb6e1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 08:57:14'),
('793597639f5117a0d15bcb6d50', '{\"user_id\":\"1\",\"user_token\":\"6DIX1ejBSC9vhXtLcmSiR9WtovhkP0oK\"}', '2017-08-16 15:45:48'),
('793b40ca8369a54d296415016e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-16 10:47:07'),
('793d17a4a33c0b0f6f2a06eb7c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-28 16:21:58'),
('794304a8a95c3c6704f09b6a68', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 06:37:02'),
('79555e794030ae0ca716dfa2fe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 22:48:50'),
('797d32655e75dbe5774c3125f5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 14:34:15'),
('7985b696755d58afb2a0717fd0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 00:58:31'),
('798d8f302b366f449201c47d76', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 00:15:11'),
('798dadc111d3390fd04d5e7ddd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 14:32:46'),
('799671ed456759396e1a6096d3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 06:14:27'),
('799b2abdd95e925f773f9af21a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 21:54:00'),
('799d879a33b015bd5da3f4c0d1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 21:58:25'),
('79a10ec318466cad2c2836e15b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-20 01:02:00'),
('79b6c00a298e58c1993e6fed04', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 12:50:48'),
('79df1bdffdf3eb6153fed5099f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 14:43:27'),
('79f83796ec1fbb226a4034bc2e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 20:07:27'),
('79f97b9f9178ab5111edaa6fe0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-30 16:45:31'),
('79fa771648200a8a67f38ef297', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 17:01:57'),
('7a03c31a30ab6952b48919b3b5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 14:31:37'),
('7a08f4ddd6f3ad596a91d82338', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 19:20:17'),
('7a09daec6d83c99f74c4433f42', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 16:12:18'),
('7a0bbed0626f608e7d52f9cfaf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 15:05:43'),
('7a11f66541b2ffca467a95b120', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-05 13:51:12'),
('7a22a49b70cb8315876580745c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-13 04:26:08'),
('7a2ec08881b8cfc83142f033ba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 03:15:17'),
('7a3528b3b3787b9bb21cec4293', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-05 07:51:37'),
('7a44a81c5be35660b35e983d15', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 04:14:51'),
('7a4ed76ed802063f0797d37886', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 22:20:45'),
('7a4fe2dd11b2a770eafb640094', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-05 04:45:24'),
('7a588a4a292d60639bd810ebcb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:17:43'),
('7a6ef70db55161e048d6a40611', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-20 05:50:59'),
('7a74d4e34108b365b27ebd4ca0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 23:26:23'),
('7a84363e2f7ac97da46c02f26a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 01:50:00'),
('7a8cec6ff4cce1a963059b2e9c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 07:45:05'),
('7a8ef089d9fea7728cf6279d29', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 19:32:12'),
('7aa175d0caca53ef105d2a1571', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 06:39:18'),
('7aa4e4b7fcae5e5eff73d8d4c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-30 18:15:27'),
('7aa62678d2275926e83e0b7c66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-07 15:29:41'),
('7ab84be09f5b2294f7cdb3e442', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 16:36:13'),
('7abecd79faf5b96136556ddc34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:12:07'),
('7ac060a35531dd23665a71ba64', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-22 10:31:53'),
('7acfcdf74843f9d9809f2d010b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 11:32:19'),
('7ad315fba53f6bcac79f37c712', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 06:50:23'),
('7ad69c90452ecbbf6122ded300', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 07:07:23'),
('7ade14e2f8dac84e84d808da7f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 05:59:11'),
('7ae32dd1d6e37c87d7a51cd324', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 03:44:33'),
('7b062ec6d8952b1731049f8463', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 04:10:14'),
('7b132d0e734609cdb2dcd65b5e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 23:32:15'),
('7b23f67eea28aefe13179a872c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 02:30:06'),
('7b49aa6188da49d3c5d9883c1b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 07:23:51'),
('7b4d9bc7354566830dba1675af', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 16:31:00'),
('7b51a4c5595242408c9bce078c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-05 14:52:30'),
('7b53d72dfb37d37cfda67c2d7e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:38:06'),
('7b69d1e230ca2d447042a017a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 19:54:45'),
('7b75f18f7ed98afff10365f7d5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 22:25:13'),
('7b77d26f0178cbe1a0d3e3a0ea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 04:16:52'),
('7b7c960841e74e2fc5be80f252', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 02:59:25'),
('7b7df156b64deeb05fdf603edc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-26 23:21:55'),
('7b7e45bdb384f904634b90c78b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 05:14:45'),
('7b7ebd5c27e0c258227f40d6bc', '{\"api_id\":\"1\"}', '2017-08-14 15:17:01'),
('7b8056e36e8eb31dd881dd5b86', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 05:05:50'),
('7b841de03131cd4cd2d31f4c09', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 12:56:37'),
('7b93d03e6944b0c201c858cea2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 07:55:39'),
('7ba7a366a8d37c50f4990e6f03', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 13:04:52'),
('7bcc464051e1c18fd4e8c36d22', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 19:09:27'),
('7bcc9c2c86b9f7d1de9c722a89', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 00:37:31'),
('7bd2935835bc53cc158f1dc616', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-20 10:13:01'),
('7bd4d5c3c91383dd2088b82887', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:53:20'),
('7bdd185eeb8301403b3b03104f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 10:34:44'),
('7bec54cbe3f7a39ad9163830f7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 15:13:07'),
('7c0b558bb2a8924922301ee364', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 09:52:41'),
('7c0d364c259b9cdce551e115c4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 06:06:33'),
('7c273e8c459b41ef91ab0fbb7d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 05:04:05'),
('7c284c5acdd58501b87b1220b4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:35:20'),
('7c2b98b1601ac9125eedb6d539', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 13:50:46'),
('7c4d30d15619927e7d69a6e90d', 'false', '2019-01-14 19:10:05'),
('7c7b8911b78c60cbf7c72c4f48', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 11:53:31'),
('7c85dfa87ff2e10194bf32c156', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-28 01:18:06'),
('7caede23279fa099c9d12b1392', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 11:41:24'),
('7ccd3d8997b33b9121e5c3b0ed', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 00:31:52'),
('7cdcfe2e3136fc7d3646818f13', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 08:40:35'),
('7cddce61f2b310303267323903', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 05:01:05'),
('7cde44313089880fa7fcc37125', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 21:26:15'),
('7cdf16eadf21df72791b388e4a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 17:24:55'),
('7cf0a02661ecc57b66bf5feab3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 14:51:15'),
('7cf444cbc620cb33486ab8d47f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 02:05:32'),
('7cfeaa51d8211b77fbdb90e271', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-07 14:36:46'),
('7d056b0143662fcb984db49bfb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:48:25'),
('7d116366e4324781eb3903c3a9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 12:49:54'),
('7d12a2011f24279bf47d5b1480', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 13:45:08'),
('7d2ad1343df3fda260530a9f1a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 07:36:34'),
('7d391b164d487776cd618ed085', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 18:10:43'),
('7d3ca061f0a331d4416eab21b4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-01 01:57:52'),
('7d434e2c59fa997560ccb8a3ea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:19:42'),
('7d6194f2227665f6330924b696', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 16:52:46'),
('7d6349d961029e0fa4c5a5b7ef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 01:02:36'),
('7d66fd45a4f9fa0fde70a100a9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 16:53:53'),
('7d68d050ee1dbc1aa6b55a3f27', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 11:38:19'),
('7d6aa376abc2a291cd3b9137ae', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 20:29:00'),
('7d72116d1d09b1486bbe57591f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:25:54'),
('7d7de3f9eff50140f735cf04de', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-21 05:56:53'),
('7d7fef8d2ce1718ffb8d53d8dc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 19:40:24'),
('7d82186adf9062f58ac1930332', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 19:42:13'),
('7d9b9f8b45a9c22ca582d58bdb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:12:49'),
('7db0480896f92a8de29f57442b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 00:14:11'),
('7db2c51ad2c1b429e4a4c0700d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 07:41:49'),
('7dbbb7623cc407c7028fdafefc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:35:04'),
('7dc3279625311594e0d788a851', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-13 21:13:04'),
('7dcbe65324197514c6d664975e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 12:05:30'),
('7dd38a7d3794401d1d6dab86ef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:08:42'),
('7ddfeabac4f6681422b355a3d1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-07 13:34:04'),
('7de6148482434cf231bdacf922', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 15:23:21'),
('7df5575284d157ab181f02a0eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:05:33'),
('7df74add3975dfdf0cf5b0f71f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 23:52:50'),
('7e146c25cf9c042af483173acf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 06:22:24'),
('7e50c003d52ebc8841a742321a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 17:24:28'),
('7e5228dabacce620e5cc26be93', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:31:17'),
('7e5f06dde55e0a3b4434878589', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-10 18:21:13'),
('7e643c06b0b76e5ed0659a0d23', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-23 12:29:19'),
('7e6db18f8b14154b73c6f9e65a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:11:54'),
('7e851c8642c670970e57878958', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 06:45:20'),
('7e8cf1b67ec1ccda02f0d8f669', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-10 11:52:15'),
('7ead63230f20487846d43ac6b7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-23 22:46:03'),
('7ebe528710038d16258f62b09d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:36:33'),
('7ef0d2363d467e278ffd96c556', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/address\"}', '2019-01-01 17:29:20'),
('7ef6b20a5782c5730ee89047fb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:45:51'),
('7f0150132da7ddff385fb76987', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 11:18:30'),
('7f055e51b05049402be6d544ef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 01:22:22'),
('7f07dfdc7f61b03b13bcfe0ad5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-13 00:17:49'),
('7f09bcc6a737622ec8bd490433', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 13:30:05'),
('7f1dc7d71020bf7286386ab879', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-31 16:24:39'),
('7f24107c9f7a3447234639695b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 05:14:57'),
('7f350ecc6bc2cd8d6d3d5bdb5d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-29 02:07:00'),
('7f37d420ca5ad6087a7949fdfb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 20:59:36'),
('7f4378652f740e9c117ffc9634', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 18:09:44'),
('7f5fc4d02409c6eca806457f91', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:30:13'),
('7f6d2f995f3ccbdb886a4fd3ed', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:49:44'),
('7faf1910df0f8176d8c6dd3692', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-21 03:18:40'),
('7fb2465a76bffc8407fc1779f4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 11:33:41'),
('7fd0797c79637cb15a69421375', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 20:08:35'),
('8007fcb94226b013a4dcfa7216', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:36:01'),
('8014e3af1e372a955f96db533f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 19:21:04'),
('8030380dcb21e447982a89a9c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-26 15:30:58'),
('80374b6e0d5969ab8cbc83c0ac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-29 08:01:30'),
('80380409b91ccfd82a835770c4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 05:48:19'),
('804569372dde251b05272dea53', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-02 04:21:22'),
('80514760fb09d0c3a61e89e2a6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 10:05:43'),
('8053a0916f3c140392f68708ac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 06:58:57'),
('80557e23126520ba1f3f4f157e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 22:49:51'),
('805cf5340dd62327a01ce19046', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 01:16:56'),
('80767bb37d2d83036aaa8df814', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-05 13:51:15'),
('80bb03e0e0af6ea91ae75ac447', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 06:55:10'),
('80da4f8c8646308b1abc69ff5c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 17:50:15'),
('80e23620a7e5f4a04699256a44', '{\"user_id\":\"1\",\"user_token\":\"mu860FA7oTsHph7lHROz9QZp77QOv0S5\",\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2017-08-29 16:50:30'),
('80e50d0dee8b0c863826b9d9b4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 12:33:15'),
('81057ed01202f53d3cc2d4971a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-24 17:35:45'),
('8106ec3eec52ff8c5c63ee8ad5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 10:54:56'),
('810987ad4b84dda323ff1bdfa4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 19:55:43'),
('813bf1a5f00fcddfd1f00c5341', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-06 03:46:59'),
('8141b3b21ff0ca9924f4a092c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-26 03:31:12'),
('81627b11f9a3e7893bc97eaa4f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 13:41:45'),
('816724d97862549bffa58e2500', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 08:44:43'),
('816d6d78c804e4d49f9a685cd7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-02 18:34:33'),
('8173dd5839bbe4f7c179cba6a5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:59:31'),
('81749771563e47e5d2f76a8b5e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 07:43:48'),
('8183908170f214f65b39351dc2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 15:15:46'),
('8196a8481c7ec1386f3317481c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-04 17:04:03'),
('81a54aa862e11f29109382363c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:12:03'),
('81aea910f29384da1f8afbbce0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 08:46:18'),
('81d6cd42a65865bd22fc93df1c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-09 17:46:33'),
('81e83f4226e0287e098d3516de', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 01:55:04'),
('81f640d7d6ce89c05736c344d3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 16:28:10'),
('8217d778d707450146d2aad387', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:43:10'),
('821b7e813f30df8ea673f1d685', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-05 14:52:58'),
('8234913bc04f5c25ea34df0300', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-07 22:36:36'),
('82564f84efd954620056533955', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-07 23:03:12'),
('8274079545db9d156e55bd969d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 00:11:03'),
('828148e81eda1d6e9c65f51999', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-30 04:05:20'),
('828ffd799e9757f9f6063ff3d6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 05:54:41'),
('8297976b8cb9a817646838b26b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-08 22:13:47'),
('82a7cfbfbb8e4e4dac5963a8b0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 04:30:45'),
('82a91fafda8220becb90e6f253', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 07:46:17'),
('82af07039e57fccaa3c21b31b3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 09:40:02'),
('82bdeea992c1f5471f829d218d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-27 06:37:28'),
('82c6d521c8cf7ea1277832a166', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 12:53:28'),
('82cc78a9c3368f9de5539731fa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-31 10:17:17'),
('82d5c98ee6aa892470e14d8226', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-09 17:53:34'),
('82e8534fd3330a30d5f574f6be', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 04:32:40'),
('82fd2b4bd8d28dcfb1887d7618', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 16:29:07'),
('8303a41874d98388e89f78dd00', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 15:11:01'),
('8304ba8823b88cdaa993b19817', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-10 19:21:52'),
('830bc7f1c19ca62746881ae293', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 09:58:08'),
('834f2e96d4945d8f0210c6f595', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 05:00:18'),
('835d2f9e0e2f501f972f137352', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 10:39:14'),
('836c35b6aaf0f1b2f054978ff9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:26:25'),
('836e87a53b974dc7c1dde8cbc8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 11:48:21'),
('83736be6cfb1b3d80ceee0b4ca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-23 09:29:38'),
('839f48c4314664c780fb1e39bf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 10:11:01'),
('83b49d425074412bc510ca564f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 17:12:34'),
('83b4d1a3d9763ca8b977a7d5a6', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"user_id\":\"1\",\"user_token\":\"J93xCDGTW4WqXcoVuet7IyWA454iWPDl\"}', '2018-10-03 17:11:23'),
('83bdbd15b7eb84491be2cce0c4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 04:47:03'),
('83be8af271731e4f9b38a9ebda', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 01:20:51'),
('83c174d4f9dd3361d448770340', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 01:25:38'),
('83c4878dda54aaa2ee8d203021', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 07:06:15'),
('83f11c7819d4354f64723f7bd2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 04:20:17'),
('83f7b2545e5d73b245da236b9e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 05:01:07'),
('8403f028d9a4c69169ca8431ad', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-09 19:58:27'),
('84111d7b1dd1b12a97f454640c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:10:16'),
('84184dca6c91b223092585a953', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 15:54:20'),
('841f5f970598cd95753d2776f8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 07:40:53'),
('8422cda08f671d26299dfd3b20', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-20 10:16:52'),
('8433a9847d5b7ac4396f308b61', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 19:41:39'),
('845980d78c24a01dd491f157a3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 16:16:41'),
('846e89caa47aa0766ac161617b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 07:33:20'),
('847686b4f02051805d8f0798b4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-02 06:14:10'),
('84802d1949540ecbfa703a7785', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-15 14:30:12'),
('84853d2f82907519cc7a03b47c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 08:15:38'),
('848fe1b71180998e10820260c8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-11 20:37:06'),
('84923aee77b308d09ce316e416', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 18:43:03'),
('84abca03d604472a369e975605', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-09 15:06:10'),
('84c798450f22953970e945289b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 15:17:05'),
('84f638525ce2fe7ecd2fdef12b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 10:12:43'),
('850865c8825fac0ee5b75b6e54', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-21 04:46:58'),
('85197babae5dbdd0dcab8bbc38', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 03:23:54'),
('852d03f1be94108d986a2c77d4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 22:16:26'),
('85417d89d907386373074f1ade', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 18:15:47'),
('855539a09ae8e028f1bdcd6ec6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 12:21:01'),
('858e3d39551aeb64115eb63d54', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 19:59:30'),
('85ab409dff480955fd8926497b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 06:03:05'),
('85acc968ec6b8f387d91a8f68d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 08:54:47'),
('85b28d10a9af2a7e0040758e1d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 05:46:18'),
('85c9f577a12de6ae9e7cab3477', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 16:06:10'),
('85ccbd83a8ebec5e411b04de1f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 21:25:44'),
('85d1d9b6af1ecb97971a3a9357', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-26 08:31:33'),
('85d309390b3c2c3832796ec6fd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 15:57:08'),
('85d3dc0857b9981f438b857937', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:57:51'),
('85e9694dc5cb92210dacfeecb7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 11:51:43'),
('85eb20b9d961f6670d34df2402', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 18:08:52'),
('85f74ed71ebd7e6e9d023502db', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 09:05:28'),
('861f60a10c1bb43c726400f8ad', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 06:00:01'),
('8643fe2b77ad4180ce37b0c774', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 11:39:35'),
('865233e319f9e6ca9bbde98f34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-27 10:57:35'),
('8655eaea8429b6acc8c9b6803c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-12 21:51:02'),
('865e708fe7f55fed457ad487cd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-04 06:08:54'),
('8660ac821940ee95ce94a6806b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 09:05:41'),
('86829e0db8c3149c7ddac5ba69', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-19 13:44:35'),
('868806fb1421b2f622d2710c68', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 22:30:29'),
('86a0e5dc7daf920462ce98fdaa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 12:47:08'),
('86c3e4e196fc5da203f4c99fd9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 22:02:44'),
('86cd706bf0f038d39a7f7b097a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 23:58:50'),
('86d1b68d35286c6412eea2cbf3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 05:06:57'),
('86e0c072f119b4a9fb9d7c5813', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 00:58:44'),
('86ee8565201cc1e7f184a4a5c6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 06:41:10'),
('86f78e19faeba2ea38d08be3b1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-06 04:31:21'),
('86fa92a2c8787f77639ba14895', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 22:21:48'),
('86fbdc3805e210b40b690b5214', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 13:01:52'),
('86fef9075b87d88e5c468ff5f7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:53:32'),
('8701398fe315e4c531f566e252', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-10 18:27:22'),
('870c9e09a25fcdadcde8ac9d35', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 04:11:54'),
('8716a8a08e038833ccbd81e18c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 18:05:47'),
('8716cbefdfeb08e3cb144fcb9a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 06:11:36'),
('87218c745367cd202742c7c53e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-22 07:28:34'),
('875e29435aca4f1410fed7dae2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:43:50'),
('87b84883e817c395f5f58c8a4e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-06 16:00:49'),
('87b8bedd80c77130b1ed1e3ddb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 09:48:13'),
('87ba1e2b0ab74b53b48b33b536', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-07 18:24:18'),
('87bbfba9ef2b2969c0cdbafa21', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 04:59:22'),
('87c6b451da566bd944a7fdf451', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 10:48:04'),
('87d72e6f176217089393c0f1b9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 10:19:03'),
('87de0d2fc3b01beb9fb04b643a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 02:09:27'),
('87de81c2241d7da51004bff984', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:30:54'),
('87edfd064770b5fe0b173cc839', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-14 16:43:44'),
('87ef92a0d0d9f9b65eae004d3b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:30:40');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('87f1a8e8c03c0bc2297bc4ff3b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 18:31:43'),
('87ffbbba5a3958a2774c8bc927', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:57:43'),
('88042fbb376814764f77344326', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 21:51:58'),
('881ffbf81933b0624ec838e516', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 06:07:45'),
('88232f8935f724c861fd05871c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 05:00:49'),
('882fed1ecec1dc8c6954f60cbe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 02:43:03'),
('8836dd25d36262c81276ebfcbb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-23 00:29:23'),
('883b6f8ccc32cb0a41b11880ea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-12 11:05:27'),
('88489c218ff759c3c9f66db4e9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 02:17:20'),
('8865ab198a3857255359dcd46b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 23:28:04'),
('886fb8ab05660f7b27aa03b894', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 14:59:39'),
('88704af83b0e06ca6378817885', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 12:34:54'),
('88773bd11066846fd38ba3d3cc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:12:08'),
('88798923a549684fa733d664a6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 04:13:31'),
('887a6cb3669a3f95d36bc03356', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:41:40'),
('888d81c347bd35de932c30d9fc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-22 02:27:56'),
('8890734d710c7e00270bf8d889', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-31 22:25:19'),
('8893e2d7d7a8c6d3045538909c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-06 04:53:56'),
('889431a5a593cce4397bbb45ac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-01 06:15:20'),
('88acdcbc29b24b8f5483044573', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 04:46:56'),
('88b3a7facf85942073e3eae0b3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 13:42:41'),
('88b948aac48e4d3f77e6d2be8b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 14:08:14'),
('88d2c021c8644572b94b8ccb86', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 20:59:29'),
('88d3b4c917bce9bc9cfa575abf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 05:22:40'),
('88f34a53954a6c4b10614ad4c8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-25 00:50:56'),
('88fd0e35c7177d37d693adbe93', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:17:01'),
('89046b471ca1876c6de81f6877', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-08 22:12:52'),
('8909b465f8c89994a9106ae811', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 18:17:42'),
('892d9023d2de395f1fd159c867', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 20:19:00'),
('893c48e6e81f785ac7854c3e47', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 03:53:24'),
('893f2f84d15312499b5fa75bfe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-11 16:26:03'),
('89420b2979240b3f46b3523248', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:27:04'),
('8945b0fcdaab4ea266f3c8ab32', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-08 08:00:37'),
('8946e3f5933d00ed9f9087313a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 21:21:55'),
('894a7cd4d6635435e51eeb305c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 18:53:39'),
('8953f307cd1963c42ceb887635', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 15:13:53'),
('89623b7c38b29f9d5da14f84ab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-31 12:38:00'),
('8965e506b7a51a76c3ded4dd9d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 19:18:38'),
('8987ec12217c1dd4911d1eca8c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 13:19:12'),
('8990d523dce9954f1ccf0006ef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 13:28:04'),
('899f3bf3e9df53223d95cd1119', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 22:58:34'),
('899fdac6b0bc65e56e58875b70', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 18:27:16'),
('89b3e8493efa81d21bddc45d05', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 04:58:16'),
('89bf930e62ded51459f1e7ed9c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:00:52'),
('89c210b8e5d82d48f5ee083a00', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 00:46:33'),
('89e3b372925d7f89338f8db540', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 23:43:52'),
('89ee6e5a4c86b8ac9f3c7ce465', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-25 17:27:34'),
('8a04eb7c0b9bcbd5dfeb63f2bb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-16 08:41:38'),
('8a18b1583ab480bb3c9b87a351', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-31 04:43:44'),
('8a3f44b21fe1106342a68bf3d9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-13 08:17:50'),
('8a4d0c3b6a63a57e7fbce6caf8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-25 04:28:19'),
('8a5597ee21ebff4afef0b7e20c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 15:38:35'),
('8a836c00e96a98fc5c33c727ec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-13 16:29:29'),
('8a9beea8d4c6d40c97c7b4817a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-28 01:57:23'),
('8aa8968067870e441d88b94fd1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:17:21'),
('8aa8afcb745919409eafa9d2b3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:24:44'),
('8ab141de4ed41fc556b8b7a259', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 04:20:54'),
('8ad3a00dbf9b7a70d1bde03d5c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:14:09'),
('8af189de959ba9d18786756116', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-03 00:39:36'),
('8b0be9b419638768fe1cf5ec24', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:29:07'),
('8b0f108c1d8db3936db98edf04', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 17:29:42'),
('8b29ddd40dc30361e060cc2464', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 18:11:24'),
('8b2fe7a10f4c5fc8939590f72c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-18 03:19:18'),
('8b37734f20af71e884dc5ca389', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 05:46:22'),
('8b37a9180b3192a801c7f77203', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 19:48:34'),
('8b3eb9cbd00bbb62caf33cb193', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-09 15:57:18'),
('8b44db9747b6155e35169bf230', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:22:19'),
('8b60096cae65616de1270379ea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:46:15'),
('8b6c05b76e7e070a3b2b70f7e1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 23:44:36'),
('8b6e59f27370682b9a9e56ab44', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-13 03:14:41'),
('8b73d43411d4a1906fbc479ae0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:52:54'),
('8b7a65b35cc0c6a6b4f6023af3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-08 15:24:08'),
('8b82502e197901f9ad6878d2c3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:35:50'),
('8ba5c1e287415504a37f6f5107', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 17:02:22'),
('8bacb900bf5127080747e38fd5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:18:14'),
('8bb52e7c027f91c3cd72f54f71', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:49:04'),
('8bc6c9bbdb994f34beb626e19b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-16 14:03:20'),
('8bf295929581776ab6d73a6b39', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-12 06:56:53'),
('8bf39c3b810351108e18957e64', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-12 05:42:06'),
('8c044bd34295fb9f3e207133d0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-08 16:01:01'),
('8c06c8e9fd7e32b54f43ea9fd4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 16:51:56'),
('8c06db98a2dc05ffe592d75857', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 23:35:54'),
('8c0dfaf6250751962b72ac24e0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-22 16:28:23'),
('8c1d186a52011ed2353ce11a04', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 06:53:53'),
('8c588303b8c84cff122d8a508a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:01:10'),
('8c5ad7b3b755f6a81215440a0c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 19:13:54'),
('8c5c8f029de94486eec8800dc3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:36:44'),
('8c5e10302fcd3dfdaee680de40', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-01 11:43:52'),
('8c6efdf94e95871f3608c348c1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-22 06:54:55'),
('8ccb7c8f28f5faccac78d21f6a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 23:10:14'),
('8cd5cdacd7e92722683d6c9d36', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-22 20:04:13'),
('8cdd74f50c22e4d34173003a25', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 19:37:29'),
('8ce41a313d8e962f0695290946', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 11:05:33'),
('8cebb45f44794679dd3f45dd74', '{\"language\":\"vi-vn\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"MPeR9CiGl4YB6BR5u4Zopip8hJrcPCZn\"}', '2017-08-14 16:10:08'),
('8cf5667f9cc7b8f9e1273a1fee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 15:13:48'),
('8cf5eb6d94ce67c5c9860e8f04', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 02:39:46'),
('8cfa7f484e79e556aef11b0b4b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-19 17:12:27'),
('8d02ff538e2a237d1e5b2b1c16', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-01 23:06:32'),
('8d20869d0b392d1841772f7244', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:51:59'),
('8d3191450c120fdbccf605b9b2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-09 03:59:11'),
('8d4e3b5e65562a25ad69ab5c73', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 17:56:52'),
('8d51ecafdf4d06a1ac2ea17921', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 02:37:37'),
('8d77c23521e25daf44bc7743ca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 04:22:01'),
('8d784128f5d6e7bfa31839fcc9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:34:13'),
('8d7d47f900995ec4870afb83d1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 12:04:42'),
('8da6bc761625ce6052e8211e90', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 17:45:26'),
('8dc0fe1a45c1fac7ab943f54d7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:38:08'),
('8dc228de5bdfaacce5d5f4d709', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 14:30:07'),
('8dcdd20a255545ad742c4cf7f1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 00:07:44'),
('8df926e4ac1f9beb0e3eef53a5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:44:03'),
('8e04a1174c41c58b21279a6aa2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:54:25'),
('8e0a7db717a87eaf2761ab1308', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 20:51:46'),
('8e20258afa082f0240750efb80', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 05:12:37'),
('8e305b8e13444370fbdc01182b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 14:55:43'),
('8e3b1c00d8209f180f7460aeb1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 20:35:46'),
('8e429dcfa58052a0b68c638827', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-20 10:34:54'),
('8e5514657d851cd9337799fe92', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 09:24:16'),
('8e946f1ef9e60bceb1bb981c7a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:39:14'),
('8e98a97b6d50327a4ab40aff81', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 01:21:34'),
('8eb36bbcffddde496f700058ea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-22 08:14:34'),
('8efe159193e20f879190d1b4ca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 21:54:19'),
('8eff9fe52060dc53208a670a87', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:53:33'),
('8f1cd6713e9dd69f48bcc69352', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-24 09:15:19'),
('8f2e3317022195ce3a0afb296d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-07 14:56:17'),
('8f4ff9ad1641438173ffc5feec', 'false', '2019-01-14 19:10:03'),
('8f5c9f2966735757a286cfbb2d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 06:20:46'),
('8f786475243f2e2d7ed04a56c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 15:58:30'),
('8f9241b38d41b5a633babfc861', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 00:40:32'),
('8f96045813e142945136fe2987', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:27:04'),
('8fa496ed86c7c2492343e33f2a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 05:24:49'),
('8fb8e0150d1d8f197c45593531', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:28:41'),
('8fcc584ea95086b9eb677a45e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-02 11:30:54'),
('900ccc194e836309daa799bfbd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:13:00'),
('90139df5e42fe59532ef9a5298', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 07:10:04'),
('9028fed48f6093facd31b49e88', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 23:16:41'),
('904afc823296be2e685f678993', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-27 06:37:26'),
('904f6014aa6791131e5cf4d550', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 10:20:00'),
('9051643f1da2ff0b212ca01473', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:02:50'),
('905aaaeb5d192f8a0e0da37673', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 17:03:04'),
('9062b0d096f60921321c7f077a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 01:04:43'),
('908c93f52e81ed68c89ea6f235', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 01:05:45'),
('9091383240ccabda7efcca9d8f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 18:05:28'),
('90a09c3d0bca916fc1fe99709c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 12:27:59'),
('90a3326d1e95a2bdae39ce4389', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 12:33:12'),
('90a4340b63c8de7125209037c7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-09 22:48:53'),
('90a5e7adabf526b6530e6794f8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 15:16:55'),
('90b95ff27149873b6991892fe5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 02:57:24'),
('90c7730e231634f11a0058870b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 07:44:33'),
('90cafa9586b95bbb50d8984dd8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-08 05:26:11'),
('90d148e22f29bba941691f46cb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 00:59:51'),
('90d9ea14209c5691b2c9bce8a3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 14:07:53'),
('90dd775b426579f4cb46672be6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 22:13:38'),
('90f7b474c0242eb4dbafb29c39', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/edit\"}', '2019-04-04 05:13:02'),
('90fd81ae3bc534a0a78f96f0a1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 23:49:15'),
('90fe1554679941c5b7633535a0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-09 06:32:08'),
('90fe5ca28c842c8fcf6ba4e7ce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 22:33:31'),
('910c0752907590f06199d8834e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 14:51:08'),
('910d301de2cc3b5026797120eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 15:08:27'),
('9110bf73d476e215b50ed2a539', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 01:02:17'),
('911ac34dfd1b420bf5f0d53f3e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:10:46'),
('912ecad6c1eb5311e7f51ad047', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-26 08:47:09'),
('9140cadf864f0606eb92ee4296', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 15:43:59'),
('915af5035c0cb95018b5a93b8d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:13:42'),
('915f41711d7e39f4de422c31be', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-21 11:33:35'),
('916c07c62e212ccda3cb1d3c56', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-21 01:16:43'),
('916cf3a548f0cce6998c26b41f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 12:22:49'),
('916facc498b778068cec8d667b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 09:11:53'),
('9181a7f75f755e742313e9b6d3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:40:48'),
('918709807db2fc9425bc072bb5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:27:05'),
('91b566110ba9c8571f31713bc0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 20:33:39'),
('91d791ed9cd0612b19b7ee3a30', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 01:20:49'),
('91db331ff5453df352facd09b8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-13 00:06:05'),
('91e1b4db8e7301b1a85307e166', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:40:08'),
('91e910fbf81482b8b586e45c27', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 09:55:09'),
('91ec297d9d382f65421e49e66a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 12:02:00'),
('91fc9fa3048be0491ed982857c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 11:34:59'),
('9205c7209f44aafa2c8e705199', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:58:46'),
('9209786840a3c15926b1544aab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 07:53:49'),
('921c296be3d5039a03fb6d4e91', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-06 05:22:09'),
('921d867072284a5b087d9d4a03', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 08:42:31'),
('923591a78cc0bb060de001e451', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 07:36:44'),
('9236b0d0afa74928fbd269acd3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 12:59:26'),
('923863aabc66dfd148bedec3f1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 08:26:31'),
('924c3b69c1b2ce54bcaf8b02ac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 17:49:57'),
('924ccb8bd1e8690c349d261c83', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 15:05:35'),
('925ee82196eb8b5609f725f24d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 00:21:41'),
('92662302bde55276adb63907b1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-21 21:01:13'),
('9273698ed1c5136c4b1163c2ba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 12:49:42'),
('9285fbab09ee74fb35f9d3fe49', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:15:11'),
('92b8b8fdd741f44f9aff3aad8d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-04 15:56:37'),
('92cb437872c803e490ca6cf4c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-13 11:31:59'),
('92ccc7a5323db69f2774d535f3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:14:32'),
('92d27452f9bfacb71406c940b8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 17:21:24'),
('92e63aa29b5e0b5911346355c6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 17:52:17'),
('92fadece85078bc92fa6d5a5bd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 23:37:30'),
('9302144d18b3dbe3a5d1510d2f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 05:00:50'),
('9308f2eae2c0bca55112d2832e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 17:13:41'),
('930b47f702a82513f178f7abc2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:53:50'),
('930c7c16768c6bf254912f2fa9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 12:40:52'),
('930fe9bfa7712184e403bb14f6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 06:11:13'),
('931b0b8343a56825cd9654f9c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 21:36:31'),
('931ceefdbff1f12984d31ec268', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-14 21:53:08'),
('932ee26e8e7a4f452cf35de122', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 11:50:39'),
('9340947e5ac26508432ed34ce3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 19:04:36'),
('934e565f1ce82d4c640c60b20c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 17:27:39'),
('9353a576b70e0530d0ed08479f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 02:17:21'),
('935e614dbdacd4be2611f7e0db', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 08:27:43'),
('935f97569daccb5aedcabb8cd7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-20 17:41:02'),
('9368f10934e6f49686d75a8cc0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-21 03:51:57'),
('939a07db17baa1b889a0e0891c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-24 16:47:19'),
('93b47d18edf4dfde7ac20e8a7c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-11 22:18:49'),
('93bdf826fdff277b32cbaff14d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-31 02:49:31'),
('93c0dc3095fedd5763eb87920a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:51:48'),
('93c338d88bba35344cc1bc63e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-14 16:52:01'),
('93c809a0290e515d91f2bcd85d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-09 08:03:35'),
('93d337c3966cbc568c6f0e13ee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 11:09:37'),
('93fb48f3a878a7cdb0267d6218', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:35:21'),
('93fd1fa5a7d1ba9f23b38ebe5b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 08:08:40'),
('941f8a0f9a2b19a1e6871902a5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 19:07:18'),
('942bd5b7aad4a5014d56506a06', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 18:26:07'),
('942ca7326403650f25e8a71d70', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 10:26:40'),
('94337ed882f4ee7fef6af55203', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 07:51:07'),
('94425d676f00c0a25d185b152d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 20:32:31'),
('9468b62291ec508afb15cabb91', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 12:51:32'),
('946a9dcdc0fdc84d2e7625b17c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-20 09:21:09'),
('946cb90a692e92e297863cc6e2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:12:53'),
('948dedd1252526529c89eac086', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 23:18:25'),
('949c44bd2662fb853b7a3e9531', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-07 17:43:34'),
('949f34bda8607969c21a3f37ba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-16 11:31:06'),
('94a89f5113f299c02ae1e719c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 13:36:07'),
('94a8b0e24b4c750615d350cebe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-13 05:50:20'),
('94ad76153bdf4d13f8e292a6a6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-08 23:45:49'),
('94add0561f1478b5208a273568', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 22:06:30'),
('94af35919db99cc57070e762e2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-13 06:13:46'),
('94af614f3ef6e8cfdc9d967ef3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 20:20:39'),
('94b268c02a7e62beb169c30f0a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 01:24:48'),
('94b2ca4d566b05691f64e72457', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-10 18:37:45'),
('94d14c23c68c14bc27c461c1b2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:06:53'),
('94e073919ffc242c8a6a1a4ae5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-16 12:20:15'),
('94f59235d6d85e059c52b66fb7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 10:31:13'),
('94fb0efc637cf965cfcc5be800', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 23:38:40'),
('95020b2783513638aa62dd9e28', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-08 12:55:25'),
('95045e7a9198fa0195b02c1f09', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 15:14:35'),
('950d4b38067fd7ef0c58c4bf01', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 02:46:05'),
('952058f78d334f03c982d82f46', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 00:17:54'),
('9523768b7efdb2ea455a9d50e1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 06:46:33'),
('955969162561d05cf0632c42a2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 08:23:14'),
('955b7de4e4966a651f42eef124', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 20:29:54'),
('955cf11c8aada00779c0530428', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 01:36:53'),
('959a0362057c502106718bde33', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 15:03:50'),
('959ae4274198a727bb2ae9b7a9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-24 13:46:06'),
('95bcfffc1623aa2ad58722340a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 20:46:29'),
('95c7f3f4e6c331c40963b4e6b8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 23:23:03'),
('95da06ff59a3171959a85df873', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 13:20:03'),
('95dc81e8f16def01fce3de9f66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-21 13:28:01'),
('95e366edba9ef4eca1d712bfdb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-24 12:10:30'),
('95e918ec0d1eee01473720fbfa', 'false', '2019-01-23 06:47:11'),
('95ee13ded91caccfb7aa94918f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-30 09:42:16'),
('95efd6c1c302fc3a5eb6915a4e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 23:09:35'),
('95fb9da77e5cb23d64e1765368', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 12:21:34'),
('9603ffab4768c4ab18c3970fb1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 00:43:33'),
('963db8cedb5f04d24af0920070', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-05 11:47:13'),
('964327d46fcf526acce37f7618', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 07:09:07'),
('966d4397571921bef2c01818f4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-12 05:16:38'),
('96774f77184ec41b249f2b2b45', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-06 14:57:02'),
('968d17146eeb1c98c2b9178805', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 01:42:16'),
('968d3d2bbee6b8e9e8e15c6b5d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 23:35:52'),
('969f4cf538c4cf6bcc7b81dd51', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 03:32:27'),
('96a44249be6e50277b03bdfc6b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 14:23:50'),
('96cac14429b24ca5a7050bb62b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 05:18:26'),
('96d862d13ce53de214f651f253', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-04 05:08:10'),
('96e4498fd247d0a59a15c08cd8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 22:41:37'),
('96f280e3616aa981e1fc65aee7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 11:46:39'),
('96fe15213503bb9c30f1826b96', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-08 07:23:20'),
('9700e220cb9421c48ada46749c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-13 18:32:42'),
('9705db0933d4f687a53d5e0c89', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 07:18:25'),
('970d8339dfc90aa64245796621', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-03 02:07:45'),
('9717d8cdc96903a999232dfa43', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 18:04:51'),
('9727d795ca729306ea821b1b65', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 03:42:08'),
('975d9c906e9c145579459ef8ea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 05:49:13'),
('977b429163e61e14ef0c5668ec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 17:29:48'),
('9789f5d153d4bf4e16b72d193a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-31 16:48:17'),
('97930150e6d097643373cb80ba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 14:24:24'),
('97987958bbaa382a1942093810', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 04:01:41'),
('97b0fbfdffd31861dbdcccf916', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:05:38'),
('97b62476325f653d01c9ce2f8f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 02:31:31'),
('97c8720b9580be36f2e4ca44e9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-31 12:34:05'),
('97c8d7eba923cedef3cd3addb1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 10:17:09'),
('97cff34fba4d7a6e1e5727e1b0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 09:57:32'),
('97d009ba050ad58e77bf52b5be', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:27:11'),
('97d5f796a029db91f0261cdc11', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-18 10:35:25'),
('97d8070bb2d39d3d0d72073930', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 03:48:12'),
('97e56b3e14a73ca51aba8b5067', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 01:03:43'),
('9827c6faa73f133f27e90d5f55', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 19:11:54'),
('982ae1c1cf4ac8df32f4d571ac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 22:38:40'),
('982e5cbe5c92e8ce1c77618c76', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-18 03:19:27'),
('9843a140d1d6a4f5c6900fc3eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-19 17:27:56'),
('98519ed7a6cff5dd541f5818dd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 02:19:19'),
('98658d1e412c729fd30b5c6d76', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-07 14:20:26'),
('987bde78e5e68adcbe989418bc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-12 19:01:29'),
('988e1aebf49320d200ebab1e52', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:26:54'),
('9893616756134630c62c7ab1c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 04:16:43'),
('989740ccd8efb729d8844ab299', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 10:11:10'),
('98a10ed753eed872f196ecebc5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:23:51'),
('98b2e3fb250707dd374714e7d9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-15 12:36:38'),
('98ccf6304d21050c8c01abe2a6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 15:59:43'),
('98f5b74cf68637c39536a12842', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 19:38:23'),
('9911b8b7d0ecfaf68abf6d4e77', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 02:56:11'),
('9915e5376d964f2908866cce5c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-30 17:55:16'),
('994562a77d4389aed447a9f4eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 00:54:28'),
('9949feee51902471ca5ef25b9b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-24 12:26:01'),
('994d4a87aa5c7d8dc9e03bd523', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:12:11'),
('9951df1d63e6545438cbf8a25c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-08 22:12:45'),
('995ff0f57469ffe25f3c12530f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-29 15:11:25'),
('99677abfec2c549feb4758f591', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 06:03:12'),
('99721efa00d85066ad36d8ec42', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\"}', '2019-04-04 05:12:25'),
('9993081f66d01ca87b793a2e47', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 03:35:19'),
('999f318f2b01174d3d62c96777', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-31 07:16:32'),
('99a15b557280682cf9e4b8bb49', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 06:40:07'),
('99a4dae962c93bd6284009f10c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-30 16:46:45'),
('99ada8bff94090fcbc196128bb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 17:34:09'),
('99aea21bda875116199beb4fcc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 23:44:44'),
('99cec08e35747a5f5a093a29ba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 10:22:13'),
('99d4e9658062cc3b3b1802a6df', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-08 04:18:04'),
('99d95eebdff43f85761c07c516', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:06:05'),
('99f661722acd393aa4db94df32', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-21 01:32:06'),
('9a0a7d5ff5b4c13668b6c1533b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-18 13:48:26'),
('9a1a3ea050fceae0ef28181e88', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 12:26:35'),
('9a3c5e42334a7b3c1dad29867d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:38:23'),
('9a48c36ba0efc7969c883451b6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-28 03:03:42'),
('9a4d07d3660d12a8fea7be61cf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-23 20:51:07'),
('9a577ffcea853848435e72ad68', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 14:20:27'),
('9a6829313c8c158d6653b0738d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 13:27:13'),
('9a6fa09c884ba8d14698bf9675', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-25 09:59:38'),
('9a77eface6c66e5a112694b19e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:40:35'),
('9a95158405f519fc14f8148454', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 05:32:37'),
('9a9ec7289a861156d8dfaa5dbb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-20 10:16:58'),
('9a9eeca82a196908f689ea0370', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 02:40:10'),
('9aa51bf5cc4017664f3666b6f5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 21:22:18'),
('9ad97666093b3c8a8d683b5ec7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 23:21:31'),
('9adbea0c8b7ca4f9751d85188e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 11:25:04'),
('9adfd551091ab02a32f597814d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 18:53:49'),
('9ae639e5b684a04218f9065aff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-01 16:06:57'),
('9b03b9d6fe4262ca41ce0d4394', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-08 08:00:16'),
('9b1256e2cbaf81418d7712a61e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 00:45:12'),
('9b1813841466aa24ad1cb3f4d7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 08:51:45'),
('9b1a3f280fba47d49ed10eb101', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:43:16'),
('9b24f0eb749571a2b36a1ff3a0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 18:29:42'),
('9b2aea23d054f08b1d0cb7c6df', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 20:06:03'),
('9b3cc40cbcd3f6c58f549ff8dd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:44:46'),
('9b3e461610ac3a1483ab3dd6fd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 13:27:23'),
('9b4807cba79bed9beb67817a45', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 07:08:11'),
('9b4d516571969a0456e1afa740', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-06 05:51:03'),
('9b53edcab56ef2875628dada60', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-06 17:57:19'),
('9b5b5f16fa7bf665e4711dc9cf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-31 02:48:51'),
('9b62626676bdc6ea1efac43764', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-30 16:34:30'),
('9b8f1b847fc245593ec77a4ee0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 07:13:00'),
('9b9b5c6bed4474d53dabe3e4b8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 23:52:46'),
('9bc466090e89df67743d70d0dd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 12:59:52'),
('9bc75ef0242d20ad7d4729b66d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 20:51:55'),
('9be391f08ecefe9da0f8281728', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 03:35:12'),
('9be68fc64219a73d30a453fa29', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-29 08:32:14'),
('9bf57756f94b1ed07f001adbda', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 20:51:04'),
('9bf79fe9edf27b59fea4bd4bf3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:53:21'),
('9c0304dc2e7d5b935ecb596c55', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 10:34:32'),
('9c069177458460684d79116de5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 08:59:45'),
('9c08d167e4c4b3a78c4c180171', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 23:41:55'),
('9c1cc7826f5eac98cc8d879abb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 03:32:40'),
('9c1f359c26c35708e88f029abb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 15:40:39'),
('9c4b2cf330efc528a1cd3cc4c4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-19 13:44:42'),
('9c62ba3b356ad5f9e6c34452bc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-13 11:03:02'),
('9c672d3d0c6effca880a641b96', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-15 11:57:16'),
('9ca46521e9b9591e555245016a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 05:01:08'),
('9cb461262a640738c7ab9b55a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-14 22:07:14'),
('9cb643b8887be14b57f2387855', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 00:30:46'),
('9cc09ad5997f5509b0d7262c22', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-22 15:25:39'),
('9cccd97d2e3cded3a14d71feed', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:57:05'),
('9cd9ee6906598a8960124faaa4', 'false', '2019-01-14 19:10:21'),
('9cde6038ff4316793f4405958f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 15:46:44'),
('9cf9aad0441ef507e5a7c0953c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-07 08:51:45'),
('9cfd5977732e5d04b3f82f51f2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-05 14:52:54'),
('9d04d41add5610a4d5c2463f03', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 10:41:51'),
('9d0eb234b260f76d5a0717c092', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-05 11:23:35'),
('9d286e6a864d9bfb7fed04a742', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 00:02:02'),
('9d362a99e677c2aaa2601fe5f4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:34:51'),
('9d3987e716149a81346735b4c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-23 07:58:58'),
('9d466651ee2c6bf4d8c5b2cfc6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 04:35:49'),
('9d55dbbdcf5b297c7d5220082d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-23 05:03:40'),
('9d61f10e9f276e11176bab1090', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 13:16:19'),
('9d657ff32fe6421e93d9461c7d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 21:28:43'),
('9d7dfae167990c4a4c6ac98a19', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 00:09:56'),
('9d91587d4640e393059528614e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 22:20:54'),
('9d921a1d8142814a56d613c58c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:45:11'),
('9d94c47964584717c49aca9df2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 06:11:39'),
('9d98ed4e544d30de1f93efb04b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-22 03:50:12'),
('9d9b5acad8d2a615fd77f7707e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 12:01:15'),
('9db49f72ecc40c5cada7998a4a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:35:37'),
('9dc15a5d86950d0f5c456e3aab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:16:14'),
('9dca74c8ac25f9a57f52bfb4f7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-14 09:53:10'),
('9dcad90d7cc08be8a6c210d524', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 02:39:33'),
('9de69358260fad6a1eeef5c5e1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-29 15:49:40'),
('9deeea0765fc39ee8b16a70e4f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-27 07:10:48'),
('9e16be745e70ac1284b5ed05b3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 00:05:01'),
('9e16c7ff1276dd04e967d5194a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-13 18:02:16'),
('9e17987e350932ffd5a807cab7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 12:49:24'),
('9e1a4346479d90d5d347b63368', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/edit\"}', '2019-04-18 14:31:08'),
('9e21fe61ea180893b89373912b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 12:27:31'),
('9e2a6bbe63e2f663ac4f320567', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 23:08:56'),
('9e46b0efd355ac7f7d1e785ea0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-20 01:43:55'),
('9e4f231de28b8945ac3b73d8fc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 14:45:50'),
('9e5905c429d6b120c91b64a6a6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 04:51:29'),
('9e62fa27016a0f983afe991dbb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:54:19'),
('9e639fa75909f0da325092483c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 06:45:02'),
('9e685d0649b1470d2646695134', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-27 18:54:23'),
('9e6974eec8fd78fba81ae13297', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-08 06:49:44'),
('9e6acd0c95ca00d488bb834686', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 05:28:11'),
('9e7ddf0b7471cf7bfbddedf7d6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 07:02:48'),
('9e8251522fc84ecfef2a5516f7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 18:11:34'),
('9e9ae32f6bdf70b8c526d74c62', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 15:43:07'),
('9ea59b774859a76230287c8892', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 20:20:07'),
('9eb0557f352dd196571d0260f8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:24:16'),
('9ebd61410bd20fe29d5d3794fc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 08:57:07'),
('9ec983f8c8c33df7a39d1469d6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 17:37:57'),
('9ed5735b157a8e0f510229a47d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 03:18:27'),
('9ee252749c84d48fdfb4349bb2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 06:13:28'),
('9ef0341b99175d2a6b4f7eeeaf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:05:50'),
('9ef10f77830f96e648c357a292', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 12:15:33'),
('9f01b6a9092887e7734328eb54', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-02 06:14:11'),
('9f12203439970c7881de6ab452', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 04:50:10'),
('9f28e95080412983d5f1f51cbd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-13 13:59:58'),
('9f437e49a70e42ed35a9970fe2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 00:25:18'),
('9f73c60a5007ca9f0a7fb848b6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-06 09:55:46'),
('9f7aa834bdb5e7778d9478f824', 'false', '2018-11-09 02:29:39'),
('9f86e3315748bda15587ebaf60', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-24 23:26:15'),
('9f91cd162311c7432890fc6489', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 22:25:54'),
('9fccff71010b49442f49190e77', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-28 02:00:38'),
('9fce3f3246aeda12f7087e2252', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-22 06:01:17'),
('9fd09c68243a880e1cad4d4430', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 23:32:36'),
('9fd2c243d36fded45a3982a1e2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-01 11:26:51'),
('9fee5855652eac955a59c687fe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 07:16:29'),
('9ffc92860934f58c3dd7c3a673', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 12:02:05'),
('9ffdcc3560c5b87e2d91c59a0c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 19:36:10'),
('a007608ce2697a4f342b65477b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:16:06'),
('a01d724485ab10fbda9f4dfe25', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-08 22:19:41'),
('a0214780fb05be5f849618086f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 11:00:52'),
('a03840d5d0f15717009d2a9adb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 13:57:37'),
('a0398403cc2789e383b3c25100', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 02:30:00'),
('a03e9d4ceb2db842a786e447dc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 14:28:05'),
('a045f3637c1852cf60f8bc5047', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 15:19:47'),
('a06377a83cb559d39000e986a1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 22:48:58'),
('a06cfd48d94f2ad303a56a55bb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 00:13:43'),
('a06f97da348dbb16d85503dc09', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 04:09:08'),
('a072c1defde8a705d8e429d6c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 18:17:16'),
('a0743a5cac27f7db2bb77e685b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:08:31'),
('a08f6ca003642f1bc62f5d137e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:57:35'),
('a096e4f4936d84f400809d311d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 13:27:23'),
('a0a14f7b110a3a2d0dbaabb90e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 11:32:18'),
('a0abd34c8905ec0769f31c00f5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-28 00:20:56'),
('a0b93e3c514cac686f2f03189e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-16 20:32:57'),
('a0bc3287c6475934306a974f19', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 13:52:18'),
('a0c94b5ac1bda0644368e895df', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 11:38:04'),
('a0cc7e54f22a2730b773c2eee1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-24 19:57:37'),
('a13a10583dcfdebf3286e8069c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 22:10:08'),
('a13dd9bb6af0e7f789fcdd0f0d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 20:12:05'),
('a145fbe8c7d6632aed0f06e75c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 16:10:51'),
('a1734b25d300d9da1ec68bd16e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:28:41'),
('a18225f587f7c894518e921a8e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 16:25:18'),
('a18e1859e9a7dbacdb1cd4f635', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:32:49'),
('a1978b8b5cdd91206db7efe603', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-18 23:11:12'),
('a1b37235223582fb8ee4c80b99', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 08:31:50'),
('a1b94471631de58d5f838456c4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 20:24:47'),
('a1f2084fa85414434ea1c93bde', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:43:55'),
('a2048c4a5affd2cba35632ddce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 10:36:07'),
('a21af9a19695dea87b36941a5f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-22 10:32:03'),
('a23b82d02b1da2007f6b61a650', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-07 08:51:42'),
('a24dbebb6a3b358ecb94623c90', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 18:34:36'),
('a24ef85d91882a3f22d0ce8d78', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-28 01:17:56'),
('a2834c0362d97352d04b31fd46', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-24 04:25:40'),
('a295bef216fd896affd4985aad', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 13:59:12'),
('a2acb41af692190b6674c2b6e6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-22 13:46:27'),
('a2b9da582d61d2aacfd1d50fb8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:16:26'),
('a2be89258d94dd98addd252479', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-10 19:42:04'),
('a2dcf25d8cad6c810ef0bb9632', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-11 17:27:01'),
('a2f7807e697d32bbc0fcab503e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-07 16:10:50'),
('a2f9b1c878dba53aa1579848c9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 03:58:06'),
('a3011eb72cb6d1dba744bc6a92', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 10:56:39'),
('a3027ed484a5d9675c0b896c71', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 20:27:19'),
('a30b893de3964cfaea569b1220', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-11 23:58:15');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('a311cb90c0a6dfdf1e10e16dce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 00:23:51'),
('a313d83d34d3191282d2b3dd6c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-09 06:51:04'),
('a3240ba6d47b3f6e62919f47b8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 03:49:14'),
('a33d337883de7a6082639404f1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-30 18:15:35'),
('a349e5e3de0f4d3f3505f2a830', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 23:36:02'),
('a362df48dbf6a9dc75cd04444c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:20:53'),
('a394a6bda37825949c27b37c27', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 06:25:00'),
('a3b59fb1175bcb6dc7fe3271c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 15:50:06'),
('a3c441ea5094919ce9d9090c0b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 11:54:14'),
('a3ca2a41d9c8f59347de4fb13c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:41:30'),
('a3e5d55e23db04b87ab29ca33c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 18:48:37'),
('a3f9457de62f321d260e27c6e5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:06:24'),
('a3f9fce335468f778e7c5d28f7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:05:52'),
('a4043e0efad4660189f711ae7b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 14:34:13'),
('a409fd950764bc6d4c8f776223', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-05 16:07:51'),
('a418f2a9c61abb9d72880f38a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 11:59:47'),
('a421a686ddc31b9462cb51bcd6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 09:22:08'),
('a42c583fb882bbbf2f6a2f3cf2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 17:08:20'),
('a439e0cdb4c47361cd103383d5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 14:06:19'),
('a44091bd63003e6a9a670c1a41', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:18:59'),
('a451a45a9343963c7dd153307a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 11:28:12'),
('a457ab481035c32da55adab7b4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 08:08:10'),
('a45bd2bf4b42db6db94b75a042', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 07:59:25'),
('a45dab25f4f4b5b0299e65ece7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 21:58:34'),
('a47c8039e482b6b03c59f1f956', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 06:02:25'),
('a48bb4b0fd29c2b0a4e277ea07', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 21:34:23'),
('a493974df8fdb63c4f715d722a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 16:57:43'),
('a495eaac349db683d7d0144c1c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 12:34:14'),
('a4a48e33419cfb0d450ad832b1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 00:09:46'),
('a4a9468b2a53da26b8fadbbdc2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:44:18'),
('a4c1afb2f1f271dcfb9c1536b3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-21 07:41:12'),
('a4c653159f776698361bdaa090', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-12 05:03:17'),
('a4fc9a5b261d46218b7893779c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 08:15:08'),
('a509a7fdb9a08ea3d9c7fbd13a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-02 12:13:53'),
('a5109959b1d962273a83fd54bd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 03:00:49'),
('a51395321431d95e0c8eecbed5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:51:58'),
('a519895b2d8bb6272f0e517fee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-25 18:28:10'),
('a51c1fc860ea4277c144274768', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 15:56:36'),
('a54009dc8f9ac09e9477745cc4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 18:30:37'),
('a54d6dba6a6e874129c27bcd40', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 17:28:35'),
('a55aac93461993ab49db6b2b31', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 16:18:51'),
('a58b6f2a0dce03fd84a4bba71a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:51:04'),
('a59887d781b0ac74830c5f9348', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 07:48:51'),
('a5b2e4f01056bcec260e28cc9d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-30 08:15:35'),
('a5cbebb21737741354a9744a5a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 12:36:08'),
('a5d113dbc493e5774e69dab33d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-24 11:50:44'),
('a6229c3c125abff806f03820de', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 12:14:38'),
('a62ef88cb527ef3ad3c8762428', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 08:53:57'),
('a640219a389285aa6d21f3acb2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:12:36'),
('a649fe0fd9e48e9268c5c1e3c3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 06:48:29'),
('a673997bb413ffe76189703024', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 12:43:05'),
('a67c8bd7828a2538dead1ddb8e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-02 12:04:45'),
('a6964bc9b21e72c0ec1c221a94', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-10 18:21:21'),
('a6c13b5526e92a856065d436e5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 07:38:20'),
('a6c406e6aa84a4f206b314fc34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 00:16:58'),
('a6c41a50bc0f4fb563345390f9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 22:02:44'),
('a6dd4d9790dd254a814c71bb7a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 15:12:49'),
('a6e57b00d07b8c80b521e5eb95', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 23:02:25'),
('a6fde06b079d7d605e891f186a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-22 11:05:49'),
('a72a044f00fb17efc67b369c7d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:05:13'),
('a7307e218ca65d61453d2644b9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 12:32:38'),
('a73824d4d1249bb67fc4ca162d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-26 22:02:04'),
('a762801967ba4882503dfa0745', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 04:51:14'),
('a76640933bc3ac47664c6cbd80', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 04:50:24'),
('a781a710e6bcdbec422970d132', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:42:36'),
('a7985eddaa0c00dac2471b65a3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:27:35'),
('a79fdc3a137b6d0b0394a5d643', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-21 14:33:58'),
('a7adfe5f96765ddae574aa97d4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:05:01'),
('a7bf4a41a43ca130bf467b3b24', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 11:58:44'),
('a7c604f7fdf9aac5f1d361ff7a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 10:47:03'),
('a7dc8c272d72be8d1265d3aeb0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-21 15:43:46'),
('a7ea6d19c560d3483f89373f64', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-07 02:18:56'),
('a7fab9cf92903657fbcb827cd7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-31 06:37:43'),
('a803fc965bd89fdede675b7f08', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:38:26'),
('a80ba73d15d9f04fc24f96d1b6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 12:18:59'),
('a856a4acce9517e1b9910a8eb4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 13:42:42'),
('a85faeacda69276db7159a3708', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 14:42:19'),
('a8661d77cda8b7935796bddad9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 05:40:33'),
('a86cb940a35c3c5c37210b6217', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 18:43:12'),
('a8718e31464671dec591e9fb5b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:19:26'),
('a87706064c174244b3a17e5d1d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 18:11:51'),
('a8accda3e6208807d5eecf0cbc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:36:43'),
('a8b6eb0b4378d81cba4c19aa05', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-13 08:00:07'),
('a8bf4384808fd3f5bd3f31cc4f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 02:26:43'),
('a8c1fabe0ce53878f13bca0884', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 00:29:41'),
('a8f16c380d10845622717c6b48', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:26:31'),
('a8f23fe3937c1aa45b4840a8b8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-03 13:37:47'),
('a8f4261668239bb41368b29b43', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:41:32'),
('a8f9cdf0853a715c03e7b36f25', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:23:23'),
('a8fcf9470f9160c79edf7744b3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:17:15'),
('a908675d31358f510585e248b9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 11:26:54'),
('a9313a9cb95a6f57af1451f20b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 08:51:31'),
('a931b99d835e16fc7d45f61204', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-25 13:17:05'),
('a951e35d1208c362633b59d9cd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 10:24:50'),
('a957c2e6e01fab29656ad8838f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:12:03'),
('a958526dd5b78bc8fb82870b54', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 13:45:57'),
('a95b56a08631c444aefcf7c623', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:52:39'),
('a95c984f143db8d94e85ae4bc1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-26 08:31:25'),
('a97ccc7b96562d52547bc3ac32', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-12 05:55:30'),
('a98972836518e97c2a75e088db', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 05:26:43'),
('a992b65707e5389643696ec5c7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 05:00:03'),
('a9b0e81d1c4b23bcc5183cfecb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 19:47:03'),
('a9b82047a496ed7fd2cf4b3f11', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 22:23:53'),
('a9ca7ea400ecb057400cf322e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 00:26:00'),
('a9ebd596cb143f598a9ef9fa76', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-06 21:41:10'),
('a9edd4b51dddeef830fa6f0258', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-08 05:57:04'),
('a9f30cf757bb88fcd59bf7e4f8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 12:23:10'),
('a9f541dab1124d0bece09c6129', 'false', '2019-01-14 19:10:17'),
('a9f93cfd2116101dab9de7e0c9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-16 15:51:32'),
('aa1dfdb7cdc18e3ad519b03c36', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:51:23'),
('aa213e22ffa345d592239cc95d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 13:26:10'),
('aa29fc7b6edfe0eaeff3936b5c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-01 23:55:16'),
('aa4b0ad927f0a1d8ab87539153', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-29 20:43:44'),
('aa52a4b5cdc04770ff99f6ef2b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-31 07:45:49'),
('aa595ade4749ec4bdfe6e14cff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 12:02:39'),
('aa6e3d4b56dff0560bd03f448a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 13:18:08'),
('aa7e5c2e4d52ffb35abe0adb9d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 05:48:15'),
('aa9cbe86681bd7149308eebf34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-13 21:12:54'),
('aab6d1a77c0df23bd71ab75bf1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:35:35'),
('aac1f9e44067eabb666a7b32d8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-27 17:38:25'),
('aac4841f88adc4ed527308391f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 03:34:08'),
('aae24ce89255eae7e317d190c7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-27 10:31:56'),
('aaeae809d01a3793f9af307f0a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 12:17:55'),
('ab186834c18ecdf77a98c80207', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 05:51:14'),
('ab4bc28dbe0927f6198eaead43', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-31 09:06:21'),
('ab4f79ae569a67a304f3d9513d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:13:47'),
('ab57bf3727c4fc65212e97a5c3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 03:43:52'),
('ab66054cabef25de7bf1a15a99', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:36:18'),
('ab684d16bba29df8d59c5295d6', 'false', '2019-01-14 19:10:02'),
('ab6ad7d4da5d8838aa233f71a4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-05 11:23:38'),
('ab7d611b070ea00222a4dab6ea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:51'),
('ab86399e05ff89bde5d3933b65', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:28:29'),
('ab8cba552d362bcc9a638b3d3c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 23:41:21'),
('ab9f973234c4269438ded85366', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 02:49:36'),
('aba31667659e0768c558d24825', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 16:11:40'),
('aba9198abc1290b23da28f960a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-03 07:27:03'),
('abaa667e1a5bebb40cfb43f4f0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 06:09:23'),
('abae4442faf1b84c130645ce66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 20:11:44'),
('abb5dd6dc50b87be14a35b0841', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 07:30:23'),
('abbe4134e26dc6afcb1a429fe8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 09:33:45'),
('abc681554e719863865599fbd4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-22 08:01:23'),
('abcba3dccb9e7fc20d011dab46', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-18 11:29:50'),
('abd42150d082ebc0a7c282dda2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 22:10:53'),
('abd4d39f3b448c9a6bc17c37dd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:38:20'),
('abe672eaf05981d8fbecc97094', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\"}', '2019-02-18 19:11:19'),
('abe90de641205ab6485acc1950', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-13 20:24:16'),
('ac007bfeb0458066947d769363', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 22:45:58'),
('ac103bdda8be389c8351808599', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 03:10:27'),
('ac1cf6d6a5b69b2f23d61f5d2d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 19:11:58'),
('ac2897fab3e6eefd654c3a2187', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 21:36:04'),
('ac3e58a28fc7a367d4cd96d0d2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:48:07'),
('ac640739c05f54f11b7aa989a8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 07:10:11'),
('ac6b78a0564c1881f1a6a8479c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 08:26:54'),
('ac7676552b6237b49fac8f6bc1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 20:26:27'),
('ac8ace59908189a5dc11d4f767', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 18:32:29'),
('ac8ce446e86b4aa2fce631e19d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 00:09:55'),
('ac981e452522479069e29a7d21', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-15 22:12:28'),
('aca7b667c8b42c3043dfc9af44', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-17 17:46:05'),
('acb2babc878e99c376ff752495', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 10:45:11'),
('acbc782ef5a94164a2fc8cc3d3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-02 03:05:43'),
('acbd2836fbe1eae5ee3c3b9b6f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-30 19:25:04'),
('acc7bb260e306d54b58c4d2717', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-01 04:55:29'),
('accdd85103bb76303b5c749dff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 22:49:00'),
('accf937f5c03fed4520bfaa41f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 07:00:13'),
('acf4c0114183e772328e04a5df', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:38:45'),
('acfdd2267a92be056b431ff460', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:15:39'),
('ad0660dc5933d223e00adf193a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-09 01:54:13'),
('ad09b5f5aa4676472ea3a1de13', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 17:54:11'),
('ad1f3ea2faa489f89b46394867', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 21:58:22'),
('ad2c4abef74feacad0784e91aa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 11:40:25'),
('ad4114c1c01bf9e618bd12a3b8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:41:39'),
('ad423167836a3a82bc744d3a51', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 07:22:15'),
('ad59cbb4212f876a0533252402', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:22:02'),
('ad5bfbe7b70cd0d151dac9c452', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:10:36'),
('ada29fd4850b13c37e312a4820', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 16:36:25'),
('ada604c37f486ebf8731246494', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-13 04:54:20'),
('adab067b814f2028f1f1510d4e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-27 13:14:56'),
('adb33e383dc4576f971efd3ff2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 19:14:09'),
('adb88c868eb661bf91edb564c9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 17:06:56'),
('adbccafa8250f66a587e7a2679', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 15:20:41'),
('adc0bb54f1e978594d0673da34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 23:50:16'),
('adc8e65f5c0b549efb0eba79d2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 09:22:55'),
('ae269404aa4720257892f0d380', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-31 04:49:00'),
('ae58cdd3bfcd452b15f1cfdb1d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-10 07:15:02'),
('ae62010a6fd08dcbba55b1d04a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 20:29:58'),
('ae6a38dd08f8fc192cc107ff14', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:11:57'),
('ae7ed203d471a20d8f74835fea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 09:44:11'),
('aea8559f1c3a0648e5c35a9a06', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 01:27:21'),
('aecbe6db2befa0c15eba6162d7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 08:16:38'),
('aedc79d4869bd13bba9555e853', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:52:51'),
('aef04567a7c968f6ac394fec2b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 11:14:23'),
('aef2cf30e9b53f7652bad4f3be', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:15:31'),
('aef85575708815e969a0ff2739', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 05:56:41'),
('af20beaf5fb2e280e6384609a2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 11:38:55'),
('af2c04f22b1f1d1d8fa37a6f4a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 17:28:31'),
('af36fc2e9ae0557cd2141d528d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 14:24:07'),
('af3aedf70175382c9324b6db3e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 10:24:31'),
('af631f0fe63cec5da3f8791160', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-31 06:37:44'),
('af7cde5aae0b56657640ca0210', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-15 14:55:41'),
('af7e20e8bc13dac2eee84c6134', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 23:00:17'),
('af9398ff6b6dd90b03639fb37b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-28 09:55:14'),
('af9b2b9ee96fe9346e0cb5219d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 01:16:06'),
('afa5c947ee2d60c59e7aacc518', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-27 01:21:16'),
('afd82f1bc169ddbd8fb0dd8e7a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-15 01:02:37'),
('afeef7d3d58996a7077eb35f8f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:46:34'),
('b00d7341fea6189bf447bff43f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-27 13:44:37'),
('b0216ce3f271b71f6cb98dea9f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-10 04:31:44'),
('b021f5d0b246e8e6ef1b1101b1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-02 12:18:38'),
('b025fe555273f1210be606480c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 15:31:15'),
('b0284d93257f1d57555dafe0a4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-30 09:12:53'),
('b0541dde7093792ccbdae6c59d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 13:10:39'),
('b0724407b4f4d829088be1e17d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 22:38:37'),
('b07b3e3d70885632939d068b70', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-31 00:30:36'),
('b086eb856f63b5d4b5ee334c95', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:12:50'),
('b08a686e7983464cec33da3c19', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:23'),
('b08dcdd48b0cdf7035190b31e4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-13 18:47:18'),
('b0a7877fd9b5a096df1d02f84b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 01:57:52'),
('b0d0255d7fbbc51c6ba04a7af1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-17 23:09:53'),
('b0de58ec31b932f2f21c141ccc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-10 12:27:10'),
('b0deb8e0589648e908648ee01a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 01:54:36'),
('b0df41fab034de794a83d8ddec', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/download\"}', '2018-11-06 00:54:26'),
('b0e01a5a365967a9c4bec03ca9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-25 11:25:11'),
('b0ecafa031a271be8993f6608e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 11:15:25'),
('b0faa6ddab0867072bfee8a6ba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 12:18:27'),
('b101a3ed2d047d31a8e08b89d8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 13:38:40'),
('b108a673ae2976276ad7efdc03', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 19:29:52'),
('b12d6883ad4fcc07067e230084', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 06:07:38'),
('b13894729a6e6bd41f8d86872b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 23:17:28'),
('b15ca608735ebe9208c021ac08', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 07:33:24'),
('b168d43f9cdd0e25b4372b5dee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 14:00:58'),
('b16910d3de3776c41083aa8a1d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-29 02:42:43'),
('b171e1b6627d9733da9fefcd52', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-22 03:42:46'),
('b17d65a8a799323434c195003a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:11:21'),
('b18b43958c7af3e29c970c9616', 'false', '2019-01-14 19:10:21'),
('b18f0472099deda54cac52841f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 00:04:52'),
('b1913e7df4d99ac18b2f7bc34b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-25 02:13:42'),
('b198343e0850344b9fc2e4d897', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 11:33:27'),
('b198811dc3881401b36eaeffba', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-24 06:01:27'),
('b1c504715306ccc482266c1d29', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 11:45:19'),
('b1e6339515830b8d84d1c2fa56', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 22:40:08'),
('b2044abe04acde724534ccc18c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 17:28:55'),
('b2071eb96f2dad6aa7227f282c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 15:54:23'),
('b22c50f0b1feab6b78f54884f4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 14:21:12'),
('b231e4dc13ebd3984c03e69d85', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:36:53'),
('b23ad5a24685b31a60a162dd98', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:08:58'),
('b24835abf78a9719e05d30c910', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 07:35:41'),
('b2563702abaed2874869c68bec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 05:11:49'),
('b25cc838e9252f5c668c9a7dd7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 22:16:28'),
('b25ce3cc867420545f083e3991', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:58'),
('b25e71d6034f0865bbce6e710f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 17:17:27'),
('b26d10f808cc457fb26aed3df4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-03 09:17:23'),
('b2a50466af1aa3edb8472f3e6f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-04 17:55:48'),
('b2bcc401f3ad558cb6b04e14ca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 21:38:44'),
('b2bd70ee2a95f0296c35ecbfa8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-08 10:23:28'),
('b2beec81d9b93279e631f3d608', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:48:31'),
('b2c0f5776818f9a5b219a2c2b9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:01:01'),
('b2f6b96065b28950e237c6711e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-29 08:36:16'),
('b31657cbbc67f6e83f673ffa47', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-12 01:45:39'),
('b32d243d14488bf5200b337c6e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:52:17'),
('b337f1449a828003f095334b31', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-23 07:49:51'),
('b3381e1d2e837a539d6ac47d65', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-21 10:41:19'),
('b34a06d13cfad9e41f44894f35', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 11:10:35'),
('b34e7103de7b75d93b6bc83b40', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 00:22:37'),
('b35283dbadf1502afa541b8baa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-06 00:54:23'),
('b36e4f581e526b6ebc0c5a9cd1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 11:45:59'),
('b3764f8e298c4217b68b85287c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 22:44:24'),
('b3ac5e19504727bea3aeccbe44', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 19:43:03'),
('b3d84a49684d8637e1f75a6521', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 11:15:35'),
('b3dbdb1a3a7fcf9c102d1079d0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:01:16'),
('b3e3c237241f06a554b1c92034', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 19:12:31'),
('b3f47dff3ef49da861974dc15f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:43:55'),
('b3fad9828ddf5a82e31a1a2a18', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 17:07:33'),
('b40f3c2cc8a1d1a5cbe93dca2e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 07:26:35'),
('b419b4b3a148048bb512593907', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-15 13:38:20'),
('b41d94fe2e24008e788bfad6eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 02:03:27'),
('b42eabaaa656292dca216bcfd7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-04 18:37:42'),
('b4549b9189542a03910edc6fed', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 23:07:22'),
('b456d88ec642d871c84d6be7b9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 14:29:07'),
('b462b1600790a6300fb2267249', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-12 05:17:00'),
('b464a4878db9af6e3ec1ce9e54', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:58:40'),
('b46976e78fc0a49aebf6e84898', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 06:46:03'),
('b4796a8ccfc0a63122e11e5367', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 22:46:31'),
('b490eb75fd1eb654a34cc899dc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 18:36:24'),
('b4a1f67730299a4673805de62c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:30:29'),
('b4abd7db8b0bbb2b97476230b2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 11:29:44'),
('b4d87ab7b60e08dc59614fc3bc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 04:12:27'),
('b4ea9942dffd296fd7eae4aedc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-11 03:03:38'),
('b4ec415259f5c39db294477035', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:59:54'),
('b50084bc790fa33b88cf4045a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 01:37:05'),
('b50a45b34ba9cbebba715e9340', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-23 04:22:23'),
('b514d66b44c8f03b0787921e0f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 09:47:51'),
('b5461ab95840d00a7641ef70ed', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:05:10'),
('b5536e7eb6f22cf67fb78ac3f2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 23:03:26'),
('b55daca9526a1fcf126277fcec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 04:55:02'),
('b55df101edd8eb2a5395795993', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 23:13:18'),
('b561dac258033b28e63a09d52f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 07:56:28'),
('b571d33f49189b715f7e2ddf0f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 03:48:43'),
('b5761e6d63182256244f5e6f45', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 12:24:31'),
('b577897b52dd2bdd2e86584aaf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 00:59:36'),
('b578b527eefdfc510ef0444fa5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:59:37'),
('b57a080a12dc40542649396143', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 09:15:50'),
('b5916d2ab271895f14e1e62e2b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 11:38:42'),
('b59ccf3f0b9df80ca30479fd4f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-21 18:23:25'),
('b5c3aee1b2fe9f4fa318588f87', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-09 21:31:59'),
('b5cfd356f592306b2b12a655f7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 12:46:13'),
('b5e5d7d9acd013b573d9333dea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 12:40:13'),
('b5ed6fcd04e745d550ba4835fc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 06:57:41'),
('b5ee97b27b7ab9d20290ad337b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 22:53:42'),
('b5f3e2b5de678fb0ce7a7032e3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-28 16:34:09'),
('b5f589b7ab13db98cba1804766', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 18:24:56'),
('b6191a6f55baa9881c482ebf0f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-02 15:54:11'),
('b6198bfa56b80459d87ddf72f2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 07:33:28'),
('b630d6a3b6cd40a3de1e264327', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 17:08:38'),
('b6353259cffdf7ed173079634c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-04 16:13:18'),
('b66537142eee2bfedf4b65cca7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 02:25:04'),
('b67156002b42edce79716761f0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 22:13:38'),
('b67b48f8415b237abaa6eab26f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 16:55:09'),
('b67b5d859b16420b5f9260cd2a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-22 04:09:56'),
('b6b45a7f7afa3e53a5e671a615', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 18:48:26'),
('b6c0990e56f65254abd6679202', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 12:31:34'),
('b6c6c1d28b1806c78936d9ff32', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 10:24:41'),
('b6d1aed09107debd747d06055c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-14 00:49:39'),
('b6db3b768b2284cda12dd7e026', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-11 17:58:19'),
('b6ddf10ce70e279051321b0203', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 02:11:08'),
('b6e99c0895479b15a5045251d8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 04:00:04'),
('b6eda5768935b5957cdfa77bb7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:41:24'),
('b7087f6f5f98dc6eb0c599fcbb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-01 23:31:55'),
('b70d87de267985cfce726216b1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 14:07:02'),
('b719381553af496941954ca0d6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:21:50'),
('b71b1b7bbae001e9e518d30268', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 07:36:38'),
('b72199392cae70dc5af03e77bd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-06 08:53:11'),
('b7284a42a57add88660c422187', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 01:55:59'),
('b73c2f007646046a8085c5851a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 07:20:35'),
('b75dd851d94a85d62110e41deb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 22:51:38'),
('b766453ab109a283950723b098', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-13 03:14:33'),
('b799b2158a37a918c8db410e29', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:51:39'),
('b7b06cf73d6fa7623b43f8e396', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:55:41'),
('b7ba82dd61aa9357693235b0dd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-06 08:52:27'),
('b7c50730e76318992bafa76186', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 12:55:32'),
('b7cd212a415166090e2df30196', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:20:29'),
('b7cda438132c067334318d1722', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 01:38:35'),
('b7d869c9adfc66732aa0f3ddf3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 03:01:18'),
('b7e3dc9c9c7eea7fe508a93d2e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 15:30:25'),
('b7f31c99ba96a6bd59baeafbca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-25 02:13:52'),
('b7fcd311391fe0876ee7a99131', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 08:05:55'),
('b82719d8a4a3b508093810c190', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:10:40'),
('b84371ceddf572ffcc08e6cf97', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-08 08:00:11'),
('b84f38a9cdff0d146ccd578902', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-17 07:16:27'),
('b8547a41ed419ea3984f41f9e0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:46'),
('b8575d40576c874f0ecec82856', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-01 23:33:32'),
('b8641c864da80c1c2616b7ec5a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 01:26:57'),
('b8663c3ffc12f55d8915689594', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:36:57'),
('b866cc8e0a55ff81bb1586a27c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 02:21:07'),
('b8758ea1961b9d0b52eafde514', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 17:17:47'),
('b87b24beb6035bfcf28ea5c304', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 19:52:51'),
('b88c582b1c56f3da8a1e14178f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 16:23:58'),
('b8999e2feec7f22096e8f5b037', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 16:55:47'),
('b8a227254a25c6feaa2db1e6f3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-12 21:12:16'),
('b8a24040c7530961fe2f1de113', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 14:51:40'),
('b8b2852d8a87fc7fc4385f3633', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 14:31:44'),
('b8b2d7a8b0b4b933fd7a26e7fb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 14:39:10'),
('b8c9c1046391db7c6c5b7946d3', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/wishlist\"}', '2019-04-04 05:11:37'),
('b8d3c1a3634cdbb57ba3d3921d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:52:33'),
('b8eba436517e0bdc375dd36e9e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-01 02:03:45'),
('b8f1b9575bf426c5cd27771642', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 12:12:25'),
('b9027a899597cd2aed4d7fc04e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-12 05:04:54'),
('b912b023e82f86c8ca583fc072', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:26:55'),
('b919967db648c2869fb253fe7b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 15:55:29'),
('b91b82dadd0e0408e047d42c2b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-02 04:31:26'),
('b93465a99578ea780ddd6bfb19', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-22 20:16:09'),
('b941e528224507394e790207b2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 19:51:07'),
('b95314ef0fe4ef2f867c038767', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:35:39'),
('b95840252a597fd1981f829aca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-27 13:14:52'),
('b970e6d9e2d6eaa6e256cc4503', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-17 23:37:08'),
('b98594a40c9a5fc91fd745fee5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 01:06:26'),
('b98670d60186f468b36231848e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 13:40:30'),
('b98c79ddce123e435e5cb903ab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 03:28:35'),
('b98e3e91054115c5548165884e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-09 15:57:30'),
('b98fa25542f88acd4d7f3d1d08', 'false', '2019-01-14 19:10:14'),
('b99a8116ed2fe71673fbc189f0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 14:26:31'),
('b9a38546d6ee38ebe0a2f2c225', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-05 23:10:34'),
('b9a974a9a416f9eb954af578fc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:55:25'),
('b9aecbf5777a0544f11e490128', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-30 18:09:47'),
('b9b6f9cdad529b129c0fda1de2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-25 03:30:42'),
('b9be0a927f915787e2b9589ea0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 00:45:36'),
('b9c306197f38fec9c094141959', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 19:57:15'),
('b9c55564863c732a92a7745900', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 00:27:57'),
('b9d76ef480fd6b78b11674045b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 10:48:44'),
('b9e172c5749110e36b8caa39b5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 00:46:51'),
('b9f1cbae9c5d6b2c7a34696da6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 11:00:42'),
('b9f2fb5e4631215d53b264a6db', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 14:44:11'),
('b9f9d04bc0abfe04029884f033', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 09:51:08'),
('ba03dff995f7ff5c50c33b2a25', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 16:34:23'),
('ba0c757fb6122d511f5d181683', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-22 09:40:01'),
('ba11a477c5667fed334c1def6d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 15:23:27'),
('ba1727cec0fbeb4a4157e5a045', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 03:35:29'),
('ba23063d0566d0c84f978c2a09', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 16:25:16'),
('ba35929c5b97d1e3c8dd19aac7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 15:47:31'),
('ba389d7fa4e93d14f1cce1ad86', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-18 13:36:59'),
('ba39c4b2680b42367d438d1c0f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 13:08:16'),
('ba4f417caea92bd92b7d6f2c17', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-08 16:43:21'),
('ba61007dab0d3ad7d9abd130c9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 13:15:57'),
('ba6ddaf3695a7a7f5089db739a', 'false', '2019-01-15 04:30:54'),
('ba88af9189b5e60abfcbb000e8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 06:15:35'),
('ba8ababaeb5c6e5acb55d5d4ce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 01:22:59'),
('ba9a8dcba204a0e463606185a6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 14:10:04'),
('ba9ace3a07b7edabab0a5bec62', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 17:35:03'),
('ba9e522b8a8e13f85749d82b8e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 21:53:58'),
('baad348ed19929d2cfd4c7e4c0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 07:55:17'),
('babec4f2c72ea64e598bc34c80', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:02:47'),
('bac4a967fc9f3611d88db1760e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 01:20:12'),
('bad1e0866af0d562fd2f608544', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 23:42:21'),
('bae1a19e24b12527bff345b898', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 13:25:12'),
('bae9d789fab59ae5ccb5049ae2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 16:38:33'),
('baec691b61d64ce149eda1205b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 08:12:19'),
('bafefcf4aa767ad7a0b818d21c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 15:21:27'),
('bb0434d29700c83bed6d80bd60', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-15 03:01:02'),
('bb05bffab5bfb472a6be802215', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 14:16:56'),
('bb3d427c934fcec44b0ef967e5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 07:00:24'),
('bb4944007af93702900df688f1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 03:21:25'),
('bb4d80a449a99027968b4dda77', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 10:08:31'),
('bb6978293dae502f96b248daca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 01:26:09'),
('bb73e9a7f0b4f88183f3681622', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 02:33:58'),
('bb8568078c3210125f605a3d11', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:03:37'),
('bba1fb0064de7cf1e74e75997a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 20:27:13'),
('bba963bc00739e22f0a3cf96bf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 01:14:16'),
('bbafca3565dc61e05b53d3d6e4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-23 05:02:59'),
('bbbdaef53e816d67120262000d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 00:04:22'),
('bbdafee48572942eeb2937ca6c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 09:49:56'),
('bbeb13b98d41f646a3f57fb78c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 15:48:29'),
('bbf37de335d4926aac8ac1b7e1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 04:37:08'),
('bc0ee3538349df4482ab58cdce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-07 00:49:20'),
('bc1280b0c98bbd5c886613286b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 09:28:02'),
('bc1aa72bec5f8b3cac97793f36', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 04:14:45'),
('bc1c5a89da2ed9eb55cb1de970', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 10:56:14'),
('bc30b6165478dad632a832c4db', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 15:31:19'),
('bc362b8c030a5be00fe3589ffc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-21 03:38:21'),
('bc43ec426b210c6586c35e802c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:38:04'),
('bc68faad081b3118a0082117e3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 12:38:37'),
('bc77274d817e56bd7d001014cb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:24:15'),
('bc7d205c60f93c5de704a69b79', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 04:01:33'),
('bc80f01a9adc5e492ec0fc733c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 00:04:24'),
('bc88732036a822e844664b8ee5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:23:25'),
('bc8aa345af732952f87b419670', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-06 07:54:07'),
('bc8d1ccf142ce66e0e7d7be973', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 22:44:40'),
('bcb6ab8f409eda8109b168b6fe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 11:51:09'),
('bcc6424d9b3b669058dea7d1ad', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 15:47:52'),
('bcceae0854973d9f1e67fccd3a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-30 15:18:57'),
('bd05c3f08dd593c981fc501196', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:56:17'),
('bd1fd7bac13de7e1ddfb352600', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 10:53:30'),
('bd2575791ba0690948c6620cfc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 12:38:15'),
('bd29d106bd865a4ae1ffaa2650', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 20:03:59'),
('bd49ebc155de7b6aaf6cf73c4b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 13:34:09'),
('bd5335f8e24880e920182736da', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 15:16:09'),
('bd5ef1c4be997d14ecd32d107b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 20:32:10'),
('bd6639e226957dc13741061425', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:08:59'),
('bd778c911dd948a5bae55cb8f3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 05:02:56'),
('bd962b98564901f2e8aeb2b61d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 10:43:11'),
('bdc4e0bf13b01992963afff1de', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 06:45:59'),
('bdc9b88b0a6a97a0aeaa934243', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:11:54'),
('bdd4f35b6572f62d335ad5e223', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 04:35:40'),
('bddb943860f473cbf0098eaf72', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 06:44:19'),
('bde1ea757aaab3d1d7b10b0171', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 12:12:29'),
('bde8a04e13aa3a316995353231', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 16:08:54'),
('be0c4a6b69a4eb8e59a93e688c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 14:11:47'),
('be24ef85a25e6876c56c225941', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 13:02:11'),
('be273908b01511cfe61a7a636a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 16:30:28'),
('be2bd12a3a2162ead268435496', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 03:59:43'),
('be3d60b9b8174f32ad8f67c976', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 11:33:56'),
('be4059d4e9793f93f28f16bddc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 05:47:04'),
('be4634509edd2fe2d1d9749f3c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 20:44:07'),
('be4fa255d1c934c443edaa6495', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 23:00:20'),
('be506d73db72cc086f3d67540c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 02:15:15'),
('be65fc067f9783121ec94b0e3b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 04:12:35'),
('be73c597c1ab43210c9786c7a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 11:36:28'),
('beade0ff07b3dc1073e17d6eb8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 12:07:57'),
('beca1833d2ad08276d525954d5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-29 02:08:37'),
('bee934344efd7d22290937ae94', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 20:04:33'),
('beee4edf982a07c27522399104', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 04:25:33'),
('befdfcd1808cee423748f9cd90', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-16 21:40:02'),
('bf00ef84cdf5394777feaf4637', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-31 02:46:17'),
('bf0d773f8c5ada7f71f344fe08', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 12:24:14'),
('bf12235bd1f54823d8b81e59b0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-05 17:35:56'),
('bf144c504b791b422224d25668', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 15:50:50'),
('bf23a03d3437a691de54ae0076', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 19:06:00'),
('bf3e73ef402d0f9fda618df406', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 05:33:19'),
('bf45af7895357a1e064aa3c76b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-20 19:30:06'),
('bf46a0b09691e17b81a3b0c26e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 21:27:07'),
('bf474f7b12282b90370d448854', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-22 19:33:31');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('bf61dda6f4783f128e8610f7f8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 12:24:53'),
('bf79c8a51005310839c42234da', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 11:01:24'),
('bf93f59db5b3c61f6a1a95dc03', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 03:18:41'),
('bfa8d4e28a08300884e274d144', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-05 11:14:27'),
('bfa90db8f9240e78ecb6eac21d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 03:23:37'),
('bfce0abc72ad8ef28c9aa45da1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 13:27:56'),
('bff4a6222352ab179cf6510aea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 05:00:51'),
('bff4b3ea74d2aca7dda145f325', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 17:56:37'),
('c003dca74101e443176574b221', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-05 17:35:49'),
('c006d7cb527a2ffe0dcf25512f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 15:04:24'),
('c00b91c50774a429ba5f4e062f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:35:23'),
('c01846a76258c6eb288b3c472b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 06:50:02'),
('c0386bdffa69c152eba9de503f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 19:33:04'),
('c04b3a25d1797703de4d35b37f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 15:40:30'),
('c04ddf980a2c72b5cb1e6b8a94', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-27 21:13:37'),
('c0777cfcbbf3e0b939690bedac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 09:37:37'),
('c07ad244f02fd5f722164278be', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-03 23:11:23'),
('c085207ca7add50f4b1c8f391c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-22 07:28:32'),
('c0969d1ea005b4b96c954d0ce1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-13 22:33:51'),
('c0a5eb3a78993e8c9bb6d7e352', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-20 23:06:40'),
('c0c3c70d5aa4ca750909e0500f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 04:58:40'),
('c0c6569af6de49b7978bcefa7b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:05:31'),
('c0f42497c06c1081a84bc8743a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:36:58'),
('c100c085dc703fbee1c047e9ae', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-27 10:31:47'),
('c10ac44a33e9326cf8bd3ff7fb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-27 20:29:17'),
('c10e144d06abb571defb5ebcd1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 19:21:08'),
('c120c34beb7514227f10a57815', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 14:35:17'),
('c14df11d8fed09144c4f5bc1e6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-30 04:25:58'),
('c151b24002d2244895e6b1eb10', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-27 19:58:32'),
('c15a6b4dd6909aee381bc770b3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 15:00:28'),
('c15ca5883a06ad9fd4147e4e72', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 16:55:25'),
('c166c64d85adf3379a4b86ea38', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 22:17:09'),
('c1694dacccbb5f82d6f8f041a4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-02 12:18:45'),
('c182f796d9fe932dcce2ad94cd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:40:55'),
('c183c72dd0eaecf2dc25f9baf1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 02:16:01'),
('c19674cdcb087823206cd58953', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:22:35'),
('c19790e97ebc112da7194745d8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-10 03:18:15'),
('c19c9f488c0fbb051c4c9693c4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 00:02:44'),
('c19efeb5d01d45100a9cf0e43d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:17:54'),
('c1c2ffd77e1e7123bc7990f7d9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-30 16:50:58'),
('c1c5d73654d8e43047d46f13aa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 12:34:54'),
('c1d7ac1a1e185ad702e308a739', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-28 03:27:28'),
('c1e2c6299ed3707e8f7c9286d4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 20:50:46'),
('c1f96fcb9bcfdb805f7defb739', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-15 01:07:16'),
('c1fc197ffd5d28c4e7fe2c13b9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 05:14:39'),
('c20234ac83e5f85f4d152af277', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-25 17:44:04'),
('c20411fa740e34e0ddc1f35318', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 00:35:04'),
('c20540be1ad74b4ee678f170d9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 05:00:19'),
('c209ba5c93cc4d20d5b6f2cd94', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 05:21:28'),
('c20de1b2a197fdbad03ad82b2f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 03:49:24'),
('c21dc2bc38df9e0ca82ed77d03', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-08 10:14:46'),
('c23738a164c286c88b96fdeae7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 00:36:52'),
('c23fc477e9f119d2e190cba2ff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-09 01:54:23'),
('c244f0ca1fa1c293a8a8de7b6d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-16 11:31:05'),
('c24bc9640198249080d63692a4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:32:33'),
('c25ab80e1ad547e5b0440b733d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 08:03:48'),
('c285ff06ed92c7eb144cf5bf8f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 20:11:23'),
('c2cebc79d6ac7149b7aa6b5316', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-19 23:42:46'),
('c2d1b74505bd783d4ddb4bda59', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:46:22'),
('c2d62a1a0c3a7d667b65bb22fb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 12:45:44'),
('c2e097470c5b1d6a3c0fb74e48', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-20 08:02:54'),
('c2e5ed350cc0cc7b4befb333e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 02:28:08'),
('c2ee04ce7c938741cbc7654095', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 06:57:09'),
('c301676cbc8385cd0b2c3e3057', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-10 02:09:35'),
('c30d19a6d8c7fb5c8d3768b26a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-01 23:42:13'),
('c30d1a71d59ca6fa5714d77bc5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 03:53:04'),
('c30f6ca3ec24bf2db09faaab06', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 02:15:59'),
('c3151ef2949751b56d705ccbbc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 20:50:15'),
('c31e1d7c27551c6e324e0f0884', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-13 19:10:53'),
('c3215b9733e7883ad9b377a4eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 00:21:55'),
('c3224c0c59330d6166d9bc6362', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 04:07:04'),
('c32de679c3233a31c75951b978', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 11:04:52'),
('c33fe00feefda85fda7245b4e1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-06 00:54:34'),
('c35492c9265d751b35fda844ea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 03:30:50'),
('c35e195a80b07abb2629bbbb88', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:36:45'),
('c37ef1b0e8edd5286449ffad7c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-27 01:15:02'),
('c37ff327aa32521273acf70bdc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 20:58:43'),
('c385766bfdaf74f183efcea0c8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 09:10:38'),
('c39d272f80cd07debaf8cd9796', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-03 12:23:43'),
('c3bdfe0221fee9e5eea959abb0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:32:23'),
('c3d590e1c8ca7e6cff5fbde37f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 03:35:11'),
('c3eec0325efe1af50bd79ea059', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-23 13:11:12'),
('c412c8514b1ea5109dcc8f93ca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-03 09:17:15'),
('c41610f1994cc8dfb5b9590e4c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 19:40:01'),
('c4189602846a47680f2582cc47', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 13:34:04'),
('c43f55fb273f6d45789ac289f9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-12 21:09:40'),
('c447bab420dd0989af5ba4d0f9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 02:10:02'),
('c456aa73b76dd9a576248eb94f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 20:10:50'),
('c45faf8e76bb36a79923110111', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:30:58'),
('c465f63156d802c8b58c33b849', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 22:24:02'),
('c46e5c6edbbc1a1fcfd7a19c6f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:19:15'),
('c47e4ae08d81d46fc328959f22', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 14:52:33'),
('c47ece179cdba1d82624859133', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 12:42:33'),
('c48745127f3a3c1826cfd6dc42', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-18 09:51:08'),
('c499737152636bd44d0e375f57', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:02:50'),
('c4a4669f81a6d447caa5b56353', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:53:34'),
('c4afc821b7f4b4d9166d2bb6b6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 07:21:50'),
('c4cffcd0917e5ff776526f6348', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-17 05:40:55'),
('c4d80653f5ce7e52e03b233ca9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-01 03:40:38'),
('c4eab9e62a681c46b67eee6ce1', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\"}', '2019-02-17 19:15:12'),
('c4edc219bb965f1ffccdc1b063', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 23:08:09'),
('c4efe3c555d28a77bdd3b8fd46', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 06:11:24'),
('c4f505b9056ece2af8612574b1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 20:04:00'),
('c503bee3db2ba75f736df35f65', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 05:39:37'),
('c504f43b6c38f0d1b07c609416', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-26 05:48:43'),
('c51c60e28e4fea6bf4838a39bc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-09 22:30:03'),
('c52156e91bf3f8def80c6532b0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-24 20:22:06'),
('c522e0be6b0019daeadc50c3f7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-23 11:39:11'),
('c523e01c35a6043c6a943bd5ee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 18:50:44'),
('c52c8f5727cf585ae802951d1c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 14:17:17'),
('c52f8a39998cc65ff275932af6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 08:48:22'),
('c54148ed6846003d4c8f50710a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 07:42:07'),
('c54b67f5bfe27745c9513b4238', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-28 18:24:55'),
('c55700ab2455c2c165174b4a34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 23:00:07'),
('c55d45a62358cbf3ba5793d7ac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-16 09:51:33'),
('c58cc4a957ccad467c7f264686', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-03 16:41:42'),
('c5a5f9760df4b6b90e552d2c35', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-18 17:25:08'),
('c5a8273740e95012d984af6810', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 05:15:55'),
('c5b7b7f33d6d179d80dfded34f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:11:28'),
('c5c39dd6ff41c961f5940ae1dc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 21:12:23'),
('c5c560432d438ac15db7328f0e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 08:44:55'),
('c5dcc77ee00172991b9bd90090', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-07 19:21:49'),
('c602948f95b96822320c113e3f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-30 11:45:33'),
('c60320fa1bc8ab6b5c5ea1da75', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-27 07:11:00'),
('c60bc83587ce845c7be204ae7e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 11:22:11'),
('c6115cf1042fcdf2af2ce91651', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 07:53:32'),
('c6262eb9d358b671a34ad90b01', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 15:18:57'),
('c6304117df9610fed0f1f3606b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:56:04'),
('c638e6f019dbd0faa878dc3548', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:13:19'),
('c63f3c3f8085908d40ceba7442', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:35:49'),
('c648292f40f45f838b37e576aa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 14:21:14'),
('c656a3bdd67b6a30129e55e6f4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 04:51:33'),
('c6769ec3de11d8ab51e996bcca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-03 13:45:00'),
('c6a509d1355d8ac05a137a8773', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 10:19:33'),
('c6b13b09c3d194c3cd01cdaf50', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-30 10:03:52'),
('c6d60b8483d5d5f084557ebe4d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 01:59:12'),
('c6e7b7c3f9d5d15260ef2e887c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 14:01:50'),
('c6f9f59191e4d7ef9057941f05', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:49:22'),
('c70d06631236c787d3a14befc8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:50:19'),
('c7160965e11c56610ceb9c8b3d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 02:04:27'),
('c729b61c9e6d306553cd2684b2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 03:03:36'),
('c73c7ab40e3e96cde1454aac07', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:43:58'),
('c73df418e45ec8d1e93faab0aa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 05:46:09'),
('c740085ae4bc29f0ea232c7739', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-24 06:01:34'),
('c74b9c236e98a3c308951ba070', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 19:55:00'),
('c754751207a653c229fc8e7c19', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 16:18:01'),
('c7a1a6e6e090063d007336b9e4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 07:49:55'),
('c7a6a43dc8b60ee2e4acb95fee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 11:32:49'),
('c7b24453f888f0940f7cecd4ad', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 11:13:23'),
('c7c2d1ae91fea25b23cb67f878', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-13 03:59:00'),
('c7cd0558114356c12b9c90d003', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 02:26:58'),
('c7d88ea69e7b2c01ce23184184', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 12:14:36'),
('c7dc6d18eeaf9bae536a5b26c1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-27 12:36:09'),
('c7dfbcb88b175713d07470dd4f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-26 15:55:05'),
('c7e3b379b6995a004889aae474', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-23 16:17:33'),
('c7e82d906456c995af443c3ee9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 13:27:29'),
('c7f9e384406ec7f42892b21cdf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 06:58:18'),
('c80abe69864c7bf7c5d5a3a671', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-18 00:27:20'),
('c80d391abf9ac686006ef10667', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-01 06:15:10'),
('c81a5146d15dd77b47843524a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-05 14:52:49'),
('c81ba99402f52229be13a25bdc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 17:41:35'),
('c831710a579b393dca04bb8551', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 13:41:40'),
('c8374162519d99d2bb8704d057', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:29:19'),
('c83ddf6d0ffde6bb1f3e77cc34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 21:44:51'),
('c84562628ac107cecad44c6524', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 11:37:38'),
('c8534fb871149525d313f4e884', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 12:57:38'),
('c868104047f2c7818b379d66f8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 06:49:08'),
('c86f12ad51b4c8940dd39edc32', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 07:23:54'),
('c89c9dc961d17a39d1a1976894', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 04:19:33'),
('c8ab3ebcae0a488caf8835d1f6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 13:04:33'),
('c8afb9ba4f7c5570207a1b7d51', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:36:37'),
('c8d316cfd19ef9e585b6fcd783', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 20:45:49'),
('c8dcd1af6491b08d2521650b05', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-23 20:15:47'),
('c8e1840dbdc18823960cdf1b9a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 04:19:43'),
('c8e603072eb13b767db4b50647', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 17:13:15'),
('c9054fd90a13c6690fcb92b4ff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:15:50'),
('c915f787c07b9c506c73ea3c1f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-17 10:34:38'),
('c930eb9ccbbce2fc50f4dc147b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 04:56:08'),
('c93398f28ea7b0ee94b6d33d90', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 00:01:51'),
('c9355436a8ce2cc61dde376cb0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:12:14'),
('c94857f845042a527284b4d09f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 10:19:09'),
('c95424d812f4e27b84477194aa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:48:07'),
('c95b3462e7238da0a0d1ea7e25', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:17:03'),
('c95daf53fa47884945caad1d84', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 20:30:11'),
('c9711e90cdbd4974e3c5a4f4a3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 05:20:22'),
('c97f1c31b3bdabc4052438679c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 09:06:21'),
('c9937d54e18660b2110de9284f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 13:08:51'),
('c9bb25fcdec150d8003ef9c25e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 12:24:57'),
('c9c376a17235566ac326020cbd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 01:09:04'),
('c9c4d0348e59f84c2a00f83b92', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/address\"}', '2019-04-04 05:13:08'),
('c9c7a4d2fe26bab9b63e33f469', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 09:15:23'),
('c9cb0f026596a01b753a616747', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 07:55:54'),
('c9d716ea423671089858611a9e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:31:38'),
('c9da20dea76386216b2d7fdf22', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 02:15:56'),
('c9de6f34ff7ab39ba656522b84', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:02:11'),
('c9fa2f2c9530bb28df2c8e6276', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-04 19:08:05'),
('c9fe2f48e220d9ee4b0ce57b89', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-26 04:01:59'),
('ca05cae74a37b7b7070079a7a3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 07:52:30'),
('ca185fa0d24f59a3008d9ffb31', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 23:53:28'),
('ca2af645762cf8a64e0d09cf38', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:51:14'),
('ca37e531c6d7e2b70227d380dc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-25 20:56:19'),
('ca4036642abf11742e0e03bd7e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 23:07:24'),
('ca43a320bda6777334699af7e6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 10:24:23'),
('ca6132b563e5f61da1d05ad910', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 05:22:29'),
('ca63e204a31339b931480dcba3', 'false', '2019-01-14 19:10:17'),
('ca655923521e723178e79a1fa5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 18:27:17'),
('ca6e408f549c982f0d1d0a11eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:03:44'),
('ca6f9725e346ebcb2cd6f869d4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 09:44:18'),
('ca9b158949d8b0b6f3bb7888f6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 17:58:24'),
('ca9ed9cc51c57a943402db3053', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:43:18'),
('cab610d54a6b68276575e5b46f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:46:43'),
('cabc4f7131e4e5dbf22de166f9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 03:08:48'),
('cad455bcb4dca711e73fc92bd7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 11:11:24'),
('cafe755d949bf0814a30a90950', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 19:19:07'),
('cb005a55b47feb260209d97a3e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-11 03:24:33'),
('cb054583ca754959e9f956ab96', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 03:26:37'),
('cb05d1110e3b1cce9e65b20557', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:54:55'),
('cb13687c64a2676ad38e1be27f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-18 15:54:10'),
('cb2e44d4f942edf632ddd91fa2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-07 03:37:20'),
('cb2fbc9da674e07961a12299d5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-18 14:10:10'),
('cb461455a44db0e01a588fa9c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 12:40:24'),
('cb4971fb9819adff90e73b7976', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-31 03:36:43'),
('cb4d61b08dd0dd23a0e160f40e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:12:42'),
('cb61284b5c6785e71bb727eaa8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-09 06:13:57'),
('cb66883ffdf1b218b0dbc11f13', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 06:38:19'),
('cb68ae1cb7d410058199850e4a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 00:28:38'),
('cb6b326ff3e6f78c92c78dcb03', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 22:10:25'),
('cb7c7985243eb7f49bdbbc11e3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:29:24'),
('cb83a27f93a3cc8effe0be21f0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 22:50:37'),
('cb9376f20eb75f05da7e602d35', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 20:01:06'),
('cba5775783f721170a6081323c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 09:15:53'),
('cbb2327d0e76e061c2d0b32234', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 10:50:37'),
('cbc52f7755c2a66af14488ad1f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-27 03:32:47'),
('cbcf7aecd66197f08b77ce37eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 07:13:20'),
('cbd1a637228c6797a1886189a5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:38'),
('cbe378097a9981178b7cf049c0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 19:17:43'),
('cbed87810290cea5daeb5db94d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 20:44:41'),
('cbef9f788a3c70e0f25f972f87', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"user_id\":\"1\",\"user_token\":\"63faCAnd98Xl2WlwdGJGwnbz7lU6KF4m\"}', '2018-10-03 09:57:01'),
('cbfaf8be897b5af2ce6998a6e0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 09:58:20'),
('cbfbd14414ba06e77628caa678', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 19:02:11'),
('cc24e61bbd42375d306f4846d3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 22:26:11'),
('cc2a91522a6febc2472e1a6f84', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 00:39:56'),
('cc30830d9601a5e97a791cafbb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 00:53:10'),
('cc3d35e30d231d23d97659bcb5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 12:40:50'),
('cc3fd1735f8e99dbe7c567514a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 23:45:46'),
('cc50fba8139db4a5b173a03a8d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 22:00:46'),
('cc560ff06bae3028b8875ecc4c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-19 03:18:46'),
('cc7592b4ba6d7ad7c59cf44bcb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 06:18:11'),
('cc77ee5a072cdf8c79f4c540c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:49:17'),
('cc7bb533d784eea6f0a82c2c11', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 02:33:46'),
('ccb7e08c6701e152efc5ec3f87', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-13 14:04:44'),
('ccc83ee9ced6c4a5facac7fc95', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-01 01:48:16'),
('ccd1d6b353a5a7574182f6f916', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 22:19:59'),
('ccdc99f31c2b7bca844551f781', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-26 02:23:03'),
('cce197a2afd9384963cc33a15c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 23:14:45'),
('cd00cf9c62274f8d986d97e532', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-01 00:53:07'),
('cd178ea29349fc7c3cb337a6bd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:46:58'),
('cd2a95fa64a6776a1457680c22', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-04 20:03:13'),
('cd36d05b003d0043bd2fde731a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-12 21:12:17'),
('cd3b4802afdbd855686509b843', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:25:31'),
('cd44bf97ab72f6cc4c84032afa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 09:44:20'),
('cd4ea1d27ee1cd6513cc7a922d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 18:41:36'),
('cd6a4e75264a7d279ec1384edc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-18 13:38:37'),
('cd9aaeb58e725edc1158e0c3d1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 05:44:57'),
('cda028235e0f2cafc76754d670', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-02 23:49:13'),
('cdc6f32d378f98a109df9d0345', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-07 16:57:45'),
('cde34853b27c3c1e88dcf556fa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-02 00:10:36'),
('cde492b219cd24e46c65df55b1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 05:55:04'),
('cdeeac89adc20c437d48a74531', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 08:01:57'),
('ce016ff22177bd9b6ccb001384', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-15 07:40:07'),
('ce03c161c5f192bc0373805c07', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-09 08:03:27'),
('ce0d41304a36485da0f66f1d40', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 07:07:22'),
('ce1d3a376373df6c5755d51e99', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 07:33:33'),
('ce2beaf56cbfb552a5d6302d53', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:50:28'),
('ce31c1c22bd6047ccbb6077fdd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 03:15:10'),
('ce3a3d500119ae4677d8b67fcb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-27 15:32:21'),
('ce3e9ce0d0098d22422076334c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 09:35:50'),
('ce4028b00826b708c522af866f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-07 19:18:26'),
('ce58db21d77030cf063ce2be1d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 08:38:05'),
('ce6b6be63784a5e29b56f76272', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 13:55:51'),
('ce7f3bb3ef92d959e5c235cfd9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 01:44:51'),
('ce831b76435417fa349505dc6d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:20:28'),
('ce880d28559e427b8aaf745807', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:11:15'),
('ce9264bac2fa463ef8e6dddaec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 00:56:22'),
('cea3bc9faf755d8d9fcb30ec50', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 05:07:22'),
('cec22920c031471e4605ef4047', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:32:15'),
('cec3bf510216f6ad10f896825c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-28 05:23:06'),
('cec6e3057ff2fb0d8548ca1b06', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:47:48'),
('ceda584b20b0fa4cdf168a9028', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 13:43:36'),
('cee270130a1b949a84270ac571', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 01:38:06'),
('ceea4a5f3b7b63e1134a0523bc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 01:09:32'),
('ceee9ab957e40f9943c652fae7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-14 21:53:15'),
('cf176380f0bef93c8aa505b36a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 13:00:43'),
('cf4b044f31379165b90b2139a5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-25 22:10:36'),
('cf584898230d8f6d4bb9d64c80', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:31:55'),
('cf59795c08f4df36ac9f5fc5a9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-06 20:18:54'),
('cf70c3a75a16471f2dd5d8c4d7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-23 14:55:03'),
('cf87628eef42bd1fbc13409972', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 22:30:19'),
('cfa145a8631e8d18e34f766098', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 07:18:06'),
('cfb5350a1c93768c7fb2c8ae9d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 02:37:38'),
('cfcc710e101a73dbf36d0140d1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 12:06:01'),
('cff140fcd07da50bc755369143', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-22 03:32:29'),
('d000ad197ba63ec0cb3869c8e0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:57:27'),
('d0076a8bd0d93ef890b9e4a178', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 12:29:17'),
('d00a1bb9d11ad763122339f4f7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 18:50:29'),
('d00aa2c027f79a22f541c57289', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-29 03:09:45'),
('d0171ce2304c4c3a5e6da087db', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 15:56:35'),
('d017e2d8846a7c127e37fc5293', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 09:49:53'),
('d0237309d2708e42b4caa6dea4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 14:47:14'),
('d056e041eb9715a23f7b761b97', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 06:53:05'),
('d058856e09a3c6bab2b29c75f2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 08:52:35'),
('d05907a33278aed5ae886f9089', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-02 06:40:15'),
('d0596d2dd01179799a565d063b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 04:45:07'),
('d0609c4875909ee5575bb8879d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 03:27:26'),
('d066fbeca3fb222e36c670c333', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-07 16:09:58'),
('d068c671ae86c853a4948810b9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-13 00:05:55'),
('d06e39c02b74056305f9d1819b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 09:44:01'),
('d0755e698c9026470a83830be3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-02 07:20:53'),
('d075bb4155bcc7bfb421a4a741', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 10:04:15'),
('d0aa5c886e5e24bead58f76144', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 13:55:14'),
('d0ab864087a70add2ddcc4ac9e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 05:10:24'),
('d0af5076e8736729123f16fe26', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 15:34:44'),
('d0bffe9c2ea82f47754e758814', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-01 19:19:47'),
('d0c0bbdba0f54244a68457d7e1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 15:50:03'),
('d0d000842f0c2b963169009e38', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 11:15:00'),
('d0d0a33be006db7a002a8383a4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:43:36'),
('d0d1684f513280ad06c90b13ac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 04:37:27'),
('d0fa06612f0e014d4b200133e5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:08:26'),
('d1002a350f937f11538bf567bb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 10:12:48'),
('d101c587d5fb4e074931b12e9a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-22 08:01:14'),
('d1207076c8c55f977d0a97cc3e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 16:19:34'),
('d1214b06fc95ea18de335fa30e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 01:31:30'),
('d1321d1e83fd58545ae767c673', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-29 23:14:07'),
('d1360246a279b77225a65a7a6d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 16:33:07'),
('d139d798ea69ee31f255ba58a3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 09:24:18'),
('d141b9c27ec9223fcdaf08e5a2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:38:22'),
('d14962591356fc0624b92bcc96', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-23 21:27:05'),
('d15c6dacbf4678332bb3cd8def', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 16:41:34'),
('d163ec5b8c9d7f1685a13fd584', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 19:05:41'),
('d16c4a011666ef50d49cb3b49b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-13 11:16:11'),
('d18cc5b23fc320a54e637552cc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:49:35'),
('d198ad74a01d3374e7a1d0b81f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 18:43:09'),
('d1a1989925b9e70baf6b8402d7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-16 01:09:27'),
('d1b14b1c47e478e948f098ebab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:00:42'),
('d1b6ed2acd4d06e63237710d89', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:17:29'),
('d1c3c0ad4f6880e4a941e634cd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-02 21:39:51'),
('d1d46d3ea27df7a1f26132d8e4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:52:02'),
('d1d9a4b0546c0f2c91725828cd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-27 04:56:31'),
('d1d9cb0fab6a5941ba23fa2541', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:44:55'),
('d1fccfa2b48f88de274c77ebfb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-15 10:05:00'),
('d21ef3f96c81861ac2b487479b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 13:17:25'),
('d22ad9e139c73d196a1cd5cae7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 08:55:03'),
('d2307f00365bcf98d3697c5596', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 09:02:52'),
('d245d159c344968fd44c505908', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 22:42:23'),
('d256c2ed6e2cac3fad370ce6aa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 06:02:50'),
('d25f3694dfcb33cde14956c2eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 08:37:46'),
('d26c1f471962ad57b4b6ad2dd2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 17:49:04'),
('d2904404a27ae64635b416d2d2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 14:36:30'),
('d29608783a69353e7683c8bb27', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:08:24'),
('d296a9ca931f3306ec9c85e38f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 03:03:26'),
('d2aae49371d32321b8e7f1d84c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 12:38:54'),
('d2ec4d98a0b8becba5588265ec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-12 05:55:26'),
('d2f149e334a0764fc1b8b2c555', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:35:17'),
('d2f661e023a40b228c655cf8cd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-17 08:58:30'),
('d2f8e8e6c1890801d62ccf4ec0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 18:10:24'),
('d30004ba7b0ccd52f47a2bd3ed', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-06 01:19:08'),
('d3042b4121c701d3f862f68871', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 16:48:07'),
('d3059d87bfe8d00f3bca01e06d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:53:26'),
('d30b6aefb4d11c3d729d850157', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 02:37:41'),
('d30d00a79b59f3f2912f82ef6c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 22:29:54'),
('d3275007d2986474c25fef6bed', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-27 16:23:08'),
('d327834f80bc804fcdc8cbb27d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-06 10:44:35'),
('d3748664b79f3913b7759e4ac4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 23:07:34'),
('d3781400acdec7d2ce06363970', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 10:49:54'),
('d387fa4f46be858f9a4e6732a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 00:58:27'),
('d39f9cb0d57d3dc9312a6dd41c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:40:44'),
('d3a46e3dd25d06ec057cc34061', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 05:05:48'),
('d3b9e04fd342f34a543f381eda', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 11:53:38'),
('d3ba4f3d54aeb66ec17d571eb9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:57:39'),
('d3d23795d66b12c7f19e2b708f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 09:26:24'),
('d408670b22ad674072100d959d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 09:23:47'),
('d41850e3c721ab3c5301170402', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 18:36:57'),
('d41b3f2c82129caeced2a0df17', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 00:19:39'),
('d42351d87a46ad772d3dba5166', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 01:09:58'),
('d42ddf5c1028904dba84be22af', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 05:50:25'),
('d43ca4ca5730038e089775699a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-05 00:33:10'),
('d455bf3a1e4d8a4a567a8da7cf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-02 00:51:06'),
('d4642c734126669cb7774de517', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:15:35'),
('d4693cdb71ff64ba65dc0edaf3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:37:39'),
('d4870599fafdf7b6469a6a1219', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 21:52:03'),
('d4876b36af189adc367928a34b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 11:58:25'),
('d48966121f0cf163a8e725f669', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 07:37:39'),
('d4a35c7c498b32f7a8088a7b13', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 09:44:24'),
('d4ae95603c0795ce8dc7da17aa', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"user_id\":\"1\",\"user_token\":\"lgPxr95XJHKnFiqt0nB3MNHAw6C8Jg5X\"}', '2019-04-23 01:22:03'),
('d4b62e49268842b694c0c1617b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:16:34'),
('d4b9acc10b0b949aee223cbf59', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 22:22:13'),
('d4e4e3848edbc59c6030dcb71e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-08 01:38:08'),
('d52e8d1d20fa4186bb8b2f7a64', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:36:41'),
('d548a66c2543dca4a11bf07545', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 12:06:28'),
('d54f56575864099fecdbbe885c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 22:29:44'),
('d55c47d3328077e6955a0c0638', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 10:18:58'),
('d55f4107e70f5d927463309271', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 13:21:57'),
('d5686a17ba2536d4ca504f2206', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 20:05:57'),
('d5743e7b75ed0bf46fa8926259', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 14:56:22'),
('d58689a5748165bc6eaffd3af6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-08 10:37:35'),
('d59d9b56fe7e53fa6e2fb62508', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-31 21:59:47'),
('d5ae496f0c1892c4813673444a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 18:08:03'),
('d5afd53b6d4a04d71a8e5172ca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 15:36:35'),
('d5b6403b56adff487a0c8950ea', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 04:46:47'),
('d5bf16ff80eaeb64d1b4bf8da7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 19:48:22'),
('d5d017564f4d491e8a665e137e', 'false', '2019-04-03 23:15:22'),
('d605924e51335d4ab499ca503c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:41:27'),
('d607a100bd9c97b085e029e900', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:39:15'),
('d64bc65f0d8e428d6bf57c8ddd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 20:46:36'),
('d64e18d6d7b5b6d8269f5b07d0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-02 09:15:40'),
('d658ce1dda9ba67755023df46d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 07:13:03'),
('d6660ce3e5d4774d9fc6eeff26', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-16 02:23:18'),
('d67a54326e28ecaf0909b5fcc5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-05 14:52:59'),
('d68115eba8fafe9b09cf46fa2d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 02:01:54'),
('d68469fa783e30ac856c3c7fa1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 17:24:45'),
('d685d14387e745ef38805e0e23', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 15:36:36'),
('d68cc4c8a4d63888bf6ff3bc37', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 20:09:03'),
('d69a3eef2c2b0639e7e3db314a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-26 23:53:34'),
('d6a54a8840b0d435f94e7cff3f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 13:53:44'),
('d6a6a5d295472102626bce0139', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:22:58'),
('d6c3b0cae0ac3819cb71f1317e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-18 00:31:14'),
('d6d0642d84754e4f2949431087', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 22:11:30'),
('d6d41be84086ca81a13b632bef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 16:46:11'),
('d7011a5a2ddaad4e0cbdf33703', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 22:25:15'),
('d7216a8ed66cfec6fb4ebd88dc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 07:47:07'),
('d726a40e71def336116aaa8380', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:48:09'),
('d728dc754a8c0ed5d59d804a21', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 14:53:44'),
('d7340d30cf68280210a4e31187', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 04:37:25'),
('d73f0f2e3f84bdbd37d65512f1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 22:11:29'),
('d74f9f2102e617eaa3f517c8a9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 11:48:34'),
('d75f4d1edf172a45e9a3e87831', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 16:58:47'),
('d76263f11640f004bae40f7ec8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 08:59:32'),
('d763b0620b4243fcf430aa94fa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 00:13:12'),
('d765335f943919be3ba42656fd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 13:58:51'),
('d76a37ba94bbb6635459fd618f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 10:59:59'),
('d76bb553ca403b8f958056d6a0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-22 06:44:38'),
('d770e9646159afd8aefdc1fee4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 10:17:08'),
('d7819d3be08f36f94446e974af', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:19:05'),
('d79c3c24b71291e1997963dfbc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:20:25'),
('d79e09d28a1fc5f8b077863497', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-28 03:54:20'),
('d79ecc215686df38b2168f78cb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 07:33:24'),
('d7a4f600f03aba81b69927d870', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 15:30:15'),
('d7f6de03e07e6aaf6408e27824', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:52:12'),
('d7fc07dc3b1b919c91f0bdce92', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 16:10:11'),
('d803801cabfde1ede66338515c', 'false', '2018-12-14 09:46:48'),
('d808fd849f9ee8ea555dc87398', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:05:34'),
('d80c1a23f68e8bd989e25f5786', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:15:41'),
('d820ccb1acde806a9c227ec9af', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:20:50'),
('d82a48e07efb9c039e63e09614', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:57:05'),
('d82be17c4816ca3a21dc73fed3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-24 05:28:47'),
('d8324c4dcea9da84c03d7e7e00', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 22:59:14'),
('d83ab9ee96aba31054ac0545a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-31 09:08:40'),
('d83f5feac1fe185b5bbe7cdd2c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 13:11:25'),
('d8478d0d910ca12eb17db0ed61', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 17:41:53'),
('d84f04469ce7a57c90c07ed80d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 16:29:52'),
('d862099bdccadeee0d9acdcac8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:42:01'),
('d866987aaa64e55a41d5aa7c2f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:52:55'),
('d874bd9c96cef4303cabdabb39', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 01:42:36'),
('d88a5fe88622477030b85542f2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 10:41:48'),
('d8922914ebd6b0d7774ae9d418', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-22 21:52:08'),
('d8925ff7884b3fc9f665287d26', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-17 08:27:29'),
('d8be05ed78ea194c30752bbadf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 04:12:59'),
('d9070fdac461ee91604d68ce24', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 11:45:59'),
('d9190eb149eeceb03a477face1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 10:24:24'),
('d922f922ff46845cd58cb7bc80', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 14:02:29'),
('d9266179486f146d3edc1d470e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-15 19:08:53'),
('d928eb1e53b6f0eeb2e246ce37', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-02 23:49:47'),
('d92ab64c55a78ed52a9d209896', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 03:13:52'),
('d942d4c2201cd26ba3c4516710', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 03:19:43'),
('d9449e3dd9263c3613010542b3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 14:10:43'),
('d94676ad6ba49ea17e210ba3ec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2017-08-30 16:37:59'),
('d949171c46e1c9dbe627477f4f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-07 22:24:39'),
('d95d2d55365df34bd1fc10ec73', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-08 02:30:03'),
('d96cd82d3e89c33acaece81a5a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-18 05:20:58'),
('d9780a22f37561fc843cabfd02', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 12:03:38'),
('d97d5731681fee4de872ead537', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 00:49:20'),
('d987c04a07f4e5f40acbad27b4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 21:44:47'),
('d988aae74efdaa81673b2ebfb4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 19:32:18'),
('d99f6b0b68592b9426970ce6aa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 03:02:11'),
('d9a0fe20214c72dcc31a66c9e9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 05:59:28'),
('d9cf1a3759593354d1ca0bfbd4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-27 11:18:13'),
('d9d86412a406c33d5f51e51211', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 22:52:37'),
('d9e0efb630f5e239fcc9e7bc8b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-18 22:52:10');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('da067beeb0846bf5ad195f66df', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 00:06:17'),
('da0d6a1b2448907b5a92e435e5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 00:25:01'),
('da1fb8eff7027db1c4b6a15368', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 20:31:25'),
('da49b41ee30780213ea806d7b1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 11:34:32'),
('da7e4fa4be74c46e5fdae36d6b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 16:53:13'),
('da90e5bcd08513902950ec92ee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 02:44:44'),
('da93c2f107e302992426da6046', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 17:37:32'),
('da98d5869daa151d006eba06cb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 01:11:26'),
('daa1e979544e54ba2af01e9a86', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-02 12:30:11'),
('dab324e53833eaa4963cef1767', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-23 22:46:04'),
('dab3de3b11c5404ea974d51fb0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-31 18:32:04'),
('dab4c477cbea9f4afbaefdc8a7', 'false', '2019-01-14 19:10:13'),
('dac93592fa777d5484a1ffa03a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-02 06:43:30'),
('dacf80cebc2f7135ba95b526a9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:44:44'),
('dadddea73ed35db5dcd108f25c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-26 01:40:17'),
('daf0346e80c3a0575a55920905', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 17:14:29'),
('daf06049b981c4e35a4fba3733', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:32:11'),
('db09733f89cecd104e378990d4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 01:32:44'),
('db0fb20bd56254053edae2f22b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-22 03:50:06'),
('db0fc0c1cfd54d7edd33883b82', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 17:56:31'),
('db40eaf62dc114a581147407ca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 11:00:13'),
('db4257452544882a7c425045e2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 02:32:46'),
('db5f47e2b3739c8e2ef3c614e8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-24 11:02:17'),
('db60efe2fe8f420c99fab7637c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 21:11:34'),
('db6a7feba2c91ffa498dd4bfec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 17:49:58'),
('db7ad7b5fcf4801e8c3def906b', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"user_id\":\"1\",\"user_token\":\"MafLzT9WQ1zjsj3ach6hDyUSSsOZScG2\"}', '2018-10-04 07:11:49'),
('db85164eda21317617678b78a0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 08:00:46'),
('db866233051c1d723cd31bb64e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:36:51'),
('db8aeadadcf8acd0a8ff512830', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-24 07:56:07'),
('db927b7904dea70c9fb86c162c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:33'),
('db93ae2ea7d1cf7dbe918208c6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:14:50'),
('db95a09ad1921f785483220800', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 10:29:59'),
('db9cd7054e3f5ddf12810ba701', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 06:00:43'),
('dba443be0bf16207e241d97fe8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 02:44:10'),
('dbab58f9ee359d99c9948c368a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-14 06:39:32'),
('dbaf569e5877ea840ffb80dec9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:36:59'),
('dbb0e0759afab7703724dab713', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-13 06:13:47'),
('dbb27a5f7dbccf4b93603c1186', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 03:42:09'),
('dbbff269a5cc0de9c43be2d6e1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-07 04:39:45'),
('dbd920b1605b3565761130d0dc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-21 06:49:45'),
('dbec0bcb04809df14c46460cef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 08:06:19'),
('dbf4066ec1aaa3b9f3e460ef7f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 11:59:30'),
('dc009e254dfcdd83200ec792f4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 02:26:42'),
('dc186798245c19cee5ee2d6dad', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:33:42'),
('dc2ab920eb06c68b04d6f2ad71', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-23 12:30:37'),
('dc3d0ccae7e2b46484da5f7b1c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 19:39:20'),
('dc475271fd3fb7c9d1caa73b71', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 22:08:47'),
('dc4d2374be4b423801ad3934f2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 13:22:00'),
('dc58c58789b4481eb782d28682', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-03 04:22:01'),
('dc58e90b4966ba9c3efa134b53', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 11:20:55'),
('dc599c34a945a8257bb81cae74', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-03 11:48:32'),
('dc66b30e08a18c1ff97dc3201a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 15:17:13'),
('dc6ea0a5e6768c6fce3477ab39', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 17:23:12'),
('dc735648ae6eab8c724bb50e37', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 07:36:32'),
('dc77eaba919453e404d35e4e37', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 14:19:18'),
('dc85fcff82d4f0772a43c942b5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 14:01:49'),
('dc86cee5ed3205276678e42064', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:53:39'),
('dc8b5c283fdcebe1a17d23e05f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-25 23:27:51'),
('dc91f7ccae747fe71b9b376f01', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 05:50:51'),
('dc92da89735fe782672b2f70c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 18:24:55'),
('dc95f8d523720507f816c3b3c6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 18:34:28'),
('dc96e6fd2d31417b56caf75114', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-29 20:43:38'),
('dcb3f950aee7155235547710c9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 20:12:15'),
('dcb96cc93a479805239f3eaba3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-05 14:52:49'),
('dcbfab1285e56c122304e9a9e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:29:59'),
('dcd4f90ec61e7487af9e19581e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:32:54'),
('dcd6b9884fdf0cabb76afc404a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:50:36'),
('dce378760e2d61f37b515b3a44', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-14 08:05:52'),
('dcef2da13e356ff0aa3bac89a9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 11:49:51'),
('dcf0bc085a2416d1515e51b34d', '{\"user_id\":\"1\",\"user_token\":\"62zWWaeQaLvWGZPJjJaEPyjECsejEyI4\",\"language\":\"vi-vn\",\"currency\":\"USD\"}', '2017-08-20 02:28:40'),
('dcf0cee058e7a1617f948c5e5a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-21 16:30:16'),
('dcf3deefbab2f4bc355ba9bd8b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 06:32:49'),
('dcf3fc08a7fcf7d1c9457ca111', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-07 18:15:18'),
('dcfabd8b37445eb1006e83928e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:03:45'),
('dd0fa429c5d8a746c5f9c35a41', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 06:09:08'),
('dd32b3c7815a124f7dea39ee0b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 02:54:22'),
('dd38e0cb900c375a5bc25e6a78', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:09:59'),
('dd3f96853123d6fec327730f75', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 11:42:45'),
('dd4d3ca01e23351104cb66058e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 12:56:45'),
('dd53be4d7fbc961707dd524e46', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 01:07:50'),
('dd7ebda9e9e892c50bfbe4c673', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 01:13:40'),
('dd84d5fe681d5bc5edf482b4f8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 10:55:04'),
('dd99045518b02fcafb6cd30782', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 13:04:37'),
('dda04639dbfc2459141c16fc6c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 20:53:35'),
('ddc5e58335a3ea2d54cb9f5452', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-27 11:18:21'),
('ddc7a5082f376a6dd1254169d2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 08:22:05'),
('ddd82de497f8f0602426ecfa6a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 18:27:13'),
('ddf11093d0f924c50028ce599d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 07:56:25'),
('de093696303714733f27f2389a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-24 09:56:13'),
('de0c81a05971e89f4bb5096368', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 00:14:42'),
('de1bf66e2e9449760b4a3249c9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 17:37:31'),
('de53b1dca1da7a5564af871849', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-29 19:22:36'),
('de5b8c12e56db2c83c4cb96ffb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 21:31:02'),
('de653d6611a4f98f4e9f13b505', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:18:00'),
('de7b1b10bec3a6fa9ef4f7f8c4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-22 04:09:47'),
('de7d7d9ea033af01c337aebf6d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 15:30:14'),
('de95895cc2a7d291eb098b0ead', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 20:12:37'),
('dea3ea79b6867a4246cb1732cd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-18 13:38:45'),
('dea9403ea9ba259a417b6c66cd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-02 23:05:47'),
('dee8cea8d7144b0855f84dd792', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-08 18:07:17'),
('deebafcb5979bf50ef51d48ee8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 00:18:44'),
('df09f8e77044f56a3ea03e0a19', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 23:18:03'),
('df12a66f24cdfc8c6e39aeb05b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 22:27:19'),
('df2d55b9684771d47c8bb56024', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 00:58:24'),
('df410327e5a1ca8a3d5a8ca6e9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 18:10:25'),
('df5a85c36bb98b2c8a1da04d65', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 19:58:19'),
('df7444dc4afa8951c958850bee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 00:37:54'),
('df755a1d17ff0a62c58f7b5fe6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 02:37:08'),
('df799ea749cd63907dbc6c4a5a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:43:34'),
('df8121bbf0f5faa6653f5f3134', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 18:28:15'),
('df82ed2d78f25e4bb0aef18e09', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 07:25:18'),
('df8d4da0dcfeb544005984a899', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 18:01:35'),
('dfb505c1ccf98303031ebdbad2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 17:06:59'),
('dfd470a5ae1eedc56b06800c98', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 02:44:43'),
('dfd70d8f4e45a803a90b90ee58', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 07:40:20'),
('dffc1c9c530c1312692ec32926', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:24:46'),
('e000599f01c17b0cb3e3d5f130', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 13:06:10'),
('e0027c083ccb7183c98b844b74', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-29 03:09:31'),
('e0079ed9c8dd85a75dd41f7e90', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-15 12:46:38'),
('e0097c3e89582c09a6535fd803', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-02 10:12:48'),
('e00ecbb5e82b7e44fea8a03e12', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 15:29:54'),
('e00f795478f58e893542c8e67f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 19:43:38'),
('e02cde60fa4aec16cb43862e72', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-01 12:03:20'),
('e030f5a465d5314a4e929ecc24', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-28 03:27:12'),
('e0321f1abd1f9377378e20a2cd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-19 05:19:31'),
('e081d2e147dd6e40ac7b7b4987', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 13:16:42'),
('e0880ae3c12962a46e0c9dc29d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 18:44:16'),
('e091bdf1be67a7518b345ecdf7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-26 00:33:57'),
('e092e694810c103fab187b969f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 02:35:44'),
('e0a19ff13231c5f705a73c60cc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 14:58:41'),
('e0a3896f153db442d4badb9ef3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-28 01:13:32'),
('e0ace6259d94a4b4d973f2d4b1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 14:26:39'),
('e0c7b56186ae69a90327bf5da3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:49:33'),
('e0e6a75e664a5d9b2fff3ccc87', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 12:07:33'),
('e0e9eb65079bb724861bd62070', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 17:05:12'),
('e0f75ea83ff67fce40619f1ca2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 06:17:52'),
('e10c7a6047314ad91e87a0192e', 'false', '2019-01-14 19:10:15'),
('e10cf95f2efc67f5a068cf22f0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 13:51:00'),
('e119f960177172418d7974e82f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-28 17:18:25'),
('e1374f1acfc7c1e8c104c344ce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-11 04:22:41'),
('e13b1360190c1083552556e4a4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-29 02:08:27'),
('e14978a9f9bb06b0d307f2f8d8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 00:28:09'),
('e14d11109d4175ed56a93b8d79', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 15:58:03'),
('e1553fb1c6dc29281fd5dd312c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 03:26:12'),
('e15a408e0177d3c846f87cfc44', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 06:35:12'),
('e1612c4552ba1c72abc5707a37', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 14:51:21'),
('e168fc8af62e4c2c85be98a93c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-08 06:16:37'),
('e16d8e346255dd6b015496be4e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 01:20:41'),
('e181271051c1ca63e0950afce6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 05:48:53'),
('e198fb3a5e03ab87a955db37fe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 19:18:04'),
('e1a27a8a53f82e759399a5c9a4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-10 14:02:50'),
('e1cd5747db3802aba9fde9e389', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 02:48:35'),
('e1f36187adbf17d081db881491', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-01 11:43:42'),
('e1fcfa1b239605e9e3bb27bad5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 10:48:13'),
('e223efad3cc6c6275030f2c499', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-30 17:53:38'),
('e22666d6a517fd1e57c208ce91', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:59:21'),
('e233173648f6ca6303e806e9d4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:19:06'),
('e23ee76c30b0fed51dc13a4e6c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 11:21:51'),
('e23eef58b6b9fb8f78361b4347', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 13:46:37'),
('e24645bce5e5089e368c6ad3a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 06:19:22'),
('e25974baee87db82919c3e18f6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 08:03:28'),
('e25d3517d150c76140d1f86623', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-09 18:12:43'),
('e26a39f3235c649ac14ed62538', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 20:53:09'),
('e27a1dfd67cd2d3f602e75ab04', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 17:08:19'),
('e281e2999c4782e82eaf353fbb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-29 04:08:12'),
('e29bbfeff047a0b4dd9a73c11f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 18:29:10'),
('e29effed8eab4632f043c0ce67', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-31 04:43:34'),
('e2a014a4d89008844fd86a56ce', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:28:02'),
('e2b2318d251917030a7302f0cd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 06:23:09'),
('e2b6821dbc438e499dcc9c5df4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:54:02'),
('e2baedc41d6e019c82891c35c0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 17:48:18'),
('e2c40a9032be7fed84f4794e22', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 17:14:11'),
('e2c6a578b11a9bee9a96e731f7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 04:34:07'),
('e2d1d720d949faae668b1de987', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-02 01:53:35'),
('e2d340b4ee6db72134010cbac2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 03:44:36'),
('e2d367e197510af559bba23a15', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-22 09:16:39'),
('e2d5c23734a9c3c7d45da6840a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-22 05:07:12'),
('e2f1bc0f03fa60bede2049e29f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-02 05:13:24'),
('e2fb28c935ea25c2a0973f1775', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 06:45:55'),
('e304a76ceaff446f7c4298dc2e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 17:49:24'),
('e3278653d136b95d122c69ed48', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-15 03:26:55'),
('e32ae96578da2268d82c2f3a64', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 11:34:36'),
('e32f85acc28f995e332f8e72b2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-13 04:36:13'),
('e334be4116f83ecd60f417fa91', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 02:29:31'),
('e33b612060e3d6db6cd4569487', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 00:19:30'),
('e354add6e7cdb72d69a8fce2d6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 19:58:22'),
('e35d242f7357e070ec8bb1b155', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:36:40'),
('e36215cf35d750d434611f1811', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-12 19:53:24'),
('e36936b43ef609782024f07eb3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 20:05:17'),
('e3784d4f23ad619c12317d7e43', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-03 21:09:48'),
('e39055ee1e29d40a1ac00ccce3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-17 10:34:53'),
('e397e69dfb8ad7779fc545caef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 05:01:14'),
('e3c271f81daa3cf41a2719e8e0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 04:31:10'),
('e3ce97ac0d67747491f4a3ccf0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-25 06:53:49'),
('e3d4578142abe208b78830602f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 12:19:27'),
('e3d81aa39ef123beff3b1f8281', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 16:09:18'),
('e3e69a91dc3f692186f33ed98a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:20:22'),
('e3ed2ce777e9de4d939f66d0e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 19:47:37'),
('e3fc37cab1a8962fec47686555', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 09:30:12'),
('e401968f594069db1b285cbeec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 15:52:25'),
('e41ca1ef91deb06388a641bb73', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 00:50:26'),
('e436212a88b2a917e45636ff3d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 16:19:42'),
('e43b74d967b33ad96b43a894a4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 09:27:32'),
('e462c75a00b65a006352184b89', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-07 09:14:37'),
('e48bf87bd752baeea1f7c7dde4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 10:28:34'),
('e4957d4425cfa98c7251ba707c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 16:22:51'),
('e49b2ed4fee6962821d608d3e6', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/password\"}', '2019-04-17 22:04:38'),
('e4b8ea340e6d5e1314a91e68de', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 12:29:54'),
('e4d6457dbca2a6d497c13d1ca4', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"user_id\":\"1\",\"user_token\":\"zizYkvdU6aINdvy0alN618zNw6yDc6CJ\"}', '2018-10-15 02:00:40'),
('e4dd5a5f71d17c503d3b489af0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 05:28:04'),
('e4e04a767a26b756d2f3f6f59f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:54:15'),
('e4e5b433496c905fa6aea28b9f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 23:42:17'),
('e4e7182f7df413490c6ac6be5e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:42:18'),
('e4e8c532ed83c2350aeab54566', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 11:09:25'),
('e4ee5c625cd3a63034079e914c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 07:17:37'),
('e4faf2e1a384a8ee843d8ca533', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-09 16:00:09'),
('e51150884c47f53148a9a3ad6c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 19:51:17'),
('e513093233a6091870f932ae5b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 14:24:19'),
('e52da451748f810d5576fdf9c5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 05:24:21'),
('e5332f4541e5646a71d27b6184', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 03:01:21'),
('e5347c6372d5a70c41b1b71531', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-25 22:24:53'),
('e5353bd2cfc383de5258ead5b2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 22:21:58'),
('e53b7789082a2b48b9fd92ee4e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 18:08:11'),
('e54842597dbf6f639c283b0cf4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 12:50:27'),
('e55d21c70823dacaf1370210f1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-19 08:31:33'),
('e5694134d660eadcfbefcd5a22', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 18:14:07'),
('e570d9516557ce44a449cd57da', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 05:44:13'),
('e58f47120515b69ac3d07aa582', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:26:30'),
('e5a21d3f4586a36747aea4c986', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 04:51:02'),
('e5ad60623f4a979db8d565a2ab', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 14:20:36'),
('e5b472aef26609a4b778590b91', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 13:41:38'),
('e5bc182dad9195b391cd1f2907', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-05 21:29:42'),
('e5cc2417db84e706cb3dff6dfc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-15 04:48:07'),
('e5ccbef37420036d75066a0676', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 00:04:40'),
('e5d2976ac3e1bcd81490b6aa49', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-30 19:27:51'),
('e622f9f6c0c76325a1a5d378a2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 23:23:06'),
('e6246d1f84bd4eee523b4db8d7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 00:32:59'),
('e637bb31f6368fd1fe36a02170', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 05:00:40'),
('e6450bf36936ff469e72f67d04', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-26 11:07:04'),
('e65e125a6d02ea8c8c83a012f1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-26 03:30:49'),
('e660c62cf395d014dfb1dbc8ec', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-09 07:02:58'),
('e662d209b30ee60a7aab4f2928', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 15:23:17'),
('e666815c427a49ff463c366d27', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 09:50:29'),
('e66a447a6e0bfd11ea418cfed3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 08:39:26'),
('e67dc73ea76a54f3874f8bd9f8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 16:05:28'),
('e67e7ca51ae85ff2193c8cd886', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:16:02'),
('e68aed3d789a62e148f508d664', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 12:37:19'),
('e696500de6f645973eb2915ae4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:50:36'),
('e698f9cc75bce1a3f78590b642', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 03:45:13'),
('e6b99bbf7a8df07686bb549501', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 22:47:23'),
('e6c9bffca2a1420ce82b78ec33', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 05:44:30'),
('e6cce0b463620d82b8140f4ddc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-01 17:39:43'),
('e6cd1c0592791ade00b83c779c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:24:01'),
('e6cf6ec9d8953e98f36e21a7a3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 08:44:14'),
('e6cf8a4ee7fc15833791740a2e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 02:35:24'),
('e6fdcb1f65aa2971e9d84bd0db', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:37:10'),
('e70b47758d247ac6b3d622afcd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 19:43:59'),
('e70ea56bf7f57ee80f872387e8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-24 11:06:38'),
('e7164f8badeae8bcdd5dae1e34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:22:44'),
('e72295778f2d28dfc49b9b64d8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 02:01:24'),
('e72346020444289843eb00d98c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 12:32:05'),
('e724f880bb96260f063bf75ed2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-04 00:35:53'),
('e7311dab1411ca7e948c1c23d5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 15:22:27'),
('e7414b785b166cbef17c2f80fb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:31:04'),
('e7416c5fdc6189be775d249392', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-08 22:19:51'),
('e74776e652b80672658d8f11ad', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-27 20:06:10'),
('e74c26d49e7cfabd7fd2f0021f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 15:05:17'),
('e75a3f2c33627ff274729e4e0b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-07 00:00:30'),
('e76edc21cd9a286af48eda5f30', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 10:03:49'),
('e77747d939ca87249d3035f974', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-18 13:40:02'),
('e77ce3f2c3bf4a8f9886ce0e71', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 15:41:17'),
('e78d38158fec7699723efe7d9e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:35:26'),
('e79d32331a72598b90295aa62f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 21:02:36'),
('e7ab76ef13063987723d8bdbf8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 03:40:06'),
('e7ba0c2c054f1c5a9f4f62a023', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:22:18'),
('e7c0c3328bdae4765e31091476', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 09:04:21'),
('e7c9c32b4f2d1dc43d12d286b8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 23:16:23'),
('e7cbb87384336439eb002c2c46', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-26 03:51:03'),
('e7d1c2dcccedfde7699c51e62b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 03:33:41'),
('e7dc1158656b359b5958552f0f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:37:40'),
('e7e222cd7cb2bedfab1012a921', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 01:02:32'),
('e7f4c2419d848435535bf1303e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 10:33:34'),
('e7ff9c28d4a82b3e500bb6743e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 16:36:35'),
('e80956fd4d015efeaa6db03626', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:18:19'),
('e8391ae9ed2e825ca5d81fc31e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 00:32:46'),
('e854b4df0fa758abce08b4576b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 23:53:14'),
('e869fb374830c2cafba15e28f6', 'false', '2019-01-14 19:10:18'),
('e86b4dcfe36b2f748a405f8e3d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-30 16:48:15'),
('e86df06d4a41094d89120d74f7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-03 00:20:48'),
('e872dcc0cd00788c43498a9de5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 05:25:43'),
('e87f73d90d236aef33392e74ac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-08 18:35:53'),
('e88e244148ffe199d9388d1fa2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 04:39:53'),
('e8964ba6d9036c1fe5000bf45d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:31:25'),
('e898f100b42a2e273372542419', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 22:29:31'),
('e8af3642e5cf29688015b08f8e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 08:39:37'),
('e8b596cdad46c70ee7bb0187bf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 16:43:00'),
('e8cabb99153478adbcb2ebc979', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-29 05:05:00'),
('e8d1acc71c4dca1d7528f0b30b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 13:41:30'),
('e8e10dc5e7fe43f74d7436bb49', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-05 23:10:26'),
('e8eb188ada9da9f11bab7f7470', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 12:58:41'),
('e902f7df5c3653390634cacdd3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 16:13:27'),
('e90eb44185029ad8e597a15306', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:36:09'),
('e91ac69e2cd36d554d746f17ff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 14:29:11'),
('e91b2663d652faf2716fae497c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 12:17:38'),
('e93254cc1ff284f8946856a282', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 07:26:05'),
('e9430e8b842c8b3541d75ccc4e', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/newsletter\"}', '2019-02-13 18:13:09'),
('e9555ac46874861ad23c15ff98', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:16:50'),
('e9583d6f5c863e3dff2c248e71', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 09:50:10'),
('e95aca8429dd16771902d40e74', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 14:04:25'),
('e9619f307fb8fb2a4cafe422d4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:38:18'),
('e966fc1cce76c7f0ca42518843', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 09:24:07'),
('e97c361d0784dd9a0c825138d1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 15:09:41'),
('e986d09efa53154899b65d584c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 19:21:33'),
('e9a95b2be7a933364c0cfa1907', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 15:41:20'),
('e9e766523c68e6c6851b522e41', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 14:34:52'),
('e9e9369bc636da9498d484c8fd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 17:03:16'),
('e9ea4dc47cf7bfcbb96b49c9f5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 07:34:08'),
('e9efd0d78c8b3316874cefa649', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 01:02:58'),
('ea1095efd7c835985af5d4749f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 23:31:06'),
('ea1be7a914620b61d80db0ec52', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-20 19:15:03'),
('ea4d0974a8f9420d144963b545', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-19 18:02:01'),
('ea663e84323f1b6bde6f2dc58f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 12:02:21'),
('ea69de63b06a830cdddd0111bb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 18:48:46'),
('ea6ea15b335fc8eadf3f22d51e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:34:07'),
('ea713c347bffef914104545d6e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-16 14:12:42'),
('ea78d8f94e43c65aa5a41d2157', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-18 03:59:50'),
('ea7d8d21506fba80769ca9c996', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-23 22:47:28'),
('eab836b6885832584e796867a1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 19:16:36'),
('ead18b7fa070e5b36266374a3a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-05 01:16:32'),
('ead30430ca63466a44fcea034b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-02 10:50:58'),
('eaeb976231b533c6698b56821c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-07 12:46:12'),
('eaeda640f80eece519f46167cc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 07:05:54'),
('eaeef956270665b1c3e0d5eeaa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-11 22:18:27'),
('eaf3494c1c543a21dd03471069', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 00:14:45'),
('eaf39a9f61ebbd0558f1363d4f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 17:52:09'),
('eb067a7442089799e20e31aedb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-24 11:58:23'),
('eb0b901402364f7f2726b1fd47', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:35:45'),
('eb0d4443168feed322119ae093', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 19:54:48'),
('eb1a9ecba4da10811e441fcd01', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-09 13:11:45'),
('eb34c3fa84fd7b490ccad72a03', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 23:23:08'),
('eb3998e658d218004374365210', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 12:42:17'),
('eb563f39f667d039f0bc362643', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-29 00:48:41'),
('eb70740ca97bcfa67ad135ec00', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 10:23:20'),
('eb8e16a179379981fa410019c1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 12:35:20'),
('ebc9d371a790b4e3bc8a7f9296', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-21 17:07:48'),
('ebc9db542c9dbfc32f83d0e8f2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 19:19:08'),
('ebccc499ec45c8bcff00899b9c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-09 05:49:39'),
('ebd18be06c4146bb28f0d628cb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:22:38'),
('ebd520c2424f8de1bf8eddbd7b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 08:27:48'),
('ebd6c78eafd9646a52804bb733', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 20:42:26'),
('ebe59313695055784a2f12f497', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 21:45:36'),
('ebf00ef915a2120097bae428a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-03 22:38:11'),
('ec047f4ce8b7e7ada9bdf3b3d2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-08 10:14:36'),
('ec07aa7ededa082e90770aac32', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 16:39:00'),
('ec123c9ddf442b8dc49a20747e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 21:25:29'),
('ec141a587af52deb61708cf130', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 12:21:44'),
('ec181179d8fafbbfc88abecc46', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-02 10:42:51'),
('ec1f07e7255b54e7e5bd713ac1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-29 16:30:20'),
('ec239e32df60ac5e0fa046ba1a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-05 07:34:34'),
('ec2765f8ed743c56ed24e8c625', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 15:39:38'),
('ec281eec2462140a183bcbd45b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-16 10:39:46'),
('ec3f04293b4a279156fd8392b8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 13:39:10'),
('ec536f40c83c6c417071ca6975', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 23:34:34'),
('ec590b8704d9f4475c93c4441f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 19:14:05'),
('ec6743031a97b973ddca2301e1', '{\"user_id\":\"1\",\"user_token\":\"fUGNF4oGXfBuQTVNh5G9lOrBstl6oOfB\",\"language\":\"vi-vn\",\"currency\":\"USD\"}', '2017-08-19 19:30:39'),
('ec699d0900ebf5ba7e5466257e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-01 23:31:51'),
('ec69cfa7bb4e4389c35a70f6f9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 22:22:35'),
('ec6b02c4f120a860567969e870', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 00:08:35'),
('ec6def3ff114cb5d5485e3ab0c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 03:32:53'),
('ec8762e9fdcc41b2c68b8af1fb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:27:26'),
('ec9ee409c3f9dcba6088cb52b4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:11:40'),
('ecb22e6d2929cb0591bffaf6ca', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-02 18:47:48'),
('ecb2d3b56d241b8a697619dc11', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 04:14:11'),
('ecbc53c3c4beb70b7dd83cc946', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-13 05:13:41'),
('ecbdafc85545d5a549c8be8a0f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-19 05:19:41'),
('ecbebae9bd997b18f93f573425', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 01:31:20'),
('ecc6f19b59c58c9d29cc24f679', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-26 08:07:00'),
('eccf2c86a11387d8c7ad30721d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:12:56'),
('ecd41592ff036895ef6c6e2023', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:33:05'),
('eced817ee116acde51a3763203', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-13 15:36:37'),
('ecf6a8d57b10091074778c5c42', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-23 18:17:46'),
('ed077b4a66266df08be7d7cef0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:33:15'),
('ed085637ef688ddf7e1ca95e00', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 06:28:00'),
('ed232393848ebc00670bec449f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 13:13:00'),
('ed2440fd38812e7e1764869f94', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 01:51:05'),
('ed271700e6737474b71818eef6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 19:15:14'),
('ed483e60340fd31b49db6c6650', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-09 17:53:25'),
('ed5b194b9dd848220e77ac3024', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 11:47:11'),
('ed6c538556a8136ec063b11347', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:05'),
('ed84f40866f56b7b7191b8c5a0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 14:23:06'),
('ed8750359be68aa547c164a2ff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 22:30:00'),
('ed8f119ff3572dbeefaf001b63', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-03 11:58:47'),
('eda447d1d9cee034c2c4314df6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-23 04:32:11'),
('eddc624508012cf6f0582ebadb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 17:37:45'),
('edf9f512831de3d18bc8dbca16', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-01 08:56:00'),
('edfb2b865b9fd0623af7f20f67', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-26 11:50:48'),
('ee04a00e061988e108f4abdc7c', 'false', '2019-01-14 19:10:08'),
('ee0a19f42b05a2c27c68507deb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-19 19:53:01'),
('ee0f0dada03f58f8e484387152', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-12 11:52:17'),
('ee0fa25e7996fef6411bfd09eb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-08 08:54:00'),
('ee13eff0c63001d71c159ca794', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-18 13:40:12'),
('ee1cdb4577231080f5e2e96e83', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 00:41:44'),
('ee284ab9e607efccd98db06ceb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 14:08:01'),
('ee381c4dce7d5e6df37ef9f048', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-18 09:26:49'),
('ee4a618e1f1a66b87c89f6106e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 05:53:32'),
('ee50fcdf271088cf67b351193f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-20 09:21:08'),
('ee6164292968954f9b8f1dd869', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:28:24'),
('ee6b77ab0d8e89f5c5a2e5d2d5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 08:54:06'),
('ee6c849ec5a38c7fa767cd5cfe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-09 14:22:38'),
('ee6ecf8ff08ec7e679c21fb18a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 03:14:05'),
('ee72f0af26fc657e36df837d3d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 20:35:41'),
('ee777dc222d6f5aa84a1199b5e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 12:57:17'),
('ee8bb4042ef6608321661bc253', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 03:09:34'),
('ee8e529db880e4616391ffdb7c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-31 12:33:54'),
('ee9919a7e468155a7fc300e397', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-17 07:29:05'),
('ee9c1b22dd9d424a4c634f4daa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 16:43:19'),
('ee9cf55d009d9e26c2b08245ef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:25:58'),
('ee9e715f067ba45fd21f921589', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 02:26:22'),
('eecefb9628659348d9d9706200', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-25 13:17:14'),
('eedbfb00a3e6ef1c94b6b9bde7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 08:34:55'),
('ef0403b2816ae46bf0e23abf3d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-22 06:13:00'),
('ef0822f0063f4ef5305ef8410e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 00:00:03'),
('ef0c8a5967090e02db78bb1d95', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-01 14:44:21'),
('ef1b630e75f9fbef519f6c5093', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 05:53:50'),
('ef2886dc6d0f1d752f686d1497', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 08:48:16'),
('ef40d033f11295eedca01f0465', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 15:12:45'),
('ef430a61467cf6a959823fa70a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 16:10:02'),
('ef7554fce5d14b2fa7f564788e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 03:17:35'),
('ef7992c47b7d00946474d5ea80', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-21 02:48:28'),
('ef93c25e25914ab2ac9573bf9e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 08:12:58'),
('ef956a72909c4d2af25a725042', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-25 17:50:22'),
('ef9c3d6bd8b99d227a4679caf6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 12:01:35'),
('efa18ba6e293f4cec8fb64a205', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 06:10:48'),
('efa50713e88d7579d126d9e002', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 08:29:54'),
('efaa193f116935d6364309ba03', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 07:38:04'),
('efac3c3136b0adc787d0db2554', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-18 19:29:38'),
('efb4ed09e60904f2e2731447fd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 04:36:07'),
('efca1dd6b2de861b30ab674391', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 19:55:42'),
('efccd6aaa0549f73b5820b23da', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 00:12:39'),
('efd2ff67cda2dd09bf0dc308c8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 23:07:57'),
('efd6e4522dff2a074c3e9994d3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 22:05:33'),
('efdaedde54919babc572d91ea3', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/password\"}', '2019-04-04 05:13:05'),
('efdcf984d72f38148f62370d14', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 07:43:58'),
('efe0188521f133f9a7fc266446', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 16:38:43'),
('efe387fdfaae7fbdf24fda326c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-07 00:46:15'),
('eff229cd3a871b4573bb7bd724', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 07:54:08'),
('f01e0d9ece395a27e43dc476da', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-05 15:29:21'),
('f02bc6603aec623feaa33e8289', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 23:57:19'),
('f0387b0abafd8276f13e0e73f0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 16:19:44'),
('f03a8818fb68caf60b5c693188', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 00:05:31'),
('f04f56d39f6f1f3bdddfa45a92', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-19 02:55:18'),
('f052def9a40cdc7bac337a053f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-06 21:41:01'),
('f05e5fda9398e91402d179bc28', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 14:50:36'),
('f070f4f42d0e83a85f33b7b582', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-21 03:58:39'),
('f08092e2a3881911c02243df21', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 18:25:36'),
('f08460440f555f462be276deef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 22:10:38'),
('f088abd388a36f1c81a48341d4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-15 03:09:12'),
('f08909b78553cf04b884407191', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 21:31:24'),
('f094b445762a841c1e2bb7bb05', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 06:28:02'),
('f095d1283b94f5744175d8a061', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 14:41:28'),
('f09772dd8e7d382bb3ff0f6278', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/wishlist\"}', '2019-02-17 18:38:24'),
('f0a8e06fda5dc5cca6023efd40', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 15:34:53'),
('f1036dbda005d4e7e65456b94b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 15:43:41'),
('f113dd76419b3521c7341023c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 12:15:12'),
('f119469970d0ec8ff2b19a0e5c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 05:32:59'),
('f127eb498f0138885a37df20f1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 21:35:47'),
('f12d0515b62cf74b82e507f864', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-08 01:42:40'),
('f137d63c39f7c108b442ddd099', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 22:44:25'),
('f13d7a96868258d4f8efcbd352', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 18:51:49'),
('f158b97c0e1f7da9fedcc808be', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-22 09:40:00'),
('f17354716963435cf71be8f6dd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 05:29:40'),
('f1743ee346549eeb2cf63aaa2c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-20 16:15:08'),
('f1b7ca3f15b78629b106fa797d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 14:21:26'),
('f1c6233f59ee9e874b548733f6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:39:41'),
('f1d63d74feea3a8460938ae15a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 13:15:22'),
('f1e159e7034d0c4be4423828ac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 16:22:40'),
('f1ecd6bfcd34b5bb120cb31377', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:53:50'),
('f1f99b3eae8331f0bf65d8a7a3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 20:30:41'),
('f221b2af8da430fbe4532d5544', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 19:20:11'),
('f22610a9cf409fa04204d69f66', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 10:16:57'),
('f23536da6992f605aacc76c695', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 13:54:48'),
('f23717c0fd18877c1142317621', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:20:49'),
('f23de22af6394a258f50282b1c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 02:44:18'),
('f24292ff60222517b18e40716f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:39:40'),
('f2572219469390b6174fbb2046', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:37:10');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('f275e6f4f25bf32531e7a8a338', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 23:05:59'),
('f277e294f20718e3cd3a01e8d0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 17:49:14'),
('f2834c2f9557f4caa172a1a967', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 13:57:17'),
('f28760cc43a5d4a20081fb2ea1', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/password\"}', '2019-01-05 07:34:55'),
('f296798fc1a0794973633240e5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 10:11:44'),
('f29abf66cf2eae57d9f9f57c10', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-26 02:46:40'),
('f2a2faca924e1388bc334a10f0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-14 05:11:39'),
('f2b5057d6d8f8ec2de7e2a46bb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 02:51:58'),
('f2c042e5103be5f079e25f5d54', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-15 04:00:24'),
('f2dcdd84ef21c0cd5f85d309aa', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 07:38:00'),
('f2e8ac7bf9d937e2d55542605d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 00:35:59'),
('f2eb3a81b64b2ca685478898d2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-15 10:59:49'),
('f2ef8023f6c7b6be76c3a67249', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 09:53:24'),
('f31bc8f9d58e792a904706d9a2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-09 13:08:31'),
('f3215cff37a69a97779a6c9c84', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 04:08:15'),
('f32906baf3e29c09be18ac8bbb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-16 10:31:10'),
('f340ba2959d0841f39e7a733f5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-14 09:46:47'),
('f356268fb9673a55ee1d16fc25', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 09:05:37'),
('f35ff53f0c49390d5d08d20087', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-25 01:08:47'),
('f364c65843b0a00698a3edaa75', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 19:18:31'),
('f373e0f578c5d2a68638594e84', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 17:05:35'),
('f37aae2a7d7ed49a196c235056', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-30 04:05:21'),
('f3a71bef8557dacd70d949b05e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-07 04:09:18'),
('f3af3da16e0f1192716d8c5020', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 06:50:12'),
('f3afdc0899713d90e28251a667', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-03 13:33:37'),
('f3bf743fc3deb28a01eb976417', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-30 17:52:35'),
('f3c88ae787860a16b5e57d0c95', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 18:39:39'),
('f3cbc7dfd0b8b9278745172e98', 'false', '2019-01-14 19:10:19'),
('f3cc8403c298267d8085d1c4db', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 23:03:27'),
('f3d27355617ce970860f6559c3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 21:53:05'),
('f3d6b80d9b62e67ff6712ca41e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-10 05:04:15'),
('f3d8faf0bcd622f246a9cda1e7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 11:15:56'),
('f3dd8f8f41488eb9348f1d6265', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 03:42:03'),
('f3f6462bff697e638c72489e92', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-08 11:30:53'),
('f3f6a87ccddbbfb9241ba12de4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-17 23:37:01'),
('f402eb48a0efd4b27ef659dbae', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\"}', '2019-03-23 18:10:45'),
('f40cd6adc6de058cd27b5ac7fb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-26 10:55:54'),
('f411b109b65b34e1f02c7456b5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 23:04:25'),
('f427bd7be13435ecef2d5a6208', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 20:27:59'),
('f42ad894c0977d954a5519aeee', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 19:57:15'),
('f44f6eb4e9dac22ce3676a2c74', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 21:55:42'),
('f453b3cbf5b90bd15e87a4967a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 05:01:13'),
('f45cf18059c4fa9e77956cdc5d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 12:55:34'),
('f471fb6eec72fa25e20afbfed6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-20 19:54:44'),
('f4778962c1ac7a2771d7b54a36', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-27 13:45:08'),
('f477b6f1acc345c0e03f78c423', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 06:31:57'),
('f4812c05426969c33efa1dc812', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 14:29:42'),
('f4951af84541bb1fe6468b9ad4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-02 17:26:45'),
('f49fd2a538c288ce5c24e50e10', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-09 06:13:49'),
('f4ae57104ccc442555eadb6b1a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-12 13:52:39'),
('f4bf64ade7f4df2f5f2ffdf250', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 00:11:21'),
('f4cc0cf2ec1b57ea7749fec9b9', 'false', '2019-01-14 19:10:05'),
('f4d2e4bebe203ef19e9a9c07fc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 08:21:32'),
('f4d42ed520344816ba1f83fe5a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-23 05:40:07'),
('f4d5379c5ab22c54f5935c1859', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 08:45:16'),
('f4e2d6634bbd83525629f9290f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-07 23:29:28'),
('f4eb7b4edcfa3ace7e61a9c2ff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-17 04:54:27'),
('f4ed73610e4f830f4ea2d19fd5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-08 14:43:28'),
('f4ef114f0045a5c7f2bf37ca5c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 03:49:01'),
('f5033d90530d7c8247f62eaa3d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-08 00:26:45'),
('f522c89f42a3146b9e4f6b8806', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 23:46:56'),
('f535d8018d8cb92d3419394cd6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 00:03:15'),
('f53a9ef80a71a9bef0b08d096d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:31'),
('f54d492e1b1317b76037aa0e3e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-16 10:28:51'),
('f55c5e1f752cf2286bced7115c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 06:29:34'),
('f56d15c04f46e1e651512e7068', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 00:49:37'),
('f56f9a7e484cd3dbdd547e61fc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 02:59:36'),
('f574366ff11759a4a7c222b186', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 19:39:57'),
('f5782acada5e43fab3a06cffbd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 04:59:59'),
('f581837df731dca6932df5ed7d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:12:39'),
('f5920abb9ccd0adee598370585', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 19:44:20'),
('f59b26a0a8012536481f2c611c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-20 00:23:29'),
('f59c3fc1a7c419f4883738121e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-28 08:57:27'),
('f59c68ceed355090ac50c62938', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 11:37:45'),
('f5a934ab98be15d6875d0c1c1f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 11:18:41'),
('f5b111f8b0ad553183acbd220d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 01:46:16'),
('f5bed1b48ad1b5d1faf5ea3953', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 06:09:17'),
('f5cd23558b7b904d3b79d0bce4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 01:36:22'),
('f5da8d8c2747dc8be87427411d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:19'),
('f602baaa9ded6e43e5e2456822', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 21:21:34'),
('f603e997d1b5c4a6869bde1fe6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 21:31:12'),
('f605814595320d330bbfbdc1fc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 03:30:57'),
('f6081154953e9b04de40c4facc', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/wishlist\"}', '2018-11-11 16:56:13'),
('f60a06916c83bf67520519f9b4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-03 14:39:06'),
('f60eb3e92b8bba4ca992f22311', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 23:25:03'),
('f61abc74eba64d7c731ee54e04', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/wishlist\"}', '2019-02-13 11:14:26'),
('f61cda5f9993010286444b7ff4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-09 18:06:34'),
('f620e9d3588eff0d3c61d3ef10', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-10 04:48:59'),
('f639776a4cb36e93e1fd137645', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 01:19:28'),
('f63af0af7413dfc7353dc875a4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 12:36:25'),
('f63af64802c7eee3aa76e3e9a0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 07:07:22'),
('f63e8e05efc61628de7719cfd5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-16 14:04:11'),
('f65f900ff8c3447077c77ee602', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-17 18:37:29'),
('f66851f2acc6e0d69fa588b4b6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-03 02:07:46'),
('f66cf79f61bc859dcd2b1b86be', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-08 20:28:42'),
('f66e6623f1386d899dcc1eec85', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-05 07:54:15'),
('f672d26582c4445138446a9123', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-13 20:24:09'),
('f674166f40d78961a1f891d077', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 01:36:21'),
('f682eaefd4499bb48e009a7f3a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-18 01:35:17'),
('f68c19b6a3e2bff273c4c52e63', 'false', '2019-01-14 19:10:20'),
('f69c93f028c7cae9c63e20cfa9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 20:57:25'),
('f69cd2d6dc3f0d82f25a4f7a1c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 19:29:13'),
('f6af2bccd0de15495bcbf93fb3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 05:13:13'),
('f6bb4308fed1d34e59c48c649f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 04:41:47'),
('f6bfdb130b05fef090326d6148', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 10:22:27'),
('f719c99dbc664c8d9df25b9974', 'false', '2019-01-14 19:10:11'),
('f71dd5e0d5d9efa5e4efdd4018', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-27 18:54:50'),
('f723ed9abf92f249e1dfb58b70', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 23:43:19'),
('f745f8e8dda7d04af804cc7c1a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-17 13:09:25'),
('f763404a7165d42200f335691a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 10:56:44'),
('f76c81289334cecabaf0681f8b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 21:24:13'),
('f7734f7eb54d9e1731eda72c99', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 01:09:26'),
('f77f081e933787462b98885346', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 03:43:30'),
('f78db7bffeccc770902a135ad7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-15 19:41:21'),
('f7937c24b6925f83b588f982ef', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 09:13:36'),
('f79eff0895d4cdd9bc19ded5b6', '{\"user_id\":\"1\",\"user_token\":\"CmoF5TEUv8NMaMzfpqPyFBDKwqIPjeJG\",\"language\":\"vi-vn\",\"currency\":\"USD\",\"compare\":[\"46\",\"44\"]}', '2017-08-26 19:02:11'),
('f7a6597183010a79bed7ba33f5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-14 12:02:01'),
('f7a858160805f0a86b2d021e4b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-04 00:36:01'),
('f7b00cafbf781a3cfbaf29ddf2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 10:04:08'),
('f7be3c34373859c5d4f826e634', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-10 12:26:59'),
('f7c34f0a6d61a1302558fb28a0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 23:30:10'),
('f7c825eb40582e55e6f220e272', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-11 03:40:49'),
('f7c919f34bf4fb770760ad5747', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 08:13:25'),
('f7ddb1bc5556b82153616fcf65', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-20 22:38:30'),
('f7e992e22f1fa1bfe4b2d258fe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-03 06:42:33'),
('f7fe20bec3cea30fb05edc17ff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 16:16:12'),
('f80430d8be90ee433259f2d942', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-22 03:36:30'),
('f8076e701a70c792309fd98c6d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 23:48:01'),
('f80a2e5038f8f94664951347a6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-06 23:59:39'),
('f81ed5edf893e51cd4717c7d6e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 17:45:26'),
('f85c85ff1189fa818eaa6fe0fe', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-17 16:09:41'),
('f875bbcfe75912d2f61386a55d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-24 21:47:54'),
('f878f1ea992e73132f826a6020', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 06:27:21'),
('f891f937c2ec409a5058b11f05', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-31 05:12:57'),
('f8a0eee8fb052036194de29618', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 04:23:38'),
('f8a151fa03c4c125b567107104', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 19:33:36'),
('f8b3d975ed029f3f3dbc74af50', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-18 03:55:05'),
('f8b67368d0203fcc389b72e1d9', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 08:58:21'),
('f8d97314c30e739768eebe521b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-20 19:45:59'),
('f8e09b903a3a62d4c9c0cf4d9b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 05:26:20'),
('f8f3ae75c8d74995150d0ded02', 'false', '2019-01-14 19:10:04'),
('f8f772efb1a17e4d8ca438bddb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 14:08:09'),
('f90b948b0d593bd89785308359', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 08:47:38'),
('f91afb27b22ac42700a79fc293', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-11 10:55:18'),
('f9322f114ba0599d5b8cc1cf1c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-16 14:16:15'),
('f9414d553152ad8db3e5ea6b65', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-03 02:10:21'),
('f95811d74528d201ac0dcadd4c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-06 19:33:25'),
('f95c4ddacf91e1b2761f1c7b20', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-20 09:04:40'),
('f962c08dc950552b019eee197e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:23:44'),
('f962e0735df57083e93840555e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 01:41:42'),
('f9670c22c9bca036e29212c034', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 01:09:16'),
('f9807a824979ca51534b8b5291', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/newsletter\"}', '2019-02-17 19:15:39'),
('f9912c5ede8b59ff2d51da13a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-22 23:22:37'),
('f9b15ce4bec1c5327652adf036', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 22:44:20'),
('f9d12e0f3394d338b9c9e27347', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-12 15:04:07'),
('f9e5460ff8066e651997ea8db0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 06:27:07'),
('f9eb6b6dddf56843623fa00877', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-11 07:44:05'),
('f9ed8fb1bd68c156e5042f4042', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 04:12:35'),
('f9edf3d84e1552e69b9de4be70', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 04:33:40'),
('f9ee7dc1677c4e5f24b87b9e08', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 23:27:56'),
('fa07bf1d148bbbc29162be3f88', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 05:04:38'),
('fa13b62784b5a95d59ba854ab2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 18:25:42'),
('fa1d164fb647e812967aeecdcc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 10:17:52'),
('fa29f1b44f1ca80cf6e49ca81d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-22 05:24:11'),
('fa2a748160410484dd5eabce5f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 20:01:50'),
('fa53e63810759de1433fc34a96', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-28 09:05:33'),
('fa6124ff61b3f034b97b2f35c4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 10:04:26'),
('fa7bf622c574c01bc881079a8d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-09 07:03:15'),
('fa81de2b6e5ac3bd71a3003768', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 16:33:37'),
('fa863197d4ffbfe54059ac06a1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-07 23:29:18'),
('fa97355125ac2447aa98989a99', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 00:06:08'),
('faa176adc4f960ef34c24b0aa8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 01:56:56'),
('faa42d1471d6eb1ee573818776', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 22:11:14'),
('faccc41aaf2555a18bb95d2580', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 17:23:43'),
('fad4e0fd1a27e9d47a4b3e9163', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 07:30:14'),
('fae57ad4fde9ce402c29122cf4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-11 21:11:00'),
('fae71040d6bced18414ad6a3d5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 03:45:25'),
('fafd59378308da3d5390608ca7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 07:00:32'),
('fb004286adcd1ad74f041dfb2e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 02:43:40'),
('fb01657bcef9b9242537919525', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:11:21'),
('fb359f79de96048c3bf515c4b1', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-10 11:52:05'),
('fb3a75bffbc259f6c4d8b0021c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 14:59:06'),
('fb4565326e389acb7c34822760', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-15 11:38:41'),
('fb6b586a8a871baed86055f80c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 05:34:29'),
('fb801624e72f2d0f3af1e31a92', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/password\"}', '2018-11-11 21:10:52'),
('fb89e703d2aa413cb8b289daa2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 17:49:53'),
('fb8d54e80980d4ece1c0018748', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-21 01:28:26'),
('fb93169a4972b630e1c193a63c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-29 08:21:55'),
('fbc0ba80a321913257187472ac', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 18:34:24'),
('fbd7370c7275c04591b150fe37', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-30 19:27:58'),
('fbdd6335ff572922205385bb41', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-18 22:33:59'),
('fbf19fb6224f275d182981ef22', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 20:34:38'),
('fc0655ba725fda7e0fcbff8c84', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 12:44:58'),
('fc1570b890ff6714f7445ca018', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 12:31:40'),
('fc1cbfa54c840e7c37d927d28d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-23 14:01:16'),
('fc21296bd221723010f0ebdd70', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-11 09:06:33'),
('fc293cbaae1e3e72266429eae5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-28 08:57:17'),
('fc2ba754f28a5f7048b36d7aa8', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-28 13:50:17'),
('fc304cf8e172aed5908a74da73', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-28 09:55:05'),
('fc3a5715c96b45088e3f061457', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 00:52:38'),
('fc3e0d7bedb8efcc397d8417be', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-07 03:37:09'),
('fc45a9da653140d7af8308f144', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 04:49:15'),
('fc4add8ce25ebe8139af9f9804', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-30 12:44:45'),
('fc5a99bad6b5a154a1a2dde36a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 09:07:57'),
('fc5c7e02daf2e0f5bec1387785', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-18 12:31:20'),
('fc6065d0f5d98805848239232d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-16 00:43:07'),
('fc6a0217a2b767ea1a3bcc03a2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 02:23:23'),
('fc6b267305d25878897e2f9f2f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 02:09:13'),
('fc730c70468ec863ccff624662', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 08:14:22'),
('fc7acbdff6236cc70ad1fd64cf', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-04 08:00:13'),
('fc7dde6239634a848ac20baab0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 03:04:01'),
('fca5000d5428e3c781d7f16ebb', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-09 07:44:42'),
('fca75a4a77f1571e5447334697', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-04 04:20:04'),
('fcaa9a4d158baee3d74fcdd1d4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-09 19:58:28'),
('fcb00748514d8e04085d57ec67', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 08:41:56'),
('fcb2ccc735e28b5f9f041b0d38', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 19:34:49'),
('fccba045311f60db3a160a1d72', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-15 19:03:28'),
('fccfa8337071707fac74a7fbcd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-29 02:12:20'),
('fce36e5b2f18fc4673531dd729', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-16 05:30:43'),
('fce3fdc9a9dfa0b3757ac36214', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-24 11:02:25'),
('fcf52aef129c2ac7c2531740e5', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 01:21:42'),
('fcfe1e112eb3e44693797348a3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 19:01:45'),
('fd0ad9cbf9a625559521738db3', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 09:19:39'),
('fd43ddbc5693934e4739779e86', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-22 22:45:53'),
('fd4fa7e3bb0e3992246e81f6af', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-15 10:35:01'),
('fd50c2476f391a1e2dc765d676', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-20 00:13:57'),
('fd6110376b34ec853d13ec2418', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-08 05:25:50'),
('fd88f5c06de4d9257fe1e972db', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 13:10:18'),
('fd8b07d0a33b35192d6cb4c034', '{\"user_id\":\"1\",\"user_token\":\"K2ThItknhIRnvtQBxoOjbbGFRM30jHUv\",\"language\":\"vi-vn\",\"currency\":\"USD\"}', '2017-08-18 19:17:16'),
('fd925b025942959b97376285a7', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 06:02:42'),
('fd95fc86a48f50197255ff3df4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 15:53:15'),
('fda7b363d7a09ec90c57cc8d80', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-04 04:56:23'),
('fdd51a4bba4785652149cb0536', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/edit\"}', '2018-12-30 03:18:15'),
('fdd7f432c118470fa42ff2d25d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 14:16:29'),
('fdf4ecd2d0144e39e6c060d768', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"user_id\":\"1\",\"user_token\":\"p9PH2bejHqdejFt7jvax7yE3Bodt75XY\"}', '2018-10-13 01:21:57'),
('fdf70e5fedee81e9074ecaeb68', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-28 08:20:54'),
('fe302f1b920f5bdeb56efabba6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-21 20:54:37'),
('fe30821cc18c96960ff901bdc0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 06:52:57'),
('fe371f22948255df8c2c5bcd52', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-03 13:04:38'),
('fe3d3814c3d120512f984fb7e2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 11:15:34'),
('fe48802b582984de154a08c801', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 06:18:21'),
('fe4e47dc24f05188b41cdda78a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-10-30 19:39:52'),
('fe59a886656bc389f6a8336db6', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 10:26:23'),
('fe7357463800606befe11e4271', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-14 18:08:04'),
('fe7b7ba02fb063007a16944e72', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-04-01 03:16:43'),
('fe8d7fa637e8ad423cf550de6d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 15:34:43'),
('fe90626bf151ba2ea8d4653c01', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-15 08:19:56'),
('fe92371d027e599d37aaaba42d', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-04 15:25:10'),
('fea8ba66577b982b2fe6462c05', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 22:20:21'),
('feb501b910a57b4b693b96081a', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-08 17:21:32'),
('febd100c1c9cd9b16dd309e1bd', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-25 13:19:14'),
('fec8c6aca6b5d7ae41f9e0c064', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-01 03:31:18'),
('fecf079a2aea30484edc1a9094', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 11:06:15'),
('fee28d7b0e9892c0e6037da748', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-11 02:18:29'),
('fef0314fc3cf28b316d9aef837', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-21 21:40:02'),
('ff04a07ea923ec861472154a37', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-25 23:05:17'),
('ff182864145a9daea44d3e6f34', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-12 15:17:21'),
('ff286666311cbe59aebe319bda', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-12 15:42:27'),
('ff2c5657f804131e10623892dc', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 06:31:02'),
('ff30f3444c965df45121b45963', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-19 08:19:46'),
('ff42b187d1dae3c0abb8ac6a1c', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-24 05:34:25'),
('ff4892d36103c26d3dbb623bb4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-11-16 16:44:02'),
('ff4a32c922bd8369391e58c254', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-07 12:48:08'),
('ff5b9eed804d59c24f648f81b2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-09 08:17:40'),
('ff5f988c0e122ed1e56b99beee', '{\"language\":\"vi-vn\",\"currency\":\"VND\",\"redirect\":\"http:\\/\\/3020rc.vn-opencart.com\\/account\\/download\"}', '2019-04-04 05:13:10'),
('ff72421d6023eed39fd562e4d4', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 04:53:30'),
('ff8474a19356f97597c35d1d3f', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-01-20 10:03:17'),
('ffa46825c41fd1c45fd1d0335e', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-18 12:07:30'),
('ffa470d02035c0b4f07fa5f3c0', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-13 22:18:15'),
('ffc99b9b63338a4b7febd58cae', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-14 04:08:29'),
('ffd2daf2f0dd0a3fc10a8aecff', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2018-12-05 07:50:32'),
('ffd77954367dba111edd5f860b', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-10 06:03:43'),
('ffe3546b2cebc000e1006e55c2', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-03-07 14:25:13'),
('ffea05ce30d66dad8afbcd5956', '{\"language\":\"vi-vn\",\"currency\":\"VND\"}', '2019-02-04 18:34:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1321, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1322, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(1323, 0, 'config', 'config_mail_alert_email', '', 0),
(1324, 0, 'config', 'config_maintenance', '0', 0),
(1325, 0, 'config', 'config_seo_url', '1', 0),
(1326, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(1333, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1332, 0, 'config', 'config_file_max_size', '300000', 0),
(1327, 0, 'config', 'config_compression', '0', 0),
(1328, 0, 'config', 'config_secure', '0', 0),
(1329, 0, 'config', 'config_password', '1', 0),
(1330, 0, 'config', 'config_shared', '0', 0),
(1331, 0, 'config', 'config_encryption', 'BZSb2IRcPcDt6RVfcxed2AYXyi6UXIWeUHgyFukKSOuMNCAq0R04H743JV8lra5LvJ1Qe1nUOSWpJBaf3kkMGUu2FE9KoLtu5X4LsfxiMqGiUC56FqsDdQ45gJce7uiO6MTs3AaWLj38jiQqIReUISgheZFm1qtScv1yFyr22aqv78X3SbDWxVsN4xU8JxCBoE6lXbT30LvfiedEXtdqsvWCwtPq7wbY7fR9BaTEpnXHk7MfNGXLE4yILNjmWLBFkWV8MvtUxABdtOwN2vuNP68vxMnSOVKaPoNyZEEAZreCew2ojT3or02kQUM6246SMLk6MryKCYpzmXaEUFtuwowbC8Xfk8hmvftVR956cYs1dZnEOhq4L4EWH8F4FWo1HqCSPxgrXRVEeMa9oDZ9Enu10lbBXbZWtk1ZZBkjUihLwaPidM0SexeWp4FKjsbCcKu7n3bsKRzopUivIWtcN059C1IYrTJs1ubeuKVovko7wTR30eoiUer1pk8CDKGCjcfPnIObfCrPNgdufEnQ9eQU0h5QoCetf07QlHr2EuGITE7NSEB5TXCoTDbNaR9MtXDPj4kQUVUOEFBzNvon3unwTMSfY0eQCtNUm0UQCAWC1uKZYLDdWcylGCZ3cxvZmiIHjqji61AL5Gx40ADC4ZpmW9QpIXOV4YlgDjsDyO6BkniTDOc93p3F2Bh68bBF4eeWhKEUEgMwgr3Wvze7ngaxApjbtBZCZF2wAWkqrzzWBejY4chahAskZIIdwFXdBHeNkk95CJbPMVxkR0TSgKSKLgCTdrN7FkoKITvTQykMmxja8nHi4JggkXDQBaS3uPOKrLvEQwcbQPWKCyI93U0L1Ft8TXJoRcVmmVr1zP0bvXKOIUm9Jfd3ZIlQUDEw5SrDiqBOrZDqqKe2m2AQoYiuwrFPSr0VJR10syHpuaPGjURFmN3LwIkqEZSvOKmjvL2bf4PCWHYhk7txCqj0cpeZolC76WSo8FpyInErDwtecD2YPMq75kT20a5prRa0', 0),
(1320, 0, 'config', 'config_mail_smtp_port', '25', 0),
(1318, 0, 'config', 'config_mail_smtp_username', '', 0),
(1319, 0, 'config', 'config_mail_smtp_password', '', 0),
(1317, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(1316, 0, 'config', 'config_mail_parameter', '', 0),
(1315, 0, 'config', 'config_mail_engine', 'mail', 0),
(1314, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(1313, 0, 'config', 'config_logo', 'catalog/website/opencart-logo.png', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(474, 0, 'module_google_map', 'module_google_map_code', '&lt;iframe src=&quot;https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59587.97785449809!2d105.80194400804695!3d21.022736016268517!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab9bd9861ca1%3A0xe7887f7b72ca17a9!2zSMOgIE7hu5lpLCBIb8OgbiBLaeG6v20sIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1503745596829&quot; width=&quot;600&quot; height=&quot;450&quot; frameborder=&quot;0&quot; style=&quot;border:0&quot; allowfullscreen&gt;&lt;/iframe&gt;', 0),
(1164, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(1163, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(1162, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(1161, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(1160, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(1159, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(1158, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(1157, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(1156, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(1155, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(1154, 0, 'theme_default', 'theme_default_image_additional_height', '500', 0),
(1153, 0, 'theme_default', 'theme_default_image_additional_width', '500', 0),
(1152, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(1151, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(1150, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(1149, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(1148, 0, 'theme_default', 'theme_default_image_thumb_height', '360', 0),
(1147, 0, 'theme_default', 'theme_default_image_thumb_width', '360', 0),
(1146, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(293, 0, 'developer', 'developer_sass', '1', 0),
(1312, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(1310, 0, 'config', 'config_return_status_id', '2', 0),
(1311, 0, 'config', 'config_captcha', '', 0),
(1309, 0, 'config', 'config_return_id', '0', 0),
(1308, 0, 'config', 'config_affiliate_id', '4', 0),
(1307, 0, 'config', 'config_affiliate_commission', '5', 0),
(1306, 0, 'config', 'config_affiliate_auto', '0', 0),
(1305, 0, 'config', 'config_affiliate_approval', '0', 0),
(1304, 0, 'config', 'config_affiliate_group_id', '1', 0),
(1303, 0, 'config', 'config_stock_checkout', '0', 0),
(1302, 0, 'config', 'config_stock_warning', '0', 0),
(1301, 0, 'config', 'config_stock_display', '0', 0),
(292, 0, 'developer', 'developer_theme', '1', 0),
(1300, 0, 'config', 'config_api_id', '2', 0),
(648, 0, 'module_social_network', 'module_social_network_status', '0', 0),
(649, 0, 'module_social_network', 'module_social_network', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/groups\\/opencartdotvn\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"google_plus\":\"https:\\/\\/www.google.com.vn\\/\",\"pinterest\":\"https:\\/\\/www.pinterest.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\"}', 1),
(475, 0, 'module_google_map', 'module_google_map_status', '1', 0),
(1299, 0, 'config', 'config_fraud_status_id', '7', 0),
(1298, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(1297, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(1296, 0, 'config', 'config_order_status_id', '1', 0),
(1295, 0, 'config', 'config_checkout_id', '5', 0),
(1294, 0, 'config', 'config_checkout_guest', '1', 0),
(1293, 0, 'config', 'config_cart_weight', '1', 0),
(1292, 0, 'config', 'config_invoice_prefix', 'INV-2018-00', 0),
(1291, 0, 'config', 'config_account_id', '3', 0),
(1290, 0, 'config', 'config_login_attempts', '5', 0),
(1289, 0, 'config', 'config_customer_price', '0', 0),
(1288, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(1287, 0, 'config', 'config_customer_group_id', '1', 0),
(1286, 0, 'config', 'config_customer_search', '0', 0),
(1285, 0, 'config', 'config_customer_activity', '0', 0),
(1284, 0, 'config', 'config_customer_online', '0', 0),
(1283, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1281, 0, 'config', 'config_tax', '1', 0),
(1282, 0, 'config', 'config_tax_default', 'shipping', 0),
(1280, 0, 'config', 'config_voucher_max', '1000', 0),
(1279, 0, 'config', 'config_voucher_min', '1', 0),
(1278, 0, 'config', 'config_review_guest', '1', 0),
(1276, 0, 'config', 'config_limit_admin', '20', 0),
(1277, 0, 'config', 'config_review_status', '1', 0),
(1275, 0, 'config', 'config_product_count', '1', 0),
(1274, 0, 'config', 'config_weight_class_id', '1', 0),
(1273, 0, 'config', 'config_length_class_id', '1', 0),
(1272, 0, 'config', 'config_currency_auto', '1', 0),
(1270, 0, 'config', 'config_admin_language', 'vi-vn', 0),
(1271, 0, 'config', 'config_currency', 'VND', 0),
(1269, 0, 'config', 'config_language', 'vi-vn', 0),
(1144, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(1145, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(1143, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(1141, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(1142, 0, 'theme_default', 'theme_default_status', '1', 0),
(1165, 0, 'feed_google_sitemap', 'feed_google_sitemap_status', '1', 0),
(1334, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1268, 0, 'config', 'config_zone_id', '3776', 0),
(1264, 0, 'config', 'config_image', '', 0),
(1265, 0, 'config', 'config_open', '', 0),
(1266, 0, 'config', 'config_comment', '', 0),
(1267, 0, 'config', 'config_country_id', '230', 0),
(1254, 0, 'config', 'config_meta_keyword', 'Opencart VN', 0),
(1255, 0, 'config', 'config_theme', 'default', 0),
(1256, 0, 'config', 'config_layout_id', '4', 0),
(1257, 0, 'config', 'config_name', 'Opencart VN', 0),
(1258, 0, 'config', 'config_owner', 'Opencart VN', 0),
(1259, 0, 'config', 'config_address', 'Bình Dương, Việt Nam', 0),
(1260, 0, 'config', 'config_geocode', '', 0),
(1261, 0, 'config', 'config_email', 'info@doannguyen.net', 0),
(1262, 0, 'config', 'config_telephone', '0974858395', 0),
(1263, 0, 'config', 'config_fax', '', 0),
(1253, 0, 'config', 'config_meta_description', 'Opencart VN', 0),
(1252, 0, 'config', 'config_meta_title', 'Opencart VN', 0),
(1335, 0, 'config', 'config_error_display', '1', 0),
(1336, 0, 'config', 'config_error_log', '0', 0),
(1337, 0, 'config', 'config_error_filename', 'error.log', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post'),
(7, 'citylink', 'Citylink');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '0.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '1.0000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '583149c78eb973feed3337749211ff34dcf04d54', 'LYtZ0A2kB', 'John', 'Doe', 'admin@gmail.com', '', '', '171.246.244.193', 1, '2018-10-03 17:20:21'),
(2, 1, 'doannguyennet', 'e28b380d87677d2be6d31d9515ef8b58e64d12e4', '66gyUJHJ1', 'Nguyen', 'Doan', 'info@doannguyen.net', '', '', '171.246.244.193', 1, '2019-04-23 08:46:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"news\\/category\",\"news\\/news\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/quick_info\",\"extension\\/module\\/product_by_categories\",\"extension\\/module\\/news_latest\",\"extension\\/module\\/special\",\"extension\\/module\\/latest\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/social_network\",\"extension\\/module\\/category_product\",\"extension\\/module\\/google_map\",\"extension\\/analytics\\/google\",\"analytics\\/google\",\"extension\\/fraud\\/ip\",\"extension\\/feed\\/google_sitemap\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"news\\/category\",\"news\\/news\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/quick_info\",\"extension\\/module\\/product_by_categories\",\"extension\\/module\\/news_latest\",\"extension\\/module\\/special\",\"extension\\/module\\/latest\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/social_network\",\"extension\\/module\\/category_product\",\"extension\\/module\\/google_map\",\"extension\\/analytics\\/google\",\"analytics\\/google\",\"extension\\/fraud\\/ip\",\"extension\\/feed\\/google_sitemap\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Chỉ mục cho bảng `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Chỉ mục cho bảng `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Chỉ mục cho bảng `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Chỉ mục cho bảng `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Chỉ mục cho bảng `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Chỉ mục cho bảng `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Chỉ mục cho bảng `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Chỉ mục cho bảng `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Chỉ mục cho bảng `oc_category_news`
--
ALTER TABLE `oc_category_news`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `oc_category_news_description`
--
ALTER TABLE `oc_category_news_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_category_news_path`
--
ALTER TABLE `oc_category_news_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Chỉ mục cho bảng `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Chỉ mục cho bảng `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Chỉ mục cho bảng `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Chỉ mục cho bảng `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Chỉ mục cho bảng `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Chỉ mục cho bảng `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Chỉ mục cho bảng `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Chỉ mục cho bảng `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Chỉ mục cho bảng `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Chỉ mục cho bảng `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Chỉ mục cho bảng `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Chỉ mục cho bảng `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Chỉ mục cho bảng `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Chỉ mục cho bảng `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Chỉ mục cho bảng `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Chỉ mục cho bảng `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Chỉ mục cho bảng `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Chỉ mục cho bảng `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Chỉ mục cho bảng `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Chỉ mục cho bảng `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Chỉ mục cho bảng `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Chỉ mục cho bảng `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Chỉ mục cho bảng `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Chỉ mục cho bảng `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_fraud_ip`
--
ALTER TABLE `oc_fraud_ip`
  ADD PRIMARY KEY (`ip`);

--
-- Chỉ mục cho bảng `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Chỉ mục cho bảng `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Chỉ mục cho bảng `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Chỉ mục cho bảng `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Chỉ mục cho bảng `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Chỉ mục cho bảng `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Chỉ mục cho bảng `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Chỉ mục cho bảng `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Chỉ mục cho bảng `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Chỉ mục cho bảng `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Chỉ mục cho bảng `oc_news`
--
ALTER TABLE `oc_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Chỉ mục cho bảng `oc_news_description`
--
ALTER TABLE `oc_news_description`
  ADD PRIMARY KEY (`news_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_news_image`
--
ALTER TABLE `oc_news_image`
  ADD PRIMARY KEY (`news_image_id`),
  ADD KEY `product_id` (`news_id`);

--
-- Chỉ mục cho bảng `oc_news_related`
--
ALTER TABLE `oc_news_related`
  ADD PRIMARY KEY (`news_id`,`related_id`);

--
-- Chỉ mục cho bảng `oc_news_to_category`
--
ALTER TABLE `oc_news_to_category`
  ADD PRIMARY KEY (`news_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `oc_news_to_download`
--
ALTER TABLE `oc_news_to_download`
  ADD PRIMARY KEY (`news_id`,`download_id`);

--
-- Chỉ mục cho bảng `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Chỉ mục cho bảng `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Chỉ mục cho bảng `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Chỉ mục cho bảng `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Chỉ mục cho bảng `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Chỉ mục cho bảng `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Chỉ mục cho bảng `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Chỉ mục cho bảng `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Chỉ mục cho bảng `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Chỉ mục cho bảng `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Chỉ mục cho bảng `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Chỉ mục cho bảng `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Chỉ mục cho bảng `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Chỉ mục cho bảng `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Chỉ mục cho bảng `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Chỉ mục cho bảng `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Chỉ mục cho bảng `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Chỉ mục cho bảng `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Chỉ mục cho bảng `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Chỉ mục cho bảng `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Chỉ mục cho bảng `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Chỉ mục cho bảng `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Chỉ mục cho bảng `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Chỉ mục cho bảng `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Chỉ mục cho bảng `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Chỉ mục cho bảng `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Chỉ mục cho bảng `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Chỉ mục cho bảng `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Chỉ mục cho bảng `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Chỉ mục cho bảng `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Chỉ mục cho bảng `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Chỉ mục cho bảng `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Chỉ mục cho bảng `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Chỉ mục cho bảng `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Chỉ mục cho bảng `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Chỉ mục cho bảng `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT cho bảng `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `oc_category_news`
--
ALTER TABLE `oc_category_news`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT cho bảng `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT cho bảng `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `oc_news`
--
ALTER TABLE `oc_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_news_image`
--
ALTER TABLE `oc_news_image`
  MODIFY `news_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT cho bảng `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2505;

--
-- AUTO_INCREMENT cho bảng `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT cho bảng `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT cho bảng `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=456;

--
-- AUTO_INCREMENT cho bảng `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=910;

--
-- AUTO_INCREMENT cho bảng `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1338;

--
-- AUTO_INCREMENT cho bảng `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT cho bảng `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT cho bảng `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
