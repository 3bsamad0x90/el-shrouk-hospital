-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 01:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `el-shrouk-hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `user_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `company`, `title`, `country`, `phone`, `email`, `subject`, `content`, `status`, `user_id`, `user_type`, `created_at`, `updated_at`) VALUES
(47, 'omar', 'okmm', 'fsff', 'AW', '020200', 'omar@omar.dfv', 'question', 'fsfs', '1', NULL, NULL, '2022-10-03 19:21:47', '2022-10-04 12:41:47'),
(13, NULL, NULL, 'test', NULL, NULL, NULL, 'question', 'test', '1', '2', 'publisher', '2022-08-07 22:53:10', '2022-08-08 00:03:46'),
(14, 'Abuobaida', 'iLAW', 'TEST', '201', '0508750613', 'abuobaidailaw@gmail.com', 'request', 'TEST', '1', NULL, NULL, '2022-08-08 13:05:08', '2022-08-10 13:08:17'),
(15, NULL, NULL, 'test', NULL, NULL, NULL, 'suggest', 'السلام عليكم', '1', '13', 'publisher', '2022-09-27 14:29:03', '2022-09-27 14:58:15'),
(16, NULL, NULL, 'hi', NULL, NULL, NULL, 'question', 'hello', '1', '13', 'publisher', '2022-09-27 15:31:14', '2022-09-29 13:36:48'),
(17, NULL, NULL, 'test', NULL, NULL, NULL, 'suggest', 'test 1', '1', '2', 'publisher', '2022-09-27 17:25:46', '2022-09-29 13:36:39'),
(18, NULL, NULL, 'هلو', NULL, NULL, NULL, 'question', 'هلو', '1', '13', 'publisher', '2022-09-27 19:48:07', '2022-09-29 13:36:51'),
(48, 'manar', '...', '...', 'EG', '01026033826', 'manar.m.elhefnawy@gmail.com', 'complaint', '....', '1', NULL, NULL, '2022-10-03 19:56:05', '2022-10-04 12:43:34'),
(20, 'ezat', 'gdfg', 'ghfvhufg', '63', '1023123121', 'ezatellozy1@gmail.com', 'suggest', 'hftydf', '1', NULL, NULL, '2022-09-28 18:29:50', '2022-10-04 12:44:06'),
(21, 'ezat', 'gdfg', NULL, '3', '1023123121', 'ezatellozy1@gmail.com', 'suggest', 'dddd', '1', NULL, NULL, '2022-09-28 18:30:29', '2022-10-04 17:32:18'),
(22, 'dsad', 'gdfg', 'ghfvhufg', '2', '1023123121', 'ezatellozy1@gmail.com', 'suggest', 'dsadasd', '1', NULL, NULL, '2022-09-29 11:42:50', '2022-10-04 21:03:13'),
(23, 'ezat', 'gdfg', 'ghfvhufg', '2', '1023123121', 'ezatellozy1@gmail.com', 'question', 'asdd', '1', NULL, NULL, '2022-09-29 11:43:44', '2022-10-05 15:05:44'),
(24, 'ezat', 'fdsfsdf', 'ghfvhufg', '69', '1023123121', 'ezatell@gmail.com', 'question', 'fsdfsdfsd', '1', NULL, NULL, '2022-09-29 11:44:31', '2022-10-05 19:44:22'),
(25, 'ezat', 'gdfg', 'ghfvhufg', '1', '1023123121', 'ezatellozy1@gmail.com', 'suggest', 'fdgdfg', '1', NULL, NULL, '2022-09-29 11:48:32', '2022-10-07 00:26:41'),
(26, 'dsad', 'gdfg', 'ghfvhufg', '2', '1023123121', 'ezatellozy1@gmail.com', 'question', 'fsdfdsf', '1', NULL, NULL, '2022-09-29 11:49:39', '2022-10-11 12:45:03'),
(27, 'ezat', 'gdfg', 'ghfvhufg', '2', '1023123121', 'ezatellozy1@gmail.com', 'question', 'dasdasd', '1', NULL, NULL, '2022-09-29 11:50:36', '2022-10-11 16:38:55'),
(28, 'dsad', 'gdfg', 'dfskfhn', '2', '10212121', 'ezatell@gmail.com', 'question', 'vdskfnsd', '1', NULL, NULL, '2022-09-29 11:51:37', '2022-10-14 14:13:44'),
(29, 'ezat', 'fsdfsd', 'ghfvhufg', '18', '1023123121', 'ezatell@gmail.com', 'suggest', 'fsdfsdf', '1', NULL, NULL, '2022-09-29 12:17:23', '2022-10-11 17:04:56'),
(30, 'ezat', 'fds', 'fsdfsdfsdf', '2', '1023123121', 'ezatell@gmail.com', 'suggest', 'fsdfsdf', '1', NULL, NULL, '2022-09-29 12:17:52', '2022-10-16 20:20:15'),
(31, 'ezat', 'gdfg', 'fsdfsdf', '16', '15152111', 'ezatellozy1@gmail.com', 'request', 'fsdfsdfdsf', '1', NULL, NULL, '2022-09-29 12:18:14', '2022-10-16 21:07:37'),
(32, 'ezat', 'gdfg', 'ghfvhufg', '17', '1023123121', 'ezatellozy1@gmail.com', 'request', 'gfhg', '1', NULL, NULL, '2022-09-29 12:40:23', '2022-10-16 23:47:26'),
(33, 'محمد', NULL, NULL, '63', '01000000000', 'tester@technomasr.com', NULL, 'this is my message', '1', NULL, NULL, '2022-09-29 17:04:19', '2022-10-19 13:35:19'),
(34, 'محمد', NULL, NULL, '63', '01000000000', 'tester@technomasr.com', NULL, 'this is my message', '1', NULL, NULL, '2022-09-29 17:20:01', '2022-10-04 17:24:55'),
(35, 'sdegdsgs', 'dsfdf', 'sdfsdf', 'AM', '02000', 'doj@dskv.divhj', 'request', 'dffd', '1', NULL, NULL, '2022-09-29 17:22:07', '2022-10-19 21:20:35'),
(36, 'dhdhdh', 'dhxhh', 'dhdhdhhd', 'AR', '0191983', 'dhdhh@dhd.fhfh', 'complaint', 'ggfff', '1', NULL, NULL, '2022-09-29 21:08:43', '2022-10-19 21:20:40'),
(37, 'abuobaida', 'ilaw', 'Sharjah', 'AE', '0508750613', 'abuobaida@ilaw.ae', 'question', 'Test', '1', NULL, NULL, '2022-09-30 08:56:57', '2022-10-19 21:20:38'),
(38, 'Mustafa', 'iLAW', 'test', 'AE', '0508750613', 'abobeada@gmail.com', 'request', 'Test', '1', NULL, NULL, '2022-09-30 08:59:17', '2022-10-19 13:38:21'),
(43, 'test10', NULL, NULL, 'AQ', '862866377', 'test@google.ae', 'suggest', 'test10', '1', NULL, NULL, '2022-10-03 12:01:36', '2022-10-24 13:07:33'),
(44, 'تيست', 'test', 'fufj', 'AO', '584848', 'mr.abuobaidamustafa@gmail.com', 'request', 'Tjrrjj', '1', NULL, NULL, '2022-10-03 12:03:27', '2022-10-11 17:04:30'),
(45, 'ttt', 'hhg', 'jhhh', 'AI', '8687654', 'tt@t.com', 'complaint', 'hhhhv', '1', NULL, NULL, '2022-10-03 12:04:32', '2022-10-24 13:31:20'),
(46, NULL, NULL, 'النريخ', NULL, NULL, NULL, 'suggest', 'كيفك', '1', '13', 'publisher', '2022-10-03 16:45:15', '2022-10-03 16:45:34'),
(49, 'hy', 'esgt', 'sefgs', 'AM', '00140', 'fthdf@trh.ry', 'question', 'fjf', '1', NULL, NULL, '2022-10-03 20:04:19', '2022-10-24 13:31:17'),
(50, 'gjyjytj', 'gdrg', 'gh', 'AW', '0202222', 'fjrtdj@trhd.fjth', 'question', 'fgtjgk', '1', NULL, NULL, '2022-10-03 20:06:04', '2022-10-19 21:21:34'),
(51, 'manar', '......', '..........', '63', '01026033826', 'manar.m.elhefnawy@gmail.com', 'complaint', '...........', '1', NULL, NULL, '2022-10-03 20:08:11', '2022-10-04 00:11:41'),
(52, 'test', 'test', 'test', 'AE', '0508750613', 'app@ilaw.ae', 'suggest', 'Test', '1', NULL, NULL, '2022-10-04 08:43:14', '2022-10-04 12:44:14'),
(55, NULL, NULL, 'test', NULL, NULL, NULL, 'suggest', 'test', '1', '2', 'publisher', '2022-10-24 14:11:42', '2022-10-24 14:11:59'),
(56, 'hossam', 'babak', 'قانون الشركات', '4', '0545412304', 'hossam@ilaw.ae', 'complaint', 'الاقلام', '1', NULL, NULL, '2022-10-24 12:07:46', '2022-10-24 16:09:16'),
(58, 'manar', '......', 'testing', '63', '010230130', 'technomasr4@gmail.com', 'suggest', 'we test the site', '1', NULL, NULL, '2022-11-06 19:25:12', '2022-11-06 23:25:38'),
(59, 'manar', '......', 'testing', '247', '0103230000', 'test@technomasr.com', 'question', 'test', '1', NULL, NULL, '2022-11-07 13:03:52', '2022-11-07 17:04:12');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_fr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nicename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `block` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso`, `name_ar`, `name_en`, `name_fr`, `nicename`, `iso3`, `numcode`, `phonecode`, `block`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'أفغانستان', 'AFGHANISTAN', NULL, 'Afghanistan', 'AFG', '4', '93', 0, NULL, '2022-10-17 17:42:26'),
(2, 'AL', NULL, 'ALBANIA', NULL, 'Albania', 'ALB', '8', '355', 0, NULL, NULL),
(3, 'DZ', NULL, 'ALGERIA', NULL, 'Algeria', 'DZA', '12', '213', 0, NULL, NULL),
(4, 'AS', NULL, 'AMERICAN SAMOA', NULL, 'American Samoa', 'ASM', '16', '1684', 0, NULL, NULL),
(5, 'AD', NULL, 'ANDORRA', NULL, 'Andorra', 'AND', '20', '376', 0, NULL, NULL),
(6, 'AO', NULL, 'ANGOLA', NULL, 'Angola', 'AGO', '24', '244', 0, NULL, NULL),
(7, 'AI', NULL, 'ANGUILLA', NULL, 'Anguilla', 'AIA', '660', '1264', 0, NULL, NULL),
(8, 'AQ', NULL, 'ANTARCTICA', NULL, 'Antarctica', NULL, NULL, '0', 0, NULL, NULL),
(9, 'AG', NULL, 'ANTIGUA AND BARBUDA', NULL, 'Antigua and Barbuda', 'ATG', '28', '1268', 0, NULL, NULL),
(10, 'AR', NULL, 'ARGENTINA', NULL, 'Argentina', 'ARG', '32', '54', 0, NULL, NULL),
(11, 'AM', NULL, 'ARMENIA', NULL, 'Armenia', 'ARM', '51', '374', 0, NULL, NULL),
(12, 'AW', NULL, 'ARUBA', NULL, 'Aruba', 'ABW', '533', '297', 0, NULL, NULL),
(13, 'AU', NULL, 'AUSTRALIA', NULL, 'Australia', 'AUS', '36', '61', 0, NULL, NULL),
(14, 'AT', NULL, 'AUSTRIA', NULL, 'Austria', 'AUT', '40', '43', 0, NULL, NULL),
(15, 'AZ', NULL, 'AZERBAIJAN', NULL, 'Azerbaijan', 'AZE', '31', '994', 0, NULL, NULL),
(16, 'BS', NULL, 'BAHAMAS', NULL, 'Bahamas', 'BHS', '44', '1242', 0, NULL, NULL),
(17, 'BH', NULL, 'BAHRAIN', NULL, 'Bahrain', 'BHR', '48', '973', 0, NULL, NULL),
(18, 'BD', NULL, 'BANGLADESH', NULL, 'Bangladesh', 'BGD', '50', '880', 0, NULL, NULL),
(19, 'BB', NULL, 'BARBADOS', NULL, 'Barbados', 'BRB', '52', '1246', 0, NULL, NULL),
(20, 'BY', NULL, 'BELARUS', NULL, 'Belarus', 'BLR', '112', '375', 0, NULL, NULL),
(21, 'BE', NULL, 'BELGIUM', NULL, 'Belgium', 'BEL', '56', '32', 0, NULL, NULL),
(22, 'BZ', NULL, 'BELIZE', NULL, 'Belize', 'BLZ', '84', '501', 0, NULL, NULL),
(23, 'BJ', NULL, 'BENIN', NULL, 'Benin', 'BEN', '204', '229', 0, NULL, NULL),
(24, 'BM', NULL, 'BERMUDA', NULL, 'Bermuda', 'BMU', '60', '1441', 0, NULL, NULL),
(25, 'BT', NULL, 'BHUTAN', NULL, 'Bhutan', 'BTN', '64', '975', 0, NULL, NULL),
(26, 'BO', NULL, 'BOLIVIA', NULL, 'Bolivia', 'BOL', '68', '591', 0, NULL, NULL),
(27, 'BA', NULL, 'BOSNIA AND HERZEGOVINA', NULL, 'Bosnia and Herzegovina', 'BIH', '70', '387', 0, NULL, NULL),
(28, 'BW', NULL, 'BOTSWANA', NULL, 'Botswana', 'BWA', '72', '267', 0, NULL, NULL),
(29, 'BV', NULL, 'BOUVET ISLAND', NULL, 'Bouvet Island', NULL, NULL, '0', 0, NULL, NULL),
(30, 'BR', NULL, 'BRAZIL', NULL, 'Brazil', 'BRA', '76', '55', 0, NULL, NULL),
(31, 'IO', NULL, 'BRITISH INDIAN OCEAN TERRITORY', NULL, 'British Indian Ocean Territory', NULL, NULL, '246', 0, NULL, NULL),
(32, 'BN', NULL, 'BRUNEI DARUSSALAM', NULL, 'Brunei Darussalam', 'BRN', '96', '673', 0, NULL, NULL),
(33, 'BG', NULL, 'BULGARIA', NULL, 'Bulgaria', 'BGR', '100', '359', 0, NULL, NULL),
(34, 'BF', NULL, 'BURKINA FASO', NULL, 'Burkina Faso', 'BFA', '854', '226', 0, NULL, NULL),
(35, 'BI', NULL, 'BURUNDI', NULL, 'Burundi', 'BDI', '108', '257', 0, NULL, NULL),
(36, 'KH', NULL, 'CAMBODIA', NULL, 'Cambodia', 'KHM', '116', '855', 0, NULL, NULL),
(37, 'CM', NULL, 'CAMEROON', NULL, 'Cameroon', 'CMR', '120', '237', 0, NULL, NULL),
(38, 'CA', NULL, 'CANADA', NULL, 'Canada', 'CAN', '124', '1', 0, NULL, NULL),
(39, 'CV', NULL, 'CAPE VERDE', NULL, 'Cape Verde', 'CPV', '132', '238', 0, NULL, NULL),
(40, 'KY', NULL, 'CAYMAN ISLANDS', NULL, 'Cayman Islands', 'CYM', '136', '1345', 0, NULL, NULL),
(41, 'CF', NULL, 'CENTRAL AFRICAN REPUBLIC', NULL, 'Central African Republic', 'CAF', '140', '236', 0, NULL, NULL),
(42, 'TD', NULL, 'CHAD', NULL, 'Chad', 'TCD', '148', '235', 0, NULL, NULL),
(43, 'CL', NULL, 'CHILE', NULL, 'Chile', 'CHL', '152', '56', 0, NULL, NULL),
(44, 'CN', NULL, 'CHINA', NULL, 'China', 'CHN', '156', '86', 0, NULL, NULL),
(45, 'CX', NULL, 'CHRISTMAS ISLAND', NULL, 'Christmas Island', NULL, NULL, '61', 0, NULL, NULL),
(46, 'CC', NULL, 'COCOS (KEELING) ISLANDS', NULL, 'Cocos (Keeling) Islands', NULL, NULL, '672', 0, NULL, NULL),
(47, 'CO', NULL, 'COLOMBIA', NULL, 'Colombia', 'COL', '170', '57', 0, NULL, NULL),
(48, 'KM', NULL, 'COMOROS', NULL, 'Comoros', 'COM', '174', '269', 0, NULL, NULL),
(49, 'CG', NULL, 'CONGO', NULL, 'Congo', 'COG', '178', '242', 0, NULL, NULL),
(50, 'CD', NULL, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', NULL, 'Congo, the Democratic Republic of the', 'COD', '180', '242', 0, NULL, NULL),
(51, 'CK', NULL, 'COOK ISLANDS', NULL, 'Cook Islands', 'COK', '184', '682', 0, NULL, NULL),
(52, 'CR', NULL, 'COSTA RICA', NULL, 'Costa Rica', 'CRI', '188', '506', 0, NULL, NULL),
(53, 'CI', NULL, 'COTE D\'IVOIRE', NULL, 'Cote D\'Ivoire', 'CIV', '384', '225', 0, NULL, NULL),
(54, 'HR', NULL, 'CROATIA', NULL, 'Croatia', 'HRV', '191', '385', 0, NULL, NULL),
(55, 'CU', NULL, 'CUBA', NULL, 'Cuba', 'CUB', '192', '53', 0, NULL, NULL),
(56, 'CY', NULL, 'CYPRUS', NULL, 'Cyprus', 'CYP', '196', '357', 0, NULL, NULL),
(57, 'CZ', NULL, 'CZECH REPUBLIC', NULL, 'Czech Republic', 'CZE', '203', '420', 0, NULL, NULL),
(58, 'DK', NULL, 'DENMARK', NULL, 'Denmark', 'DNK', '208', '45', 0, NULL, NULL),
(59, 'DJ', NULL, 'DJIBOUTI', NULL, 'Djibouti', 'DJI', '262', '253', 0, NULL, NULL),
(60, 'DM', NULL, 'DOMINICA', NULL, 'Dominica', 'DMA', '212', '1767', 0, NULL, NULL),
(61, 'DO', NULL, 'DOMINICAN REPUBLIC', NULL, 'Dominican Republic', 'DOM', '214', '1809', 0, NULL, NULL),
(62, 'EC', NULL, 'ECUADOR', NULL, 'Ecuador', 'ECU', '218', '593', 0, NULL, NULL),
(63, 'EG', 'مصر', 'EGYPT', NULL, 'Egypt', 'EGY', '818', '20', 0, NULL, '2022-06-10 02:23:25'),
(64, 'SV', NULL, 'EL SALVADOR', NULL, 'El Salvador', 'SLV', '222', '503', 0, NULL, NULL),
(65, 'GQ', NULL, 'EQUATORIAL GUINEA', NULL, 'Equatorial Guinea', 'GNQ', '226', '240', 0, NULL, NULL),
(66, 'ER', NULL, 'ERITREA', NULL, 'Eritrea', 'ERI', '232', '291', 0, NULL, NULL),
(67, 'EE', NULL, 'ESTONIA', NULL, 'Estonia', 'EST', '233', '372', 0, NULL, NULL),
(68, 'ET', NULL, 'ETHIOPIA', NULL, 'Ethiopia', 'ETH', '231', '251', 0, NULL, NULL),
(69, 'FK', NULL, 'FALKLAND ISLANDS (MALVINAS)', NULL, 'Falkland Islands (Malvinas)', 'FLK', '238', '500', 0, NULL, NULL),
(70, 'FO', NULL, 'FAROE ISLANDS', NULL, 'Faroe Islands', 'FRO', '234', '298', 0, NULL, NULL),
(71, 'FJ', NULL, 'FIJI', NULL, 'Fiji', 'FJI', '242', '679', 0, NULL, NULL),
(72, 'FI', NULL, 'FINLAND', NULL, 'Finland', 'FIN', '246', '358', 0, NULL, NULL),
(73, 'FR', NULL, 'FRANCE', NULL, 'France', 'FRA', '250', '33', 0, NULL, NULL),
(74, 'GF', NULL, 'FRENCH GUIANA', NULL, 'French Guiana', 'GUF', '254', '594', 0, NULL, NULL),
(75, 'PF', NULL, 'FRENCH POLYNESIA', NULL, 'French Polynesia', 'PYF', '258', '689', 0, NULL, NULL),
(76, 'TF', NULL, 'FRENCH SOUTHERN TERRITORIES', NULL, 'French Southern Territories', NULL, NULL, '0', 0, NULL, NULL),
(77, 'GA', NULL, 'GABON', NULL, 'Gabon', 'GAB', '266', '241', 0, NULL, NULL),
(78, 'GM', NULL, 'GAMBIA', NULL, 'Gambia', 'GMB', '270', '220', 0, NULL, NULL),
(79, 'GE', NULL, 'GEORGIA', NULL, 'Georgia', 'GEO', '268', '995', 0, NULL, NULL),
(80, 'DE', NULL, 'GERMANY', NULL, 'Germany', 'DEU', '276', '49', 0, NULL, NULL),
(81, 'GH', NULL, 'GHANA', NULL, 'Ghana', 'GHA', '288', '233', 0, NULL, NULL),
(82, 'GI', NULL, 'GIBRALTAR', NULL, 'Gibraltar', 'GIB', '292', '350', 0, NULL, NULL),
(83, 'GR', NULL, 'GREECE', NULL, 'Greece', 'GRC', '300', '30', 0, NULL, NULL),
(84, 'GL', NULL, 'GREENLAND', NULL, 'Greenland', 'GRL', '304', '299', 0, NULL, NULL),
(85, 'GD', NULL, 'GRENADA', NULL, 'Grenada', 'GRD', '308', '1473', 0, NULL, NULL),
(86, 'GP', NULL, 'GUADELOUPE', NULL, 'Guadeloupe', 'GLP', '312', '590', 0, NULL, NULL),
(87, 'GU', NULL, 'GUAM', NULL, 'Guam', 'GUM', '316', '1671', 0, NULL, NULL),
(88, 'GT', NULL, 'GUATEMALA', NULL, 'Guatemala', 'GTM', '320', '502', 0, NULL, NULL),
(89, 'GN', NULL, 'GUINEA', NULL, 'Guinea', 'GIN', '324', '224', 0, NULL, NULL),
(90, 'GW', NULL, 'GUINEA-BISSAU', NULL, 'Guinea-Bissau', 'GNB', '624', '245', 0, NULL, NULL),
(91, 'GY', NULL, 'GUYANA', NULL, 'Guyana', 'GUY', '328', '592', 0, NULL, NULL),
(92, 'HT', NULL, 'HAITI', NULL, 'Haiti', 'HTI', '332', '509', 0, NULL, NULL),
(93, 'HM', NULL, 'HEARD ISLAND AND MCDONALD ISLANDS', NULL, 'Heard Island and Mcdonald Islands', NULL, NULL, '0', 0, NULL, NULL),
(94, 'VA', NULL, 'HOLY SEE (VATICAN CITY STATE)', NULL, 'Holy See (Vatican City State)', 'VAT', '336', '39', 0, NULL, NULL),
(95, 'HN', NULL, 'HONDURAS', NULL, 'Honduras', 'HND', '340', '504', 0, NULL, NULL),
(96, 'HK', NULL, 'HONG KONG', NULL, 'Hong Kong', 'HKG', '344', '852', 0, NULL, NULL),
(97, 'HU', NULL, 'HUNGARY', NULL, 'Hungary', 'HUN', '348', '36', 0, NULL, NULL),
(98, 'IS', NULL, 'ICELAND', NULL, 'Iceland', 'ISL', '352', '354', 0, NULL, NULL),
(99, 'IN', NULL, 'INDIA', NULL, 'India', 'IND', '356', '91', 0, NULL, NULL),
(100, 'ID', NULL, 'INDONESIA', NULL, 'Indonesia', 'IDN', '360', '62', 0, NULL, NULL),
(101, 'IR', NULL, 'IRAN, ISLAMIC REPUBLIC OF', NULL, 'Iran, Islamic Republic of', 'IRN', '364', '98', 0, NULL, NULL),
(102, 'IQ', NULL, 'IRAQ', NULL, 'Iraq', 'IRQ', '368', '964', 0, NULL, NULL),
(103, 'IE', NULL, 'IRELAND', NULL, 'Ireland', 'IRL', '372', '353', 0, NULL, NULL),
(104, 'IL', NULL, 'ISRAEL', NULL, 'Israel', 'ISR', '376', '972', 0, NULL, NULL),
(105, 'IT', NULL, 'ITALY', NULL, 'Italy', 'ITA', '380', '39', 0, NULL, NULL),
(106, 'JM', NULL, 'JAMAICA', NULL, 'Jamaica', 'JAM', '388', '1876', 0, NULL, NULL),
(107, 'JP', NULL, 'JAPAN', NULL, 'Japan', 'JPN', '392', '81', 0, NULL, NULL),
(108, 'JO', NULL, 'JORDAN', NULL, 'Jordan', 'JOR', '400', '962', 0, NULL, NULL),
(109, 'KZ', NULL, 'KAZAKHSTAN', NULL, 'Kazakhstan', 'KAZ', '398', '7', 0, NULL, NULL),
(110, 'KE', NULL, 'KENYA', NULL, 'Kenya', 'KEN', '404', '254', 0, NULL, NULL),
(111, 'KI', NULL, 'KIRIBATI', NULL, 'Kiribati', 'KIR', '296', '686', 0, NULL, NULL),
(112, 'KP', NULL, 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', NULL, 'Korea, Democratic People\'s Republic of', 'PRK', '408', '850', 0, NULL, NULL),
(113, 'KR', NULL, 'KOREA, REPUBLIC OF', NULL, 'Korea, Republic of', 'KOR', '410', '82', 0, NULL, NULL),
(114, 'KW', NULL, 'KUWAIT', NULL, 'Kuwait', 'KWT', '414', '965', 0, NULL, NULL),
(115, 'KG', NULL, 'KYRGYZSTAN', NULL, 'Kyrgyzstan', 'KGZ', '417', '996', 0, NULL, NULL),
(116, 'LA', NULL, 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', NULL, 'Lao People\'s Democratic Republic', 'LAO', '418', '856', 0, NULL, NULL),
(117, 'LV', NULL, 'LATVIA', NULL, 'Latvia', 'LVA', '428', '371', 0, NULL, NULL),
(118, 'LB', NULL, 'LEBANON', NULL, 'Lebanon', 'LBN', '422', '961', 0, NULL, NULL),
(119, 'LS', NULL, 'LESOTHO', NULL, 'Lesotho', 'LSO', '426', '266', 0, NULL, NULL),
(120, 'LR', NULL, 'LIBERIA', NULL, 'Liberia', 'LBR', '430', '231', 0, NULL, NULL),
(121, 'LY', NULL, 'LIBYAN ARAB JAMAHIRIYA', NULL, 'Libyan Arab Jamahiriya', 'LBY', '434', '218', 0, NULL, NULL),
(122, 'LI', NULL, 'LIECHTENSTEIN', NULL, 'Liechtenstein', 'LIE', '438', '423', 0, NULL, NULL),
(123, 'LT', NULL, 'LITHUANIA', NULL, 'Lithuania', 'LTU', '440', '370', 0, NULL, NULL),
(124, 'LU', NULL, 'LUXEMBOURG', NULL, 'Luxembourg', 'LUX', '442', '352', 0, NULL, NULL),
(125, 'MO', NULL, 'MACAO', NULL, 'Macao', 'MAC', '446', '853', 0, NULL, NULL),
(126, 'MK', NULL, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', NULL, 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', '389', 0, NULL, NULL),
(127, 'MG', NULL, 'MADAGASCAR', NULL, 'Madagascar', 'MDG', '450', '261', 0, NULL, NULL),
(128, 'MW', NULL, 'MALAWI', NULL, 'Malawi', 'MWI', '454', '265', 0, NULL, NULL),
(129, 'MY', NULL, 'MALAYSIA', NULL, 'Malaysia', 'MYS', '458', '60', 0, NULL, NULL),
(130, 'MV', NULL, 'MALDIVES', NULL, 'Maldives', 'MDV', '462', '960', 0, NULL, NULL),
(131, 'ML', NULL, 'MALI', NULL, 'Mali', 'MLI', '466', '223', 0, NULL, NULL),
(132, 'MT', NULL, 'MALTA', NULL, 'Malta', 'MLT', '470', '356', 0, NULL, NULL),
(133, 'MH', NULL, 'MARSHALL ISLANDS', NULL, 'Marshall Islands', 'MHL', '584', '692', 0, NULL, NULL),
(134, 'MQ', NULL, 'MARTINIQUE', NULL, 'Martinique', 'MTQ', '474', '596', 0, NULL, NULL),
(135, 'MR', NULL, 'MAURITANIA', NULL, 'Mauritania', 'MRT', '478', '222', 0, NULL, NULL),
(136, 'MU', NULL, 'MAURITIUS', NULL, 'Mauritius', 'MUS', '480', '230', 0, NULL, NULL),
(137, 'YT', NULL, 'MAYOTTE', NULL, 'Mayotte', NULL, NULL, '269', 0, NULL, NULL),
(138, 'MX', NULL, 'MEXICO', NULL, 'Mexico', 'MEX', '484', '52', 0, NULL, NULL),
(139, 'FM', NULL, 'MICRONESIA, FEDERATED STATES OF', NULL, 'Micronesia, Federated States of', 'FSM', '583', '691', 0, NULL, NULL),
(140, 'MD', NULL, 'MOLDOVA, REPUBLIC OF', NULL, 'Moldova, Republic of', 'MDA', '498', '373', 0, NULL, NULL),
(141, 'MC', NULL, 'MONACO', NULL, 'Monaco', 'MCO', '492', '377', 0, NULL, NULL),
(142, 'MN', NULL, 'MONGOLIA', NULL, 'Mongolia', 'MNG', '496', '976', 0, NULL, NULL),
(143, 'MS', NULL, 'MONTSERRAT', NULL, 'Montserrat', 'MSR', '500', '1664', 0, NULL, NULL),
(144, 'MA', NULL, 'MOROCCO', NULL, 'Morocco', 'MAR', '504', '212', 0, NULL, NULL),
(145, 'MZ', NULL, 'MOZAMBIQUE', NULL, 'Mozambique', 'MOZ', '508', '258', 0, NULL, NULL),
(146, 'MM', NULL, 'MYANMAR', NULL, 'Myanmar', 'MMR', '104', '95', 0, NULL, NULL),
(147, 'NA', NULL, 'NAMIBIA', NULL, 'Namibia', 'NAM', '516', '264', 0, NULL, NULL),
(148, 'NR', NULL, 'NAURU', NULL, 'Nauru', 'NRU', '520', '674', 0, NULL, NULL),
(149, 'NP', NULL, 'NEPAL', NULL, 'Nepal', 'NPL', '524', '977', 0, NULL, NULL),
(150, 'NL', NULL, 'NETHERLANDS', NULL, 'Netherlands', 'NLD', '528', '31', 0, NULL, NULL),
(151, 'AN', NULL, 'NETHERLANDS ANTILLES', NULL, 'Netherlands Antilles', 'ANT', '530', '599', 0, NULL, NULL),
(152, 'NC', NULL, 'NEW CALEDONIA', NULL, 'New Caledonia', 'NCL', '540', '687', 0, NULL, NULL),
(153, 'NZ', NULL, 'NEW ZEALAND', NULL, 'New Zealand', 'NZL', '554', '64', 0, NULL, NULL),
(154, 'NI', NULL, 'NICARAGUA', NULL, 'Nicaragua', 'NIC', '558', '505', 0, NULL, NULL),
(155, 'NE', NULL, 'NIGER', NULL, 'Niger', 'NER', '562', '227', 0, NULL, NULL),
(156, 'NG', NULL, 'NIGERIA', NULL, 'Nigeria', 'NGA', '566', '234', 0, NULL, NULL),
(157, 'NU', NULL, 'NIUE', NULL, 'Niue', 'NIU', '570', '683', 0, NULL, NULL),
(158, 'NF', NULL, 'NORFOLK ISLAND', NULL, 'Norfolk Island', 'NFK', '574', '672', 0, NULL, NULL),
(159, 'MP', NULL, 'NORTHERN MARIANA ISLANDS', NULL, 'Northern Mariana Islands', 'MNP', '580', '1670', 0, NULL, NULL),
(160, 'NO', NULL, 'NORWAY', NULL, 'Norway', 'NOR', '578', '47', 0, NULL, NULL),
(161, 'OM', NULL, 'OMAN', NULL, 'Oman', 'OMN', '512', '968', 0, NULL, NULL),
(162, 'PK', NULL, 'PAKISTAN', NULL, 'Pakistan', 'PAK', '586', '92', 0, NULL, NULL),
(163, 'PW', NULL, 'PALAU', NULL, 'Palau', 'PLW', '585', '680', 0, NULL, NULL),
(164, 'PS', NULL, 'PALESTINIAN TERRITORY, OCCUPIED', NULL, 'Palestinian Territory, Occupied', NULL, NULL, '970', 0, NULL, NULL),
(165, 'PA', NULL, 'PANAMA', NULL, 'Panama', 'PAN', '591', '507', 0, NULL, NULL),
(166, 'PG', NULL, 'PAPUA NEW GUINEA', NULL, 'Papua New Guinea', 'PNG', '598', '675', 0, NULL, NULL),
(167, 'PY', NULL, 'PARAGUAY', NULL, 'Paraguay', 'PRY', '600', '595', 0, NULL, NULL),
(168, 'PE', NULL, 'PERU', NULL, 'Peru', 'PER', '604', '51', 0, NULL, NULL),
(169, 'PH', NULL, 'PHILIPPINES', NULL, 'Philippines', 'PHL', '608', '63', 0, NULL, NULL),
(170, 'PN', NULL, 'PITCAIRN', NULL, 'Pitcairn', 'PCN', '612', '0', 0, NULL, NULL),
(171, 'PL', NULL, 'POLAND', NULL, 'Poland', 'POL', '616', '48', 0, NULL, NULL),
(172, 'PT', NULL, 'PORTUGAL', NULL, 'Portugal', 'PRT', '620', '351', 0, NULL, NULL),
(173, 'PR', NULL, 'PUERTO RICO', NULL, 'Puerto Rico', 'PRI', '630', '1787', 0, NULL, NULL),
(174, 'QA', NULL, 'QATAR', NULL, 'Qatar', 'QAT', '634', '974', 0, NULL, NULL),
(175, 'RE', NULL, 'REUNION', NULL, 'Reunion', 'REU', '638', '262', 0, NULL, NULL),
(176, 'RO', NULL, 'ROMANIA', NULL, 'Romania', 'ROM', '642', '40', 0, NULL, NULL),
(177, 'RU', NULL, 'RUSSIAN FEDERATION', NULL, 'Russian Federation', 'RUS', '643', '70', 0, NULL, NULL),
(178, 'RW', NULL, 'RWANDA', NULL, 'Rwanda', 'RWA', '646', '250', 0, NULL, NULL),
(179, 'SH', NULL, 'SAINT HELENA', NULL, 'Saint Helena', 'SHN', '654', '290', 0, NULL, NULL),
(180, 'KN', NULL, 'SAINT KITTS AND NEVIS', NULL, 'Saint Kitts and Nevis', 'KNA', '659', '1869', 0, NULL, NULL),
(181, 'LC', NULL, 'SAINT LUCIA', NULL, 'Saint Lucia', 'LCA', '662', '1758', 0, NULL, NULL),
(182, 'PM', NULL, 'SAINT PIERRE AND MIQUELON', NULL, 'Saint Pierre and Miquelon', 'SPM', '666', '508', 0, NULL, NULL),
(183, 'VC', NULL, 'SAINT VINCENT AND THE GRENADINES', NULL, 'Saint Vincent and the Grenadines', 'VCT', '670', '1784', 0, NULL, NULL),
(184, 'WS', NULL, 'SAMOA', NULL, 'Samoa', 'WSM', '882', '684', 0, NULL, NULL),
(185, 'SM', NULL, 'SAN MARINO', NULL, 'San Marino', 'SMR', '674', '378', 0, NULL, NULL),
(186, 'ST', NULL, 'SAO TOME AND PRINCIPE', NULL, 'Sao Tome and Principe', 'STP', '678', '239', 0, NULL, NULL),
(187, 'SA', 'السعودية', 'SAUDI ARABIA', NULL, 'Saudi Arabia', 'SAU', '682', '966', 0, NULL, '2022-06-10 02:30:20'),
(188, 'SN', NULL, 'SENEGAL', NULL, 'Senegal', 'SEN', '686', '221', 0, NULL, NULL),
(189, 'CS', NULL, 'SERBIA AND MONTENEGRO', NULL, 'Serbia and Montenegro', NULL, NULL, '381', 0, NULL, NULL),
(190, 'SC', NULL, 'SEYCHELLES', NULL, 'Seychelles', 'SYC', '690', '248', 0, NULL, NULL),
(191, 'SL', NULL, 'SIERRA LEONE', NULL, 'Sierra Leone', 'SLE', '694', '232', 0, NULL, NULL),
(192, 'SG', NULL, 'SINGAPORE', NULL, 'Singapore', 'SGP', '702', '65', 0, NULL, NULL),
(193, 'SK', NULL, 'SLOVAKIA', NULL, 'Slovakia', 'SVK', '703', '421', 0, NULL, NULL),
(194, 'SI', NULL, 'SLOVENIA', NULL, 'Slovenia', 'SVN', '705', '386', 0, NULL, NULL),
(195, 'SB', NULL, 'SOLOMON ISLANDS', NULL, 'Solomon Islands', 'SLB', '90', '677', 0, NULL, NULL),
(196, 'SO', NULL, 'SOMALIA', NULL, 'Somalia', 'SOM', '706', '252', 0, NULL, NULL),
(197, 'ZA', NULL, 'SOUTH AFRICA', NULL, 'South Africa', 'ZAF', '710', '27', 0, NULL, NULL),
(198, 'GS', NULL, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', NULL, 'South Georgia and the South Sandwich Islands', NULL, NULL, '0', 0, NULL, NULL),
(199, 'ES', NULL, 'SPAIN', NULL, 'Spain', 'ESP', '724', '34', 0, NULL, NULL),
(200, 'LK', NULL, 'SRI LANKA', NULL, 'Sri Lanka', 'LKA', '144', '94', 0, NULL, NULL),
(201, 'SD', NULL, 'SUDAN', NULL, 'Sudan', 'SDN', '736', '249', 0, NULL, NULL),
(202, 'SR', NULL, 'SURINAME', NULL, 'Suriname', 'SUR', '740', '597', 0, NULL, NULL),
(203, 'SJ', NULL, 'SVALBARD AND JAN MAYEN', NULL, 'Svalbard and Jan Mayen', 'SJM', '744', '47', 0, NULL, NULL),
(204, 'SZ', NULL, 'SWAZILAND', NULL, 'Swaziland', 'SWZ', '748', '268', 0, NULL, NULL),
(205, 'SE', NULL, 'SWEDEN', NULL, 'Sweden', 'SWE', '752', '46', 0, NULL, NULL),
(206, 'CH', NULL, 'SWITZERLAND', NULL, 'Switzerland', 'CHE', '756', '41', 0, NULL, NULL),
(207, 'SY', NULL, 'SYRIAN ARAB REPUBLIC', NULL, 'Syrian Arab Republic', 'SYR', '760', '963', 0, NULL, NULL),
(208, 'TW', NULL, 'TAIWAN, PROVINCE OF CHINA', NULL, 'Taiwan, Province of China', 'TWN', '158', '886', 0, NULL, NULL),
(209, 'TJ', NULL, 'TAJIKISTAN', NULL, 'Tajikistan', 'TJK', '762', '992', 0, NULL, NULL),
(210, 'TZ', NULL, 'TANZANIA, UNITED REPUBLIC OF', NULL, 'Tanzania, United Republic of', 'TZA', '834', '255', 0, NULL, NULL),
(211, 'TH', NULL, 'THAILAND', NULL, 'Thailand', 'THA', '764', '66', 0, NULL, NULL),
(212, 'TL', NULL, 'TIMOR-LESTE', NULL, 'Timor-Leste', NULL, NULL, '670', 0, NULL, NULL),
(213, 'TG', NULL, 'TOGO', NULL, 'Togo', 'TGO', '768', '228', 0, NULL, NULL),
(214, 'TK', NULL, 'TOKELAU', NULL, 'Tokelau', 'TKL', '772', '690', 0, NULL, NULL),
(215, 'TO', NULL, 'TONGA', NULL, 'Tonga', 'TON', '776', '676', 0, NULL, NULL),
(216, 'TT', NULL, 'TRINIDAD AND TOBAGO', NULL, 'Trinidad and Tobago', 'TTO', '780', '1868', 0, NULL, NULL),
(217, 'TN', NULL, 'TUNISIA', NULL, 'Tunisia', 'TUN', '788', '216', 0, NULL, NULL),
(218, 'TR', NULL, 'TURKEY', NULL, 'Turkey', 'TUR', '792', '90', 0, NULL, NULL),
(219, 'TM', NULL, 'TURKMENISTAN', NULL, 'Turkmenistan', 'TKM', '795', '7370', 0, NULL, NULL),
(220, 'TC', NULL, 'TURKS AND CAICOS ISLANDS', NULL, 'Turks and Caicos Islands', 'TCA', '796', '1649', 0, NULL, NULL),
(221, 'TV', NULL, 'TUVALU', NULL, 'Tuvalu', 'TUV', '798', '688', 0, NULL, NULL),
(222, 'UG', NULL, 'UGANDA', NULL, 'Uganda', 'UGA', '800', '256', 0, NULL, NULL),
(223, 'UA', NULL, 'UKRAINE', NULL, 'Ukraine', 'UKR', '804', '380', 0, NULL, NULL),
(224, 'AE', 'الإمارات العربية المتحدة', 'UNITED ARAB EMIRATES', NULL, 'United Arab Emirates', 'ARE', '784', '971', 0, NULL, '2022-06-10 02:29:47'),
(225, 'GB', NULL, 'UNITED KINGDOM', NULL, 'United Kingdom', 'GBR', '826', '44', 0, NULL, NULL),
(226, 'US', NULL, 'UNITED STATES', NULL, 'United States', 'USA', '840', '1', 0, NULL, NULL),
(227, 'UM', NULL, 'UNITED STATES MINOR OUTLYING ISLANDS', NULL, 'United States Minor Outlying Islands', NULL, NULL, '1', 0, NULL, NULL),
(228, 'UY', NULL, 'URUGUAY', NULL, 'Uruguay', 'URY', '858', '598', 0, NULL, NULL),
(229, 'UZ', NULL, 'UZBEKISTAN', NULL, 'Uzbekistan', 'UZB', '860', '998', 0, NULL, NULL),
(230, 'VU', NULL, 'VANUATU', NULL, 'Vanuatu', 'VUT', '548', '678', 0, NULL, NULL),
(231, 'VE', NULL, 'VENEZUELA', NULL, 'Venezuela', 'VEN', '862', '58', 0, NULL, NULL),
(232, 'VN', NULL, 'VIET NAM', NULL, 'Viet Nam', 'VNM', '704', '84', 0, NULL, NULL),
(233, 'VG', NULL, 'VIRGIN ISLANDS, BRITISH', NULL, 'Virgin Islands, British', 'VGB', '92', '1284', 0, NULL, NULL),
(234, 'VI', NULL, 'VIRGIN ISLANDS, U.S.', NULL, 'Virgin Islands, U.s.', 'VIR', '850', '1340', 0, NULL, NULL),
(235, 'WF', NULL, 'WALLIS AND FUTUNA', NULL, 'Wallis and Futuna', 'WLF', '876', '681', 0, NULL, NULL),
(236, 'EH', NULL, 'WESTERN SAHARA', NULL, 'Western Sahara', 'ESH', '732', '212', 0, NULL, NULL),
(237, 'YE', NULL, 'YEMEN', NULL, 'Yemen', 'YEM', '887', '967', 0, NULL, NULL),
(238, 'ZM', NULL, 'ZAMBIA', NULL, 'Zambia', 'ZMB', '894', '260', 0, NULL, NULL),
(239, 'ZW', NULL, 'ZIMBABWE', NULL, 'Zimbabwe', 'ZWE', '716', '263', 0, NULL, NULL),
(240, 'RS', NULL, 'SERBIA', NULL, 'Serbia', 'SRB', '688', '381', 0, NULL, NULL),
(241, 'AP', NULL, 'ASIA PACIFIC REGION', NULL, 'Asia / Pacific Region', '0', '0', '0', 0, NULL, NULL),
(242, 'ME', NULL, 'MONTENEGRO', NULL, 'Montenegro', 'MNE', '499', '382', 0, NULL, NULL),
(243, 'AX', NULL, 'ALAND ISLANDS', NULL, 'Aland Islands', 'ALA', '248', '358', 0, NULL, NULL),
(244, 'BQ', NULL, 'BONAIRE, SINT EUSTATIUS AND SABA', NULL, 'Bonaire, Sint Eustatius and Saba', 'BES', '535', '599', 0, NULL, NULL),
(245, 'CW', NULL, 'CURACAO', NULL, 'Curacao', 'CUW', '531', '599', 0, NULL, NULL),
(246, 'GG', NULL, 'GUERNSEY', NULL, 'Guernsey', 'GGY', '831', '44', 0, NULL, NULL),
(247, 'IM', NULL, 'ISLE OF MAN', NULL, 'Isle of Man', 'IMN', '833', '44', 0, NULL, NULL),
(248, 'JE', NULL, 'JERSEY', NULL, 'Jersey', 'JEY', '832', '44', 0, NULL, NULL),
(249, 'XK', NULL, 'KOSOVO', NULL, 'Kosovo', '---', '0', '381', 0, NULL, NULL),
(250, 'BL', NULL, 'SAINT BARTHELEMY', NULL, 'Saint Barthelemy', 'BLM', '652', '590', 0, NULL, NULL),
(251, 'MF', NULL, 'SAINT MARTIN', NULL, 'Saint Martin', 'MAF', '663', '590', 0, NULL, NULL),
(252, 'SX', NULL, 'SINT MAARTEN', NULL, 'Sint Maarten', 'SXM', '534', '1', 0, NULL, NULL),
(253, 'SS', NULL, 'SOUTH SUDAN', NULL, 'South Sudan', 'SSD', '728', '211', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `title_ar`, `title_en`, `image`, `icon`, `description_ar`, `description_en`, `created_at`, `updated_at`) VALUES
(1, 'تعديل', 'edit', 'b0br1wq9CzIyGPBQKBu8TbBnr873iQHdLeuI8Jsw.png', 'XVHToxsaEzZFaAr9rmbtu7tmmfb4YWNvdy8pErhh.png', 'وصف التعديل', 'edit desc', '2023-01-02 14:17:24', '2023-01-02 16:39:38'),
(2, 'Autem non maiores en', 'Ut libero velit corr', 'tKCVDH2rluVjzNlCiPBEc4RLb5wkixPixXJax2Mu.png', 'zGscK2cGbOSSQ1b0ykoILUQ7smQOcc80x2ooamwK.png', 'Natus rerum aperiam', 'Atque molestiae tota', '2023-01-02 14:18:14', '2023-01-02 14:18:14'),
(4, 'اضافة عنوان', 'add title', 'PQz09ddiidZujRbuE9IAFUTwZma7OnDdR8R9prqt.png', '8CElFv9eVOivt4a9thBmLAFpKn10SF8sps3RLX1I.png', 'وصف مع الصورة', 'edit with image', '2023-01-02 14:19:40', '2023-01-02 16:39:23'),
(5, 'Dolores ullam volupt', 'Cum eveniet et volu', 'VAH2teKkQ3jFvRbWBBqpaWwYXzt4Tw8j0UOQOURf.png', 'gN1gZdHYjedIUJz0sUxbdOzSYtuB9xNnAEB95PB4.png', 'Consequatur facere d', 'Repudiandae irure ip', '2023-01-02 14:20:27', '2023-01-02 14:20:27'),
(7, 'Ut at asperiores qui', 'Officia odio nobis t', 'mlNInncgkglPliIn6BedLve5uQfBMmoxoNOgMU0G.png', 'P4k61r2uRToV6R4KKioIpq6Mp8RbbUVMwoNJbx2F.png', 'Quas voluptas quo la', 'Nihil quae voluptatu', '2023-01-02 16:34:18', '2023-01-02 16:34:19'),
(8, 'دكتور', 'doctor', 'hN2xYysb0gZsDTJWP36PA1QRnN5q81UMmh152DgP.png', 'd4V4k4qy6Dl178IkTsw4fVUcRATmWtgz276xKcqB.png', 'Ut est officia optio', 'Dolorem fugiat harum', '2023-01-02 16:34:44', '2023-01-02 16:34:45');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryName_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `categoryName_ar`, `categoryName_en`, `images`, `created_at`, `updated_at`) VALUES
(1, 'الجراحة', 'surgery', '[\"1ZWJJK7N2pbLSpOE0fUrJfVlEUtXfX4eMTcnlcDG.png\",\"Ru6dLzhfIY4cCC96BjEvmNZXb8k3ZeXy2Ngkkq7B.jpg\",\"Lq1m2td399JmeCWx1QgTMt0w6rE0IRTHiRHRFx4S.jpg\",\"sP7nWkjJHHgvZZTz9nTFhIJ8zAjszTnw3lXBNLlr.jpg\"]', '2023-01-03 10:17:21', '2023-01-03 11:39:38'),
(3, 'وحدة الأعصاب', 'Neurology unit', '[\"418ltqF30VavV6mjuJHhEdxlaN6HASCZwSvLfr3M.png\",\"kxwidR5oPmNynIA2GmIKTSagQZrgPhjNEh9Bhtoj.png\",\"Ls0T9fWXafT1suJqDAaCgfW5X4pctE4tvoNgzvw5.png\",\"uBDw1ItICUvXzdCp2kSemGSuFM1AnFEuZ2KjfUES.png\"]', '2023-01-03 11:41:51', '2023-01-03 11:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_06_07_165740_create_roles_table', 1),
(5, '2022_06_07_165808_create_permissions_table', 1),
(6, '2022_06_07_165835_create_role_permissions_table', 1),
(7, '2022_06_08_203325_create_countries_table', 2),
(8, '2022_06_09_100938_create_governorates_table', 3),
(9, '2022_06_09_101416_create_cities_table', 3),
(19, '2022_06_10_003429_create_currencies_table', 4),
(20, '2022_06_10_005227_create_writers_table', 4),
(21, '2022_06_10_010359_create_sections_table', 4),
(22, '2022_06_11_003547_create_f_a_qs_table', 5),
(23, '2022_06_11_022745_create_pages_table', 6),
(25, '2022_06_11_031251_create_contact_messages_table', 7),
(26, '2022_06_11_054130_create_settings_table', 8),
(28, '2022_06_11_171653_create_user_addresses_table', 9),
(45, '2022_06_11_203454_create_user_payment_methods_table', 10),
(46, '2022_06_11_233917_create_books_table', 10),
(47, '2022_06_12_002841_create_book_features_table', 10),
(50, '2022_06_15_132358_create_publisher_payment_methods_table', 11),
(51, '2022_06_15_132757_create_publisher_payments_histories_table', 11),
(55, '2022_06_15_161605_create_orders_table', 12),
(56, '2022_06_15_161841_create_order_items_table', 12),
(57, '2022_06_15_171913_create_book_reviews_table', 12),
(59, '2022_12_29_142449_create_services_table', 13),
(62, '2023_01_01_111139_create_we_cares_table', 14),
(64, '2023_01_01_130038_create_our_teams_table', 15),
(66, '2023_01_02_113519_create_equipment_table', 16),
(67, '2023_01_02_130431_create_news_table', 17),
(70, '2023_01_02_151347_create_media_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title_ar`, `title_en`, `description_ar`, `description_en`, `image`, `created_at`, `updated_at`) VALUES
(1, 'تعديل 1', 'edit', 'تعديل الوصف', 'desc edit', 'hZnx1Z1afD6MmQ4u54ttvfWGwJ4dlxoPyOhlRHQC.png', '2023-01-02 15:50:01', '2023-01-02 15:54:51'),
(3, 'new ar 2', 'new en 2', 'new desc ar', 'new desc en', 'WmymSr5iPN2JauKYy91JUbLMTNuvRHimOFnkxWoj.png', '2023-01-02 15:57:44', '2023-01-02 15:57:44');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('9bca4f1b-15a9-4119-882f-7bcd7691317f', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisher\",\"linked_id\":20,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 Mohamed Sultan \\u0628\\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0645\\u0646\\u0635\\u0629 \\u0643\\u0646\\u0627\\u0634\\u0631 \\u0648\\u0628\\u062d\\u0627\\u062c\\u0629 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0631\\u0627\\u062c\\u0639\\u0629 \\u0648\\u0627\\u0644\\u0645\\u0648\\u0627\\u0641\\u0642\\u0629.\",\"date\":\"2022-07-01\",\"time\":\"21:18\"}', '2022-07-01 19:58:08', '2022-07-01 19:18:36', '2022-07-01 19:58:08'),
('cef8bb50-7c02-4f91-8f9c-00fc5fde2db3', 'App\\Notifications\\PublisherNotifications', 'App\\User', 20, '{\"type\":\"activatePublisherAccount\",\"linked_id\":20,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0645\\u062d\\u0645\\u062f \\u0633\\u0644\\u0637\\u0627\\u0646 \\u0648\\u0647\\u0648 \\u0623\\u062d\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0628\\u062a\\u0641\\u0639\\u064a\\u0644 \\u062d\\u0633\\u0627\\u0628\\u0643 \\u0628\\u0646\\u062c\\u0627\\u062d.\",\"date\":\"2022-07-01\",\"time\":\"22:23\"}', '2022-07-01 20:27:40', '2022-07-01 20:23:34', '2022-07-01 20:27:40'),
('717167bc-2840-43e8-b5fb-caa8039558b0', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":2,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-07-02\",\"time\":\"01:27\"}', '2022-07-02 00:05:39', '2022-07-01 23:27:18', '2022-07-02 00:05:39'),
('02828027-ddac-4d36-a601-1819d1ea778d', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":2,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-07-02\",\"time\":\"02:06\"}', '2022-07-02 00:06:38', '2022-07-02 00:06:31', '2022-07-02 00:06:38'),
('4d363945-ec01-4176-8e5a-ddb79d17faee', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":6,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-07-02\",\"time\":\"02:07\"}', '2022-07-02 00:07:18', '2022-07-02 00:07:11', '2022-07-02 00:07:18'),
('a69df79b-642b-46d6-adcb-e2c2bb11db64', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newWriter\",\"linked_id\":3,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0643\\u0627\\u062a\\u0628 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-07-02\",\"time\":\"02:31\"}', '2022-07-02 04:38:32', '2022-07-02 00:31:32', '2022-07-02 04:38:32'),
('9679dcc2-c30c-47b5-b9e4-f58df76064dc', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":4,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-07-03\",\"time\":\"16:44\"}', '2022-07-03 16:52:38', '2022-07-03 16:44:40', '2022-07-03 16:52:38'),
('5805da45-e7c8-412e-9b58-797d95faa747', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newWriter\",\"linked_id\":5,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0643\\u0627\\u062a\\u0628 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-07-03\",\"time\":\"16:45\"}', '2022-07-03 16:52:32', '2022-07-03 16:45:28', '2022-07-03 16:52:32'),
('867bdbd7-b4b9-4175-b369-07e0bd86e089', 'App\\Notifications\\PublisherNotifications', 'App\\User', 2, '{\"type\":\"activatePublisherAccount\",\"linked_id\":2,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0645\\u062d\\u0645\\u062f \\u0633\\u0644\\u0637\\u0627\\u0646 \\u0648\\u0647\\u0648 \\u0623\\u062d\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0628\\u062a\\u0641\\u0639\\u064a\\u0644 \\u062d\\u0633\\u0627\\u0628\\u0643 \\u0628\\u0646\\u062c\\u0627\\u062d.\",\"date\":\"2022-07-04\",\"time\":\"15:05\"}', '2022-07-04 15:09:05', '2022-07-04 15:05:39', '2022-07-04 15:09:05'),
('4b3242bc-b348-466a-8c0f-a8108d1531dc', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":8,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u0645\\u062d\\u0645\\u062f \\u0645\\u062d\\u0645\\u0648\\u062f \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-07-04\",\"time\":\"15:14\"}', '2022-07-04 15:14:16', '2022-07-04 15:14:06', '2022-07-04 15:14:16'),
('431fbcc8-cc27-4ed3-aef2-e0678bbc94c2', 'App\\Notifications\\PublisherNotifications', 'App\\User', 2, '{\"type\":\"activatePublisherAccount\",\"linked_id\":2,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0645\\u062d\\u0645\\u062f \\u0633\\u0644\\u0637\\u0627\\u0646 \\u0648\\u0647\\u0648 \\u0623\\u062d\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0628\\u062a\\u0641\\u0639\\u064a\\u0644 \\u062d\\u0633\\u0627\\u0628\\u0643 \\u0628\\u0646\\u062c\\u0627\\u062d.\",\"date\":\"2022-07-05\",\"time\":\"08:36\"}', '2022-07-05 11:18:58', '2022-07-05 08:36:28', '2022-07-05 11:18:58'),
('8c6ba7f6-46f1-499d-968e-38f7eee4dcd1', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":9,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-07-05\",\"time\":\"08:38\"}', '2022-07-05 08:38:30', '2022-07-05 08:38:15', '2022-07-05 08:38:30'),
('e2e16d19-e8f6-4ffb-a4cc-f2b15d0eda90', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":11,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-07-05\",\"time\":\"08:50\"}', '2022-07-05 08:51:10', '2022-07-05 08:50:44', '2022-07-05 08:51:10'),
('15cc1224-57a0-4f40-b9dd-96ef767e2442', 'App\\Notifications\\PublisherNotifications', 'App\\User', 2, '{\"type\":\"activatePublisherAccount\",\"linked_id\":2,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0645\\u062d\\u0645\\u062f \\u0633\\u0644\\u0637\\u0627\\u0646 \\u0648\\u0647\\u0648 \\u0623\\u062d\\u062f \\u0627\\u0644\\u0645\\u062f\\u0631\\u0627\\u0621 \\u0628\\u062a\\u0641\\u0639\\u064a\\u0644 \\u062d\\u0633\\u0627\\u0628\\u0643 \\u0628\\u0646\\u062c\\u0627\\u062d.\",\"date\":\"2022-07-05\",\"time\":\"12:14\"}', '2022-07-05 12:14:29', '2022-07-05 12:14:18', '2022-07-05 12:14:29'),
('d01dd762-5e69-4245-871b-d8429423865c', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":13,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-08-07\",\"time\":\"18:53\"}', '2022-08-08 00:03:46', '2022-08-07 22:53:10', '2022-08-08 00:03:46'),
('316138c6-8def-42ad-9a5e-8769d6ed7489', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newWriter\",\"linked_id\":6,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0643\\u0627\\u062a\\u0628 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-08-07\",\"time\":\"20:01\"}', '2022-08-08 00:03:39', '2022-08-08 00:01:09', '2022-08-08 00:03:39'),
('b96a62c7-f74f-4434-a51b-89e76de6fbc2', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":15,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-09-27\",\"time\":\"10:29\"}', '2022-09-27 14:58:15', '2022-09-27 14:29:03', '2022-09-27 14:58:15'),
('3419e91e-8777-4f7c-8719-d2c2a6fb5970', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newWriter\",\"linked_id\":10,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0643\\u0627\\u062a\\u0628 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-09-27\",\"time\":\"10:42\"}', '2022-09-27 14:57:59', '2022-09-27 14:42:24', '2022-09-27 14:57:59'),
('ec0958f6-21b7-403f-959e-363d6d92b07d', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newWriter\",\"linked_id\":11,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0643\\u0627\\u062a\\u0628 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-09-27\",\"time\":\"11:19\"}', '2022-09-29 13:36:42', '2022-09-27 15:19:20', '2022-09-29 13:36:42'),
('85da72cd-6341-4793-a4c1-873e65881721', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":16,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-09-27\",\"time\":\"11:31\"}', '2022-09-29 13:36:47', '2022-09-27 15:31:14', '2022-09-29 13:36:47'),
('6895d39d-5d69-4a15-b86f-1fc1f5fa5afe', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":17,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-09-27\",\"time\":\"13:25\"}', '2022-09-29 13:36:38', '2022-09-27 17:25:46', '2022-09-29 13:36:38'),
('93a3e902-2437-483f-9ad7-6ae7245fc7d3', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":18,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-09-27\",\"time\":\"15:48\"}', '2022-09-29 13:36:51', '2022-09-27 19:48:07', '2022-09-29 13:36:51'),
('11c5de45-c08d-4972-8b3d-2ce7ff081c4f', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":19,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-09-27\",\"time\":\"15:48\"}', '2022-09-29 13:36:34', '2022-09-27 19:48:44', '2022-09-29 13:36:34'),
('4c6c2756-1ba6-4a0a-89b2-7f59a2ce5dc0', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":40,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-09-30\",\"time\":\"11:18\"}', '2022-10-02 21:20:50', '2022-09-30 15:18:33', '2022-10-02 21:20:50'),
('9acb3a57-d850-4b2f-b91a-cf35411b4e32', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newWriter\",\"linked_id\":13,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0643\\u0627\\u062a\\u0628 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-02\",\"time\":\"14:06\"}', '2022-10-02 19:25:01', '2022-10-02 18:06:06', '2022-10-02 19:25:01'),
('56054d36-2d98-4e45-a798-64103a55d7cc', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":46,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-10-03\",\"time\":\"12:45\"}', '2022-10-03 16:45:34', '2022-10-03 16:45:15', '2022-10-03 16:45:34'),
('11003824-61d2-4193-bd59-1f480413cb21', 'App\\Notifications\\AdminNotifications', 'App\\User', 84, '{\"type\":\"resetPasswordCode\",\"linked_id\":84,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-03\",\"time\":\"14:44\"}', NULL, '2022-10-03 18:44:18', '2022-10-03 18:44:18'),
('7fd54d8e-3214-48f5-80c3-0f702bb843ba', 'App\\Notifications\\AdminNotifications', 'App\\User', 86, '{\"type\":\"resetPasswordCode\",\"linked_id\":86,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-03\",\"time\":\"15:40\"}', NULL, '2022-10-03 19:40:46', '2022-10-03 19:40:46'),
('57c6f9fe-e0fd-42b5-bd04-a07d6d688fe9', 'App\\Notifications\\AdminNotifications', 'App\\User', 86, '{\"type\":\"resetPasswordCode\",\"linked_id\":86,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-03\",\"time\":\"15:52\"}', NULL, '2022-10-03 19:52:07', '2022-10-03 19:52:07'),
('53f83b12-c2dc-4167-bb9a-7d0bf4849aea', 'App\\Notifications\\AdminNotifications', 'App\\User', 72, '{\"type\":\"resetPasswordCode\",\"linked_id\":72,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-04\",\"time\":\"06:47\"}', NULL, '2022-10-04 10:47:19', '2022-10-04 10:47:19'),
('6be4c1f6-8b71-496c-b9b9-b69366fd1ebf', 'App\\Notifications\\AdminNotifications', 'App\\User', 89, '{\"type\":\"resetPasswordCode\",\"linked_id\":89,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-04\",\"time\":\"06:47\"}', NULL, '2022-10-04 10:47:34', '2022-10-04 10:47:34'),
('e72b3078-f3a6-428c-b52b-e80d22eb9467', 'App\\Notifications\\AdminNotifications', 'App\\User', 89, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":89,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-10-04\",\"time\":\"06:48\"}', NULL, '2022-10-04 10:48:12', '2022-10-04 10:48:12'),
('9378f144-c933-4c4a-96f3-45dd51a765bd', 'App\\Notifications\\AdminNotifications', 'App\\User', 72, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":72,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-10-04\",\"time\":\"06:48\"}', NULL, '2022-10-04 10:48:31', '2022-10-04 10:48:31'),
('4203008c-8364-4ac3-9da9-fcee7c9651f7', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":53,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 \\u062d\\u0633\\u0627\\u0645 \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-10-04\",\"time\":\"13:33\"}', '2022-10-04 17:34:09', '2022-10-04 17:33:38', '2022-10-04 17:34:09'),
('5d2feeaf-f7d9-449c-bba1-8cbe82dc2c28', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"11:32\"}', NULL, '2022-10-06 15:32:18', '2022-10-06 15:32:18'),
('030bb3f7-3335-4e3f-89d9-1c3e9426ba21', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"12:39\"}', NULL, '2022-10-06 16:39:53', '2022-10-06 16:39:53'),
('09a23c2d-853f-437d-9bbc-59e1a8ecdb81', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"12:42\"}', NULL, '2022-10-06 16:42:04', '2022-10-06 16:42:04'),
('899d88d9-63bb-42d2-940b-8d9274979c2c', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"12:43\"}', NULL, '2022-10-06 16:43:44', '2022-10-06 16:43:44'),
('e3784cf3-3432-4a96-9ea0-99443e2c615c', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"12:46\"}', NULL, '2022-10-06 16:46:46', '2022-10-06 16:46:46'),
('f75c81c6-6bb0-4068-9219-fd45475955bc', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"12:52\"}', NULL, '2022-10-06 16:52:44', '2022-10-06 16:52:44'),
('be5e3721-cf0c-4cfa-98d8-25ff6a8ac41e', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"12:57\"}', NULL, '2022-10-06 16:57:44', '2022-10-06 16:57:44'),
('da2d84c8-2f77-4103-a268-f048e3a4da76', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":96,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-10-06\",\"time\":\"12:58\"}', NULL, '2022-10-06 16:58:55', '2022-10-06 16:58:55'),
('cd06e668-64a7-42ae-90b8-955713818c41', 'App\\Notifications\\AdminNotifications', 'App\\User', 96, '{\"type\":\"resetPasswordCode\",\"linked_id\":96,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-10-06\",\"time\":\"13:01\"}', NULL, '2022-10-06 17:01:32', '2022-10-06 17:01:32'),
('f43a1734-4759-47ec-9b5c-a09c367a0699', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newWriter\",\"linked_id\":24,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u0643\\u0627\\u062a\\u0628 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-06\",\"time\":\"17:58\"}', '2022-10-07 00:51:59', '2022-10-06 21:58:21', '2022-10-07 00:51:59'),
('ea11e053-c43f-4551-b6ab-31cb426d6c07', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":11,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 Ezat Ellozy \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-06\",\"time\":\"16:49\"}', '2022-10-07 12:46:16', '2022-10-06 20:49:48', '2022-10-07 12:46:16'),
('b1d204ee-4c64-4378-bf73-6f9873df5d3a', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"41\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 Ezat Ellozy \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-06\",\"time\":\"16:51\"}', '2022-10-07 00:52:06', '2022-10-06 20:51:22', '2022-10-07 00:52:06'),
('646bf715-f15c-4346-bd9e-bf1db3f963ca', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"40\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test 1000 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-07\",\"time\":\"04:39\"}', '2022-10-07 12:40:36', '2022-10-07 08:39:12', '2022-10-07 12:40:36'),
('fdfa237a-97de-412c-b472-bac5191f552c', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"40\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test 1000 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-07\",\"time\":\"04:39\"}', '2022-10-07 12:46:16', '2022-10-07 08:39:45', '2022-10-07 12:46:16'),
('78341ab1-5029-4d7c-9d87-fd2636818829', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"40\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test 1000 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-07\",\"time\":\"04:40\"}', '2022-10-07 12:46:16', '2022-10-07 08:40:12', '2022-10-07 12:46:16'),
('138df334-a312-467e-ad60-87007cb0dede', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"40\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test 1000 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-07\",\"time\":\"04:40\"}', '2022-10-07 12:46:16', '2022-10-07 08:40:43', '2022-10-07 12:46:16'),
('34844265-a270-4831-be2e-5340dc55977d', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"40\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test 1000 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-07\",\"time\":\"04:41\"}', '2022-10-07 12:46:16', '2022-10-07 08:41:04', '2022-10-07 12:46:16'),
('67f5d11e-6114-4ef1-94f9-19217ebc8470', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"40\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test 1000 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-07\",\"time\":\"04:43\"}', '2022-10-07 12:46:12', '2022-10-07 08:43:34', '2022-10-07 12:46:12'),
('e1612b4e-0ee8-45d4-aaf6-e2b7ac16049e', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"40\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 Obaida \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-07\",\"time\":\"05:08\"}', '2022-10-11 12:40:56', '2022-10-07 09:08:41', '2022-10-11 12:40:56'),
('6abd5251-c853-482e-8e52-ea3d11928590', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"41\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test 1000 \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-08\",\"time\":\"09:41\"}', '2022-10-10 17:13:41', '2022-10-08 13:41:32', '2022-10-10 17:13:41'),
('1915c4fb-83af-41ef-8916-23de33534190', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"41\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 ObaidaMustafa \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-09\",\"time\":\"10:45\"}', '2022-10-10 14:33:32', '2022-10-09 14:45:50', '2022-10-10 14:33:32'),
('93640570-10e1-41b8-a7ba-ad1008256b96', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-12\",\"time\":\"07:17\"}', '2022-10-12 16:02:43', '2022-10-12 11:17:02', '2022-10-12 16:02:43'),
('db3b7515-8f1d-464d-9f3f-81e0ea1f71d6', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 Obaida \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-12\",\"time\":\"08:10\"}', '2022-10-12 16:18:30', '2022-10-12 12:10:42', '2022-10-12 16:18:30'),
('f2daa5d9-e337-4f71-a424-914f45e89e3d', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-12\",\"time\":\"09:47\"}', '2022-10-12 17:51:04', '2022-10-12 13:47:52', '2022-10-12 17:51:04'),
('5c18525e-d607-47b7-86da-ba016706d4ea', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-12\",\"time\":\"09:51\"}', '2022-10-12 17:55:04', '2022-10-12 13:51:34', '2022-10-12 17:55:04'),
('421b8d56-a8da-4e74-9470-10c05956caa8', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 Sara \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-12\",\"time\":\"10:22\"}', '2022-10-12 18:23:49', '2022-10-12 14:22:44', '2022-10-12 18:23:49'),
('1ce0783e-59a3-4fe6-a416-015ccab48e9e', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 manar \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-16\",\"time\":\"07:44\"}', '2022-10-16 20:12:55', '2022-10-16 11:44:59', '2022-10-16 20:12:55'),
('2f7f9e44-cd97-4865-9a31-cf3c81592871', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 manar \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-16\",\"time\":\"08:02\"}', '2022-10-16 20:09:19', '2022-10-16 12:02:54', '2022-10-16 20:09:19'),
('b7446110-37cb-4b1a-8130-e0ced55e371f', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"134\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-16\",\"time\":\"12:13\"}', '2022-10-16 20:14:09', '2022-10-16 16:13:48', '2022-10-16 20:14:09'),
('0cc83c1e-6586-44db-a825-e4115dbab1cf', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"134\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-16\",\"time\":\"12:16\"}', '2022-10-16 20:20:31', '2022-10-16 16:16:37', '2022-10-16 20:20:31'),
('24505c3e-d5f5-40d9-81dd-00752a7e1499', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"134\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-16\",\"time\":\"12:17\"}', '2022-10-16 20:20:35', '2022-10-16 16:17:31', '2022-10-16 20:20:35'),
('dc462511-6555-4d11-bc51-1a34ae81fe99', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"130\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-17\",\"time\":\"08:33\"}', '2022-10-17 16:34:01', '2022-10-17 12:33:06', '2022-10-17 16:34:01'),
('3d78dbf9-4d37-4177-b27f-a102378ab87b', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"131\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 test \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-17\",\"time\":\"13:32\"}', '2022-10-18 12:07:16', '2022-10-17 17:32:33', '2022-10-18 12:07:16'),
('7a556e53-ebb5-4dba-b8fa-fa7618053623', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"132\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 manar \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-17\",\"time\":\"14:47\"}', '2022-10-18 12:07:09', '2022-10-17 18:47:32', '2022-10-18 12:07:09'),
('4d61213b-f789-4a88-b77a-efbd35e95a35', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"136\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 manar \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-17\",\"time\":\"15:01\"}', '2022-10-18 12:06:56', '2022-10-17 19:01:38', '2022-10-18 12:06:56'),
('d4fb1478-a239-4490-84a7-6ca57e83bbb3', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"129\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-23\",\"time\":\"12:29\"}', '2022-10-23 20:32:25', '2022-10-23 16:29:57', '2022-10-23 20:32:25'),
('583e397e-43cb-4cb0-9ba0-c4cd1e9b1d34', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"125\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-23\",\"time\":\"12:32\"}', '2022-10-23 20:32:54', '2022-10-23 16:32:11', '2022-10-23 20:32:54'),
('6dc5689e-32b7-4baf-a88e-0ac9fda10528', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"121\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 HD \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-10-23\",\"time\":\"12:36\"}', '2022-10-23 20:36:57', '2022-10-23 16:36:42', '2022-10-23 20:36:57'),
('ddd68aec-0148-49d0-aea2-6cf0e94c26bc', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newPublisherMessage\",\"linked_id\":55,\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0646\\u0627\\u0634\\u0631 publisher \\u0628\\u0625\\u0631\\u0633\\u0627\\u0644 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u0627\\u062a\\u0635\\u0644 \\u0628\\u0646\\u0627.\",\"date\":\"2022-10-24\",\"time\":\"10:11\"}', '2022-10-24 14:11:59', '2022-10-24 14:11:42', '2022-10-24 14:11:59'),
('fb762cf5-19a2-4de6-94da-8050089c5af7', 'App\\Notifications\\AdminNotifications', 'App\\User', 128, '{\"type\":\"resetPasswordCode\",\"linked_id\":128,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-03\",\"time\":\"13:52\"}', NULL, '2022-11-03 17:52:41', '2022-11-03 17:52:41'),
('d9758b24-0f2e-4cee-a4ff-cbd49c4ba861', 'App\\Notifications\\AdminNotifications', 'App\\User', 128, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":128,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-11-03\",\"time\":\"13:57\"}', NULL, '2022-11-03 17:57:04', '2022-11-03 17:57:04'),
('1ace98a1-1dad-4a70-8674-9381313316fc', 'App\\Notifications\\AdminNotifications', 'App\\User', 128, '{\"type\":\"resetPasswordCode\",\"linked_id\":128,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-03\",\"time\":\"14:02\"}', NULL, '2022-11-03 18:02:36', '2022-11-03 18:02:36'),
('d10f0352-4fef-4557-ab21-f2d1bb9eb169', 'App\\Notifications\\AdminNotifications', 'App\\User', 128, '{\"type\":\"resetPasswordCode\",\"linked_id\":128,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-03\",\"time\":\"14:09\"}', NULL, '2022-11-03 18:09:28', '2022-11-03 18:09:28'),
('12a488f6-6e5d-4a96-ba3c-4e7fe22c822d', 'App\\Notifications\\AdminNotifications', 'App\\User', 1, '{\"type\":\"newBookReview\",\"linked_id\":\"139\",\"text\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 Abuobaida \\u0628\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0628\\u064a\\u0627\\u0646\\u0627\\u062a \\u062a\\u0642\\u064a\\u064a\\u0645 \\u062c\\u062f\\u064a\\u062f \\u0648\\u064a\\u062c\\u0628 \\u0639\\u0644\\u064a\\u0643 \\u0645\\u0631\\u0627\\u062c\\u0639\\u062a\\u0647 \\u0644\\u062a\\u0641\\u0639\\u064a\\u0644\\u0647.\",\"date\":\"2022-11-04\",\"time\":\"05:43\"}', '2022-11-06 16:38:49', '2022-11-04 09:43:16', '2022-11-06 16:38:49'),
('ef9d10bc-2b1e-44af-b38a-2853ce2e0dca', 'App\\Notifications\\AdminNotifications', 'App\\User', 151, '{\"type\":\"resetPasswordCode\",\"linked_id\":151,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-06\",\"time\":\"08:55\"}', NULL, '2022-11-06 13:55:40', '2022-11-06 13:55:40'),
('99dda71d-ad54-457e-a303-a87594753f90', 'App\\Notifications\\AdminNotifications', 'App\\User', 181, '{\"type\":\"resetPasswordCode\",\"linked_id\":181,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-07\",\"time\":\"05:49\"}', NULL, '2022-11-07 10:49:20', '2022-11-07 10:49:20'),
('a0d93b7c-f2a4-4ee8-b550-abcd9d4ebda5', 'App\\Notifications\\AdminNotifications', 'App\\User', 181, '{\"type\":\"resetPasswordCode\",\"linked_id\":181,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-07\",\"time\":\"05:51\"}', NULL, '2022-11-07 10:51:32', '2022-11-07 10:51:32'),
('79f0141b-d9a6-490f-8a45-73bb430d465d', 'App\\Notifications\\AdminNotifications', 'App\\User', 181, '{\"type\":\"resetPasswordCode\",\"linked_id\":181,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-07\",\"time\":\"05:54\"}', NULL, '2022-11-07 10:54:57', '2022-11-07 10:54:57');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('34aa3fbc-77ae-4796-b4c2-f6078bd98ecb', 'App\\Notifications\\AdminNotifications', 'App\\User', 185, '{\"type\":\"resetPasswordCode\",\"linked_id\":185,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-07\",\"time\":\"07:50\"}', NULL, '2022-11-07 12:50:58', '2022-11-07 12:50:58'),
('8890bb5f-6f7a-4f7d-a517-387812c4f5e6', 'App\\Notifications\\AdminNotifications', 'App\\User', 185, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":185,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-11-07\",\"time\":\"07:52\"}', NULL, '2022-11-07 12:52:10', '2022-11-07 12:52:10'),
('c9c512ed-0ed0-4c5e-86c7-0a887a8cb37a', 'App\\Notifications\\AdminNotifications', 'App\\User', 185, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":185,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-11-07\",\"time\":\"07:52\"}', NULL, '2022-11-07 12:52:11', '2022-11-07 12:52:11'),
('b57e6574-1e15-4084-8ce9-c9d3ddacd1d3', 'App\\Notifications\\AdminNotifications', 'App\\User', 124, '{\"type\":\"resetPasswordCode\",\"linked_id\":124,\"text\":\"\\u062a\\u0645 \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0643\\u0648\\u062f \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631\",\"date\":\"2022-11-18\",\"time\":\"11:55\"}', NULL, '2022-11-18 16:55:01', '2022-11-18 16:55:01'),
('beb5c237-54fd-48d0-9c89-e23de4236804', 'App\\Notifications\\AdminNotifications', 'App\\User', 124, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":124,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-11-18\",\"time\":\"11:56\"}', NULL, '2022-11-18 16:56:39', '2022-11-18 16:56:39'),
('ead878c0-a952-4a04-9ec7-f06e0b15b9dc', 'App\\Notifications\\AdminNotifications', 'App\\User', 124, '{\"type\":\"ResetPasswordSuccess\",\"linked_id\":124,\"text\":\"\\u062a\\u0645\\u062a \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0625\\u0639\\u0627\\u062f\\u0629 \\u062a\\u0639\\u064a\\u064a\\u0646 \\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631 \\u0628\\u0646\\u062c\\u0627\\u062d\",\"date\":\"2022-11-18\",\"time\":\"11:56\"}', NULL, '2022-11-18 16:56:40', '2022-11-18 16:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `our_teams`
--

CREATE TABLE `our_teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_teams`
--

INSERT INTO `our_teams` (`id`, `name_ar`, `name_en`, `title_ar`, `title_en`, `image`, `created_at`, `updated_at`) VALUES
(1, 'محمد تعديل', 'mohamed edit', 'دكتور تعديل', 'doctor edit', 'nvMoX2cseaWiHSWTi98Qu5MwgIN4BL4c52EmkWfu.jpg', '2023-01-01 16:14:12', '2023-01-01 16:23:16'),
(2, 'اسماء', 'asmaa', 'دكتورة 2', 'doctor 2', 'ghcZqXEyxKja7q5POjCOIXn6hdajQVC2RMPVQtzm.jpg', '2023-01-01 16:17:44', '2023-01-01 16:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_fr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_ar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_fr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title_ar`, `title_en`, `title_fr`, `content_ar`, `content_en`, `content_fr`, `created_at`, `updated_at`) VALUES
(1, 'من نحن', 'about us', NULL, '<blockquote>\r\n<p style=\"text-align: right;\"><strong>يعد موقع iLAW Fair أول معرض دولي للكتاب القانوني عبر الإنترنت ، تقوم فكرة الموقع علي انشاء معرض دولي دائم للكتاب القانوني يتولى نشر وتوزيع وبيع الكتب والموسوعات القانونية في منطقة الشرق الأوسط ، ايضا يعمل على توفير كافة العناوين والاصدارات القانونية الاجنبية المترجمة ودعم الباحث القانوني المتخصص بأحدث ما وقف عليه الفقه والقضاء والمستحدث من النظريات القانونية الامر الذي يزيل عن عاتق رجال القانون من المحامين وباحثي الدراسات العليا من الاكاديميين عبء البحث والتنقيب عن الموسوعات القانونية، حيث يتولى الموقع التعاقد مع كافة دور النشر العربية والاجنبية وكبار أساتذة وفقهاء القانون بالشرق الأوسط علي الاعلان عن كافة اصداراتهم بشكل دائم ، يعد iLAW Fair أحد مشروعات ilaw للنشر والتوزيع والتي يقع مقرها الرئيسي في دولة الامارات العربية المتحدة الهادفة لتوفير الكتاب القانوني بشكل يسير في متناول الباحث .</strong></p>\r\n<p style=\"text-align: right;\"><strong>دعوة عامة لجميع دور النشر القانونية والقضاة واساتذة الجامعات والمحامون لوضع كتبهم مجاناً في موقع iLaw Fair</strong></p>\r\n<p style=\"text-align: right;\"><strong>هل تبحث عن انتشار غير محدود لمؤلفك ، بإمكانك مضاعفة أرباحك ،من خلال عرض مؤلفك في موقعنا بإمكانك الوصول إلى مئات الآلاف من القراء في جميع أنحاء العالم في لحظات معدودة ،نوفر لك هذه الخدمة المجانية إضافة إلى خدمات أخرى مثل إمكانية البحث باللغة العربية عن كتابك عبر عنوان الكتاب أو اسم المؤلف أو مفاتيح خاصة به، كما يمكن الوصول إلى كتابك عبر القسم القانوني او وفقا لموضوع بذاته.</strong></p>\r\n<p style=\"text-align: right;\"><strong>هذا ليس كل شيء، سيكون لكتابك صفحة خاصة على الإنترنت عبر موقع iLAW fair، وهذه الصفحة ستتضمن معلومات مفصلة عن الكتاب، كما يمكنك تزويدنا بنبذة عن الكتاب لنضعها ضمن \"نبذة الناشر\" أو \"نبذة المؤلف\" على صفحة الكتاب.</strong></p>\r\n<p>&nbsp;</p>\r\n</blockquote>', '<p>iLAW Fair is the first international legal book fair online. The idea of the site is to create a permanent international legal book fair that publishes, distributes and sells legal books and encyclopedias in the Middle East. It also works to provide all translated foreign legal titles and publications and support the specialized legal researcher with the latest developments. The jurisprudence, the judiciary and the innovative legal theories, which removes the burden of research and exploration for legal encyclopedias from lawyers, lawyers and postgraduate researchers, as the site contracts with all Arab and foreign publishing houses, senior professors and legal scholars in the Middle East to announce all their publications. Permanently, the iLAW Fair is one of the projects of ilaw for publishing and distribution, which is headquartered in the United Arab Emirates, which aims to provide the legal book in an easy way for the researcher.</p>\r\n<p>A general invitation to all legal publishing houses, judges, university professors and lawyers to place their books for free on the iLaw Fair website</p>\r\n<p>Are you looking for an unlimited spread for your author, you can double your profits, by displaying your author on our site you can reach hundreds of thousands of readers all over the world in just a few moments, we provide you with this free service in addition to other services such as the ability to search in Arabic for your book via The title of the book, the author\'s name, or its own keys. Your book can also be accessed through the legal section or according to a specific topic.</p>\r\n<p>That\'s not all, your book will have a special page on the Internet via the iLAW fair website, and this page will contain detailed information about the book, and you can also provide us with a brief about the book to put it under the \"Publisher\'s Brief\" or \"Author\'s Brief\" on the book page.</p>', '<p>Fran&ccedil;ais</p>', '2022-06-11 04:46:33', '2022-10-26 18:08:23'),
(4, 'السياسات والأحكام', 'Policies and Terms', NULL, '<p style=\"text-align: right;\"><strong>* ما هي الشروط لأضع كتبي فيiLAW Fair </strong><br /><strong> * هل بإمكاني بيع كتاب إلكتروني عبر موقعكم؟ </strong><br /><strong> * لدي كتاب من تأليفي أود طباعته ونشره </strong><br /> <br /><strong> * ما هي الشروط لأضع كتبي في iLAW Fair؟ </strong><br /> <br /><strong> أولاً: ان تكون حقوق نشر الكتاب لك بالكامل. </strong><br /> <br /><strong> ثانيا: للإعلان عن الكتاب على صفحتنا الرئيسية أو في نشرتنا الإلكترونية، فعليك اقتراح عنوان الكتاب حيث تقوم لجنة مختصة لدينا بانتقاء الكتب تبعاً لأهميتها، وهذه الخدمة مجانية في الوقت الحاضر. </strong><br /> <br /><strong> يرجى تدوين المعلومات التالية في رسالة منفصلة ترفق مع الكتب المرسلة: </strong><br /><strong> التاريخ: </strong><br /><strong> عنوان الكتاب: </strong><br /><strong> اسم الشخص المسؤول: </strong><br /><strong> عنوان الشخص المسؤول: </strong><br /><strong> البريد الإلكتروني: </strong><br /><strong> رقم الهاتف: </strong><br /><strong> رقم الفاكس: </strong><br /><strong> عدد النسخ المتوفرة من الكتاب: </strong><br /><strong> سعر النسخة (بالدولار الأمريكي): </strong><br /><strong> نسبة الخصم: </strong><br /><strong> نبذة عن الكتاب*: </strong><br /> <br /><strong> *سيتم وضع النبذة على موقعنا في الصفحة الخاصة بالكتاب. يرجى ان لا تزيد النبذة المرسلة عن 400 كلمة. </strong><br /> <br /><strong> * لدي كتاب من تأليفي أود نشره الكترونيا </strong><br /><strong> تتولي ilaw&nbsp; للنشر والتوزيع اعداد الكتاب ونشره وتوزيعه من خلال موقعها الالكتروني iLAW Fair&nbsp; باتفاق عادل مع المؤلف بعد فحص العمل من قبل لجنة فنيه متخصصة علما بأن النشر كمؤلف سيكون الكترونيا فقط حيث لا نقدم خدمة النشر الورقي في الوقت الحالي. </strong><br /> <br /> <br /><strong> الأحكام والشروط</strong><br /> <br /><strong> &bull; كل نزاع أو شكوى تنشأ عن استخدام هذا الموقع أو تكون مرتبطة به تخضع حصرا لقوانين الإمارات العربية المتحدة وتفسّر وفقاً لها. </strong><br /><strong> &bull; الموطن الرئيسي للشركة هي امارة الشارقة بالإمارات العربية المتحدة ، والقانون واجب التطبيق هو القانون الاماراتي.</strong><br /><strong> ٠ يتحمل الناشر والمؤلف كافة التبعات والمسؤولية القانونية عن كافة الافكار الواردة بالكتب المعلن عنها من خلال الموقع ايضا اي نزاع خاص بحقوق الملكية الفكرية لأحد المؤلفات يخلي الموقع مسؤوليته القانونية حيث انها تقع كاملة علي عاتق دار النشر والمؤلف.</strong><br /> <br /><strong> &bull; يُمنع القاصرون، تحت سن 18، من التسجيل كمستخدمين في هذا الموقع ومن التعامل على الموقع أو استخدامه. </strong><br /><strong> &bull; نقبل تسديد الدفعات عبر الشبكة الإلكترونية من خلال بطاقات الائتمان من Visa وMasterCard وPayPal وAmex وWestern Union&nbsp; بالدولار الأميركي والدرهم الاماراتي وبالعملة المستخدمة في البلد المقيم ونقداً مسبقاً في بعض الدول ولا نعتمد طريقة الدفع النقدي عند الاستلام. وفي كل الأحوال يضمن المحول مصدر أمواله ويقر بأنها أموال نظيفة خالية من شبهة غسل الاموال أو تمويل الارهاب ويتحمل وحده مسؤولية مخالفة ذلك.</strong><br /> <br /><strong> &bull; يجب على حامل البطاقة الاحتفاظ بنسخة عن سجلات المعاملات وسياسات حماية التجار وقواعدهم. </strong><br /><strong> &bull; المستخدم مسؤول عن حماية خصوصية حسابه. </strong><br /><strong> &bull; قد تتغير سياسات وأحكام وشروط الموقع الإلكتروني أو يتم تحديثها من حين لآخر لغرض تلبية الشروط والمعايير. لذلك، يتم تشجيع الزبائن على زيارة هذه الأقسام مراراً وتكراراً ليصبحوا على دراية بآخر التغييرات التي طرأت على الموقع. ويسري مفعول هذه التغييرات في اليوم الذي تُنشر فيه على الموقع. </strong><br /> <br /> <br /><strong> سياسة الخصوصية</strong></p>\r\n<p><br /><strong> &bull; يحفظ الموقع معلومات الهوية الشخصية ويُخزنها في قاعدة البيانات أما التفاصيل الخاصّة ببطاقات الائتمان فلا يتمّ تخزينها، أو مشاركتها ،أو بيعها أو تأجيرها لأي طرف ثالث. </strong><br /><strong> &bull; في حال قمتم بدفع مبلغ مالي مقابل منتجاتنا أو خدمتنا على الموقع، سيتم إيصال المعلومات التي يُطلب منكم تزويدها مباشرة إلى مزوّد الخدمة عبر قناة اتصال آمنة. </strong><br /><strong> &bull; يتخّذ المتجر التدابير اللازمة لضمان حماية البيانات وأمنها عبر العديد من الأساليب البرمجية والمعدات الحاسوبية. ومع ذلك، لا يمكن لموقع iLAW fair&nbsp; أن يضمن أمن المعلومات التي يتم الكشف عنها مسبقاً على شبكة الإنترنت. </strong><br /><strong> &bull; يخلي الموقع مسؤوليته عن سياسات الخصوصية التابعة للمواقع المرتبطة به. وإن زوّدت معلومات لتلك الأطراف الثالثة سيتم تطبيق قواعد مختلفة في جمع معلوماتك الخاصة واستخدامها. يتوجب عليك أن تتواصل مع تلك الهيئات مباشرة إن كانت لديك أسئلة تتعلق حيال استخدامها للمعلومات التي تجمعها. </strong><br /><strong> &bull; قد يتم اختيار وتنفيذ بعض الإعلانات التي تراها على الموقع من قبل أطراف ثالثة كالمعلنين ووكالات الإعلانات ومزوّدي خدمات تجزئة الجماهير وشبكات الإعلان، ويمكن لهذه الأطراف أن تجمع المعلومات الخاصة بك وعن نشاطك على شبكة الإنترنت سواء كانت على الموقع أو على أي موقع آخر، وذلك من خلال ملفات تعريف الارتباط وإشارات الويب وغيرها من التقنيات في سعيها لفهم اهتماماتك وتزويدك بإعلانات تتوافق معها. لذلك، نوّد أن تكونوا على دراية بأنّ موقعنا لا يمكنه الوصول إلى المعلومات التي قد تجمعها الاطراف الثالثة أو التّحكم بها، وبأن هذه السياسة لا تغطي الممارسات المعلوماتية لتلك الأطراف. يرجى إلغاء أي بيانات أخرى تُعارض البيانات المذكورة مسبقاً. </strong><br /> <br /> <br /><strong> سياسة التسليم والشحن</strong></p>\r\n<p><br /><strong> &bull; إن iLAW Fair&nbsp; لن يتعامل أو يقدّم أي خدمات أو منتجات إلى أي بلد من البلدان المفروضة عليها عقوبات من قبل مكتب مراقبة الأصول الأجنبية (أوفاك) وذلك وفقاً لأحكام الدستور والقوانين التابعة لدولة الإمارات العربية المتحدة . </strong><br /><strong> &bull; يتم إعلام العملاء بتأكيد الدفع عبر بريد إلكتروني فور اتمام عملية الدفع. </strong><br /><strong> &bull; يتم إرسال تفاصيل الطلبية عبر بريد إلكتروني في مدة زمنيه اقصاها ٤٨ ساعة من تأكيد الطلب وبإمكان العميل أن يتعقب الوقت المرتقب لوصول طلبيته عبر الدخول إلى أيقونة \"حسابك\".</strong><br /><strong> ٠ </strong><br /> <br /><strong> &bull; يرجى ملاحظة أن إجراء معاملات متعددة يؤدي إلى عمليات قيد متعددة في بيان حامل البطاقة الشهري. </strong><br /> <br /> <br /><strong> سياسة الاسترداد</strong></p>\r\n<p><br /><strong> &bull; تجري عمليات استرداد الأموال فقط عند الدفع عبر بطاقة الإئتمان أو PayPal&nbsp; .</strong></p>\r\n<p><strong>&bull; عند الدفع عبر Western Union أو نقداً يرجى ملاحظة أنه لا يتم إعادة المبلغ أو فرق المبلغ المدفوع إلى الزبون بسبب كلفة التحويل بل يتم الإحتفاظ به كرصيد للاستخدام في الطلبيات المستقبلية.</strong><br /><strong> ٠ يمكن للعميل استرداد قيمة المنتج فقط غير مشمولة بتكلفة الشحن أو رسوم التأمين .</strong><br /><strong> ٠ تتم عملية استرداد الاموال في محفظة حسابك في iLAW Fair&nbsp; في غضون ٥ أيام عمل من تاريخ تأكيد طلب الاسترداد .</strong><br /><strong> ٠تتم اعادة الاموال لحساب بطاقات الائتمان الخاصة بك في غضون ١٤ يوم عمل من تاريخ تأكيد طلب الاسترداد. </strong><br /> <br /> <br /> <br /> <br /><strong> سياسة الإلغاء والتبديل</strong></p>\r\n<p><br /><strong> يسمح بإلغاء الطلبية أو إبدالها في الحالات التالية: </strong><br /><strong> &bull; اذا أُرسل المنتج الخاطئ. </strong><br /><strong> &bull; اذا ثبت أن المنتج معيب أو أتلف خلال عملية الشحن. </strong><br /><strong> &bull; يمكن طلب الإلغاء في مرحلة الإعداد أي إن كانت الكتب لا تزال في حالة \"مطلوب\" حيث لا يمكن طلب إلغاء كتاب بعد أن يصبح في حالة \"موجود\" أو \"أرسل\".</strong><br /><strong> ٠ في كل الاحوال يجب تقديم طلب التبديل خلال ٤٨ساعة بحد اقصي من تاريخ استلام الشحنة الخاطئة.</strong><br /> </p>', '<p>* What are the conditions for placing my books in iLAW Fair<br />* Can I sell an e-book on your website?<br />I have a book of my own that I would like to print and publish</p>\r\n<p>* What are the conditions for placing my books at iLAW Fair?</p>\r\n<p>First: The rights to publish the book are entirely yours.</p>\r\n<p>Second: To advertise the book on our homepage or in our electronic newsletter, you have to suggest the title of the book, as our specialized committee will select the books according to their importance, and this service is free for the time being.</p>\r\n<p>Please include the following information in a separate letter to be attached to the books sent:<br />Date:<br />The title of the book:<br />Responsible person\'s name:<br />Responsible person\'s address:<br />E-mail:<br />Telephone number:<br />Fax Number:<br />Number of copies of the book available:<br />Copy price (in US dollars):<br />discount percentage:<br />About the book*:</p>\r\n<p>* The biography will be placed on our website on the book\'s page. Please, the submitted abstract should not exceed 400 words.</p>\r\n<p>I have a book I wrote that I would like to publish online<br />ilaw for Publishing and Distribution undertakes the preparation, publication and distribution of the book through its iLAW Fair website, in a fair agreement with the author, after examining the work by a specialized technical committee.</p>\r\n<p><br />terms and conditions</p>\r\n<p>&bull; Any dispute or complaint arising out of or related to the use of this website is strictly governed by and construed in accordance with the laws of the United Arab Emirates.<br />&bull; The main domicile of the company is the Emirate of Sharjah in the United Arab Emirates, and the applicable law is the UAE law.<br />0 The publisher and the author bear all the consequences and legal responsibility for all the ideas contained in the books announced through the site. Also, any dispute regarding the intellectual property rights of one of the works disclaims the site&rsquo;s legal responsibility, as it rests entirely with the publishing house and the author.</p>\r\n<p>&bull; Minors, under the age of 18, are prohibited from registering as users of this site and from transacting on or using the site.<br />&bull; We accept payments via the electronic network through credit cards from Visa, MasterCard, PayPal, Amex and Western Union in US dollars and UAE dirhams and in the currency used in the country of residence and in advance cash in some countries and we do not support the method of cash on delivery. In all cases, the transferee guarantees the source of his money and acknowledges that it is clean money free from suspicion of money laundering or terrorism financing, and he is solely responsible for violating that.</p>\r\n<p>&bull; The cardholder must keep a copy of transaction records and merchant protection policies and rules.<br />&bull; The user is responsible for protecting the privacy of his account.<br />&bull; Website policies, terms and conditions may change or be updated from time to time in order to meet the terms and standards. Therefore, customers are encouraged to visit these sections again and again to become aware of the latest changes to the site. These changes become effective on the day they are posted on the site.</p>\r\n<p><br />privacy policy</p>\r\n<p><br />&bull; The site saves personal identification information and stores it in the database. As for credit card details, they are not stored, shared, sold or rented to any third party.<br />&bull; If you make a payment for our products or service on the Site, the information you are asked to provide will be communicated directly to the Service Provider via a secure communication channel.<br />&bull; The store takes the necessary measures to ensure the protection and security of data through a variety of software methods and computer equipment. However, iLAW fair cannot guarantee the security of information previously disclosed on the Internet.<br />&bull; The site disclaims responsibility for the privacy policies of the sites linked to it. If you provide information to these third parties, different rules will apply to the collection and use of your information. You should contact these agencies directly if you have questions about their use of the information they collect.<br />&bull; Some of the advertisements you see on the Site may be selected and implemented by third parties such as advertisers, advertising agencies, audience segmentation providers and advertising networks. These parties may collect information about you and your online activity, whether on the Site or on any other site, from Through cookies, web beacons, and other technologies in an effort to understand your interests and provide you with advertising that matches your interests. Therefore, we want you to be aware that our site does not have access to or control over information that may be collected by third parties, and that this policy does not cover the information practices of those parties. Please cancel any other data that contradicts the aforementioned data.</p>\r\n<p><br />Delivery and Shipping Policy</p>\r\n<p><br />&bull; The iLAW Fair will not deal or provide any services or products to any of the countries that are sanctioned by the Office of Foreign Assets Control (OFAC) in accordance with the provisions of the Constitution and the laws of the United Arab Emirates.<br />&bull; Customers are notified of the payment confirmation via an e-mail upon completion of the payment process.<br />&bull; Order details are sent via e-mail within a maximum period of 48 hours from the confirmation of the order, and the customer can track the expected time of arrival of his order by logging into the \"Your Account\" icon.<br />0</p>\r\n<p>&bull; Please note that making multiple transactions leads to multiple entries in the cardholder\'s monthly statement.</p>\r\n<p><br />Refund Policy</p>\r\n<p><br />&bull; Refunds are made only when paying by credit card or PayPal.</p>\r\n<p>&bull; When paying via Western Union or cash, please note that the amount or the difference in the amount paid is not returned to the customer due to the transfer cost, but rather it is kept as a credit for use in future orders.<br />0 The customer can refund the value of the product only, not included in the shipping cost or insurance fees.<br />0 The refund will be processed in your iLAW Fair account wallet within 5 working days from the date of confirming the refund request.<br />0 The money will be refunded to the credit card account</p>', NULL, '2022-10-26 18:21:49', '2022-10-26 18:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@ilawfair.com', '$2y$10$FFnK8x66X7TVvUNy8RTr6.OZQfxopBFoZe9XRXXG1X.BMZC0E7c8O', '2022-08-04 17:12:29'),
('hossam@ilaw.ae', '$2y$10$PTt/G5RVNJE/Rah575GKReEfSHcf/5quRNQ9s7VOt91Q0Q8aVQdDa', '2022-10-10 19:54:17'),
('mrmohamesultan77@gmail.com', '$2y$10$/h99pmouLyrS9V5ne9hH/Oy/q5qXvW9i5.7uCPG/.iJ70B0Xh2F.C', '2022-07-04 04:34:14'),
('abuobaida@ilaw.ae', '$2y$10$8bqCQtFeZqPY9pqikpyrM.FjrOrPVYSoZlFCOaOOVhbDZoaMiDTR.', '2022-08-10 12:58:34'),
('test@test.com', '$2y$10$VCV/KRRZu1ETVAMjkgeN9OKFWyWbq0AnMdwVbphNm6YoBPxbSkKIK', '2022-07-04 12:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_fr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middleware` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name_ar`, `name_en`, `name_fr`, `middleware`, `group`, `created_at`, `updated_at`) VALUES
(1, 'استعراض الإعدادات', 'view settings', NULL, '', 'settings', NULL, NULL),
(2, 'تعديل الإعدادات', 'edit settings', NULL, '', 'settings', NULL, NULL),
(3, 'استعراض المديرين والمشرفين', NULL, NULL, '', 'admins', NULL, NULL),
(4, 'إدخال المديرين والمشرفين', NULL, NULL, '', 'admins', NULL, NULL),
(5, 'تعديل المديرين والمشرفين', NULL, NULL, '', 'admins', NULL, NULL),
(6, 'حذف المديرين والمشرفين', NULL, NULL, '', 'admins', NULL, NULL),
(7, 'استعراض الناشرين', NULL, NULL, '', 'publishers', NULL, NULL),
(8, 'إدخال الناشرين', NULL, NULL, '', 'publishers', NULL, NULL),
(9, 'تعديل الناشرين', NULL, NULL, '', 'publishers', NULL, NULL),
(10, 'حذف الناشرين', NULL, NULL, '', 'publishers', NULL, NULL),
(11, 'استعراض العملاء', NULL, NULL, '', 'clients', NULL, NULL),
(12, 'إدخال العملاء', NULL, NULL, '', 'clients', NULL, NULL),
(13, 'تعديل العملاء', NULL, NULL, '', 'clients', NULL, NULL),
(14, 'حذف العملاء', NULL, NULL, '', 'clients', NULL, NULL),
(15, 'استعراض الدول', NULL, NULL, '', 'countries', NULL, NULL),
(16, 'إدخال الدول', NULL, NULL, '', 'countries', NULL, NULL),
(17, 'تعديل الدول', NULL, NULL, '', 'countries', NULL, NULL),
(18, 'حذف الدول', NULL, NULL, '', 'countries', NULL, NULL),
(19, 'استعراض أدوار المشرفين', NULL, NULL, '', 'roles', NULL, NULL),
(20, 'إدخال أدوار المشرفين', NULL, NULL, '', 'roles', NULL, NULL),
(21, 'تعديل أدوار المشرفين', NULL, NULL, '', 'roles', NULL, NULL),
(22, 'حذف أدوار المشرفين', NULL, NULL, '', 'roles', NULL, NULL),
(23, 'استعراض مناطق الشحن', NULL, NULL, '', 'shippingLocales', NULL, NULL),
(24, 'إدخال مناطق الشحن', NULL, NULL, '', 'shippingLocales', NULL, NULL),
(25, 'تعديل مناطق الشحن', NULL, NULL, '', 'shippingLocales', NULL, NULL),
(26, 'حذف مناطق الشحن', NULL, NULL, '', 'shippingLocales', NULL, NULL),
(27, 'استعراض العملات', NULL, NULL, '', 'currencies', NULL, NULL),
(28, 'إدخال العملات', NULL, NULL, '', 'currencies', NULL, NULL),
(29, 'تعديل العملات', NULL, NULL, '', 'currencies', NULL, NULL),
(30, 'حذف العملات', NULL, NULL, '', 'currencies', NULL, NULL),
(31, 'استعراض الكتب', NULL, NULL, '', 'books', NULL, NULL),
(32, 'إدخال الكتب', NULL, NULL, '', 'books', NULL, NULL),
(33, 'تعديل الكتب', NULL, NULL, '', 'books', NULL, NULL),
(34, 'حذف الكتب', NULL, NULL, '', 'books', NULL, NULL),
(35, 'استعراض الأقسام', NULL, NULL, '', 'sections', NULL, NULL),
(36, 'إدخال الأقسام', NULL, NULL, '', 'sections', NULL, NULL),
(37, 'تعديل الأقسام', NULL, NULL, '', 'sections', NULL, NULL),
(38, 'حذف الأقسام', NULL, NULL, '', 'sections', NULL, NULL),
(39, 'استعراض المؤلفين', NULL, NULL, '', 'writers', NULL, NULL),
(40, 'إدخال المؤلفين', NULL, NULL, '', 'writers', NULL, NULL),
(41, 'تعديل المؤلفين', NULL, NULL, '', 'writers', NULL, NULL),
(42, 'حذف المؤلفين', NULL, NULL, '', 'writers', NULL, NULL),
(43, 'استعراض الطلبات', NULL, NULL, '', 'orders', NULL, NULL),
(44, 'إدخال الطلبات', NULL, NULL, '', 'orders', NULL, NULL),
(45, 'تعديل الطلبات', NULL, NULL, '', 'orders', NULL, NULL),
(46, 'حذف الطلبات', NULL, NULL, '', 'orders', NULL, NULL),
(47, 'استعراض الأسئلة الشائعة', NULL, NULL, '', 'faqs', NULL, NULL),
(48, 'إدخال الأسئلة الشائعة', NULL, NULL, '', 'faqs', NULL, NULL),
(49, 'تعديل الأسئلة الشائعة', NULL, NULL, '', 'faqs', NULL, NULL),
(50, 'حذف الأسئلة الشائعة', NULL, NULL, '', 'faqs', NULL, NULL),
(51, 'استعراض الصفحات الثابتة', NULL, NULL, '', 'pages', NULL, NULL),
(52, 'تعديل الصفحات الثابتة', NULL, NULL, '', 'pages', NULL, NULL),
(53, 'استعراض الرسائل', NULL, NULL, '', 'contactMessages', NULL, NULL),
(54, 'حذف الرسائل', NULL, NULL, '', 'contactMessages', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_fr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name_ar`, `name_en`, `name_fr`, `guard`, `created_at`, `updated_at`) VALUES
(1, 'الإدارة', 'administrator', 'administrator fr', 'admin', NULL, NULL),
(2, 'ناشر', 'publisher', 'publisher fr', 'publisher', NULL, NULL),
(4, 'المشرفين', 'moderators', 'moderators fr', 'admin', NULL, NULL),
(3, 'العميل', 'client', 'client fr', 'client', NULL, NULL),
(9, 'المحاسب', 'Accountant', NULL, 'admin', '2022-11-08 14:38:15', '2022-11-08 14:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roles_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `roles_id`, `permissions_id`, `created_at`, `updated_at`) VALUES
(154, '4', '31', NULL, NULL),
(153, '4', '29', NULL, NULL),
(152, '4', '28', NULL, NULL),
(151, '4', '27', NULL, NULL),
(150, '4', '25', NULL, NULL),
(149, '4', '24', NULL, NULL),
(148, '4', '23', NULL, NULL),
(147, '4', '17', NULL, NULL),
(146, '4', '16', NULL, NULL),
(145, '4', '15', NULL, NULL),
(144, '4', '19', NULL, NULL),
(143, '4', '13', NULL, NULL),
(142, '4', '12', NULL, NULL),
(141, '4', '11', NULL, NULL),
(140, '4', '9', NULL, NULL),
(139, '4', '8', NULL, NULL),
(138, '4', '7', NULL, NULL),
(137, '4', '1', NULL, NULL),
(136, '9', '53', NULL, NULL),
(135, '9', '51', NULL, NULL),
(134, '9', '47', NULL, NULL),
(133, '9', '44', NULL, NULL),
(132, '9', '43', NULL, NULL),
(131, '9', '39', NULL, NULL),
(130, '9', '35', NULL, NULL),
(129, '9', '31', NULL, NULL),
(128, '9', '29', NULL, NULL),
(127, '9', '28', NULL, NULL),
(126, '9', '27', NULL, NULL),
(125, '9', '25', NULL, NULL),
(124, '9', '24', NULL, NULL),
(123, '9', '23', NULL, NULL),
(122, '9', '17', NULL, NULL),
(121, '9', '16', NULL, NULL),
(120, '9', '15', NULL, NULL),
(119, '9', '19', NULL, NULL),
(118, '9', '13', NULL, NULL),
(117, '9', '12', NULL, NULL),
(116, '9', '11', NULL, NULL),
(115, '9', '9', NULL, NULL),
(114, '9', '8', NULL, NULL),
(113, '9', '7', NULL, NULL),
(112, '9', '5', NULL, NULL),
(111, '9', '4', NULL, NULL),
(110, '9', '3', NULL, NULL),
(109, '9', '1', NULL, NULL),
(155, '4', '32', NULL, NULL),
(156, '4', '33', NULL, NULL),
(157, '4', '34', NULL, NULL),
(158, '4', '36', NULL, NULL),
(159, '4', '37', NULL, NULL),
(160, '4', '38', NULL, NULL),
(161, '4', '39', NULL, NULL),
(162, '4', '40', NULL, NULL),
(163, '4', '41', NULL, NULL),
(164, '4', '42', NULL, NULL),
(165, '4', '43', NULL, NULL),
(166, '4', '44', NULL, NULL),
(167, '4', '45', NULL, NULL),
(168, '4', '47', NULL, NULL),
(169, '4', '48', NULL, NULL),
(170, '4', '49', NULL, NULL),
(171, '4', '51', NULL, NULL),
(172, '4', '52', NULL, NULL),
(173, '4', '53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title_ar`, `title_en`, `description_ar`, `description_en`, `icon`, `created_at`, `updated_at`) VALUES
(3, 'New Arabic Title', 'New English Title', '<p>descrition arabic</p>', '<p>description english&nbsp;</p>', 'dJ5DVz6Ts1UDWmdBinIC6GX9P1wFK9ZV72MRinWn.png', '2023-01-01 11:45:50', '2023-01-01 11:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linked_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `linked_id`, `type`, `created_at`, `updated_at`) VALUES
(1, '_token', 'RSfEenl0gIQatsmSF1rM24hX5okxSjHbUAbXqfcm', NULL, NULL, '2022-06-11 16:59:20', '2022-06-11 16:59:20'),
(104, 'linkedin', 'https://linkedin.com', NULL, NULL, '2023-01-01 16:46:00', '2023-01-01 16:46:00'),
(3, 'siteTitle_ar', 'مستشفى الشروق التخصصي', NULL, NULL, '2022-06-11 17:52:34', '2023-01-02 10:06:24'),
(4, 'siteTitle_en', 'SHOROUK SPECIALISED HOSPITAL', NULL, NULL, '2022-06-11 17:52:34', '2023-01-02 10:06:24'),
(103, 'whatsapp', '01234567890', NULL, NULL, '2023-01-01 16:46:00', '2023-01-02 10:00:42'),
(8, 'facebook', 'https://facebook.com', NULL, NULL, '2022-06-11 17:52:34', '2023-01-01 16:46:00'),
(9, 'twitter', 'https://twitter.com', NULL, NULL, '2022-06-11 17:52:34', '2023-01-01 16:46:00'),
(10, 'instagram', 'https://instagram.com', NULL, NULL, '2022-06-11 17:52:34', '2023-01-01 16:46:00'),
(11, 'youtube', 'https://youtube.com', NULL, NULL, '2022-06-11 17:52:34', '2023-01-01 16:46:00'),
(12, 'phone', '971564093620', NULL, NULL, '2022-06-11 17:52:34', '2022-10-31 13:22:23'),
(13, 'mobile', '971564093620', NULL, NULL, '2022-06-11 17:52:34', '2022-10-31 13:22:23'),
(14, 'email', 'tayseer@elshroukhospital.com', NULL, NULL, '2022-06-11 17:52:34', '2023-01-02 10:00:42'),
(196, 'aboutUs1icon', 'Ah2LFLCzAzjjFz8dSwdf1p6Gxe0HbacFZMdR2vCS.png', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(197, 'aboutUs2icon', 'PARn0QrJ8L5vy8qeAwT1fOnDPVWdzTdje2UjZM2y.png', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(198, 'aboutUs3icon', '9MCeioEovbrquKw1ZzVEdufxSwAO7cMMzGSA8NMk.png', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(164, 'map', '', NULL, NULL, '2023-01-02 10:06:24', '2023-01-02 10:06:24'),
(181, 'logo', 'KMUVEncgdebmbcQms30tzpsU1WkIv3L7yRhV0oTz.png', NULL, NULL, '2023-01-02 10:12:14', '2023-01-02 10:12:14'),
(182, 'aboutusDes_ar', '<p>مستشفى الشروق التخصصي (السويسري) هو أحد المنشآت الطبية المنشأة حديثًا في جمهورية مصر العربية ، ونحن ننتمي إلى شركة إدارة المستشفيات السويسرية ، والتي تطمح إلى كسب ثقة جميع عملائها من الأفراد والمؤسسات والهيئات المحلية والدولية حيث تحرص على تقديم الخدمات الطبية والعلاجية في كافة أقسامها الطبية.</p>', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(183, 'aboutusDes_en', '<p>Al Shorouk Specialised Hospital (Swiss) is one of the newly established medical facilities in the Arab Republic of Egypt, we belongs to Swiss Hospitals Management Company, which aspires to gain the confidence of all its clients, including individuals, institutions and local and international bodies, as it is keen to provide medical and treatment services in all of its medical departments.</p>', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(184, 'aboutUs1title_ar', 'قيمنا', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(185, 'aboutUs1title_en', 'Our Values', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(186, 'aboutUs1des_ar', 'وصف عننا الاول ', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(187, 'aboutUs1des_en', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(188, 'aboutUs2title_ar', 'مهمتنا', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(189, 'aboutUs2title_en', 'Our Mission', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(190, 'aboutUs2des_ar', 'وصف عننا الثاني ', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(191, 'aboutUs2des_en', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(192, 'aboutUs3title_ar', 'رؤيتنا', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(193, 'aboutUs3title_en', 'Our Vision', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(194, 'aboutUs3des_ar', 'وصف عننا الثالث ', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(195, 'aboutUs3des_en', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam', NULL, NULL, '2023-01-02 11:55:03', '2023-01-02 11:55:03'),
(116, 'home_slide1title_fr', 'Permanent electronic exhibition of legal books', NULL, NULL, '2023-01-02 10:06:24', '2023-01-02 10:06:24'),
(115, 'home_slide1title_en', '', NULL, NULL, '2023-01-02 10:06:24', '2023-01-02 10:06:24'),
(114, 'home_slide1title_ar', '', NULL, NULL, '2023-01-02 10:06:24', '2023-01-02 10:06:24'),
(92, 'mainPageTitle_ar', 'العنوان سيكون هنا كشعار لمستشفانا هنا', NULL, NULL, '2022-12-29 16:20:36', '2023-01-02 10:06:24'),
(93, 'mainPageTitle_en', 'TITLE WILL BE HERE AS SLOGAN FOR OUR HOSPITAL HERE', NULL, NULL, '2022-12-29 16:20:36', '2023-01-02 10:06:24'),
(94, 'mainPageDesc_ar', '<p>الوصف بالصفحة الرئيسية سيكون هنا&nbsp;</p>', NULL, NULL, '2022-12-29 16:20:36', '2023-01-02 10:06:59'),
(95, 'mainPageDesc_en', '<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren.</p>', NULL, NULL, '2022-12-29 16:20:36', '2023-01-02 10:06:24'),
(96, 'mainPageImage', 'xH4YdrELPhflCSPzOvSAuI4ZQYheKBqytOE08qSp.png', NULL, NULL, '2022-12-29 16:20:36', '2023-01-02 10:06:24'),
(97, 'weCareTitle_ar', 'ما الذي يجعل مستشفي  الشروق التخصصي مميزاَ ؟', NULL, NULL, '2023-01-01 12:02:27', '2023-01-01 12:02:27'),
(98, 'weCareTitle_en', 'what make shourok specialised hosital unique ?', NULL, NULL, '2023-01-01 12:02:27', '2023-01-01 12:02:27'),
(99, 'weCareImage', 'RrO1CvncJjwiFiZF5eSxCnGehLTHljdsUnbGbklJ.png', NULL, NULL, '2023-01-01 12:02:27', '2023-01-01 12:02:27'),
(113, 'siteDescription', '', NULL, NULL, '2023-01-02 10:06:24', '2023-01-02 10:06:24'),
(110, 'address_ar', 'Buiding no.234 north teseen 5th settlements New Cairo، Cairo Governorate 11835', NULL, NULL, '2023-01-02 10:00:42', '2023-01-02 10:00:42'),
(111, 'address_en', 'Buiding no.234 north teseen 5th settlements New Cairo، Cairo Governorate 11835', NULL, NULL, '2023-01-02 10:00:42', '2023-01-02 10:00:42'),
(112, 'hotLine', '17121', NULL, NULL, '2023-01-02 10:00:42', '2023-01-02 10:00:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsible` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `block` int(11) DEFAULT 0,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `governorate` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT 'ar',
  `licenseId` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licensePhoto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resetCode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `userName`, `responsible`, `commission`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `active`, `block`, `photo`, `country`, `governorate`, `city`, `phone`, `mobile`, `address`, `website`, `language`, `licenseId`, `licensePhoto`, `resetCode`, `created_at`, `updated_at`) VALUES
(1, 'محمد سلطان', 'admin', NULL, NULL, 'admin@shroukhospital.com', '1', NULL, '$2y$10$5BonMNM9UB.rpqFpR1Dkqe7kTlMaklhrFD35c26nNd03W6.0spIUy', NULL, 1, 0, 'oe68mMMuB41eiup9Vfs5bhc67q1k0u8IsDh7yqb1.jpg', '1', NULL, NULL, '01000000000', NULL, 'مصر أم الدنيا', NULL, 'ar', NULL, NULL, NULL, '2022-06-07 15:38:28', '2023-01-02 16:56:06'),
(2, 'publisher', NULL, 'محمد', '30', 'publisher1@ilawfair.com', '2', NULL, '$2y$10$bEgVs8hsfMyequEpfL58Duo7fwkOzuSaGLt6OhiuB/Xrcl9BGS7Qe', NULL, 1, 0, 'N6h48aOrEFcIOPSQpTAZ7I8lz6xJDaFzkynXgma5.jpg', 'EG', '10Th Of Ramadan City', 'cairo', NULL, '010000000001', NULL, NULL, 'ar', '321654987', NULL, NULL, '2022-06-07 15:38:28', '2022-11-01 16:19:58'),
(4, 'عميل 1', 'client1', NULL, NULL, 'client1@test.com', '3', NULL, '$2y$10$idrB5VmSksfbZVZo0li6aukREigaqzfk0aktgilvtoKIbfjZeqDyK', NULL, 1, 0, '9yDRYGKz7Es4gb5FJI03vdZqNEuhUweP3rGG5lrK.png', '63', NULL, NULL, NULL, NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-06-09 03:55:00', '2022-06-09 03:55:00'),
(8, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'test4@test.com', '3', NULL, '$2y$10$mpl0sv9q01ApMSlpxA8aROfpIV3/mjdH/A/wXTbNiqBxnTex90YDS', NULL, 1, 0, 'hPumNFMe8Q3t4NeJnBTa4BT4ccxmHtji73lWB4Jc.png', '63', '2', '2', '1234567898', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-06-09 12:06:00', '2022-10-04 12:59:29'),
(14, 'Ezat Ellozy', 'Ezat Ellozy', NULL, NULL, 'ezatello@gmail.com', '3', NULL, '$2y$10$M6QmvS.CXeMzj8iOBBoSGeGiJDDiyM3OWV.1rd7XCALA58hR69NS2', NULL, 1, 0, NULL, '63', '2', '1', '12121212121', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-06-30 16:43:57', '2022-07-01 10:01:10'),
(171, 'Mohamed Sultan', NULL, NULL, NULL, 'mrmohamedsultan766@gmail.com', '3', NULL, '$2y$10$IudNRnopqTmn7SabXf6u4uUT3C.JnNALP0xM.q6Hs6UFF88f94IlW', NULL, 0, 0, NULL, NULL, NULL, NULL, '01000007222', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-07 00:14:22', '2022-11-07 00:14:22'),
(189, 'manar', NULL, NULL, NULL, 'technomasr4@gmail.com', '3', NULL, '$2y$10$ecVlFtAQTw7VVfuMKYaRjOBYYZJvbiUyw/ONc4a/GBZuXUXcKPVjK', NULL, 1, 0, NULL, NULL, NULL, NULL, '0101200000000', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2022-11-08 16:19:02', '2022-11-08 16:19:38'),
(193, 'Ibrahim mohamed', NULL, NULL, NULL, 'bosalman80@gmail.com', '3', NULL, '$2y$10$wVtYrb8UCwbJGBDaZB4WveLL7xPWs5o2SSUjCZK7CbTgPnp1yY1a2', NULL, 1, 0, NULL, NULL, NULL, NULL, '0555999560', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-10 12:11:48', '2022-11-10 12:12:16'),
(13, 'المتحدة للنشر والتوزيع', 'hossam@ilaw.ae', 'حسام', '10', 'hossam@ilaw.ae', '2', NULL, '$2y$10$sX9Jt6VcHzwwXlcV6.WAEOTCIBx7jfpgHEcrN8w8cvqcf14sCBHFO', NULL, 1, 0, 'FT1nymIZ8q2Ie4wEJqTlyJUheXeTjIUfcdJzIAzB.jpg', 'AE', 'Abu Dhabi', NULL, '0545412304', '0545412304', 'الشارقة', NULL, 'ar', '٧٤٧٤٧٤٤٧', NULL, NULL, '2022-06-24 08:50:49', '2022-11-07 17:50:05'),
(16, 'test', 'test', NULL, NULL, 'test@test.com', '4', NULL, '$2y$10$2u8q.gMikm5IPcRxbXIRnukPGKtu119ba4Q9YQxDEIXf0bHt0aRlu', NULL, 1, 0, NULL, '201', NULL, NULL, '055828579', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-07-01 09:40:45', '2022-08-08 16:09:02'),
(17, 'hossam', 'hossam', NULL, NULL, 'hossamdeeb46@gmail.com', '3', NULL, '$2y$10$dZY4vLVzPJpKFw5bRZyb2.9FfJYb5dXcRqkgw1nxzqXzpob6LiXEK', NULL, 1, 0, 'xhRvWbj4HbPRLW0dfYDCFhgONtmejGKSeK8r6RZ1.png', 'null', NULL, 'null', '00971545412304', NULL, 'null', NULL, 'ar', NULL, NULL, NULL, '2022-07-03 12:33:47', '2022-10-24 12:23:29'),
(181, 'Mohamed Sultan', 'null', NULL, NULL, 'mrmohamedsultan7@gmail.com', '3', NULL, '$2y$10$InJKb2VNRiEdbBJu55DyTurItV99hORMHnR66DNiU9zzqCuGy566C', NULL, 1, 0, NULL, 'ae', NULL, 'null', '01000007262', NULL, 'null', NULL, 'en', NULL, NULL, '265281', '2022-11-07 00:49:37', '2022-11-07 18:07:23'),
(19, 'Abuobaida', 'Abuobaida', NULL, NULL, 'abuobaidailaw@gmail.com', '3', NULL, '$2y$10$z5R/Y1IEKoa9QgN3qHtIF.BAPSTBLD3zQLdcPXDqNPvxdiLz3ozxS', 'OhPT3gcVlbNuqogm82nfV9GefvQ6PWvhXbDaYty8svecklfmqMt7G7OwDqyj', 1, 0, NULL, 'AE', NULL, 'Ajman City', '0508750613', NULL, 'alnaymiah', NULL, 'ar', NULL, NULL, NULL, '2022-07-20 15:59:07', '2022-09-19 15:55:39'),
(20, 'Abuobaida', 'abuobaida', NULL, NULL, 'abuobaida@ilaw.ae', '3', NULL, '$2y$10$2xcbgeokQDrCaZG0QoiAfO5rHihHf2Gyv3lNaa7LjBsMP4WIL1HLK', NULL, 1, 0, NULL, 'AE', '8', 'Sharjah', '0508750613', NULL, 'almajaz 1', NULL, 'ar', NULL, NULL, NULL, '2022-08-04 13:09:42', '2022-09-15 11:39:32'),
(21, 'manar', 'manar', NULL, NULL, 'test@gmail.com', '3', NULL, '$2y$10$Pky7UbLtk7EoWsQTODk6Q.oGN/DDVjmpsIBAb/X8oB1UXw65IGyKS', NULL, 1, 0, NULL, NULL, NULL, NULL, '010202000123', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-08-07 19:00:54', '2022-08-07 19:00:54'),
(22, 'Ezat Ellozy', 'Ezat Ellozy', NULL, NULL, 'ezatellozy@gmail.com', '3', NULL, '$2y$10$n5RRuhQ573f1tRXZAGygB.zjPyIF08etey3n7F6w2NKxfa9aqvnce', NULL, 1, 0, NULL, NULL, NULL, NULL, '01033394521', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-08-08 15:09:08', '2022-08-08 15:09:08'),
(23, 'Mohamed Sultan', 'Mohamed Sultan', NULL, NULL, 'test@technomasr.com', '3', NULL, '$2y$10$ceUCGmzsN726mXWaKaVDH.gqfwEcJH/rtj63EIcXj29VEJWirUrxK', NULL, 1, 0, NULL, NULL, NULL, NULL, '01000000000', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-08-21 11:51:23', '2022-08-21 11:51:23'),
(24, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'test7@test.com', '3', NULL, '$2y$10$btEVwHjEJm0G3pHJd3V2MOsCukkBBmlvefuMxB8jdSnA8Zdf.FEBG', NULL, 1, 0, NULL, '63', '2', '1', '123456789', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-08-21 16:20:38', '2022-08-21 16:20:38'),
(25, 'yjjyj', 'yjjyjy', NULL, NULL, 'omar@jv.dfvh', '3', NULL, '$2y$10$xvG5dDU2o4Mesopxw46TvOBpfOf3x1yHYyd7OS.9.kkiwc3thLNXW', NULL, 1, 0, NULL, '+20', NULL, NULL, '01015454324', NULL, NULL, NULL, 'fr', NULL, NULL, NULL, '2022-08-21 17:48:43', '2022-08-21 17:48:43'),
(26, 'ogkg', 'gsdgg', NULL, NULL, 'ihfviu@kgf.kbvnf', '3', NULL, '$2y$10$I7pivaEjg29krst0ekRZnuiKZlQe2yhCCoEPZwgYM7M2U4qnozcAa', NULL, 1, 0, NULL, '+20', NULL, NULL, '0101244555', NULL, NULL, NULL, 'fr', NULL, NULL, NULL, '2022-08-21 17:50:30', '2022-08-21 17:50:30'),
(27, 'jgf', 'hdfg', NULL, NULL, 'trfhr@fdbm.gsikw', '3', NULL, '$2y$10$HYM/JyKN8aXiIRnB3fWmWuT8IftxDLIWqJ8GevfFdsnFD9b9XLxdO', NULL, 1, 0, NULL, '+20', NULL, NULL, '05451021510', NULL, NULL, NULL, 'fr', NULL, NULL, NULL, '2022-08-21 18:01:13', '2022-08-21 18:01:13'),
(28, 'dg', 'fdg', NULL, NULL, 'fsaf@df.ghg', '3', NULL, '$2y$10$K5FOnTl8AEavM5lq5K2ZS.1wzHCsTAKE.cTlQ1QukdqziJ8nvbhmW', NULL, 1, 0, NULL, '+20', NULL, NULL, '01101010', NULL, NULL, NULL, 'fr', NULL, NULL, NULL, '2022-08-21 18:13:06', '2022-08-21 18:13:06'),
(29, 'hm', 'hm', NULL, NULL, 'hm@fg.gfhj', '3', NULL, '$2y$10$vlvnYIhFtHJRzm9UI6GWXeWZYP1DbrdpiCH2WY/qW1uqnRG88rsRy', NULL, 1, 0, NULL, '+20', NULL, NULL, 'hm', NULL, NULL, NULL, 'fr', NULL, NULL, NULL, '2022-08-21 18:23:59', '2022-08-21 18:23:59'),
(30, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'test71@test.com', '3', NULL, '$2y$10$ynEJlohhGQC8wk8xoXNdmuoAqc3v705qEh/72W3Xw8XFqEMwLELQ2', NULL, 1, 0, NULL, '63', '2', '1', '123456789', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-08-22 18:04:11', '2022-08-22 18:04:11'),
(31, 'dv', 'vdv', NULL, NULL, 'dv@jv.dspoivj', '3', NULL, '$2y$10$BOVOsTebakwoK.UJbcpW2eD.HT/C0eazyyLUFkHKQERBwQyMLBu3e', NULL, 1, 0, NULL, '+20', NULL, NULL, '01015449363', NULL, NULL, NULL, 'fr', NULL, NULL, NULL, '2022-08-22 18:21:48', '2022-08-22 18:21:48'),
(32, 'omar', 'elele', NULL, NULL, 'omar@gmail.com', '3', NULL, '$2y$10$1lxnz39QHzp2Zv6AYYBhceVolR5RogH2WmLg162cVhbEvDRG8.8YS', NULL, 1, 0, NULL, 'US', NULL, NULL, '01015449367', NULL, NULL, NULL, 'fr', NULL, NULL, NULL, '2022-08-22 18:44:48', '2022-08-22 18:44:48'),
(33, 'wddwdw', 'wdwdw', NULL, NULL, 'fdgf@gdr.hgj', '3', NULL, '$2y$10$qj.G5n3d0DAiTp2tBWd8yOf5ooYL1gVLnFMPwk1MhBqHwrrKOm7qy', NULL, 1, 0, NULL, 'US', NULL, NULL, '1212132', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-08-28 16:50:48', '2022-08-28 16:50:48'),
(34, 'efgefewf', 'fefeef', NULL, NULL, 'wff@bndb.br', '3', NULL, '$2y$10$CB0CoaEMElLfPRVxPjmgI.o4Tfd8wmM0e.64LQEFm0N6Fs5wGav9i', NULL, 1, 0, NULL, 'US', NULL, NULL, '0202020', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-04 18:34:23', '2022-09-04 18:34:23'),
(35, 'sg', 'fdhbd', NULL, NULL, 'jgvs@uguyv.vghd', '3', NULL, '$2y$10$CaWdhXD0oB/I8irgo0xRu.3bEBgejOn8zBB3ON2FfEHhp0QOCX3wa', NULL, 1, 0, NULL, 'US', NULL, NULL, '012202', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-04 18:38:22', '2022-09-04 18:38:22'),
(36, 'Mohamed Sultan', 'Mohamed Sultan', NULL, NULL, 'test55@technomasr.com', '3', NULL, '$2y$10$t25Jw/VEgOdXnhTnT86np.VuiWf6pgGu0l0y/NPznGqUuT0U4H0Gm', NULL, 1, 0, NULL, NULL, NULL, NULL, '01008015166', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-16 13:56:37', '2022-09-16 13:56:37'),
(37, 'ezat', 'ezatellozy', NULL, NULL, 'ezatell@gmail.com', '3', NULL, '$2y$10$ItYDrh00dYCcejJ7k4vkdu3hvhr54i521uZpp5/KQSFzzq7Kw.oMu', NULL, 1, 0, NULL, NULL, NULL, NULL, '1010101010', NULL, NULL, NULL, 'ar', NULL, NULL, '737554', '2022-09-16 17:40:15', '2022-10-03 13:09:22'),
(39, 'ezat', 'ezat', NULL, NULL, 'ezat@gmail.com', '3', NULL, '$2y$10$tQxatDOiTgaQelbzBSN.2O7jmiThzFikV/wW5PIHwZsxuddtQnFTy', NULL, 1, 0, NULL, NULL, NULL, NULL, '10321123112', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-18 12:20:34', '2022-09-18 12:20:34'),
(50, 'abuobaida2022', 'abuobaida2022', NULL, NULL, 'mr.abuobaidamustafa@gmail.com', '3', NULL, '$2y$10$kNefFTme8.TJFqnBN0Cz1OlI/H8zTquCA5M8nU9pfIWflwqVy/MDC', NULL, 1, 0, NULL, 'AE', NULL, 'Um Al Quiwan', '00000', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-27 08:33:19', '2022-09-30 11:28:25'),
(40, 'ابراهيم', 'bosalman', NULL, NULL, 'bosalman80@hotmail.com', '3', NULL, '$2y$10$E8pwDyxrpG0hR83za1AnneX6xd6bL6/uajs2IAqgYELh0YNVbyHQa', NULL, 1, 0, NULL, NULL, NULL, NULL, '0555999560', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-19 11:47:50', '2022-09-19 11:47:50'),
(41, 'ezat', 'ezzz', NULL, NULL, 'ez@gmail.com', '3', NULL, '$2y$10$yDXcAEPHllxWDMgvg3nlaeAvjOdRsYTMbKzVil4kfanmboijNdgJW', NULL, 1, 0, NULL, NULL, NULL, NULL, '12322122121', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-19 20:11:07', '2022-09-19 20:11:07'),
(42, 'Mohamed Sultan', 'Mohamed Sultan', NULL, NULL, 'test95@technomasr.com', '3', NULL, '$2y$10$3T8hoh0JF/6Hn6Q61PHyAePSc9FnK4aKOULLIesiok5FUJlE6LNxO', NULL, 1, 0, NULL, NULL, NULL, NULL, '01000000258', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-19 20:29:44', '2022-09-19 20:29:44'),
(43, 'Mohamed Sultan', 'Mohamed Sultan', NULL, NULL, 'test30@technomasr.com', '3', NULL, '$2y$10$SLecYoEB2bImAi2DDMunEuo.qR6z/9ToKnlRw37Pw9FWKFPNfQPzm', NULL, 1, 0, NULL, NULL, NULL, NULL, '01000000269', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-19 20:31:00', '2022-09-19 20:31:00'),
(44, 'Mohamed Sultan', 'Mohamed Sultan', NULL, NULL, 'test20@technomasr.com', '3', NULL, '$2y$10$PRK23/d1Jg4Q/zGQCGvtB.wyTW/mdu0BUIIKZ/ZzxzNiDgRsMoChW', NULL, 1, 0, NULL, NULL, NULL, NULL, '01000000014', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-19 20:33:06', '2022-09-19 20:33:06'),
(45, 'fghty', 'igty', NULL, NULL, 'drydsr@gk.ygujr', '3', NULL, '$2y$10$ruf0.FwqXo0cJkBgTb9XJO4OhH5amFsP9X1zbeVmD0YhOxYBJ7tKK', NULL, 1, 0, NULL, 'US', NULL, NULL, '010101', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-22 12:15:39', '2022-09-22 12:15:39'),
(46, 'محمد محمود', 'pppp', NULL, NULL, 'test4@te1st.com', '3', NULL, '$2y$10$nTYfUe1F.M/z/SNUlugMW.W9JY9yrwxJW/tu3aUpNW5jPZ.5rWgt.', NULL, 1, 0, 'BcFigdPnY10e1cttjkrYi7J7RFM7wCtno8bTRgvA.png', 'EG', NULL, 'Agamemmedli', '1234567891', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-22 17:53:13', '2022-09-29 20:15:05'),
(47, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'test7@test.comf', '3', NULL, '$2y$10$X7jz26hqxt8vHdm2G5ftD.PTuU1tKk5Uy4peKek/M49Ju2SDo9ZSS', NULL, 1, 0, NULL, '63', '2', '1', '12345678912', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-09-26 15:57:24', '2022-09-26 15:57:24'),
(48, 'iiini', 'bggiug', NULL, NULL, 'sfvdsfv@gerg.reger', '3', NULL, '$2y$10$krDun04XWvvFvjh4hRfoE.aRdGzMbXtp1G/7lQpObo.Af0TQJQtCi', NULL, 1, 0, NULL, 'US', NULL, NULL, '02020', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-26 17:48:13', '2022-09-26 17:48:13'),
(49, 'manar', 'manar@test.com', NULL, NULL, 'manar@test.com', '3', NULL, '$2y$10$fAxoYqz.w4Db4IGfQa4g2eKLJrzmsaZRL/UJd9H7KhSARbIevQ4Xq', NULL, 1, 0, NULL, 'US', NULL, NULL, '01026033826', NULL, NULL, NULL, 'fr', NULL, NULL, NULL, '2022-09-26 19:10:11', '2022-09-26 19:10:11'),
(51, 'Deeb', 'HHD', NULL, NULL, 'hossam-de@hotmail.com', '3', NULL, '$2y$10$msHdclNWUjTRxQgyqgomT./T6Xj90aRLW8.C5wFfCwv/VXvwaXPHe', NULL, 1, 0, NULL, 'US', NULL, NULL, '0545412304', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-27 09:02:22', '2022-09-27 09:02:22'),
(123, 'iLAW Publishing', 'ilawpublisher', 'admin', '50', 'noman@ilaw.ae', '2', NULL, '$2y$10$eGe8UOv56uVPx/1RO/29KOBhyO1vqvg4NtUui6/r1x5V7n.9lvA9a', NULL, 1, 0, NULL, 'AE', 'Abadilah', NULL, '0508750613', NULL, 'الشارقة', NULL, 'ar', NULL, NULL, NULL, '2022-10-26 12:52:15', '2022-11-01 14:35:19'),
(53, 'manar', 'manar elhefnawy', NULL, NULL, 'manar.m.elhefnawy@gmail.com', '3', NULL, '$2y$10$IMzSLMZQjDwA4fj5tLFQQOiztgPFw.oOSQJ1MyeTzCTjXuiT8duae', NULL, 1, 0, 'bs2heKou23utr1niuBJqq8R2XYQi2Jpg1QTYKd4T.jpg', 'EG', NULL, 'Giza', '01026033828', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-27 12:07:50', '2022-09-29 12:28:20'),
(54, 'ali ali', 'ali ali', NULL, NULL, 'ceo@ilaw.ae', '3', NULL, '$2y$10$uSFlz0WFl/pgJWr3sVvmier47rSj05N.mCzZnzBTw961lh9n6YMsG', NULL, 1, 0, NULL, 'AE', NULL, 'Sharjah', '0555999560', NULL, 'sharjah', NULL, 'ar', NULL, NULL, NULL, '2022-09-27 13:07:20', '2022-09-27 13:09:49'),
(55, 'elemawy', 'elemawy', NULL, NULL, 'omar@mf.fhnv', '3', NULL, '$2y$10$.1UC1q3.896pzathAMeoLu2gdkFzUua8AB/aVy8oZzf5tLZ8j4CRi', NULL, 1, 0, NULL, 'AS', NULL, 'Pago Pago', '02010120', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-27 13:38:15', '2022-09-28 16:22:23'),
(56, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'test25@test.com', '3', NULL, '$2y$10$H14TXVX/MYMLEoiDIqjc9unpR2EQey5otWRd8stEgyaY0KGYGO7cm', NULL, 1, 0, NULL, NULL, NULL, NULL, '123456787', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-28 13:26:08', '2022-09-28 13:26:08'),
(57, 'محمد محمود', 'mohamedmahmoud1', NULL, NULL, 'test215@test.com', '3', NULL, '$2y$10$6nPflTpWBIENQXkJUl.F3OoL4JxbOZ1SSAxZeHoaduxlm9m9dGt3K', NULL, 1, 0, NULL, NULL, NULL, NULL, '1234567871', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-28 13:27:15', '2022-09-28 13:27:15'),
(58, 'odhdh', 'bdbdb', NULL, NULL, 'odjd@fnfn.fjdj', '3', NULL, '$2y$10$1.QZE2tHVgE0yZpjTx0hGuc/Onzgyi3cUsyz0DNC63TiRWKYMrdZC', NULL, 1, 0, NULL, 'US', NULL, NULL, '01010440', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-29 20:48:35', '2022-09-29 20:48:35'),
(59, 'omar', 'djdhd', NULL, NULL, 'omarabdelazim97@gmail.com', '3', NULL, '$2y$10$zdT.BWpmxfkNYavSNUSGluUz50Uz0jW4XEWUrPdc5emrMq0/KPrkm', NULL, 1, 0, 'JclDeRdq4gfIbiLIGdhjr8iwQ4P728a7itCWdp0J.jpg', 'AM', NULL, 'Akhlatyan', '017383', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-09-29 20:55:35', '2022-10-04 16:03:22'),
(60, 'nour elhoda', 'nour mohamed', NULL, NULL, 'nour@test.com', '3', NULL, '$2y$10$nbJQ0WB061rPBTZNmWnMCeMJ6ez8r33R.85dMvZKR2beuc3i7vbz2', NULL, 1, 0, 'AwIAu4TNVmf6IF1Yd68GgujIfvSoqS1QhFLy5TzU.jpg', 'EG', NULL, 'Dahab City', '01223428570', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-02 12:38:38', '2022-10-02 13:03:16'),
(61, 'oyi', 'ityitg', NULL, NULL, 'gykgjy@yj.gjjk', '3', NULL, '$2y$10$b0CwWW/kinRycH7YZEVq0OLj0r3bW3geYZPM39x85ayDZThJHp9.6', NULL, 1, 0, NULL, 'US', NULL, NULL, 'i0100', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-02 13:45:21', '2022-10-02 13:45:21'),
(63, 'abeeer', 'abeer', NULL, NULL, 'abeer@gamil.com', '3', NULL, '$2y$10$u9qwr.cYN7Zb3QG6Pyiv4.EWMCPhZbLIG9Vao7syGB8258Fk4oew2', NULL, 1, 0, NULL, 'US', NULL, NULL, '01026033826', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-02 16:17:42', '2022-10-02 16:39:48'),
(64, 'onweog', 'hwiuoghk', NULL, NULL, 'omarfe@gr.gdsrg', '3', NULL, '$2y$10$PQlY/coz/8IlDWB861Jjku8S6HeWikTVXc9aubeWUznAT6Lo4HBZW', NULL, 1, 0, 'swWceGbDgpGy7QLc3WyUUpHEpi5fm576OBGrvIcv.png', 'US', NULL, NULL, '02020202', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-02 19:03:16', '2022-10-04 13:02:29'),
(69, 'محمد محمود', 'mohamedmahmoud1', NULL, NULL, 'mohamed.sultan@technomasr.com', '3', NULL, '$2y$10$CprPjnHayamWsg9Ve09bTuHfUHt7IBuJd1AflRoDudN177ZT.1jAK', NULL, 1, 0, NULL, NULL, NULL, NULL, '1234567871', NULL, NULL, NULL, 'ar', NULL, NULL, '559106', '2022-10-02 21:47:25', '2022-10-03 17:23:22'),
(70, 'New', 'new1', NULL, NULL, 'business@ilaw.ae', '3', NULL, '$2y$10$DHg2PkHWgB0ii6gZ/LJMX.K9oaUxql.KLY2r82iHwBIViHOBJ.S0a', NULL, 0, 0, NULL, 'AE', NULL, 'Sharjah', '0545412304', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-03 08:44:22', '2022-10-03 08:54:25'),
(71, 'wizorra', 'new user', NULL, NULL, 'marketing@wizzora.ae', '3', NULL, '$2y$10$tbxzgoRNwJSFuZbiVItVJ.w./GePTxbDYGtWc67t8WPlMbnUFhy9i', NULL, 0, 0, NULL, 'AE', NULL, NULL, '0545412304', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-03 09:28:45', '2022-10-03 09:30:30'),
(120, 'Abuobaida', 'abuobaida', NULL, NULL, 'app@ilaw.ae', '3', NULL, '$2y$10$B8eFjvBI1M07IUv2.A1EAOO.dFtV4Ji8s0WDOKLw6eEfAQ3ifU01e', NULL, 1, 0, 'T1WEqXOW582RKDJiKI8sO2BWHbBEN2qCNKNg48gY.jpg', 'AE', NULL, NULL, '0508750613', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-23 16:17:21', '2022-11-15 21:41:33'),
(100, 'HD', 'Hossam', NULL, NULL, 'test@ilaw.ae', '3', NULL, '$2y$10$JwLaL4pP/zlmzA2fa1ZhA.JW1ElChJtpJIFyPiY.aKmwN9ij7l4ba', NULL, 1, 0, NULL, 'US', NULL, NULL, '0545412304', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-10 12:08:17', '2022-10-10 16:09:23'),
(74, 'ezat', 'ezat', NULL, NULL, 'ell@gmail.com', '3', NULL, '$2y$10$6k9O92ebA6bXgHE7o35OIOsiczYnOPFljkRYabIX0clh1QbazUit2', NULL, 0, 0, NULL, NULL, NULL, NULL, '1023121111', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-03 15:04:10', '2022-10-03 15:04:10'),
(75, 'egsegseg', 'segeges', NULL, NULL, 'segseg@rdhdhb.jftg', '3', NULL, '$2y$10$c9fiV8.or.1f0ClDLST9buQwnUqknzf6vIHEzPvV.YiuwuHn39AN6', NULL, 0, 0, NULL, 'US', NULL, NULL, 'sgesg0sgse', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-03 18:20:38', '2022-10-03 18:20:38'),
(76, 'dghdr', 'dghg', NULL, NULL, 'fgdf@re.sgreg', '3', NULL, '$2y$10$u.A4TLTKA6TPk5WUqesw9ePi17ExyzXfGWkDFEczuw/6ZJlBXja1e', NULL, 0, 0, NULL, 'US', NULL, NULL, '02000000', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-03 18:21:18', '2022-10-03 18:21:18'),
(77, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'test7@test.com4', '3', NULL, '$2y$10$cIumbKsWV8zT9mx8n2Witu20wjRSy2SBO76wgCZXiWXuMw/e3VGhe', NULL, 0, 0, NULL, '63', '2', '1', '1234567894', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-10-03 18:22:29', '2022-10-03 18:22:29'),
(78, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'test7@654.com', '3', NULL, '$2y$10$4KaLiTSvre9s5Sd3GUwVdOcbMwb89C/27FrCgyRZjO7nhmGYPFtU6', NULL, 0, 0, NULL, '63', '2', '1', '1234567894', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-10-03 18:23:00', '2022-10-03 18:23:00'),
(79, 'omareee', 'omarelemawy', NULL, NULL, 'xbf@hddr.dogs', '3', NULL, '$2y$10$3sUtQrRLGC0MtmyXOotfLuAz.xIsYfomDlfx/0.xCbW9ffcrXcE1a', NULL, 0, 0, NULL, 'US', NULL, NULL, '010000', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-03 18:26:09', '2022-10-03 18:26:09'),
(80, 'gk', 'fgjfjhfd', NULL, NULL, 'ihcis@hsf.shfius', '3', NULL, '$2y$10$8lXafJ0n3EXPkWCiP7muK.awzl.gf5JxJCbSrDB.6wILDAce1nR1a', NULL, 0, 0, NULL, 'US', NULL, NULL, '02020', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-03 18:27:02', '2022-10-03 18:27:02'),
(81, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'ihcis@hsf.shfiusgh', '3', NULL, '$2y$10$FzZ.gFCk0CXw/1911ktn2ONMZy8WQ/yYQou13hcC6kDIZUwojmAXq', NULL, 0, 0, NULL, '63', '2', '1', '1234567894', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-10-03 18:27:48', '2022-10-03 18:27:48'),
(82, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'ihcis@hsf.com', '3', NULL, '$2y$10$DNYufwHsVsMpldF1MDfjXeSvagF/bXup3memhFJjV6ubsX4LJS81W', NULL, 0, 0, NULL, '63', '2', '1', '1234567894', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-10-03 18:29:15', '2022-10-03 18:29:15'),
(84, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'ihcis@hsfg.com', '3', NULL, '$2y$10$kWBC9hvUTx0S6ASRtxDxbO2g2KE4.O21Mk..xZ2v53eOAsG.SnMlG', NULL, 0, 0, NULL, '63', '2', '1', '1234567894', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, '566806', '2022-10-03 18:43:00', '2022-10-03 18:44:17'),
(85, 'omarelemaw', 'fhdfh', NULL, NULL, 'fdhdfh@rgw.com', '3', NULL, '$2y$10$beQQ7GlkYXuruyvnBbz5Pej8oWXaG86fNb.taQmkKbMPjNcgPyNXm', NULL, 0, 0, NULL, 'US', NULL, NULL, 'dfhdf', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-03 19:07:41', '2022-10-03 19:07:41'),
(86, 'omar', 'omar', NULL, NULL, 'subsampling97@gmail.com', '3', NULL, '$2y$10$Z78vliA1mI/LJ01LzvYy.eeVf3uusXOPEuIv5kheQ6RHb42cpbcH.', NULL, 1, 0, NULL, 'US', NULL, NULL, '01015449367', NULL, NULL, NULL, 'ar', NULL, NULL, '248739', '2022-10-03 19:34:38', '2022-10-03 19:52:06'),
(87, 'ghgdr', 'fthj', NULL, NULL, 'goo@dfg.com', '3', NULL, '$2y$10$4N90/gJtSdiVwp3tPMqiLefjGs9DacQ.gQsWfoSlOQ.HBOE3FYhPW', NULL, 0, 0, NULL, 'US', NULL, NULL, '0200000', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-03 20:23:05', '2022-10-03 20:23:05'),
(88, 'HD', 'HHD', NULL, NULL, 'Ahmed.yosri@ilaw.ae', '3', NULL, '$2y$10$migXjcI7EK7BWAlSYOtbW.Em7TBosc/xnzhEYg1ah/jgVXxgxo1BK', NULL, 0, 0, NULL, 'US', NULL, NULL, '0545412304', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-04 10:43:06', '2022-10-04 10:43:06'),
(107, 'eg', 'egge', NULL, NULL, 'ge@gd.hd', '3', NULL, '$2y$10$squ.k4OXb5Pdvh9cAQMq/.1hFKQbXcAjOp7F6Fp3JwaVrYNkZUd5O', NULL, 0, 0, NULL, 'US', NULL, NULL, '0200000', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-17 17:41:15', '2022-10-17 17:41:15'),
(97, 'ObaidaMustafa', 'ObaidaMustafa', NULL, NULL, 'abdulhay09217@gmail.com', '3', NULL, '$2y$10$5I0tG0YLN4PedRGL8KHHnezkCmU3X0SJQ923ppXJYDD4cvSBVmyxu', NULL, 1, 0, NULL, 'US', NULL, NULL, '0508750613', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-07 13:02:49', '2022-10-07 19:37:12'),
(98, 'ghaleb', 'ghalebkhatib', NULL, NULL, 'ghalebkhatib@gmail.com', '3', NULL, '$2y$10$QatETHUS/G/7Tw8f0SuSg.5qDGz8mACFlZRQN0WiU4F9UJOKL/3rm', NULL, 1, 0, NULL, NULL, NULL, NULL, '0562808801', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-09 20:21:27', '2022-10-10 00:26:43'),
(111, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'test7@test.tt', '3', NULL, '$2y$10$6nD/qPsYVxGnGY12d8fsZuqcbz3nJzBvkPQXs19eDMYou1HcCv.py', NULL, 0, 0, NULL, '63', '2', '1', '1234567890', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-10-19 19:01:38', '2022-10-19 19:01:38'),
(121, 'obaida', 'obaidamustafa', NULL, NULL, 'notification@ilaw.ae', '3', NULL, '$2y$10$yzqSD2RRTPITtvOy1B4Dz.xOWLgzlXC55K2E4chyLqSFVaFWfuMeG', NULL, 1, 0, NULL, 'US', NULL, NULL, '0508750613', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-23 17:40:23', '2022-10-23 21:40:39'),
(104, 'Sara', 'Sara Ammar', NULL, NULL, 'sara.haven.vcc@gmail.com', '3', NULL, '$2y$10$s/jkrAjkqdhhp.qNDFQ3jOPzYn9xR7iOP.Yoqc79bnMlwdSLYv9x.', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971564093626', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-12 13:09:12', '2022-10-12 17:14:20'),
(105, 'testing', 'testing', NULL, NULL, 'testing@ilaw.ae', '8', NULL, '$2y$10$XBtS18aa3CzUizhEuLfUQejkClkS8zqwG6HqPWHraRnsUhH6Iv7JO', NULL, 1, 0, NULL, '224', NULL, NULL, '0508750613', NULL, 'Abu Shagara', NULL, 'ar', NULL, NULL, NULL, '2022-10-17 12:22:08', '2022-10-17 12:22:08'),
(106, 'manar', 'manar', NULL, NULL, 'test2@gmail.com', '3', NULL, '$2y$10$Qa7lC3aZBzo4MlvSMSyWYeELT3E5unE9TYCmfrHcLyq4U5F4VGIX.', NULL, 0, 0, NULL, NULL, NULL, NULL, '0123456679', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-17 12:37:35', '2022-10-17 12:37:35'),
(110, 'manar', 'manar', NULL, NULL, 'rwad.solutions8@gmail.com', '3', NULL, '$2y$10$k5ElHu73kjGGOV23ODItSO.oNQeE3c.ip7yS36lcrqUnqqGFZ9fwO', NULL, 1, 0, NULL, 'EG', NULL, NULL, '0100000864', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-17 18:42:05', '2022-10-17 22:46:19'),
(112, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'notgg@ilaw.ae', '3', NULL, '$2y$10$UIxGwcYRbjao3HhJodFbEO0pzUalBWqhKSk5k7AyIDnCoOD6vOvyy', NULL, 0, 0, NULL, '63', '2', '1', '1234567890', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-10-19 19:03:22', '2022-10-19 19:03:22'),
(113, 'oo', 'hjljh', NULL, NULL, 'jhghj@dhdfh.yreh', '3', NULL, '$2y$10$a0ugR.y774O7q0Ao67CpqONhPxDXd966bgZtjqdhHSVnqE4yZdKxm', NULL, 0, 0, NULL, 'US', NULL, NULL, '0202000', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-20 19:04:31', '2022-10-20 19:04:31'),
(114, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'notgg@ilaiuouw.aeuio', '3', NULL, '$2y$10$c56dWMU3YyBH8tGY6OofF.bcsElCmE7CxD5t62OetQFwTUWW5Gs/y', NULL, 0, 0, NULL, '63', '2', '1', '1234567890', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-10-20 19:05:01', '2022-10-20 19:05:01'),
(115, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'notgg@ilaiuouw.ae', '3', NULL, '$2y$10$IouAZYlpoWzMlQZu9CAp0OPAQhDwIyEGOx0WZP.POZJuGx/tJoyJO', NULL, 0, 0, NULL, '63', '2', '1', '1234567890', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-10-20 19:07:42', '2022-10-20 19:07:42'),
(116, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'notgg@ilawfair.com', '3', NULL, '$2y$10$cW4SzVT8DQEJv6hLydbtsedSbIOSLq1VnCRbeIQ1eU.Gq5z8GYP1q', NULL, 0, 0, NULL, '63', '2', '1', '1234567890', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-10-20 19:08:38', '2022-10-20 19:08:38'),
(117, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'info@ilawfair.com', '3', NULL, '$2y$10$ZJHp5dRB37wa4AnDCgEamutJueGz6jUulN1ACrrSFRlc2oc6eZtMm', NULL, 0, 0, NULL, '63', '2', '1', '1234567890', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-10-20 19:08:49', '2022-10-20 19:08:49'),
(118, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'info@technomasr.com', '3', NULL, '$2y$10$2pYKDQWvh22Q4eZLDi7x.OC3bYyS6J6BoRwyMa0yX93ZgejK2cKrm', NULL, 1, 0, NULL, '63', '2', '1', '1234567890', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-10-20 19:09:24', '2022-10-23 16:20:54'),
(119, 'محمد محمود', 'mohamedmahmoud', NULL, NULL, 'info@jhtgjhg.com', '3', NULL, '$2y$10$eDl0EnD4O0VbL6NxJMZI1uGklv5s.EeVtds1J9fKH4cL7kxjj83/6', NULL, 0, 0, NULL, '63', '2', '1', '1234567890', NULL, 'عنوان تفصيلي', NULL, 'ar', NULL, NULL, NULL, '2022-10-20 19:10:52', '2022-10-20 19:10:52'),
(122, 'محمد', 'mohamed', NULL, NULL, 'mrmohamedsultan777@gmail.com', '3', NULL, '$2y$10$dh8HsWobxUcx5EnAstZdKOJ6oDj8cGRz9kesBrwfIgloE0N4TLGdW', NULL, 1, 0, NULL, NULL, NULL, NULL, '01000022555', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-10-25 18:57:22', '2022-10-25 18:57:22'),
(124, 'جميل درويش', 'جميل 74', NULL, NULL, 'jameeldarwish8@gmail.com', '3', NULL, '$2y$10$e44rfrRdc8AOFeC.4xOwVOHmzMEr4CYfUE0veTf3VhE5fFEKNMxwS', NULL, 1, 0, NULL, NULL, NULL, NULL, '0096895344061', NULL, NULL, NULL, 'ar', NULL, NULL, '452127', '2022-11-03 13:29:48', '2022-11-18 16:56:39'),
(125, 'غريب درويش', 'غريب دويش', NULL, NULL, 'gh2013d@gmail.com', '3', NULL, '$2y$10$DINPZdJsvVWh2pCLlln7z.9M0XUPvtgn1Ol/4BB9fRgIaWX.6Xydq', NULL, 1, 0, NULL, NULL, NULL, NULL, '0098695592890', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-03 13:31:28', '2022-11-03 18:11:27'),
(126, 'Aisha', 'Alsuwaidi', NULL, NULL, 'library@ccshj.gov.ae', '3', NULL, '$2y$10$JNgYaBwarIq5jVRYcEOHAe.xwuV5wqj6dCRD.P0fy0RijiTzkImtK', NULL, 0, 0, NULL, NULL, NULL, NULL, '0504810701', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-03 14:32:58', '2022-11-03 14:32:58'),
(127, 'Mohamed ali', 'Mohamed Elshehi', NULL, NULL, 'abofalah8541@gmail.com', '3', NULL, '$2y$10$50zdWG0rhUCZg0zCe4jYtevTj1NHPnIDc94tBLJ2BZDAiaKv.kE3i', NULL, 1, 0, NULL, NULL, NULL, NULL, '0504222435', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-03 15:48:29', '2022-11-04 03:13:40'),
(128, 'محمد عبد العزيز', 'saeed7434', NULL, NULL, 'saeed7434@gmail.com', '3', NULL, '$2y$10$6GIQpFB93t8TG8UQzSpSv.PLNy3C0ykMTUcKavDKD1o.ftUzgp7Xq', 'NVEkQSwpa2XxP3fHPmL8oA1qdlO1tMYgGsZE2Nct08vuBYpig7X0UVOBkFNL', 1, 0, NULL, NULL, NULL, NULL, '0559402827', NULL, NULL, NULL, 'ar', NULL, NULL, '189030', '2022-11-03 16:00:54', '2022-11-11 22:23:30'),
(129, 'Aisha', 'Alsuwaidi', NULL, NULL, 'a.alsuwaidi@ccshj.gov.ae', '3', NULL, '$2y$10$Cqc7KZJ9Qh2SQE65ZpN7A.vBxB6ksXWSDSOvfBw3k23ywdKbdbTvW', NULL, 1, 0, NULL, NULL, NULL, NULL, '0504810701', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-03 16:08:03', '2022-11-04 01:37:27'),
(130, 'Zina', 'Zina2022', NULL, NULL, 'zina7515@gmail.com', '3', NULL, '$2y$10$NjQWrs0bc3mTAmHuKm.K4O54iyqaiUr7btI7SKljQTA.At.YXHtjK', NULL, 0, 0, NULL, NULL, NULL, NULL, '532426261', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-03 16:33:33', '2022-11-03 16:33:33'),
(131, 'Khaled Turkey', 'Khaled Turkey', NULL, NULL, 'aast3030@gmail.com', '3', NULL, '$2y$10$pvhoYoagdtAatBt73ySUK./vID3ZCfbP1yUBBK17a9RgP3n33EJKq', NULL, 0, 0, NULL, NULL, NULL, NULL, '00966500033622', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-03 16:35:36', '2022-11-03 16:35:36'),
(132, 'OBAIDA', 'obaidamus', NULL, NULL, 'nomantest@ilaw.ae', '3', NULL, '$2y$10$fZKQ1xCIOLqWdFJONUe0guWlMz22KymvPZotf7oAvZBbReT8faJ4q', NULL, 0, 0, NULL, NULL, NULL, NULL, '0508750613', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-03 16:43:59', '2022-11-03 16:43:59'),
(190, 'Issa', NULL, NULL, NULL, 'i.rabadi@ustf.ac.ec', '3', NULL, '$2y$10$pwCI9XEM84dok9qP5CX.VeSAIH6XZf0bb1itOIjl3wUmPwyYS1Csq', NULL, 0, 0, NULL, NULL, NULL, NULL, '00971507896325', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-10 02:10:50', '2022-11-10 02:10:50'),
(134, 'سعود', 'سعود', NULL, NULL, 'al_ain33@hotmail.com', '3', NULL, '$2y$10$EHWJhiCVlJO/oWYVLczZyeLOO3Y4A8oij7NGNt3OA5tIJRJ3k/.By', NULL, 0, 0, NULL, NULL, NULL, NULL, '050599225', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-03 17:45:52', '2022-11-03 17:45:52'),
(135, 'Adil Alsuwaidi', 'Adil92', NULL, NULL, 'adilalsuwaidilaw@gmail.com', '3', NULL, '$2y$10$AzcdfKxS38ut73f5BVKYhe9CNOwFBqtOAimlyEBLZxOcy1AwLHWSm', NULL, 0, 0, NULL, NULL, NULL, NULL, '0504706669', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-03 18:29:30', '2022-11-03 18:29:30'),
(136, 'حمد سلطان', 'حمد', NULL, NULL, 'hamadsalktbi@gmail.com', '3', NULL, '$2y$10$.Uutw29hJCQyGNkC1tDBcOkB7VhRaFCrPg395kwCRqYM9Xp9aheaW', NULL, 0, 0, NULL, NULL, NULL, NULL, '0567640000', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-03 18:30:09', '2022-11-03 18:30:09'),
(137, 'سالم حميد١', 'سالم', NULL, NULL, 'salimhmed112@gmail.com', '3', NULL, '$2y$10$DaWvMny70dZzsXyweA7ViOFl.anJYvaRUjTyKVVBp6w.qM/jHeUSK', NULL, 1, 0, NULL, NULL, NULL, NULL, '0096892777265', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-03 19:30:58', '2022-11-03 23:39:23'),
(138, 'نجيب البلوشي', 'نجيب البلوشي', NULL, NULL, 'naieeeb97106109@gmail.com', '3', NULL, '$2y$10$0Hq0bRbWQjmHb0M3BT6j.uNKijjUPjc/6Dlxtbk.pU3TYb3PYf4qm', NULL, 0, 0, NULL, NULL, NULL, NULL, '0096897106109', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-03 19:38:23', '2022-11-03 19:38:23'),
(139, 'Saif Mohamed', 'Saif kaabi', NULL, NULL, 'alkaabi.saif.006@gmail.com', '3', NULL, '$2y$10$zv2O3LN8cz4Bx3Mmyf6O9OsbQEjy.RExXhBh5/F0JgaPaIA1mx.Be', NULL, 1, 0, NULL, NULL, NULL, NULL, '0096894432233', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-03 19:40:00', '2022-11-05 20:57:00'),
(140, 'علاء', 'القيسي', NULL, NULL, 'alaa_mjbir@yahoo.com', '3', NULL, '$2y$10$RQ2U48q4rsHK/PcmgB1KZedDW9Ho76Bs23dZiWTk638DGUW.0JML2', NULL, 0, 0, NULL, NULL, NULL, NULL, '00962796782389', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-03 20:32:20', '2022-11-03 20:32:20'),
(141, 'Mohamed', 'Mohamed', NULL, NULL, 'm.sh.612.m@gmail.com', '3', NULL, '$2y$10$AmkvXCLPTwPXwLlFuFUOR./fvCRrv.yvRPWnaedzRr3QcAYaCah/e', NULL, 0, 0, NULL, NULL, NULL, NULL, '0566727498', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-03 20:37:44', '2022-11-03 20:37:44'),
(142, 'Mohamed aladwy', 'Mohamed aladwy', NULL, NULL, 'mohamed.aladwy@yahoo.com', '3', NULL, '$2y$10$38rbBI9QS4Vayc7oW9A/he/RBLnb8qTdqE15RabjRaWB47U3heZt6', NULL, 1, 0, NULL, NULL, NULL, NULL, '0556048846', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-04 17:21:02', '2022-11-04 21:21:42'),
(143, 'Saoud', 'Saoud919', NULL, NULL, 'motec919@gmail.com', '3', NULL, '$2y$10$ejhteyvyTDgCb6nW2JlQUulAXccbg/fqmFNKfz1EIAiZhpwmKMmee', NULL, 1, 0, NULL, NULL, NULL, NULL, '0508999940', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-04 17:32:05', '2022-11-04 22:11:27'),
(144, 'Ali Saed', 'Ali Saed', NULL, NULL, 'alisaid998800@gmail.com', '3', NULL, '$2y$10$OLGets9uncg2ISss5H0hTOLlkBDaorAcBGU6fnGHW/bO1Y7Zqv7.u', NULL, 0, 0, NULL, NULL, NULL, NULL, '0096899818989', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-04 17:42:15', '2022-11-04 17:42:15'),
(145, 'خالد المدحاني', 'Khaled almadhani', NULL, NULL, 'khalidm83@hotmail.com', '3', NULL, '$2y$10$68fCLtxQY9uj8i2zCyLDeOEczZdh45i./naZDBE0Izw2J66QkJBCO', NULL, 1, 0, NULL, NULL, NULL, NULL, '503916060', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-04 17:43:15', '2022-11-04 21:43:33'),
(146, 'Dr.Abbaa Mostafa', 'Abbas Mostafa', NULL, NULL, 'Abbassmustafa@yahoo.com', '3', NULL, '$2y$10$UQHFJYNst4viR1GMLTrNF.IHKEy2vd8T1EUACDR32IaQT6vjPrfhu', NULL, 1, 0, NULL, NULL, NULL, NULL, '009710506928890', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-04 17:57:23', '2022-11-04 21:57:49'),
(147, 'Ahmed', 'Ahmed AlHammadyi', NULL, NULL, 'a.y_y@hotmaul.com', '3', NULL, '$2y$10$68U/U8GjJwSK1N2FPe4ei.BtpNpJcn4iiRqJ3zR9WG0Hvcl1eHdVO', NULL, 0, 0, NULL, NULL, NULL, NULL, '0509667887', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-04 18:31:07', '2022-11-04 22:33:02'),
(148, 'Zayad alshibli', 'Zayad alshibli', NULL, NULL, 'lawyeralshibli@gmail.com', '3', NULL, '$2y$10$LjrTg971Oehxv9clGLyvfesM1vi5C9lTnTVC3hdj/otFlmvkDjPkG', NULL, 0, 0, NULL, NULL, NULL, NULL, '0555777445', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-04 19:09:45', '2022-11-04 19:09:45'),
(149, 'Ibrahim', 'Ibrahim', NULL, NULL, 'uae1919@hotmail.com', '3', NULL, '$2y$10$lvokpIw7eYBf/NnLJLZtou5h4xSL2fdXfB2K8Ii1oKSQMY1SRZ0pi', NULL, 0, 0, NULL, NULL, NULL, NULL, '0566661698', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-04 19:11:53', '2022-11-04 19:11:53'),
(150, 'عبدالله البدواوي', 'Abdullah.Albedwawi', NULL, NULL, 'waslawi123@hotmail.com', '3', NULL, '$2y$10$FeLzZaRjWeWesGzNzytm4.scA8d3YmiXMiuJ0MYchwS/m5Fgn5Nze', NULL, 1, 0, NULL, NULL, NULL, NULL, '0507874992', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-05 19:37:46', '2022-11-05 23:38:05'),
(152, 'Saeed Alhanaee', 'Saeed', NULL, NULL, 'mahrahss2011@gmail.com', '3', NULL, '$2y$10$/EHVoXYHhT5NM2UT7QOiE.ys1nu1AP4J0HcwrgXH06J/BZZ3wCS3K', NULL, 0, 0, NULL, NULL, NULL, NULL, '00971507536877', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 13:19:41', '2022-11-06 13:19:41'),
(153, 'عمر', 'Alshamsi239', NULL, NULL, 'alshamsi239@gmail.com', '3', NULL, '$2y$10$6cSlkimyZteZ7w9kjsqN6ueXm0eFM3LRtFhyossARxghK6m1fKn4m', NULL, 1, 0, NULL, NULL, NULL, NULL, '0552066664', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 13:56:06', '2022-11-06 18:00:37'),
(154, 'Ramzy', 'Ramzy', NULL, NULL, 'Trademark.lawyer@yahoo.com', '3', NULL, '$2y$10$Tfwv6.vkGHGPz/f9UnJXt.TpoSMqgDN8/bbXq5PpjMVAztSVgyZl6', NULL, 0, 0, NULL, NULL, NULL, NULL, '00201011581420', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 14:01:09', '2022-11-06 14:01:09'),
(155, 'Mohamed Elmelgy', 'Mohamed Elmelegy', NULL, NULL, 'mligy1@yahoo.com', '3', NULL, '$2y$10$9A4umg8b2WTHEoWaLqD2S.sWcOu0qwWLuzu6wgXi2cEX4SkZ8LNR6', NULL, 1, 0, NULL, NULL, NULL, NULL, '009710509221077', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 14:13:49', '2022-11-06 18:14:30'),
(156, 'Ahmed', 'Ahmed Mohamed', NULL, NULL, 'bin_nayea@hotmaul.com', '3', NULL, '$2y$10$BF5mt4Fnq9vGOVCCqfAPduSfcLMCMf5i7rFtWcly79tvU7gzp9k96', NULL, 0, 0, NULL, NULL, NULL, NULL, '009710504454949', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 14:48:03', '2022-11-06 14:48:03'),
(157, 'Mohamed kauuasmi', 'Mohamed', NULL, NULL, 'M.kawasnu@tanimi.com', '3', NULL, '$2y$10$z7SHTUGPsPCPwN0WQ0TyA.GSEWpE86LRoJ3/HiIiOuAFNpredhz8C', NULL, 0, 0, NULL, NULL, NULL, NULL, '009710507347890', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 15:37:37', '2022-11-06 15:37:37'),
(158, 'Awny El afify', 'Awny El afify', NULL, NULL, 'awnyibrahim2030@gmail.com', '3', NULL, '$2y$10$hpgihH4gbdcdgilm9OimheV3qqTEhi5on7UFsS1VPuKWeJ2W6SHvW', NULL, 1, 0, NULL, NULL, NULL, NULL, '009710508948308', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 16:02:33', '2022-11-06 20:06:53'),
(159, 'Ahmed', 'Ahmed Mohamed', NULL, NULL, 'bin_nayea@hotmail.com', '3', NULL, '$2y$10$rmEDyRra.C/BUNYY9G0hTuDijSmyXcGz9/Qehf3Yqm7MfOaPXxj4q', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971504454949', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 16:10:57', '2022-11-06 20:11:18'),
(160, 'احمد سعيد الخروصي', 'Alkhuroosi', NULL, NULL, 'alkhuroosi@hotmail.com', '3', NULL, '$2y$10$a3KKst5vmiJ0XhOjz2VMzea9di/s3RvIeoj/8mNDW4YlR062EyEKq', NULL, 1, 0, NULL, NULL, NULL, NULL, '0504539005', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 16:56:52', '2022-11-06 20:57:05'),
(161, 'test puplsher', 'manar', 'technomasr', '40', 'testpublisher@technomasr.com', '2', NULL, '$2y$10$AjxyaJ3m6R2ElatITZV/n.pl8GTD6ByQlmricrWzI2TKfZ6P90fZq', NULL, 1, 0, NULL, 'AE', 'Abu Dhabi', NULL, '0101000000', '0102000000', 'ابو ظبى', NULL, 'ar', '1234536', NULL, NULL, '2022-11-06 22:19:25', '2022-11-15 22:07:43'),
(162, 'Ashraf', 'Ashraf elbaz', NULL, NULL, 'ashraf_elbaz@fcd.sharjah.ae', '3', NULL, '$2y$10$REq6YBS11Awebnupf3ooI.wUh0U18bElhZIGHRkao73OaYOlADbPm', NULL, 0, 0, NULL, NULL, NULL, NULL, '00971502007629', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 20:43:51', '2022-11-06 20:43:51'),
(163, 'Eman', 'Eman mamdouh', NULL, NULL, 'malakhaysam65@gmail.com', '3', NULL, '$2y$10$cAK4eDhe0Vp8mZbWDsw1Vetg2DwVsexH8A9WPTXLtqR/B6ou/xhqO', NULL, 0, 0, NULL, NULL, NULL, NULL, '009710555300567', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 20:51:21', '2022-11-06 20:51:21'),
(164, 'Lukman', 'Lukman Abbas', NULL, NULL, 'saap19@gmail.com', '3', NULL, '$2y$10$Kz2HoCZg6x11ApLqrlZuOuNOdPlfVFVVGtBPduMol0AviZYYs18J6', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971502884779', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 21:13:44', '2022-11-07 12:15:16'),
(165, 'Amin soliman', 'Amin Soliman', NULL, NULL, 'asum101@yahoo.com', '3', NULL, '$2y$10$a.3ugpJe3HJrrAKeUjCFMOXA8aVBqUKSrwkrmUBMMUaMJJ0VD3LJS', NULL, 0, 0, NULL, NULL, NULL, NULL, '00971507820616', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 21:54:38', '2022-11-06 21:54:38'),
(166, 'Amgad helaly', 'Amgad helaly', NULL, NULL, 'helalyamgad@gmail.com', '3', NULL, '$2y$10$T65ZCiQRrBw3B.O4b9IDzu.d653S/1ZnGWJprJp4T6LJBVOZ7KTze', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971588280650', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 22:27:41', '2022-11-07 06:05:19'),
(167, 'Salman Ahmed', 'Salmanahmed', NULL, NULL, 'zayunaha@gmail.com', '3', NULL, '$2y$10$8XcISBpUfO6Mu48A8B.uguNcdhRRKvQTNqQMS5CffW2VCHzfcAStG', NULL, 0, 0, NULL, NULL, NULL, NULL, '0582865009', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 22:44:19', '2022-11-06 22:44:19'),
(168, 'رزان', 'جلال', NULL, NULL, 'razan.shahwan@outlook.com', '3', NULL, '$2y$10$CQrACt5t1q2GzurBVVAPxe4hVqA9KsCM2mgM/2I1u2.9IAxBA3mqa', NULL, 0, 0, NULL, NULL, NULL, NULL, '0501487840', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-06 23:07:43', '2022-11-06 23:07:43'),
(194, 'oba\'', NULL, NULL, NULL, 'payment@ilaw.ae', '3', NULL, '$2y$10$XK5PxcHMKVn86AaFwZ0OJ.bKsuVHq1uKT5jUJ.R6tDI35bzNR0Zr.', NULL, 1, 0, NULL, NULL, NULL, NULL, '0508750613', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-10 16:55:07', '2022-11-10 16:55:30'),
(186, 'Mohamed Amin', NULL, NULL, NULL, 'ameenaboobaker@gmail.com', '3', NULL, '$2y$10$enyh./rc/G7DglQkm2cZB.ZBp8i8F2dGiV.kU5vNFUOcjSE5ngxiO', NULL, 0, 0, NULL, NULL, NULL, NULL, '00971528408811', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-07 22:14:02', '2022-11-07 22:14:02'),
(187, 'عبد الرحمن السباعي', NULL, NULL, NULL, 'abdoelsibay258@gmail.com', '3', NULL, '$2y$10$XKy/zkFJWmYuirFRmng96OxMhGFdiaEApigEesdNliIqIpT33VPWu', NULL, 1, 0, NULL, NULL, NULL, NULL, '0543391179', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-08 00:38:08', '2022-11-08 00:39:06'),
(188, 'عمرو محمود خضر', NULL, NULL, NULL, 'accounts@ilaw.ae', '9', NULL, '$2y$10$WIujJQRA1HkxBdVlf97.G.loIIKIfS0/AJF0HhdRm5HODmmkY8v9.', NULL, 1, 0, NULL, '224', NULL, NULL, NULL, NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-08 14:42:55', '2022-11-08 14:42:55'),
(192, 'Mohamed Sultan', NULL, NULL, NULL, 'sales@technomasr.com', '3', NULL, '$2y$10$vJOTzcTtBc.3.T0qGemPp.J1vuSiEI7htDfXhNUhNtdZdu1IjN4za', NULL, 0, 0, NULL, NULL, NULL, NULL, '01254879865', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-10 06:18:10', '2022-11-10 06:18:10'),
(195, 'عيسى', NULL, NULL, NULL, 'i.m85@hotmail.com', '3', NULL, '$2y$10$M/FzQtswvYcRmrrXIClL/euKrdGmVC0PWntS9vN2A5Z0gzNc89rUu', NULL, 1, 0, NULL, NULL, NULL, NULL, '0508444579', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-10 20:47:58', '2022-11-10 20:48:22'),
(196, 'Hissa', NULL, NULL, NULL, 'hissah_al@hotmail.com', '3', NULL, '$2y$10$w1jbyPvMVDw/ANDv8y.4GeYwlM7Kp.fKZepjOZBmZrO3X/XMRHJjS', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971504856322', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-10 21:03:35', '2022-11-11 04:19:35'),
(197, 'Ammar Al asbahy', NULL, NULL, NULL, 'Ammar_3li@hotmail.com', '3', NULL, '$2y$10$vvnbSYpRwF2xNfS3ZBIv/OYnObaxX3M3217Cf6DOD21/CWWKcniMu', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971582832800', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-11 01:02:09', '2022-11-13 20:44:26'),
(198, 'Mohammed Almarri', NULL, NULL, NULL, 'malmarri69@gmail.com', '3', NULL, '$2y$10$GB8NIHATU9w5h13qjWPD2OgzGYTD/8BZLmhHTJkzzJdD65pUNJpQm', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971507717078', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-12 02:43:36', '2022-11-12 02:44:07'),
(199, 'Hakima', NULL, NULL, NULL, 'topaz4fa@gmail.com', '3', NULL, '$2y$10$tfTtywS5YrItKO4veElMOuAXe4WLfdvaXVU.7DEBrVBiMYeS033ci', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971505893999', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-12 02:53:20', '2022-11-12 02:53:41'),
(200, 'خليفة', NULL, NULL, NULL, 'khlifa_alkutbi@hotmail.com', '3', NULL, '$2y$10$.2BKqu5tKEEXEIHaFtC9u.fHJlERTviDVBGbM8t8cUYH/ul7YlgNS', NULL, 1, 0, NULL, NULL, NULL, NULL, '0509900215', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-12 12:43:55', '2022-11-12 12:45:55'),
(201, 'ali elshafie', NULL, NULL, NULL, 'aliawadalla@gmail.com', '3', NULL, '$2y$10$iUHErz7813b7UZokj8nstuhsT/M/sX8DenUQEF9K.pKaCeZMUZXmm', NULL, 1, 0, NULL, NULL, NULL, NULL, '0503706018', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-12 21:24:30', '2022-11-12 21:24:54'),
(202, 'Ali Ahmed', NULL, NULL, NULL, 'ali_uaq@hotmail.com', '3', NULL, '$2y$10$LGxA4k6dG6hnaK8Z6sKHX.yU7ywgXEnFKOCMarWheiXWiwMEIrgIa', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971504826292', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-12 22:21:36', '2022-11-12 22:23:32'),
(203, 'Shamma Mohamed', NULL, NULL, NULL, '201002080@uaeu.ac.ae', '3', NULL, '$2y$10$oqagKyWnrw.FhZIe0V5c8Oy2qtedNEEB2W7z3ieE4glGfCLXmfAsG', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971502775900', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-12 22:50:37', '2022-11-12 22:50:42'),
(204, 'Amany Ibrahim', NULL, NULL, NULL, 'Amani4335a@gmail.com', '3', NULL, '$2y$10$8TnO/ED.sSmWy1e3qlsFd.pmLLnqioOk68xTFqP5gP5pDG4huBTOC', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971521194335', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-12 22:55:15', '2022-11-12 22:56:49'),
(205, 'Mohamed Saeed', NULL, NULL, NULL, 'mohammedsaeedobaid89@gmail.com', '3', NULL, '$2y$10$fuNAyceuUOpnJFxn81Ln4evET6d4kV42R6ae2kQC86SJtdXDR8teu', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971509810003', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-12 23:03:58', '2022-11-12 23:04:22'),
(206, 'Tarek eldebp', NULL, NULL, NULL, 'tarek.eldep1@gmail.com', '3', NULL, '$2y$10$BCrsfEk9CD.uh0vgH/r.nurlxg54WR6eRKWii7b/qGbsreyhtorIK', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971551076083', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-13 00:11:14', '2022-11-13 00:11:35'),
(207, 'Ibrahim Mohamed', NULL, NULL, NULL, 'isamz2014@gmail.com', '3', NULL, '$2y$10$1mQQMd.Y8p2LFlQD5ah.fOwYiULLFVVXCBs3acqfDMBk1f9xMkyBe', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971552613062', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-13 00:12:56', '2022-11-13 00:13:27'),
(208, 'Diaa', NULL, NULL, NULL, 'diaaaldeensm@gmail.com', '3', NULL, '$2y$10$5csjn6vNvYyaxakUjCNTe.jofesQDGw77Wp71AGOCWZD2Pjh2XN.q', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971555226807', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-13 00:15:21', '2022-11-13 00:16:04'),
(209, 'Ashraf Fathu', NULL, NULL, NULL, 'albarawyashraf@yahoo.com', '3', NULL, '$2y$10$naTDbBcMIj1IVTTSBJhHHeQwnNZWkmtow88w87AvepmB1Q1Kgdoum', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971555561070', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-13 00:49:38', '2022-11-13 05:50:56'),
(210, 'عبدالله محمد الحمادي', 'Abdulla', NULL, NULL, 'a.m.alhammadi@hotmail.com', '3', NULL, '$2y$10$NDJA29H8.BgSFiU3u53cJetcR67kr0Pt3wk.cvJx1tFA.JAwkewgy', NULL, 1, 0, NULL, NULL, NULL, NULL, '0504416999', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-13 01:42:44', '2022-11-13 01:43:39'),
(211, 'Tarek Othamn', NULL, NULL, NULL, 'tarikeljak@gmail.com', '3', NULL, '$2y$10$APGwgRW7C0NTC1V3Ee3hnuwAr/GXEgrK1643hTm4Vu8Vq/wzaqSti', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971523703088', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-13 01:54:03', '2022-11-13 01:55:17'),
(212, 'Abdelrahman Mohamed', NULL, NULL, NULL, 'altaf_mo@hotmai.com', '3', NULL, '$2y$10$kAxJFiNrqJTMAeX02Csv5.jcFYO9EOvfI.XWkmhf4X61yW1MBt9wm', NULL, 0, 0, NULL, NULL, NULL, NULL, '00971569369820', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-13 20:20:35', '2022-11-13 20:20:35'),
(213, 'Ali Abdelrahman', NULL, NULL, NULL, 'aliabdelrhman2013@gmail.com', '3', NULL, '$2y$10$NihmkaUgYEPs/xProMW2cueKiulzNNBYRNu.l88Otrjv7Uupq4RbO', NULL, 1, 0, NULL, NULL, NULL, NULL, '00971563362737', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2022-11-13 22:59:47', '2022-11-13 23:00:32'),
(214, 'Mehb Nawas', NULL, NULL, NULL, 'mehbnawas@gmail.com', '3', NULL, '$2y$10$59tYh5DnlqQ8Wyz7ikjQQu5euxYProxKxSmHqAgY5.pFspM8naZbq', NULL, 1, 0, NULL, NULL, NULL, NULL, '0971501011748', NULL, NULL, NULL, 'en', NULL, NULL, NULL, '2022-11-14 01:13:48', '2022-11-14 01:14:03'),
(215, 'رسمية', NULL, NULL, NULL, 'rasmia.ahmed@hotmail.com', '3', NULL, '$2y$10$8XHq2D6LwZ8xk1WalBi.XOAwj8TMbr0frc/y0hmp41y6hm6Wkd1mi', NULL, 1, 0, NULL, NULL, NULL, NULL, '0508877589', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-14 03:16:43', '2022-11-14 03:19:30'),
(216, 'محمد التميمي', NULL, NULL, NULL, 'mo_altamimi@hotmail.com', '3', NULL, '$2y$10$TU0oOlLy6Nj1uWo3qHJ5VOGGrGA7.TzQuM5tqwjWB5Da9K7b/D.x.', NULL, 1, 0, NULL, NULL, NULL, NULL, '0506661355', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-14 03:17:39', '2022-11-14 03:21:25'),
(217, 'عبدالكريم', NULL, NULL, NULL, 'a.ismail@spea.shj.ae', '3', NULL, '$2y$10$OR9H3Pm3T7fOHFZVCnBOWO9ui.r5cAs59zaGmUM3xsLbnx6DguiD.', NULL, 1, 0, NULL, NULL, NULL, NULL, '0507681956', NULL, NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-16 14:29:05', '2022-11-16 14:30:07'),
(218, 'sarapublishertest', 'sarapublisher', 'admin', '50', 'sara@ilaw.ae', '2', NULL, '$2y$10$mTo53HQK2vYQOUI9dkZ7NOPQUzdyggeqAitRG4PZngp9oAJeUASV2', NULL, 1, 0, NULL, 'AE', 'Sharjah', NULL, '564093626', '564093626', NULL, NULL, 'ar', NULL, NULL, NULL, '2022-11-22 22:53:53', '2022-11-22 22:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `governorate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `postal_code`, `country`, `governorate`, `city`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(2, '8', '35111', '63', '2', '1', 'تفاصيل العنوان', '01008080888', '2022-06-18 03:04:28', '2022-06-18 03:04:28'),
(19, '19', '00000', '224', '8', '4', 'kkjkjk', '0508750613', '2022-09-19 15:56:34', '2022-09-19 15:56:34'),
(6, '14', '34733', '63', '2', '1', 'new damietta', '121215210', '2022-06-30 17:58:28', '2022-06-30 17:58:28'),
(7, '22', '34733', '63', '2', '1', 'Saif Eldin - Alzarqa - Damietta', '01033394521', '2022-08-08 15:10:25', '2022-08-08 15:10:25'),
(8, '22', '121212', '224', '7', '3', 'dasdasd', '132123132121', '2022-08-08 15:39:21', '2022-08-08 15:39:21'),
(9, '22', '34733', '224', '8', '4', 'dsadasd', '15215452121', '2022-08-08 15:39:42', '2022-08-08 15:39:42'),
(15, '20', '00000', 'AE', NULL, 'Sharjah', 'AlMajaz 1', '0508750613', '2022-09-15 08:44:44', '2022-09-15 08:44:44'),
(20, '11', '123456', 'EG', NULL, '10Th Of Ramadan City', 'dasdasdas', '1023232323', '2022-09-19 16:18:54', '2022-09-19 16:18:54'),
(16, '38', '00000', 'AE', NULL, 'Sharjah', 'almajaz 1', '0508750613', '2022-09-18 14:24:02', '2022-09-18 14:24:02'),
(17, '38', '00000', '224', '7', '3', 'suyhan', '0508750613', '2022-09-18 14:40:38', '2022-09-18 14:40:38'),
(18, '38', '00000', '63', '2', '1', 'AlMajaz 1', '0508750613', '2022-09-18 15:57:42', '2022-09-18 15:57:42'),
(21, '11', '12345', 'AF', NULL, 'Bagram', 'gdfgsdg', '1021212111', '2022-09-19 16:26:54', '2022-09-19 16:26:54'),
(28, '37', '12135', 'ZW', NULL, 'Alexander Park', 'dsfsdfsdf', '212154541', '2022-09-19 19:27:06', '2022-09-19 19:27:06'),
(30, '41', '123456', 'EG', NULL, '15 Of May City', 'dasdasdas', '1212454', '2022-09-19 20:18:44', '2022-09-19 20:18:44'),
(31, '44', '35111', 'EG', NULL, 'Aamr Village', 'Mahmoud Naseem St.', '01000036589', '2022-09-19 20:35:16', '2022-09-19 20:35:16'),
(32, '46', 'bfbf', 'AZ', NULL, 'Agamemmedli', 'fbf', 'bfbf', '2022-09-22 17:56:35', '2022-09-25 12:05:19'),
(37, '47', '35111', '63', NULL, '1', 'تفاصيل العنوان', '01008080888', '2022-09-26 15:59:22', '2022-09-26 15:59:22'),
(38, '48', 'bfbf', 'AS', NULL, 'Tafuna', 'bfb', '02020202', '2022-09-26 17:52:10', '2022-09-26 17:52:10'),
(39, '49', 'ggg', 'AS', NULL, 'Pago Pago', 'jfjj', '6699', '2022-09-26 19:18:47', '2022-09-26 19:18:47'),
(50, '70', NULL, 'AE', NULL, 'Al Khan', 'Al khan', '0545412304', '2022-10-03 08:55:51', '2022-10-03 08:57:44'),
(41, '51', NULL, 'ES', NULL, 'Barcena de Toranzo', 'near', '00971545412304', '2022-09-27 09:23:47', '2022-09-27 09:23:47'),
(42, '47', NULL, '63', NULL, '1', 'تفاصيل العنوان', '01008080888', '2022-09-27 12:18:56', '2022-09-27 12:18:56'),
(43, '53', '٨٧٥٤', 'EG', NULL, 'Mansoura', 'الجلاء', '01026033826', '2022-09-27 12:19:07', '2022-09-27 12:19:07'),
(45, '47', '35111', 'AZ', NULL, 'Agamemmedli', 'تفاصيل العنوان', '01008080888', '2022-09-28 12:56:15', '2022-09-28 12:56:15'),
(46, '55', '02020', 'AD', NULL, 'El Forn', 'opopopoop', '0212020', '2022-09-28 17:17:02', '2022-09-28 17:54:32'),
(47, '55', '12345', 'AI', NULL, 'Valley', 'omar', 'ghiugiy02020202', '2022-09-28 18:12:11', '2022-09-28 18:48:02'),
(48, '50', '00000', 'AE', NULL, 'Sharjah', 'Almajaz 1', '0508750613', '2022-09-29 09:32:42', '2022-09-29 09:32:42'),
(49, '59', NULL, 'AS', NULL, 'Savai Island', 'xjxh', '10104040', '2022-09-29 20:58:47', '2022-09-29 20:58:47'),
(51, '70', NULL, 'SA', NULL, 'Qatif', 't1', '0545412304', '2022-10-03 09:00:40', '2022-10-03 09:00:40'),
(52, '72', NULL, 'AE', NULL, 'Sweihan', 'سويحان', '0920221137', '2022-10-03 09:53:09', '2022-10-03 09:53:09'),
(53, '73', NULL, 'AO', NULL, 'Balombo', 'المريخ', '9549054651855', '2022-10-03 13:13:13', '2022-10-03 13:39:40'),
(54, '90', NULL, 'AE', NULL, 'Sharjah', 'AlMajaz 1', '0508750613', '2022-10-05 08:16:11', '2022-10-05 08:16:11'),
(55, '89', NULL, 'AO', NULL, 'Balombo', 'uyy', '0545412304', '2022-10-05 15:16:11', '2022-10-05 15:16:11'),
(56, '94', NULL, 'AE', NULL, 'Sweihan', 'majaz', '058750613', '2022-10-05 16:16:17', '2022-10-05 16:16:17'),
(57, '96', NULL, 'DZ', NULL, 'Adim Fatiha', 'ssjsjjs', '0200000200', '2022-10-06 17:48:11', '2022-10-06 17:48:11'),
(58, '86', NULL, 'AR', NULL, 'Abra De Hinojo', 'oamgsh', '1048488', '2022-10-06 19:21:57', '2022-10-06 19:21:57'),
(59, '101', '00000', 'AE', NULL, 'Dubai', 'dubai', '0508750613', '2022-10-10 15:23:47', '2022-10-10 15:23:47'),
(60, '110', NULL, 'EG', NULL, '15 Of May City', '........', '0100008586', '2022-10-17 18:51:47', '2022-10-17 18:51:47'),
(61, '54', NULL, 'AE', NULL, 'Abu Dhabi', 'العزرة', '0555999560', '2022-10-17 21:27:04', '2022-10-17 21:27:04'),
(62, '12', '83833', 'AE', NULL, 'Al Azrah', 'شارع ٧٣ منزل ٧', '0555999560', '2022-10-21 17:29:30', '2022-10-21 17:29:30'),
(63, '122', '321', 'RS', NULL, 'Ajnovce', ';;;ll', '01000000000', '2022-10-25 20:54:44', '2022-10-25 20:54:44'),
(87, '120', '00000', 'AE', NULL, 'Sharjah', 'AlMajaz 1', '0508750613', '2022-11-08 16:51:55', '2022-11-08 16:51:55'),
(65, '23', '31235', 'EG', NULL, 'Abasya', 'jgfguyh', '01000000258', '2022-10-31 17:28:40', '2022-10-31 17:28:40'),
(66, '23', '00000', 'AE', NULL, 'Al Ain City', 'Mahmoud Naseem St.', '01002050899', '2022-10-31 17:30:28', '2022-10-31 17:30:28'),
(88, '189', '12345', 'AE', NULL, 'Abu Dhabi', 'شارع', '96662210000', '2022-11-08 16:53:52', '2022-11-08 16:53:52'),
(71, '151', '123', 'EG', NULL, '10Th Of Ramadan City', 'المنصورة', '0102000000', '2022-11-06 13:36:53', '2022-11-06 13:36:53'),
(69, '18', '35111', 'EG', NULL, 'Aamr Village', 'ggggggggg', '01000000002', '2022-11-03 17:23:39', '2022-11-03 17:23:39'),
(70, '18', '35111', 'AE', NULL, 'Ajman City', 'Mahmoud Naseem St.', '02000032548', '2022-11-03 17:24:16', '2022-11-03 17:24:16'),
(72, '151', '123456', 'AE', NULL, 'Abu Dhabi', 'ابو ظبى', '0100000200100', '2022-11-06 18:24:20', '2022-11-06 18:24:20'),
(73, '151', '123', 'EG', NULL, 'Ras Elbar', 'المنصورة', '010212345679', '2022-11-06 18:48:07', '2022-11-06 18:48:07'),
(74, '181', '35111', 'EG', NULL, 'Aamr Village', 'Mahmoud Naseem St.', '01000022222', '2022-11-07 11:37:29', '2022-11-07 11:37:29'),
(75, '181', '35111', 'EG', NULL, 'Abu Radis', 'Mahmoud Naseem St.', '022654', '2022-11-07 11:38:00', '2022-11-07 11:38:00'),
(76, '181', '321', 'CR', NULL, 'Achiote', 'dfghg', '321654', '2022-11-07 11:53:12', '2022-11-07 11:53:12'),
(77, '8', '35111', '63', '2', '1', 'تفاصيل العنوان', '01008080888', '2022-11-07 11:53:45', '2022-11-07 11:53:45'),
(78, '181', '35111', 'AE', NULL, 'Al Duss', 'dfgfdhf', '012236584469', '2022-11-07 17:48:12', '2022-11-07 17:48:12'),
(79, '181', '32154', 'DM', NULL, 'Vieille Case', 'dfddsgdy', '0258745698', '2022-11-07 17:48:47', '2022-11-07 17:48:47'),
(80, '185', '1234', 'EG', NULL, 'Abu Hammad', 'شارع الحلاء', '01022330000', '2022-11-07 19:38:53', '2022-11-07 19:38:53'),
(81, '185', '1234', 'EG', NULL, 'Abu Hammad', 'شارع الحلاء', '01022330000', '2022-11-07 19:38:54', '2022-11-07 19:38:54'),
(82, '185', '12345', 'AE', NULL, 'Abu Dhabi', 'شارع الجلاء', '96601334664', '2022-11-07 20:01:52', '2022-11-07 20:01:52'),
(83, '185', '56947', 'SA', NULL, 'Ahad Rufaidah', 'شارع الجلاء', '98712300', '2022-11-07 20:14:19', '2022-11-07 20:14:19'),
(86, '189', '12345', 'EG', NULL, '10Th Of Ramadan City', 'شارع الجلاء', '010236458', '2022-11-08 16:50:52', '2022-11-08 16:50:52'),
(89, '189', '123456', 'SA', NULL, 'Afif', 'سارع', '012234568', '2022-11-08 16:55:59', '2022-11-08 16:55:59'),
(90, '100', '3545', 'AE', NULL, 'Ajman City', 'hgohk', '43545345', '2022-11-08 16:58:43', '2022-11-08 16:58:43'),
(91, '120', '00000', 'EG', NULL, '10Th Of Ramadan City', 'sharjah', '0508750613', '2022-11-08 18:16:07', '2022-11-08 18:16:07'),
(92, '120', '00000', 'EG', NULL, 'Beba', 'sharjah', '0508750613', '2022-11-08 18:16:59', '2022-11-08 18:16:59'),
(94, '189', '321654', 'CI', NULL, 'Boundiali', 'kjhk', '02336575487', '2022-11-08 20:27:40', '2022-11-08 20:27:40'),
(102, '189', '123', 'DM', NULL, 'Wesley', 'nm,', '123456', '2022-11-10 17:35:16', '2022-11-10 17:35:16'),
(103, '194', '00000', 'AE', NULL, 'Sharjah', 'الشارقة', '0508750613', '2022-11-10 18:03:48', '2022-11-10 18:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `we_cares`
--

CREATE TABLE `we_cares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `we_cares`
--

INSERT INTO `we_cares` (`id`, `title_ar`, `title_en`, `description_ar`, `description_en`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'title  ar 1', 'title en 2', '<p>desc ar 1&nbsp;</p>', '<p>desc 1 en</p>', 'A15E9cEQxlGdC2r65MSQAaRECIKBQ15xZyHlcjSH.png', 1, '2023-01-01 14:07:06', '2023-01-01 14:29:32'),
(2, 'Velit tenetur non s', 'Elit cillum consect', '<p>Ducimus, et non eum .</p>', '<p>Praesentium autem qu.</p>', 'uhvNtXfwbrP14IeMPNW1nXzwcrSCXr4AMGl1aFJ3.png', 1, '2023-01-01 14:07:43', '2023-01-01 14:35:44'),
(3, 'title  ar 3', 'title en 3', '<p>desc ar 3</p>', '<p>desc en 3</p>', 'MfKuzwWBtasN86u58Igz3KGhfwB87f0aC832hSkb.png', 1, '2023-01-01 14:08:28', '2023-01-01 14:08:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `our_teams`
--
ALTER TABLE `our_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `we_cares`
--
ALTER TABLE `we_cares`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `our_teams`
--
ALTER TABLE `our_teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `we_cares`
--
ALTER TABLE `we_cares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
