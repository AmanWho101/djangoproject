-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 30, 2023 at 02:09 PM
-- Server version: 8.0.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anticorruption`
--

-- --------------------------------------------------------

--
-- Table structure for table `anonuser`
--

DROP TABLE IF EXISTS `anonuser`;
CREATE TABLE IF NOT EXISTS `anonuser` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `complaint_key` int NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anonuser`
--

INSERT INTO `anonuser` (`aid`, `complaint_key`) VALUES
(1, 398019),
(2, 288171),
(3, 450615),
(4, 461961),
(5, 972465),
(6, 204207),
(7, 701385),
(8, 773895),
(9, 734145),
(10, 738273),
(11, 341739),
(12, 779217),
(13, 733665),
(14, 513609),
(15, 732771),
(16, 220809),
(17, 307965),
(18, 762021),
(19, 129003),
(20, 138345),
(21, 567663),
(22, 473619),
(23, 361923),
(24, 925005),
(25, 447327),
(26, 160653),
(27, 426801),
(28, 859647),
(29, 726027),
(30, 991989),
(31, 787329),
(32, 571695),
(33, 426801),
(34, 491625),
(35, 425409),
(36, 482997),
(37, 704019),
(38, 213945),
(39, 527373),
(40, 560709),
(41, 414591),
(42, 245553),
(43, 198825),
(44, 181689),
(45, 730497),
(46, 410979),
(47, 842313),
(48, 218883),
(49, 587667),
(50, 343149),
(51, 850455),
(52, 906831),
(53, 501597),
(54, 281367),
(55, 124911),
(56, 972789),
(57, 505461),
(58, 306693),
(59, 336903),
(60, 527691),
(61, 531999),
(62, 429723),
(63, 853317),
(64, 639183),
(65, 530361),
(66, 941367),
(67, 915405),
(68, 173091),
(69, 261753),
(70, 972531),
(71, 146037),
(72, 572271),
(73, 356799),
(74, 693315),
(75, 945399),
(76, 773733),
(77, 548439),
(78, 859803),
(79, 186663),
(80, 864327),
(81, 152961),
(82, 629385),
(83, 779931),
(84, 129843),
(85, 765801),
(86, 907947),
(87, 192357),
(88, 437919),
(89, 231351),
(90, 662829),
(91, 699447),
(92, 357525),
(93, 987771);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add employee', 7, 'add_employee'),
(26, 'Can change employee', 7, 'change_employee'),
(27, 'Can delete employee', 7, 'delete_employee'),
(28, 'Can view employee', 7, 'view_employee'),
(29, 'Can add message user', 8, 'add_messageuser'),
(30, 'Can change message user', 8, 'change_messageuser'),
(31, 'Can delete message user', 8, 'delete_messageuser'),
(32, 'Can view message user', 8, 'view_messageuser'),
(33, 'Can add random user', 9, 'add_randomuser'),
(34, 'Can change random user', 9, 'change_randomuser'),
(35, 'Can delete random user', 9, 'delete_randomuser'),
(36, 'Can view random user', 9, 'view_randomuser'),
(37, 'Can add result', 10, 'add_result'),
(38, 'Can change result', 10, 'change_result'),
(39, 'Can delete result', 10, 'delete_result'),
(40, 'Can view result', 10, 'view_result');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'anticoru', 'employee'),
(8, 'anticoru', 'messageuser'),
(9, 'anticoru', 'randomuser'),
(10, 'anticoru', 'result');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-03 08:31:56.397111'),
(2, 'auth', '0001_initial', '2023-05-03 08:31:56.929111'),
(3, 'admin', '0001_initial', '2023-05-03 08:31:57.124110'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-03 08:31:57.136111'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-03 08:31:57.152111'),
(6, 'anticoru', '0001_initial', '2023-05-03 08:31:57.578110'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-05-03 08:31:57.670113'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-05-03 08:31:57.721116'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-05-03 08:31:57.784112'),
(10, 'auth', '0004_alter_user_username_opts', '2023-05-03 08:31:57.800145'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-05-03 08:31:57.856114'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-05-03 08:31:57.859123'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-05-03 08:31:57.875112'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-05-03 08:31:57.929114'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-05-03 08:31:57.983113'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-05-03 08:31:58.033113'),
(17, 'auth', '0011_update_proxy_permissions', '2023-05-03 08:31:58.053112'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-05-03 08:31:58.110112'),
(19, 'sessions', '0001_initial', '2023-05-03 08:31:58.171113'),
(20, 'anticoru', '0002_remove_messageuser_eid', '2023-05-03 08:35:02.120561');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `eid` int NOT NULL AUTO_INCREMENT,
  `ew_unit` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `efname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `elname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `eemail` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `eusername` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `epassword` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `mid` int NOT NULL AUTO_INCREMENT,
  `m_ctype` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_sntitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_sname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_snadress` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_snage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_ccorg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_cplace` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_ctime` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_bperson` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_nbperson` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_damege_em` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_sbmoney` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_psigned` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_loan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_tax` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_audio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `m_timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `aid_id` int NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `message_aid_id_4a7299b2` (`aid_id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`mid`, `m_ctype`, `m_sntitle`, `m_sname`, `m_snadress`, `m_snage`, `m_ccorg`, `m_cplace`, `m_ctime`, `m_bperson`, `m_nbperson`, `m_damege_em`, `m_sbmoney`, `m_psigned`, `m_loan`, `m_tax`, `m_file`, `m_audio`, `m_video`, `m_image`, `m_timestamp`, `aid_id`) VALUES
(1, 'hdhdksj', 'jhdjhskdzj', 'hdkjhzkdj', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-03 06:06:16.645747', 4),
(2, 'dsfsdv', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-03 06:07:00.204634', 5),
(3, 'dsfsdv', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-03 06:08:30.158741', 6),
(4, 'dsfsdv', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-03 06:09:02.994882', 7),
(5, 'dsfsdv', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-03 06:09:57.617965', 8),
(6, 'gfhfh', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-03 06:13:12.555305', 9),
(7, 'hjjhj', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-03 10:37:45.167036', 10),
(8, '', '', '', '', '', '', '', '', 'k', '', '', '', '', '', '', '', '', '', '', '2023-05-03 10:40:10.212363', 11),
(9, 'saf', 'hbhj', 'hk', 'h', '', 'j', 'j', '', 'hbj', 'j', 'njk', 'nlk', 'npo', 'poj', 'tyu', '', '', '', '', '2023-05-03 10:41:56.226605', 12),
(10, 'lkc', 'km', 'klm', 'ok;lm', '7', 'ijk', 'pjkm', 'lbh', 'khjn', 'jln', 'uftgjv', '[p\'l', 'erdf', '[p\'', 'tdfc', '', '', '', '', '2023-05-03 10:42:40.535114', 13),
(11, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:44:56.239656', 14),
(12, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:45:14.086904', 15),
(13, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:45:34.088080', 16),
(14, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:46:16.548756', 17),
(15, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:46:33.078200', 18),
(16, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:46:47.903738', 19),
(17, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:47:11.829847', 20),
(18, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:47:31.769186', 21),
(19, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:47:55.880062', 22),
(20, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:48:07.265200', 23),
(21, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:48:29.802133', 24),
(22, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:48:43.943372', 25),
(23, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:50:55.549009', 26),
(24, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:51:18.734425', 27),
(25, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:51:46.918951', 28),
(26, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:52:07.513271', 29),
(27, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:52:57.432736', 30),
(28, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:53:19.401363', 31),
(29, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:54:01.669783', 32),
(30, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:54:32.989963', 34),
(31, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:58:19.985875', 35),
(32, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:59:12.578699', 36),
(33, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 10:59:50.843381', 37),
(34, 'sdfc', 'jnk', 'hjn', 'j', '8', 'n', 'lnm', 'km', 'jknm', 'jklnm', 'tfgv', 'okl', 'tdgc', '[kol\'', 'tfg', '', '', '', '', '2023-05-03 11:00:22.930791', 38),
(35, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-04 04:37:13.586034', 39),
(36, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-04 04:38:09.284940', 40),
(37, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-04 04:38:56.609910', 41),
(38, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-04 04:42:27.449408', 42),
(39, 'dsf', '', 'sd', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 03:46:48.475735', 43),
(40, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 03:51:30.893559', 44),
(41, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 03:52:22.478891', 45),
(42, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 03:52:43.123539', 46),
(43, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 03:53:11.124914', 47),
(44, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 03:57:28.733447', 48),
(45, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 03:58:20.592459', 49),
(46, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:06:10.733375', 50),
(47, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:07:03.378884', 51),
(48, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:07:43.374781', 52),
(49, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:09:55.055225', 53),
(50, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:10:22.458552', 54),
(51, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:24:37.174075', 55),
(52, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:25:54.071740', 56),
(53, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:27:04.614837', 57),
(54, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:27:32.062687', 58),
(55, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:30:23.457302', 59),
(56, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:30:51.703929', 60),
(57, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:31:22.978271', 61),
(58, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:31:39.385954', 62),
(59, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:32:35.919042', 63),
(60, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:36:40.627757', 64),
(61, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:37:26.225988', 65),
(62, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:38:35.507143', 66),
(63, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:39:00.540568', 67),
(64, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:39:59.039348', 68),
(65, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:40:26.404358', 69),
(66, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:46:24.374939', 70),
(67, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:49:05.450591', 71),
(68, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:51:14.753285', 72),
(69, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:51:30.542875', 73),
(70, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:52:11.996110', 74),
(71, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 04:52:32.653310', 75),
(72, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 05:16:45.351491', 76),
(73, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-05 05:31:48.312927', 77),
(74, 'dsf', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-27 05:29:37.032292', 78),
(75, 'bereket', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-29 04:45:43.744559', 81),
(76, 'bek', 'ksmd', 'jknda', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-29 04:48:00.885336', 82),
(77, 've', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-29 04:50:48.599296', 83),
(78, 'sfa', '', 's', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-29 04:51:10.168621', 84),
(79, 'ba', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-29 04:59:29.265337', 85),
(80, 'sd', '', '', '', '', '', 'sc', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-29 05:01:47.677214', 86),
(81, 'sad', 'sd', 'zsc', 'dc', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-29 05:02:25.249862', 87),
(82, 'bereket', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-29 05:03:50.479268', 88),
(83, 'bre', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-29 05:04:35.151980', 89),
(84, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-29 05:11:43.396311', 90),
(85, 'bere', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2023-05-29 05:25:49.079903', 91),
(86, 'jsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkj', 'jsvsdvnSJNVkjdvnkjdvnkj', 'jsvsdvnSJNVkjdvnkjdvnkj', 'jsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkj', '4353', 'jsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkj', 'jsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkj', 'jsvsdvnSJNVkjdvnkjdvnkjjsvsdvnSJNVkjdvnkjdvnkj', 'jsvsdvnSJNVkjdvnkjdvnkj', 'jsvsdvnSJNVkjdvnkjdvnkj', 'jsvsdvnSJNVkjdvnkjdvnkj', 'jsvsdvnSJNVkjdvnkjdvnkj', 'jsvsdvnSJNVkjdvnkjdvnkj', 'jsvsdvnSJNVkjdvnkjdvnkj', 'jsvsdvnSJNVkjdvnkjdvnkj', '', '', '', '', '2023-05-29 06:04:50.697702', 93);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `rApproveorReject` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `rReason` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `rfeedback` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `rcomment` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `rstatus_bar` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `aid_id` int NOT NULL,
  `eid_id` int NOT NULL,
  `mid_id` int NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `result_aid_id_f402b30c` (`aid_id`),
  KEY `result_eid_id_ccbb72c6` (`eid_id`),
  KEY `result_mid_id_5efba585` (`mid_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
