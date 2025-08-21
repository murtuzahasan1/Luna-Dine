-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql109.infinityfree.com
-- Generation Time: Aug 21, 2025 at 02:09 PM
-- Server version: 11.4.7-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_39497403_qrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `headquarters_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch_code` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `district` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `manager_name` varchar(100) DEFAULT NULL,
  `capacity` int(11) DEFAULT 50,
  `opening_time` time DEFAULT '10:00:00',
  `closing_time` time DEFAULT '22:00:00',
  `status` enum('active','inactive','renovation') DEFAULT 'active',
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `headquarters_id`, `name`, `branch_code`, `address`, `district`, `area`, `phone`, `email`, `manager_name`, `capacity`, `opening_time`, `closing_time`, `status`, `latitude`, `longitude`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Gulshan Branch', 'GLS', 'House 12, Road 45, Gulshan 1', 'Dhaka', 'Gulshan', '+8802-11111111', 'gulshan@restaurantchain.com', 'Ahmed Khan', 80, '10:00:00', '22:00:00', 'active', NULL, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(2, 1, 'Dhanmondi Branch', 'DMN', 'Plot 3A, Road 7, Dhanmondi', 'Dhaka', 'Dhanmondi', '+8802-22222222', 'dhanmondi@restaurantchain.com', 'Fatema Akter', 60, '10:00:00', '22:00:00', 'active', NULL, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(3, 1, 'Chittagong Branch', 'CTG', 'Agrabad Commercial Area', 'Chittagong', 'Agrabad', '+88031-111111', 'ctg@restaurantchain.com', 'Mohammed Uddin', 100, '10:00:00', '22:00:00', 'active', NULL, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(4, 1, 'Sylhet Branch', 'SYL', 'Zindabazar, Sylhet', 'Sylhet', 'Zindabazar', '+880821-11111', 'sylhet@restaurantchain.com', 'Rahim Chowdhury', 50, '10:00:00', '22:00:00', 'active', NULL, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(5, 1, 'Khulna Branch', 'KHL', 'Sher-e-Bangla Road, Khulna', 'Khulna', 'Sher-e-Bangla', '+88041-11111', 'khulna@restaurantchain.com', 'Karim Mia', 40, '10:00:00', '22:00:00', 'active', NULL, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `branch_menu_items`
--

CREATE TABLE `branch_menu_items` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `menu_item_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `is_available` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branch_menu_items`
--

INSERT INTO `branch_menu_items` (`id`, `branch_id`, `menu_item_id`, `price`, `is_available`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '350.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(2, 1, 2, '450.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(3, 1, 3, '280.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(4, 1, 4, '500.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(5, 1, 5, '420.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(6, 1, 6, '320.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(7, 1, 7, '550.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(8, 1, 8, '250.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(9, 1, 9, '350.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(10, 1, 10, '150.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(11, 1, 11, '80.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(12, 1, 12, '100.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(13, 1, 13, '120.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(14, 1, 14, '100.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(15, 2, 1, '360.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(16, 2, 2, '460.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(17, 2, 3, '290.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(18, 2, 4, '510.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(19, 2, 5, '430.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(20, 2, 6, '330.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(21, 2, 7, '560.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(22, 2, 8, '260.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(23, 2, 9, '360.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(24, 2, 10, '160.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(25, 2, 11, '85.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(26, 2, 12, '105.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(27, 2, 13, '125.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(28, 2, 14, '105.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(29, 3, 1, '340.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(30, 3, 2, '440.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(31, 3, 3, '270.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(32, 3, 4, '490.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(33, 3, 5, '410.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(34, 3, 6, '310.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(35, 3, 7, '540.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(36, 3, 8, '240.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(37, 3, 9, '340.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(38, 3, 10, '140.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(39, 3, 11, '75.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(40, 3, 12, '95.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(41, 3, 13, '115.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(42, 3, 14, '95.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(43, 4, 1, '370.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(44, 4, 2, '470.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(45, 4, 3, '300.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(46, 4, 4, '520.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(47, 4, 5, '440.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(48, 4, 6, '340.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(49, 4, 7, '570.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(50, 4, 8, '270.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(51, 4, 9, '370.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(52, 4, 10, '170.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(53, 4, 11, '90.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(54, 4, 12, '110.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(55, 4, 13, '130.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(56, 4, 14, '110.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(58, 5, 2, '430.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(59, 5, 3, '260.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(60, 5, 4, '480.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(61, 5, 5, '400.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(62, 5, 6, '300.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(63, 5, 7, '530.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(64, 5, 8, '230.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(65, 5, 9, '330.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(66, 5, 10, '130.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(67, 5, 11, '70.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(68, 5, 12, '90.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(69, 5, 13, '110.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11'),
(70, 5, 14, '90.00', 1, '2025-08-18 10:50:11', '2025-08-18 10:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `customer_feedback`
--

CREATE TABLE `customer_feedback` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_phone` varchar(15) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` int(11) NOT NULL,
  `extension_key` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `version` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT 0,
  `is_installed` tinyint(1) DEFAULT 0,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `headquarters`
--

CREATE TABLE `headquarters` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `trade_license` varchar(50) DEFAULT NULL,
  `vat_registration` varchar(50) DEFAULT NULL,
  `bank_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ;

--
-- Dumping data for table `headquarters`
--

INSERT INTO `headquarters` (`id`, `name`, `address`, `phone`, `email`, `trade_license`, `vat_registration`, `bank_details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Restaurant Chain HQ', '123 Gulshan Avenue, Dhaka 1212', '+8802-12345678', 'hq@restaurantchain.com', 'HQ-12345', 'VAT-67890', NULL, 'active', '2025-08-18 00:15:41', '2025-08-18 00:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `menu_categories`
--

CREATE TABLE `menu_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `name_bn` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `description_bn` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_categories`
--

INSERT INTO `menu_categories` (`id`, `name`, `name_bn`, `description`, `description_bn`, `image`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Appetizers', 'অ্যাপিটাইজার', 'Start your meal with our delicious appetizers', 'আমাদের সুস্বাদু অ্যাপিটাইজার দিয়ে আপনার খাবার শুরু করুন', NULL, 1, 1, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(2, 'Main Course', 'মূল খাবার', 'Hearty main courses for your satisfaction', 'আপনার সন্তুষ্টির জন্য হৃদয়গ্রাহী মূল খাবার', NULL, 2, 1, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(3, 'Biriyani', 'বিরিয়ানি', 'Authentic Bangladeshi biriyani', 'প্রামাণিক বাংলাদেশী বিরিয়ানি', NULL, 3, 1, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(4, 'Kacchi & Tehari', 'কাচ্চি ও তেহারি', 'Traditional kacchi and tehari dishes', 'ঐতিহ্যবাহী কাচ্চি ও তেহারি খাবার', NULL, 4, 1, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(5, 'Grill & BBQ', 'গ্রিল ও বিবিকিউ', 'Freshly grilled and BBQ items', 'তাজা গ্রিল ও বিবিকিউ আইটেম', NULL, 5, 1, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(6, 'Chinese', 'চাইনিজ', 'Chinese cuisine specialties', 'চাইনিজ রন্ধনশৈলী বিশেষত্ব', NULL, 6, 1, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(7, 'Indian', 'ইন্ডিয়ান', 'Indian cuisine delights', 'ভারতীয় রন্ধনশৈলী আনন্দ', NULL, 7, 1, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(8, 'Desserts', 'মিষ্টি', 'Sweet endings to your meal', 'আপনার খাবারের মিষ্টি সমাপ্তি', NULL, 8, 1, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(9, 'Beverages', 'পানীয়', 'Refreshing drinks and beverages', 'সতেজ পানীয় ও পানীয়', NULL, 9, 1, '2025-08-18 00:15:41', '2025-08-18 00:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_bn` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `description_bn` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `preparation_time` int(11) DEFAULT 15,
  `is_spicy` enum('none','mild','medium','hot') DEFAULT 'none',
  `is_available` tinyint(1) DEFAULT 1,
  `is_popular` tinyint(1) DEFAULT 0,
  `is_vegetarian` tinyint(1) DEFAULT 0,
  `calories` int(11) DEFAULT NULL,
  `ingredients` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `category_id`, `name`, `name_bn`, `description`, `description_bn`, `price`, `discount_price`, `image`, `preparation_time`, `is_spicy`, `is_available`, `is_popular`, `is_vegetarian`, `calories`, `ingredients`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 3, 'Hyderabadi Biriyani', 'হায়দ্রাবাদী বিরিয়ানি', 'Famous Hyderabadi style biriyani with aromatic basmati rice', 'সুগন্ধি বাসমতি চালের বিখ্যাত হায়দ্রাবাদী স্টাইল বিরিয়ানি', '350.00', NULL, NULL, 30, 'medium', 1, 1, 0, NULL, NULL, 0, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(2, 3, 'Kacchi Biriyani', 'কাচ্চি বিরিয়ানি', 'Traditional Bangladeshi kacchi biriyani with mutton', 'মাটনের সাথে ঐতিহ্যবাহী বাংলাদেশী কাচ্চি বিরিয়ানি', '450.00', NULL, NULL, 45, 'hot', 1, 1, 0, NULL, NULL, 0, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(3, 3, 'Chicken Tehari', 'চিকেন তেহারি', 'Delicious chicken tehari with aromatic rice', 'সুগন্ধি চালের সাথে সুস্বাদু চিকেন তেহারি', '280.00', NULL, NULL, 25, 'mild', 1, 1, 0, NULL, NULL, 0, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(4, 4, 'Beef Kacchi', 'বিফ কাচ্চি', 'Tender beef kacchi with special spices', 'বিশেষ মসলার সাথে কোমল বিফ কাচ্চি', '500.00', NULL, NULL, 50, 'hot', 1, 1, 0, NULL, NULL, 0, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(5, 4, 'Mutton Tehari', 'মাটন তেহারি', 'Premium mutton tehari with basmati rice', 'বাসমতি চালের সাথে প্রিমিয়াম মাটন তেহারি', '420.00', NULL, NULL, 35, 'medium', 1, 0, 0, NULL, NULL, 0, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(6, 5, 'Grilled Chicken', 'গ্রিলড চিকেন', 'Perfectly grilled chicken with herbs and spices', 'ঔষধি এবং মসলার সাথে নিখুঁতভাবে গ্রিল করা চিকেন', '320.00', NULL, NULL, 20, 'mild', 1, 1, 0, NULL, NULL, 0, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(7, 5, 'BBQ Platter', 'বিবিকিউ প্লেটার', 'Mixed BBQ items with grilled vegetables', 'গ্রিলড সবজির সাথে মিশ্র বিবিকিউ আইটেম', '550.00', NULL, NULL, 30, 'medium', 1, 1, 0, NULL, NULL, 0, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(8, 2, 'Chicken Curry', 'চিকেন কারি', 'Traditional Bangladeshi chicken curry', 'ঐতিহ্যবাহী বাংলাদেশী চিকেন কারি', '250.00', NULL, NULL, 20, 'medium', 1, 0, 0, NULL, NULL, 0, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(9, 2, 'Beef Bhuna', 'বিফ ভুনা', 'Spicy beef bhuna with special spices', 'বিশেষ মসলার সাথে ঝাল বিফ ভুনা', '350.00', NULL, NULL, 25, 'hot', 1, 1, 0, NULL, NULL, 0, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(10, 1, 'Soup of the Day', 'দিনের স্যুপ', 'Fresh homemade soup', 'তাজা হোমমেড স্যুপ', '150.00', NULL, NULL, 15, 'none', 1, 0, 0, NULL, NULL, 0, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(11, 8, 'Roshogolla', 'রসগোল্লা', 'Traditional Bengali sweet dessert', 'ঐতিহ্যবাহী বাঙালি মিষ্টি ডেজার্ট', '80.00', NULL, NULL, 5, 'none', 1, 1, 0, NULL, NULL, 0, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(12, 8, 'Mishti Doi', 'মিষ্টি দই', 'Sweetened yogurt dessert', 'মিষ্টি দই ডেজার্ট', '100.00', NULL, NULL, 5, 'none', 1, 1, 0, NULL, NULL, 0, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(13, 9, 'Borhani', 'বোরহানি', 'Traditional Bengali drink', 'ঐতিহ্যবাহী বাঙালি পানীয়', '120.00', NULL, NULL, 5, 'none', 1, 1, 0, NULL, NULL, 0, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(14, 9, 'Lassi', 'লাস্সি', 'Refreshing yogurt drink', 'সতেজ দই পানীয়', '100.00', NULL, NULL, 5, 'none', 1, 0, 0, NULL, NULL, 0, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(15, 1, 'Spring Rolls', 'স্প্রিং রোল', 'Crispy vegetable spring rolls with sweet chili sauce', 'মিষ্টি চিলি সস সহ কুঁচকি সবজি স্প্রিং রোল', '180.00', NULL, NULL, 10, 'none', 1, 1, 0, NULL, NULL, 1, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(16, 1, 'Chicken Wings', 'চিকেন উইংস', 'Spicy chicken wings served with dipping sauce', 'ডিপিং সস সহ মসলাদার চিকেন উইংস', '220.00', NULL, NULL, 15, 'medium', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(17, 1, 'Soup of the Day', 'দিনের স্যুপ', 'Fresh homemade soup with seasonal vegetables', 'মৌসুমী সবজি সহ তাজা হোমমেড স্যুপ', '150.00', NULL, NULL, 8, 'none', 1, 0, 0, NULL, NULL, 3, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(18, 2, 'Chicken Korma', 'চিকেন কোরমা', 'Tender chicken in rich, creamy curry sauce with aromatic spices', 'সুগন্ধযুক্ত মশলা সহ সমৃদ্ধ, ক্রিমি কারি সসে নরম চিকেন', '320.00', NULL, NULL, 20, 'mild', 1, 1, 0, NULL, NULL, 1, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(19, 2, 'Beef Bhuna', 'বিফ ভুনা', 'Spicy beef curry cooked with traditional Bangladeshi spices', 'ঐতিহ্যবাহী বাংলাদেশী মশলা দিয়ে রান্না করা মসলাদার গরুর মাংসের কারি', '380.00', NULL, NULL, 25, 'hot', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(20, 2, 'Fish Curry', 'মাছের ঝোল', 'Fresh fish cooked in authentic Bengali style curry', 'প্রামাণিক বাঙালি স্টাইল কারিতে রান্না করা তাজা মাছ', '350.00', NULL, NULL, 20, 'medium', 1, 1, 0, NULL, NULL, 3, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(21, 2, 'Vegetable Curry', 'সবজি ঝোল', 'Mixed seasonal vegetables in aromatic curry sauce', 'সুগন্ধযুক্ত কারি সসে মিশ্র মৌসুমী সবজি', '220.00', NULL, NULL, 15, 'mild', 1, 0, 0, NULL, NULL, 4, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(22, 3, 'Chicken Biryani', 'চিকেন বিরিয়ানি', 'Fragrant basmati rice cooked with chicken and aromatic spices', 'চিকেন এবং সুগন্ধযুক্ত মশলা দিয়ে রান্না করা সুগন্ধযুক্ত বাসমতি চাল', '450.00', NULL, NULL, 30, 'medium', 1, 1, 0, NULL, NULL, 1, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(23, 3, 'Kacchi Biryani', 'কাচ্চি বিরিয়ানি', 'Traditional Bangladeshi biryani with tender mutton', 'নরম মাটন সহ ঐতিহ্যবাহী বাংলাদেশী বিরিয়ানি', '550.00', NULL, NULL, 45, 'medium', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(24, 3, 'Plain Rice', 'সাদা ভাত', 'Steamed basmati rice served with dal', 'ডাল সহ পরিবেশিত স্টিমড বাসমতি চাল', '80.00', NULL, NULL, 5, 'none', 1, 0, 0, NULL, NULL, 3, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(25, 3, 'Fried Rice', 'ভাজা ভাত', 'Stir-fried rice with vegetables and eggs', 'সবজি এবং ডিম দিয়ে স্টার-ফ্রাইড চাল', '200.00', NULL, NULL, 12, 'none', 1, 0, 0, NULL, NULL, 4, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(26, 4, 'Grilled Chicken', 'গ্রিলড চিকেন', 'Marinated chicken grilled to perfection with spices', 'মশলা দিয়ে মেরিনেট করা নিখুঁতভাবে গ্রিল করা চিকেন', '380.00', NULL, NULL, 20, 'mild', 1, 1, 0, NULL, NULL, 1, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(27, 4, 'BBQ Platter', 'বিবিকিউ প্লেটার', 'Mixed grill platter with chicken, beef, and vegetables', 'চিকেন, গরুর মাংস এবং সবজি সহ মিক্সড গ্রিল প্লেটার', '650.00', NULL, NULL, 25, 'medium', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(28, 4, 'Seekh Kebab', 'সীখ কাবাব', 'Minced meat kebabs grilled with traditional spices', 'ঐতিহ্যবাহী মশলা দিয়ে গ্রিল করা কিমা মাংসের কাবাব', '280.00', NULL, NULL, 15, 'medium', 1, 1, 0, NULL, NULL, 3, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(29, 5, 'Gulab Jamun', 'গোলাপ জামুন', 'Sweet milk balls soaked in rose syrup', 'গোলাপ সিরাপে ভেজানো মিষ্টি দুধের বল', '120.00', NULL, NULL, 5, 'none', 1, 1, 0, NULL, NULL, 1, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(30, 5, 'Rasmalai', 'রসমালাই', 'Soft cheese patties in sweetened milk', 'মিষ্টি দুধে নরম পনির পাট্টি', '150.00', NULL, NULL, 5, 'none', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(31, 5, 'Ice Cream', 'আইসক্রিম', 'Vanilla, chocolate, or strawberry ice cream', 'ভ্যানিলা, চকোলেট, বা স্ট্রবেরি আইসক্রিম', '100.00', NULL, NULL, 2, 'none', 1, 0, 0, NULL, NULL, 3, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(32, 6, 'Soft Drinks', 'সফট ড্রিঙ্কস', 'Coca-Cola, Pepsi, Sprite, or 7-Up', 'কোকা-কোলা, পেপসি, স্প্রাইট, বা ৭-আপ', '60.00', NULL, NULL, 2, 'none', 1, 0, 0, NULL, NULL, 1, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(33, 6, 'Fresh Juice', 'তাজা জুস', 'Orange, apple, or mango juice', 'কমলা, আপেল, বা আমের জুস', '120.00', NULL, NULL, 5, 'none', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(34, 6, 'Lassi', 'লস্যি', 'Traditional yogurt drink, sweet or salty', 'ঐতিহ্যবাহী দই পানীয়, মিষ্টি বা লবণ', '80.00', NULL, NULL, 3, 'none', 1, 1, 0, NULL, NULL, 3, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(35, 6, 'Tea/Coffee', 'চা/কফি', 'Hot tea or coffee', 'গরম চা বা কফি', '50.00', NULL, NULL, 5, 'none', 1, 0, 0, NULL, NULL, 4, '2025-08-18 00:29:17', '2025-08-18 00:29:17'),
(36, 1, 'Spring Rolls', 'স্প্রিং রোল', 'Crispy vegetable spring rolls with sweet chili sauce', 'মিষ্টি চিলি সস সহ কুঁচকি সবজি স্প্রিং রোল', '180.00', NULL, NULL, 10, 'none', 1, 1, 0, NULL, NULL, 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(37, 1, 'Chicken Wings', 'চিকেন উইংস', 'Spicy chicken wings served with dipping sauce', 'ডিপিং সস সহ মসলাদার চিকেন উইংস', '220.00', NULL, NULL, 15, 'medium', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(38, 1, 'Soup of the Day', 'দিনের স্যুপ', 'Fresh homemade soup with seasonal vegetables', 'মৌসুমী সবজি সহ তাজা হোমমেড স্যুপ', '150.00', NULL, NULL, 8, 'none', 1, 0, 0, NULL, NULL, 3, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(39, 2, 'Chicken Korma', 'চিকেন কোরমা', 'Tender chicken in rich, creamy curry sauce with aromatic spices', 'সুগন্ধযুক্ত মশলা সহ সমৃদ্ধ, ক্রিমি কারি সসে নরম চিকেন', '320.00', NULL, NULL, 20, 'mild', 1, 1, 0, NULL, NULL, 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(40, 2, 'Beef Bhuna', 'বিফ ভুনা', 'Spicy beef curry cooked with traditional Bangladeshi spices', 'ঐতিহ্যবাহী বাংলাদেশী মশলা দিয়ে রান্না করা মসলাদার গরুর মাংসের কারি', '380.00', NULL, NULL, 25, 'hot', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(41, 2, 'Fish Curry', 'মাছের ঝোল', 'Fresh fish cooked in authentic Bengali style curry', 'প্রামাণিক বাঙালি স্টাইল কারিতে রান্না করা তাজা মাছ', '350.00', NULL, NULL, 20, 'medium', 1, 1, 0, NULL, NULL, 3, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(42, 2, 'Vegetable Curry', 'সবজি ঝোল', 'Mixed seasonal vegetables in aromatic curry sauce', 'সুগন্ধযুক্ত কারি সসে মিশ্র মৌসুমী সবজি', '220.00', NULL, NULL, 15, 'mild', 1, 0, 0, NULL, NULL, 4, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(43, 3, 'Chicken Biryani', 'চিকেন বিরিয়ানি', 'Fragrant basmati rice cooked with chicken and aromatic spices', 'চিকেন এবং সুগন্ধযুক্ত মশলা দিয়ে রান্না করা সুগন্ধযুক্ত বাসমতি চাল', '450.00', NULL, NULL, 30, 'medium', 1, 1, 0, NULL, NULL, 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(44, 3, 'Kacchi Biryani', 'কাচ্চি বিরিয়ানি', 'Traditional Bangladeshi biryani with tender mutton', 'নরম মাটন সহ ঐতিহ্যবাহী বাংলাদেশী বিরিয়ানি', '550.00', NULL, NULL, 45, 'medium', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(45, 3, 'Plain Rice', 'সাদা ভাত', 'Steamed basmati rice served with dal', 'ডাল সহ পরিবেশিত স্টিমড বাসমতি চাল', '80.00', NULL, NULL, 5, 'none', 1, 0, 0, NULL, NULL, 3, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(46, 3, 'Fried Rice', 'ভাজা ভাত', 'Stir-fried rice with vegetables and eggs', 'সবজি এবং ডিম দিয়ে স্টার-ফ্রাইড চাল', '200.00', NULL, NULL, 12, 'none', 1, 0, 0, NULL, NULL, 4, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(47, 4, 'Grilled Chicken', 'গ্রিলড চিকেন', 'Marinated chicken grilled to perfection with spices', 'মশলা দিয়ে মেরিনেট করা নিখুঁতভাবে গ্রিল করা চিকেন', '380.00', NULL, NULL, 20, 'mild', 1, 1, 0, NULL, NULL, 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(48, 4, 'BBQ Platter', 'বিবিকিউ প্লেটার', 'Mixed grill platter with chicken, beef, and vegetables', 'চিকেন, গরুর মাংস এবং সবজি সহ মিক্সড গ্রিল প্লেটার', '650.00', NULL, NULL, 25, 'medium', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(49, 4, 'Seekh Kebab', 'সীখ কাবাব', 'Minced meat kebabs grilled with traditional spices', 'ঐতিহ্যবাহী মশলা দিয়ে গ্রিল করা কিমা মাংসের কাবাব', '280.00', NULL, NULL, 15, 'medium', 1, 1, 0, NULL, NULL, 3, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(50, 5, 'Gulab Jamun', 'গোলাপ জামুন', 'Sweet milk balls soaked in rose syrup', 'গোলাপ সিরাপে ভেজানো মিষ্টি দুধের বল', '120.00', NULL, NULL, 5, 'none', 1, 1, 0, NULL, NULL, 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(51, 5, 'Rasmalai', 'রসমালাই', 'Soft cheese patties in sweetened milk', 'মিষ্টি দুধে নরম পনির পাট্টি', '150.00', NULL, NULL, 5, 'none', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(52, 5, 'Ice Cream', 'আইসক্রিম', 'Vanilla, chocolate, or strawberry ice cream', 'ভ্যানিলা, চকোলেট, বা স্ট্রবেরি আইসক্রিম', '100.00', NULL, NULL, 2, 'none', 1, 0, 0, NULL, NULL, 3, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(53, 6, 'Soft Drinks', 'সফট ড্রিঙ্কস', 'Coca-Cola, Pepsi, Sprite, or 7-Up', 'কোকা-কোলা, পেপসি, স্প্রাইট, বা ৭-আপ', '60.00', NULL, NULL, 2, 'none', 1, 0, 0, NULL, NULL, 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(54, 6, 'Fresh Juice', 'তাজা জুস', 'Orange, apple, or mango juice', 'কমলা, আপেল, বা আমের জুস', '120.00', NULL, NULL, 5, 'none', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(55, 6, 'Lassi', 'লস্যি', 'Traditional yogurt drink, sweet or salty', 'ঐতিহ্যবাহী দই পানীয়, মিষ্টি বা লবণ', '80.00', NULL, NULL, 3, 'none', 1, 1, 0, NULL, NULL, 3, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(56, 6, 'Tea/Coffee', 'চা/কফি', 'Hot tea or coffee', 'গরম চা বা কফি', '50.00', NULL, NULL, 5, 'none', 1, 0, 0, NULL, NULL, 4, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(57, 1, 'Spring Rolls', 'স্প্রিং রোল', 'Crispy vegetable spring rolls with sweet chili sauce', 'মিষ্টি চিলি সস সহ কুঁচকি সবজি স্প্রিং রোল', '180.00', NULL, NULL, 10, 'none', 1, 1, 0, NULL, NULL, 1, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(58, 1, 'Chicken Wings', 'চিকেন উইংস', 'Spicy chicken wings served with dipping sauce', 'ডিপিং সস সহ মসলাদার চিকেন উইংস', '220.00', NULL, NULL, 15, 'medium', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(59, 1, 'Soup of the Day', 'দিনের স্যুপ', 'Fresh homemade soup with seasonal vegetables', 'মৌসুমী সবজি সহ তাজা হোমমেড স্যুপ', '150.00', NULL, NULL, 8, 'none', 1, 0, 0, NULL, NULL, 3, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(60, 2, 'Chicken Korma', 'চিকেন কোরমা', 'Tender chicken in rich, creamy curry sauce with aromatic spices', 'সুগন্ধযুক্ত মশলা সহ সমৃদ্ধ, ক্রিমি কারি সসে নরম চিকেন', '320.00', NULL, NULL, 20, 'mild', 1, 1, 0, NULL, NULL, 1, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(61, 2, 'Beef Bhuna', 'বিফ ভুনা', 'Spicy beef curry cooked with traditional Bangladeshi spices', 'ঐতিহ্যবাহী বাংলাদেশী মশলা দিয়ে রান্না করা মসলাদার গরুর মাংসের কারি', '380.00', NULL, NULL, 25, 'hot', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(62, 2, 'Fish Curry', 'মাছের ঝোল', 'Fresh fish cooked in authentic Bengali style curry', 'প্রামাণিক বাঙালি স্টাইল কারিতে রান্না করা তাজা মাছ', '350.00', NULL, NULL, 20, 'medium', 1, 1, 0, NULL, NULL, 3, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(63, 2, 'Vegetable Curry', 'সবজি ঝোল', 'Mixed seasonal vegetables in aromatic curry sauce', 'সুগন্ধযুক্ত কারি সসে মিশ্র মৌসুমী সবজি', '220.00', NULL, NULL, 15, 'mild', 1, 0, 0, NULL, NULL, 4, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(64, 3, 'Chicken Biryani', 'চিকেন বিরিয়ানি', 'Fragrant basmati rice cooked with chicken and aromatic spices', 'চিকেন এবং সুগন্ধযুক্ত মশলা দিয়ে রান্না করা সুগন্ধযুক্ত বাসমতি চাল', '450.00', NULL, NULL, 30, 'medium', 1, 1, 0, NULL, NULL, 1, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(65, 3, 'Kacchi Biryani', 'কাচ্চি বিরিয়ানি', 'Traditional Bangladeshi biryani with tender mutton', 'নরম মাটন সহ ঐতিহ্যবাহী বাংলাদেশী বিরিয়ানি', '550.00', NULL, NULL, 45, 'medium', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(66, 3, 'Plain Rice', 'সাদা ভাত', 'Steamed basmati rice served with dal', 'ডাল সহ পরিবেশিত স্টিমড বাসমতি চাল', '80.00', NULL, NULL, 5, 'none', 1, 0, 0, NULL, NULL, 3, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(67, 3, 'Fried Rice', 'ভাজা ভাত', 'Stir-fried rice with vegetables and eggs', 'সবজি এবং ডিম দিয়ে স্টার-ফ্রাইড চাল', '200.00', NULL, NULL, 12, 'none', 1, 0, 0, NULL, NULL, 4, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(68, 4, 'Grilled Chicken', 'গ্রিলড চিকেন', 'Marinated chicken grilled to perfection with spices', 'মশলা দিয়ে মেরিনেট করা নিখুঁতভাবে গ্রিল করা চিকেন', '380.00', NULL, NULL, 20, 'mild', 1, 1, 0, NULL, NULL, 1, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(69, 4, 'BBQ Platter', 'বিবিকিউ প্লেটার', 'Mixed grill platter with chicken, beef, and vegetables', 'চিকেন, গরুর মাংস এবং সবজি সহ মিক্সড গ্রিল প্লেটার', '650.00', NULL, NULL, 25, 'medium', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(70, 4, 'Seekh Kebab', 'সীখ কাবাব', 'Minced meat kebabs grilled with traditional spices', 'ঐতিহ্যবাহী মশলা দিয়ে গ্রিল করা কিমা মাংসের কাবাব', '280.00', NULL, NULL, 15, 'medium', 1, 1, 0, NULL, NULL, 3, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(71, 5, 'Gulab Jamun', 'গোলাপ জামুন', 'Sweet milk balls soaked in rose syrup', 'গোলাপ সিরাপে ভেজানো মিষ্টি দুধের বল', '120.00', NULL, NULL, 5, 'none', 1, 1, 0, NULL, NULL, 1, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(72, 5, 'Rasmalai', 'রসমালাই', 'Soft cheese patties in sweetened milk', 'মিষ্টি দুধে নরম পনির পাট্টি', '150.00', NULL, NULL, 5, 'none', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(73, 5, 'Ice Cream', 'আইসক্রিম', 'Vanilla, chocolate, or strawberry ice cream', 'ভ্যানিলা, চকোলেট, বা স্ট্রবেরি আইসক্রিম', '100.00', NULL, NULL, 2, 'none', 1, 0, 0, NULL, NULL, 3, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(74, 6, 'Soft Drinks', 'সফট ড্রিঙ্কস', 'Coca-Cola, Pepsi, Sprite, or 7-Up', 'কোকা-কোলা, পেপসি, স্প্রাইট, বা ৭-আপ', '60.00', NULL, NULL, 2, 'none', 1, 0, 0, NULL, NULL, 1, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(75, 6, 'Fresh Juice', 'তাজা জুস', 'Orange, apple, or mango juice', 'কমলা, আপেল, বা আমের জুস', '120.00', NULL, NULL, 5, 'none', 1, 1, 0, NULL, NULL, 2, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(76, 6, 'Lassi', 'লস্যি', 'Traditional yogurt drink, sweet or salty', 'ঐতিহ্যবাহী দই পানীয়, মিষ্টি বা লবণ', '80.00', NULL, NULL, 3, 'none', 1, 1, 0, NULL, NULL, 3, '2025-08-18 00:42:51', '2025-08-18 00:42:51'),
(77, 6, 'Tea/Coffee', 'চা/কফি', 'Hot tea or coffee', 'গরম চা বা কফি', '50.00', NULL, NULL, 5, 'none', 1, 0, 0, NULL, NULL, 4, '2025-08-18 00:42:51', '2025-08-18 00:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `version` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `executed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `description`, `executed_at`) VALUES
(1, '1.0.0', 'Initial database schema creation', '2025-08-18 00:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `order_number` varchar(20) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_phone` varchar(15) DEFAULT NULL,
  `status` enum('pending','confirmed','preparing','ready','served','completed','cancelled') DEFAULT 'pending',
  `payment_status` enum('pending','paid','failed') DEFAULT 'pending',
  `payment_method` enum('cash','card','bkash','nagad','rocket','upay','bank_transfer') DEFAULT 'cash',
  `subtotal` decimal(10,2) NOT NULL,
  `vat_amount` decimal(10,2) DEFAULT 0.00,
  `service_charge` decimal(10,2) DEFAULT 0.00,
  `discount_amount` decimal(10,2) DEFAULT 0.00,
  `total_amount` decimal(10,2) NOT NULL,
  `notes` text DEFAULT NULL,
  `order_type` enum('dine_in','takeaway','delivery') DEFAULT 'dine_in',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `branch_id`, `table_id`, `order_number`, `customer_name`, `customer_phone`, `status`, `payment_status`, `payment_method`, `subtotal`, `vat_amount`, `service_charge`, `discount_amount`, `total_amount`, `notes`, `order_type`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 28, 'ORD-1-20250818-001', 'Fatema Begum', '+8801964912345', 'confirmed', 'pending', 'cash', '1072.00', '160.80', '107.20', '0.00', '1340.00', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(2, 1, 3, 'ORD-1-20250818-002', 'Robert Johnson', '+8801938484713', 'completed', 'paid', 'bkash', '1979.00', '296.85', '197.90', '0.00', '2473.75', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(3, 1, 32, 'ORD-1-20250818-003', 'Jane Smith', '+8801960332663', 'completed', 'paid', 'card', '1035.00', '155.25', '103.50', '0.00', '1293.75', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(4, 1, 26, 'ORD-1-20250818-004', 'Fatema Begum', '+8801755328521', 'completed', 'paid', 'cash', '356.00', '53.40', '35.60', '0.00', '445.00', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(5, 1, 36, 'ORD-1-20250818-005', 'John Doe', '+8801931378311', 'completed', 'paid', 'card', '1013.00', '151.95', '101.30', '0.00', '1266.25', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(6, 1, 7, 'ORD-1-20250818-006', 'Fatema Begum', '+8801806130682', 'confirmed', 'pending', 'bkash', '387.00', '58.05', '38.70', '0.00', '483.75', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(7, 1, 4, 'ORD-1-20250818-007', 'John Doe', '+8801820374343', 'completed', 'paid', 'card', '1006.00', '150.90', '100.60', '0.00', '1257.50', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(8, 1, 7, 'ORD-1-20250818-008', 'Jane Smith', '+8801995999260', 'completed', 'paid', 'nagad', '569.00', '85.35', '56.90', '0.00', '711.25', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(9, 1, 4, 'ORD-1-20250818-009', 'Fatema Begum', '+8801717031816', 'completed', 'paid', 'card', '249.00', '37.35', '24.90', '0.00', '311.25', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(10, 1, 26, 'ORD-1-20250818-010', 'John Doe', '+8801981574090', 'completed', 'paid', 'nagad', '382.00', '57.30', '38.20', '0.00', '477.50', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(11, 2, 30, 'ORD-2-20250818-001', 'Fatema Begum', '+8801803241862', 'pending', 'pending', 'bkash', '547.00', '82.05', '54.70', '0.00', '683.75', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(12, 2, 7, 'ORD-2-20250818-002', 'John Doe', '+8801721316151', 'completed', 'paid', 'card', '1854.00', '278.10', '185.40', '0.00', '2317.50', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(13, 2, 29, 'ORD-2-20250818-003', 'Md. Islam', '+8801749883743', 'completed', 'paid', 'card', '264.00', '39.60', '26.40', '0.00', '330.00', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(14, 2, 30, 'ORD-2-20250818-004', 'John Doe', '+8801949366154', 'completed', 'paid', 'cash', '399.00', '59.85', '39.90', '0.00', '498.75', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(15, 2, 7, 'ORD-2-20250818-005', 'Md. Islam', '+8801825372965', 'completed', 'paid', 'nagad', '1301.00', '195.15', '130.10', '0.00', '1626.25', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(16, 2, 5, 'ORD-2-20250818-006', 'Jane Smith', '+8801845855587', 'confirmed', 'pending', 'card', '204.00', '30.60', '20.40', '0.00', '255.00', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(17, 2, 4, 'ORD-2-20250818-007', 'John Doe', '+8801908277137', 'completed', 'paid', 'cash', '524.00', '78.60', '52.40', '0.00', '655.00', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(18, 2, 27, 'ORD-2-20250818-008', 'John Doe', '+8801711989549', 'confirmed', 'pending', 'card', '1430.00', '214.50', '143.00', '0.00', '1787.50', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(19, 2, 3, 'ORD-2-20250818-009', 'Fatema Begum', '+8801849708292', 'completed', 'paid', 'bkash', '1923.00', '288.45', '192.30', '0.00', '2403.75', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(20, 2, 7, 'ORD-2-20250818-010', 'John Doe', '+8801982136109', 'completed', 'paid', 'nagad', '206.00', '30.90', '20.60', '0.00', '257.50', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(21, 3, 31, 'ORD-3-20250818-001', 'Fatema Begum', '+8801810006472', 'completed', 'paid', 'card', '1461.00', '219.15', '146.10', '0.00', '1826.25', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(22, 3, 25, 'ORD-3-20250818-002', 'Jane Smith', '+8801996209839', 'completed', 'paid', 'cash', '885.00', '132.75', '88.50', '0.00', '1106.25', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(23, 3, 32, 'ORD-3-20250818-003', 'Jane Smith', '+8801909417031', 'completed', 'paid', 'card', '327.00', '49.05', '32.70', '0.00', '408.75', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(24, 3, 31, 'ORD-3-20250818-004', 'Jane Smith', '+8801979253696', 'confirmed', 'pending', 'card', '346.00', '51.90', '34.60', '0.00', '432.50', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(25, 3, 29, 'ORD-3-20250818-005', 'Md. Islam', '+8801900347170', 'confirmed', 'pending', 'card', '366.00', '54.90', '36.60', '0.00', '457.50', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(26, 3, 36, 'ORD-3-20250818-006', 'Robert Johnson', '+8801796426561', 'completed', 'paid', 'nagad', '257.00', '38.55', '25.70', '0.00', '321.25', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(27, 3, 29, 'ORD-3-20250818-007', 'Md. Islam', '+8801887100268', 'completed', 'paid', 'cash', '1206.00', '180.90', '120.60', '0.00', '1507.50', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(28, 3, 6, 'ORD-3-20250818-008', 'Jane Smith', '+8801752034515', 'confirmed', 'pending', 'nagad', '1415.00', '212.25', '141.50', '0.00', '1768.75', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(29, 3, 27, 'ORD-3-20250818-009', 'Fatema Begum', '+8801823667034', 'completed', 'paid', 'card', '1301.00', '195.15', '130.10', '0.00', '1626.25', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(30, 3, 27, 'ORD-3-20250818-010', 'Robert Johnson', '+8801751415981', 'pending', 'pending', 'nagad', '720.00', '108.00', '72.00', '0.00', '900.00', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(31, 4, 5, 'ORD-4-20250818-001', 'Jane Smith', '+8801761602095', 'confirmed', 'pending', 'card', '703.00', '105.45', '70.30', '0.00', '878.75', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(32, 4, 4, 'ORD-4-20250818-002', 'John Doe', '+8801804078703', 'confirmed', 'pending', 'card', '289.00', '43.35', '28.90', '0.00', '361.25', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(33, 4, 26, 'ORD-4-20250818-003', 'Md. Islam', '+8801950727565', 'completed', 'paid', 'card', '305.00', '45.75', '30.50', '0.00', '381.25', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(34, 4, 29, 'ORD-4-20250818-004', 'John Doe', '+8801785468464', 'completed', 'paid', 'cash', '850.00', '127.50', '85.00', '0.00', '1062.50', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(35, 4, 35, 'ORD-4-20250818-005', 'Fatema Begum', '+8801753116042', 'completed', 'paid', 'cash', '506.00', '75.90', '50.60', '0.00', '632.50', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(36, 4, 29, 'ORD-4-20250818-006', 'John Doe', '+8801930330572', 'completed', 'paid', 'bkash', '1269.00', '190.35', '126.90', '0.00', '1586.25', NULL, 'dine_in', 1, '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(37, 4, 7, 'ORD-4-20250818-007', 'Robert Johnson', '+8801924305656', 'completed', 'paid', 'cash', '1288.00', '193.20', '128.80', '0.00', '1610.00', NULL, 'dine_in', 1, '2025-08-18 00:38:59', '2025-08-18 00:38:59'),
(38, 4, 36, 'ORD-4-20250818-008', 'John Doe', '+8801823112319', 'completed', 'paid', 'bkash', '1400.00', '210.00', '140.00', '0.00', '1750.00', NULL, 'dine_in', 1, '2025-08-18 00:38:59', '2025-08-18 00:38:59'),
(39, 4, 8, 'ORD-4-20250818-009', 'Fatema Begum', '+8801950259838', 'confirmed', 'pending', 'cash', '1132.00', '169.80', '113.20', '0.00', '1415.00', NULL, 'dine_in', 1, '2025-08-18 00:38:59', '2025-08-18 00:38:59'),
(40, 4, 1, 'ORD-4-20250818-010', 'Md. Islam', '+8801978522471', 'completed', 'paid', 'card', '1125.00', '168.75', '112.50', '0.00', '1406.25', NULL, 'dine_in', 1, '2025-08-18 00:38:59', '2025-08-18 00:38:59'),
(41, 1, NULL, 'ORD-2025081813442425', NULL, NULL, 'pending', 'pending', 'cash', '330.00', '49.50', '33.00', '0.00', '412.50', '', 'dine_in', NULL, '2025-08-18 11:44:24', '2025-08-18 11:44:24'),
(42, 1, NULL, 'ORD-2025081813453761', NULL, NULL, 'pending', 'pending', 'nagad', '180.00', '27.00', '18.00', '0.00', '225.00', '', 'dine_in', NULL, '2025-08-18 11:45:37', '2025-08-18 11:45:37'),
(43, 1, NULL, 'ORD-2025081813515342', NULL, NULL, 'pending', 'pending', 'cash', '180.00', '27.00', '18.00', '0.00', '225.00', '', 'dine_in', NULL, '2025-08-18 11:51:53', '2025-08-18 11:51:53'),
(44, 1, NULL, 'ORD-2025081815034526', NULL, NULL, 'pending', 'pending', 'cash', '250.00', '37.50', '25.00', '0.00', '312.50', '', 'dine_in', NULL, '2025-08-18 13:03:45', '2025-08-18 13:03:45'),
(45, 1, NULL, 'ORD-2025081817283925', NULL, NULL, 'pending', 'pending', 'cash', '150.00', '22.50', '15.00', '0.00', '187.50', '', 'dine_in', NULL, '2025-08-18 15:28:39', '2025-08-18 15:28:39'),
(46, 1, NULL, 'ORD-2025081817374965', NULL, NULL, 'pending', 'pending', 'cash', '350.00', '52.50', '35.00', '0.00', '437.50', '', 'dine_in', NULL, '2025-08-18 15:37:49', '2025-08-18 15:37:49'),
(47, 1, NULL, 'ORD-2025081817393368', NULL, NULL, 'pending', 'pending', 'cash', '250.00', '37.50', '25.00', '0.00', '312.50', '', 'dine_in', NULL, '2025-08-18 15:39:33', '2025-08-18 15:39:33'),
(48, 1, NULL, 'ORD-2025081819185317', NULL, NULL, 'pending', 'pending', 'cash', '730.00', '109.50', '73.00', '0.00', '912.50', '', 'dine_in', NULL, '2025-08-18 17:18:53', '2025-08-18 17:18:53'),
(49, 1, NULL, 'ORD-2025081819191149', NULL, NULL, 'pending', 'pending', 'cash', '450.00', '67.50', '45.00', '0.00', '562.50', '', 'dine_in', NULL, '2025-08-18 17:19:11', '2025-08-18 17:19:11'),
(50, 1, NULL, 'ORD-2025081819540271', 'rrf', '01793784379', 'pending', 'pending', 'cash', '380.00', '19.00', '38.00', '0.00', '437.00', '', 'dine_in', NULL, '2025-08-18 17:54:02', '2025-08-18 17:54:02'),
(51, 1, NULL, 'ORD-2025081819554938', 'rrf', '01793784379', 'pending', 'pending', 'cash', '180.00', '9.00', '18.00', '0.00', '207.00', '', 'takeaway', NULL, '2025-08-18 17:55:49', '2025-08-18 17:55:49'),
(52, 1, NULL, 'ORD-2025081820423888', 'rrf', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'takeaway', NULL, '2025-08-18 18:42:38', '2025-08-18 18:42:38'),
(53, 2, NULL, 'ORD-2025081820541295', 'rrf', '01793784379', 'pending', 'pending', 'cash', '360.00', '18.00', '36.00', '0.00', '414.00', '', 'dine_in', NULL, '2025-08-18 18:54:12', '2025-08-18 18:54:12'),
(54, 1, NULL, 'ORD-2025081820590454', 'rrf', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'dine_in', NULL, '2025-08-18 18:59:04', '2025-08-18 18:59:04'),
(55, 1, NULL, 'ORD-2025081821245691', 'rrf', '01793784379', 'pending', 'pending', 'cash', '350.00', '17.50', '35.00', '0.00', '402.50', '', 'takeaway', NULL, '2025-08-18 19:24:56', '2025-08-18 19:24:56'),
(56, 5, NULL, 'ORD-2025081821343675', 'rrf', '01793784379', 'pending', 'pending', 'cash', '430.00', '21.50', '43.00', '0.00', '494.50', '', 'dine_in', NULL, '2025-08-18 19:34:36', '2025-08-18 19:34:36'),
(57, 1, NULL, 'ORD-2025081821355174', 'rrf', '33', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'dine_in', NULL, '2025-08-18 19:35:51', '2025-08-18 19:35:51'),
(58, 1, NULL, 'ORD-2025081821443718', 'rrf', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'dine_in', NULL, '2025-08-18 19:44:37', '2025-08-18 19:44:37'),
(59, 1, NULL, 'ORD-2025081821514874', 'rrf', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'dine_in', NULL, '2025-08-18 19:51:48', '2025-08-18 19:51:48'),
(60, 1, NULL, 'ORD-2025081821521634', 'rrf', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'dine_in', NULL, '2025-08-18 19:52:16', '2025-08-18 19:52:16'),
(61, 1, NULL, 'ORD-2025081821524779', 'rrf', '01793784379', 'pending', 'pending', 'cash', '250.00', '12.50', '25.00', '0.00', '287.50', '', 'dine_in', NULL, '2025-08-18 19:52:47', '2025-08-18 19:52:47'),
(62, 1, NULL, 'ORD-2025081821541294', 'rrf', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'dine_in', NULL, '2025-08-18 19:54:12', '2025-08-18 19:54:12'),
(63, 1, NULL, 'ORD-2025081821595334', 'rrf', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'dine_in', NULL, '2025-08-18 19:59:53', '2025-08-18 19:59:53'),
(64, 1, NULL, 'ORD-2025081822011255', 'rrf', '01793784379', 'pending', 'pending', 'cash', '880.00', '44.00', '88.00', '0.00', '1012.00', '', 'dine_in', NULL, '2025-08-18 20:01:12', '2025-08-18 20:01:12'),
(65, 1, NULL, 'ORD-2025081822114879', 'rrf', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'dine_in', NULL, '2025-08-18 20:11:48', '2025-08-18 20:11:48'),
(66, 1, NULL, 'ORD-2025081822141410', 'rrf', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'dine_in', NULL, '2025-08-18 20:14:14', '2025-08-18 20:14:14'),
(67, 1, NULL, 'ORD-2025081822471140', 'rrf', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'dine_in', NULL, '2025-08-18 20:47:11', '2025-08-18 20:47:11'),
(68, 1, NULL, 'ORD-2025081822485074', 'rrf', '01793784379', 'pending', 'pending', 'cash', '350.00', '17.50', '35.00', '0.00', '402.50', '', 'dine_in', NULL, '2025-08-18 20:48:50', '2025-08-18 20:48:50'),
(69, 1, NULL, 'ORD-2025081822535592', 'rrf', '01793784379', 'pending', 'pending', 'cash', '280.00', '14.00', '28.00', '0.00', '322.00', '', 'dine_in', NULL, '2025-08-18 20:53:55', '2025-08-18 20:53:55'),
(70, 5, NULL, 'ORD-2025081822580835', 'rrf', '01793784379', 'pending', 'pending', 'cash', '90.00', '4.50', '9.00', '0.00', '103.50', '', 'dine_in', NULL, '2025-08-18 20:58:08', '2025-08-18 20:58:08'),
(71, 1, NULL, 'ORD-2025081823323591', 'rrf', '01793784379', 'pending', 'pending', 'cash', '550.00', '27.50', '55.00', '0.00', '632.50', '', 'dine_in', NULL, '2025-08-18 21:32:35', '2025-08-18 21:32:35'),
(72, 1, NULL, 'ORD-2025081823431643', 'rrf', '01793784379', 'pending', 'pending', 'cash', '500.00', '25.00', '50.00', '0.00', '575.00', '', 'dine_in', NULL, '2025-08-18 21:43:16', '2025-08-18 21:43:16'),
(73, 1, NULL, 'ORD-2025081900115634', 'rrf', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'takeaway', NULL, '2025-08-18 22:11:56', '2025-08-18 22:11:56'),
(74, 1, NULL, 'ORD-2025081900290624', 'rrf', '01793784379', 'pending', 'pending', 'cash', '250.00', '12.50', '25.00', '0.00', '287.50', '', 'takeaway', NULL, '2025-08-18 22:29:06', '2025-08-18 22:29:06'),
(75, 1, NULL, 'ORD-2025081900332923', 'rrf', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'takeaway', NULL, '2025-08-18 22:33:29', '2025-08-18 22:33:29'),
(76, 1, NULL, 'ORD-2025081917111514', 'rrf', '01793784379', 'pending', 'pending', 'cash', '500.00', '25.00', '50.00', '0.00', '575.00', '', 'takeaway', NULL, '2025-08-19 11:11:15', '2025-08-19 11:11:15'),
(77, 1, NULL, 'ORD-2025081918335875', 'Murtuza', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'takeaway', NULL, '2025-08-19 12:33:58', '2025-08-19 12:33:58'),
(78, 1, NULL, 'ORD-2025081918352192', 'Murtuza', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'takeaway', NULL, '2025-08-19 12:35:21', '2025-08-19 12:35:21'),
(79, 1, 2, 'ORD-2025081918424297', 'Murtuza', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'dine_in', NULL, '2025-08-19 12:42:42', '2025-08-19 12:42:42'),
(80, 1, NULL, 'ORD-2025081918435467', 'Murtuza', '01793784379', 'pending', 'pending', 'cash', '350.00', '17.50', '35.00', '0.00', '402.50', '', 'takeaway', NULL, '2025-08-19 12:43:54', '2025-08-19 12:43:54'),
(81, 1, 3, 'ORD-2025081919183714', 'Murtuza', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', 'ss', 'dine_in', NULL, '2025-08-19 13:18:37', '2025-08-19 13:18:37'),
(82, 1, 3, 'ORD-2025082000474798', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '280.00', '14.00', '28.00', '0.00', '322.00', '', 'dine_in', NULL, '2025-08-19 18:47:47', '2025-08-19 18:47:47'),
(83, 1, 2, 'ORD-2025082001492765', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '1300.00', '65.00', '130.00', '0.00', '1495.00', '', 'dine_in', NULL, '2025-08-19 19:49:27', '2025-08-19 19:49:27'),
(84, 1, 1, 'ORD-2025082001511227', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '300.00', '15.00', '30.00', '0.00', '345.00', '', 'dine_in', NULL, '2025-08-19 19:51:12', '2025-08-19 19:51:12'),
(85, 1, 38, 'ORD-2025082002560458', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '420.00', '21.00', '42.00', '0.00', '483.00', '', 'dine_in', NULL, '2025-08-19 20:56:04', '2025-08-19 20:56:04'),
(86, 1, NULL, 'ORD-2025082003000913', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '100.00', '5.00', '10.00', '0.00', '115.00', '', 'takeaway', NULL, '2025-08-19 21:00:09', '2025-08-19 21:00:09'),
(87, 1, NULL, 'ORD-2025082003541566', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '680.00', '34.00', '68.00', '0.00', '782.00', '', 'takeaway', NULL, '2025-08-19 21:54:15', '2025-08-19 21:54:15'),
(88, 1, 29, 'ORD-2025082003543357', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '500.00', '25.00', '50.00', '0.00', '575.00', '', 'dine_in', NULL, '2025-08-19 21:54:33', '2025-08-19 21:54:33'),
(105, 1, 3, 'ORD-2025082004555791', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'dine_in', NULL, '2025-08-19 22:55:57', '2025-08-19 22:55:57'),
(107, 1, NULL, 'ORD-2025082005090053', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '500.00', '25.00', '50.00', '0.00', '575.00', '', 'takeaway', NULL, '2025-08-19 23:09:00', '2025-08-19 23:09:00'),
(108, 1, NULL, 'ORD-2025082005100084', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '630.00', '31.50', '63.00', '0.00', '724.50', '', 'takeaway', NULL, '2025-08-19 23:10:00', '2025-08-19 23:10:00'),
(109, 1, NULL, 'ORD-2025082005110081', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '500.00', '25.00', '50.00', '0.00', '575.00', '', 'takeaway', NULL, '2025-08-19 23:11:00', '2025-08-19 23:11:00'),
(110, 1, 40, 'ORD-2025082005124616', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '400.00', '20.00', '40.00', '0.00', '460.00', '', 'dine_in', NULL, '2025-08-19 23:12:46', '2025-08-19 23:12:46'),
(111, 1, NULL, 'ORD-2025082005141051', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '0.00', '0.00', '0.00', '0.00', '0.00', '', 'takeaway', NULL, '2025-08-19 23:14:10', '2025-08-19 23:14:10'),
(112, 1, 3, 'ORD-2025082005152969', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'dine_in', NULL, '2025-08-19 23:15:29', '2025-08-19 23:15:29'),
(113, 1, NULL, 'ORD-2025082005241122', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'takeaway', NULL, '2025-08-19 23:24:11', '2025-08-19 23:24:11'),
(114, 1, 39, 'ORD-2025082123525836', 'murtuza', '01793784379', 'pending', 'pending', 'cash', '150.00', '7.50', '15.00', '0.00', '172.50', '', 'dine_in', NULL, '2025-08-21 17:52:58', '2025-08-21 17:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `menu_item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `menu_item_id`, `quantity`, `unit_price`, `notes`, `created_at`) VALUES
(1, 1, 1, 3, '350.00', NULL, '2025-08-18 00:38:58'),
(2, 1, 4, 2, '500.00', NULL, '2025-08-18 00:38:58'),
(3, 1, 1, 2, '350.00', NULL, '2025-08-18 00:38:58'),
(4, 1, 9, 3, '350.00', NULL, '2025-08-18 00:38:58'),
(5, 2, 9, 2, '350.00', NULL, '2025-08-18 00:38:58'),
(6, 2, 9, 2, '350.00', NULL, '2025-08-18 00:38:58'),
(7, 3, 7, 3, '550.00', NULL, '2025-08-18 00:38:58'),
(8, 3, 4, 3, '500.00', NULL, '2025-08-18 00:38:58'),
(9, 3, 7, 2, '550.00', NULL, '2025-08-18 00:38:58'),
(10, 3, 6, 3, '320.00', NULL, '2025-08-18 00:38:58'),
(11, 4, 5, 3, '420.00', NULL, '2025-08-18 00:38:58'),
(12, 4, 3, 2, '280.00', NULL, '2025-08-18 00:38:58'),
(13, 4, 7, 1, '550.00', NULL, '2025-08-18 00:38:58'),
(14, 4, 3, 3, '280.00', NULL, '2025-08-18 00:38:58'),
(15, 5, 2, 3, '450.00', NULL, '2025-08-18 00:38:58'),
(16, 5, 4, 1, '500.00', NULL, '2025-08-18 00:38:58'),
(17, 5, 1, 1, '350.00', NULL, '2025-08-18 00:38:58'),
(18, 6, 7, 1, '550.00', NULL, '2025-08-18 00:38:58'),
(19, 6, 6, 3, '320.00', NULL, '2025-08-18 00:38:58'),
(20, 6, 2, 3, '450.00', NULL, '2025-08-18 00:38:58'),
(21, 6, 5, 1, '420.00', NULL, '2025-08-18 00:38:58'),
(22, 7, 9, 2, '350.00', NULL, '2025-08-18 00:38:58'),
(23, 7, 9, 1, '350.00', NULL, '2025-08-18 00:38:58'),
(24, 7, 3, 1, '280.00', NULL, '2025-08-18 00:38:58'),
(25, 8, 10, 3, '150.00', NULL, '2025-08-18 00:38:58'),
(26, 9, 4, 1, '500.00', NULL, '2025-08-18 00:38:58'),
(27, 9, 5, 1, '420.00', NULL, '2025-08-18 00:38:58'),
(28, 9, 1, 1, '350.00', NULL, '2025-08-18 00:38:58'),
(29, 9, 5, 1, '420.00', NULL, '2025-08-18 00:38:58'),
(30, 10, 2, 3, '450.00', NULL, '2025-08-18 00:38:58'),
(31, 10, 7, 1, '550.00', NULL, '2025-08-18 00:38:58'),
(32, 10, 5, 2, '420.00', NULL, '2025-08-18 00:38:58'),
(33, 10, 1, 2, '350.00', NULL, '2025-08-18 00:38:58'),
(34, 11, 4, 3, '500.00', NULL, '2025-08-18 00:38:58'),
(35, 11, 1, 1, '350.00', NULL, '2025-08-18 00:38:58'),
(36, 11, 8, 3, '250.00', NULL, '2025-08-18 00:38:58'),
(37, 11, 3, 1, '280.00', NULL, '2025-08-18 00:38:58'),
(38, 12, 1, 2, '350.00', NULL, '2025-08-18 00:38:58'),
(39, 12, 10, 3, '150.00', NULL, '2025-08-18 00:38:58'),
(40, 13, 7, 3, '550.00', NULL, '2025-08-18 00:38:58'),
(41, 13, 1, 3, '350.00', NULL, '2025-08-18 00:38:58'),
(42, 13, 8, 1, '250.00', NULL, '2025-08-18 00:38:58'),
(43, 14, 9, 3, '350.00', NULL, '2025-08-18 00:38:58'),
(44, 14, 10, 2, '150.00', NULL, '2025-08-18 00:38:58'),
(45, 15, 10, 2, '150.00', NULL, '2025-08-18 00:38:58'),
(46, 15, 1, 3, '350.00', NULL, '2025-08-18 00:38:58'),
(47, 16, 5, 2, '420.00', NULL, '2025-08-18 00:38:58'),
(48, 16, 5, 3, '420.00', NULL, '2025-08-18 00:38:58'),
(49, 16, 10, 3, '150.00', NULL, '2025-08-18 00:38:58'),
(50, 17, 7, 1, '550.00', NULL, '2025-08-18 00:38:58'),
(51, 17, 7, 3, '550.00', NULL, '2025-08-18 00:38:58'),
(52, 17, 9, 1, '350.00', NULL, '2025-08-18 00:38:58'),
(53, 17, 4, 1, '500.00', NULL, '2025-08-18 00:38:58'),
(54, 18, 7, 2, '550.00', NULL, '2025-08-18 00:38:58'),
(55, 18, 7, 3, '550.00', NULL, '2025-08-18 00:38:58'),
(56, 18, 9, 3, '350.00', NULL, '2025-08-18 00:38:58'),
(57, 19, 9, 3, '350.00', NULL, '2025-08-18 00:38:58'),
(58, 19, 3, 1, '280.00', NULL, '2025-08-18 00:38:58'),
(59, 19, 8, 3, '250.00', NULL, '2025-08-18 00:38:58'),
(60, 20, 1, 3, '350.00', NULL, '2025-08-18 00:38:58'),
(61, 21, 9, 2, '350.00', NULL, '2025-08-18 00:38:58'),
(62, 21, 6, 3, '320.00', NULL, '2025-08-18 00:38:58'),
(63, 21, 9, 1, '350.00', NULL, '2025-08-18 00:38:58'),
(64, 21, 5, 1, '420.00', NULL, '2025-08-18 00:38:58'),
(65, 22, 8, 1, '250.00', NULL, '2025-08-18 00:38:58'),
(66, 22, 7, 2, '550.00', NULL, '2025-08-18 00:38:58'),
(67, 22, 5, 2, '420.00', NULL, '2025-08-18 00:38:58'),
(68, 22, 7, 2, '550.00', NULL, '2025-08-18 00:38:58'),
(69, 23, 3, 3, '280.00', NULL, '2025-08-18 00:38:58'),
(70, 24, 3, 3, '280.00', NULL, '2025-08-18 00:38:58'),
(71, 25, 4, 2, '500.00', NULL, '2025-08-18 00:38:58'),
(72, 25, 3, 2, '280.00', NULL, '2025-08-18 00:38:58'),
(73, 25, 3, 2, '280.00', NULL, '2025-08-18 00:38:58'),
(74, 25, 7, 3, '550.00', NULL, '2025-08-18 00:38:58'),
(75, 26, 4, 1, '500.00', NULL, '2025-08-18 00:38:58'),
(76, 26, 1, 3, '350.00', NULL, '2025-08-18 00:38:58'),
(77, 26, 10, 3, '150.00', NULL, '2025-08-18 00:38:58'),
(78, 27, 2, 2, '450.00', NULL, '2025-08-18 00:38:58'),
(79, 27, 4, 3, '500.00', NULL, '2025-08-18 00:38:58'),
(80, 27, 8, 2, '250.00', NULL, '2025-08-18 00:38:58'),
(81, 27, 7, 3, '550.00', NULL, '2025-08-18 00:38:58'),
(82, 28, 3, 2, '280.00', NULL, '2025-08-18 00:38:58'),
(83, 28, 6, 1, '320.00', NULL, '2025-08-18 00:38:58'),
(84, 29, 3, 2, '280.00', NULL, '2025-08-18 00:38:58'),
(85, 29, 9, 3, '350.00', NULL, '2025-08-18 00:38:58'),
(86, 29, 2, 1, '450.00', NULL, '2025-08-18 00:38:58'),
(87, 30, 1, 2, '350.00', NULL, '2025-08-18 00:38:58'),
(88, 30, 2, 1, '450.00', NULL, '2025-08-18 00:38:58'),
(89, 30, 7, 3, '550.00', NULL, '2025-08-18 00:38:58'),
(90, 30, 3, 1, '280.00', NULL, '2025-08-18 00:38:58'),
(91, 31, 8, 2, '250.00', NULL, '2025-08-18 00:38:58'),
(92, 31, 6, 2, '320.00', NULL, '2025-08-18 00:38:58'),
(93, 32, 4, 2, '500.00', NULL, '2025-08-18 00:38:58'),
(94, 32, 2, 3, '450.00', NULL, '2025-08-18 00:38:58'),
(95, 33, 4, 2, '500.00', NULL, '2025-08-18 00:38:58'),
(96, 34, 8, 3, '250.00', NULL, '2025-08-18 00:38:58'),
(97, 35, 2, 1, '450.00', NULL, '2025-08-18 00:38:58'),
(98, 35, 3, 2, '280.00', NULL, '2025-08-18 00:38:58'),
(99, 36, 3, 3, '280.00', NULL, '2025-08-18 00:38:59'),
(100, 37, 2, 1, '450.00', NULL, '2025-08-18 00:38:59'),
(101, 38, 4, 1, '500.00', NULL, '2025-08-18 00:38:59'),
(102, 38, 1, 1, '350.00', NULL, '2025-08-18 00:38:59'),
(103, 38, 1, 1, '350.00', NULL, '2025-08-18 00:38:59'),
(104, 38, 2, 2, '450.00', NULL, '2025-08-18 00:38:59'),
(105, 39, 3, 2, '280.00', NULL, '2025-08-18 00:38:59'),
(106, 39, 9, 1, '350.00', NULL, '2025-08-18 00:38:59'),
(107, 39, 4, 1, '500.00', NULL, '2025-08-18 00:38:59'),
(108, 40, 1, 1, '350.00', NULL, '2025-08-18 00:38:59'),
(109, 40, 2, 3, '450.00', NULL, '2025-08-18 00:38:59'),
(110, 40, 3, 3, '280.00', NULL, '2025-08-18 00:38:59'),
(111, 41, 10, 1, '150.00', '', '2025-08-18 11:44:24'),
(112, 41, 15, 1, '180.00', '', '2025-08-18 11:44:24'),
(113, 42, 36, 1, '180.00', '', '2025-08-18 11:45:37'),
(114, 43, 36, 1, '180.00', '', '2025-08-18 11:51:53'),
(115, 44, 8, 1, '250.00', '', '2025-08-18 13:03:45'),
(116, 45, 10, 1, '150.00', '', '2025-08-18 15:28:39'),
(117, 46, 9, 1, '350.00', '', '2025-08-18 15:37:49'),
(118, 47, 8, 1, '250.00', '', '2025-08-18 15:39:33'),
(119, 48, 3, 1, '280.00', '', '2025-08-18 17:18:53'),
(120, 48, 2, 1, '450.00', '', '2025-08-18 17:18:53'),
(121, 49, 2, 1, '450.00', '', '2025-08-18 17:19:11'),
(122, 50, 19, 1, '380.00', 'অতিরিক্ত মাংস (+৳50)', '2025-08-18 17:54:02'),
(123, 51, 15, 1, '180.00', '', '2025-08-18 17:55:49'),
(124, 52, 10, 1, '150.00', '', '2025-08-18 18:42:38'),
(125, 53, 9, 1, '360.00', '', '2025-08-18 18:54:12'),
(126, 54, 10, 1, '150.00', '', '2025-08-18 18:59:04'),
(127, 55, 9, 1, '350.00', '', '2025-08-18 19:24:56'),
(128, 56, 2, 1, '430.00', '', '2025-08-18 19:34:36'),
(129, 57, 10, 1, '150.00', '', '2025-08-18 19:35:51'),
(130, 58, 10, 1, '150.00', '', '2025-08-18 19:44:37'),
(131, 59, 10, 1, '150.00', '', '2025-08-18 19:51:48'),
(132, 60, 10, 1, '150.00', '', '2025-08-18 19:52:16'),
(133, 61, 8, 1, '250.00', '', '2025-08-18 19:52:47'),
(134, 62, 10, 1, '150.00', '', '2025-08-18 19:54:12'),
(135, 63, 10, 1, '150.00', '', '2025-08-18 19:59:53'),
(136, 64, 8, 1, '250.00', '', '2025-08-18 20:01:12'),
(137, 64, 9, 1, '350.00', '', '2025-08-18 20:01:12'),
(138, 64, 3, 1, '280.00', '', '2025-08-18 20:01:12'),
(139, 65, 10, 1, '150.00', '', '2025-08-18 20:11:48'),
(140, 66, 10, 1, '150.00', '', '2025-08-18 20:14:14'),
(141, 67, 10, 1, '150.00', '', '2025-08-18 20:47:11'),
(142, 68, 9, 1, '350.00', '', '2025-08-18 20:48:50'),
(143, 69, 3, 1, '280.00', 'ঝাল: সামান্য ঝাল', '2025-08-18 20:53:55'),
(144, 70, 14, 1, '90.00', 'ঝাল: বেশি ঝাল', '2025-08-18 20:58:08'),
(145, 71, 8, 1, '250.00', '', '2025-08-18 21:32:35'),
(146, 71, 10, 2, '150.00', '', '2025-08-18 21:32:35'),
(147, 72, 10, 1, '150.00', '', '2025-08-18 21:43:16'),
(148, 72, 9, 1, '350.00', '', '2025-08-18 21:43:16'),
(149, 73, 10, 1, '150.00', '', '2025-08-18 22:11:56'),
(150, 74, 8, 1, '250.00', '', '2025-08-18 22:29:06'),
(151, 75, 10, 1, '150.00', '', '2025-08-18 22:33:29'),
(152, 76, 8, 2, '250.00', '', '2025-08-19 11:11:15'),
(153, 77, 10, 1, '150.00', '', '2025-08-19 12:33:58'),
(154, 78, 10, 1, '150.00', '', '2025-08-19 12:35:21'),
(155, 79, 10, 1, '150.00', '', '2025-08-19 12:42:42'),
(156, 80, 9, 1, '350.00', '', '2025-08-19 12:43:54'),
(157, 81, 10, 1, '150.00', '', '2025-08-19 13:18:37'),
(158, 82, 3, 1, '280.00', '', '2025-08-19 18:47:47'),
(159, 83, 10, 4, '150.00', '', '2025-08-19 19:49:27'),
(160, 83, 9, 2, '350.00', '', '2025-08-19 19:49:27'),
(161, 84, 10, 2, '150.00', '', '2025-08-19 19:51:12'),
(162, 85, 5, 1, '420.00', '', '2025-08-19 20:56:04'),
(163, 86, 12, 1, '100.00', '', '2025-08-19 21:00:09'),
(164, 87, 10, 1, '150.00', '', '2025-08-19 21:54:15'),
(165, 87, 8, 1, '250.00', '', '2025-08-19 21:54:15'),
(166, 87, 3, 1, '280.00', '', '2025-08-19 21:54:15'),
(167, 88, 10, 1, '150.00', '', '2025-08-19 21:54:33'),
(168, 88, 9, 1, '350.00', '', '2025-08-19 21:54:33'),
(169, 105, 10, 1, '150.00', '', '2025-08-19 22:55:57'),
(170, 107, 10, 1, '150.00', '', '2025-08-19 23:09:00'),
(171, 107, 9, 1, '350.00', '', '2025-08-19 23:09:00'),
(172, 108, 3, 1, '280.00', '', '2025-08-19 23:10:00'),
(173, 108, 1, 1, '350.00', '', '2025-08-19 23:10:00'),
(174, 109, 10, 1, '150.00', '', '2025-08-19 23:11:00'),
(175, 109, 9, 1, '350.00', '', '2025-08-19 23:11:00'),
(176, 110, 10, 1, '150.00', '', '2025-08-19 23:12:46'),
(177, 110, 8, 1, '250.00', '', '2025-08-19 23:12:46'),
(178, 112, 10, 1, '150.00', '', '2025-08-19 23:15:29'),
(179, 113, 10, 1, '150.00', '', '2025-08-19 23:24:11'),
(180, 114, 10, 1, '150.00', '', '2025-08-21 17:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_bn` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `description_bn` text DEFAULT NULL,
  `type` enum('percentage','fixed_amount','buy_one_get_one','free_delivery') NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `min_order_amount` decimal(10,2) DEFAULT 0.00,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `applicable_branches` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `name`, `name_bn`, `description`, `description_bn`, `type`, `value`, `min_order_amount`, `start_date`, `end_date`, `applicable_branches`, `applicable_items`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Weekend Special', 'সাপ্তাহিক বিশেষ', '10% discount on all orders during weekends', 'সপ্তাহান্তে সমস্ত অর্ডারে 10% ছাড়', 'percentage', '10.00', '500.00', '2024-01-01 00:00:00', '2024-12-31 23:59:59', NULL, NULL, 1, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(2, 'Free Delivery', 'ফ্রি ডেলিভারি', 'Free delivery on orders above 1000 BDT', '1000 টাকার উপরে অর্ডারে ফ্রি ডেলিভারি', 'free_delivery', '0.00', '1000.00', '2024-01-01 00:00:00', '2024-12-31 23:59:59', NULL, NULL, 1, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(3, 'Biriyani Festival', 'বিরিয়ানি উৎসব', 'Buy 1 Get 1 Free on all biriyani items', 'সমস্ত বিরিয়ানি আইটেমে কিনুন ১ পান ১ ফ্রি', 'buy_one_get_one', '0.00', '0.00', '2024-01-01 00:00:00', '2024-01-31 23:59:59', NULL, NULL, 1, '2025-08-18 00:15:41', '2025-08-18 00:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `system_configurations`
--

CREATE TABLE `system_configurations` (
  `id` int(11) NOT NULL,
  `config_key` varchar(100) NOT NULL,
  `config_value` text DEFAULT NULL,
  `config_type` enum('string','number','boolean','json','array') DEFAULT 'string',
  `category` varchar(50) DEFAULT 'general',
  `is_editable` tinyint(1) DEFAULT 1,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_configurations`
--

INSERT INTO `system_configurations` (`id`, `config_key`, `config_value`, `config_type`, `category`, `is_editable`, `description`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'Restaurant Management System', 'string', 'general', 1, 'Application name', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(2, 'app_version', '1.0.0', 'string', 'general', 1, 'Application version', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(3, 'default_language', 'en', 'string', 'general', 1, 'Default language', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(4, 'currency', 'BDT', 'string', 'general', 1, 'Default currency', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(5, 'vat_rate', '15.00', 'number', 'financial', 1, 'VAT rate percentage', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(6, 'service_charge_rate', '10.00', 'number', 'financial', 1, 'Service charge rate percentage', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(7, 'max_login_attempts', '5', 'number', 'security', 1, 'Maximum login attempts before lockout', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(8, 'lockout_time', '300', 'number', 'security', 1, 'Account lockout time in seconds', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(9, 'session_lifetime', '7200', 'number', 'security', 1, 'Session lifetime in seconds', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(10, 'upload_max_size', '10485760', 'number', 'files', 1, 'Maximum upload file size in bytes', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(11, 'allowed_file_types', 'jpg,jpeg,png,gif,pdf', 'string', 'files', 1, 'Allowed file types for upload', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(12, 'order_prefix', 'ORD', 'string', 'orders', 1, 'Order number prefix', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(13, 'table_prefix', 'TBL', 'string', 'tables', 1, 'Table number prefix', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(14, 'default_preparation_time', '15', 'number', 'menu', 1, 'Default preparation time in minutes', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(15, 'max_order_amount', '100000', 'number', 'orders', 1, 'Maximum order amount', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(16, 'min_order_amount', '100', 'number', 'orders', 1, 'Minimum order amount', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(17, 'enable_sms_notifications', 'false', 'boolean', 'notifications', 1, 'Enable SMS notifications', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(18, 'enable_email_notifications', 'true', 'boolean', 'notifications', 1, 'Enable email notifications', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(19, 'timezone', 'Asia/Dhaka', 'string', 'general', 1, 'System timezone', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(20, 'date_format', 'd/m/Y', 'string', 'general', 1, 'Date display format', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(21, 'time_format', 'h:i A', 'string', 'general', 1, 'Time display format', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(22, 'debug_mode', 'false', 'boolean', 'technical', 1, 'Debug mode status', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(23, 'maintenance_mode', 'false', 'boolean', 'technical', 1, 'Maintenance mode status', '2025-08-18 00:15:41', '2025-08-18 00:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `system_features`
--

CREATE TABLE `system_features` (
  `id` int(11) NOT NULL,
  `feature_key` varchar(100) NOT NULL,
  `feature_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(50) DEFAULT 'general',
  `is_enabled` tinyint(1) DEFAULT 1,
  `is_core` tinyint(1) DEFAULT 0,
  `dependencies` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ;

--
-- Dumping data for table `system_features`
--

INSERT INTO `system_features` (`id`, `feature_key`, `feature_name`, `description`, `category`, `is_enabled`, `is_core`, `dependencies`, `settings`, `created_at`, `updated_at`) VALUES
(1, 'qr_menu', 'QR Code Menu', 'Enable QR code based digital menu system', 'core', 1, 1, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(2, 'online_ordering', 'Online Ordering', 'Enable online ordering system', 'core', 1, 1, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(3, 'table_reservation', 'Table Reservation', 'Enable table reservation system', 'customer', 1, 0, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(4, 'loyalty_program', 'Loyalty Program', 'Enable customer loyalty program', 'customer', 1, 0, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(5, 'customer_feedback', 'Customer Feedback', 'Enable customer feedback system', 'customer', 1, 1, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(6, 'promotions', 'Promotions', 'Enable promotions and discounts system', 'marketing', 1, 1, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(7, 'delivery', 'Delivery Service', 'Enable home delivery service', 'operations', 1, 0, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(8, 'multi_language', 'Multi Language', 'Enable multi language support', 'general', 1, 0, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(9, 'mobile_app', 'Mobile App', 'Enable mobile app features', 'general', 1, 0, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(10, 'advanced_analytics', 'Advanced Analytics', 'Enable advanced analytics and reporting', 'admin', 1, 0, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(11, 'inventory_management', 'Inventory Management', 'Enable inventory management system', 'operations', 0, 0, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(12, 'staff_management', 'Staff Management', 'Enable advanced staff management', 'admin', 0, 0, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(13, 'payment_integration', 'Payment Integration', 'Enable payment gateway integration', 'payment', 1, 1, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(14, 'api_access', 'API Access', 'Enable API access for third-party integration', 'technical', 1, 0, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(15, 'super_admin_panel', 'Super Admin Panel', 'Enable super admin panel access', 'technical', 1, 1, NULL, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `system_logs`
--

CREATE TABLE `system_logs` (
  `id` int(11) NOT NULL,
  `log_type` enum('info','warning','error','debug','security') NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `message` text NOT NULL,
  `context` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `table_number` varchar(10) NOT NULL,
  `capacity` int(11) NOT NULL,
  `location` varchar(50) DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `status` enum('available','occupied','reserved','maintenance') DEFAULT 'available',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `branch_id`, `table_number`, `capacity`, `location`, `qr_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'T001', 4, 'Ground Floor', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(2, 1, 'T002', 4, 'Ground Floor', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(3, 1, 'T003', 6, 'Ground Floor', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(4, 1, 'T004', 2, 'First Floor', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(5, 1, 'T005', 4, 'First Floor', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(6, 1, 'T006', 8, 'First Floor', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(7, 1, 'T007', 4, 'VIP Section', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(8, 1, 'T008', 6, 'VIP Section', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(9, 2, 'T001', 4, 'Main Hall', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(10, 2, 'T002', 4, 'Main Hall', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(11, 2, 'T003', 6, 'Main Hall', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(12, 2, 'T004', 2, 'Balcony', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(13, 2, 'T005', 4, 'Balcony', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(14, 3, 'T001', 4, 'AC Section', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(15, 3, 'T002', 6, 'AC Section', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(16, 3, 'T003', 8, 'AC Section', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(17, 3, 'T004', 4, 'Non-AC', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(18, 3, 'T005', 6, 'Non-AC', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(19, 4, 'T001', 4, 'Family Zone', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(20, 4, 'T002', 4, 'Family Zone', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(21, 4, 'T003', 6, 'Family Zone', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(22, 5, 'T001', 4, 'Main Area', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(23, 5, 'T002', 4, 'Main Area', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(24, 5, 'T003', 6, 'Main Area', NULL, 'available', '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(25, 1, 'T01', 2, 'Ground Floor', 'QR-1-T01-e27c398d', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(26, 1, 'T02', 2, 'Ground Floor', 'QR-1-T02-3410f037', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(27, 1, 'T03', 2, 'Ground Floor', 'QR-1-T03-26f239b9', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(28, 1, 'T04', 2, 'Ground Floor', 'QR-1-T04-a5e14f7e', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(29, 1, 'T05', 2, 'Ground Floor', 'QR-1-T05-a075e841', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(30, 1, 'T06', 4, 'First Floor', 'QR-1-T06-1ab3cb5e', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(31, 1, 'T07', 4, 'First Floor', 'QR-1-T07-139c0d57', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(32, 1, 'T08', 4, 'First Floor', 'QR-1-T08-bb6c3c0e', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(33, 1, 'T09', 4, 'First Floor', 'QR-1-T09-9bdab901', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(34, 1, 'T10', 4, 'First Floor', 'QR-1-T10-a0c2e482', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(35, 1, 'T11', 4, 'First Floor', 'QR-1-T11-4969cadb', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(36, 1, 'T12', 4, 'First Floor', 'QR-1-T12-7a7b26c0', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(37, 1, 'T13', 4, 'First Floor', 'QR-1-T13-53313f03', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(38, 1, 'T14', 4, 'First Floor', 'QR-1-T14-330e0c04', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(39, 1, 'T15', 4, 'First Floor', 'QR-1-T15-65494d7f', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(40, 1, 'T16', 6, 'Second Floor', 'QR-1-T16-07501c1a', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(41, 1, 'T17', 6, 'Second Floor', 'QR-1-T17-ed23ea75', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(42, 1, 'T18', 6, 'Second Floor', 'QR-1-T18-12ca7d39', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(43, 1, 'T19', 6, 'Second Floor', 'QR-1-T19-01ecc8d1', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(44, 1, 'T20', 6, 'Second Floor', 'QR-1-T20-72997ac6', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(45, 2, 'T01', 2, 'Ground Floor', 'QR-2-T01-29960183', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(46, 2, 'T02', 2, 'Ground Floor', 'QR-2-T02-3546c09f', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(47, 2, 'T03', 2, 'Ground Floor', 'QR-2-T03-ef5e059d', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(48, 2, 'T04', 2, 'Ground Floor', 'QR-2-T04-b4f4ea17', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(49, 2, 'T05', 2, 'Ground Floor', 'QR-2-T05-ac306816', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(50, 2, 'T06', 4, 'First Floor', 'QR-2-T06-384c3e2c', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(51, 2, 'T07', 4, 'First Floor', 'QR-2-T07-fa505309', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(52, 2, 'T08', 4, 'First Floor', 'QR-2-T08-8d8e91b1', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(53, 2, 'T09', 4, 'First Floor', 'QR-2-T09-a5b42cca', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(54, 2, 'T10', 4, 'First Floor', 'QR-2-T10-ea445ac0', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(55, 2, 'T11', 4, 'First Floor', 'QR-2-T11-8874ca93', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(56, 2, 'T12', 4, 'First Floor', 'QR-2-T12-3da2bfdd', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(57, 2, 'T13', 4, 'First Floor', 'QR-2-T13-0ce671fc', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(58, 2, 'T14', 4, 'First Floor', 'QR-2-T14-f88a64dd', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(59, 2, 'T15', 4, 'First Floor', 'QR-2-T15-cb711961', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(60, 3, 'T01', 2, 'Ground Floor', 'QR-3-T01-1a793bc8', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(61, 3, 'T02', 2, 'Ground Floor', 'QR-3-T02-3c0a822b', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(62, 3, 'T03', 2, 'Ground Floor', 'QR-3-T03-b9fddc30', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(63, 3, 'T04', 2, 'Ground Floor', 'QR-3-T04-8cfd6eba', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(64, 3, 'T05', 2, 'Ground Floor', 'QR-3-T05-0a36f041', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(65, 3, 'T06', 4, 'First Floor', 'QR-3-T06-f46a6448', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(66, 3, 'T07', 4, 'First Floor', 'QR-3-T07-151e2bf5', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(67, 3, 'T08', 4, 'First Floor', 'QR-3-T08-8d4818ca', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(68, 3, 'T09', 4, 'First Floor', 'QR-3-T09-34dc5d67', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(69, 3, 'T10', 4, 'First Floor', 'QR-3-T10-1606eaf3', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(70, 4, 'T01', 2, 'Ground Floor', 'QR-4-T01-5eed75f4', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(71, 4, 'T02', 2, 'Ground Floor', 'QR-4-T02-e9becaca', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(72, 4, 'T03', 2, 'Ground Floor', 'QR-4-T03-173c2aa5', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(73, 4, 'T04', 2, 'Ground Floor', 'QR-4-T04-c59db90b', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(74, 4, 'T05', 2, 'Ground Floor', 'QR-4-T05-2cd6af03', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(75, 4, 'T06', 4, 'First Floor', 'QR-4-T06-1087486a', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(76, 4, 'T07', 4, 'First Floor', 'QR-4-T07-963c7f81', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(77, 4, 'T08', 4, 'First Floor', 'QR-4-T08-bd688e2c', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(78, 4, 'T09', 4, 'First Floor', 'QR-4-T09-eba2e73f', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58'),
(79, 4, 'T10', 4, 'First Floor', 'QR-4-T10-cdf76a71', 'available', '2025-08-18 00:38:58', '2025-08-18 00:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `theme_key` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `version` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0,
  `is_installed` tinyint(1) DEFAULT 0,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `role` enum('super_admin','developer','hq_manager','branch_manager','supervisor','cashier','waiter','kitchen_staff','delivery_staff') NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `status` enum('active','inactive','terminated') DEFAULT 'active',
  `last_login` datetime DEFAULT NULL,
  `login_attempts` int(11) DEFAULT 0,
  `locked_until` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phone`, `password_hash`, `full_name`, `role`, `branch_id`, `status`, `last_login`, `login_attempts`, `locked_until`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'superadmin@example.com', '+8801700000000', '$2y$12$temporary_hash_will_be_updated', 'Super Administrator', 'super_admin', NULL, 'active', NULL, 0, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(2, 'hqmanager', 'hqmanager@example.com', '+8801700000001', '$2y$12$temporary_hash_will_be_updated', 'HQ Manager', 'hq_manager', NULL, 'active', NULL, 0, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(3, 'gulshanmanager', 'gulshan@restaurantchain.com', '+8801700000002', '$2y$12$temporary_hash_will_be_updated', 'Ahmed Khan', 'branch_manager', 1, 'active', NULL, 0, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(4, 'dhanmondimanager', 'dhanmondi@restaurantchain.com', '+8801700000003', '$2y$12$temporary_hash_will_be_updated', 'Fatema Akter', 'branch_manager', 2, 'active', NULL, 0, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41'),
(5, 'ctgmanager', 'ctg@restaurantchain.com', '+8801700000004', '$2y$12$temporary_hash_will_be_updated', 'Mohammed Uddin', 'branch_manager', 3, 'active', NULL, 0, NULL, '2025-08-18 00:15:41', '2025-08-18 00:15:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch_menu_items`
--
ALTER TABLE `branch_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_branch_menu` (`branch_id`,`menu_item_id`),
  ADD KEY `idx_branch_menu_branch` (`branch_id`),
  ADD KEY `idx_branch_menu_item` (`menu_item_id`),
  ADD KEY `idx_branch_menu_available` (`is_available`),
  ADD KEY `idx_branch_menu_composite` (`branch_id`,`is_available`);

--
-- Indexes for table `menu_categories`
--
ALTER TABLE `menu_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_categories_name` (`name`),
  ADD KEY `idx_categories_active` (`is_active`),
  ADD KEY `idx_categories_order` (`display_order`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_version` (`version`),
  ADD KEY `idx_migrations_version` (`version`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_id` (`table_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `idx_orders_number` (`order_number`),
  ADD KEY `idx_orders_branch` (`branch_id`),
  ADD KEY `idx_orders_status` (`status`),
  ADD KEY `idx_orders_payment_status` (`payment_status`),
  ADD KEY `idx_orders_customer_phone` (`customer_phone`),
  ADD KEY `idx_orders_created_at` (`created_at`),
  ADD KEY `idx_orders_composite` (`branch_id`,`status`,`created_at`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_order_items_order` (`order_id`),
  ADD KEY `idx_order_items_menu_item` (`menu_item_id`),
  ADD KEY `idx_order_items_composite` (`order_id`,`menu_item_id`);

--
-- Indexes for table `system_configurations`
--
ALTER TABLE `system_configurations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `config_key` (`config_key`),
  ADD KEY `idx_config_key` (`config_key`),
  ADD KEY `idx_config_category` (`category`),
  ADD KEY `idx_config_editable` (`is_editable`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_branch_table` (`branch_id`,`table_number`),
  ADD UNIQUE KEY `qr_code` (`qr_code`),
  ADD KEY `idx_tables_branch` (`branch_id`),
  ADD KEY `idx_tables_status` (`status`),
  ADD KEY `idx_tables_qr` (`qr_code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_users_username` (`username`),
  ADD KEY `idx_users_email` (`email`),
  ADD KEY `idx_users_phone` (`phone`),
  ADD KEY `idx_users_role` (`role`),
  ADD KEY `idx_users_status` (`status`),
  ADD KEY `idx_users_branch` (`branch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch_menu_items`
--
ALTER TABLE `branch_menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `customer_feedback`
--
ALTER TABLE `customer_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `headquarters`
--
ALTER TABLE `headquarters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_categories`
--
ALTER TABLE `menu_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_configurations`
--
ALTER TABLE `system_configurations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `system_features`
--
ALTER TABLE `system_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_logs`
--
ALTER TABLE `system_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branch_menu_items`
--
ALTER TABLE `branch_menu_items`
  ADD CONSTRAINT `branch_menu_items_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `branch_menu_items_ibfk_2` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`table_id`) REFERENCES `tables` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
