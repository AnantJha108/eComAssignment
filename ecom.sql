-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2023 at 02:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add cart', 9, 'add_cart'),
(34, 'Can change cart', 9, 'change_cart'),
(35, 'Can delete cart', 9, 'delete_cart'),
(36, 'Can view cart', 9, 'view_cart');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$jXT4kISZxZbh4J4Zv6T7HE$EhaAaDwUKzR3I6hHcVXhKPfZ/9KhlI0+D8KkBdU6mOg=', '2023-10-19 10:51:18.033154', 1, 'Admin', '', '', 'Admin@gmail.com', 1, 1, '2023-10-19 10:50:59.706350'),
(2, 'pbkdf2_sha256$390000$d5zCyTTEuVILgz5I5f8Omn$Bj0vbSTj/BBKmhUSSVkm6Ho4RtGniVDodS0H79LQ7qw=', '2023-10-19 12:02:02.709220', 0, 'Anant', '', '', 'anantjhapurnea@gmail.com', 0, 1, '2023-10-19 12:01:48.226145');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-10-19 10:53:17.918196', '1', 'Men\'s', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-10-19 10:54:04.684872', '2', 'Women\'s', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-10-19 10:54:33.259568', '3', 'Kid\'s', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-10-19 10:55:04.852462', '4', 'Footwear', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-10-19 10:55:45.310772', '5', 'Electronics', 1, '[{\"added\": {}}]', 7, 1),
(6, '2023-10-19 10:56:10.782599', '6', 'Bags &  Luggage', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-10-19 10:56:42.345791', '7', 'Beauty', 1, '[{\"added\": {}}]', 7, 1),
(8, '2023-10-19 10:57:12.727544', '8', 'Glocery', 1, '[{\"added\": {}}]', 7, 1),
(9, '2023-10-19 11:22:23.350688', '1', 'Men Solid Jacket', 1, '[{\"added\": {}}]', 8, 1),
(10, '2023-10-19 11:24:37.965570', '1', 'Men Solid Jacket', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(11, '2023-10-19 11:26:40.775288', '2', 'Women Embroidered Viscose Rayon Straight Kurta  (P...', 1, '[{\"added\": {}}]', 8, 1),
(12, '2023-10-19 11:28:36.422430', '3', 'Boys Full Sleeve Printed Hooded Sweatshirt', 1, '[{\"added\": {}}]', 8, 1),
(13, '2023-10-19 11:29:37.315404', '4', 'Women Polka Print Viscose Rayon Flared Kurta (Blac...', 1, '[{\"added\": {}}]', 8, 1),
(14, '2023-10-19 11:31:05.311419', '5', 'Men Color Block Polo Neck Cotton Blend Blue T-Shir...', 1, '[{\"added\": {}}]', 8, 1),
(15, '2023-10-19 11:32:06.531114', '6', 'Men Printed Round Neck Cotton Blend Dark Green T-S..', 1, '[{\"added\": {}}]', 8, 1),
(16, '2023-10-19 11:33:09.823694', '7', 'Stylish Comfortable Lightweight, Breathable Black .', 1, '[{\"added\": {}}]', 8, 1),
(17, '2023-10-19 11:42:59.541505', '7', 'Stylish Comfortable Lightweight, Breathable Black .', 2, '[{\"changed\": {\"fields\": [\"Category\", \"Product image\"]}}]', 8, 1),
(18, '2023-10-19 11:44:07.621730', '4', 'Women Polka Print Viscose Rayon Flared Kurta (Blac...', 2, '[{\"changed\": {\"fields\": [\"Product image\"]}}]', 8, 1),
(19, '2023-10-19 11:49:31.905708', '8', 'Men Regular Fit Printed Spread Collar Casual Shirt', 1, '[{\"added\": {}}]', 8, 1),
(20, '2023-10-19 11:50:58.268476', '9', 'Women Printed Crepe Straight Kurta  (Pink)', 1, '[{\"added\": {}}]', 8, 1),
(21, '2023-10-19 11:51:52.152624', '10', 'Mi A2 (Black, 64 GB)  (4 GB RAM)', 1, '[{\"added\": {}}]', 8, 1),
(22, '2023-10-19 11:52:59.788531', '11', 'Self Design Banarasi Organza Saree  (Multicolor)', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'store', 'cart'),
(7, 'store', 'category'),
(8, 'store', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-10-19 10:39:32.810246'),
(2, 'auth', '0001_initial', '2023-10-19 10:39:33.293095'),
(3, 'admin', '0001_initial', '2023-10-19 10:39:33.406877'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-10-19 10:39:33.418383'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-10-19 10:39:33.428205'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-10-19 10:39:33.497567'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-10-19 10:39:33.549143'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-10-19 10:39:33.574141'),
(9, 'auth', '0004_alter_user_username_opts', '2023-10-19 10:39:33.586141'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-10-19 10:39:33.629253'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-10-19 10:39:33.633257'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-10-19 10:39:33.644260'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-10-19 10:39:33.667255'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-10-19 10:39:33.689138'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-10-19 10:39:33.711794'),
(16, 'auth', '0011_update_proxy_permissions', '2023-10-19 10:39:33.722795'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-10-19 10:39:33.745878'),
(18, 'sessions', '0001_initial', '2023-10-19 10:39:33.782529'),
(19, 'store', '0001_initial', '2023-10-19 10:39:33.954630');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_cart`
--

CREATE TABLE `store_cart` (
  `id` bigint(20) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_cart`
--

INSERT INTO `store_cart` (`id`, `product_qty`, `created_at`, `product_id`, `user_id`) VALUES
(1, 1, '2023-10-19 11:34:37.787121', 2, 1),
(2, 1, '2023-10-19 11:53:17.576225', 3, 1),
(3, 1, '2023-10-19 11:53:23.172837', 4, 1),
(4, 1, '2023-10-19 12:02:22.626573', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `store_category`
--

CREATE TABLE `store_category` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_category`
--

INSERT INTO `store_category` (`id`, `slug`, `name`, `image`, `description`, `status`, `trending`, `created_at`) VALUES
(1, 'Men\'s', 'Men\'s', 'uploads/2023101916231720230604122941m1.jpg', 'Men\'s', 0, 0, '2023-10-19 10:53:17.916194'),
(2, 'Women\'s', 'Women\'s', 'uploads/2023101916240420230604124538w1.jpg', 'Women\'s', 0, 0, '2023-10-19 10:54:04.682871'),
(3, 'Kid\'s', 'Kid\'s', 'uploads/2023101916243320230604132133k2.jpg', 'Kid\'s', 0, 0, '2023-10-19 10:54:33.258566'),
(4, 'Footwear', 'Footwear', 'uploads/202310191625042023060712364820230604133411f.jpg', 'Footwear', 0, 0, '2023-10-19 10:55:04.850458'),
(5, 'Electronics', 'Electronics', 'uploads/2023101916254520230604133428w1.jpg', 'Electronics', 0, 0, '2023-10-19 10:55:45.309772'),
(6, 'Bags &  Luggage', 'Bags &  Luggage', 'uploads/202310191626102023060712400520230604140915b.jpg', 'Bags &  Luggage', 0, 0, '2023-10-19 10:56:10.781598'),
(7, 'Beauty', 'Beauty', 'uploads/2023101916264220230604144954b2.jpg', 'Beauty', 0, 0, '2023-10-19 10:56:42.344786'),
(8, 'Glocery', 'Glocery', 'uploads/2023101916271220230604142105g1.jpg', 'Glocery', 0, 0, '2023-10-19 10:57:12.725544');

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `small_description` longtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `original_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trending` tinyint(1) NOT NULL,
  `tag` varchar(150) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `slug`, `name`, `product_image`, `small_description`, `quantity`, `description`, `original_price`, `selling_price`, `status`, `trending`, `tag`, `created_at`, `category_id`) VALUES
(1, 'Men Solid Jacket', 'Men Solid Jacket', 'uploads/202310191654372023060712452120230604145535jacket.jpg', 'Men Solid Jacket', 78, 'Men Solid Jacket', 799, 499, 0, 0, 'New', '2023-10-19 11:22:23.348810', 1),
(2, 'Women Embroidered Viscose Rayon Straight Kurta  (P...', 'Women Embroidered Viscose Rayon Straight Kurta  (P...', 'uploads/2023101916564020230607125004kurti2.webp', 'Women Embroidered Viscose Rayon Straight Kurta  (P...', 233, 'Women Embroidered Viscose Rayon Straight Kurta  (P...', 1399, 899, 0, 0, 'New', '2023-10-19 11:26:40.773272', 2),
(3, 'Boys Full Sleeve Printed Hooded Sweatshirt', 'Boys Full Sleeve Printed Hooded Sweatshirt', 'uploads/2023101916583620230607125440kid4.jpeg', 'Boys Full Sleeve Printed Hooded Sweatshirt', 345, 'Boys Full Sleeve Printed Hooded Sweatshirt', 749, 449, 0, 0, 'New', '2023-10-19 11:28:36.420430', 3),
(4, 'Women Polka Print Viscose Rayon Flared Kurta (Blac...', 'Women Polka Print Viscose Rayon Flared Kurta (Blac...', 'uploads/2023101917140720230610100647k3.webp', 'Women Polka Print Viscose Rayon Flared Kurta (Blac...', 657, 'Women Polka Print Viscose Rayon Flared Kurta (Blac...', 1299, 999, 0, 0, 'New', '2023-10-19 11:29:37.313404', 2),
(5, 'Men Color Block Polo Neck Cotton Blend Blue T-Shir...', 'Men Color Block Polo Neck Cotton Blend Blue T-Shir...', 'uploads/2023101917010520230608121729t-shirt3.png', 'Men Color Block Polo Neck Cotton Blend Blue T-Shir...', 877, 'Men Color Block Polo Neck Cotton Blend Blue T-Shir...', 699, 399, 0, 0, 'New', '2023-10-19 11:31:05.309415', 1),
(6, 'Men Printed Round Neck Cotton Blend Dark Green T-S..', 'Men Printed Round Neck Cotton Blend Dark Green T-S..', 'uploads/2023101917020620230608122015t-shirt4.jpeg', 'Men Printed Round Neck Cotton Blend Dark Green T-S..', 45, 'Men Printed Round Neck Cotton Blend Dark Green T-S..', 699, 499, 0, 0, 'New', '2023-10-19 11:32:06.529114', 1),
(7, 'Stylish Comfortable Lightweight, Breathable Black .', 'Stylish Comfortable Lightweight, Breathable Black .', 'uploads/2023101917125920230610094449shoe2.jpg', 'Stylish Comfortable Lightweight, Breathable Black .', 678, 'Stylish Comfortable Lightweight, Breathable Black .', 1499, 1299, 0, 0, 'New', '2023-10-19 11:33:09.821694', 4),
(8, 'Men Regular Fit Printed Spread Collar Casual Shirt', 'Men Regular Fit Printed Spread Collar Casual Shirt', 'uploads/2023101917193120230610095654shirt.jpeg', 'Men Regular Fit Printed Spread Collar Casual Shirt', 345, 'Men Regular Fit Printed Spread Collar Casual Shirt', 599, 399, 0, 0, 'New', '2023-10-19 11:49:31.902709', 1),
(9, 'Women Printed Crepe Straight Kurta  (Pink)', 'Women Printed Crepe Straight Kurta  (Pink)', 'uploads/2023101917205820230608121439kurti3.webp', 'Women Printed Crepe Straight Kurta  (Pink)', 87, 'Women Printed Crepe Straight Kurta  (Pink)', 789, 465, 0, 0, 'New', '2023-10-19 11:50:58.267476', 2),
(10, 'Mi A2 (Black, 64 GB)  (4 GB RAM)', 'Mi A2 (Black, 64 GB)  (4 GB RAM)', 'uploads/2023101917215220230610102421mi-a2.png', 'Mi A2 (Black, 64 GB)  (4 GB RAM)', 56, 'Mi A2 (Black, 64 GB)  (4 GB RAM)', 9999, 7999, 0, 0, 'New', '2023-10-19 11:51:52.151622', 5),
(11, 'Self Design Banarasi Organza Saree  (Multicolor)', 'Self Design Banarasi Organza Saree  (Multicolor)', 'uploads/2023101917225920230610101739saree2.jpeg', 'Self Design Banarasi Organza Saree  (Multicolor)', 78, 'Self Design Banarasi Organza Saree  (Multicolor)', 2299, 1999, 0, 0, 'New', '2023-10-19 11:52:59.787531', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_cart_product_id_b219c080_fk_store_product_id` (`product_id`),
  ADD KEY `store_cart_user_id_99e99107_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `store_cart`
--
ALTER TABLE `store_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_category`
--
ALTER TABLE `store_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_cart`
--
ALTER TABLE `store_cart`
  ADD CONSTRAINT `store_cart_product_id_b219c080_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_cart_user_id_99e99107_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
