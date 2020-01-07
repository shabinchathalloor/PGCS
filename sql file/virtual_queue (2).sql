-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2017 at 02:39 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `virtual_queue`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appoinments`
--

CREATE TABLE `appoinments` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `letter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `type` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `appoinments`
--

INSERT INTO `appoinments` (`id`, `company_id`, `location_id`, `name`, `letter`, `number`, `type`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'shabeer kk', 'sls', 896, 'advanced appoinment', 1, NULL, '2016-12-21 02:34:40', '2016-12-21 03:35:58'),
(2, 2, 2, 'jafar', 'ap2', 452, 'simple appoinment', 1, NULL, '2016-12-21 03:33:04', '2016-12-21 03:35:58'),
(3, 2, 1, 'appoinment2 m', 'ap2', 500, 'simple appoinment', 1, NULL, '2016-12-30 04:46:06', '2017-01-10 08:44:58'),
(4, 2, 4, 'T app', 'ta', 200, 'advanced appoinment', 1, NULL, '2016-12-30 05:58:21', '2016-12-30 05:58:21'),
(5, 2, 4, 'T app2', 'ta2', 300, 'advanced appoinment', 1, NULL, '2016-12-30 05:58:51', '2016-12-30 05:58:51'),
(6, 2, 2, 'L2 app2', '2345', 1234, 'advanced appoinment', 1, NULL, '2016-12-30 06:33:21', '2016-12-30 06:33:21'),
(7, 2, 1, 'app 4 55', 'Ap4', 8000, 'simple appoinment', 1, NULL, '2017-01-18 06:43:13', '2017-01-18 09:21:00');

-- --------------------------------------------------------

--
-- Table structure for table `appoinment_details`
--

CREATE TABLE `appoinment_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `appoinment_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `appoinment_details`
--

INSERT INTO `appoinment_details` (`id`, `company_id`, `location_id`, `appoinment_id`, `name`, `type`, `default_value`, `value`, `required`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 2, 1, 1, 'app1', 'select', '', '["app11","app12","app13"]', 1, '2016-12-30 04:44:26', '2016-12-29 00:07:57', '2016-12-30 04:44:26'),
(4, 2, 1, 1, 'app12', 'select', '', '["app121","app122","app123"]', 1, '2016-12-30 04:44:26', '2016-12-29 00:07:57', '2016-12-30 04:44:26'),
(5, 2, 2, 2, 'app1', 'select', '', '["app11","app12","app13"]', 1, '2016-12-30 06:35:08', '2016-12-29 00:14:30', '2016-12-30 06:35:08'),
(6, 2, 2, 2, 'app12', 'radio', '', '["app12","app13"]', 1, '2016-12-30 06:35:08', '2016-12-29 00:14:30', '2016-12-30 06:35:08'),
(7, 2, 1, 1, 'asd', 'text', 'asd1', '', 1, '2016-12-30 04:44:26', '2016-12-29 00:26:58', '2016-12-30 04:44:26'),
(8, 2, 1, 1, 'asd2', 'checkbox', '', '["asd1","asd2","asd3"]', 1, '2016-12-30 04:44:26', '2016-12-29 00:26:58', '2016-12-30 04:44:26'),
(9, 2, 2, 2, 'ap test', 'date', 'ap test1', '', 1, '2016-12-30 06:35:08', '2016-12-29 00:30:01', '2016-12-30 06:35:08'),
(10, 2, 2, 2, 'ap test2', 'radio', '', '["ap test21","ap test22"]', 1, '2016-12-30 06:35:08', '2016-12-29 00:30:01', '2016-12-30 06:35:08'),
(11, 2, 1, 1, 'app1', 'select', '', '["app11000","app12"]', 1, '2016-12-30 04:47:25', '2016-12-30 04:45:02', '2016-12-30 04:47:25'),
(12, 2, 1, 1, 'app12', 'radio', '', '["app121rdo","app122","app123"]', 1, '2016-12-30 04:47:25', '2016-12-30 04:45:02', '2016-12-30 04:47:25'),
(13, 2, 1, 1, 'asd', 'text', 'asd1', '', 1, '2016-12-30 04:47:25', '2016-12-30 04:45:02', '2016-12-30 04:47:25'),
(14, 2, 1, 1, 'asd2', 'checkbox', '', '["asd1","asd2","asd3"]', 1, '2016-12-30 04:47:25', '2016-12-30 04:45:02', '2016-12-30 04:47:25'),
(15, 2, 1, 1, 'app1', 'select', '', '["app11000","app12"]', 1, '2016-12-30 04:48:22', '2016-12-30 04:47:25', '2016-12-30 04:48:22'),
(16, 2, 1, 1, 'app12', 'radio', '', '["app121rdo","app122","app123"]', 1, '2016-12-30 04:48:22', '2016-12-30 04:47:25', '2016-12-30 04:48:22'),
(17, 2, 1, 1, 'asd', 'text', 'asd1', '', 1, '2016-12-30 04:48:22', '2016-12-30 04:47:25', '2016-12-30 04:48:22'),
(18, 2, 1, 1, 'asd2', 'checkbox', '', '["asd1","asd2","asd3"]', 1, '2016-12-30 05:52:02', '2016-12-30 04:47:25', '2016-12-30 05:52:02'),
(19, 2, 1, 1, 'app1', 'select', '', '["app11000","app12"]', 1, '2016-12-30 05:52:02', '2016-12-30 04:48:22', '2016-12-30 05:52:02'),
(20, 2, 1, 1, 'app12', 'radio', '', '["app121rdo","app122","app123"]', 1, '2016-12-30 05:52:02', '2016-12-30 04:48:22', '2016-12-30 05:52:02'),
(21, 2, 1, 1, 'asd', 'text', 'asd1', '', 1, '2016-12-30 05:03:21', '2016-12-30 04:48:22', '2016-12-30 05:03:21'),
(22, 2, 1, 1, 'asd2', 'checkbox', '', '["asd1","asd2","asd3"]', 1, '2016-12-30 05:03:21', '2016-12-30 04:48:22', '2016-12-30 05:03:21'),
(23, 2, 1, 1, 'asd2', 'checkbox', '', '["asd1","asd2","asd3"]', 1, '2016-12-30 05:53:32', '2016-12-30 05:52:02', '2016-12-30 05:53:32'),
(24, 2, 1, 1, 'app1', 'select', '', '["app11000","app12"]', 1, '2016-12-30 05:53:32', '2016-12-30 05:52:02', '2016-12-30 05:53:32'),
(25, 2, 1, 1, 'app12', 'radio', '', '["app121rdo","app122","app123"]', 1, '2016-12-30 05:53:32', '2016-12-30 05:52:02', '2016-12-30 05:53:32'),
(26, 2, 1, 1, 'asd2', 'radio', '', '["asd1","asd2","asd3"]', 1, '2016-12-30 06:29:48', '2016-12-30 05:53:32', '2016-12-30 06:29:48'),
(27, 2, 1, 1, 'app1', 'radio', '', '["app11000","app12"]', 1, '2016-12-30 06:29:48', '2016-12-30 05:53:32', '2016-12-30 06:29:48'),
(28, 2, 1, 1, 'app12', 'radio', '', '["app121rdo","app122","app123"]', 1, '2016-12-30 06:29:48', '2016-12-30 05:53:32', '2016-12-30 06:29:48'),
(29, 2, 4, 4, 'T1', 'text', 'T1', '', 1, '2016-12-30 06:14:51', '2016-12-30 06:11:04', '2016-12-30 06:14:51'),
(30, 2, 4, 4, 'PH', 'phone', '1234567890', '', 1, '2016-12-30 06:14:51', '2016-12-30 06:11:04', '2016-12-30 06:14:51'),
(31, 2, 4, 4, '', 'select', '', '["WETGWT","AEQWGT","GEGTWG"]', 1, '2016-12-30 06:14:51', '2016-12-30 06:11:04', '2016-12-30 06:14:51'),
(32, 2, 1, 4, 'T1', 'text', 'T1', '', 1, '2016-12-30 06:20:19', '2016-12-30 06:14:51', '2016-12-30 06:20:19'),
(33, 2, 1, 4, 'PH', 'phone', '1234567890', '', 1, '2016-12-30 06:20:19', '2016-12-30 06:14:51', '2016-12-30 06:20:19'),
(34, 2, 1, 4, '', 'select', '', '["WETGWT","AEQWGT","GEGTWG"]', 1, '2016-12-30 06:20:19', '2016-12-30 06:14:51', '2016-12-30 06:20:19'),
(35, 2, 4, 5, 'T1', 'text', 'T1', '', 1, '2016-12-30 06:21:51', '2016-12-30 06:20:20', '2016-12-30 06:21:51'),
(36, 2, 4, 5, 'PH', 'phone', '1234567890', '', 1, '2016-12-30 06:21:51', '2016-12-30 06:20:20', '2016-12-30 06:21:51'),
(37, 2, 4, 5, '', 'select', '', '["WETGWT","AEQWGT","GEGTWG"]', 1, '2016-12-30 06:21:51', '2016-12-30 06:20:20', '2016-12-30 06:21:51'),
(38, 2, 1, 3, 'T1', 'text', 'T1', '', 1, '2016-12-30 06:24:05', '2016-12-30 06:21:51', '2016-12-30 06:24:05'),
(39, 2, 1, 3, 'PH', 'phone', '1234567890', '', 1, '2016-12-30 06:24:05', '2016-12-30 06:21:51', '2016-12-30 06:24:05'),
(40, 2, 1, 3, '', 'select', '', '["WETGWT","AEQWGT","GEGTWG"]', 1, '2016-12-30 06:24:05', '2016-12-30 06:21:51', '2016-12-30 06:24:05'),
(41, 2, 4, 3, 'T1', 'text', 'T1', '', 1, '2016-12-30 06:27:40', '2016-12-30 06:24:05', '2016-12-30 06:27:40'),
(42, 2, 4, 3, 'PH', 'phone', '1234567890', '', 1, '2016-12-30 06:27:40', '2016-12-30 06:24:05', '2016-12-30 06:27:40'),
(43, 2, 4, 3, '', 'select', '', '["WETGWT","AEQWGT","GEGTWG"]', 1, '2016-12-30 06:27:40', '2016-12-30 06:24:05', '2016-12-30 06:27:40'),
(44, 2, 4, 5, 'T1', 'text', 'T1', '', 1, NULL, '2016-12-30 06:27:40', '2016-12-30 06:27:40'),
(45, 2, 4, 5, 'PH', 'phone', '1234567890', '', 1, NULL, '2016-12-30 06:27:40', '2016-12-30 06:27:40'),
(46, 2, 4, 5, '', 'select', '', '["WETGWT","AEQWGT","GEGTWG"]', 1, NULL, '2016-12-30 06:27:40', '2016-12-30 06:27:40'),
(47, 2, 1, 3, 'asd2', 'radio', '', '["asd1","asd2","asd3"]', 1, '2017-01-02 04:32:44', '2016-12-30 06:29:48', '2017-01-02 04:32:44'),
(48, 2, 1, 3, 'app1', 'radio', '', '["app11000","app12"]', 1, '2017-01-02 04:32:44', '2016-12-30 06:29:48', '2017-01-02 04:32:44'),
(49, 2, 1, 3, 'app12', 'radio', '', '["app121rdo","app122","app123"]', 1, '2017-01-02 04:32:44', '2016-12-30 06:29:48', '2017-01-02 04:32:44'),
(50, 2, 2, 6, 'app1', 'select', '', '["app11","app12","app13"]', 1, NULL, '2016-12-30 06:35:08', '2016-12-30 06:35:08'),
(51, 2, 2, 6, 'app12', 'radio', '', '["app12","app13"]', 1, NULL, '2016-12-30 06:35:08', '2016-12-30 06:35:08'),
(52, 2, 2, 6, 'ap test', 'date', 'ap test1', '', 1, NULL, '2016-12-30 06:35:08', '2016-12-30 06:35:08'),
(53, 2, 2, 6, 'ap test2', 'radio', '', '["ap test21","ap test22"]', 1, NULL, '2016-12-30 06:35:08', '2016-12-30 06:35:08'),
(54, 2, 1, 3, 'asd2', 'radio', '', '["asd1","asd2","asd3"]', 0, '2017-01-02 04:36:01', '2017-01-02 04:32:44', '2017-01-02 04:36:01'),
(55, 2, 1, 3, 'app1', 'radio', '', '["app11000","app12"]', 0, '2017-01-02 04:36:01', '2017-01-02 04:32:44', '2017-01-02 04:36:01'),
(56, 2, 1, 3, 'app12', 'radio', '', '["app121rdo","app122","app123"]', 0, '2017-01-02 04:36:01', '2017-01-02 04:32:44', '2017-01-02 04:36:01'),
(57, 2, 1, 3, '', 'text', '35hy', '', 1, '2017-01-02 04:36:01', '2017-01-02 04:32:44', '2017-01-02 04:36:01'),
(58, 2, 1, 3, 'asd2', 'radio', '', '["asd1","asd2","asd3"]', 1, '2017-01-02 04:38:17', '2017-01-02 04:36:01', '2017-01-02 04:38:17'),
(59, 2, 1, 3, 'app1', 'radio', '', '["app11000","app12"]', 1, '2017-01-02 04:38:17', '2017-01-02 04:36:01', '2017-01-02 04:38:17'),
(60, 2, 1, 3, 'app12', 'radio', '', '["app121rdo","app122","app123"]', 1, '2017-01-02 04:38:17', '2017-01-02 04:36:01', '2017-01-02 04:38:17'),
(61, 2, 1, 3, '', 'text', '35hy', '', 0, '2017-01-02 04:38:17', '2017-01-02 04:36:01', '2017-01-02 04:38:17'),
(62, 2, 1, 3, '', 'text', 'sdb', '', 1, '2017-01-02 04:38:17', '2017-01-02 04:36:01', '2017-01-02 04:38:17'),
(63, 2, 1, 3, '', 'select', '', '["adev",""]', 1, '2017-01-02 04:38:17', '2017-01-02 04:36:01', '2017-01-02 04:38:17'),
(64, 2, 1, 3, 'asd2', 'radio', '', '["asd1","asd2","asd3"]', 0, NULL, '2017-01-02 04:38:17', '2017-01-02 04:38:17'),
(65, 2, 1, 3, 'app1', 'radio', '', '["app11000","app12"]', 0, NULL, '2017-01-02 04:38:17', '2017-01-02 04:38:17'),
(66, 2, 1, 3, 'app12', 'radio', '', '["app121rdo","app122","app123"]', 0, NULL, '2017-01-02 04:38:17', '2017-01-02 04:38:17'),
(67, 2, 1, 3, '', 'text', '35hy', '', 1, NULL, '2017-01-02 04:38:17', '2017-01-02 04:38:17'),
(68, 2, 1, 3, '', 'text', 'sdb', '', 0, NULL, '2017-01-02 04:38:17', '2017-01-02 04:38:17'),
(69, 2, 1, 3, '', 'select', '', '["adev",""]', 0, NULL, '2017-01-02 04:38:17', '2017-01-02 04:38:17'),
(70, 2, 1, 3, '', 'text', '46jr', '', 1, NULL, '2017-01-02 04:38:17', '2017-01-02 04:38:17'),
(71, 2, 1, 3, '', 'radio', '', '["rnt",""]', 1, NULL, '2017-01-02 04:38:17', '2017-01-02 04:38:17'),
(72, 2, 1, 1, 'date', 'date', '', '', 1, '2017-01-18 09:17:19', '2017-01-18 09:10:40', '2017-01-18 09:17:19'),
(73, 2, 1, 1, 'adv', 'radio', '', '["oooo","ppp"]', 1, '2017-01-18 09:17:19', '2017-01-18 09:10:40', '2017-01-18 09:17:19'),
(75, 2, 1, 1, 'date', 'textarea', '', '', 1, NULL, '2017-01-18 09:17:19', '2017-01-18 09:17:19'),
(76, 2, 1, 1, 'adv', 'radio', '', '["oooo","ppp"]', 0, NULL, '2017-01-18 09:17:19', '2017-01-18 09:17:19');

-- --------------------------------------------------------

--
-- Table structure for table `appoinment_slots`
--

CREATE TABLE `appoinment_slots` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `appoinment_id` int(10) UNSIGNED NOT NULL,
  `day` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `starting_time` time NOT NULL,
  `ending_time` time NOT NULL,
  `time_slot` time NOT NULL,
  `break_start` time NOT NULL,
  `break_end` time NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `appoinment_slots`
--

INSERT INTO `appoinment_slots` (`id`, `company_id`, `location_id`, `appoinment_id`, `day`, `starting_time`, `ending_time`, `time_slot`, `break_start`, `break_end`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 'wednesday', '08:00:00', '06:30:00', '00:10:00', '01:00:00', '02:00:00', 0, NULL, '2016-12-21 05:22:15', '2017-01-10 09:17:12'),
(3, 2, 1, 1, 'tuesday', '11:11:11', '11:11:11', '00:05:00', '11:11:11', '11:11:11', 1, NULL, '2016-12-21 06:47:58', '2016-12-21 06:47:58'),
(4, 2, 1, 1, 'friday', '44:44:44', '44:44:44', '44:44:44', '44:44:44', '44:44:44', 1, NULL, '2016-12-21 06:55:32', '2016-12-21 06:55:32'),
(5, 2, 2, 2, 'sunday', '08:00:00', '06:30:00', '00:20:00', '01:00:00', '02:00:00', 1, '2016-12-22 00:49:41', '2016-12-22 00:48:35', '2016-12-22 00:49:41'),
(6, 2, 2, 2, 'friday', '08:00:00', '06:30:00', '00:20:00', '12:50:00', '02:10:00', 0, NULL, '2016-12-22 00:50:26', '2017-01-10 09:27:08'),
(7, 2, 2, 2, 'monday', '01:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 1, NULL, '2016-12-22 02:54:19', '2016-12-22 02:54:19'),
(8, 2, 4, 5, 'monday', '11:11:11', '11:11:11', '11:11:11', '11:11:11', '11:11:11', 1, NULL, '2017-01-10 09:20:12', '2017-01-10 09:21:13'),
(9, 2, 1, 3, 'saturday', '22:22:22', '33:33:33', '11:11:11', '55:55:55', '44:44:44', 1, NULL, '2017-01-10 09:31:22', '2017-01-10 09:32:42'),
(10, 2, 1, 3, 'monday', '22:22:22', '33:33:33', '11:11:11', '55:55:55', '44:44:44', 1, NULL, '2017-01-10 09:34:05', '2017-01-10 09:34:05'),
(11, 2, 1, 3, 'thursday', '08:30:00', '17:30:00', '00:05:00', '13:00:00', '14:00:00', 1, NULL, '2017-01-10 09:34:18', '2017-01-10 09:34:18'),
(12, 2, 1, 7, 'sunday', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', 0, NULL, '2017-01-18 09:07:09', '2017-01-18 09:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `counter_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `queue_id` int(10) UNSIGNED NOT NULL,
  `started_at` timestamp NOT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `waiting_time` time DEFAULT NULL,
  `served_time` time DEFAULT NULL,
  `turn_arround_time` time DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calls`
--

INSERT INTO `calls` (`id`, `company_id`, `location_id`, `service_id`, `counter_id`, `user_id`, `queue_id`, `started_at`, `ended_at`, `waiting_time`, `served_time`, `turn_arround_time`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(37, 2, 1, 3, 1, 1, 66, '2017-01-12 11:50:27', '2017-01-12 11:50:36', '09:20:27', '00:00:09', '07:50:27', 'served', NULL, '2017-01-12 11:50:27', '2017-01-12 11:50:36'),
(38, 2, 1, 3, 1, 1, 67, '2017-01-12 12:06:22', '2017-01-12 12:08:56', '09:36:22', '00:02:34', '08:06:22', 'no show', NULL, '2017-01-12 12:06:22', '2017-01-12 12:08:56'),
(44, 2, 1, 9, 1, 1, 72, '2017-01-13 06:20:16', '2017-01-13 06:24:54', '03:50:16', '00:04:38', '20:20:16', 'served', NULL, '2017-01-13 06:20:16', '2017-01-13 06:24:54'),
(47, 2, 1, 9, 1, 1, 74, '2017-01-13 06:42:48', '2017-01-13 08:55:44', '04:12:48', '02:12:56', '21:42:48', 'served', NULL, '2017-01-13 06:42:48', '2017-01-13 08:55:44'),
(49, 2, 1, 7, 1, 1, 73, '2017-01-13 08:47:38', '2017-01-13 08:48:57', '08:17:38', '00:01:19', '03:47:38', 'served', NULL, '2017-01-13 08:47:38', '2017-01-13 08:48:57'),
(50, 2, 1, 7, 1, 1, 79, '2017-01-13 08:49:03', '2017-01-13 08:57:34', '08:19:03', '00:08:31', '03:49:03', 'served', NULL, '2017-01-13 08:49:03', '2017-01-13 08:57:34'),
(51, 2, 1, 9, 1, 1, 80, '2017-01-13 08:55:50', NULL, '06:25:50', NULL, NULL, NULL, NULL, '2017-01-13 08:55:50', '2017-01-13 08:55:50'),
(52, 2, 1, 7, 1, 1, 81, '2017-01-13 08:57:39', '2017-01-13 08:57:47', '08:27:39', '00:00:08', '03:57:39', 'served', NULL, '2017-01-13 08:57:39', '2017-01-13 08:57:47'),
(53, 2, 1, 7, 1, 1, 84, '2017-01-13 09:22:44', '2017-01-13 09:23:41', '08:52:44', '00:00:57', '04:22:44', 'served', NULL, '2017-01-13 09:22:44', '2017-01-13 09:23:41'),
(54, 2, 1, 3, 1, 1, 90, '2017-01-16 04:52:11', '2017-01-16 10:57:49', '02:22:11', '06:05:38', '17:52:11', 'no show', '2017-01-16 11:01:10', '2017-01-16 04:52:11', '2017-01-16 11:01:10'),
(55, 2, 1, 3, 1, 1, 90, '2017-01-16 04:52:11', NULL, '02:22:11', NULL, NULL, NULL, '2017-01-16 11:01:10', '2017-01-16 04:52:11', '2017-01-16 11:01:10'),
(56, 2, 1, 9, 1, 1, 94, '2017-01-16 05:31:50', '2017-01-16 05:32:15', '03:01:50', '00:00:25', '19:31:50', 'served', NULL, '2017-01-16 05:31:50', '2017-01-16 05:32:15'),
(57, 2, 1, 9, 1, 1, 91, '2017-01-16 05:33:31', '2017-01-16 05:33:43', '03:03:31', '00:00:12', '19:33:31', 'no show', '2017-01-16 09:07:23', '2017-01-16 05:33:31', '2017-01-16 09:07:23'),
(58, 2, 1, 9, 1, 1, 96, '2017-01-16 05:34:12', '2017-01-16 05:35:50', '03:04:12', '00:01:38', '19:34:12', 'served', NULL, '2017-01-16 05:34:12', '2017-01-16 05:35:50'),
(59, 2, 1, 9, 1, 1, 97, '2017-01-16 06:44:24', '2017-01-16 06:44:55', '04:14:24', '00:00:31', '21:44:24', 'no show', '2017-01-16 09:08:09', '2017-01-16 06:44:24', '2017-01-16 09:08:09'),
(60, 2, 1, 9, 1, 1, 98, '2017-01-16 06:47:11', NULL, '04:17:11', NULL, NULL, NULL, NULL, '2017-01-16 06:47:11', '2017-01-16 06:47:11'),
(61, 2, 1, 9, 1, 1, 91, '2017-01-16 09:07:23', '2017-01-16 09:08:02', '06:37:23', '00:00:39', '02:07:23', 'served', NULL, '2017-01-16 09:07:23', '2017-01-16 09:08:02'),
(62, 2, 1, 9, 1, 1, 97, '2017-01-16 09:08:10', '2017-01-16 09:38:21', '06:38:10', '00:30:11', '02:08:10', 'no show', '2017-01-16 09:40:14', '2017-01-16 09:08:10', '2017-01-16 09:40:14'),
(63, 2, 1, 9, 1, 1, 97, '2017-01-16 09:40:14', '2017-01-16 09:57:52', '07:10:14', '00:17:38', '03:40:14', 'served', NULL, '2017-01-16 09:40:14', '2017-01-16 09:57:52'),
(64, 2, 1, 9, 1, 1, 99, '2017-01-16 09:58:14', '2017-01-16 09:59:01', '07:28:14', '00:00:47', '03:58:14', 'served', NULL, '2017-01-16 09:58:14', '2017-01-16 09:59:01'),
(65, 2, 1, 9, 1, 1, 100, '2017-01-16 09:59:10', NULL, '07:29:10', NULL, NULL, NULL, NULL, '2017-01-16 09:59:10', '2017-01-16 10:50:41'),
(66, 2, 1, 9, 1, 1, 102, '2017-01-16 10:05:33', '2017-01-16 10:25:36', '07:35:33', '00:20:03', '04:05:33', 'served', NULL, '2017-01-16 10:05:33', '2017-01-16 10:25:36'),
(67, 2, 1, 9, 1, 1, 101, '2017-01-16 10:26:06', '2017-01-16 10:41:58', '07:56:06', '00:15:52', '04:26:06', 'served', NULL, '2017-01-16 10:26:06', '2017-01-16 10:41:58'),
(68, 2, 1, 3, 1, 1, 90, '2017-01-16 11:01:10', '2017-01-16 11:15:19', '08:31:10', '00:14:09', '06:01:10', 'served', NULL, '2017-01-16 11:01:10', '2017-01-16 11:15:19'),
(69, 2, 1, 3, 1, 1, 92, '2017-01-16 11:15:28', '2017-01-16 11:15:33', '08:45:28', '00:00:05', '06:15:28', 'no show', '2017-01-16 11:15:47', '2017-01-16 11:15:28', '2017-01-16 11:15:47'),
(70, 2, 1, 3, 1, 1, 92, '2017-01-16 11:15:47', '2017-01-16 11:15:56', '08:45:47', '00:00:09', '06:15:47', 'served', NULL, '2017-01-16 11:15:47', '2017-01-16 11:15:56'),
(71, 2, 1, 9, 1, 1, 103, '2017-01-16 11:16:54', '2017-01-16 11:50:00', '08:46:54', '00:33:06', '06:16:54', 'served', NULL, '2017-01-16 11:16:54', '2017-01-16 11:50:00'),
(72, 2, 1, 9, 1, 1, 105, '2017-01-16 11:50:19', NULL, '09:20:19', NULL, NULL, NULL, NULL, '2017-01-16 11:50:19', '2017-01-16 11:50:19'),
(74, 2, 1, 7, 3, 1, 108, '2017-01-18 08:11:12', NULL, '05:41:12', NULL, NULL, NULL, NULL, '2017-01-18 08:11:12', '2017-01-18 08:11:12'),
(75, 2, 1, 9, 1, 1, 109, '2017-01-18 08:31:42', '2017-01-18 08:34:07', '06:01:42', '00:02:25', '01:31:42', 'served', NULL, '2017-01-18 08:31:42', '2017-01-18 08:34:07'),
(78, 2, 1, 9, 1, 1, 110, '2017-01-18 08:35:55', '2017-01-18 08:36:03', '06:05:55', '00:00:08', '01:35:55', 'no show', '2017-01-18 08:38:31', '2017-01-18 08:35:55', '2017-01-18 08:38:31'),
(81, 2, 1, 9, 1, 1, 110, '2017-01-18 08:38:31', '2017-01-18 08:42:12', '06:08:31', '00:03:41', '01:38:31', 'served', NULL, '2017-01-18 08:38:31', '2017-01-18 08:42:12'),
(82, 2, 1, 9, 1, 1, 111, '2017-01-18 08:42:22', '2017-01-18 08:42:33', '06:12:22', '00:00:11', '01:42:22', 'no show', '2017-01-18 08:42:41', '2017-01-18 08:42:22', '2017-01-18 08:42:41'),
(83, 2, 1, 9, 1, 1, 111, '2017-01-18 08:42:41', NULL, '06:12:41', NULL, NULL, NULL, NULL, '2017-01-18 08:42:41', '2017-01-18 08:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `call_details`
--

CREATE TABLE `call_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `counter_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `started_at` timestamp NOT NULL,
  `ended_at` timestamp NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bus_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time_zone` text COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `calendar` tinyint(1) NOT NULL,
  `queue` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `address`, `phone`, `email`, `bus_no`, `time_zone`, `location`, `calendar`, `queue`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'Mrf gk', 'puthan veetil (h), edavanna(po), \r\nkerala,\r\nmalappuram', '9567218249', 'shabeeb@gmail.com', '01', 'Asia/Kolkata', 'malappuram', 1, 1, 1, NULL, '2016-12-15 06:19:54', '2016-12-15 06:29:58'),
(3, 'bata', ' cuvh;owivho;wr\r\nasfhuygliue ', '78965412352958', 'nasif@gmail.com', '002', 'Africa/Abidjan', 'Manjeri', 1, 1, 1, NULL, '2016-12-16 00:19:12', '2016-12-16 00:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `company_id`, `location_id`, `name`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Counter 1', 1, NULL, '2016-12-22 03:39:14', '2017-01-18 06:47:58'),
(2, 2, 2, 'asdsadsad', 1, NULL, '2017-01-10 06:36:38', '2017-01-10 07:53:43'),
(3, 2, 1, 'Counter 3', 1, NULL, '2017-01-16 11:37:13', '2017-01-18 06:48:32'),
(4, 2, 1, 'sdfsdf', 1, '2017-01-16 11:41:26', '2017-01-16 11:39:11', '2017-01-16 11:41:26'),
(5, 2, 1, 'qweqwe', 1, NULL, '2017-01-16 11:42:12', '2017-01-16 11:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `display_settings`
--

CREATE TABLE `display_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `media_mode` text COLLATE utf8_unicode_ci,
  `media_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_on_of` tinyint(1) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `marque_content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `marque_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `marque_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_value` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `display_settings`
--

INSERT INTO `display_settings` (`id`, `company_id`, `location_id`, `media_mode`, `media_type`, `media_location`, `media_on_of`, `popup`, `marque_content`, `marque_color`, `marque_size`, `default_value`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7, 2, 1, 'video', 'upload', 'left', 1, 1, 'JL VIRTUAL QUEUE TOKEN SYSTEM', '#0fbff2', '30', 0, 1, NULL, '2016-12-26 04:11:37', '2017-01-18 09:29:44'),
(8, 2, 1, 'image', 'upload', 'right', 1, 1, 'JL VIRTUAL QUEUE TOKEN SYSTEM', '#0fbff2', '60', 0, 1, NULL, '2016-12-26 04:12:12', '2017-01-18 09:29:44'),
(9, 2, 1, 'video', 'embeded', 'left', 1, 1, 'JL VIRTUAL QUEUE TOKEN SYSTEM', '#0fbff2', '60', 0, 1, NULL, '2016-12-26 04:12:42', '2017-01-18 09:29:44'),
(10, 2, 2, 'video', 'embeded', 'left', 1, 1, 'ardaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '#1c3e72', '24', 1, 1, NULL, '2016-12-27 00:19:17', '2017-01-13 10:51:24'),
(11, 2, 1, 'image', 'embeded', 'left', 1, 1, 'JL VIRTUAL QUEUE TOKEN SYSTEM', '#0fbff2', '55', 0, 1, NULL, '2016-12-27 00:51:57', '2017-01-18 09:41:37'),
(12, 2, 1, 'image', 'embeded', 'left', 0, 0, 'JL VIRTUAL QUEUE TOKEN SYSTEM', '#0fbff2', '60', 1, 1, '2016-12-27 23:17:44', '2016-12-27 02:59:18', '2016-12-27 23:17:44'),
(13, 2, 2, 'image', 'embeded', 'left', 1, 1, 'aaaaaaaaaaaaaaaaaaaaaaaavvvvvvvvvvvvvvvvvvvvvvvvv', '#000000', '28', 0, 1, NULL, '2016-12-27 03:06:37', '2017-01-13 10:51:24'),
(14, 2, 2, 'image', 'upload', 'right', 1, 1, 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', '#661d72', '27', 0, 1, NULL, '2016-12-27 03:07:05', '2017-01-13 10:51:24'),
(15, 2, 2, NULL, NULL, NULL, 0, NULL, 'dddddddddddddddddddddddddddddd', '#1c3e72', '25', 0, 1, '2016-12-27 06:38:00', '2016-12-27 03:07:24', '2016-12-27 06:38:00'),
(16, 2, 4, 'image', 'embeded', 'left', 1, 1, 'fcgfghrdfg', '#000000', '35', 0, 1, NULL, '2016-12-27 03:34:00', '2017-01-13 10:51:24'),
(17, 2, 4, NULL, NULL, NULL, 0, NULL, 'v hbfchfch', '#000000', '30', 0, 1, '2016-12-27 04:16:14', '2016-12-27 03:48:49', '2016-12-27 04:16:14'),
(18, 2, 4, 'No Media', 'Normal Case', '', 0, 0, 'TEDSGHBFEDSNHJGRZFYJMXSYMK', '#ddd', '24', 0, 1, NULL, '2016-12-27 04:15:57', '2017-01-13 10:51:24'),
(19, 2, 4, 'image', 'upload', 'right', 1, 1, 'BGNJAYRMJKY', '#000000', '27', 0, 1, NULL, '2016-12-27 04:17:11', '2017-01-13 10:51:24'),
(20, 2, 4, 'image', 'upload', 'left', 1, 1, 'GDJASRYJMK', '#661d72', '22', 0, 1, NULL, '2016-12-27 04:18:06', '2017-01-13 10:51:24'),
(21, 2, 2, 'image', 'embeded', 'right', 1, 1, 'fdehAJETw', '#000000', '22', 0, 1, NULL, '2016-12-27 06:25:37', '2017-01-13 10:51:24'),
(22, 2, 2, 'image', 'upload', 'left', 1, 1, 'dddddddddddddddddddddddddddddddddd', '#661d72', '24', 0, 1, NULL, '2016-12-27 06:28:16', '2017-01-13 10:51:24'),
(23, 2, 2, NULL, NULL, NULL, 0, NULL, 'bcvbvcbvcb', '#661d72', '21', 0, 1, '2016-12-27 06:44:41', '2016-12-27 06:38:33', '2016-12-27 06:44:41'),
(24, 2, 2, 'No Media', 'Basic Mode', '', 0, 0, 'fbgfdgf', '#661d72', '45', 0, 1, NULL, '2016-12-27 06:45:03', '2017-01-13 10:51:24'),
(25, 2, 2, NULL, NULL, NULL, NULL, NULL, 'JL VIRTUAL QUEUE TOKEN SYSTEM', '#0fbff2', '60', 0, 1, NULL, '2016-12-27 23:18:22', '2017-01-13 10:51:24'),
(26, 2, 1, 'No Media', 'Basic Mode', '', 0, 0, 'JL VIRTUAL QUEUE TOKEN SYSTEM', '#000000', '60', 1, 1, '2016-12-27 23:51:23', '2016-12-27 23:50:58', '2016-12-27 23:51:23'),
(27, 2, 1, 'No Media', 'Basic Mode', '', 0, 0, 'JL VIRTUAL QUEUE TOKEN SYSTEM', '#00bcd4', '60', 0, 1, '2016-12-28 23:09:39', '2016-12-28 22:59:15', '2016-12-28 23:09:39'),
(28, 2, 2, 'No Media', 'Basic Mode', '', 0, 1, 'JL VIRTUAL QUEUE TOKEN SYSTEM', '#00bcd4', '60', 0, 1, NULL, '2016-12-28 23:10:18', '2017-01-13 10:51:24'),
(29, 2, 1, 'No Media', 'Basic Mode', '', 0, 0, 'JL VIRTUAL QUEUE TOK', '#661d72', '60', 1, 1, '2017-01-18 09:30:11', '2017-01-18 09:29:27', '2017-01-18 09:30:11'),
(30, 2, 1, 'No Media', 'Basic Mode', '', 0, 0, 'fsh', '#661d72', '45', 0, 1, '2017-01-18 09:45:02', '2017-01-18 09:44:53', '2017-01-18 09:45:02');

-- --------------------------------------------------------

--
-- Table structure for table `display_setting_details`
--

CREATE TABLE `display_setting_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `display_setting_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `file` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `display_setting_details`
--

INSERT INTO `display_setting_details` (`id`, `company_id`, `location_id`, `display_setting_id`, `name`, `link`, `file`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(40, 2, 1, 8, '', '', '2016-12-26-Chrysanthemum.jpg', 'upload', NULL, '2016-12-26 04:13:39', '2016-12-26 04:13:39'),
(41, 2, 1, 8, '', '', '2016-12-26-Desert.jpg', 'upload', NULL, '2016-12-26 04:13:39', '2016-12-26 04:13:39'),
(42, 2, 1, 8, '', '', '2016-12-26-Hydrangeas.png', 'upload', NULL, '2016-12-26 04:13:39', '2016-12-26 04:13:39'),
(43, 2, 1, 8, '', '', '2016-12-26-Jellyfish.jpg', 'upload', NULL, '2016-12-26 04:13:39', '2016-12-26 04:13:39'),
(44, 2, 1, 8, '', '', '2016-12-26-Koala.jpg', 'upload', NULL, '2016-12-26 04:13:39', '2016-12-26 04:13:39'),
(45, 2, 1, 8, '', '', '2016-12-26-Lighthouse.jpg', 'upload', NULL, '2016-12-26 04:13:39', '2016-12-26 04:13:39'),
(52, 2, 1, 8, '', '', '2016-12-27-download (2).jpg', 'upload', NULL, '2016-12-26 23:44:57', '2016-12-26 23:44:57'),
(53, 2, 1, 8, '', '', '2016-12-27-download (3).jpg', 'upload', NULL, '2016-12-26 23:44:57', '2016-12-26 23:44:57'),
(54, 2, 1, 8, '', '', '2016-12-27-images (5).jpg', 'upload', NULL, '2016-12-26 23:44:57', '2016-12-26 23:44:57'),
(55, 2, 2, 10, '', 'https://www.youtube.com/watch?v=EYWv3mQlrU8', '', 'embeded', '2016-12-27 03:05:51', '2016-12-27 00:27:58', '2016-12-27 03:05:51'),
(56, 2, 1, 11, '', 'C:\\wamp64\\www\\virtualqueue\\public\\uploads\\files\\2016-12-26-06-22-02-Chrysanthemum.jpg', '', 'embeded', '2016-12-27 01:09:56', '2016-12-27 00:59:21', '2016-12-27 01:09:56'),
(57, 2, 1, 11, '', 'C:\\wamp64\\www\\virtualqueue\\public\\uploads\\files\\2016-12-26-06-22-02-Desert.jpg', '', 'embeded', '2016-12-27 01:10:18', '2016-12-27 00:59:21', '2016-12-27 01:10:18'),
(58, 2, 1, 11, '', 'C:\\wamp64\\www\\virtualqueue\\public\\uploads\\files\\2016-12-26-06-22-02-Hydrangeas.png', '', 'embeded', '2016-12-27 01:14:41', '2016-12-27 00:59:21', '2016-12-27 01:14:41'),
(59, 2, 1, 11, '', 'data:image/jpeg;base64,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', '', 'embeded', NULL, '2016-12-27 01:13:48', '2016-12-27 01:13:48'),
(60, 2, 1, 11, '', 'http://2.bp.blogspot.com/-5Z4VfB7sDVs/T-u_Ixwx4uI/AAAAAAAAEqc/GDHoi_OjAXM/s1600/Tiger+3D+Wallpapers+3.jpg', '', 'embeded', NULL, '2016-12-27 01:15:13', '2016-12-27 01:15:13'),
(63, 2, 1, 9, 'football', 'https://www.youtube.com/watch?v=SEzS5R4hU_I', '', 'embeded', '2016-12-27 02:45:37', '2016-12-27 02:36:29', '2016-12-27 02:45:37'),
(64, 2, 1, 9, 'football fight', 'https://www.youtube.com/watch?v=V8JK_iiTmGI', '', 'embeded', '2016-12-27 02:43:56', '2016-12-27 02:42:34', '2016-12-27 02:43:56'),
(65, 2, 1, 9, 'skils', 'https://www.youtube.com/watch?v=1zKVcuvtfXc', '', 'embeded', '2016-12-27 02:47:05', '2016-12-27 02:46:58', '2016-12-27 02:47:05'),
(66, 2, 1, 9, 'skils', 'https://www.youtube.com/watch?v=1zKVcuvtfXc', '', 'embeded', '2016-12-27 02:47:47', '2016-12-27 02:47:40', '2016-12-27 02:47:47'),
(67, 2, 1, 9, 'skils', 'https://www.youtube.com/watch?v=V8JK_iiTmGI', '', 'embeded', '2016-12-27 02:49:28', '2016-12-27 02:49:21', '2016-12-27 02:49:28'),
(68, 2, 2, 10, 'test', 'https://www.youtube.com/watch?v=V8JK_iiTmGI', '', 'embeded', '2016-12-27 06:55:08', '2016-12-27 03:05:42', '2016-12-27 06:55:08'),
(69, 2, 2, 13, NULL, 'https://www.google.co.in/imgres?imgurl=http%3A%2F%2Ffeelgrafix.com%2Fdata%2Fimages%2Fimages-1.jpg&imgrefurl=http%3A%2F%2Ffeelgrafix.com%2Fgroup%2Fimages.html&docid=0Df-wYLNJaaInM&tbnid=fiJ-HZc0KFC-WM%3A&vet=1&w=1140&h=550&bih=794&biw=1440&q=images&ved=0ahUKEwjSvPOm_JPRAhXGuY8KHWkbAh8QMwg2KAYwBg&iact=mrc&uact=8', '', 'embeded', '2016-12-27 03:16:37', '2016-12-27 03:12:21', '2016-12-27 03:16:37'),
(70, 2, 2, 13, NULL, 'https://www.google.co.in/imgres?imgurl=http%3A%2F%2Fwww.freedigitalphotos.net%2Fimages%2Fimg%2Fhomepage%2F87357.jpg&imgrefurl=http%3A%2F%2Fwww.freedigitalphotos.net%2F&docid=-tDkGBr-46jmnM&tbnid=bYyvKiOpalmKVM%3A&vet=1&w=780&h=462&bih=794&biw=1440&q=images&ved=0ahUKEwjSvPOm_JPRAhXGuY8KHWkbAh8QMwg4KAgwCA&iact=mrc&uact=8', '', 'embeded', '2016-12-27 06:35:09', '2016-12-27 03:12:21', '2016-12-27 06:35:09'),
(71, 2, 2, 13, NULL, 'https://www.google.co.in/imgres?imgurl=http%3A%2F%2Fwww.planwallpaper.com%2Fstatic%2Fimages%2Fbeautiful-sunset-images-196063.jpg&imgrefurl=http%3A%2F%2Fwww.planwallpaper.com%2Fimages&docid=z8O4lWNcsz2mNM&tbnid=nI_kP3Nb5lPsuM%3A&vet=1&w=1920&h=1080&bih=794&biw=1440&q=images&ved=0ahUKEwjSvPOm_JPRAhXGuY8KHWkbAh8QMwg5KAkwCQ&iact=mrc&uact=8', '', 'embeded', '2016-12-27 06:35:20', '2016-12-27 03:12:21', '2016-12-27 06:35:20'),
(72, 2, 2, 14, '', '', '2016-12-27-Koala.jpg', 'upload', NULL, '2016-12-27 03:17:07', '2016-12-27 03:17:07'),
(73, 2, 2, 14, '', '', '2016-12-27-Lighthouse.jpg', 'upload', NULL, '2016-12-27 03:17:07', '2016-12-27 03:17:07'),
(74, 2, 2, 13, NULL, 'https://www.google.co.in/imgres?imgurl=http%3A%2F%2Fwww.desktopwallpaperhd.net%2Fwallpapers%2F8%2F3%2Fautumn-background-images-wallpaper-artistic-earth-87571.jpg&imgrefurl=http%3A%2F%2Fwww.desktopwallpaperhd.net%2Fwallpaper-nature-images-artistic-84884.html&docid=vRpfqiJQAE7BrM&tbnid=iBJHFXa4rnAWzM%3A&vet=1&w=1920&h=1200&bih=794&biw=1440&q=images&ved=0ahUKEwjSvPOm_JPRAhXGuY8KHWkbAh8QMwhDKBMwEw&iact=mrc&uact=8', '', 'embeded', '2016-12-27 06:35:32', '2016-12-27 03:22:47', '2016-12-27 06:35:32'),
(75, 2, 2, 13, NULL, 'https://www.google.co.in/imgres?imgurl=http%3A%2F%2Fwww.planwallpaper.com%2Fstatic%2Fimages%2Fbeautiful-sunset-images-196063.jpg&imgrefurl=http%3A%2F%2Fwww.planwallpaper.com%2Fimages&docid=z8O4lWNcsz2mNM&tbnid=nI_kP3Nb5lPsuM%3A&vet=1&w=1920&h=1080&client=firefox-b-ab&bih=789&biw=1440&q=images&ved=0ahUKEwiBpMDcmpTRAhUIuI8KHUN7AUoQMwg5KAkwCQ&iact=mrc&uact=8', '', 'embeded', '2016-12-27 06:35:44', '2016-12-27 03:22:47', '2016-12-27 06:35:44'),
(76, 2, 1, 11, NULL, 'data:image/jpeg;base64,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', '', 'embeded', '2016-12-27 03:33:15', '2016-12-27 03:31:32', '2016-12-27 03:33:15'),
(78, 2, 4, 16, NULL, 'data:image/jpeg;base64,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', '', 'embeded', '2016-12-27 03:46:49', '2016-12-27 03:36:15', '2016-12-27 03:46:49');
INSERT INTO `display_setting_details` (`id`, `company_id`, `location_id`, `display_setting_id`, `name`, `link`, `file`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(79, 2, 4, 16, NULL, 'data:image/jpeg;base64,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', '', 'embeded', '2016-12-27 03:46:28', '2016-12-27 03:46:17', '2016-12-27 03:46:28'),
(80, 2, 4, 16, NULL, 'data:image/jpeg;base64,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', '', 'embeded', NULL, '2016-12-27 03:47:36', '2016-12-27 03:47:36'),
(81, 2, 4, 16, NULL, 'https://www.google.co.in/imgres?imgurl=http%3A%2F%2Fwww.planwallpaper.com%2Fstatic%2Fimages%2Fbeautiful-sunset-images-196063.jpg&imgrefurl=http%3A%2F%2Fwww.planwallpaper.com%2Fimages&docid=z8O4lWNcsz2mNM&tbnid=nI_kP3Nb5lPsuM%3A&vet=1&w=1920&h=1080&client=firefox-b-ab&bih=789&biw=1440&q=images&ved=0ahUKEwiBpMDcmpTRAhUIuI8KHUN7AUoQMwg5KAkwCQ&iact=mrc&uact=8', '', 'embeded', NULL, '2016-12-27 03:47:49', '2016-12-27 03:47:49'),
(82, 2, 2, 21, NULL, 'https://www.google.co.in/imgres?imgurl=http%3A%2F%2Fwww.planwallpaper.com%2Fstatic%2Fimages%2Fstunning-images-of-the-space.jpg&imgrefurl=http%3A%2F%2Fwww.planwallpaper.com%2Fcool-images-hd&docid=uEuGRXfQl5vfRM&tbnid=Bpo9nb9C0pdX0M%3A&vet=1&w=640&h=480&bih=794&biw=1440&q=images&ved=0ahUKEwjSvPOm_JPRAhXGuY8KHWkbAh8QMwhBKBEwEQ&iact=mrc&uact=8', '', 'embeded', '2016-12-27 06:26:42', '2016-12-27 06:26:19', '2016-12-27 06:26:42'),
(83, 2, 2, 21, NULL, 'https://www.google.co.in/imgres?imgurl=https%3A%2F%2Fwww.dreamhost.com%2Fblog%2Fwp-content%2Fuploads%2F2015%2F10%2FDHC_blog-image-01-300x300.jpg&imgrefurl=https%3A%2F%2Fwww.dreamhost.com%2Fblog%2F2015%2F10%2F08%2Fcreating-images-for-dreamcompute%2F&docid=fU0ljiLy8P2LzM&tbnid=Jkc7n3vJZscB1M%3A&vet=1&w=300&h=300&bih=794&biw=1440&q=images&ved=0ahUKEwjSvPOm_JPRAhXGuY8KHWkbAh8QMwhUKBkwGQ&iact=mrc&uact=8', '', 'embeded', '2016-12-27 06:26:30', '2016-12-27 06:26:19', '2016-12-27 06:26:30'),
(84, 2, 2, 21, NULL, 'http://7606-presscdn-0-74.pagely.netdna-cdn.com/wp-content/uploads/2016/03/Dubai-Photos-Images-Photos-of-Dubai-800x600.jpg', '', 'embeded', NULL, '2016-12-27 06:27:01', '2016-12-27 06:27:01'),
(85, 2, 2, 21, NULL, 'https://3.bp.blogspot.com/-kUfmQyIzFHI/VsWYZEI2C8I/AAAAAAAAAFE/pYToDDB2a_wlWWqzYrbtiy5W5jQljFNQw/s1600/holi%2Bimages%2B12.jpg', '', 'embeded', NULL, '2016-12-27 06:27:22', '2016-12-27 06:27:22'),
(86, 2, 2, 22, '', '', '2016-12-27-download (1).jpg', 'upload', '2016-12-27 06:33:20', '2016-12-27 06:28:51', '2016-12-27 06:33:20'),
(87, 2, 2, 22, '', '', '2016-12-27-download.png', 'upload', NULL, '2016-12-27 06:28:51', '2016-12-27 06:28:51'),
(88, 2, 2, 22, '', '', '2016-12-27-images (1).jpg', 'upload', '2016-12-27 06:33:33', '2016-12-27 06:28:51', '2016-12-27 06:33:33'),
(89, 2, 2, 22, '', '', '2016-12-27-download.jpg', 'upload', NULL, '2016-12-27 06:34:06', '2016-12-27 06:34:06'),
(90, 2, 2, 22, '', '', '2016-12-27-images.png', 'upload', NULL, '2016-12-27 06:34:07', '2016-12-27 06:34:07'),
(91, 2, 2, 13, NULL, 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ3_zMIVq2JTgd1oZJfOUc34DVQs0lhpjOF-wSsZtXHrLQgQ1mY', '', 'embeded', NULL, '2016-12-27 06:36:58', '2016-12-27 06:36:58'),
(92, 2, 2, 13, NULL, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6EqnQdM6aM48qIfeH_FzJBqnliBOskTpDOz3X_100obRxchLC', '', 'embeded', NULL, '2016-12-27 06:36:58', '2016-12-27 06:36:58'),
(93, 2, 2, 10, 'Youtube', 'https://www.youtube.com/embed/UJZ4xiDP-hs?listType=playlist&list=PLfwSdROuDVfZWGEkaHO4pxtwkqDHwhRwn&loop=1&autoplay=1', '', 'embeded', NULL, '2016-12-27 07:22:13', '2016-12-27 07:22:13'),
(94, 2, 1, 9, 'test 1', 'https://www.youtube.com/watch?v=9mIINnmLWnA', '', 'embeded', '2016-12-27 23:48:14', '2016-12-27 22:45:13', '2016-12-27 23:48:14'),
(95, 2, 1, 9, 'Youtube', 'https://www.youtube.com/embed/UJZ4xiDP-hs?listType=playlist&list=PLfwSdROuDVfZWGEkaHO4pxtwkqDHwhRwn&loop=1&autoplay=1', '', 'embeded', NULL, '2016-12-27 23:48:47', '2016-12-27 23:48:47'),
(96, 2, 1, 8, '', '', '2017-01-18-download (1).png', 'upload', '2017-01-18 09:39:09', '2017-01-18 09:38:59', '2017-01-18 09:39:09'),
(97, 2, 1, 9, 'test', 'https://www.youtube.com/watch?v=XQWULJFHq9c', '', 'embeded', '2017-01-18 09:41:00', '2017-01-18 09:40:51', '2017-01-18 09:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `when_send` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `time_zone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sms_notification` tinyint(1) NOT NULL,
  `email_notification` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `company_id`, `location_id`, `time_zone`, `sms_notification`, `email_notification`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Africa/Accra', 1, 1, NULL, '2016-12-15 06:19:54', '2017-01-18 07:30:56'),
(2, 2, 2, 'Africa/Abidjan', 1, 1, NULL, '2016-12-15 06:28:49', '2016-12-15 06:28:49'),
(3, 3, 3, 'Africa/Abidjan', 1, 1, NULL, '2016-12-16 00:19:13', '2016-12-16 00:19:13'),
(4, 2, 4, 'Africa/Abidjan', 1, 1, NULL, '2016-12-21 01:24:32', '2016-12-21 01:24:32'),
(7, 2, 7, 'Africa/Abidjan', 1, 1, NULL, '2017-01-19 07:19:07', '2017-01-19 07:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `holiday_settings`
--

CREATE TABLE `holiday_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holiday_settings`
--

INSERT INTO `holiday_settings` (`id`, `company_id`, `location_id`, `day`, `date`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(29, 2, 1, 'Sunday', NULL, 'normal holiday', NULL, '2017-01-19 06:41:30', '2017-01-19 06:41:59'),
(30, 2, 1, '', '2017-01-29', 'special holiday', NULL, '2017-01-19 06:49:36', '2017-01-19 06:56:19'),
(31, 2, 1, '', '2017-01-19', 'special holiday', '2017-01-19 07:00:46', '2017-01-19 06:55:53', '2017-01-19 07:00:46'),
(32, 2, 1, '', '2017-01-19', 'special holiday', '2017-01-19 07:06:27', '2017-01-19 07:06:19', '2017-01-19 07:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bus_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `starting_time` time DEFAULT NULL,
  `ending_time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `company_id`, `address`, `phone`, `email`, `bus_no`, `location`, `longitude`, `latitude`, `starting_time`, `ending_time`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'puthan veetil (h), edavanna(po), \r\nkerala,\r\nmalappuram', '9567218249', 'shabeeb@gmail.com', '01', 'malappuram', 1.235684, 2.25631, '08:05:06', '20:00:00', 1, NULL, '2016-12-15 06:19:54', '2017-01-18 07:46:55'),
(2, 2, 'frditgoiuho\r\njnhgilu ', '7896541235', 'nisahd@gmail.com', '4', 'areacode', 485652, 215555, '08:05:00', '20:00:00', 0, NULL, '2016-12-15 06:28:48', '2017-01-19 04:34:24'),
(3, 3, ' cuvh;owivho;wr\r\nasfhuygliue ', '78965412352958', 'nasif@gmail.com', '002', 'Manjeri', 1.4586521, 4.15264, NULL, NULL, 1, NULL, '2016-12-16 00:19:13', '2016-12-16 00:19:13'),
(4, 2, ' sdgwrgwregh', '78965412365', 'test@gmail.com', '01', 'test', 1235.78, 521.78956, NULL, NULL, 1, NULL, '2016-12-21 01:24:31', '2016-12-21 01:38:56'),
(7, 2, '   wrg', '9567218888', 'fasil@gmail.com', '06', 'nilambure', 2.0051, 10.556, NULL, NULL, 1, NULL, '2017-01-19 07:19:06', '2017-01-19 08:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_09_17_055420_create_users_table', 1),
(2, '2016_11_29_074224_create_table_companies', 1),
(3, '2016_11_29_075737_create_table_locations', 1),
(4, '2016_11_29_075853_create_table_services', 1),
(5, '2016_11_29_075926_create_table_counters', 1),
(8, '2016_11_29_080146_create_table_queues', 1),
(10, '2016_11_29_092721_create_table_service_details', 1),
(11, '2016_11_29_092804_create_table_queue_service_details', 1),
(12, '2016_11_30_040942_create_table_sms_settings', 1),
(13, '2016_11_30_042809_create_table_general_settings', 1),
(14, '2016_11_30_042901_create_table_email_settings', 1),
(16, '2016_11_30_053447_create_table_holiyday_settings', 1),
(17, '2016_11_30_072614_create_table_appoinments', 1),
(18, '2016_11_30_072656_create_table_appoinment_details', 1),
(19, '2016_11_30_072748_create_table_appoinment_slots', 1),
(20, '2016_11_30_072838_create_table_queue_appoinments', 1),
(21, '2016_11_30_072924_create_table_queue_appoinment_details', 1),
(24, '2016_12_05_095159_create_table_admins', 2),
(28, '2016_11_30_042938_create_table_display_settings', 3),
(29, '2016_12_24_065954_create_table_display_setting_details', 3),
(30, '2016_12_24_072453_set_all_foreign_keys', 3),
(33, '2016_11_29_075953_create_table_calls', 4),
(34, '2016_11_29_080028_create_table_call_details', 5),
(35, '2016_11_29_090610_create_table_queue_details', 5),
(36, '2017_01_11_102838_create_table_service_time_settings', 5),
(37, '2017_01_11_102946_srforeign_key', 5);

-- --------------------------------------------------------

--
-- Table structure for table `queues`
--

CREATE TABLE `queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `letter` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `called` tinyint(1) NOT NULL,
  `transferd` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `queues`
--

INSERT INTO `queues` (`id`, `company_id`, `location_id`, `service_id`, `number`, `letter`, `phone`, `called`, `transferd`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(46, 2, 1, 3, 789, 'tst', '786969656666', 0, 0, 0, NULL, '2017-01-05 07:04:51', '2017-01-05 07:04:51'),
(50, 2, 1, 1, 100, 's1', '9567218267', 0, 0, 1, NULL, '2017-01-06 01:40:06', '2017-01-06 03:41:04'),
(51, 2, 1, 1, 101, 's1', '78945565', 0, 0, 1, NULL, '2017-01-06 01:41:44', '2017-01-06 03:41:12'),
(52, 2, 1, 1, 102, 's1', '675756', 0, 0, 0, NULL, '2017-01-06 01:43:05', '2017-01-06 01:43:05'),
(53, 2, 1, 1, 100, 's1', '7896541236', 0, 0, 0, NULL, '2017-01-06 23:49:57', '2017-01-07 06:06:14'),
(54, 2, 1, 1, 100, 's1', '989898959636', 1, 0, 0, NULL, '2017-01-08 20:30:00', '2017-01-09 10:49:11'),
(55, 2, 1, 1, 101, 's1', '8969369563', 1, 0, 0, NULL, '2017-01-08 23:27:23', '2017-01-09 11:26:25'),
(56, 2, 1, 1, 102, 's1', '1223345667789', 1, 0, 0, NULL, '2017-01-09 09:34:25', '2017-01-09 12:18:30'),
(57, 2, 1, 3, 103, 'tst', '65159415', 1, 0, 0, NULL, '2017-01-09 12:20:28', '2017-01-09 12:20:46'),
(58, 2, 1, 3, 789, 'tst', '9898959693', 1, 0, 0, NULL, '2017-01-10 04:10:33', '2017-01-10 12:19:26'),
(59, 2, 1, 3, 789, 'tst', '9895969369', 1, 0, 0, NULL, '2017-01-11 04:23:37', '2017-01-11 04:24:11'),
(60, 2, 1, 9, 4000, 'A', '95967258284', 1, 0, 0, NULL, '2017-01-12 06:26:20', '2017-01-12 06:28:18'),
(61, 2, 1, 9, 4001, 'A', '9895969325', 0, 0, 0, NULL, '2017-01-12 06:30:00', '2017-01-12 06:30:07'),
(66, 2, 1, 3, 4002, 'tst', '9746391096', 1, 0, 0, NULL, '2017-01-12 11:50:21', '2017-01-12 11:50:27'),
(67, 2, 1, 3, 4003, 'tst', '487897487', 1, 0, 0, NULL, '2017-01-12 12:06:12', '2017-01-12 12:06:22'),
(72, 2, 1, 9, 4000, 'A', '789654123', 1, 0, 0, NULL, '2017-01-13 06:16:02', '2017-01-13 06:20:16'),
(73, 2, 1, 7, 5000, 's11', '9895962356', 1, 0, 0, NULL, '2017-01-13 06:16:23', '2017-01-13 08:47:38'),
(74, 2, 1, 9, 4001, 'A', '969339596', 1, 0, 0, NULL, '2017-01-13 06:16:48', '2017-01-13 06:42:48'),
(79, 2, 1, 7, 5001, 's11', '9567218248', 1, NULL, 0, NULL, '2017-01-13 08:48:40', '2017-01-13 08:49:03'),
(80, 2, 1, 9, 5001, 's11', '9567218248', 1, 1, 0, NULL, '2017-01-13 08:49:09', '2017-01-13 08:55:51'),
(81, 2, 1, 7, 5001, 's11', '9567218248', 1, 1, 0, NULL, '2017-01-13 08:56:07', '2017-01-13 08:57:39'),
(82, 2, 1, 9, 5001, 's11', '9567218248', 0, 1, 0, NULL, '2017-01-13 09:04:10', '2017-01-13 09:04:10'),
(83, 2, 1, 9, 5001, 's11', '9567218248', 0, 1, 0, NULL, '2017-01-13 09:05:45', '2017-01-13 09:05:45'),
(84, 2, 1, 7, 5001, 's11', '9567218248', 1, 1, 0, NULL, '2017-01-13 09:06:03', '2017-01-13 09:22:44'),
(85, 2, 1, 9, 4000, 'A', '8489498498', 0, 0, 0, NULL, '2017-01-14 08:03:00', '2017-01-14 08:03:00'),
(86, 2, 1, 7, 5000, 's11', '9746391096', 0, 0, 0, NULL, '2017-01-14 08:06:03', '2017-01-14 08:06:03'),
(87, 2, 1, 7, 5001, 's11', '897979879879', 0, 0, 0, NULL, '2017-01-14 08:07:08', '2017-01-14 08:07:08'),
(88, 2, 1, 9, 4001, 'A', '4789789897897', 0, 0, 0, NULL, '2017-01-14 08:07:46', '2017-01-14 08:07:46'),
(89, 2, 1, 7, 5002, 's11', '75564', 0, 0, 0, NULL, '2017-01-14 08:08:13', '2017-01-14 08:08:13'),
(90, 2, 1, 3, 789, 'tst', '9746391096', 1, 0, 0, NULL, '2017-01-16 04:52:03', '2017-01-16 11:01:10'),
(91, 2, 1, 9, 4000, 'A', '96939895928', 1, 0, 0, NULL, '2017-01-16 04:53:06', '2017-01-16 09:07:23'),
(92, 2, 1, 3, 790, 'tst', '7896541233', 1, 0, 0, NULL, '2017-01-16 04:53:21', '2017-01-16 11:15:47'),
(93, 2, 1, 3, 791, 'tst', '873', 0, 0, 0, NULL, '2017-01-16 04:53:55', '2017-01-16 04:53:55'),
(94, 2, 1, 9, 4001, 'A', '857965', 1, 0, 0, NULL, '2017-01-16 04:55:03', '2017-01-16 05:31:50'),
(95, 2, 1, 3, 792, 'tst', '8965321245', 0, 0, 1, NULL, '2017-01-16 04:55:23', '2017-01-16 05:30:15'),
(96, 2, 1, 9, 4002, 'A', '87895623', 1, 0, 0, NULL, '2017-01-16 04:55:45', '2017-01-16 05:34:12'),
(97, 2, 1, 9, 4003, 'A', '9', 1, 0, 0, NULL, '2017-01-16 06:43:54', '2017-01-16 09:40:15'),
(98, 2, 1, 9, 4004, 'A', '80', 1, 0, 0, NULL, '2017-01-16 06:44:01', '2017-01-16 06:47:11'),
(99, 2, 1, 9, 4005, 'A', '5', 1, 0, 1, NULL, '2017-01-16 06:44:09', '2017-01-16 09:58:14'),
(100, 2, 1, 9, 4006, 'A', '5681651205', 1, 0, 1, NULL, '2017-01-16 09:38:01', '2017-01-16 09:59:10'),
(101, 2, 1, 9, 4007, 'A', '78945621312', 1, 0, 0, NULL, '2017-01-16 10:00:37', '2017-01-16 10:26:06'),
(102, 2, 1, 9, 4008, 'A', '8129639562', 1, 0, 0, NULL, '2017-01-16 10:01:27', '2017-01-16 10:05:33'),
(103, 2, 1, 9, 4009, 'A', '8965321245', 1, 0, 0, NULL, '2017-01-16 10:32:09', '2017-01-16 11:16:54'),
(104, 2, 1, 9, 4010, 'A', '9567218248', 0, 0, 1, NULL, '2017-01-16 10:32:18', '2017-01-16 11:50:11'),
(105, 2, 1, 9, 4011, 'A', '87895623', 1, 0, 0, NULL, '2017-01-16 10:41:34', '2017-01-16 11:50:19'),
(106, 2, 1, 9, 4012, 'A', '969339596', 0, 0, 0, NULL, '2017-01-16 10:41:42', '2017-01-16 10:41:42'),
(107, 2, 1, 9, 4013, 'A', '1536123', 0, 0, 0, NULL, '2017-01-16 10:52:30', '2017-01-16 10:52:30'),
(108, 2, 1, 7, 5000, 's11', '9567218248', 0, 0, 0, NULL, '2017-01-18 08:07:36', '2017-01-18 08:11:12'),
(109, 2, 1, 9, 4000, 'A', '9567218248', 1, 0, 0, NULL, '2017-01-18 08:21:34', '2017-01-18 08:31:42'),
(110, 2, 1, 9, 4001, 'A', '9', 1, 0, 0, NULL, '2017-01-18 08:21:41', '2017-01-18 08:38:31'),
(111, 2, 1, 9, 4002, 'A', '8129639562', 1, 0, 0, NULL, '2017-01-18 08:41:59', '2017-01-18 08:42:41'),
(112, 2, 1, 9, 4003, 'A', '789546', 0, 0, 0, NULL, '2017-01-18 09:23:14', '2017-01-18 09:23:14');

-- --------------------------------------------------------

--
-- Table structure for table `queue_appoinments`
--

CREATE TABLE `queue_appoinments` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `appoinment_id` int(10) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `queue_appoinment_details`
--

CREATE TABLE `queue_appoinment_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `queue_appoinment_id` int(10) UNSIGNED NOT NULL,
  `appoinment_id` int(10) UNSIGNED NOT NULL,
  `appoinment_details_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `queue_details`
--

CREATE TABLE `queue_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `queue_service_details`
--

CREATE TABLE `queue_service_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `queue_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `queue_service_details`
--

INSERT INTO `queue_service_details` (`id`, `company_id`, `location_id`, `queue_id`, `service_id`, `name`, `value`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(108, 2, 1, 50, 1, 'name', 'fdbhefdr', 'text', NULL, '2017-01-06 01:40:06', '2017-01-06 01:40:06'),
(109, 2, 1, 50, 1, 'Remarks', 'shbrfdse', 'textarea', NULL, '2017-01-06 01:40:06', '2017-01-06 01:40:06'),
(110, 2, 1, 50, 1, 'Today Date', '2017/01/10', 'date', NULL, '2017-01-06 01:40:06', '2017-01-06 01:40:06'),
(111, 2, 1, 50, 1, 'gender', 'female', 'select', NULL, '2017-01-06 01:40:06', '2017-01-06 01:40:06'),
(112, 2, 1, 50, 1, 'studied', 'yes', 'radio', NULL, '2017-01-06 01:40:06', '2017-01-06 01:40:06'),
(113, 2, 1, 50, 1, 'Programing language', '[".net"]', 'checkbox', NULL, '2017-01-06 01:40:06', '2017-01-06 01:40:06'),
(114, 2, 1, 51, 1, 'name', 'gfj', 'text', NULL, '2017-01-06 01:41:44', '2017-01-06 01:41:44'),
(115, 2, 1, 51, 1, 'Remarks', 'jhg', 'textarea', NULL, '2017-01-06 01:41:44', '2017-01-06 01:41:44'),
(116, 2, 1, 51, 1, 'Today Date', '2017/01/05', 'date', NULL, '2017-01-06 01:41:44', '2017-01-06 01:41:44'),
(117, 2, 1, 51, 1, 'gender', 'male', 'select', NULL, '2017-01-06 01:41:44', '2017-01-06 01:41:44'),
(118, 2, 1, 51, 1, 'studied', 'yes', 'radio', NULL, '2017-01-06 01:41:44', '2017-01-06 01:41:44'),
(119, 2, 1, 51, 1, 'Programing language', '["php","c#"]', 'checkbox', NULL, '2017-01-06 01:41:44', '2017-01-06 01:41:44'),
(120, 2, 1, 52, 1, 'name', 'hdfghg', 'text', NULL, '2017-01-06 01:43:05', '2017-01-06 01:43:05'),
(121, 2, 1, 52, 1, 'Remarks', 'fgh', 'textarea', NULL, '2017-01-06 01:43:05', '2017-01-06 01:43:05'),
(122, 2, 1, 52, 1, 'Today Date', '2017/01/05', 'date', NULL, '2017-01-06 01:43:05', '2017-01-06 01:43:05'),
(123, 2, 1, 52, 1, 'gender', 'male', 'select', NULL, '2017-01-06 01:43:05', '2017-01-06 01:43:05'),
(124, 2, 1, 52, 1, 'studied', 'no', 'radio', NULL, '2017-01-06 01:43:05', '2017-01-06 01:43:05'),
(125, 2, 1, 52, 1, 'Programing language', '["php","c#"]', 'checkbox', NULL, '2017-01-06 01:43:05', '2017-01-06 01:43:05'),
(126, 2, 1, 53, 1, 'name', 'fsdhg', 'text', NULL, '2017-01-06 23:49:57', '2017-01-06 23:49:57'),
(127, 2, 1, 53, 1, 'Remarks', 'wsrg', 'textarea', NULL, '2017-01-06 23:49:57', '2017-01-06 23:49:57'),
(128, 2, 1, 53, 1, 'Today Date', '2017/01/75', 'date', NULL, '2017-01-06 23:49:57', '2017-01-06 23:49:57'),
(129, 2, 1, 53, 1, 'gender', 'male', 'select', NULL, '2017-01-06 23:49:57', '2017-01-06 23:49:57'),
(130, 2, 1, 53, 1, 'studied', 'yes', 'radio', NULL, '2017-01-06 23:49:57', '2017-01-06 23:49:57'),
(131, 2, 1, 53, 1, 'Programing language', '["php","java"]', 'checkbox', NULL, '2017-01-06 23:49:57', '2017-01-06 23:49:57'),
(132, 2, 1, 54, 1, 'name', 'sfgrg', 'text', NULL, '2017-01-08 23:26:42', '2017-01-08 23:26:42'),
(133, 2, 1, 54, 1, 'Remarks', 'erhe', 'textarea', NULL, '2017-01-08 23:26:42', '2017-01-08 23:26:42'),
(134, 2, 1, 54, 1, 'Today Date', '09/01/2017', 'date', NULL, '2017-01-08 23:26:42', '2017-01-08 23:26:42'),
(135, 2, 1, 54, 1, 'gender', 'male', 'select', NULL, '2017-01-08 23:26:42', '2017-01-08 23:26:42'),
(136, 2, 1, 54, 1, 'studied', 'yes', 'radio', NULL, '2017-01-08 23:26:43', '2017-01-08 23:26:43'),
(137, 2, 1, 54, 1, 'Programing language', '["php",".net"]', 'checkbox', NULL, '2017-01-08 23:26:43', '2017-01-08 23:26:43'),
(138, 2, 1, 55, 1, 'name', 'hulytkry', 'text', NULL, '2017-01-08 23:27:23', '2017-01-08 23:27:23'),
(139, 2, 1, 55, 1, 'Remarks', 'ykrf', 'textarea', NULL, '2017-01-08 23:27:23', '2017-01-08 23:27:23'),
(140, 2, 1, 55, 1, 'Today Date', '04/01/2017', 'date', NULL, '2017-01-08 23:27:23', '2017-01-08 23:27:23'),
(141, 2, 1, 55, 1, 'gender', 'female', 'select', NULL, '2017-01-08 23:27:23', '2017-01-08 23:27:23'),
(142, 2, 1, 55, 1, 'studied', 'no', 'radio', NULL, '2017-01-08 23:27:23', '2017-01-08 23:27:23'),
(143, 2, 1, 55, 1, 'Programing language', '["c#","java"]', 'checkbox', NULL, '2017-01-08 23:27:23', '2017-01-08 23:27:23'),
(144, 2, 1, 56, 1, 'name', 'sfb', 'text', NULL, '2017-01-09 09:34:25', '2017-01-09 09:34:25'),
(145, 2, 1, 56, 1, 'Remarks', 'sb', 'textarea', NULL, '2017-01-09 09:34:25', '2017-01-09 09:34:25'),
(146, 2, 1, 56, 1, 'Today Date', '2017/01/05', 'date', NULL, '2017-01-09 09:34:25', '2017-01-09 09:34:25'),
(147, 2, 1, 56, 1, 'gender', 'male', 'select', NULL, '2017-01-09 09:34:26', '2017-01-09 09:34:26'),
(148, 2, 1, 56, 1, 'studied', 'no', 'radio', NULL, '2017-01-09 09:34:26', '2017-01-09 09:34:26'),
(149, 2, 1, 56, 1, 'Programing language', '["c#",".net"]', 'checkbox', NULL, '2017-01-09 09:34:26', '2017-01-09 09:34:26'),
(152, 2, 1, 73, 7, 'fdsgbae', 'ggggggggggggggggggg', 'text', NULL, '2017-01-13 06:16:23', '2017-01-13 06:16:23'),
(153, 2, 1, 73, 7, 'detg', 'dgn', 'select', NULL, '2017-01-13 06:16:23', '2017-01-13 06:16:23'),
(157, 2, 1, 79, 7, 'fdsgbae', 'ggggggggggggggggggg', 'text', NULL, '2017-01-13 08:48:40', '2017-01-13 08:48:40'),
(158, 2, 1, 79, 7, 'detg', 'dgn', 'select', NULL, '2017-01-13 08:48:40', '2017-01-13 08:48:40'),
(159, 2, 1, 79, 7, 'languages', '["c#","php"]', 'checkbox', NULL, '2017-01-13 08:48:40', '2017-01-13 08:48:40'),
(160, 2, 1, 86, 7, 'fdsgbae', 'ggggggggggggggggggg', 'text', NULL, '2017-01-14 08:06:03', '2017-01-14 08:06:03'),
(161, 2, 1, 86, 7, 'detg', 'dfbn', 'select', NULL, '2017-01-14 08:06:03', '2017-01-14 08:06:03'),
(162, 2, 1, 86, 7, 'languages', '["c"]', 'checkbox', NULL, '2017-01-14 08:06:03', '2017-01-14 08:06:03'),
(163, 2, 1, 87, 7, 'fdsgbae', 'ggggggggggggggggggg', 'text', NULL, '2017-01-14 08:07:08', '2017-01-14 08:07:08'),
(164, 2, 1, 87, 7, 'detg', 'dgn', 'select', NULL, '2017-01-14 08:07:08', '2017-01-14 08:07:08'),
(165, 2, 1, 87, 7, 'languages', '["c","c#"]', 'checkbox', NULL, '2017-01-14 08:07:08', '2017-01-14 08:07:08'),
(166, 2, 1, 89, 7, 'fdsgbae', 'ggggggggggggggggggg', 'text', NULL, '2017-01-14 08:08:13', '2017-01-14 08:08:13'),
(167, 2, 1, 89, 7, 'detg', 'dgn', 'select', NULL, '2017-01-14 08:08:13', '2017-01-14 08:08:13'),
(168, 2, 1, 89, 7, 'languages', '["c#"]', 'checkbox', NULL, '2017-01-14 08:08:14', '2017-01-14 08:08:14'),
(169, 2, 1, 108, 7, 'fdsgbae', 'ggggggggggggggggggg', 'text', NULL, '2017-01-18 08:07:36', '2017-01-18 08:07:36'),
(170, 2, 1, 108, 7, 'detg', 'dfbn', 'select', NULL, '2017-01-18 08:07:36', '2017-01-18 08:07:36'),
(171, 2, 1, 108, 7, 'languages', '["c",".net"]', 'checkbox', NULL, '2017-01-18 08:07:36', '2017-01-18 08:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `letter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `waiting_time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `company_id`, `location_id`, `name`, `letter`, `number`, `type`, `waiting_time`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'service1', 's1', 100, 'advanced service', '00:00:00', 1, NULL, '2016-12-17 01:12:09', '2017-01-09 06:54:54'),
(2, 2, 1, 'm service 2', 'ms2', 2000, 'advanced service', NULL, 1, NULL, '2016-12-17 04:05:04', '2016-12-21 01:47:29'),
(3, 2, 1, 'Test loc1', 'tst', 789, 'simple service', NULL, 1, NULL, '2016-12-21 01:44:11', '2017-01-12 06:16:10'),
(4, 2, 2, 'Service 10', 'A', 250, 'advanced service', NULL, 1, NULL, '2016-12-28 06:07:19', '2016-12-28 06:07:19'),
(5, 2, 4, 'test service', 'ts', 8000, 'advanced service', NULL, 1, NULL, '2016-12-30 00:41:09', '2016-12-30 00:41:09'),
(6, 2, 4, 'test 4', 's', 300, 'advanced service', NULL, 1, NULL, '2017-01-01 23:36:04', '2017-01-01 23:36:04'),
(7, 2, 1, 'service111', 's11', 5000, 'advanced service', NULL, 1, NULL, '2017-01-07 03:29:32', '2017-01-07 03:29:32'),
(8, 2, 2, 'hhh kk', 'h', 400, 'simple service', '00:00:00', 1, NULL, '2017-01-10 08:15:55', '2017-01-10 11:16:25'),
(9, 2, 1, 'Dr Ameen', 'A', 4000, 'simple service', NULL, 1, NULL, '2017-01-10 12:36:04', '2017-01-10 12:36:04'),
(10, 2, 1, 'service 100', 'Sr', 70000, 'advanced service', NULL, 1, NULL, '2017-01-18 08:47:01', '2017-01-18 08:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `service_details`
--

CREATE TABLE `service_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_details`
--

INSERT INTO `service_details` (`id`, `company_id`, `location_id`, `service_id`, `name`, `type`, `default_value`, `value`, `required`, `deleted_at`, `created_at`, `updated_at`) VALUES
(64, 2, 1, 1, 'name', 'text', '', '', 1, '2017-01-10 11:38:46', '2017-01-04 05:17:06', '2017-01-10 11:38:46'),
(65, 2, 1, 1, 'Remarks', 'textarea', '', '', 1, '2017-01-10 11:38:46', '2017-01-04 05:17:06', '2017-01-10 11:38:46'),
(66, 2, 1, 1, 'Today Date', 'date', '', '', 1, '2017-01-10 11:38:46', '2017-01-04 05:17:06', '2017-01-10 11:38:46'),
(67, 2, 1, 1, 'gender', 'select', '', '["male","female"]', 1, '2017-01-10 11:38:46', '2017-01-04 05:17:06', '2017-01-10 11:38:46'),
(68, 2, 1, 1, 'studied', 'radio', '', '["yes","no"]', 1, '2017-01-10 11:38:46', '2017-01-04 05:17:06', '2017-01-10 11:38:46'),
(69, 2, 1, 1, 'Programing language', 'checkbox', '', '["php","c#","java",".net"]', 1, '2017-01-10 11:38:46', '2017-01-04 05:17:06', '2017-01-10 11:38:46'),
(70, 2, 2, 4, 'name', 'text', '', '', 0, '2017-01-10 11:19:30', '2017-01-04 06:17:45', '2017-01-10 11:19:30'),
(71, 2, 2, 4, 'name', 'text', '', '', 0, '2017-01-10 11:19:30', '2017-01-04 06:17:45', '2017-01-10 11:19:30'),
(72, 2, 2, 4, 'name', 'text', '', '', 1, '2017-01-10 11:19:30', '2017-01-04 06:17:46', '2017-01-10 11:19:30'),
(73, 2, 2, 4, 'name', 'text', '', '', 1, '2017-01-10 11:19:30', '2017-01-04 06:17:46', '2017-01-10 11:19:30'),
(74, 2, 2, 4, 'name', 'text', '', '', 1, '2017-01-10 11:19:30', '2017-01-04 06:17:46', '2017-01-10 11:19:30'),
(75, 2, 2, 4, 'name', 'text', '', '', 1, '2017-01-10 11:19:30', '2017-01-04 06:17:46', '2017-01-10 11:19:30'),
(76, 2, 2, 4, 'name', 'text', '', '', 1, '2017-01-10 11:19:30', '2017-01-04 06:17:46', '2017-01-10 11:19:30'),
(77, 2, 2, 4, 'name', 'text', '', '', 1, '2017-01-10 11:19:30', '2017-01-04 06:17:46', '2017-01-10 11:19:30'),
(78, 2, 1, 7, 'fdsgbae', 'text', '', '', 1, '2017-01-12 04:54:40', '2017-01-10 10:25:08', '2017-01-12 04:54:40'),
(79, 2, 1, 7, 'detg', 'select', '', '["dgn","dfbn"]', 1, '2017-01-12 04:54:40', '2017-01-10 10:25:08', '2017-01-12 04:54:40'),
(80, 2, 2, 4, 'name', 'text', '', '', 1, '2017-01-10 11:34:32', '2017-01-10 11:19:30', '2017-01-10 11:34:32'),
(81, 2, 2, 4, 'name', 'select', '', '["gggghiop","ggg"]', 1, '2017-01-10 11:34:32', '2017-01-10 11:19:30', '2017-01-10 11:34:32'),
(82, 2, 2, 4, 'name', 'text', '', '', 0, NULL, '2017-01-10 11:34:32', '2017-01-10 11:34:32'),
(83, 2, 2, 4, 'name', 'select', '', '["gggghiop","ggg"]', 0, NULL, '2017-01-10 11:34:32', '2017-01-10 11:34:32'),
(84, 2, 1, 2, 'name', 'text', '', '', 0, NULL, '2017-01-10 11:38:46', '2017-01-10 11:38:46'),
(85, 2, 1, 2, 'Remarks', 'textarea', '', '', 0, NULL, '2017-01-10 11:38:46', '2017-01-10 11:38:46'),
(86, 2, 1, 2, 'Today Date', 'date', '', '', 0, NULL, '2017-01-10 11:38:46', '2017-01-10 11:38:46'),
(87, 2, 1, 2, 'gender', 'select', '', '["male","female"]', 0, NULL, '2017-01-10 11:38:46', '2017-01-10 11:38:46'),
(88, 2, 1, 2, 'studied', 'radio', '', '["yes","no"]', 0, NULL, '2017-01-10 11:38:46', '2017-01-10 11:38:46'),
(89, 2, 1, 2, 'Programing language', 'checkbox', '', '["php","c#","java",".net"]', 0, NULL, '2017-01-10 11:38:46', '2017-01-10 11:38:46'),
(90, 2, 1, 7, 'fdsgbae', 'text', 'ggggggggggggggggggg', '', 1, '2017-01-13 08:29:50', '2017-01-12 04:54:40', '2017-01-13 08:29:50'),
(91, 2, 1, 7, 'detg', 'select', '', '["dgn","dfbn"]', 0, '2017-01-13 08:29:50', '2017-01-12 04:54:40', '2017-01-13 08:29:50'),
(92, 2, 1, 7, 'fdsgbae', 'text', 'ggggggggggggggggggg', '', 0, NULL, '2017-01-13 08:29:50', '2017-01-13 08:29:50'),
(93, 2, 1, 7, 'detg', 'select', '', '["dgn","dfbn"]', 1, NULL, '2017-01-13 08:29:50', '2017-01-13 08:29:50'),
(94, 2, 1, 7, 'languages', 'checkbox', '', '["c","c#","php",".net"]', 1, NULL, '2017-01-13 08:29:50', '2017-01-13 08:29:50'),
(95, 2, 1, 10, 'service 100', 'text', '', '', 1, '2017-01-18 09:02:17', '2017-01-18 08:56:32', '2017-01-18 09:02:17'),
(96, 2, 1, 10, 'ddd', 'checkbox', '', '["ddd","aaa"]', 1, '2017-01-18 09:02:17', '2017-01-18 08:56:32', '2017-01-18 09:02:17'),
(97, 2, 1, 10, 'service 100', 'select', '', '["ethet"]', 1, NULL, '2017-01-18 09:02:17', '2017-01-18 09:02:17'),
(98, 2, 1, 10, 'ddd', 'checkbox', '', '["ddd","aaa"]', 0, NULL, '2017-01-18 09:02:18', '2017-01-18 09:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `service_time_settings`
--

CREATE TABLE `service_time_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service_starting_time` time NOT NULL,
  `service_ending_time` time NOT NULL,
  `token_starting_time` time NOT NULL,
  `token_ending_time` time NOT NULL,
  `max_person` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_time_settings`
--

INSERT INTO `service_time_settings` (`id`, `company_id`, `location_id`, `service_id`, `day`, `service_starting_time`, `service_ending_time`, `token_starting_time`, `token_ending_time`, `max_person`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(9, 2, 1, 9, 'Sunday', '08:00:00', '16:00:00', '23:00:00', '05:00:00', 50, 1, '2017-01-11 08:10:16', '2017-01-11 07:09:32', '2017-01-11 08:10:16'),
(11, 2, 1, 9, 'Monday', '08:00:00', '16:00:00', '06:00:00', '23:00:00', 50, 1, NULL, '2017-01-11 07:50:00', '2017-01-16 04:45:44'),
(12, 2, 1, 9, 'Tuesday', '11:11:11', '11:11:11', '11:11:11', '11:11:11', 1, 1, '2017-01-17 04:59:24', '2017-01-11 08:53:06', '2017-01-17 04:59:24'),
(13, 2, 1, 7, 'Wednesday', '08:00:00', '19:00:00', '06:00:00', '23:00:00', 10, 1, NULL, '2017-01-11 10:15:17', '2017-01-11 10:15:17'),
(14, 2, 1, 9, 'Wednesday', '08:00:00', '22:00:00', '06:00:00', '19:00:00', 12, 1, NULL, '2017-01-11 11:31:22', '2017-01-11 11:31:22'),
(15, 2, 1, 2, 'Wednesday', '08:00:00', '19:00:00', '06:00:00', '15:00:00', 45, 1, NULL, '2017-01-11 12:12:30', '2017-01-11 12:12:30'),
(16, 2, 1, 3, 'Wednesday', '08:00:00', '19:00:00', '00:00:00', '00:00:00', 45, 1, NULL, '2017-01-11 12:13:24', '2017-01-11 12:13:24'),
(17, 2, 1, 9, 'Thursday', '08:00:00', '21:00:00', '01:00:00', '07:00:00', 25, 1, NULL, '2017-01-12 04:22:26', '2017-01-12 04:22:26'),
(18, 2, 1, 7, 'Thursday', '07:00:00', '16:00:00', '06:00:00', '19:00:00', 50, 1, NULL, '2017-01-12 04:23:41', '2017-01-12 04:23:41'),
(19, 2, 4, 6, 'Thursday', '08:00:00', '15:00:00', '06:00:00', '23:00:00', 25, 1, NULL, '2017-01-12 05:10:47', '2017-01-12 05:10:47'),
(20, 2, 1, 1, 'Thursday', '06:00:00', '18:00:00', '06:00:00', '15:00:00', 45, 1, NULL, '2017-01-12 05:13:29', '2017-01-12 05:13:29'),
(21, 2, 1, 3, 'Thursday', '08:00:00', '20:00:00', '06:00:00', '23:00:00', 50, 1, NULL, '2017-01-12 06:17:21', '2017-01-12 06:17:21'),
(22, 2, 1, 9, 'Friday', '08:00:00', '20:00:00', '06:00:00', '23:00:00', 52, 1, NULL, '2017-01-13 04:27:57', '2017-01-13 04:27:57'),
(23, 2, 1, 7, 'Friday', '06:00:00', '15:00:00', '06:00:00', '22:00:00', 20, 1, NULL, '2017-01-13 04:28:54', '2017-01-13 04:28:54'),
(24, 2, 1, 7, 'Saturday', '08:00:00', '20:00:00', '06:00:00', '23:00:00', 45, 1, NULL, '2017-01-14 04:32:15', '2017-01-14 04:32:15'),
(25, 2, 1, 9, 'Saturday', '08:00:00', '18:00:00', '06:00:00', '19:00:00', 56, 1, NULL, '2017-01-14 04:33:25', '2017-01-14 04:33:25'),
(26, 2, 1, 3, 'Monday', '08:00:00', '19:00:00', '06:00:00', '23:00:00', 50, 1, NULL, '2017-01-16 04:43:58', '2017-01-16 04:43:58'),
(27, 2, 1, 7, 'Monday', '08:00:00', '20:00:00', '06:00:00', '23:00:00', 50, 1, NULL, '2017-01-16 06:17:06', '2017-01-16 06:17:06'),
(28, 2, 1, 3, 'Tuesday', '08:00:00', '20:00:00', '06:00:00', '22:00:00', 50, 1, NULL, '2017-01-17 05:02:40', '2017-01-17 05:02:40'),
(29, 2, 1, 10, 'Wednesday', '08:00:00', '20:00:00', '06:00:00', '18:00:00', 45, 0, '2017-01-18 08:53:37', '2017-01-18 08:51:48', '2017-01-18 08:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `when_send` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `company_id`, `location_id`, `name`, `username`, `email`, `role`, `phone`, `password`, `status`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'shabeeb', 'shabeeb', 'shabeeb@gmail.com', 'CM', '9567218249', '$2y$10$AZzkDjkqPK67Vwky1H2SDOUSvNc6a8qtz/zybtQ7jXk37ifr/IfqC', 1, '3Y40aGuEAzLzwAU5RGqtgqe9aU25lpbfkfbBp5STVloFmMSMFRBYAkjJbCRR', NULL, '2016-12-15 06:19:54', '2017-01-18 08:18:24'),
(2, 2, 2, 'nishad', 'nishad', 'nisahd@gmail.com', 'LM', '7896541235', '$2y$10$jGM89IwhoRY.NdgYQONQ/.3s88.R7TCuh0MLKZ4E4u8CjvIc35pdy', 0, 'Ya7PF40e12cBaji4NYPMe0cvoMRnOcYV2Ab1MjkzrqLxInNlkKbhJvChxSdF', NULL, '2016-12-15 06:28:48', '2017-01-10 09:27:28'),
(3, 2, 1, 'Rashid', 'Rashid', 'rashid@gmail.com', 'CM', '9897562356', '$2y$10$vtynMLzGn2AZ.fR1ESwNBOal44.501J/hwYFfWBBAb6EP8uSCWzZq', 1, 'ePg88sIGtxgxSj0iiB3OoDhaCXg1hjBy9lRP9IZCy9Br26K3ShuqKh9wENRE', NULL, '2016-12-15 23:50:57', '2017-01-10 07:49:54'),
(4, 2, 1, 'ramees KK', 'ramees', 'staf@staff.com', 'LM', '9456546546546456', '$2y$10$6s6ZUL2BjVWtzKI1rkYhKeGHjF2.nFDgTmuHsbcXm4vu/RyIDJqJm', 1, 'fUfzvibgRVg3z3Xn9FBSmEwNWn6k9YVN2GfXo4l9p0lZQonpotGop5QR4peS', NULL, '2016-12-16 00:12:17', '2017-01-17 07:37:41'),
(5, 3, 3, 'nasif', 'nasif', 'nasif@gmail.com', 'CM', '78965412352958', '$2y$10$YUsCWWfHsUIzZXsP8oQOg.8Ld78sht5o81iuvRKmPvyYqkSIHqAtq', 1, 'Qe1245KiSr3NKfuIuVM1NOOqfMnbGTPt8C7Agdvtdd9g0CHfYmqIahTADYbS', NULL, '2016-12-16 00:19:13', '2016-12-22 03:16:49'),
(6, 2, 2, 'ajeesh', 'ajeesh', 'ajeesh@gmail.com', 'Staff', '7895896999', '$2y$10$LG3j9Qe5cyNjgYolBgBBhe4GEhmOHhsUAB7c8lBxUy2FVKp12kX.K', 1, 'gC12pZdhk1bJEN1D7ZBayEQYbrrtFxEu9YgiLHuHVorZyGaqHfJyxH75rbmH', NULL, '2016-12-16 01:02:32', '2017-01-10 07:58:01'),
(7, 2, 2, 'sabad', 'sabad', 'sabad@gmail.com', 'LM', '7896542359', '$2y$10$y/36dNrPY63EnlACr95uxO42k.PuHE1ncpRxLEsr4bhDd1CACOs8G', 0, NULL, NULL, '2016-12-16 04:44:13', '2017-01-10 07:57:49'),
(8, 2, 1, 'ashik', 'ashik', 'ashik@gmail.com', 'CM', '45321567895', '$2y$10$B0/todP.A9aUFXGHXxdsUuHO1a12.Wwh3ysBDu0fMeR4HF.6zgGo6', 1, NULL, NULL, '2016-12-16 04:48:43', '2017-01-10 07:56:38'),
(9, 2, 1, 'adil  ppk', 'adil rahman', 'adil@gmail.com', 'Staff', '9865325689', '$2y$10$FODoYyfXrBIHcJPWca6oLequBtG.pIEdbHtZLitjnrlJadMCUdNm.', 0, 'dHt2AMbOdmqbqHzAEmyo4grlQktP1KGcPMHzqaufK203LPdk2KYgJLypTS18', NULL, '2016-12-16 05:39:36', '2017-01-10 11:06:32'),
(10, 2, 2, 'harshad p', 'harshad', 'harshad@gmail.com', 'Staff', '989659326589', '$2y$10$Wl/BdP3ajn4LopoHAhVX7O3TiW42LTt6wwZWCHFlf2..A5YgJFF26', 0, NULL, NULL, '2016-12-16 05:45:46', '2017-01-10 07:57:49'),
(11, 2, 2, 'salman', 'salman', 'salman@gmail.com', 'LM', '7896541237', '$2y$10$EIvkINJfFwFTX.Uq.Of94eSiljC5/CoB5hAU0f6A62i4u2XVahcQ2', 0, NULL, NULL, '2016-12-16 23:58:15', '2017-01-10 07:57:49'),
(12, 2, 4, 'test', 'test123456', 'test@gmail.com', 'LM', '78965412365', '$2y$10$115ToQLk30Zm9kiT3pKdIeavc3r9w8/qs/WuOyCxizXZnDlBGTAlS', 1, 'UMIshOSMByrFQCZhex0ZjX0lSojD0FoG79VEk4u0f3tGNeR35IN2bWCrfFUZ', NULL, '2016-12-21 01:24:32', '2016-12-27 05:41:45'),
(13, 2, 4, 'Shmnad', 'shamnad', 'asdasdasd@asdasd.com', 'LM', '7894561230', '$2y$10$ta0nRvAd5FVvCQuqL8O3Ler/Lc63BD.6Fhwl5Gsqeoti/LIWU/tk6', 1, NULL, NULL, '2017-01-10 06:55:01', '2017-01-10 06:55:01'),
(14, 2, 1, 'junaid pk', 'junaid', 'junaid@gmail.com', 'Staff', '9895969369596', '$2y$10$0vW4JSShV/w2QqNxO1fX1.pFkudf.EtaufJVn7Z1xMk3N8WJ0Aocu', 1, NULL, NULL, '2017-01-10 07:28:51', '2017-01-10 07:49:54'),
(18, 2, 7, 'fasil', 'fasil', 'fasil@gmail.com', 'LM', '9567218888', '$2y$10$ArQQkCYvj9yikJMDIs3xoOZpPHLDzCw1q6bL6LltYG1Dn87VsYbji', 1, NULL, NULL, '2017-01-19 07:19:07', '2017-01-19 07:19:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `appoinments`
--
ALTER TABLE `appoinments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appoinments_company_id_foreign` (`company_id`),
  ADD KEY `appoinments_location_id_foreign` (`location_id`);

--
-- Indexes for table `appoinment_details`
--
ALTER TABLE `appoinment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appoinment_details_company_id_foreign` (`company_id`),
  ADD KEY `appoinment_details_location_id_foreign` (`location_id`),
  ADD KEY `appoinment_details_appoinment_id_foreign` (`appoinment_id`);

--
-- Indexes for table `appoinment_slots`
--
ALTER TABLE `appoinment_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appoinment_slots_company_id_foreign` (`company_id`),
  ADD KEY `appoinment_slots_location_id_foreign` (`location_id`),
  ADD KEY `appoinment_slots_appoinment_id_foreign` (`appoinment_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calls_company_id_foreign` (`company_id`),
  ADD KEY `calls_location_id_foreign` (`location_id`),
  ADD KEY `calls_service_id_foreign` (`service_id`),
  ADD KEY `calls_counter_id_foreign` (`counter_id`),
  ADD KEY `calls_user_id_foreign` (`user_id`),
  ADD KEY `calls_queue_id_foreign` (`queue_id`);

--
-- Indexes for table `call_details`
--
ALTER TABLE `call_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `counters_company_id_foreign` (`company_id`),
  ADD KEY `counters_location_id_foreign` (`location_id`);

--
-- Indexes for table `display_settings`
--
ALTER TABLE `display_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `display_setting_details`
--
ALTER TABLE `display_setting_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `display_setting_details_company_id_foreign` (`company_id`),
  ADD KEY `display_setting_details_location_id_foreign` (`location_id`),
  ADD KEY `display_setting_details_display_setting_id_foreign` (`display_setting_id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_settings_company_id_foreign` (`company_id`),
  ADD KEY `email_settings_location_id_foreign` (`location_id`),
  ADD KEY `email_settings_service_id_foreign` (`service_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `general_settings_company_id_foreign` (`company_id`),
  ADD KEY `general_settings_location_id_foreign` (`location_id`);

--
-- Indexes for table `holiday_settings`
--
ALTER TABLE `holiday_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holiday_settings_company_id_foreign` (`company_id`),
  ADD KEY `holiday_settings_location_id_foreign` (`location_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_company_id_foreign` (`company_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queues`
--
ALTER TABLE `queues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queues_company_id_foreign` (`company_id`),
  ADD KEY `queues_location_id_foreign` (`location_id`),
  ADD KEY `queues_service_id_foreign` (`service_id`);

--
-- Indexes for table `queue_appoinments`
--
ALTER TABLE `queue_appoinments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue_appoinments_company_id_foreign` (`company_id`),
  ADD KEY `queue_appoinments_location_id_foreign` (`location_id`),
  ADD KEY `queue_appoinments_service_id_foreign` (`service_id`),
  ADD KEY `queue_appoinments_appoinment_id_foreign` (`appoinment_id`);

--
-- Indexes for table `queue_appoinment_details`
--
ALTER TABLE `queue_appoinment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue_appoinment_details_company_id_foreign` (`company_id`),
  ADD KEY `queue_appoinment_details_location_id_foreign` (`location_id`),
  ADD KEY `queue_appoinment_details_queue_appoinment_id_foreign` (`queue_appoinment_id`),
  ADD KEY `queue_appoinment_details_appoinment_id_foreign` (`appoinment_id`),
  ADD KEY `queue_appoinment_details_appoinment_details_id_foreign` (`appoinment_details_id`);

--
-- Indexes for table `queue_details`
--
ALTER TABLE `queue_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queue_service_details`
--
ALTER TABLE `queue_service_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue_service_details_company_id_foreign` (`company_id`),
  ADD KEY `queue_service_details_location_id_foreign` (`location_id`),
  ADD KEY `queue_service_details_service_id_foreign` (`service_id`),
  ADD KEY `queue_service_details_queue_id_foreign` (`queue_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_company_id_foreign` (`company_id`),
  ADD KEY `services_location_id_foreign` (`location_id`);

--
-- Indexes for table `service_details`
--
ALTER TABLE `service_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_details_company_id_foreign` (`company_id`),
  ADD KEY `service_details_location_id_foreign` (`location_id`),
  ADD KEY `service_details_service_id_foreign` (`service_id`);

--
-- Indexes for table `service_time_settings`
--
ALTER TABLE `service_time_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_time_settings_company_id_foreign` (`company_id`),
  ADD KEY `service_time_settings_location_id_foreign` (`location_id`),
  ADD KEY `service_time_settings_service_id_foreign` (`service_id`);

--
-- Indexes for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_settings_company_id_foreign` (`company_id`),
  ADD KEY `sms_settings_location_id_foreign` (`location_id`),
  ADD KEY `sms_settings_service_id_foreign` (`service_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_company_id_foreign` (`company_id`),
  ADD KEY `users_location_id_foreign` (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appoinments`
--
ALTER TABLE `appoinments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `appoinment_details`
--
ALTER TABLE `appoinment_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `appoinment_slots`
--
ALTER TABLE `appoinment_slots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `calls`
--
ALTER TABLE `calls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `call_details`
--
ALTER TABLE `call_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `display_settings`
--
ALTER TABLE `display_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `display_setting_details`
--
ALTER TABLE `display_setting_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `holiday_settings`
--
ALTER TABLE `holiday_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `queues`
--
ALTER TABLE `queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `queue_appoinments`
--
ALTER TABLE `queue_appoinments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `queue_appoinment_details`
--
ALTER TABLE `queue_appoinment_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `queue_details`
--
ALTER TABLE `queue_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `queue_service_details`
--
ALTER TABLE `queue_service_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `service_details`
--
ALTER TABLE `service_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `service_time_settings`
--
ALTER TABLE `service_time_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `appoinments`
--
ALTER TABLE `appoinments`
  ADD CONSTRAINT `appoinments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `appoinments_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `appoinment_details`
--
ALTER TABLE `appoinment_details`
  ADD CONSTRAINT `appoinment_details_appoinment_id_foreign` FOREIGN KEY (`appoinment_id`) REFERENCES `appoinments` (`id`),
  ADD CONSTRAINT `appoinment_details_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `appoinment_details_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `appoinment_slots`
--
ALTER TABLE `appoinment_slots`
  ADD CONSTRAINT `appoinment_slots_appoinment_id_foreign` FOREIGN KEY (`appoinment_id`) REFERENCES `appoinments` (`id`),
  ADD CONSTRAINT `appoinment_slots_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `appoinment_slots_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `calls`
--
ALTER TABLE `calls`
  ADD CONSTRAINT `calls_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `calls_counter_id_foreign` FOREIGN KEY (`counter_id`) REFERENCES `counters` (`id`),
  ADD CONSTRAINT `calls_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `calls_queue_id_foreign` FOREIGN KEY (`queue_id`) REFERENCES `queues` (`id`),
  ADD CONSTRAINT `calls_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `calls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `counters`
--
ALTER TABLE `counters`
  ADD CONSTRAINT `counters_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `counters_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `display_setting_details`
--
ALTER TABLE `display_setting_details`
  ADD CONSTRAINT `display_setting_details_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `display_setting_details_display_setting_id_foreign` FOREIGN KEY (`display_setting_id`) REFERENCES `display_settings` (`id`),
  ADD CONSTRAINT `display_setting_details_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD CONSTRAINT `email_settings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `email_settings_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `email_settings_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Constraints for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD CONSTRAINT `general_settings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `general_settings_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `holiday_settings`
--
ALTER TABLE `holiday_settings`
  ADD CONSTRAINT `holiday_settings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `holiday_settings_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `queues`
--
ALTER TABLE `queues`
  ADD CONSTRAINT `queues_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `queues_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `queues_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Constraints for table `queue_appoinments`
--
ALTER TABLE `queue_appoinments`
  ADD CONSTRAINT `queue_appoinments_appoinment_id_foreign` FOREIGN KEY (`appoinment_id`) REFERENCES `appoinments` (`id`),
  ADD CONSTRAINT `queue_appoinments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `queue_appoinments_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `queue_appoinments_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Constraints for table `queue_appoinment_details`
--
ALTER TABLE `queue_appoinment_details`
  ADD CONSTRAINT `queue_appoinment_details_appoinment_details_id_foreign` FOREIGN KEY (`appoinment_details_id`) REFERENCES `appoinment_details` (`id`),
  ADD CONSTRAINT `queue_appoinment_details_appoinment_id_foreign` FOREIGN KEY (`appoinment_id`) REFERENCES `appoinments` (`id`),
  ADD CONSTRAINT `queue_appoinment_details_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `queue_appoinment_details_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `queue_appoinment_details_queue_appoinment_id_foreign` FOREIGN KEY (`queue_appoinment_id`) REFERENCES `queue_appoinments` (`id`);

--
-- Constraints for table `queue_service_details`
--
ALTER TABLE `queue_service_details`
  ADD CONSTRAINT `queue_service_details_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `queue_service_details_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `queue_service_details_queue_id_foreign` FOREIGN KEY (`queue_id`) REFERENCES `queues` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `queue_service_details_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `services_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `service_details`
--
ALTER TABLE `service_details`
  ADD CONSTRAINT `service_details_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `service_details_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `service_details_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Constraints for table `service_time_settings`
--
ALTER TABLE `service_time_settings`
  ADD CONSTRAINT `service_time_settings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `service_time_settings_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `service_time_settings_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Constraints for table `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD CONSTRAINT `sms_settings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `sms_settings_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `sms_settings_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `users_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
