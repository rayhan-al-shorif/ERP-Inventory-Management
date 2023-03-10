-- phpMyAdmin SQL Dump
-- version 5.1.4-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 10, 2022 at 09:28 AM
-- Server version: 5.7.39-0ubuntu0.18.04.2
-- PHP Version: 8.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_fashol`
--

-- --------------------------------------------------------

--
-- Table structure for table `after_lock_old_requirements`
--

CREATE TABLE `after_lock_old_requirements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `required_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplied_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `send_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `after_lock_requirements`
--

CREATE TABLE `after_lock_requirements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `required_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplied_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `send_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_seller_zones`
--

CREATE TABLE `assign_seller_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_seller_zones`
--


-- --------------------------------------------------------

--
-- Table structure for table `balances`
--

CREATE TABLE `balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_balances`
--

CREATE TABLE `bank_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_balance` int(11) DEFAULT '0',
  `balance` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash_collections_lb`
--

CREATE TABLE `cash_collections_lb` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_ex_id` bigint(20) UNSIGNED NOT NULL,
  `total_sale` int(11) NOT NULL DEFAULT '0',
  `paid` int(11) NOT NULL DEFAULT '0',
  `due` int(11) NOT NULL DEFAULT '0',
  `damage` int(191) NOT NULL DEFAULT '0',
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_collections_lb`
--



-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `smg_manager_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(20) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `smg_manager_id`, `name`, `position`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '?????????-????????????', 1, '/storage/category/vagitables.jpg', '2021-09-04 20:25:12', '2021-09-07 15:20:49'),
(2, 1, '?????????', 2, '/storage/category/fishes.jpg', '2021-09-06 15:06:34', '2021-09-06 15:06:34'),
(3, 1, '???????????????', 3, '/storage/category/bags.jpg', '2021-09-06 15:16:36', '2021-09-06 15:16:36'),
(4, 3, '??????', 4, '/storage/category/fruits.jpg', '2021-09-21 19:48:40', '2021-09-21 19:48:40'),
(5, 84, '????????????', 6, '/storage/category/mudi-dokan.jpg', '2022-04-19 23:48:41', '2022-04-19 23:48:41'),
(6, 84, 'All', 0, '/storage/category/fashol-logo.jpg', '2022-04-19 23:48:41', '2022-04-19 23:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `chalans`
--

CREATE TABLE `chalans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ordernumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `change_pricings`
--

CREATE TABLE `change_pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT '1',
  `order_lists_id` bigint(20) UNSIGNED NOT NULL,
  `change_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `change_pricings`
--

INSERT INTO `change_pricings` (`id`, `added_by`, `order_lists_id`, `change_price`, `created_at`, `updated_at`) VALUES
(66, 111, 268737, '90.00', '2022-09-10 10:10:34', '2022-09-10 10:10:34'),
(67, 111, 268740, '30.00', '2022-09-10 10:10:48', '2022-09-10 10:10:48'),
(68, 111, 268695, '2800.00', '2022-09-10 15:19:58', '2022-09-10 15:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_executive_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `customer_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nid_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_front` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_back` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '"active"',
  `account_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'new_c',
  `otp` int(20) DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- --------------------------------------------------------

--
-- Table structure for table `customer_account_logs`
--

CREATE TABLE `customer_account_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `payment` decimal(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_payments`
--

CREATE TABLE `customer_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `total_bill` decimal(8,2) NOT NULL,
  `total_due` decimal(8,2) NOT NULL,
  `payment` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_payment_histories`
--

CREATE TABLE `customer_payment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment` decimal(8,2) DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `approved_by` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_payment_lists`
--

CREATE TABLE `customer_payment_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_payment_ups`
--

CREATE TABLE `customer_payment_ups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_executive_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `order_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_date` date NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `tx_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_payment_ups`
--

-- --------------------------------------------------------

--
-- Table structure for table `damage_and_missings`
--

CREATE TABLE `damage_and_missings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderList_id` bigint(20) UNSIGNED NOT NULL,
  `damage_qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_for_customers`
--

CREATE TABLE `delivery_for_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `sales_executive_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_teams`
--

CREATE TABLE `delivery_teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `smg_manager_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pay_by_bank` bigint(20) UNSIGNED DEFAULT NULL,
  `pay_by_hand` bigint(20) UNSIGNED DEFAULT NULL,
  `deposit_by` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `ranking` decimal(8,2) NOT NULL DEFAULT '0.00',
  `salary` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `employee_id`, `department`, `designation`, `status`, `ranking`, `salary`, `created_at`, `updated_at`) VALUES
(4, 76, '10014', 'Business Development', 'Officer', 'Active', '0.00', '10000.00', '2022-02-03 21:03:11', '2022-02-06 18:53:59'),
(6, 26, 'EM44231', 'Department', 'Department', 'Active', '0.00', '15000.00', '2022-04-18 10:09:57', '2022-04-18 10:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salaries`
--

CREATE TABLE `employee_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `deduct` decimal(8,2) NOT NULL,
  `bonus` decimal(8,2) NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_salaries`
--

INSERT INTO `employee_salaries` (`id`, `employee_id`, `deduct`, `bonus`, `date`, `created_at`, `updated_at`) VALUES
(4, 4, '0.00', '0.00', '2022-02-02', '2022-02-04 18:10:11', '2022-02-08 13:13:19'),
(5, 4, '500.00', '0.00', '2022-02-03', '2022-02-04 18:10:20', '2022-02-04 18:17:04'),
(6, 4, '400.00', '0.00', '2022-02-04', '2022-02-06 18:53:12', '2022-02-06 18:53:12'),
(7, 4, '0.00', '0.00', '2022-02-06', '2022-02-07 17:35:34', '2022-02-07 17:44:21'),
(8, 4, '0.00', '0.00', '2022-02-05', '2022-02-07 17:43:49', '2022-02-07 17:44:08'),
(11, 4, '0.00', '0.00', '2022-02-01', '2022-02-19 20:57:19', '2022-02-19 20:57:31'),
(12, 6, '0.00', '0.00', '2022-04-01', '2022-04-18 10:10:25', '2022-04-18 10:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `expances`
--

CREATE TABLE `expances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_of_expense` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason_of_expense` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `super_admin_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expances`
--

INSERT INTO `expances` (`id`, `name_of_expense`, `expense_by`, `reason_of_expense`, `payment_status`, `amount`, `account`, `admin_status`, `super_admin_status`, `created_at`, `updated_at`) VALUES
(1, 'Pickup - 1 Ton - 5', '42', 'Vegetable Movement', '0', '4000', NULL, '1', '0', '2021-10-25 17:19:47', '2021-10-25 17:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmers`
--

-- --------------------------------------------------------

--
-- Table structure for table `farmer_metas`
--

CREATE TABLE `farmer_metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `farmer_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fixing_purchase_prices`
--

CREATE TABLE `fixing_purchase_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gross_profits`
--

CREATE TABLE `gross_profits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hand_balances`
--

CREATE TABLE `hand_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stack_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_balance` int(11) DEFAULT '0',
  `balance` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hand_balances`
--

INSERT INTO `hand_balances` (`id`, `stack_name`, `opening_balance`, `balance`, `created_at`, `updated_at`) VALUES
(1, 'Office cash', 142135, 102135, '2021-09-04 20:42:09', '2021-10-25 17:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `lockers`
--

CREATE TABLE `lockers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_locker` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unlock',
  `order_locker_notice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lockers`
--

INSERT INTO `lockers` (`id`, `order_locker`, `order_locker_notice`, `created_at`, `updated_at`) VALUES
(1, 'lock', '????????? ?????????????????? ???????????? ????????? ,  \n7.45 PM ?????????????????? ???????????? ????????? ????????? ?????????????????????????????????', '0000-00-00 00:00:00', '2022-09-09 23:40:03');

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
(1, '2011_08_11_132123_create_permission_tables', 1),
(2, '2012_07_16_104654_create_zones_table', 1),
(3, '2012_07_17_132919_create_users_table', 1),
(4, '2019_07_14_122229_create_units_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2021_06_22_105319_create_customers_table', 1),
(7, '2021_06_22_112907_create_categories_table', 1),
(8, '2021_06_22_113133_create_products_table', 1),
(9, '2021_06_22_193344_create_variants_table', 1),
(10, '2021_06_22_201459_create_product_variant_table', 1),
(11, '2021_06_22_201460_create_prices_table', 1),
(12, '2021_06_23_051510_create_suppliers_table', 1),
(13, '2021_06_23_060400_create_orders_table', 1),
(14, '2021_06_23_060401_create_old_orders_table', 1),
(15, '2021_06_23_060557_create_order_lists_table', 1),
(16, '2021_06_23_060558_create_old_order_lists_table', 1),
(17, '2021_06_23_060558_create_temp_order_lists_table', 1),
(18, '2021_06_23_062502_create_supplier_histories_table', 1),
(19, '2021_06_23_063829_create_delivery_for_customers_table', 1),
(20, '2021_06_23_065001_create_customer_account_logs_table', 1),
(21, '2021_06_23_065002_create_old_customer_account_logs_table', 1),
(22, '2021_07_09_101536_create_notifications_table', 1),
(23, '2021_07_29_132159_create_delivery_teams_table', 1),
(24, '2021_08_03_132233_create_requirements_table', 1),
(27, '2021_08_04_163441_create_total_requirements_table', 1),
(28, '2021_08_04_163442_create_old_total_requirements_table', 1),
(29, '2021_08_04_163442_create_purchases_histories_table', 1),
(30, '2021_08_05_151436_create_packagings_table', 1),
(31, '2021_08_05_151437_create_old_packagings_table', 1),
(32, '2021_08_05_151438_create_packaging_delivery_codes_table', 1),
(33, '2021_08_05_151439_create_old_packaging_delivery_codes_table', 1),
(34, '2021_08_06_161959_create_chalans_table', 1),
(36, '2021_08_26_120019_create_balances_table', 1),
(37, '2021_08_26_121102_create_hand_balances_table', 1),
(38, '2021_08_26_121121_create_bank_balances_table', 1),
(39, '2021_08_26_131442_create_expances_table', 1),
(40, '2021_08_30_001828_create_tasks_table', 1),
(41, '2021_08_31_164358_create_pay_orders_table', 1),
(42, '2021_09_02_120125_create_deposits_table', 1),
(43, '2021_09_02_164016_create_purchase_managements_table', 1),
(44, '2021_09_04_112847_create_withdraws_table', 1),
(45, '2021_09_06_121544_create_salary_managements_table', 1),
(48, '2021_09_14_121944_create_customer_payments_table', 1),
(49, '2021_09_15_191412_create_customer_payments_histories_table', 1),
(50, '2021_08_04_163443_create_old_purchases_histories_table', 1),
(51, '2021_09_18_225010_create_old_customer_payments_table', 1),
(52, '2021_09_18_225213_create_old_customer_payment_histories_table', 1),
(53, '2021_06_22_201461_create_old_prices_table', 1),
(54, '2021_09_27_175125_create_product_reports_table', 1),
(56, '2021_10_03_215442_create_old_product_reports_table', 1),
(57, '2021_10_10_130418_create_sessions_table', 1),
(58, '2021_10_17_161105_create_product_tags_table', 1),
(59, '2021_10_18_165202_create_farmers_table', 1),
(61, '2021_10_19_172908_create_farmer_metas_table', 1),
(62, '2021_10_24_182458_create_unit_and_purchases_table', 1),
(63, '2014_10_12_100000_create_password_resets_table', 1),
(64, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(65, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(66, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(67, '2016_06_01_000004_create_oauth_clients_table', 1),
(68, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(69, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(71, '2021_10_28_125128_create_previous_orders_table', 1),
(72, '2021_10_31_192031_create_testings_table', 1),
(74, '2021_08_16_144558_create_trucks_table', 1),
(83, '2021_11_04_164401_create_truck_truckings_table', 1),
(85, '2021_11_04_180617_create_report_list_trucks_table', 1),
(87, '2021_11_03_130705_create_truck_assigns_table', 1),
(89, '2021_11_07_160415_create_nagad_payments_table', 1),
(91, '2021_11_08_140520_create_old_truck_assigns_table', 1),
(92, '2021_11_09_132618_create_chats_table', 1),
(94, '2021_11_11_111856_create_old_report_list_trucks_table', 1),
(97, '2021_11_28_114854_create_gross_profits_table', 1),
(100, '2021_11_30_151608_create_unit_and_sales_table', 1),
(102, '2021_12_28_121807_create_turckers_table', 1),
(104, '2022_01_04_115703_create_supplies_table', 1),
(105, '2022_01_04_120441_create_supplied_lists_table', 1),
(107, '2022_01_05_144729_create_fixing_purchase_prices_table', 1),
(108, '2022_01_10_151650_create_change_pricings_table', 1),
(109, '2022_01_10_151741_create_old_change_pricings_table', 1),
(119, '2022_01_19_105445_create_after_lock_old_requirements_table', 1),
(120, '2022_01_19_105440_create_after_lock_requirements_table', 1),
(122, '2022_01_24_111819_create_customer_payment_lists_table', 1),
(129, '2021_09_06_131122_create_employees_table', 1),
(132, '2022_02_01_152926_create_employee_salaries_table', 1),
(133, '2021_11_28_120205_create_wirehouses_table', 1),
(134, '2021_11_16_103618_create_lockers_table', 1),
(142, '2022_02_08_131722_create_damage_and_missings_table', 1),
(143, '2022_02_09_123539_create_customer_payment_ups_table', 1),
(146, '2022_02_17_120614_create_order_has_prices_table', 1),
(147, '2022_02_17_122955_create_old_order_has_prices_table', 1),
(148, '2022_02_19_183154_create_cash_collections_lb_table', 1),
(150, '2022_02_28_171704_create_assign_zones_table', 1),
(151, '2022_03_02_174005_create_assign_seller_zones_table', 1),
(155, '2022_03_08_004218_create_product_and_varients_table', 1),
(158, '2022_03_20_120038_create_order_list_back_ups_table', 1),
(161, '2022_04_26_134850_create_p_v_skus_table', 1),
(163, '2022_04_27_150330_create_price_collections_table', 1),
(165, '2022_05_08_102531_create_product_order_units_table', 1),
(167, '2022_05_30_211524_create_t_s_o_s_table', 1),
(168, '2022_05_17_175255_create_retailer_sliders_table', 1),
(170, '2022_02_12_122927_create_one_step_role_backs_table', 2),
(171, '2022_05_30_203013_create_t_s_o_s_table', 3),
(172, '2022_06_07_160412_create_pandamarts_table', 4),
(173, '2022_06_12_184348_create_sorting_instruction_tests_table', 4),
(175, '2022_08_29_192745_create_retailer_delivery_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

-- --------------------------------------------------------

--
-- Table structure for table `nagad_payments`
--

CREATE TABLE `nagad_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tx_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('119abb93-f031-4efa-aedf-72cb4ad4c21b', 'App\\Notifications\\OrderStatusNotification', 'App\\Models\\Customer', 3058, '{\"title\":\"Your order is confirmed!\",\"message\":\"Your order (F_OR1405202230) is confirmed!\",\"time\":\"08 Sep, 2022 @ 09:59:30 AM\"}', NULL, '2022-09-08 09:59:30', '2022-09-08 09:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Fashol.com Personal Access Client', 'aw8RGOcROf2B9zIHyj9zchsxpJ5tj2USLCq3RYsU', NULL, 'http://localhost', 1, 0, 0, '2021-10-30 10:47:26', '2021-10-30 10:47:26'),
(2, NULL, 'Fashol.com Password Grant Client', 'eoOsrKajMlM5W4bCMMOyxwPtkk5RzBPRXmytb0v1', 'users', 'http://localhost', 0, 1, 0, '2021-10-30 10:47:26', '2021-10-30 10:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-10-30 10:47:26', '2021-10-30 10:47:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `old_change_pricings`
--

CREATE TABLE `old_change_pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT '1',
  `order_lists_id` bigint(20) UNSIGNED NOT NULL,
  `change_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



-- --------------------------------------------------------

--
-- Table structure for table `old_customer_account_logs`
--

CREATE TABLE `old_customer_account_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `payment` decimal(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `old_customer_payments`
--

CREATE TABLE `old_customer_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `total_bill` decimal(8,2) NOT NULL,
  `total_due` decimal(8,2) NOT NULL,
  `payment` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `old_customer_payments`
--




-- --------------------------------------------------------

--
-- Table structure for table `old_customer_payment_histories`
--

CREATE TABLE `old_customer_payment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment` decimal(8,2) DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `approved_by` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `old_orders`
--

CREATE TABLE `old_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `sales_executive_id` bigint(20) UNSIGNED NOT NULL,
  `order_assign_sales_executive_id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `note` text CHARACTER SET utf8,
  `date` date NOT NULL DEFAULT '2021-12-20',
  `customer_note` text CHARACTER SET utf8mb4,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `old_orders`
--


-- --------------------------------------------------------

--
-- Table structure for table `old_order_has_prices`
--

CREATE TABLE `old_order_has_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `old_order_has_prices`
--


-- --------------------------------------------------------

--
-- Table structure for table `old_order_lists`
--

CREATE TABLE `old_order_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `damage_qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `missing_qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `returned_qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `received_qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dm_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hanging',
  `status` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `old_packagings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `group_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `packing_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `old_packaging_delivery_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `delivery_status` tinyint(4) NOT NULL DEFAULT '0',
  `token` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `old_packaging_delivery_codes`
--

-- --------------------------------------------------------

--
-- Table structure for table `old_prices`
--

CREATE TABLE `old_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `purchase` decimal(8,2) NOT NULL DEFAULT '0.00',
  `manual` decimal(8,2) NOT NULL DEFAULT '0.00',
  `new_c` decimal(8,2) NOT NULL DEFAULT '0.00',
  `normal` decimal(8,2) NOT NULL DEFAULT '0.00',
  `loyal` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_one` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_two` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_three` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_four` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_five` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_six` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_seven` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_eight` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_nine` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_ten` decimal(8,2) NOT NULL DEFAULT '0.00',
  `app` decimal(8,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(20) NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '2021-10-01',
  `edit_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `old_prices`
--

-- --------------------------------------------------------

--
-- Table structure for table `old_product_reports`
--

CREATE TABLE `old_product_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_executive_id` bigint(20) UNSIGNED NOT NULL,
  `packaging_delivery_code_id` bigint(20) UNSIGNED NOT NULL,
  `qty` double NOT NULL,
  `cost` decimal(8,2) NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `old_purchases_histories`
--

CREATE TABLE `old_purchases_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchaser_id` bigint(20) UNSIGNED NOT NULL,
  `total_requirement_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `old_report_list_trucks`
--

CREATE TABLE `old_report_list_trucks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_orders` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `truck_tracking` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `old_report_list_trucks`
--


-- --------------------------------------------------------

--
-- Table structure for table `old_total_requirements`
--

CREATE TABLE `old_total_requirements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `required_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplied_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` int(2) NOT NULL DEFAULT '0',
  `added_by` bigint(20) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `old_total_requirements`
--

-- --------------------------------------------------------

--
-- Table structure for table `old_truck_assigns`
--

CREATE TABLE `old_truck_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truck_trucking_id` bigint(20) UNSIGNED NOT NULL,
  `truck_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `old_truck_assigns`
--

-- --------------------------------------------------------

--
-- Table structure for table `one_step_role_backs`
--

CREATE TABLE `one_step_role_backs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `sales_executive_id` bigint(20) UNSIGNED NOT NULL,
  `order_assign_sales_executive_id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `note` text CHARACTER SET utf8,
  `date` date NOT NULL DEFAULT '2021-12-20',
  `customer_note` text CHARACTER SET utf8mb4,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_has_prices`
--

CREATE TABLE `order_has_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(16,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_has_prices`
--


-- --------------------------------------------------------

--
-- Table structure for table `order_lists`
--

CREATE TABLE `order_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `damage_qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `missing_qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `returned_qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `received_qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dm_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hanging',
  `status` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_lists`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_list_back_ups`
--

CREATE TABLE `order_list_back_ups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `damage_qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `missing_qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dm_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hanging',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_list_back_ups`
--

-- --------------------------------------------------------

--
-- Table structure for table `packagings`
--

CREATE TABLE `packagings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `group_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `packing_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packaging_delivery_codes`
--

CREATE TABLE `packaging_delivery_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `delivery_status` tinyint(4) NOT NULL DEFAULT '0',
  `token` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pandamarts`
--

CREATE TABLE `pandamarts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fashol_customer_id` bigint(20) UNSIGNED NOT NULL,
  `pandamart_customer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pandamarts`
--

INSERT INTO `pandamarts` (`id`, `fashol_customer_id`, `pandamart_customer_id`, `created_at`, `updated_at`) VALUES
(1, 2952, 'd8e88f14-1e38-42a5-b572-8f7e5861d4dc', NULL, NULL),
(2, 2868, '964f8379-0125-4dcb-9f10-68c014227e92', NULL, NULL),
(3, 2872, 'de091905-959f-445f-917b-1d6486202286', NULL, NULL),
(4, 2957, '3d75ebf2-eec5-4190-b6d3-cc31a5544851', NULL, NULL),
(5, 2838, '2a34e936-0fb3-4e92-b7da-b4f722a1a659', NULL, NULL),
(6, 2839, 'b9db1ca7-f755-4166-a79d-7e957ab73ef2', NULL, NULL),
(7, 2873, '3ab134fc-d8ab-410c-bc99-d78bd01ab71f', NULL, NULL),
(8, 2917, '4c9c8851-abc1-464a-8942-738c5eea45b1', NULL, NULL),
(9, 2958, '0f648a26-4991-4cd1-982c-86e7bc437f1c', NULL, NULL),
(10, 2878, '09d20963-45bd-4a88-86c0-dbfc4a88eeba', NULL, NULL),
(11, 2877, 'e614239d-eea2-46a6-849d-b389627f4fd6', NULL, NULL),
(12, 2954, '46f08614-c27b-4bec-b148-4f0c1b55c62f', NULL, NULL),
(13, 2959, '0f6284e8-5a9a-4a00-a588-53c3ebca294e', NULL, NULL),
(14, 2879, '037aa912-4f0f-4242-bbb3-499b94be674c', NULL, NULL),
(15, 3110, '279bba35-790f-4ea9-8fe0-e8e163418886', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_orders`
--

CREATE TABLE `pay_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pay_by_bank` bigint(20) UNSIGNED DEFAULT NULL,
  `pay_by_hand` bigint(20) UNSIGNED DEFAULT NULL,
  `issue_by` bigint(20) UNSIGNED NOT NULL,
  `pay_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `admin_status` tinyint(4) NOT NULL DEFAULT '0',
  `super_admin_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'order-create', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(2, 'order-edit', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(3, 'order-view', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(4, 'order-delete', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(5, 'order-status-update', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(6, 'user-create', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(7, 'user-edit', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(8, 'user-status-update', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(9, 'user-delete', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(10, 'user-view', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(11, 'user-show', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(12, 'customer-create', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(13, 'customer-edit', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(14, 'customer-status-update', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(15, 'customer-delete', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(16, 'customer-view', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(17, 'product-create', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(18, 'product-edit', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(19, 'product-status-update', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(20, 'product-delete', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(21, 'product-view', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(22, 'supplier-create', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(23, 'supplier-edit', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(24, 'supplier-status-update', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(25, 'supplier-delete', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(26, 'supplier-view', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

-- --------------------------------------------------------

--
-- Table structure for table `previous_orders`
--

CREATE TABLE `previous_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `purchase` decimal(8,2) NOT NULL DEFAULT '0.00',
  `manual` decimal(8,2) NOT NULL DEFAULT '0.00',
  `new_c` decimal(8,2) NOT NULL DEFAULT '0.00',
  `normal` decimal(8,2) NOT NULL DEFAULT '0.00',
  `loyal` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_one` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_two` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_three` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_four` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_five` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_six` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_seven` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_eight` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_nine` decimal(8,2) NOT NULL DEFAULT '0.00',
  `zone_ten` decimal(8,2) NOT NULL DEFAULT '0.00',
  `app` decimal(8,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(20) NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '2021-10-01',
  `edit_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

-- --------------------------------------------------------

--
-- Table structure for table `price_collections`
--

CREATE TABLE `price_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `smg_manager_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `converted_unit_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8 NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package` int(50) NOT NULL DEFAULT '5',
  `converted_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_and_varients`
--

CREATE TABLE `product_and_varients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `pv_sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_and_varients`
--

INSERT INTO `product_and_varients` (`id`, `product_id`, `variant_id`, `pv_sku`, `created_at`, `updated_at`) VALUES
(1, 103, 618, 'F_PV1001', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_order_units`
--

CREATE TABLE `product_order_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `units` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_order_units`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_reports`
--

CREATE TABLE `product_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `packaging_delivery_code_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_executive_id` int(20) UNSIGNED NOT NULL,
  `qty` float NOT NULL,
  `cost` decimal(20,2) NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tags` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_variant`
--

CREATE TABLE `product_variant` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant`
--

-- --------------------------------------------------------

--
-- Table structure for table `purchases_histories`
--

CREATE TABLE `purchases_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchaser_id` bigint(20) UNSIGNED NOT NULL,
  `total_requirement_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_managements`
--

CREATE TABLE `purchase_managements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `super_admin_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_managements`
--

INSERT INTO `purchase_managements` (`id`, `purchase_name`, `issue_by`, `payment_status`, `account`, `amount`, `admin_status`, `super_admin_status`, `created_at`, `updated_at`) VALUES
(1, 'Rajshahi-Procurement', '42', '0', NULL, '40000', '1', '1', '2021-10-25 17:13:58', '2021-10-25 17:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `p_v_skus`
--

CREATE TABLE `p_v_skus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `pv_sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pandamart_sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pandamart_unit_count` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `active_date` datetime DEFAULT NULL,
  `inactive_date` datetime DEFAULT NULL,
  `edit_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `p_v_skus`
--

-- --------------------------------------------------------

--
-- Table structure for table `retailer_delivery_address`
--

CREATE TABLE `retailer_delivery_address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `retailer_delivery_address`
--

INSERT INTO `retailer_delivery_address` (`id`, `customer_id`, `name`, `phone`, `district_en`, `district_bn`, `area`, `home_address`, `full_address`, `created_at`, `updated_at`) VALUES
(1, 3058, 'Sajib', '01797840513', 'Rangpur', '???????????????', 'dimla', 'Chapani hat,Nilphamari', NULL, '2022-08-29 19:52:20', '2022-08-29 19:52:20'),
(2, 3058, 'Sajib', '01797840513', 'Rangpur', '???????????????', 'dimla', 'Chapani hat,Nilphamari', NULL, '2022-08-29 19:57:29', '2022-08-29 19:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `retailer_sliders`
--

CREATE TABLE `retailer_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `retailer_sliders`
--

INSERT INTO `retailer_sliders` (`id`, `title`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, '50% Discount of Jackfruite', '/storage/sliders/fashol-slide-1.jpg', '#', 'published', NULL, NULL),
(2, '100% Discount of Mango', '/storage/sliders/fashol-slide-2.jpg', '#', 'published', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2021-09-11 18:14:14', '2021-09-11 18:14:14'),
(2, 'admin', 'web', '2021-09-11 18:14:14', '2021-09-11 18:14:14'),
(3, 'smg_manager', 'web', '2021-09-11 18:14:14', '2021-09-11 18:14:14'),
(4, 'root_smg_manager', 'web', '2021-09-11 18:14:14', '2021-09-11 18:14:14'),
(5, 'sales_executive', 'web', '2021-09-11 18:14:14', '2021-09-11 18:14:14'),
(6, 'purchases_team', 'web', '2021-09-11 18:14:14', '2021-09-11 18:14:14'),
(7, 'account', 'web', '2021-09-11 18:14:39', '2021-09-11 18:14:39'),
(8, 'delivery_executive', 'web', '2021-09-26 12:02:52', '2021-09-26 12:02:52'),
(10, 'delivery_man', 'web', '2021-10-07 00:32:43', '2021-10-07 00:32:43'),
(11, 'sales_manager', 'web', '2021-10-07 00:32:43', '2021-10-07 00:32:43'),
(12, 'procurement_assistant', 'web', '2021-10-07 00:32:43', '2021-10-07 00:32:43'),
(13, 'investor', 'web', '2021-10-07 00:32:43', '2021-10-07 00:32:43'),
(14, 'report_executive', 'web', '2021-10-07 00:32:43', '2021-10-07 00:32:43'),
(15, 'delivery_assistant', 'web', '2021-10-07 00:32:43', '2021-10-07 00:32:43'),
(16, 'printer_executive', 'web', '2021-10-07 00:32:43', '2021-10-07 00:32:43'),
(17, 'tso', 'web', '2021-10-07 00:32:43', '2021-10-07 00:32:43'),
(18, 'supplier_executive', 'web', '2021-10-07 00:32:43', '2021-10-07 00:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

-- --------------------------------------------------------

--
-- Table structure for table `salary_managements`
--

CREATE TABLE `salary_managements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `super_admin_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_teams`
--

CREATE TABLE `sales_teams` (
  `id` int(11) NOT NULL,
  `team_name` varchar(255) NOT NULL,
  `tso_id` int(11) NOT NULL,
  `captain_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_teams`
--

INSERT INTO `sales_teams` (`id`, `team_name`, `tso_id`, `captain_id`, `created_at`, `updated_at`) VALUES
(6, 'Fashol Fighter R', 96, 8, '2022-02-14 14:16:36', '2022-02-14 14:16:36'),
(7, 'All Star R', 96, 41, '2022-02-14 14:17:38', '2022-02-14 14:17:38'),
(9, 'KGF', 96, 35, '2022-02-14 14:20:58', '2022-02-14 14:20:58'),
(10, 'Restaurant Hunter', 96, 77, '2022-02-14 14:22:11', '2022-02-14 14:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `sales_team_members`
--

CREATE TABLE `sales_team_members` (
  `sales_team_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_team_members`
--

INSERT INTO `sales_team_members` (`sales_team_id`, `member_id`) VALUES
(6, 55),
(6, 82),
(6, 83),
(7, 37),
(7, 41),
(7, 86),
(7, 98),
(7, 104),
(9, 35),
(9, 92),
(9, 100),
(9, 102),
(10, 58),
(10, 77),
(10, 87),
(10, 101),
(6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplied_lists`
--

CREATE TABLE `supplied_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supply_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplied_lists`
--

INSERT INTO `supplied_lists` (`id`, `supply_id`, `product_id`, `variant_id`, `quantity`, `note`, `created_at`, `updated_at`) VALUES
(1, 13, 4, 12, '3.00', '', '2022-01-05 18:55:16', '2022-01-05 18:55:16'),
(2, 14, 4, 12, '3.00', '', '2022-01-05 18:56:31', '2022-01-05 18:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `market_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banking_mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_fashol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

-- --------------------------------------------------------

--
-- Table structure for table `supplier_histories`
--

CREATE TABLE `supplier_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_team_id` bigint(20) UNSIGNED NOT NULL,
  `product_count` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_management_id` bigint(20) UNSIGNED NOT NULL,
  `supply_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`id`, `supplier_id`, `purchase_management_id`, `supply_no`, `note`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '05012022870762', NULL, '2022-01-01 00:00:00', 0, '2022-01-05 18:35:56', '2022-01-05 18:35:56'),
(2, 4, 1, '05012022127789', NULL, '2022-01-01 00:00:00', 0, '2022-01-05 18:37:27', '2022-01-05 18:37:27'),
(3, 4, 1, '05012022529582', NULL, '2022-01-01 00:00:00', 0, '2022-01-05 18:38:56', '2022-01-05 18:38:56'),
(4, 4, 1, '05012022239045', NULL, '2022-01-01 00:00:00', 0, '2022-01-05 18:40:43', '2022-01-05 18:40:43'),
(5, 4, 1, '05012022645020', NULL, '2022-01-01 00:00:00', 0, '2022-01-05 18:41:10', '2022-01-05 18:41:10'),
(6, 4, 1, '05012022133662', NULL, '2022-01-01 00:00:00', 0, '2022-01-05 18:41:38', '2022-01-05 18:41:38'),
(7, 4, 1, '05012022457891', NULL, '2022-01-01 00:00:00', 0, '2022-01-05 18:43:15', '2022-01-05 18:43:15'),
(8, 4, 1, '05012022967233', NULL, '2022-01-01 00:00:00', 0, '2022-01-05 18:47:26', '2022-01-05 18:47:26'),
(9, 4, 1, '05012022250479', NULL, '2022-01-01 00:00:00', 0, '2022-01-05 18:48:22', '2022-01-05 18:48:22'),
(10, 4, 1, '05012022691749', NULL, '2022-01-01 00:00:00', 0, '2022-01-05 18:49:43', '2022-01-05 18:49:43'),
(11, 4, 1, '05012022565653', NULL, '2022-01-01 00:00:00', 0, '2022-01-05 18:51:37', '2022-01-05 18:51:37'),
(12, 4, 1, '05012022519882', NULL, '2022-01-01 00:00:00', 0, '2022-01-05 18:53:59', '2022-01-05 18:53:59'),
(13, 4, 1, '05012022783689', NULL, '2022-01-01 00:00:00', 0, '2022-01-05 18:55:16', '2022-01-05 18:55:16'),
(14, 4, 1, '05012022496835', NULL, '2022-01-01 00:00:00', 0, '2022-01-05 18:56:31', '2022-01-05 18:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `sales_time`, `purchase_time`, `price_time`, `created_at`, `updated_at`) VALUES
(1, '17:30', '17:30', '17:30', '2021-09-11 20:00:09', '2022-08-29 17:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `temp_order_lists`
--

CREATE TABLE `temp_order_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `old_id` int(255) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `damage_qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `missing_qty` decimal(8,2) NOT NULL DEFAULT '0.00',
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dm_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hanging',
  `status` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_order_lists`
--

INSERT INTO `temp_order_lists` (`id`, `old_id`, `order_id`, `product_id`, `variant_id`, `quantity`, `damage_qty`, `missing_qty`, `note`, `dm_status`, `status`, `created_at`, `updated_at`) VALUES
(24, 6444, 472, 53, 588, '2', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(25, 6445, 472, 49, 138, '10', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(26, 6446, 472, 48, 191, '5', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(27, 6447, 472, 94, 2, '5', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(28, 6448, 472, 24, 349, '5', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(29, 6449, 472, 11, 384, '3', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(30, 6450, 472, 4, 12, '2', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(31, 6451, 472, 8, 378, '3', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(32, 6452, 472, 28, 419, '10', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(33, 6453, 472, 15, 397, '10', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(34, 6454, 472, 16, 69, '5', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(35, 6455, 472, 61, 246, '10', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(36, 6456, 472, 30, 423, '5', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(37, 6457, 472, 5, 585, '5', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(38, 6458, 472, 23, 95, '10', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(39, 6459, 472, 23, 406, '5', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(40, 6460, 472, 31, 149, '1', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(41, 6461, 472, 25, 416, '3', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(42, 6462, 472, 34, 12, '1', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(43, 6463, 472, 82, 581, '5', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(44, 6464, 472, 32, 153, '2', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(45, 6465, 472, 32, 156, '2', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(46, 6466, 472, 18, 76, '5', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-05 19:36:06', '2021-12-05 19:36:06'),
(2046, 14716, 1774, 2, 373, '10', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-22 16:55:12', '2021-12-22 16:55:12'),
(2047, 18254, 2103, 2, 374, '92', '0.00', '0.00', NULL, 'hanging', '1', '2021-12-28 16:12:01', '2021-12-28 16:12:01'),
(6294, 42442, 23462241, 83, 312, '264', '0.00', '0.00', NULL, 'hanging', '1', '2022-01-16 16:02:24', '2022-01-16 16:02:24'),
(6952, 60607, 23465135, 2, 373, '20', '0.00', '0.00', NULL, 'hanging', '1', '2022-02-14 23:37:38', '2022-02-14 23:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `testings`
--

CREATE TABLE `testings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `total_requirements`
--

CREATE TABLE `total_requirements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `required_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplied_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` int(2) NOT NULL DEFAULT '0',
  `added_by` bigint(20) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `total_requirements`
--

INSERT INTO `total_requirements` (`id`, `product_id`, `variant_id`, `required_qty`, `supplied_qty`, `total_price`, `note`, `status`, `permission`, `added_by`, `created_at`, `updated_at`) VALUES
(929, 3, 7, '19', '19', '570.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(930, 4, 12, '15', '15', '825.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(931, 4, 349, '3', '3', '165.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(932, 5, 594, '5', '5', '550.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(933, 8, 378, '8', '8', '400.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(934, 8, 379, '8', '8', '400.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(935, 10, 381, '15', '15', '750.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(936, 11, 384, '13', '13', '650.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(937, 12, 387, '10', '10', '650.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(938, 14, 391, '5', '5', '150.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(939, 14, 394, '16', '16', '480.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(940, 15, 396, '17', '17', '714.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(941, 15, 397, '38', '38', '1786.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(942, 19, 78, '2', '2', '80.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(943, 20, 404, '3', '3', '130.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(944, 23, 408, '39', '39', '3900.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(945, 25, 416, '5', '5', '575.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(946, 25, 850, '14', '14', '1610.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(947, 26, 69, '15', '15', '525.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(948, 27, 418, '5', '5', '240.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(949, 28, 419, '60', '60', '900.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(950, 29, 138, '20', '20', '80.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(951, 30, 140, '15', '15', '495.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(952, 30, 141, '15', '15', '495.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(953, 30, 144, '5', '5', '165.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(954, 30, 552, '8', '8', '264.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(955, 31, 148, '1', '1', '110.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(956, 31, 149, '3', '3', '330.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(957, 31, 7, '10', '10', '1100.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(958, 33, 157, '23', '23', '828.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(959, 34, 12, '5', '5', '925.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(960, 34, 169, '0.5', '0.5', '225.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(961, 36, 138, '1', '1', '90.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(962, 38, 138, '20', '20', '50.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(963, 47, 189, '8', '8', '200.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(964, 48, 191, '28', '28', '980.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(965, 49, 195, '48', '48', '1920.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(966, 50, 551, '38', '38', '1824.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(967, 52, 208, '13', '13', '390.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(968, 52, 209, '5', '5', '150.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(969, 53, 588, '2', '2', '280.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(970, 55, 455, '1', '1', '400.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(971, 56, 138, '3', '0', '0.00', NULL, NULL, 0, 111, '2022-09-09 23:40:27', '2022-09-10 09:40:10'),
(972, 61, 245, '10', '10', '100.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(973, 61, 247, '68', '68', '1020.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(974, 61, 248, '10', '10', '220.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(975, 81, 138, '1', '1', '70.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(976, 82, 306, '10', '10', '280.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(977, 82, 543, '90', '90', '2520.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(978, 82, 544, '30', '30', '720.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(979, 83, 502, '20', '20', '680.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(980, 83, 503, '115', '129', '4386.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(981, 83, 504, '35', '35', '0.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(982, 83, 653, '20', '20', '680.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(983, 84, 148, '35', '12', '816.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(984, 84, 314, '17', '17', '1938.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(985, 85, 148, '2', '2', '160.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(986, 85, 318, '15', '15', '1200.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(987, 85, 519, '10', '10', '1200.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(988, 99, 138, '1', '1', '100.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(989, 105, 427, '3', '3', '150.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(990, 105, 429, '5', '5', '275.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(991, 105, 430, '2', '2', '110.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(992, 110, 137, '10', '10', '60.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(993, 110, 463, '56', '56', '336.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(994, 111, 228, '13', '13', '182.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(995, 112, 467, '12', '12', '156.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(996, 114, 473, '5', '5', '35.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(997, 115, 167, '10', '10', '90.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(998, 116, 477, '5', '5', '130.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(999, 117, 479, '35', '35', '140.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(1000, 118, 481, '1', '1', '220.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(1001, 120, 137, '10', '10', '60.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(1002, 121, 138, '5', '5', '75.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(1003, 123, 501, '1', '1', '1365.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(1004, 124, 504, '1', '0', '0.00', NULL, NULL, 0, 111, '2022-09-09 23:40:27', '2022-09-10 09:40:23'),
(1005, 126, 529, '14', '14', '700.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(1006, 141, 583, '5', '5', '200.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(1007, 146, 622, '30', '30', '840.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(1008, 146, 624, '370', '520', '10920.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(1009, 146, 625, '30', '30', '900.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41'),
(1010, 176, 853, '15', '15', '465.00', NULL, NULL, 0, 71, '2022-09-09 23:40:27', '2022-09-10 04:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

CREATE TABLE `trucks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truck_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `truck_unit` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trucks`
--

INSERT INTO `trucks` (`id`, `truck_no`, `zone_id`, `truck_unit`, `created_at`, `updated_at`) VALUES
(1, 'Retailer', 1, '10000.00', '2021-11-02 18:46:07', '2022-07-18 03:15:10'),
(2, 'Basundhara', 12, '3000.00', '2021-11-02 18:46:18', '2022-06-18 00:23:20'),
(3, 'Nodda', 1, '3000.00', '2021-11-03 11:42:04', '2022-06-14 01:04:53'),
(4, 'Adabor', 17, '3000.00', '2021-11-04 21:09:32', '2022-06-14 01:06:18'),
(5, 'Polasi 1002', 8, '1500.00', '2021-11-21 05:27:36', '2022-01-26 02:10:01'),
(6, 'Van/CNG', 1, '500.00', '2021-11-23 07:14:41', '2022-03-25 03:36:17'),
(7, 'TownHall 005', 33, '3000.00', '2021-11-26 01:24:46', '2022-06-14 01:06:33'),
(8, 'New Market 006', 5, '1500.00', '2021-11-26 01:25:26', '2022-01-26 02:10:39'),
(9, 'Jigatola', 7, '3000.00', '2021-11-26 01:31:51', '2022-06-18 00:23:30'),
(10, 'Shahajadpur 008', 26, '3000.00', '2021-12-03 02:12:16', '2022-06-14 01:05:53'),
(11, 'Mohakhali', 11, '3000.00', '2021-12-05 02:39:16', '2022-06-14 01:05:30'),
(12, 'Motijhil', 23, '3000.00', '2021-12-28 08:32:10', '2022-06-14 01:06:09'),
(13, 'Mirpur', 54, '1500.00', '2022-01-21 03:16:26', '2022-01-21 03:16:26'),
(14, 'Mohammadpur', 20, '1500.00', '2022-01-26 02:08:19', '2022-01-26 02:08:19'),
(15, 'Khilgawon', 38, '1500.00', '2022-03-25 03:32:14', '2022-03-25 03:32:14'),
(16, 'Pandamart', 1, '20000.00', '2022-03-25 03:32:39', '2022-04-22 00:02:52'),
(17, 'Banasree', 16, '1500.00', '2022-03-25 03:37:13', '2022-03-25 03:37:13'),
(18, 'Airport', 70, '1500.00', '2022-04-18 00:23:49', '2022-04-18 00:23:49'),
(19, 'Total Retailer', 1, '20000.00', '2022-06-10 03:12:59', '2022-06-10 03:12:59'),
(20, 'Kajipara', 60, '3000.00', '2022-07-15 00:27:27', '2022-08-03 00:42:43'),
(21, 'Hatirpool', 29, '2000.00', '2022-08-27 01:07:00', '2022-08-27 01:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `truck_assigns`
--

CREATE TABLE `truck_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truck_trucking_id` bigint(20) UNSIGNED NOT NULL,
  `truck_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `truck_assigns`
--

INSERT INTO `truck_assigns` (`id`, `truck_trucking_id`, `truck_id`, `order_id`, `created_at`, `updated_at`) VALUES
(525, 386, 4, 23485339, '2022-09-10 00:09:51', '2022-09-10 00:09:51'),
(526, 386, 4, 23485346, '2022-09-10 00:09:51', '2022-09-10 00:09:51'),
(527, 386, 4, 23485350, '2022-09-10 00:09:51', '2022-09-10 00:09:51'),
(528, 386, 4, 23485351, '2022-09-10 00:09:51', '2022-09-10 00:09:51'),
(529, 386, 4, 23485353, '2022-09-10 00:09:51', '2022-09-10 00:09:51'),
(530, 386, 4, 23485354, '2022-09-10 00:09:51', '2022-09-10 00:09:51'),
(531, 386, 4, 23485355, '2022-09-10 00:09:51', '2022-09-10 00:09:51'),
(532, 386, 2, 23485319, '2022-09-10 00:11:19', '2022-09-10 00:11:19'),
(533, 386, 2, 23485321, '2022-09-10 00:11:19', '2022-09-10 00:11:19'),
(534, 386, 2, 23485326, '2022-09-10 00:11:19', '2022-09-10 00:11:19'),
(535, 386, 2, 23485341, '2022-09-10 00:11:19', '2022-09-10 00:11:19'),
(536, 386, 2, 23485343, '2022-09-10 00:11:19', '2022-09-10 00:11:19'),
(537, 386, 12, 23485320, '2022-09-10 00:11:49', '2022-09-10 00:11:49'),
(538, 386, 12, 23485327, '2022-09-10 00:11:49', '2022-09-10 00:11:49'),
(539, 386, 12, 23485329, '2022-09-10 00:11:49', '2022-09-10 00:11:49'),
(540, 386, 12, 23485330, '2022-09-10 00:11:49', '2022-09-10 00:11:49'),
(541, 386, 12, 23485332, '2022-09-10 00:11:49', '2022-09-10 00:11:49'),
(542, 386, 12, 23485333, '2022-09-10 00:11:49', '2022-09-10 00:11:49'),
(543, 386, 12, 23485336, '2022-09-10 00:11:49', '2022-09-10 00:11:49'),
(544, 386, 12, 23485344, '2022-09-10 00:11:49', '2022-09-10 00:11:49'),
(545, 386, 12, 23485348, '2022-09-10 00:11:50', '2022-09-10 00:11:50'),
(546, 386, 5, 23485322, '2022-09-10 00:13:18', '2022-09-10 00:13:18'),
(547, 386, 5, 23485323, '2022-09-10 00:13:18', '2022-09-10 00:13:18'),
(548, 386, 5, 23485324, '2022-09-10 00:13:18', '2022-09-10 00:13:18'),
(549, 386, 5, 23485325, '2022-09-10 00:13:18', '2022-09-10 00:13:18'),
(550, 386, 5, 23485328, '2022-09-10 00:13:18', '2022-09-10 00:13:18'),
(551, 386, 5, 23485331, '2022-09-10 00:13:18', '2022-09-10 00:13:18'),
(552, 386, 5, 23485334, '2022-09-10 00:13:18', '2022-09-10 00:13:18'),
(553, 386, 5, 23485335, '2022-09-10 00:13:18', '2022-09-10 00:13:18'),
(554, 386, 5, 23485338, '2022-09-10 00:13:18', '2022-09-10 00:13:18'),
(555, 386, 5, 23485342, '2022-09-10 00:13:18', '2022-09-10 00:13:18'),
(556, 386, 5, 23485345, '2022-09-10 00:13:18', '2022-09-10 00:13:18'),
(557, 386, 5, 23485347, '2022-09-10 00:13:18', '2022-09-10 00:13:18'),
(558, 386, 5, 23485352, '2022-09-10 00:13:18', '2022-09-10 00:13:18'),
(559, 386, 10, 23485337, '2022-09-10 00:14:31', '2022-09-10 00:14:31'),
(560, 386, 10, 23485340, '2022-09-10 00:14:31', '2022-09-10 00:14:31'),
(561, 386, 10, 23485349, '2022-09-10 00:14:31', '2022-09-10 00:14:31'),
(562, 386, 21, 23485318, '2022-09-10 00:15:43', '2022-09-10 00:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `truck_truckings`
--

CREATE TABLE `truck_truckings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truck_tracking` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `truck_truckings`
--

INSERT INTO `truck_truckings` (`id`, `truck_tracking`, `created_at`, `updated_at`) VALUES
(1, 'F_TR34526', '2021-11-08 10:52:06', '2021-11-08 10:52:14'),
(2, 'F_TR56764', '2021-11-07 21:08:28', '2021-11-07 21:08:28'),
(3, 'F_TR88792', '2021-11-08 16:27:20', '2021-11-08 16:27:20'),
(4, 'F_TR39645', '2021-11-09 14:57:00', '2021-11-09 14:57:00'),
(5, 'F_TR29183', '2021-11-09 17:07:37', '2021-11-09 17:07:37'),
(6, 'F_TR91787', '2021-11-09 22:51:15', '2021-11-09 22:51:15'),
(7, 'F_TR94861', '2021-11-10 15:34:22', '2021-11-10 15:34:22'),
(8, 'F_TR45179', '2021-11-11 16:31:02', '2021-11-11 16:31:02'),
(9, 'F_TR91838', '2021-11-11 17:03:33', '2021-11-11 17:03:33'),
(10, 'F_TR92436', '2021-11-11 21:16:25', '2021-11-11 21:16:25'),
(11, 'F_TR19238', '2021-11-12 18:04:52', '2021-11-12 18:04:52'),
(12, 'F_TR89379', '2021-11-13 17:50:51', '2021-11-13 17:50:51'),
(13, 'F_TR83686', '2021-11-13 21:38:16', '2021-11-13 21:38:16'),
(14, 'F_TR84929', '2021-11-14 17:22:11', '2021-11-14 17:22:11'),
(15, 'F_TR74161', '2021-11-14 19:17:57', '2021-11-14 19:17:57'),
(16, 'F_TR62893', '2021-11-15 20:38:05', '2021-11-15 20:38:05'),
(17, 'F_TR32212', '2021-11-16 21:27:58', '2021-11-16 21:27:58'),
(18, 'F_TR39658', '2021-11-16 21:30:57', '2021-11-16 21:30:57'),
(19, 'F_TR18139', '2021-11-16 21:34:36', '2021-11-16 21:34:36'),
(20, 'F_TR36369', '2021-11-16 21:35:57', '2021-11-16 21:35:57'),
(21, 'F_TR85793', '2021-11-16 21:40:00', '2021-11-16 21:40:00'),
(22, 'F_TR44653', '2021-11-16 21:41:55', '2021-11-16 21:41:55'),
(23, 'F_TR48743', '2021-11-16 21:42:11', '2021-11-16 21:42:11'),
(24, 'F_TR67983', '2021-11-16 21:48:25', '2021-11-16 21:48:25'),
(25, 'F_TR91645', '2021-11-16 21:51:06', '2021-11-16 21:51:06'),
(26, 'F_TR72782', '2021-11-17 15:13:51', '2021-11-17 15:13:51'),
(27, 'F_TR18587', '2021-11-17 21:32:02', '2021-11-17 21:32:02'),
(28, 'F_TR92629', '2021-11-18 20:35:04', '2021-11-18 20:35:04'),
(29, 'F_TR51819', '2021-11-19 20:16:20', '2021-11-19 20:16:20'),
(30, 'F_TR41656', '2021-11-20 18:12:16', '2021-11-20 18:12:16'),
(31, 'F_TR55112', '2021-11-20 20:29:25', '2021-11-20 20:29:25'),
(32, 'F_TR97515', '2021-11-21 21:25:15', '2021-11-21 21:25:15'),
(33, 'F_TR85771', '2021-11-22 21:04:00', '2021-11-22 21:04:00'),
(34, 'F_TR32641', '2021-11-23 20:29:04', '2021-11-23 20:29:04'),
(35, 'F_TR12986', '2021-11-24 21:23:11', '2021-11-24 21:23:11'),
(36, 'F_TR96733', '2021-11-25 18:02:08', '2021-11-25 18:02:08'),
(37, 'F_TR13566', '2021-11-26 16:10:22', '2021-11-26 16:10:22'),
(38, 'F_TR87659', '2021-11-26 18:56:42', '2021-11-26 18:56:42'),
(39, 'F_TR31514', '2021-11-26 19:24:55', '2021-11-26 19:24:55'),
(40, 'F_TR41675', '2021-11-27 20:12:48', '2021-11-27 20:12:48'),
(41, 'F_TR21927', '2021-11-28 16:04:08', '2021-11-28 16:04:08'),
(42, 'F_TR12383', '2021-11-28 18:58:02', '2021-11-28 18:58:02'),
(43, 'F_TR72124', '2021-11-28 20:09:36', '2021-11-28 20:09:36'),
(44, 'F_TR92418', '2021-11-28 20:16:34', '2021-11-28 20:16:34'),
(45, 'F_TR37446', '2021-11-28 21:18:37', '2021-11-28 21:18:37'),
(46, 'F_TR31284', '2021-11-29 15:25:08', '2021-11-29 15:25:08'),
(47, 'F_TR78898', '2021-11-30 14:40:11', '2021-11-30 14:40:11'),
(48, 'F_TR18357', '2021-11-30 20:21:24', '2021-11-30 20:21:24'),
(49, 'F_TR67476', '2021-11-30 20:31:46', '2021-11-30 20:31:46'),
(50, 'F_TR84979', '2021-12-01 14:18:48', '2021-12-01 14:18:48'),
(51, 'F_TR85443', '2021-12-02 15:35:07', '2021-12-02 15:35:07'),
(52, 'F_TR79769', '2021-12-02 20:51:33', '2021-12-02 20:51:33'),
(53, 'F_TR69256', '2021-12-03 20:29:13', '2021-12-03 20:29:13'),
(54, 'F_TR41675', '2021-12-04 15:07:44', '2021-12-04 15:07:44'),
(55, 'F_TR41545', '2021-12-04 20:18:39', '2021-12-04 20:18:39'),
(56, 'F_TR35913', '2021-12-05 11:32:30', '2021-12-05 11:32:30'),
(57, 'F_TR18146', '2021-12-05 11:48:13', '2021-12-05 11:48:13'),
(58, 'F_TR93796', '2021-12-05 20:05:21', '2021-12-05 20:05:21'),
(59, 'F_TR89955', '2021-12-06 16:54:42', '2021-12-06 16:54:42'),
(60, 'F_TR21581', '2021-12-06 20:22:55', '2021-12-06 20:22:55'),
(61, 'F_TR28978', '2021-12-07 18:06:06', '2021-12-07 18:06:06'),
(62, 'F_TR58588', '2021-12-07 19:37:48', '2021-12-07 19:37:48'),
(63, 'F_TR74915', '2021-12-08 17:08:58', '2021-12-08 17:08:58'),
(64, 'F_TR61531', '2021-12-08 20:43:17', '2021-12-08 20:43:17'),
(65, 'F_TR73333', '2021-12-09 19:17:18', '2021-12-09 19:17:18'),
(66, 'F_TR36498', '2021-12-10 21:04:45', '2021-12-10 21:04:45'),
(67, 'F_TR25874', '2021-12-11 19:12:09', '2021-12-11 19:12:09'),
(68, 'F_TR22676', '2021-12-12 20:14:51', '2021-12-12 20:14:51'),
(69, 'F_TR66661', '2021-12-13 20:14:17', '2021-12-13 20:14:17'),
(70, 'F_TR81735', '2021-12-14 20:46:12', '2021-12-14 20:46:12'),
(71, 'F_TR22264', '2021-12-15 13:58:51', '2021-12-15 13:58:51'),
(72, 'F_TR48139', '2021-12-15 17:10:36', '2021-12-15 17:10:36'),
(73, 'F_TR27455', '2021-12-15 18:15:24', '2021-12-15 18:15:24'),
(74, 'F_TR75966', '2021-12-15 18:16:41', '2021-12-15 18:16:41'),
(75, 'F_TR84578', '2021-12-15 18:21:05', '2021-12-15 18:21:05'),
(76, 'F_TR81378', '2021-12-15 19:32:37', '2021-12-15 19:32:37'),
(77, 'F_TR15466', '2021-12-16 19:22:31', '2021-12-16 19:22:31'),
(78, 'F_TR71374', '2021-12-17 20:01:00', '2021-12-17 20:01:00'),
(79, 'F_TR28919', '2021-12-18 20:29:37', '2021-12-18 20:29:37'),
(80, 'F_TR72182', '2021-12-19 17:50:31', '2021-12-19 17:50:31'),
(81, 'F_TR75673', '2021-12-20 12:25:29', '2021-12-20 12:25:29'),
(82, 'F_TR13682', '2021-12-20 15:01:31', '2021-12-20 15:01:31'),
(83, 'F_TR43421', '2021-12-20 15:54:24', '2021-12-20 15:54:24'),
(84, 'F_TR48495', '2021-12-20 15:59:15', '2021-12-20 15:59:15'),
(85, 'F_TR58541', '2021-12-20 19:25:06', '2021-12-20 19:25:06'),
(86, 'F_TR18298', '2021-12-21 18:07:42', '2021-12-21 18:07:42'),
(87, 'F_TR95636', '2021-12-22 20:19:07', '2021-12-22 20:19:07'),
(88, 'F_TR28999', '2021-12-23 18:40:50', '2021-12-23 18:40:50'),
(89, 'F_TR13921', '2021-12-23 18:45:00', '2021-12-23 18:45:00'),
(90, 'F_TR28515', '2021-12-24 20:03:01', '2021-12-24 20:03:01'),
(91, 'F_TR36649', '2021-12-25 21:01:34', '2021-12-25 21:01:34'),

-- --------------------------------------------------------

--
-- Table structure for table `unit_and_sales`
--

CREATE TABLE `unit_and_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_sale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unit_and_sales`
--

INSERT INTO `unit_and_sales` (`id`, `total_unit`, `total_sale`, `date`, `created_at`, `updated_at`) VALUES
(1, '1183', '87182.8', '2021-10-20', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(2, '977.5', '53466.9', '2021-10-21', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(3, '378.5', '14245', '2021-10-22', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(4, '760', '34664', '2021-10-23', '2021-11-30 19:11:43', '2021-12-12 19:49:03'),
(5, '3863', '140823.9', '2021-10-24', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(6, '3677', '272647.9', '2021-10-25', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(7, '4277.5', '411689', '2021-10-26', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(8, '4268.75', '205426.4', '2021-10-27', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(9, '3598', '194111.25', '2021-10-28', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(10, '6032.5', '142781.25', '2021-10-29', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(11, '2069.5', '74034', '2021-10-30', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(12, '3151.25', '175413.35', '2021-11-01', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(13, '2809.5', '230664.85', '2021-11-02', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(14, '1041.5', '46513.6', '2021-11-03', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(15, '400.5', '19227', '2021-11-04', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(16, '3220.5', '159266.925', '2021-11-05', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(17, '3753.5', '204233.25', '2021-11-06', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(18, '2714.45', '171499.1', '2021-11-07', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(19, '2338.5', '109194.1', '2021-11-08', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(20, '2842.5', '195780', '2021-11-09', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(21, '3664.5', '144985.1', '2021-11-10', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(22, '5828.5', '501900.9', '2021-11-11', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(23, '1392', '77954', '2021-11-12', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(24, '1468.5', '84120', '2021-11-13', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(25, '652', '61700', '2021-11-14', '2021-11-30 19:11:43', '2021-12-12 19:49:03'),
(26, '2694.75', '136637.1', '2021-11-15', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(27, '2363.5', '140443.4', '2021-11-16', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(28, '1593.2', '68387.5', '2021-11-17', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(29, '1857', '110320', '2021-11-18', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(30, '2476.5', '170003', '2021-11-19', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(31, '1438.75', '102110', '2021-11-20', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(32, '2084.75', '141697.5', '2021-11-21', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(33, '2381', '117317', '2021-11-22', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(34, '2431.5', '97143.5', '2021-11-23', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(35, '3651.45', '234211.5', '2021-11-24', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(36, '2313.5', '97365', '2021-11-25', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(37, '6292.75', '217961.5', '2021-11-26', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(38, '6249.25', '359926.5', '2021-11-27', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(39, '4005.5', '145326.5', '2021-11-28', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(40, '4524.25', '143035.5', '2021-11-29', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(41, '5465.5', '170117.5', '2021-11-30', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(42, '5149.2', '156268.6', '2021-12-01', '2021-11-30 19:11:43', '2021-12-12 20:35:26'),
(43, '5277.25', '169578.9', '2021-12-02', '2021-12-01 20:24:11', '2021-12-12 20:35:26'),
(44, '3853.13', '135595.3', '2021-12-03', '2021-12-05 16:13:34', '2021-12-12 20:35:26'),
(45, '3471.2', '120523', '2021-12-04', '2021-12-05 16:13:34', '2021-12-12 20:35:26'),
(46, '3443.75', '116681.5', '2021-12-05', '2021-12-05 16:13:34', '2021-12-12 20:35:26'),
(47, '4162', '151455', '2021-12-06', '2021-12-05 16:13:34', '2021-12-12 20:35:26'),
(48, '3570.7', '119100.4', '2021-12-07', '2021-12-07 19:28:52', '2021-12-12 20:35:26'),
(49, '4583.5', '194752.5', '2021-12-08', '2021-12-12 19:49:03', '2021-12-12 20:35:26'),
(50, '10054', '306900.5', '2021-12-09', '2021-12-12 19:49:03', '2021-12-12 20:35:26'),
(51, '24738', '144', '2021-12-10', '2021-12-12 19:49:03', '2021-12-12 19:49:03'),
(52, '18892.5', '1080304', '2021-12-11', '2021-12-12 19:49:03', '2021-12-12 20:35:26'),
(53, '20981.2', '1348431.9', '2021-12-12', '2021-12-12 19:49:03', '2021-12-12 20:35:26'),
(54, '182', '0', '2021-12-13', '2021-12-12 20:19:27', '2021-12-12 20:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_status` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `zone_id`, `added_by`, `name`, `email`, `phone`, `otp`, `password`, `address_line_1`, `address_line_2`, `area`, `city`, `image`, `nid_image`, `location`, `account_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Super Admin', 'superadmin@fashol.com', '01700000000', NULL, '$2y$10$XRDCD9ab2ovA50K3ulYuDO.wMIx1gbSglfjUvVHln0C8JHyfnbJge', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-09-04 20:25:12', '2022-03-02 14:39:53'),
(3, 1, 1, 'Mamunur Rashid', 'mamun@fashol.com', '01711877670', '676912', '$2y$10$VvBiCob7ukXRv6wWfvT9YuLvOrbPFLXr.wKrSmoScjDdOpuDXqY3K', 'n', 'n', 'Dhaka', 'dhaka', 'user_20_Sep_20_50.png', NULL, NULL, 1, NULL, '2021-09-04 20:47:50', '2022-08-20 15:25:05'),
(4, 1, 3, 'Mamun', 'mamunur.niloy@gmail.com', '01854610610', NULL, '$2y$10$NYjgWExvCqvtoAG7Tjk8D.EbYaVsJQaa6ZKIWxR58wU124U5Y1SWm', 'Natun Bazar, Dhaka', 'Naogaon', 'Badda', 'Dhaka', 'user_20_Sep_20_09.jpg', NULL, NULL, 0, NULL, '2021-09-04 20:55:09', '2022-02-17 14:10:46'),
(5, 2, 1, 'Ovizit', 'Ovizit@fashol.com', '01757537343', NULL, '$2y$10$Nr6PPVFCdHKS8f7tMqgCce6iV8awj05KwDov5zMd4VW9dP3ppmVGm', 'None', 'None', 'Norda', 'Dhaka', 'user_21_Sep_21_56.png', NULL, NULL, 0, NULL, '2021-09-04 21:18:56', '2021-09-10 17:10:33'),
(6, 6, 42, 'Sabbir Ahmed', 'sabbir@fashol.com', '01672626786', '232324', '$2y$10$e08N6p8TLuh56YOC.bF/oOtgfWFG9WAirEBTLxdfZ2HcYZlJr4x06', 'None', 'None', 'Mirpur', 'Mirpur', 'user_01672626786.jpg', NULL, NULL, 0, NULL, '2021-09-04 21:19:48', '2022-02-19 13:57:56'),
(8, 8, 72, 'Rabiul Islam', 'Rabiul@fashol.com', '01941734276', '381750', '$2y$10$OLEAGkpv3H/2c9LlXIw6kuLi58wR/d2HgBDGaL1.PPTRr0.XhOxzC', 'None', 'None', 'Polasi', 'Polasi', 'user_01941734276.jpg', NULL, NULL, 0, NULL, '2021-09-04 21:21:51', '2022-03-07 03:46:59'),
(10, 10, 1, 'Habib', 'habib@fashol.com', '01636689797', '123456', '$2y$10$O5Wftz4tyXf4mxXDWLRRb.KRTJ4cdp8nUB0YEUtotOal9mmVv67ea', 'None', 'None', 'Badda', 'Badda', 'user_21_Sep_21_58.png', NULL, NULL, 0, NULL, '2021-09-04 21:22:58', '2021-11-17 16:10:19'),
(13, 1, 26, 'Sajib', 'sajib@fashol.com', '01797840513', '112233', '$2y$10$IW.bu8d0.p2TQRNQlVj4EuNcMbiD581ycs7VplUN0CRuV4c1YcySC', 'none', 'none', 'dhaka', 'dhaka', 'user_21_Sep_21_15.png', NULL, NULL, 1, NULL, '2021-09-04 21:30:15', '2022-05-12 12:57:37'),
(16, 29, 3, 'Rabbi', 'rabbi@fashol.com', '01611780275', NULL, '$2y$10$EAyqaBbmcWvsx.EqosvU6uJT97L0UpH.kWHx6qcNrb9Q6F9i/BvTi', 'Hatirpool', 'Hatirpool', 'Hatirpool', 'Hatirpool', 'user_01611780275.jpg', NULL, NULL, 1, NULL, '2021-09-05 13:29:43', '2022-08-24 19:33:37'),
(18, 4, 1, 'Jonny', 'jonny@fashol.com', '01624698981', NULL, '$2y$10$38tC7VEfHTQWGBRRKPtxM.qeLAQXrzM8m3P5b4NiMTgYO25d5g8oK', 'None', 'None', 'Rampura', 'Rampura', 'user_13_Sep_13_22.png', NULL, NULL, 0, NULL, '2021-09-05 13:32:22', '2021-09-05 13:32:22'),
(19, 4, 3, 'Md Abdul Alim', 's10.fashol@gmail.com', '01310502535', NULL, '$2y$10$7sgAlMWAV9A7mTvS2zpKz.IQqUAYrWo/wERgJlhatxTVG5/aWC/Bi', 'Rampura', NULL, 'Dhaka', 'Dhaka', 'user_19_Sep_19_35.jpg', 'userNID_19_Sep_19_35.jpg', NULL, 0, NULL, '2021-09-09 19:15:35', '2022-02-16 15:26:13'),
(21, 15, 3, 'Milon Biswas', 'milon@fashol.com', '01710417763', NULL, '$2y$10$jzZPQAT5zNOC30id5e4EueaEm5tUtQwBIFPQEkzXoyxPXWT4.V2Jm', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_11_Sep_11_42.jpg', NULL, NULL, 0, NULL, '2021-09-12 11:00:42', '2021-09-25 08:56:38'),
(22, 6, 3, 'Toybur Rahman', 'toybur@fashol.com', '01628364696', NULL, '$2y$10$zfUnxykmJ/OiZL9tngaHGOFx9DREe/U91kZ/xG02hS6mRHj0UTT.u', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_15_Sep_15_43.jpg', NULL, NULL, 0, NULL, '2021-09-12 15:58:43', '2021-09-25 08:56:31'),
(23, 10, 3, 'Santo', 'santo@fashol.com', '01637712008', '012345', '$2y$10$dNhH0CxBeuTYN9OybdG0Re7dq6a5Hxv.3MaGNUMPwxpyq.Gzk8oHG', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_19_Sep_19_02.jpg', NULL, NULL, 1, NULL, '2021-09-21 19:53:02', '2022-04-11 13:07:27'),
(26, 1, 26, 'Rayhan Al Shorif', 'rayhanalshorif@gmail.com', '01323174104', '232323', '$2y$10$cU.R/4ITYrixg9Pumtd3f.vWI6WaYBubAw3qITTX5WFc5sm0cD8ha', 'Holding No.127 chanchra, Jashore', 'Holding No.127 chanchra, Jashore', 'Jashore', 'Jashore', 'user_01923988381.jpg', NULL, NULL, 1, NULL, '2021-09-27 20:05:34', '2022-08-21 17:00:58'),
(29, 1, 3, 'Amzad Hossain', 'amzad@fashol.com', '01944970367', NULL, '$2y$10$4cN76Hy0IOY9ioRV8CFbEOAvPe5RxgsUOdm18UkSiLvSdRfmBsyTy', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_3NRNWxLCo607_Oct_07_47.jpg', NULL, NULL, 1, NULL, '2021-10-02 07:54:47', '2022-07-24 23:45:20'),
(33, 9, 3, 'Salman khan', 'Salman@fashol.com', '01760258154', NULL, '$2y$10$WtXWH9u4o687N3OZllJn1uzr1Nt.jJvRIv7JI4H23MpnLWtSluhfO', 'Shahajadpur, Gulshan, Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_uh4xMXLT7d09_Oct_09_19.jpg', NULL, NULL, 0, NULL, '2021-10-03 09:19:19', '2022-02-16 15:21:50'),
(34, 11, 3, 'Sazzad', 'sazzad@fashol.com', '01701447011', NULL, '$2y$10$VIYNpQcmTFkEZ5Q8j6ly/O.4BbPwugIjvKgR1qlprFrlscG8jIf1O', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_EAWA1Tztlz20_Oct_20_07.png', NULL, NULL, 0, NULL, '2021-10-08 20:46:07', '2022-02-16 15:25:54'),
(35, 12, 72, 'Shamim', 'shamim@fashol.com', '01922566235', NULL, '$2y$10$9oLe3tOrvSt6iyK/Vrg6nOaLYl5uJsKHlUc09wbrlodQSlaWF9wPy', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_01922566235.jpg', NULL, NULL, 1, NULL, '2021-10-08 20:47:53', '2022-07-27 22:08:23'),
(36, 11, 3, 'Jubayer', 'jubayer@fashol.com', '01755779665', NULL, '$2y$10$CFFR6GvTsDFYml/c9vZP9.WW3iFZ3Nm2nhRp79jmdM5/kiIwlt9WC', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_db80XvaMkT20_Oct_20_45.png', NULL, NULL, 0, NULL, '2021-10-08 20:49:45', '2022-01-13 08:38:57'),
(37, 17, 72, 'Mosaraf', 'mosaraf@fashol.com', '01632321127', NULL, '$2y$10$aU5D63JshR/mAbFnFS6sQOCyPnfVvKJP1V3H05m/dabJxGCkRqrqC', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_01632321127.jpg', NULL, NULL, 1, NULL, '2021-10-08 20:55:14', '2022-07-03 22:44:15'),
(38, 8, 3, 'Azom', 'azom@fashol.com', '01408189014', NULL, '$2y$10$j5jump9V5HBsxZ7hevMeUOnoj7dN.L2D2ihDu5erTAmxdgbF8YU/W', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_Hnw73pO1H100_Oct_00_25.png', NULL, NULL, 1, NULL, '2021-10-09 00:09:25', '2021-10-12 02:47:35'),
(40, 19, 3, 'Emam', 'emam@fashol.com', '01829296983', NULL, '$2y$10$zxqFr5F3b2l99d2DsFMjDu0.lO0nUf0zbvmEXqHhBLUUtSmo0hMa2', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_LgNDtgDiG701_Oct_01_22.jpg', NULL, NULL, 1, NULL, '2021-10-09 01:33:22', '2022-07-13 05:11:17'),
(41, 7, 3, 'Abdul Jobbar', 'Jobbar@fashol.com', '01810187228', '554265', '$2y$10$eoKdDEu0yzKJqpD32h0bU.FN4/YI4doizVWCzV1XsNOsv6NaLX3wa', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_aZHbNriOsh11_Oct_11_49.jpg', NULL, NULL, 0, NULL, '2021-10-09 11:18:49', '2022-04-14 21:09:28'),
(42, 1, 26, 'Ashik', 'cto@fashol.com', '01315664544', NULL, '$2y$10$pePDbpSQ5PzxFfcr.hCcNO.h7AWnv6DJwcGVpS.HtIwPk6PxX2mta', 'Mirpur-2', NULL, 'Mirpur', 'Dhaka', 'user_kTZDBBPpFm11_Oct_11_10.jpg', NULL, NULL, 1, NULL, '2021-10-10 11:21:10', '2022-09-08 15:14:50'),
(44, 19, 3, 'Sojib', 'sojib@fashol.com', '01842136856', NULL, '$2y$10$FkZuLZyq5UFwHUJ6lF.yUushSgkUm9AZdd57MB73upENI4hy2849y', 'Dhaka', NULL, 'HQ', 'Dhaka', 'user_HGQAp8dTCJ21_Oct_21_18.png', NULL, NULL, 0, NULL, '2021-10-13 21:22:18', '2021-10-18 19:22:03'),
(47, 19, 3, 'Torikul Islam', 'torikul@fashol.com', '01310696028', NULL, '$2y$10$PsItvqjACZf6uxWP5kvIt.29R4jCyVXptBam/brVTj./KUPAvr.iK', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_4xTVrqwfJ423_Oct_23_18.png', NULL, NULL, 1, NULL, '2021-10-14 23:28:18', '2021-10-14 23:35:41'),
(48, 31, 72, 'Shohan', 'shohan@fashol.com', '01810187212', '592964', '$2y$10$byEg1RKjyxYJHyEOYqKUR.Ry.2KhkfKUnu11G3oZMao71QTBOxMXe', 'Dhaka', 'Dhaka', 'HQ', 'HQ', 'user_01810187212.jpg', NULL, NULL, 1, NULL, '2021-10-18 18:51:39', '2022-06-19 15:29:33'),
(49, 10, 3, 'roy', 'roy.joy@gmail.com', '01923807093', NULL, '$2y$10$9lt3ol.CntHT/6DJDPdrFep0jRkNqDtQwehTexnVWcYEDtX5v8ZpO', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_CKQPaPGIwA20_Oct_20_55.jpg', NULL, NULL, 0, NULL, '2021-10-20 20:08:55', '2022-02-17 14:11:37'),
(50, 21, 3, 'Rakibul Hasan', 'rakib@fashol.com', '0113542543', NULL, '$2y$10$bYgB3cv7EpqUEU5qoV6f6uH6rX19at52R2vQ/5iIoTiI2h/P4rdQi', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_LDRar8gdxd12_Oct_12_14.jpg', NULL, NULL, 0, NULL, '2021-10-21 12:08:14', '2022-02-16 15:28:29'),
(51, 37, 63, 'Roksana Akter Urmi', 'roksana.urmi@fashol.com', '01810187203', NULL, '$2y$10$gX3VnQFoxqIZdsNblerahO4KZp9WCgPhI1D9tBOyzF8oqc1EJADNC', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_dSypXNzek815_Oct_15_22.jpg', NULL, NULL, 0, NULL, '2021-10-21 15:01:22', '2022-02-16 15:28:41'),
(52, 1, 3, 'Sanjida Akter Khan Mou', 'sanjida@fashol.com', '01810187201', NULL, '$2y$10$/9E47Mh0E3N0LJPTmBKJKebDdqeJks98Pnzh.plGYftrsC8GlDKVC', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_zn61EzYb2y15_Oct_15_57.jpg', NULL, NULL, 0, NULL, '2021-10-21 15:02:57', '2022-02-21 15:33:45'),
(53, 1, 63, 'Sanjida Akter Raka', 'raka@fashol.com', '01910187204', NULL, '$2y$10$BQPRjIsxRUd5XjsTrT6LdOtXpBdbbpVbbAQNcO1PDMO/R9SUqeGJW', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_bo22AuQmGh15_Oct_15_03.jpg', NULL, NULL, 0, NULL, '2021-10-21 15:06:03', '2022-02-21 15:33:24'),
(54, 1, 63, 'Tahrina Afrose Shimu', 'shimu@fashol.com', '01810187206', NULL, '$2y$10$qqebsaEUqholSi6G5W8Yb.tAfMjwXmub4QQ2pTYq5b/r6Lvh6Fcnm', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_jcmY78rjc615_Oct_15_12.jpg', NULL, NULL, 0, NULL, '2021-10-21 15:10:12', '2022-08-20 23:13:59'),
(55, 60, 72, 'Nurul Azim', 'nurulazim3871gmail.com', '01810187235', NULL, '$2y$10$3hBd66NLdEtnh/0chgDZ9edQeAJ00sIfI7pc9fV.F2BLFJxtYguu.', 'Khajipara, mirpur 10', NULL, 'Dhaka', 'Dhaka', 'user_01810187235.jpg', NULL, NULL, 1, NULL, '2021-10-26 20:04:28', '2022-06-21 18:00:20'),
(56, 20, 26, 'Rakiba Yeasmin', 'rakibayeasmin@fashol.com', '01810187234', '640573', '$2y$10$MY8970HyWg.mj5Fq5xzRQOIvr02DotTphS7fMGVWMbEKqELhdkVc.', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_X451dTZkws20_Oct_20_54.jpg', NULL, NULL, 0, NULL, '2021-10-26 20:05:54', '2022-06-14 19:21:24'),
(57, 28, 72, 'Mehedi Hassan', 'ms@fashol.com', '01810187230', NULL, '$2y$10$3aIjt.DAJbDyDpBfNtOLiOqVxoOorAVtKocEp7/O3rtoV4xGL/wKK', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_01810187230.jpg', NULL, NULL, 0, NULL, '2021-10-26 20:08:28', '2022-09-08 17:41:17'),
(58, 72, 96, 'Md. Sohel', 'Helalahmed@fashol.com', '01810187231', NULL, '$2y$10$zbdNY0OSmw6xdGjZ9ZJqlunrvGvlXxUnCmTXimZOXl47CH06smwGu', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_01810187231.jpg', NULL, NULL, 1, NULL, '2021-10-26 20:20:41', '2022-09-07 15:16:02'),
(59, 26, 3, 'Taizul(Taz)', 'taizul@fashol.com', '01510187232', NULL, '$2y$10$VR49jeMNPENxFxHD5rRhGuBFB6TC5.URs2GIPsMvPVD.nEC9Iwslm', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_LDQ83fhxAB20_Oct_20_10.jpg', NULL, NULL, 0, NULL, '2021-10-26 20:37:10', '2022-02-06 12:10:05'),
(60, 7, 96, 'Md Shawon', 'Shawon@fashol.com', '01810187233', NULL, '$2y$10$A89G1I0gc6mBgRhXVq4Oi.MSbCJqiki/OE8UDcJ0tjKkeqoOcNqUa', 'Jigatala, Dhaka', 'Jigatala, Dhaka', 'Jigatala, Dhaka', 'Jigatala, Dhaka', 'user_01810187233.jpg', NULL, NULL, 0, NULL, '2021-10-27 10:41:26', '2022-04-14 17:40:23'),
(61, 5, 42, 'Md Helal', 'helal@fashol.com', '01810187236', NULL, '$2y$10$awhctjiDiFltxQqhrXsr9e4egjyHkyo9lHYY4ETtmqB/gXGh/zfzm', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_uizT7JXNmx10_Oct_10_53.jpg', NULL, NULL, 0, NULL, '2021-10-27 10:44:53', '2022-04-14 17:38:42'),
(63, 21, 76, 'Ak roy', 'akroy@fashol.com', '01645537773', NULL, '$2y$10$gJCuPI3kFo1OGa4oxDRYsucDcRhfNmn4ja4xgBKTzYqQ6lsL.BdrO', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_0i0RImoQ5n23_Nov_23_39.jpg', NULL, NULL, 1, NULL, '2021-11-04 23:02:39', '2022-08-28 17:16:44'),
(68, 21, 3, 'office fashol', 'office@fashol.com', '01821808070', '318624', '$2y$10$DvVjn8r.73NVOPAuo1/qluDalSy8QADoRhL5Ko4XoAgH9e3AwGHuu', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_F3I5mFReUF22_Nov_22_37.jpg', NULL, NULL, 1, NULL, '2021-11-10 22:46:37', '2021-11-21 22:44:55'),
(69, 34, 3, 'Md Shohel', 'Shohel@fashol.com', '01879872223', NULL, '$2y$10$u8KNiGMktZc./sm0ebBvn.ln9iLHAfbFrbNLqNEc5nWH3CH0oMth2', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_oIUDBU5HbZ14_Nov_14_06.jpg', NULL, NULL, 0, NULL, '2021-11-25 14:43:06', '2022-02-16 15:35:20'),
(71, 21, 63, 'Md Dalim', 'dalim@fashol.com', '01993311383', NULL, '$2y$10$umgeh.n1iPkDex4S7AAtuO1Y8cQKdcjKGjBwGA4/NAeZ.a7qgkCh6', 'Dhaka', NULL, 'dhaka', 'Dhaka', 'user_t2l28LjbXQ03_Nov_03_02.jpg', NULL, NULL, 1, NULL, '2021-11-26 03:46:02', '2022-09-08 03:46:10'),
(72, 1, 72, 'Moon', 'moon@gmail.com', '01791607779', '323135', '$2y$10$YNCG1N338Wh4s3rJc65ROuB9k1HHCvQGbop7BQzf1dHwAzNKYBTG6', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_vCJUDES7vy18_Nov_18_38.jpg', NULL, NULL, 1, NULL, '2021-11-27 18:45:38', '2022-08-14 02:49:04'),
(73, 7, 96, 'Jabbar', 's6.fashol@gmaail.com', '01681821161', NULL, '$2y$10$1ptL7cFiVcI2SCv6ILxRN.8MfSAhD9wFXlOudqEUg2/z52ycf0d3C', 'dhaka', 'dhaka', 'Dhanmondi', 'dhaka', 'user_01951081841.jpg', 'userNID_20_Nov_20_33.jpg', NULL, 1, NULL, '2021-11-30 20:18:33', '2022-06-12 16:58:36'),
(74, 21, 96, 'Md Reyad', 'reyad@fashol.com', '01810187198', NULL, '$2y$10$U7zAlBK0NeJ9ya8KeIc0z.LJGuaAe.L/o5iKRfE3N78e50/FECn.m', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_wTxKzUY4Pf23_Nov_23_55.jpg', NULL, NULL, 1, NULL, '2021-11-30 23:33:55', '2022-08-30 23:06:18'),
(76, 19, 63, 'Arjun', 'royarjun720@gmail.com', '01832202203', '297810', '$2y$10$xAq2HQtWL/j8nZ8OOJDmKOpH93LKBJ8mUjCmYziuT9CVylG1Pjo7G', 'dhaka', 'dhaka', 'dhaka', 'dhaka', 'user_WylAtB6zQY18_Dec_18_37.jpg', NULL, NULL, 1, NULL, '2021-12-10 18:42:37', '2022-07-31 13:12:04'),
(77, 53, 72, 'Rafiqul Islam', 'rajum8121@gmail.com', '01810187240', NULL, '$2y$10$MinChbWPg/7ZU32t5wKU5.Q7Kvvr/7JyY5A9V8Recncr3p7oDSOD6', 'dhaka', 'dhaka', 'Dhanmondi', 'dhaka', 'user_01810187240.jpg', 'userNID_19_Dec_19_56.jpg', NULL, 1, NULL, '2021-12-10 19:07:56', '2022-04-22 21:04:39'),
(78, 53, 3, 'Md. Shishir', 'shisir@fashol.com', '01810187238', '286044', '$2y$10$upUOjKM9l1W5qJIaQPkXyudU2LsqbsT8.YgqH8fBqIspjZMYg7xhm', 'N/A', 'N/A', 'Dhanmondi', 'Dhaka', 'user_Rg5AuWlm3A17_Dec_17_09.jpg', NULL, NULL, 0, NULL, '2021-12-13 17:23:09', '2022-04-11 01:37:57'),
(82, 54, 72, 'Md Masum Hasan', 'masum@fashol.com', '01810187239', '734341', '$2y$10$ROXQ8uYeK93ahMJ3TFSIZeDOC5PO2Dzadq.4K0a1.JIPSLkipRXHK', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_01810187239.jpg', NULL, NULL, 0, NULL, '2021-12-15 22:50:22', '2022-08-17 20:28:31'),
(83, 23, 42, 'Md Sabbir', 'mdsabbir@fashol.com', '01810187237', '811996', '$2y$10$XUfgPSIte0uatt69Z0kbJeA72.E8JRmZUAh2ol6p1TMJyICkZ0WkC', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_01810187237.jpg', NULL, NULL, 0, NULL, '2021-12-16 19:26:14', '2022-08-24 19:29:16'),
(84, 21, 3, 'Niloy', 'niloy@fashol.com', '01621727162', NULL, '$2y$10$UKc2fW4Xu5/bKleMgDRwj.SoPK3qf796m6/wqPoED0.Hql9SMkJUi', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_H5ANufSfhn21_Dec_21_15.jpg', NULL, NULL, 0, NULL, '2021-12-28 21:51:15', '2022-05-18 20:44:35'),
(85, 21, 3, 'Al Amin', 'alamin@fashol.com', '01620906290', NULL, '$2y$10$JhqPRYTmvpa0Iu4XHJbGOuw9hMXweqkHNmqyi0BX0C3s2X.ISQlLa', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_zfLz6jDCtb00_Dec_00_10.jpg', NULL, NULL, 1, NULL, '2021-12-31 00:40:10', '2022-09-02 00:52:03'),
(86, 20, 72, 'Md Saju Ahmed', 'tariqulislam500194@gmail.com', '01810187241', NULL, '$2y$10$n1.gQx2pOOxP3.HbrRuTFeHPXtxXJTvDllRqb4m/yrWkZhsztwIai', 'North Mohammadpur', 'North Mohammadpur', 'North Mohammadpur', 'Dhaka', 'user_01810187241.jpg', NULL, NULL, 0, NULL, '2022-01-09 15:47:01', '2022-02-20 19:50:18'),
(87, 62, 96, 'Sumya Islam', 'sumyarimi12@gmail.com', '01810187242', NULL, '$2y$10$rYmB57Ove0ZjSIReL6A4Z.cn.0lDNGy5aFo.V2rKFzkmuELTR9.Ru', 'Dhaka', 'Dhaka', 'Mohammadpur', 'Dhaka', 'user_01810187242.jpg', NULL, NULL, 1, NULL, '2022-01-10 16:41:20', '2022-06-29 22:31:43'),
(88, 33, 26, 'Md Ferdous', 'admin_fashol_ferdous@gmail.com', '01791145911', NULL, '$2y$10$aIhhCvQMMwquQ06WV4uMu.s7CwjZlt3gU4flp6j813IYcAg208NEK', 'Townhall', 'Townhall', 'Townhall', 'Dhaka', 'user_t0atg7KSRJ11_Jan_11_58.jpg', NULL, NULL, 0, NULL, '2022-01-13 11:53:58', '2022-02-16 15:35:29'),
(89, 21, 76, 'Rubel', 'Acc.fashol@gmail.com', '01711471473', NULL, '$2y$10$TSEh7Ax.cScDM0tn7gfzR.XTiOqFlUh9UmNb2iLhvOoTVY3cc6uGq', 'Dhaka', 'Dhaka', 'HQ', 'Dhaka', 'user_joheCcHY7m13_Jan_13_00.jpg', NULL, NULL, 0, NULL, '2022-01-16 13:07:00', '2022-08-14 18:20:04'),
(91, 1, 26, 'Rayhan Al Shorif', 'admin_fashol_rtyuio@gmail.com', '01923987878', NULL, '$2y$10$SUplIwIFcTr.oX47ibnvxOBE92lxrUJjWlrRWVccuwutZgGPAwF2a', 'Holding No.127 chanchra, Jashore', 'Jashore', 'dsfsd', 'Jashore', 'user_tWneTSGBFv13_Jan_13_00.jpg', 'userNID_13_Jan_13_00.jpg', NULL, 1, NULL, '2022-01-18 13:13:00', '2022-01-18 13:13:00'),
(92, 9, 96, 'Shishir', 'Shishir@gmail.com', '01810187210', NULL, '$2y$10$vpel78Gouq2n9YpLFMC3keelqyRHYyqxO3UgDWcNMFUThmxMNmcxi', 'Dhaka', 'Dhaka', 'Banani', 'Dhaka', 'user_01810187210.jpg', NULL, NULL, 1, NULL, '2022-01-18 16:38:36', '2022-04-22 20:44:51'),
(93, 1, 42, 'Afzal Vai Dmoney', 'afzalvai@fashol.com', '01614099336', NULL, '$2y$10$WF2nnp7I/.CJ0uZMS8reWeAJLHt0FfvIiZ98I7oZOmbZoR8rQ4Wvm', 'Office', 'Office', 'Dhaka', 'Dhaka', 'user_QQnoK5ciNr21_Jan_21_30.jpg', NULL, NULL, 1, NULL, '2022-01-21 21:46:30', '2022-01-21 23:01:32'),
(94, 1, 26, 'Admin  (CEO)', 'admin_fashol_ceo@gmail.com', '01720029243', NULL, '$2y$10$BL7Gul/D12IgrLfRmOMbZ.KzkcIar3LyyPHd8bpju9FihH2twcluC', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_Ec56IBGoOy23_Jan_23_22.jpg', NULL, NULL, 1, NULL, '2022-01-22 23:34:22', '2022-02-03 23:25:42'),
(96, 21, 26, 'Naeem Hasan', 'mehedi@fashol.com', '01830872204', NULL, '$2y$10$f5pKNxV7fdYSp5aXw3/cm.uSG2n1nnVzCiRaZk1xAamHN.29ccqFe', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_01830872204.jpg', NULL, NULL, 1, NULL, '2022-01-24 18:49:39', '2022-09-10 12:58:48'),
(97, 63, 26, 'Tania Akter', 'tashfiakhantani@gmail.com', '01810187214', NULL, '$2y$10$/vLP2xCp2seyRkZHLSPc/uSQnzR.Hf.046smup6T5LdUqSMY3w4G2', 'Dhaka', 'Dhaka', 'Mohammadpur', 'Dhaka', 'user_quAvxlEQiZ15_Jan_15_03.jpg', NULL, NULL, 0, NULL, '2022-01-29 15:49:03', '2022-02-19 16:37:04'),
(98, 33, 96, 'Alim', 'aubijoy12345@gmail.com', '01810187195', '293953', '$2y$10$pwcWbyXf5ldktCWXMv3o6OFb7.gaIv0LB76sAbAKUIPLQkFCm9TJe', 'Manikdi Bazar, Cantonment', 'Manikdi Bazar, Cantonment', 'Manikdi Bazar, Cantonment', 'Dhaka', 'user_01810187195.jpg', NULL, NULL, 1, NULL, '2022-01-31 14:51:23', '2022-03-01 23:14:20'),
(100, 11, 26, 'Abid Rayhan', 'Ar.auntu1994@gmail.com', '017000000000', NULL, '$2y$10$pDdudhr7iDWk49a8Y430TejL/k4msne7EK1f7e16thDlB5M2nMKhK', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_01846420409.jpg', NULL, NULL, 0, NULL, '2022-01-31 21:33:40', '2022-03-07 16:54:33'),
(101, 20, 96, 'Sonia Yasmin', 'Alijayesmin92@gmail.com', '01810187205', NULL, '$2y$10$JFtTmqf.ixk1rKNrkebQUe96ksoSXNVHeFvGR3HEPpJL4WVLGXsGS', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_01810187205.jpg', NULL, NULL, 1, NULL, '2022-02-02 18:09:04', '2022-08-30 16:42:27'),
(102, 26, 26, 'Akram', 'akram@fashol.com', '01810187232', NULL, '$2y$10$VR49jeMNPENxFxHD5rRhGuBFB6TC5.URs2GIPsMvPVD.nEC9Iwslm', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_01810187232.jpg', NULL, NULL, 1, NULL, '2021-10-26 20:37:10', '2022-08-14 17:24:35'),
(103, 6, 76, 'Rubel khan', 'smhasan01767@gmail.com', '01718634322', '119473', '$2y$10$4XJawBlHbH.tGydtEp23YOz4EZauz91fy8AJlwSWWOYcybZLlBEDe', 'Dhaka', 'Dhaka', 'HQ', 'Dhaka', 'user_5ud4CkBhKT18_Feb_18_45.jpg', NULL, NULL, 0, NULL, '2022-02-03 18:42:45', '2022-02-15 22:43:19'),
(104, 8, 72, 'Md Ibrahim Khalil', 'Ibrahim@fashol.com', '01810187218', NULL, '$2y$10$wGKjP/x2l2czwGpPl0CbPekiHZNuFdXoajIjikrfJZbwdasHGIqDC', 'New market, Dhaka', 'New market, Dhaka', 'New market', 'Dhaka', 'user_01810187218.jpg', NULL, NULL, 1, NULL, '2022-02-06 18:35:18', '2022-03-07 21:19:29'),
(105, 1, 26, 'Razib', 'razib@fashol.com', '01705524925', '715013', '$2y$10$Hu4ZPH7iwkTaq.0ZFJpvoO1rl/D..1bMeg6jH/0PJXxKh24AKliua', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_RK7kFwigg718_Feb_18_04.jpg', NULL, NULL, 1, NULL, '2022-02-08 18:51:04', '2022-05-11 17:55:40'),
(106, 1, 26, 'Prottoy Hasan', 'admin_fashol', '01817299921', NULL, '$2y$10$vGeVnMwsORv4034bG9b0BOpqAdd7J.qBYFIZ/9tLAtxTCaGWu6NZy', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_DxsFVgxvoI18_Feb_18_21.jpg', NULL, NULL, 1, NULL, '2022-02-08 18:52:21', '2022-03-12 14:30:14'),
(107, 1, 3, 'New t', 'Newt@fashol.com', '01811877670', NULL, '$2y$10$u79Hrp1VGlnZfGjfwpjvs.TOP88gTVCw.zY3tdGksijTROxRnugU6', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_NqCfaNJz6v00_Feb_00_26.webp', NULL, NULL, 1, NULL, '2022-02-09 00:01:26', '2022-02-09 00:04:42'),
(108, 19, 76, 'Md Kawsar', 'Kawsar@fashol.com.bd', '01714305578', NULL, '$2y$10$wGHjcAaA/Et8H0iG8SJr/OhA1HCAcnHZ4TkCos2ALZfou1I50Tndy', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_01714305578.jpg', NULL, NULL, 1, NULL, '2022-02-16 17:58:12', '2022-03-26 01:58:07'),
(109, 19, 76, 'Ali Saome', 'Ali@fashol.com.bd', '01821801992', NULL, '$2y$10$QFwIA92EyubyOxqG.M8COu7BEvOF04povJtcp6HUiPeRJRCdf0AjC', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_01821801992.jpg', NULL, NULL, 1, NULL, '2022-02-17 07:31:42', '2022-09-04 23:31:53'),
(110, 64, 76, 'Khairul islam', 'shadvoia25@gmail.com', '01721601901', NULL, '$2y$10$UghpFdoIp3OxLIPISh/mhu9sJEQhGvSXWO4B0reI4dLxaLVNOcZtu', 'Manikgonj', 'Manikgonj', 'Manikgonj', 'Manikgonj', 'user_yGNalUboou09_Feb_09_15.jpg', NULL, NULL, 1, NULL, '2022-02-21 09:36:15', '2022-03-02 06:50:33'),
(111, 21, 111, 'Mehedi hasan Monir', 'Monir@fashol.com', '01613347102', NULL, '$2y$10$osoZMu5v/pmsVtU1GRQBY.xp/MQaC7zirIPXSCFktApH7K5jo4i/O', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_01613347102.jpg', NULL, NULL, 1, NULL, '2022-02-27 12:09:35', '2022-09-10 09:10:37'),
(112, 54, 72, 'Sohel', 'allansohel4040@gmail.com', '01810187194', NULL, '$2y$10$H2ccR12mH/Nx/Dgab76JT.gd6gxqRKaLQwyc2iKTtaPq1aOInpnQG', 'Dhaka', NULL, 'Mirpur 2', 'Dhaka', 'user_OjqMmPP68B18_Feb_18_25.jpg', NULL, NULL, 1, NULL, '2022-02-27 18:56:25', '2022-02-27 18:59:42'),
(113, 21, 96, 'Abid hasan', 'Abid@fashol.com', '01791017255', NULL, '$2y$10$MDd7JwAkm.CeBDZpUjkF/OO23CV5FgtTMoeF/K/4rXL2sDFqOkWsW', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_GSKnzwl1Aj16_Mar_16_53.jpg', NULL, NULL, 1, NULL, '2022-03-03 16:54:53', '2022-09-09 11:25:28'),
(114, 21, 114, 'Saker Sadi', 'Sadi@fashol.com', '01940617400', NULL, '$2y$10$ZSOqtP1DGGb.QKaH2vZDKuXrM.n.WoCHCTW8vnmj2dCaPMo7z.3vu', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_01940617400.jpg', NULL, NULL, 1, NULL, '2022-03-04 01:06:38', '2022-09-09 22:07:14'),
(115, 51, 96, 'Emon Hossain', 'polash@gmail.com', '01810187199', NULL, '$2y$10$5OiNQiKwPvok282jvbT1sehaMEjKQ6ujys.v.i8JJNa4/7PdbpHY2', 'Bosila Bazzar ,Dhaka', 'Bosila Bazzar ,Dhaka', 'Bosila Bazzar ,Dhaka', 'Bosila Bazzar ,Dhaka', 'user_Tw9scQaNC016_Mar_16_25.jpg', NULL, NULL, 1, NULL, '2022-03-07 16:53:25', '2022-07-01 21:24:18'),
(116, 65, 76, 'Pollob chandra', 'Pollobchandar56@gmail.com', '01870403579', NULL, '$2y$10$kHgfXI5xpTnDDmvt2FMDJe0PnpYvFalYVPhGqn2IC7f.8/LYnv2Im', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_vSJJrI3X2g02_Mar_02_49.jpg', NULL, NULL, 1, NULL, '2022-03-08 02:59:49', '2022-03-14 05:09:49'),
(117, 15, 3, 'Arman', 'arman@fashol.com', '01810187200', NULL, '$2y$10$Mchz0k/zlNjr/XzatChZh.o/c8C2j/2FoCRMY0LFZb4NXK5yohNge', 'Agargaon', 'Agargaon', 'Agargaon', 'Agargaon', 'user_91HFJxyZmg15_Mar_15_17.jpg', NULL, NULL, 0, NULL, '2022-03-08 15:56:17', '2022-08-14 18:27:45'),
(118, 21, 96, 'Polok Mahmud', 'Polok@Fashol.com', '01773101117', NULL, '$2y$10$9rkA4kRKl87PlMNWx..ttO6oL18OJR2/PEbQPDVKsTDEOhs4K8pPy', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_hsmGaGJRCv16_Mar_16_37.jpg', NULL, NULL, 1, NULL, '2022-03-08 16:32:37', '2022-08-24 23:22:58'),
(120, 1, 26, 'Sakib Hossain', 'sakib@fashol.com', '01799390384', NULL, '$2y$10$m1tRUH94jeYsVrLMJ0y9NemSS/XzLsOaqPVynRcCzsZ22LGJyrlGe', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_SkcACVaFgm16_Mar_16_34.jpg', NULL, NULL, 1, NULL, '2022-03-09 16:32:34', '2022-09-08 18:08:48'),
(121, 38, 118, 'Mehedi\'s Care', 'mehediscare@fashol.com.bd', '01810187197', '927278', '$2y$10$YiWuhdv20ujcC6dYbItWfO/oqQFrHmLuLpR0AKEO928DaGXRbYSrm', 'Dhaka', 'Dhaka', 'Taltola', 'Dhaka', 'user_Q9iPHVDSPx16_Mar_16_17.jpg', NULL, NULL, 0, NULL, '2022-03-10 16:01:17', '2022-08-17 19:42:29'),
(122, 20, 72, 'Mir Sumaiya', 'sumaiya@fashol.com', '01810187204', NULL, '$2y$10$mpIMulFvT/g9BU5sQl5BC.QZtRgVywyKjdAttJvYag9iwZt1XUtNi', 'Mohammdpur', 'Mohammdpur', 'Mohammadpur', 'Dhaka', 'user_iQ65W29ZSD17_Mar_17_59.jpg', NULL, NULL, 0, NULL, '2022-03-21 17:30:59', '2022-08-14 18:27:23'),
(123, 6, 72, 'Yasin', 'yasin@gmail.com', '01797365053', NULL, '$2y$10$hGLh5EURpJF.nniJiDu6BeiR59BcP1n/3ZYTr8og1Imv7dAyhK2LG', 'Dhaka', 'Dhaka', 'Mirpur 2', 'Dhaka', 'user_fhcBQZVRvc14_Mar_14_15.jpg', NULL, NULL, 0, NULL, '2022-03-28 14:01:15', '2022-08-20 23:12:23'),
(124, 1, 72, 'Aniya', 'aniya@gmail.com', '01955990670', NULL, '$2y$10$r3J97skv2LlWKnjZRcZBc.P8k3hGz8uXuMcGbJYHUf8zQPrco/1PG', 'Dhaka', 'Dhaka', 'Cantonment', 'Dhaka', 'user_h49S5qogMm16_Mar_16_57.jpg', NULL, NULL, 0, NULL, '2022-03-28 16:05:57', '2022-06-24 23:07:32'),
(125, 21, 96, 'Md. Fazle Elahi', 'Elahi@fashol.com', '01704169786', '490507', '$2y$10$CZqWCZiZx82QelF1vgrKO.MgWGEbWP6/d8rn5eEZPXAB44yU3ix4G', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_L1qdzJngm021_Apr_21_33.jpg', NULL, NULL, 0, NULL, '2022-04-02 21:04:33', '2022-08-14 18:18:34'),
(126, 8, 118, 'Md Shohel', 'MdShohel@fashol.com', '01810187221', NULL, '$2y$10$2DhcGsS.2cdKaa2U3ONARuPe.1sYN5GvD2L9kSiGfVHWxiY94CEdy', 'Dhaka', 'Dhaka', 'Polashi', 'Dhaka', 'user_08T2YOfGtt14_Apr_14_48.jpg', NULL, NULL, 1, NULL, '2022-04-04 14:52:48', '2022-07-03 21:03:39'),
(127, 21, 96, 'Aminur raham', 'Aminur@fashol.com', '01670309130', NULL, '$2y$10$ANLqTnDtSephPznnVGQtiuMKTGP8YKBL/0Ec4Eb7v7gt6.RJYrlG6', 'Dhaka', NULL, 'Dhaka', 'Dhaka', 'user_GLcZ2DqdH015_Apr_15_32.jpg', NULL, NULL, 1, NULL, '2022-04-04 15:40:32', '2022-05-16 11:26:45'),
(128, 6, 96, 'Shibli Sadik Anik', 'Anik@fashol.com', '01401708539', NULL, '$2y$10$tnKHXUCicqh2YsJ31njlk.VssatwNES7jwYuH11DDA0hTeFdTpXWG', 'Mirpur 1, Dhaka', 'Mirpur 1, Dhaka', 'Mirpur 1, Dhaka', 'Mirpur 1, Dhaka', 'user_2ShATOhfW714_Apr_14_58.jpg', NULL, NULL, 1, NULL, '2022-04-12 14:20:58', '2022-04-12 15:18:28'),
(129, 6, 96, 'Sumon Hossain', 'Sumon@ashol.com', '01972066242', NULL, '$2y$10$C2aVTDtZa7lCzcWHYGWOLOjcPDEvy41ROpvmArmufS0n6TWgNC3Xe', 'Mirpur 1, Dhaka', 'Mirpur 1, Dhaka', 'Mirpur 1, Dhaka', 'Mirpur 1, Dhaka', 'user_woiupoXpMi14_Apr_14_37.jpg', NULL, NULL, 1, NULL, '2022-04-12 14:23:37', '2022-04-12 23:05:32'),
(130, 6, 96, 'Noman Faysal', 'NomanFaysal@fashol.com', '01967318743', NULL, '$2y$10$nKXNDSjQwhzjh4/3wgXrueO46S8orHiXexIZs/Di9ADiJE3q7NLEe', 'Mirpur 11, Dhaka', 'Mirpur 11, Dhaka', 'Mirpur 11, Dhaka', 'Mirpur 11, Dhaka', 'user_yzRBLbeFfL14_Apr_14_58.jpg', NULL, NULL, 1, NULL, '2022-04-12 14:28:58', '2022-06-03 22:07:58'),
(131, 6, 96, 'Md Imran Ali', 'Imran@Fashal.com', '01810187213', NULL, '$2y$10$kZ5xIdSJ1TYL6vp0O/oBw.s9WYv9Z8gd3xV2BagQX6b6itS.sP0Oe', 'Mirpur 6', 'Mirpur 6', 'Mirpur 6', 'Mirpur 6', 'user_IsfZNhaOtA14_Apr_14_32.jpg', NULL, NULL, 1, NULL, '2022-04-12 14:32:32', '2022-08-06 20:54:07'),
(132, 54, 96, 'FA Kabita', 'Kabita@fashal.com', '01402579315', NULL, '$2y$10$zQc086P6EPsSYEotBj9PFOQuSL/9vqFNqYbR1D9ebZ8bLHtHWLLmm', 'Mirpur 2 Dhaka', 'Mirpur 2 Dhaka', 'Mirpur 2 Dhaka', 'Mirpur 2 Dhaka', 'user_qMYn2dYM6M14_Apr_14_11.jpg', NULL, NULL, 0, NULL, '2022-04-12 14:40:11', '2022-08-14 18:26:38'),
(133, 9, 96, 'Diganta Ahamed', 'nawuahmed@gmail.com', '01715499555', '738891', '$2y$10$6yirtuue9ckeUEIPkODTrO9NQx2B3yN2JMkMImybk6hrJuN.ME8IG', 'Madbar Bari, Baunia, Uttara', 'Tungi Para, Gopalganj, Faridpur', 'Banani', 'Dhaka', 'user_BxULnId2pd17_Apr_17_54.jpg', NULL, NULL, 0, NULL, '2022-04-12 17:12:54', '2022-08-14 18:26:21'),
(134, 21, 134, 'Farzan Hafiz', 'hafiz.fashol@gmail.com', '01884556286', NULL, '$2y$10$Z.O1qbbJaTpTPQvZE5/Fve3pC4waJco7AWaMXbmxNggd..GsLzYYq', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_3lQygWWutb17_Apr_17_12.jpg', NULL, NULL, 1, NULL, '2022-04-12 17:51:12', '2022-09-09 16:05:29'),
(135, 69, 118, 'Rejoana Oronno', 'oronnofasholdotcom@gmail.com', '01624045624', NULL, '$2y$10$loYn7mBYb2DEA4nRYKp3ceIlt1faIKq7LlYE38GdzFagEGdx6ycSS', 'Lalbag,Dhaka', 'Lalbag,Dhaka', 'Lalbag', 'Dhaka', 'user_RXskZRhZvB19_Apr_19_18.jpg', NULL, NULL, 1, NULL, '2022-04-12 19:17:18', '2022-04-16 14:21:21'),
(136, 20, 118, 'EMON HOSSAIN', 'emonfasholdotcom@gmail.om', '01956101889', '159986', '$2y$10$vRZ6qCTVgVKQOTUYNgb0wubqgvCqUFYcmXtyPWN.h15ldC813QNUW', 'Mohammadpur,Dhaka', 'Mohammadpur,Dhaka', 'Mohammadpur', 'Dhaka', 'user_vQ0cbRzvLx19_Apr_19_14.jpg', NULL, NULL, 0, NULL, '2022-04-12 19:21:14', '2022-08-14 18:26:53'),
(137, 8, 96, 'Anisur Rahman', 'anisurfasholdotcom@gmail.com', '01810094170', NULL, '$2y$10$/VbLaPMrLU9bwk4tJlSAzerZ0WoRCcoYbPFqArIS4tu/ruwy5k8Ou', 'Mugdha,Dhaka', 'Mugdha,Dhaka', 'Polasi', 'Dhaka', 'user_ByFjzw7waB19_Apr_19_24.jpg', NULL, NULL, 1, NULL, '2022-04-12 19:27:25', '2022-09-07 18:27:31'),
(138, 71, 96, 'Sabbir ahmed joy', 'Joy@fashol.com', '01821343372', NULL, '$2y$10$73cQBD3IbpuMDId4i960r.OkApwebpFwb20.yjG3DS4oQ8u9pM5dC', 'Anondo bazar , Bangsal, Dhaka', 'Anondo bazar , Bangsal, Dhaka', 'Anondo bazar , Bangsal, Dhaka', 'Anondo bazar , Bangsal, Dhaka', 'user_ej8nh6ObW015_Apr_15_19.jpg', NULL, NULL, 1, NULL, '2022-04-21 15:32:19', '2022-04-21 16:54:16'),
(139, 47, 96, 'Niaduzzaman Antor', 'Antor@fashol.com', '01318968460', NULL, '$2y$10$FjmKNZKYMUrcXUYZUHpgZOZaDAnVQTSj9qm93PDyapkqGf75rpZ/a', 'Shantinagar , Dhaka', 'Shantinagar , Dhaka', 'Shantinagar , Dhaka', 'Shantinagar , Dhaka', 'user_qWxIGsjEHj15_Apr_15_30.jpg', NULL, NULL, 1, NULL, '2022-04-26 15:38:30', '2022-04-27 03:14:47'),
(140, 21, 96, 'Naeem (Test)', 'Naeem@fashol.com.bd', '01789450115', NULL, '$2y$10$XgyuGdg.y1YwJoQeANiha.Wtx.ER3yBlrvJ2QmNyinJHzLvTs6Q6O', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_U9CuHPb88x20_May_20_38.jpg', NULL, NULL, 1, NULL, '2022-05-09 20:25:38', '2022-05-15 21:58:42'),
(141, 1, 26, 'Application', 'mobileapplication@gmail.com', '01311111111', NULL, '$2y$10$eQ7SfINMpEx.8z3DNnBCiu1tgvT6bQMvKsi/FnVYnhUDCp1rd6B3W', 'HQ', 'HQ', 'All Zone', 'All City', 'user_qAXfWo43qC19_May_19_45.png', NULL, NULL, 1, NULL, '2022-05-10 19:39:45', '2022-05-10 19:39:51'),
(142, 1, 96, 'Md AbuSaleh Musa Khan', 'Musa@fashol.com', '01711112626', NULL, '$2y$10$JAAkzFYf52kVo9G.mDF3ruTbgkdKnPqP3ooW6b2WNUKO0.F3xP9JK', 'Dhaka', 'Dhaka', 'HQ', 'Dhaka', 'user_ymwrqrfpdf17_May_17_24.jpg', NULL, NULL, 0, NULL, '2022-05-11 17:23:24', '2022-08-25 22:47:04'),
(143, 21, 96, 'Towkir Imam', 'Towkir@fashol.com', '01773239162', NULL, '$2y$10$yKokbvRFRMRRX1EyJMXXn.9hRgIRAaAdjhSPOkrvXfZCziA1M11Iq', 'Dhaka', 'Dhaka', 'Hq', 'Dhaka', 'user_oZ4yZlOfdP18_May_18_23.png', NULL, NULL, 0, NULL, '2022-05-23 18:53:23', '2022-08-28 10:45:27'),
(144, 11, 96, 'Siyam', 'siyam@fashol.com', '01985436378', NULL, '$2y$10$3RQK25uB.1arbI4sGWTFl.MJqQOS4ieZ7Mdaxbpw0ody29sf.MC4O', 'Plot #88,Water work Road,Posta,Lalbag', NULL, 'Mirpur 10', 'Dhaka', 'user_DDiKxCeuXT14_May_14_52.png', NULL, NULL, 1, NULL, '2022-05-24 14:55:52', '2022-08-20 16:33:48'),
(145, 23, 118, 'Kawsar Ahmed Rakib', 'Rakib@fashol.com.bd', '01925541181', NULL, '$2y$10$9A1WuJHSdF1Lo6uZmSDXuOQV93gHzPeLCx3AGEPIVD2eshv5eibCC', 'Mohakhali', 'Mohakhali', 'Mohakhali', 'Mohakhali', 'user_vRppLyjzBf17_Jul_17_11.jpg', NULL, NULL, 1, NULL, '2022-07-27 17:27:11', '2022-09-09 23:45:34'),
(146, 39, 96, 'Md Nahid Ahmed', 'Nahid@fashol.com.bd', '01609725512', NULL, '$2y$10$FJWU3Hwp5wc3Nks6ImzQF.OuYfTE/Z0RPsp0eQqIAQeFz6v0ZrR8i', 'Kamlapur, Dhaka', 'Kamlapur, Dhaka', 'Mugda Borobazar', 'Kamlapur, Dhaka', 'user_GJ8GnvmSCp17_Jul_17_23.jpg', NULL, NULL, 1, NULL, '2022-07-27 17:59:23', '2022-07-27 19:43:12'),
(147, 1, 96, 'Mohaiminul Islam', 'Mohaimin@fashol.com', '01810187209', NULL, '$2y$10$1nPfSwYPdM9OYlY8f/eMFujuioiW0EAsCfAPhvW7ok1Z690zvrPSS', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_BUIKUuS2ro17_Jul_17_29.jpg', NULL, NULL, 1, NULL, '2022-07-28 17:07:29', '2022-07-28 17:08:28'),
(148, 73, 96, 'Md. Arifur rahman', 'Arifur@fashol.com', '01998337262', NULL, '$2y$10$NxythfwkezOWBRroNreX5.fn/R2W0vXdekCsjKJd5jj6AI8/orVaW', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_xTAfmkYyvI11_Aug_11_57.jpg', NULL, NULL, 1, NULL, '2022-08-02 11:16:57', '2022-08-23 11:38:25'),
(149, 73, 96, 'Md Imran', 'Imran@Fashal.com.bd', '01732972887', NULL, '$2y$10$nia/Cso4zuggmXUVQNk1h.RStQWJXNVAlj9yapFaLJftGTBvORfOq', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_XVd8w5WXfO13_Aug_13_47.jpg', NULL, NULL, 1, NULL, '2022-08-02 13:36:47', '2022-09-05 16:41:35'),
(150, 73, 96, 'Md. Tawhidul Islam Pabel', 'Pabel@fashol.com', '01677309070', NULL, '$2y$10$jheAgImvtV5VBdQQrtIlL./U.q8SY1jBsVzw4Yzo5LdeUoW0iPR7K', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_JbKfRkmONN13_Aug_13_46.jpg', NULL, NULL, 1, NULL, '2022-08-02 13:38:46', '2022-08-02 13:55:58'),
(151, 21, 96, 'Aminul Islam', 'Aminul@fashol.com', '01674939886', NULL, '$2y$10$X6gmntlssayCOTO3t4cDIu0lGwZkJ7N2yubJ6JEskoyYnj8wcr3OO', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_FodoZ61i8y12_Aug_12_37.jpg', NULL, NULL, 1, NULL, '2022-08-07 12:27:37', '2022-08-07 12:30:35'),
(152, 6, 96, 'MD NAHID HASAN', 'Nahid@fashol.com', '01731506748', NULL, '$2y$10$7DpXt24d5c.56eu7QPrHNuW6kQ5acl0gywG4qIRL/ctrFc5YelnRq', 'Mirpur 1, Dhaka', 'Mirpur 1, Dhaka', 'Mirpur 1, Dhaka', 'Mirpur 1, Dhaka', 'user_vu48AGw4Nr17_Aug_17_31.jpg', NULL, NULL, 1, NULL, '2022-08-10 17:38:31', '2022-08-10 17:54:02'),
(153, 38, 96, 'Rashed khan', 'Rashed@fashol.com', '01313899035', NULL, '$2y$10$6.u7lloBodjRaXbJos4a7exXdX/FXMHoBJhlBrFzTjTeHcFNFfF0a', 'Khilgaon,Dhaka', 'Khilgaon,Dhaka', 'Khilgaon', 'Khilgaon,Dhaka', 'user_pycXPMACg419_Aug_19_13.jpg', NULL, NULL, 1, NULL, '2022-08-17 19:09:13', '2022-09-06 19:16:02'),
(154, 21, 96, 'Ash Rokon', 'Rokon@fashol.com', '01765556602', NULL, '$2y$10$mYyg8VBki/JOT7UFpYjgHuvZkOtXh0RhNEuUDSE6LlGeYd833b5Da', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_JG9GzMTZtg18_Aug_18_59.jpg', NULL, NULL, 1, NULL, '2022-08-20 18:46:59', '2022-08-20 18:47:07'),
(155, 21, 76, 'Raj Ahmed', 'Raj@fashol.com', '01307544390', NULL, '$2y$10$s8y.T/ayFjVV/BjHW5KEdudx3MfXKibo33lGgpbIG4kXKg7a3YJCe', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_j8dOFBkw5918_Aug_18_48.jpg', NULL, NULL, 1, NULL, '2022-08-20 18:48:48', '2022-08-21 02:55:10'),
(156, 21, 96, 'Ahsan Habib Sakib', 'ahsanhsakib991@gmail.com', '01677776699', NULL, '$2y$10$ehiwsl2z.jAc.vMMt2wZBuA0fSHrO/.SEUVXtGkR.cj0TVc4pBfhC', '615/1 North Kafrul Dhaka', '615/1 North Kafrul Dhaka', 'Kabbokash, Kawran Bazar', 'Dhaka', 'user_f6avIOCUmX13_Aug_13_55.jpg', NULL, NULL, 1, NULL, '2022-08-21 13:07:55', '2022-08-24 11:04:02'),
(157, 73, 96, 'Tanvir', 'Tanvir@fashol.com', '01912298589', NULL, '$2y$10$nUH2SdkP3fq3h0lzqws1WeA2QNQmIap6yRH2oReR80/ZN.M28BJLi', 'kuchukhet, Dhaka', 'kuchukhet, Dhaka', 'kuchukhet, Dhaka', 'kuchukhet, Dhaka', 'user_tR3whUweVX11_Sep_11_10.jpg', NULL, NULL, 1, NULL, '2022-09-04 11:52:10', '2022-09-04 11:52:30'),
(158, 11, 96, 'MD.Yakub Ali', 'Yakub@fashol.com', '01706319722', NULL, '$2y$10$CbFIubvzUGwphvPs54YLku0SW7XbdaBM2jmSz1i6qb4/stFKNaDoq', 'Mohakhali  Kacha Bazar, Dhaka', NULL, 'Mohakhali  Kacha Bazar', 'Dhaka', 'user_kf3EbZHj1c13_Sep_13_02.jpg', NULL, NULL, 1, NULL, '2022-09-05 13:00:02', '2022-09-05 19:06:51'),
(159, 74, 96, 'Tanmay Baray', 'Tanmay@fashol.com', '01688375266', NULL, '$2y$10$77S0mf7bSlGDaMcqG3ozRuuSbjpgyI2cl0gelhhhULL9P9a89zDQO', 'Vashantek , Dhaka', NULL, 'Vashantek', 'Dhaka', 'user_CyM80l0jNH13_Sep_13_05.jpg', NULL, NULL, 1, NULL, '2022-09-05 13:04:05', '2022-09-05 21:01:32'),
(160, 21, 42, 'Nasir_CoS', 'nasir@fashol.com', '01810094194', NULL, '$2y$10$JSqRWyZuz4E5cs5Ffz8.HevklcbxTT9X4Hu.hSH3rtuFS/uugG1Le', 'Dhaka', 'Dhaka', 'Dhaka', 'Dhaka', 'user_8zBMmgOiWV15_Sep_15_24.jpg', NULL, NULL, 1, NULL, '2022-09-08 15:18:24', '2022-09-08 15:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `name`, `class`, `created_at`, `updated_at`) VALUES
(1, '???????????? HB ?????????', 'tagify__tag tagify__tag--primary', '2021-09-04 20:57:28', '2021-09-04 20:57:28'),
(2, '???????????? HB ??????????????????', 'tagify__tag tagify__tag--dark', '2021-09-04 20:57:28', '2021-09-04 20:57:28'),
(3, '???????????? HB ???????????? ???????????????', 'tagify__tag tagify__tag--dark', '2021-09-04 20:57:28', '2021-09-04 20:57:28'),
(4, '???????????? EX', 'tagify__tag tagify__tag--success', '2021-09-04 20:57:28', '2021-09-04 20:57:28'),
(5, '?????????', 'tagify__tag tagify__tag--success', '2021-09-04 20:57:28', '2021-09-04 20:57:28'),
(6, '???????????????', 'tagify__tag tagify__tag--info', '2021-09-04 20:58:54', '2021-09-04 20:58:54'),
(7, '????????????', 'tagify__tag tagify__tag--dark', '2021-09-04 21:00:06', '2021-09-04 21:00:06'),
(8, '??????????????? HB', 'tagify__tag tagify__tag--info', '2021-09-04 21:00:06', '2021-09-04 21:00:06'),
(9, 'EX', 'tagify__tag tagify__tag--success', '2021-09-04 21:00:06', '2021-09-04 21:00:06'),
(10, '???????????? ?????????', 'tagify__tag tagify__tag--primary', '2021-09-04 21:02:08', '2021-09-04 21:02:08'),
(11, '???????????? ??????', 'tagify__tag tagify__tag--primary', '2021-09-04 21:02:08', '2021-09-04 21:02:08'),
(12, '???????????? ??????', 'tagify__tag tagify__tag--primary', '2021-09-04 21:02:08', '2021-09-04 21:02:08'),
(13, '???????????? MD', 'tagify__tag tagify__tag--danger', '2021-09-04 21:02:08', '2021-09-04 21:02:08'),
(14, '????????? ????????????', 'tagify__tag tagify__tag--info', '2021-09-04 21:02:08', '2021-09-04 21:02:08'),
(15, '???????????? EX', 'tagify__tag tagify__tag--info', '2021-09-04 21:02:08', '2021-09-04 21:02:08'),
(16, '???????????? ????????? ????????????', 'tagify__tag tagify__tag--dark', '2021-09-04 21:29:14', '2021-09-04 21:29:14'),
(17, '???????????? ????????? ???????????? ex', 'tagify__tag tagify__tag--primary', '2021-09-04 21:29:14', '2021-09-04 21:29:14'),
(18, '???????????? ex', 'tagify__tag tagify__tag--primary', '2021-09-04 21:29:14', '2021-09-04 21:29:14'),
(19, '?????????????????? A', 'tagify__tag tagify__tag--danger', '2021-09-04 21:29:14', '2021-09-04 21:29:14'),
(20, '?????????????????? B', 'tagify__tag tagify__tag--dark', '2021-09-04 21:29:14', '2021-09-04 21:29:14'),
(21, '?????????????????? ex', 'tagify__tag tagify__tag--success', '2021-09-04 21:29:14', '2021-09-04 21:29:14'),
(22, '??????????????? ???????????????', 'tagify__tag tagify__tag--info', '2021-09-04 21:29:14', '2021-09-04 21:29:14'),
(23, '??????????????? ex', 'tagify__tag tagify__tag--warning', '2021-09-04 21:29:14', '2021-09-04 21:29:14'),
(24, '??????????????? ???????????????', 'tagify__tag tagify__tag--success', '2021-09-04 21:29:14', '2021-09-04 21:29:14'),
(25, '??????????????????????????? ????????????', 'tagify__tag tagify__tag--danger', '2021-09-04 21:29:14', '2021-09-04 21:29:14'),
(26, '????????????????????? A', 'tagify__tag tagify__tag--info', '2021-09-04 21:29:14', '2021-09-04 21:29:14'),
(27, '????????????????????? B', 'tagify__tag tagify__tag--info', '2021-09-04 21:29:14', '2021-09-04 21:29:14'),
(28, '????????????????????? ex', 'tagify__tag tagify__tag--success', '2021-09-04 21:29:14', '2021-09-04 21:29:14'),
(29, '???????????? ???????????????????????????', 'tagify__tag tagify__tag--primary', '2021-09-04 23:01:17', '2021-09-04 23:01:17'),
(30, '????????????', 'tagify__tag tagify__tag--warning', '2021-09-04 23:01:17', '2021-09-04 23:01:17'),
(31, 'ex', 'tagify__tag tagify__tag--dark', '2021-09-04 23:01:17', '2021-09-04 23:01:17'),
(32, '.', 'tagify__tag tagify__tag--success', '2021-09-04 23:02:45', '2021-09-04 23:02:45'),
(33, '?????? ????????????', 'tagify__tag tagify__tag--dark', '2021-09-04 23:05:36', '2021-09-04 23:05:36'),
(34, 'HB ex', 'tagify__tag tagify__tag--success', '2021-09-04 23:05:36', '2021-09-04 23:05:36'),
(35, 'HB', 'tagify__tag tagify__tag--primary', '2021-09-04 23:05:36', '2021-09-04 23:05:36'),
(36, '.', 'tagify__tag tagify__tag--warning', '2021-09-04 23:08:25', '2021-09-04 23:08:25'),
(37, '?????? ????????????', 'tagify__tag tagify__tag--success', '2021-09-04 23:25:01', '2021-09-04 23:25:01'),
(38, '?????? ex', 'tagify__tag tagify__tag--dark', '2021-09-04 23:25:01', '2021-09-04 23:25:01'),
(39, '???????????? ??????', 'tagify__tag tagify__tag--warning', '2021-09-04 23:41:34', '2021-09-04 23:41:34'),
(40, '???????????? MD', 'tagify__tag tagify__tag--primary', '2021-09-04 23:41:34', '2021-09-04 23:41:34'),
(41, '???????????? ex', 'tagify__tag tagify__tag--danger', '2021-09-04 23:41:34', '2021-09-04 23:41:34'),
(42, '???????????? A', 'tagify__tag tagify__tag--primary', '2021-09-04 23:41:34', '2021-09-04 23:41:34'),
(43, '???????????? B', 'tagify__tag tagify__tag--success', '2021-09-04 23:41:34', '2021-09-04 23:41:34'),
(44, '???????????? ex', 'tagify__tag tagify__tag--success', '2021-09-04 23:41:34', '2021-09-04 23:41:34'),
(45, '????????? ??????', 'tagify__tag tagify__tag--dark', '2021-09-04 23:41:34', '2021-09-04 23:41:34'),
(46, '????????? MD', 'tagify__tag tagify__tag--primary', '2021-09-04 23:41:34', '2021-09-04 23:41:34'),
(47, '????????? ex', 'tagify__tag tagify__tag--primary', '2021-09-04 23:41:34', '2021-09-04 23:41:34'),
(48, '?????? ???????????????', 'tagify__tag tagify__tag--info', '2021-09-04 23:43:32', '2021-09-04 23:43:32'),
(49, '???????????? ????????? ??????', 'tagify__tag tagify__tag--success', '2021-09-05 07:49:05', '2021-09-05 07:49:05'),
(50, '???????????? ????????? MD', 'tagify__tag tagify__tag--primary', '2021-09-05 07:49:05', '2021-09-05 07:49:05'),
(51, '???????????? ????????? ex', 'tagify__tag tagify__tag--dark', '2021-09-05 07:49:05', '2021-09-05 07:49:05'),
(52, '???????????? ???????????????', 'tagify__tag tagify__tag--warning', '2021-09-05 07:49:05', '2021-09-05 07:49:05'),
(53, '???????????? ??????????????? ex', 'tagify__tag tagify__tag--primary', '2021-09-05 07:49:05', '2021-09-05 07:49:05'),
(54, '???????????? ???????????????', 'tagify__tag tagify__tag--dark', '2021-09-05 07:49:05', '2021-09-05 07:49:05'),
(55, '???????????? ??????????????? ex', 'tagify__tag tagify__tag--primary', '2021-09-05 07:49:05', '2021-09-05 07:49:05'),
(56, '?????????????????? A', 'tagify__tag tagify__tag--success', '2021-09-05 07:49:05', '2021-09-05 07:49:05'),
(57, '?????????????????? B', 'tagify__tag tagify__tag--dark', '2021-09-05 07:49:05', '2021-09-05 07:49:05'),
(58, 'A Grade', 'tagify__tag tagify__tag--warning', '2021-09-05 07:50:21', '2021-09-05 07:50:21'),
(59, '???????????????', 'tagify__tag tagify__tag--warning', '2021-09-05 07:50:21', '2021-09-05 07:50:21'),
(60, 'ex', 'tagify__tag tagify__tag--primary', '2021-09-05 07:50:21', '2021-09-05 07:50:21'),
(61, '??????????????????', 'tagify__tag tagify__tag--success', '2021-09-05 07:50:21', '2021-09-05 07:50:21'),
(62, '?????????????????? ?????????', 'tagify__tag tagify__tag--dark', '2021-09-05 07:52:15', '2021-09-05 07:52:15'),
(63, 'HB ????????? MD', 'tagify__tag tagify__tag--info', '2021-09-05 07:52:15', '2021-09-05 07:52:15'),
(64, 'HB ????????? ????????????', 'tagify__tag tagify__tag--info', '2021-09-05 07:52:15', '2021-09-05 07:52:15'),
(65, 'HB ????????? Hotel', 'tagify__tag tagify__tag--success', '2021-09-05 07:52:15', '2021-09-05 07:52:15'),
(66, 'HB ????????? ex', 'tagify__tag tagify__tag--success', '2021-09-05 07:52:15', '2021-09-05 07:52:15'),
(67, '???????????? ???????????? ????????????', 'tagify__tag tagify__tag--warning', '2021-09-05 07:52:15', '2021-09-05 07:52:15'),
(68, '???????????? ex', 'tagify__tag tagify__tag--dark', '2021-09-05 07:52:15', '2021-09-05 07:52:15'),
(69, '????????????', 'tagify__tag tagify__tag--success', '2021-09-05 07:53:08', '2021-09-05 07:53:08'),
(70, '????????????', 'tagify__tag tagify__tag--warning', '2021-09-05 07:53:08', '2021-09-05 07:53:08'),
(71, 'ex', 'tagify__tag tagify__tag--info', '2021-09-05 07:53:08', '2021-09-05 07:53:08'),
(72, '???????????????', 'tagify__tag tagify__tag--primary', '2021-09-05 07:54:05', '2021-09-05 07:54:05'),
(73, 'B', 'tagify__tag tagify__tag--danger', '2021-09-05 07:54:05', '2021-09-05 07:54:05'),
(74, 'ex', 'tagify__tag tagify__tag--primary', '2021-09-05 07:54:05', '2021-09-05 07:54:05'),
(75, '?????? ????????????', 'tagify__tag tagify__tag--dark', '2021-09-05 10:28:47', '2021-09-05 10:28:47'),
(76, '?????????????????? ????????????', 'tagify__tag tagify__tag--success', '2021-09-05 10:28:47', '2021-09-05 10:28:47'),
(77, '????????? ???????????? ex', 'tagify__tag tagify__tag--primary', '2021-09-05 10:28:47', '2021-09-05 10:28:47'),
(78, '????????? ????????????', 'tagify__tag tagify__tag--success', '2021-09-05 10:29:43', '2021-09-05 10:29:43'),
(79, '?????? ????????????', 'tagify__tag tagify__tag--info', '2021-09-05 10:29:43', '2021-09-05 10:29:43'),
(80, 'ex', 'tagify__tag tagify__tag--success', '2021-09-05 10:29:43', '2021-09-05 10:29:43'),
(81, 'ex', 'tagify__tag tagify__tag--primary', '2021-09-05 10:30:41', '2021-09-05 10:30:41'),
(82, '?????????????????????', 'tagify__tag tagify__tag--warning', '2021-09-05 10:30:41', '2021-09-05 10:30:41'),
(83, '???????????? ??????', 'tagify__tag tagify__tag--success', '2021-09-05 10:31:48', '2021-09-05 10:31:48'),
(84, '???????????? ????????????', 'tagify__tag tagify__tag--warning', '2021-09-05 10:31:48', '2021-09-05 10:31:48'),
(85, '???????????? ??????????????????', 'tagify__tag tagify__tag--dark', '2021-09-05 10:49:11', '2021-09-05 10:49:11'),
(86, '???????????? ex', 'tagify__tag tagify__tag--info', '2021-09-05 10:49:11', '2021-09-05 10:49:11'),
(87, '?????????????????? ????????????????????? ????????????', 'tagify__tag tagify__tag--primary', '2021-09-05 10:49:11', '2021-09-05 10:49:11'),
(88, '?????????????????? ????????????????????? ex', 'tagify__tag tagify__tag--primary', '2021-09-05 10:49:11', '2021-09-05 10:49:11'),
(89, '???????????? ?????? ?????????????????????', 'tagify__tag tagify__tag--primary', '2021-09-05 10:49:11', '2021-09-05 10:49:11'),
(90, '?????? ????????????????????? ex', 'tagify__tag tagify__tag--success', '2021-09-05 10:49:11', '2021-09-05 10:49:11'),
(91, '????????????????????? comilla', 'tagify__tag tagify__tag--primary', '2021-09-05 10:49:11', '2021-09-05 10:49:11'),
(92, '????????????????????? ???????????????????????? B', 'tagify__tag tagify__tag--primary', '2021-09-05 10:49:11', '2021-09-05 10:49:11'),
(93, '??????????????????????????? ?????????????????????', 'tagify__tag tagify__tag--primary', '2021-09-05 10:49:11', '2021-09-05 10:49:11'),
(94, '???????????? ?????? ?????????', 'tagify__tag tagify__tag--dark', '2021-09-05 10:49:11', '2021-09-05 10:49:11'),
(95, '???????????? ??????', 'tagify__tag tagify__tag--dark', '2021-09-05 10:49:11', '2021-09-05 10:49:11'),
(96, '?????????????????? ??????????????? ????????? VIP', 'tagify__tag tagify__tag--primary', '2021-09-05 10:49:11', '2021-09-05 10:49:11'),
(97, '?????????????????? ??????????????? A Grade', 'tagify__tag tagify__tag--success', '2021-09-05 10:49:11', '2021-09-05 10:49:11'),
(98, '???????????????????????????', 'tagify__tag tagify__tag--primary', '2021-09-05 10:49:11', '2021-09-05 10:49:11'),
(99, '???????????? ??????????????????', 'tagify__tag tagify__tag--info', '2021-09-05 11:30:43', '2021-09-05 11:30:43'),
(100, '???????????? ex', 'tagify__tag tagify__tag--danger', '2021-09-05 11:30:43', '2021-09-05 11:30:43'),
(101, '?????????????????? ????????????????????? ????????????', 'tagify__tag tagify__tag--success', '2021-09-05 11:30:43', '2021-09-05 11:30:43'),
(102, '?????????????????? ????????????????????? ex', 'tagify__tag tagify__tag--primary', '2021-09-05 11:30:43', '2021-09-05 11:30:43'),
(103, '???????????? ?????? ?????????????????????', 'tagify__tag tagify__tag--info', '2021-09-05 11:30:43', '2021-09-05 11:30:43'),
(104, '?????? ????????????????????? ex', 'tagify__tag tagify__tag--success', '2021-09-05 11:30:43', '2021-09-05 11:30:43'),
(105, '????????????????????? comilla', 'tagify__tag tagify__tag--dark', '2021-09-05 11:30:43', '2021-09-05 11:30:43'),
(106, '????????????????????? ???????????????????????? B', 'tagify__tag tagify__tag--success', '2021-09-05 11:30:43', '2021-09-05 11:30:43'),
(107, '??????????????????????????? ?????????????????????', 'tagify__tag tagify__tag--info', '2021-09-05 11:30:43', '2021-09-05 11:30:43'),
(108, '???????????? ?????? ?????????', 'tagify__tag tagify__tag--success', '2021-09-05 11:30:43', '2021-09-05 11:30:43'),
(109, '???????????? ??????', 'tagify__tag tagify__tag--primary', '2021-09-05 11:30:43', '2021-09-05 11:30:43'),
(110, '?????????????????? ??????????????? ????????? VIP', 'tagify__tag tagify__tag--success', '2021-09-05 11:30:43', '2021-09-05 11:30:43'),
(111, '?????????????????? ??????????????? A Grade', 'tagify__tag tagify__tag--primary', '2021-09-05 11:30:43', '2021-09-05 11:30:43'),
(112, '???????????????????????????', 'tagify__tag tagify__tag--primary', '2021-09-05 11:30:43', '2021-09-05 11:30:43'),
(113, 'LC', 'tagify__tag tagify__tag--primary', '2021-09-05 11:30:43', '2021-09-05 11:30:43'),
(114, '???????????? ????????? ??????', 'tagify__tag tagify__tag--primary', '2021-09-05 11:39:32', '2021-09-05 11:39:32'),
(115, '???????????? ????????? MD', 'tagify__tag tagify__tag--danger', '2021-09-05 11:39:32', '2021-09-05 11:39:32'),
(116, '???????????? ????????? ex', 'tagify__tag tagify__tag--warning', '2021-09-05 11:39:32', '2021-09-05 11:39:32'),
(117, '???????????? ???????????????', 'tagify__tag tagify__tag--info', '2021-09-05 11:39:32', '2021-09-05 11:39:32'),
(118, '???????????? ??????????????? ex', 'tagify__tag tagify__tag--success', '2021-09-05 11:39:32', '2021-09-05 11:39:32'),
(119, '???????????? ???????????????', 'tagify__tag tagify__tag--info', '2021-09-05 11:39:32', '2021-09-05 11:39:32'),
(120, '???????????? ??????????????? ex', 'tagify__tag tagify__tag--danger', '2021-09-05 11:39:32', '2021-09-05 11:39:32'),
(121, '?????????????????? A', 'tagify__tag tagify__tag--success', '2021-09-05 11:39:32', '2021-09-05 11:39:32'),
(122, '?????????????????? B', 'tagify__tag tagify__tag--info', '2021-09-05 11:39:32', '2021-09-05 11:39:32'),
(123, '???????????? ??????', 'tagify__tag tagify__tag--dark', '2021-09-05 11:42:15', '2021-09-05 11:42:15'),
(124, '???????????? ??????????????????', 'tagify__tag tagify__tag--dark', '2021-09-05 11:42:15', '2021-09-05 11:42:15'),


-- --------------------------------------------------------

--
-- Table structure for table `wirehouses`
--

CREATE TABLE `wirehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distribution_capacity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wirehouses`
--

INSERT INTO `wirehouses` (`id`, `name`, `address`, `size`, `distribution_capacity`, `created_at`, `updated_at`) VALUES
(3, 'Warehouse 1', 'Kawranbazar', '1400 sqrf', '12,000 KG', '2021-12-01 12:30:19', '2021-12-01 12:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pay_by_bank` bigint(20) UNSIGNED DEFAULT NULL,
  `pay_by_hand` bigint(20) UNSIGNED DEFAULT NULL,
  `withdraw_by` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `admin_status` tinyint(4) NOT NULL DEFAULT '0',
  `super_admin_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assign_zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'zone_one',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `after_lock_old_requirements`
--
ALTER TABLE `after_lock_old_requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `after_lock_old_requirements_product_id_foreign` (`product_id`),
  ADD KEY `after_lock_old_requirements_variant_id_foreign` (`variant_id`),
  ADD KEY `after_lock_old_requirements_added_by_foreign` (`added_by`);

--
-- Indexes for table `after_lock_requirements`
--
ALTER TABLE `after_lock_requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `after_lock_requirements_product_id_foreign` (`product_id`),
  ADD KEY `after_lock_requirements_variant_id_foreign` (`variant_id`),
  ADD KEY `after_lock_requirements_added_by_foreign` (`added_by`);

--
-- Indexes for table `assign_seller_zones`
--
ALTER TABLE `assign_seller_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_seller_zones_seller_id_foreign` (`seller_id`),
  ADD KEY `assign_seller_zones_zone_id_foreign` (`zone_id`);

--
-- Indexes for table `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_balances`
--
ALTER TABLE `bank_balances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bank_balances_account_name_unique` (`account_name`),
  ADD UNIQUE KEY `bank_balances_account_number_unique` (`account_number`);

--
-- Indexes for table `cash_collections_lb`
--
ALTER TABLE `cash_collections_lb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_smg_manager_id_foreign` (`smg_manager_id`);

--
-- Indexes for table `chalans`
--
ALTER TABLE `chalans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `change_pricings`
--
ALTER TABLE `change_pricings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `change_pricings_order_lists_id_foreign` (`order_lists_id`),
  ADD KEY `added_by` (`added_by`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_user_id_foreign` (`user_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`),
  ADD KEY `customers_sales_executive_id_foreign` (`sales_executive_id`),
  ADD KEY `customers_zone_id_foreign` (`zone_id`);

--
-- Indexes for table `customer_account_logs`
--
ALTER TABLE `customer_account_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_account_logs_customer_id_foreign` (`customer_id`),
  ADD KEY `customer_account_logs_order_id_foreign` (`order_id`);

--
-- Indexes for table `customer_payments`
--
ALTER TABLE `customer_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_payments_order_id_foreign` (`order_id`),
  ADD KEY `customer_payments_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customer_payment_histories`
--
ALTER TABLE `customer_payment_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_payments_histories_customer_payments_id_foreign` (`customer_payment_id`);

--
-- Indexes for table `customer_payment_lists`
--
ALTER TABLE `customer_payment_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_payment_ups`
--
ALTER TABLE `customer_payment_ups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_payment_ups_sales_executive_id_foreign` (`sales_executive_id`),
  ADD KEY `customer_payment_ups_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `damage_and_missings`
--
ALTER TABLE `damage_and_missings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `damage_and_missings_orderlist_id_foreign` (`orderList_id`);

--
-- Indexes for table `delivery_for_customers`
--
ALTER TABLE `delivery_for_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_for_customers_product_id_foreign` (`product_id`),
  ADD KEY `delivery_for_customers_customer_id_foreign` (`customer_id`),
  ADD KEY `delivery_for_customers_sales_executive_id_foreign` (`sales_executive_id`);

--
-- Indexes for table `delivery_teams`
--
ALTER TABLE `delivery_teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_teams_smg_manager_id_foreign` (`smg_manager_id`),
  ADD KEY `delivery_teams_zone_id_foreign` (`zone_id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `deposits_token_number_unique` (`token_number`),
  ADD KEY `deposits_pay_by_bank_foreign` (`pay_by_bank`),
  ADD KEY `deposits_pay_by_hand_foreign` (`pay_by_hand`),
  ADD KEY `deposits_deposit_by_foreign` (`deposit_by`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_user_id_foreign` (`user_id`);

--
-- Indexes for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_salaries_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `expances`
--
ALTER TABLE `expances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmer_metas`
--
ALTER TABLE `farmer_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farmer_metas_farmer_id_foreign` (`farmer_id`);

--
-- Indexes for table `fixing_purchase_prices`
--
ALTER TABLE `fixing_purchase_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gross_profits`
--
ALTER TABLE `gross_profits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hand_balances`
--
ALTER TABLE `hand_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lockers`
--
ALTER TABLE `lockers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `nagad_payments`
--
ALTER TABLE `nagad_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `old_change_pricings`
--
ALTER TABLE `old_change_pricings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_change_pricings_order_lists_id_foreign` (`order_lists_id`),
  ADD KEY `added_by` (`added_by`);

--
-- Indexes for table `old_customer_account_logs`
--
ALTER TABLE `old_customer_account_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_customer_account_logs_customer_id_foreign` (`customer_id`),
  ADD KEY `old_customer_account_logs_order_id_foreign` (`order_id`);

--
-- Indexes for table `old_customer_payments`
--
ALTER TABLE `old_customer_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_customer_payments_order_id_foreign` (`order_id`),
  ADD KEY `old_customer_payments_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `old_customer_payment_histories`
--
ALTER TABLE `old_customer_payment_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_customer_payment_histories_customer_payment_id_foreign` (`customer_payment_id`);

--
-- Indexes for table `old_orders`
--
ALTER TABLE `old_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `old_orders_order_no_unique` (`order_no`),
  ADD KEY `old_orders_customer_id_foreign` (`customer_id`),
  ADD KEY `old_orders_sales_executive_id_foreign` (`sales_executive_id`),
  ADD KEY `order_assign_sales_executive_id` (`order_assign_sales_executive_id`);

--
-- Indexes for table `old_order_has_prices`
--
ALTER TABLE `old_order_has_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_order_has_prices_order_id_foreign` (`order_id`);

--
-- Indexes for table `old_order_lists`
--
ALTER TABLE `old_order_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_order_lists_order_id_foreign` (`order_id`),
  ADD KEY `old_order_lists_product_id_foreign` (`product_id`),
  ADD KEY `old_order_lists_variant_id_foreign` (`variant_id`);

--
-- Indexes for table `old_packagings`
--
ALTER TABLE `old_packagings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_packagings_order_id_foreign` (`order_id`),
  ADD KEY `old_packagings_product_id_foreign` (`product_id`),
  ADD KEY `old_packagings_variant_id_foreign` (`variant_id`);

--
-- Indexes for table `old_packaging_delivery_codes`
--
ALTER TABLE `old_packaging_delivery_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_packaging_delivery_codes_order_id_foreign` (`order_id`),
  ADD KEY `old_packaging_delivery_codes_product_id_foreign` (`product_id`),
  ADD KEY `old_packaging_delivery_codes_variant_id_foreign` (`variant_id`);

--
-- Indexes for table `old_prices`
--
ALTER TABLE `old_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_prices_product_id_foreign` (`product_id`),
  ADD KEY `old_prices_variant_id_foreign` (`variant_id`),
  ADD KEY `edit_by` (`edit_by`);

--
-- Indexes for table `old_product_reports`
--
ALTER TABLE `old_product_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_product_reports_delivery_executive_id_foreign` (`delivery_executive_id`),
  ADD KEY `old_product_reports_packaging_delivery_code_id_foreign` (`packaging_delivery_code_id`);

--
-- Indexes for table `old_purchases_histories`
--
ALTER TABLE `old_purchases_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_purchases_histories_purchaser_id_foreign` (`purchaser_id`),
  ADD KEY `old_purchases_histories_total_requirement_id_foreign` (`total_requirement_id`);

--
-- Indexes for table `old_report_list_trucks`
--
ALTER TABLE `old_report_list_trucks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `old_total_requirements`
--
ALTER TABLE `old_total_requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_total_requirements_product_id_foreign` (`product_id`),
  ADD KEY `old_total_requirements_variant_id_foreign` (`variant_id`),
  ADD KEY `added_by` (`added_by`);

--
-- Indexes for table `old_truck_assigns`
--
ALTER TABLE `old_truck_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_truck_assigns_truck_trucking_id_foreign` (`truck_trucking_id`),
  ADD KEY `old_truck_assigns_truck_id_foreign` (`truck_id`),
  ADD KEY `old_truck_assigns_order_id_foreign` (`order_id`);

--
-- Indexes for table `one_step_role_backs`
--
ALTER TABLE `one_step_role_backs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_no_unique` (`order_no`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_sales_executive_id_foreign` (`sales_executive_id`),
  ADD KEY `order_assign_sales_foregin` (`order_assign_sales_executive_id`);

--
-- Indexes for table `order_has_prices`
--
ALTER TABLE `order_has_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_has_prices_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_lists`
--
ALTER TABLE `order_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_lists_order_id_foreign` (`order_id`),
  ADD KEY `order_lists_product_id_foreign` (`product_id`),
  ADD KEY `order_lists_variant_id_foreign` (`variant_id`);

--
-- Indexes for table `order_list_back_ups`
--
ALTER TABLE `order_list_back_ups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_list_back_ups_order_id_foreign` (`order_id`),
  ADD KEY `order_list_back_ups_product_id_foreign` (`product_id`),
  ADD KEY `order_list_back_ups_variant_id_foreign` (`variant_id`);

--
-- Indexes for table `packagings`
--
ALTER TABLE `packagings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packagings_order_id_foreign` (`order_id`),
  ADD KEY `packagings_product_id_foreign` (`product_id`),
  ADD KEY `packagings_variant_id_foreign` (`variant_id`);

--
-- Indexes for table `packaging_delivery_codes`
--
ALTER TABLE `packaging_delivery_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packaging_delivery_codes_order_id_foreign` (`order_id`),
  ADD KEY `packaging_delivery_codes_product_id_foreign` (`product_id`),
  ADD KEY `packaging_delivery_codes_variant_id_foreign` (`variant_id`);

--
-- Indexes for table `pandamarts`
--
ALTER TABLE `pandamarts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pandamarts_fashol_customer_id_foreign` (`fashol_customer_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pay_orders`
--
ALTER TABLE `pay_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_orders_pay_by_bank_foreign` (`pay_by_bank`),
  ADD KEY `pay_orders_pay_by_hand_foreign` (`pay_by_hand`),
  ADD KEY `pay_orders_issue_by_foreign` (`issue_by`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `previous_orders`
--
ALTER TABLE `previous_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prices_product_id_foreign` (`product_id`),
  ADD KEY `prices_variant_id_foreign` (`variant_id`),
  ADD KEY `edit_by` (`edit_by`);

--
-- Indexes for table `price_collections`
--
ALTER TABLE `price_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_smg_manager_id_foreign` (`smg_manager_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `product_and_varients`
--
ALTER TABLE `product_and_varients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pv_sku` (`pv_sku`),
  ADD KEY `product_and_varients_product_id_foreign` (`product_id`),
  ADD KEY `product_and_varients_variant_id_foreign` (`variant_id`);

--
-- Indexes for table `product_order_units`
--
ALTER TABLE `product_order_units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_order_units_product_id_foreign` (`product_id`),
  ADD KEY `product_order_units_variant_id_foreign` (`variant_id`);

--
-- Indexes for table `product_reports`
--
ALTER TABLE `product_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reports_packaging_delivery_code_id_foreign` (`packaging_delivery_code_id`),
  ADD KEY `product_reports_delivery_executive_id_foreign` (`delivery_executive_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tags_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variant`
--
ALTER TABLE `product_variant`
  ADD KEY `product_variant_product_id_foreign` (`product_id`),
  ADD KEY `product_variant_variant_id_foreign` (`variant_id`);

--
-- Indexes for table `purchases_histories`
--
ALTER TABLE `purchases_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_histories_purchaser_id_foreign` (`purchaser_id`),
  ADD KEY `purchases_histories_total_requirement_id_foreign` (`total_requirement_id`);

--
-- Indexes for table `purchase_managements`
--
ALTER TABLE `purchase_managements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_v_skus`
--
ALTER TABLE `p_v_skus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_v_skus_product_id_foreign` (`product_id`),
  ADD KEY `p_v_skus_variant_id_foreign` (`variant_id`),
  ADD KEY `edit_by` (`edit_by`);

--
-- Indexes for table `report_list_trucks`
--
ALTER TABLE `report_list_trucks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requirements`
--
ALTER TABLE `requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requirements_zone_id_foreign` (`zone_id`),
  ADD KEY `requirements_product_id_foreign` (`product_id`),
  ADD KEY `added_by` (`added_by`);

--
-- Indexes for table `retailer_delivery_address`
--
ALTER TABLE `retailer_delivery_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `retailer_sliders`
--
ALTER TABLE `retailer_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `salary_managements`
--
ALTER TABLE `salary_managements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_teams`
--
ALTER TABLE `sales_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `supplied_lists`
--
ALTER TABLE `supplied_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplied_lists_supply_id_foreign` (`supply_id`),
  ADD KEY `supplied_lists_product_id_foreign` (`product_id`),
  ADD KEY `supplied_lists_variant_id_foreign` (`variant_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_histories`
--
ALTER TABLE `supplier_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_histories_supplier_id_foreign` (`supplier_id`),
  ADD KEY `supplier_histories_product_id_foreign` (`product_id`),
  ADD KEY `supplier_histories_purchase_team_id_foreign` (`purchase_team_id`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplies_supplier_id_foreign` (`supplier_id`),
  ADD KEY `supplies_purchase_management_id_foreign` (`purchase_management_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_order_lists`
--
ALTER TABLE `temp_order_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testings`
--
ALTER TABLE `testings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_requirements`
--
ALTER TABLE `total_requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `total_requirements_product_id_foreign` (`product_id`),
  ADD KEY `total_requirements_variant_id_foreign` (`variant_id`),
  ADD KEY `addedBY` (`added_by`);

--
-- Indexes for table `trucks`
--
ALTER TABLE `trucks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trucks_truck_no_unique` (`truck_no`),
  ADD KEY `trucks_zone_id_foreign` (`zone_id`);

--
-- Indexes for table `truck_assigns`
--
ALTER TABLE `truck_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `truck_assigns_truck_trucking_id_foreign` (`truck_trucking_id`),
  ADD KEY `truck_assigns_truck_id_foreign` (`truck_id`),
  ADD KEY `truck_assigns_order_id_foreign` (`order_id`);

--
-- Indexes for table `truck_truckings`
--
ALTER TABLE `truck_truckings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turckers`
--
ALTER TABLE `turckers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_s_o_s`
--
ALTER TABLE `t_s_o_s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_s_o_s_tso_foreign` (`tso`),
  ADD KEY `t_s_o_s_assign_saller_id_foreign` (`assign_saller_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_unit_unique` (`unit`);

--
-- Indexes for table `unit_and_purchases`
--
ALTER TABLE `unit_and_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_and_sales`
--
ALTER TABLE `unit_and_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_otp_unique` (`otp`),
  ADD KEY `users_zone_id_foreign` (`zone_id`),
  ADD KEY `users_added_by_foreign` (`added_by`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wirehouses`
--
ALTER TABLE `wirehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraws_pay_by_bank_foreign` (`pay_by_bank`),
  ADD KEY `withdraws_pay_by_hand_foreign` (`pay_by_hand`),
  ADD KEY `withdraws_withdraw_by_foreign` (`withdraw_by`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `after_lock_old_requirements`
--
ALTER TABLE `after_lock_old_requirements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `after_lock_requirements`
--
ALTER TABLE `after_lock_requirements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_seller_zones`
--
ALTER TABLE `assign_seller_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `balances`
--
ALTER TABLE `balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_balances`
--
ALTER TABLE `bank_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash_collections_lb`
--
ALTER TABLE `cash_collections_lb`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1870;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chalans`
--
ALTER TABLE `chalans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `change_pricings`
--
ALTER TABLE `change_pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3268;

--
-- AUTO_INCREMENT for table `customer_account_logs`
--
ALTER TABLE `customer_account_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_payments`
--
ALTER TABLE `customer_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_payment_histories`
--
ALTER TABLE `customer_payment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_payment_lists`
--
ALTER TABLE `customer_payment_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_payment_ups`
--
ALTER TABLE `customer_payment_ups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `damage_and_missings`
--
ALTER TABLE `damage_and_missings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_for_customers`
--
ALTER TABLE `delivery_for_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_teams`
--
ALTER TABLE `delivery_teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `expances`
--
ALTER TABLE `expances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1214;

--
-- AUTO_INCREMENT for table `farmer_metas`
--
ALTER TABLE `farmer_metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fixing_purchase_prices`
--
ALTER TABLE `fixing_purchase_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gross_profits`
--
ALTER TABLE `gross_profits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hand_balances`
--
ALTER TABLE `hand_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lockers`
--
ALTER TABLE `lockers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `nagad_payments`
--
ALTER TABLE `nagad_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `old_change_pricings`
--
ALTER TABLE `old_change_pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22616;

--
-- AUTO_INCREMENT for table `old_customer_account_logs`
--
ALTER TABLE `old_customer_account_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `old_customer_payments`
--
ALTER TABLE `old_customer_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1275;

--
-- AUTO_INCREMENT for table `old_customer_payment_histories`
--
ALTER TABLE `old_customer_payment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `old_orders`
--
ALTER TABLE `old_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23485681;

--
-- AUTO_INCREMENT for table `old_order_has_prices`
--
ALTER TABLE `old_order_has_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21307;

--
-- AUTO_INCREMENT for table `old_order_lists`
--
ALTER TABLE `old_order_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253365;

--
-- AUTO_INCREMENT for table `old_packagings`
--
ALTER TABLE `old_packagings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4723;

--
-- AUTO_INCREMENT for table `old_packaging_delivery_codes`
--
ALTER TABLE `old_packaging_delivery_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14656;

--
-- AUTO_INCREMENT for table `old_prices`
--
ALTER TABLE `old_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338752;

--
-- AUTO_INCREMENT for table `old_product_reports`
--
ALTER TABLE `old_product_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `old_purchases_histories`
--
ALTER TABLE `old_purchases_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `old_report_list_trucks`
--
ALTER TABLE `old_report_list_trucks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `old_total_requirements`
--
ALTER TABLE `old_total_requirements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41410;

--
-- AUTO_INCREMENT for table `old_truck_assigns`
--
ALTER TABLE `old_truck_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16365;

--
-- AUTO_INCREMENT for table `one_step_role_backs`
--
ALTER TABLE `one_step_role_backs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23485356;

--
-- AUTO_INCREMENT for table `order_has_prices`
--
ALTER TABLE `order_has_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT for table `order_lists`
--
ALTER TABLE `order_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268905;

--
-- AUTO_INCREMENT for table `order_list_back_ups`
--
ALTER TABLE `order_list_back_ups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207341;

--
-- AUTO_INCREMENT for table `packagings`
--
ALTER TABLE `packagings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packaging_delivery_codes`
--
ALTER TABLE `packaging_delivery_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pandamarts`
--
ALTER TABLE `pandamarts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pay_orders`
--
ALTER TABLE `pay_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `previous_orders`
--
ALTER TABLE `previous_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1669;

--
-- AUTO_INCREMENT for table `price_collections`
--
ALTER TABLE `price_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `product_and_varients`
--
ALTER TABLE `product_and_varients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_order_units`
--
ALTER TABLE `product_order_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=588;

--
-- AUTO_INCREMENT for table `product_reports`
--
ALTER TABLE `product_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `purchases_histories`
--
ALTER TABLE `purchases_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_managements`
--
ALTER TABLE `purchase_managements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `p_v_skus`
--
ALTER TABLE `p_v_skus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4235;

--
-- AUTO_INCREMENT for table `report_list_trucks`
--
ALTER TABLE `report_list_trucks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `requirements`
--
ALTER TABLE `requirements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;

--
-- AUTO_INCREMENT for table `retailer_delivery_address`
--
ALTER TABLE `retailer_delivery_address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `retailer_sliders`
--
ALTER TABLE `retailer_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `salary_managements`
--
ALTER TABLE `salary_managements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_teams`
--
ALTER TABLE `sales_teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplied_lists`
--
ALTER TABLE `supplied_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `supplier_histories`
--
ALTER TABLE `supplier_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_order_lists`
--
ALTER TABLE `temp_order_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6953;

--
-- AUTO_INCREMENT for table `testings`
--
ALTER TABLE `testings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `total_requirements`
--
ALTER TABLE `total_requirements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;

--
-- AUTO_INCREMENT for table `trucks`
--
ALTER TABLE `trucks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `truck_assigns`
--
ALTER TABLE `truck_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;

--
-- AUTO_INCREMENT for table `truck_truckings`
--
ALTER TABLE `truck_truckings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT for table `turckers`
--
ALTER TABLE `turckers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_s_o_s`
--
ALTER TABLE `t_s_o_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `unit_and_purchases`
--
ALTER TABLE `unit_and_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `unit_and_sales`
--
ALTER TABLE `unit_and_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=953;

--
-- AUTO_INCREMENT for table `wirehouses`
--
ALTER TABLE `wirehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `after_lock_old_requirements`
--
ALTER TABLE `after_lock_old_requirements`
  ADD CONSTRAINT `after_lock_old_requirements_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `after_lock_old_requirements_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `after_lock_old_requirements_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `after_lock_requirements`
--
ALTER TABLE `after_lock_requirements`
  ADD CONSTRAINT `after_lock_requirements_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `after_lock_requirements_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `after_lock_requirements_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `assign_seller_zones`
--
ALTER TABLE `assign_seller_zones`
  ADD CONSTRAINT `assign_seller_zones_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assign_seller_zones_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_smg_manager_id_foreign` FOREIGN KEY (`smg_manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `change_pricings`
--
ALTER TABLE `change_pricings`
  ADD CONSTRAINT `change_pricings_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `change_pricings_order_lists_id_foreign` FOREIGN KEY (`order_lists_id`) REFERENCES `order_lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_sales_executive_id_foreign` FOREIGN KEY (`sales_executive_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customers_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_account_logs`
--
ALTER TABLE `customer_account_logs`
  ADD CONSTRAINT `customer_account_logs_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_account_logs_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_payments`
--
ALTER TABLE `customer_payments`
  ADD CONSTRAINT `customer_payments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_payment_histories`
--
ALTER TABLE `customer_payment_histories`
  ADD CONSTRAINT `customer_payments_histories_customer_payments_id_foreign` FOREIGN KEY (`customer_payment_id`) REFERENCES `customer_payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_payment_ups`
--
ALTER TABLE `customer_payment_ups`
  ADD CONSTRAINT `customer_payment_ups_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_payment_ups_sales_executive_id_foreign` FOREIGN KEY (`sales_executive_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `damage_and_missings`
--
ALTER TABLE `damage_and_missings`
  ADD CONSTRAINT `damage_and_missings_orderlist_id_foreign` FOREIGN KEY (`orderList_id`) REFERENCES `order_lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_for_customers`
--
ALTER TABLE `delivery_for_customers`
  ADD CONSTRAINT `delivery_for_customers_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `delivery_for_customers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `delivery_for_customers_sales_executive_id_foreign` FOREIGN KEY (`sales_executive_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_teams`
--
ALTER TABLE `delivery_teams`
  ADD CONSTRAINT `delivery_teams_smg_manager_id_foreign` FOREIGN KEY (`smg_manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `delivery_teams_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `deposits_deposit_by_foreign` FOREIGN KEY (`deposit_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deposits_pay_by_bank_foreign` FOREIGN KEY (`pay_by_bank`) REFERENCES `bank_balances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deposits_pay_by_hand_foreign` FOREIGN KEY (`pay_by_hand`) REFERENCES `hand_balances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD CONSTRAINT `employee_salaries_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `farmer_metas`
--
ALTER TABLE `farmer_metas`
  ADD CONSTRAINT `farmer_metas_farmer_id_foreign` FOREIGN KEY (`farmer_id`) REFERENCES `farmers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `old_change_pricings`
--
ALTER TABLE `old_change_pricings`
  ADD CONSTRAINT `old_change_pricings_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_change_pricings_order_lists_id_foreign` FOREIGN KEY (`order_lists_id`) REFERENCES `old_order_lists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_customer_account_logs`
--
ALTER TABLE `old_customer_account_logs`
  ADD CONSTRAINT `old_customer_account_logs_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_customer_account_logs_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `old_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_customer_payments`
--
ALTER TABLE `old_customer_payments`
  ADD CONSTRAINT `old_customer_payments_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_customer_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `old_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_customer_payment_histories`
--
ALTER TABLE `old_customer_payment_histories`
  ADD CONSTRAINT `old_customer_payment_histories_customer_payment_id_foreign` FOREIGN KEY (`customer_payment_id`) REFERENCES `old_customer_payments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_orders`
--
ALTER TABLE `old_orders`
  ADD CONSTRAINT `old_orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `old_orders_ibfk_1` FOREIGN KEY (`order_assign_sales_executive_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `old_orders_sales_executive_id_foreign` FOREIGN KEY (`sales_executive_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `old_order_has_prices`
--
ALTER TABLE `old_order_has_prices`
  ADD CONSTRAINT `old_order_has_prices_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `old_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_order_lists`
--
ALTER TABLE `old_order_lists`
  ADD CONSTRAINT `old_order_lists_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `old_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_order_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_order_lists_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_packagings`
--
ALTER TABLE `old_packagings`
  ADD CONSTRAINT `old_packagings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `old_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_packagings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_packagings_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_packaging_delivery_codes`
--
ALTER TABLE `old_packaging_delivery_codes`
  ADD CONSTRAINT `old_packaging_delivery_codes_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `old_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_packaging_delivery_codes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_packaging_delivery_codes_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_prices`
--
ALTER TABLE `old_prices`
  ADD CONSTRAINT `old_prices_ibfk_1` FOREIGN KEY (`edit_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_prices_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_product_reports`
--
ALTER TABLE `old_product_reports`
  ADD CONSTRAINT `old_product_reports_delivery_executive_id_foreign` FOREIGN KEY (`delivery_executive_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_product_reports_packaging_delivery_code_id_foreign` FOREIGN KEY (`packaging_delivery_code_id`) REFERENCES `old_packaging_delivery_codes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_purchases_histories`
--
ALTER TABLE `old_purchases_histories`
  ADD CONSTRAINT `old_purchases_histories_purchaser_id_foreign` FOREIGN KEY (`purchaser_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_purchases_histories_total_requirement_id_foreign` FOREIGN KEY (`total_requirement_id`) REFERENCES `old_total_requirements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_total_requirements`
--
ALTER TABLE `old_total_requirements`
  ADD CONSTRAINT `old_total_requirements_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_total_requirements_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_total_requirements_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `old_truck_assigns`
--
ALTER TABLE `old_truck_assigns`
  ADD CONSTRAINT `old_truck_assigns_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `old_orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_truck_assigns_truck_id_foreign` FOREIGN KEY (`truck_id`) REFERENCES `trucks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `old_truck_assigns_truck_trucking_id_foreign` FOREIGN KEY (`truck_trucking_id`) REFERENCES `truck_truckings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`order_assign_sales_executive_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_sales_executive_id_foreign` FOREIGN KEY (`sales_executive_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_has_prices`
--
ALTER TABLE `order_has_prices`
  ADD CONSTRAINT `order_has_prices_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_lists`
--
ALTER TABLE `order_lists`
  ADD CONSTRAINT `order_lists_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_lists_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_list_back_ups`
--
ALTER TABLE `order_list_back_ups`
  ADD CONSTRAINT `order_list_back_ups_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_list_back_ups_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_list_back_ups_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `packagings`
--
ALTER TABLE `packagings`
  ADD CONSTRAINT `packagings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `packagings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `packagings_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `packaging_delivery_codes`
--
ALTER TABLE `packaging_delivery_codes`
  ADD CONSTRAINT `packaging_delivery_codes_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `packaging_delivery_codes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `packaging_delivery_codes_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pandamarts`
--
ALTER TABLE `pandamarts`
  ADD CONSTRAINT `pandamarts_fashol_customer_id_foreign` FOREIGN KEY (`fashol_customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pay_orders`
--
ALTER TABLE `pay_orders`
  ADD CONSTRAINT `pay_orders_issue_by_foreign` FOREIGN KEY (`issue_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pay_orders_pay_by_bank_foreign` FOREIGN KEY (`pay_by_bank`) REFERENCES `bank_balances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pay_orders_pay_by_hand_foreign` FOREIGN KEY (`pay_by_hand`) REFERENCES `hand_balances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`edit_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prices_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_smg_manager_id_foreign` FOREIGN KEY (`smg_manager_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_and_varients`
--
ALTER TABLE `product_and_varients`
  ADD CONSTRAINT `product_and_varients_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_and_varients_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_order_units`
--
ALTER TABLE `product_order_units`
  ADD CONSTRAINT `product_order_units_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_order_units_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_reports`
--
ALTER TABLE `product_reports`
  ADD CONSTRAINT `product_reports_packaging_delivery_code_id_foreign` FOREIGN KEY (`packaging_delivery_code_id`) REFERENCES `packaging_delivery_codes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_variant`
--
ALTER TABLE `product_variant`
  ADD CONSTRAINT `product_variant_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_variant_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchases_histories`
--
ALTER TABLE `purchases_histories`
  ADD CONSTRAINT `purchases_histories_purchaser_id_foreign` FOREIGN KEY (`purchaser_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `purchases_histories_total_requirement_id_foreign` FOREIGN KEY (`total_requirement_id`) REFERENCES `total_requirements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `p_v_skus`
--
ALTER TABLE `p_v_skus`
  ADD CONSTRAINT `p_v_skus_ibfk_1` FOREIGN KEY (`edit_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `p_v_skus_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `p_v_skus_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `requirements`
--
ALTER TABLE `requirements`
  ADD CONSTRAINT `requirements_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `requirements_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `requirements_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supplied_lists`
--
ALTER TABLE `supplied_lists`
  ADD CONSTRAINT `supplied_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supplied_lists_supply_id_foreign` FOREIGN KEY (`supply_id`) REFERENCES `supplies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supplied_lists_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supplier_histories`
--
ALTER TABLE `supplier_histories`
  ADD CONSTRAINT `supplier_histories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supplier_histories_purchase_team_id_foreign` FOREIGN KEY (`purchase_team_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supplier_histories_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supplies`
--
ALTER TABLE `supplies`
  ADD CONSTRAINT `supplies_purchase_management_id_foreign` FOREIGN KEY (`purchase_management_id`) REFERENCES `purchase_managements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supplies_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `total_requirements`
--
ALTER TABLE `total_requirements`
  ADD CONSTRAINT `total_requirements_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `total_requirements_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `total_requirements_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trucks`
--
ALTER TABLE `trucks`
  ADD CONSTRAINT `trucks_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `truck_assigns`
--
ALTER TABLE `truck_assigns`
  ADD CONSTRAINT `truck_assigns_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `truck_assigns_truck_id_foreign` FOREIGN KEY (`truck_id`) REFERENCES `trucks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `truck_assigns_truck_trucking_id_foreign` FOREIGN KEY (`truck_trucking_id`) REFERENCES `truck_truckings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_s_o_s`
--
ALTER TABLE `t_s_o_s`
  ADD CONSTRAINT `t_s_o_s_assign_saller_id_foreign` FOREIGN KEY (`assign_saller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_s_o_s_tso_foreign` FOREIGN KEY (`tso`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD CONSTRAINT `withdraws_pay_by_bank_foreign` FOREIGN KEY (`pay_by_bank`) REFERENCES `bank_balances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `withdraws_pay_by_hand_foreign` FOREIGN KEY (`pay_by_hand`) REFERENCES `hand_balances` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `withdraws_withdraw_by_foreign` FOREIGN KEY (`withdraw_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
