-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2023 at 06:40 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `locallity`
--

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `discount_code` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_validity` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`discount_code`, `description`, `date_validity`, `created_at`) VALUES
('LOCALITY1', '10% discount', '0000-00-00', '2023-06-02 14:22:55'),
('LOCALITY3', '10% discount', '0000-00-00', '2023-06-02 14:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `id_business` varchar(10) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `id_business`, `image_url`) VALUES
(38, '4a29b557-c', 'https://locallity.s3.us-west-1.amazonaws.com/1686240754744.jpg'),
(39, '4a29b557-c', 'https://locallity.s3.us-west-1.amazonaws.com/1686240754709.jpg'),
(40, '4a29b557-c', 'https://locallity.s3.us-west-1.amazonaws.com/1686240754740.jpg'),
(41, '4a29b557-c', 'https://locallity.s3.us-west-1.amazonaws.com/1686240754736.jpg'),
(42, '01fa7bfb-9', 'https://locallity.s3.us-west-1.amazonaws.com/1686240911727.jpg'),
(43, '01fa7bfb-9', 'https://locallity.s3.us-west-1.amazonaws.com/1686240911767.jpg'),
(44, '01fa7bfb-9', 'https://locallity.s3.us-west-1.amazonaws.com/1686240911772.jpg'),
(45, '01fa7bfb-9', 'https://locallity.s3.us-west-1.amazonaws.com/1686240911760.jpg'),
(46, '5d13225c-a', 'https://locallity.s3.us-west-1.amazonaws.com/1686243380050.jpg'),
(47, '5d13225c-a', 'https://locallity.s3.us-west-1.amazonaws.com/1686243380021.jpg'),
(48, '5d13225c-a', 'https://locallity.s3.us-west-1.amazonaws.com/1686243380047.jpg'),
(49, '5d13225c-a', 'https://locallity.s3.us-west-1.amazonaws.com/1686243380044.jpg'),
(50, '03422eec-e', 'https://locallity.s3.us-west-1.amazonaws.com/1686243433644.jpg'),
(51, '03422eec-e', 'https://locallity.s3.us-west-1.amazonaws.com/1686243433637.jpg'),
(52, '03422eec-e', 'https://locallity.s3.us-west-1.amazonaws.com/1686243433639.jpg'),
(53, '03422eec-e', 'https://locallity.s3.us-west-1.amazonaws.com/1686243433642.jpg'),
(54, '3ee633d9-f', 'https://locallity.s3.us-west-1.amazonaws.com/1686314439677.jpg'),
(55, '3ee633d9-f', 'https://locallity.s3.us-west-1.amazonaws.com/1686314439582.jpg'),
(56, '3ee633d9-f', 'https://locallity.s3.us-west-1.amazonaws.com/1686314439670.jpg'),
(57, 'cefe1ea8-1', 'https://locallity.s3.us-west-1.amazonaws.com/1686314514657.jpg'),
(58, 'cefe1ea8-1', 'https://locallity.s3.us-west-1.amazonaws.com/1686314514633.jpg'),
(59, 'cefe1ea8-1', 'https://locallity.s3.us-west-1.amazonaws.com/1686314514654.jpg'),
(64, '03f20d01-b', 'https://locallity.s3.us-west-1.amazonaws.com/1693670788087.jpg'),
(65, '03f20d01-b', 'https://locallity.s3.us-west-1.amazonaws.com/1693670788023.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(11) NOT NULL,
  `id_business` varchar(10) DEFAULT NULL,
  `logo_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `id_business`, `logo_url`) VALUES
(11, '01fa7bfb-9', 'https://locallity-logos.s3.us-west-1.amazonaws.com/1686240911775.png'),
(12, '5d13225c-a', 'https://locallity-logos.s3.us-west-1.amazonaws.com/1686243380053.png'),
(13, '03422eec-e', 'https://locallity-logos.s3.us-west-1.amazonaws.com/1686243433649.png'),
(14, 'cefe1ea8-1', 'https://locallity-logos.s3.us-west-1.amazonaws.com/1686314514659.png'),
(17, '03f20d01-b', 'https://locallity-logos.s3.us-west-1.amazonaws.com/1693670788090.png');

-- --------------------------------------------------------

--
-- Table structure for table `negocio`
--

CREATE TABLE `negocio` (
  `id_business` varchar(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `manager` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `delivery` tinyint(1) DEFAULT NULL,
  `national_shipment` tinyint(1) DEFAULT NULL,
  `local_shipment` tinyint(10) DEFAULT NULL,
  `bill` tinyint(1) DEFAULT NULL,
  `antiquity` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `physical_store` tinyint(1) DEFAULT NULL,
  `online_store` tinyint(1) DEFAULT NULL,
  `url_google` varchar(250) DEFAULT NULL,
  `business_age` varchar(50) DEFAULT NULL,
  `municipality` varchar(50) DEFAULT NULL,
  `cell_phone_number` varchar(20) DEFAULT NULL,
  `business_days` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `subcategory` varchar(100) DEFAULT NULL,
  `discount_code` varchar(20) DEFAULT NULL,
  `accepts_credit_cards` tinyint(1) DEFAULT NULL,
  `is_owner_verified` tinyint(1) DEFAULT NULL,
  `social_networks` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `start_date` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `whatsapp_no` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `negocio`
--

INSERT INTO `negocio` (`id_business`, `name`, `price`, `manager`, `description`, `city`, `state`, `country`, `postal_code`, `delivery`, `national_shipment`, `local_shipment`, `bill`, `antiquity`, `email`, `physical_store`, `online_store`, `url_google`, `business_age`, `municipality`, `cell_phone_number`, `business_days`, `category`, `subcategory`, `discount_code`, `accepts_credit_cards`, `is_owner_verified`, `social_networks`, `status`, `start_date`, `end_date`, `whatsapp_no`, `created_at`) VALUES
('01fa7bfb-9', 'Update data', '12000.00', 'Update item', '', '', '', '', '', 0, 0, NULL, 0, 0, '', 0, 0, '', '10', 'municipality', '', '', '', '', '', 0, 0, '', '', '2023-05-26', '2023-06-30', '', '2023-09-02 15:49:14'),
('03422eec-e', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, NULL, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', '', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '2023-05-26', '2023-06-30', '', '2023-09-02 15:49:14'),
('03e186f4-d', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, NULL, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '1-5', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', 'DESC10', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '2023-05-26', '2023-06-30', '', '2023-09-02 15:49:14'),
('03f20d01-b', 'Pakal', '10000.00', 'Emmanuel', 'Somos tu mejor opción de experiencia digital con Soluciones Tecnológicas Globales Pakal.', 'Monterrey', 'Nuevo León', 'Mexico', '01470', 1, 1, 1, 1, 5, 'emmanuel@gmail.com', 1, 1, 'https://goo.gl/maps/ucd1NUFHpBJBfzbL6', '0-1', 'demo', '555-123-4567', '0-1,Miércoles,Jueves,Viernes', 'Infantil/Bebés', 'Accesorios', 'LOCALLITY10', 1, 1, 'www.Instagram.com/rafi,www.facebook.com/rafi,www.website.com/rafi,https://www.instagram.com/technologies_solutions_pakal/,https://solutions-pakal.web.app/', 'Activo', '09:00 AM', '06:00 PM', '+525569711608', '2023-09-02 16:06:28'),
('20839b04-f', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, NULL, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', '', '', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '2023-05-26', '2023-06-30', '', '2023-09-02 15:49:14'),
('2211c230-c', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '1-10', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'sub category', 'locality', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio,https://facebook.com/minegocio,https://facebook.com/minegocio', 'Activo', '2023-05-26', '2023-06-30', '', '2023-09-02 15:49:14'),
('3ee633d9-f', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, NULL, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', '', '', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '2023-05-26', '2023-06-30', '', '2023-09-02 15:49:14'),
('3ffd5b3e-5', 'New Change', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', '', '', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '2023-05-26', '2023-06-30', '', '2023-09-02 15:49:14'),
('4a29b557-c', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, NULL, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '1-5', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', 'DESC10', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '2023-05-26', '2023-06-30', '', '2023-09-02 15:49:14'),
('5d13225c-a', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, NULL, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', 'undefined', 'undefined', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'undefined', 'undefined', 0, 0, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '2023-05-26', '2023-06-30', '', '2023-09-02 15:49:14'),
('765cce59-3', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '1-10', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'sub category', 'locality', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegoci,https://facebook.com/minegdf', 'Activo', '2023-05-26', '2023-06-30', '1251231354531', '2023-09-02 15:49:14'),
('78ebd226-7', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '1-10', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'sub category', 'locality', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegoci', 'Activo', '2023-05-26', '2023-06-30', '', '2023-09-02 15:49:14'),
('7f97804c-a', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '1-10', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'sub category', 'locality', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '2023-05-26', '2023-06-30', '', '2023-09-02 15:49:14'),
('89b92439-d', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '1-10', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'sub category', 'locality', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegoci', 'Activo', '2023-05-26', '2023-06-30', '+8801867118351', '2023-09-02 15:49:14'),
('9b21ede9-6', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '1-10', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'sub category', 'locality', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '2023-05-26', '2023-06-30', '', '2023-09-02 15:49:14'),
('b569f175-8', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, 1, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '1-10', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'sub category', 'locality', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegoci', 'Activo', '2023-05-26', '2023-06-30', '', '2023-09-02 15:49:14'),
('cefe1ea8-1', 'Muhammad Rafi', '10000.00', 'Muhammad Rafi', 'A place to celebrate in a big way', 'Mexico City', 'Mexico City', 'Mexico ', '4100', 1, 1, NULL, 1, 5, 'info@minegocio.com', 1, 1, 'https://goo.gl/maps/vbdhqb5JgeV84Tyr8', '', 'demo', '555-123-4567', 'Lunes a Viernes', 'Categoría', 'Subcategoría', '', 1, 1, 'https://facebook.com/minegocio,https://twitter.com/minegocio,https://instagram.com/minegocio', 'Activo', '2023-05-26', '2023-06-30', '', '2023-09-02 15:49:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`discount_code`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_id` (`id_business`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logo_id` (`id_business`);

--
-- Indexes for table `negocio`
--
ALTER TABLE `negocio`
  ADD PRIMARY KEY (`id_business`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_business`) REFERENCES `negocio` (`id_business`);

--
-- Constraints for table `logos`
--
ALTER TABLE `logos`
  ADD CONSTRAINT `logos_ibfk_1` FOREIGN KEY (`id_business`) REFERENCES `negocio` (`id_business`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
