-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2023 at 02:13 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lewcollection`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_items`
--

CREATE TABLE `category_items` (
  `id` int NOT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_items`
--

INSERT INTO `category_items` (`id`, `name`) VALUES
(1, 'piece'),
(2, 'billet'),
(3, 'timbre');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` int NOT NULL,
  `name` int NOT NULL,
  `creation_date` date NOT NULL,
  `id_user` int NOT NULL,
  `id_category_item` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `name`, `creation_date`, `id_user`, `id_category_item`) VALUES
(1, -2147483648, '2023-02-14', 1, 1),
(2, -2147483648, '2023-02-14', 1, 2),
(3, -2147483648, '2023-02-14', 3, 3),
(4, -2147483648, '2023-02-14', 4, 2),
(5, -2147483648, '2023-02-14', 5, 1),
(6, -2147483648, '2023-02-14', 6, 2),
(7, -2147483648, '2023-02-14', 7, 2),
(8, -2147483648, '2023-02-14', 8, 3),
(9, -2147483648, '2023-02-14', 9, 1),
(10, -2147483648, '2023-02-14', 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

CREATE TABLE `conditions` (
  `id` int NOT NULL,
  `rating` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`id`, `rating`) VALUES
(1, 'mint'),
(2, 'near mint'),
(3, 'very good plus'),
(4, 'very good'),
(5, 'good plus'),
(6, 'good'),
(7, 'fair'),
(8, 'poor');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'France'),
(2, 'Portugal'),
(3, 'Allemagne'),
(4, 'Belgique'),
(5, 'Espagne'),
(6, 'Italie'),
(7, 'Croatie'),
(8, 'Autriche'),
(9, 'Danemark'),
(10, 'Angleterre');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int NOT NULL,
  `url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_item` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id_collection` int NOT NULL,
  `id` int NOT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` date NOT NULL,
  `id_condition` int NOT NULL,
  `id_country` int NOT NULL,
  `price` int NOT NULL,
  `actual_value` int NOT NULL,
  `creation_date` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `obliteration` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id_collection`, `id`, `name`, `added_date`, `id_condition`, `id_country`, `price`, `actual_value`, `creation_date`, `description`, `obliteration`) VALUES
(1, 1, '', '2023-02-14', 1, 1, 1000, 1000, -2147483648, '', NULL),
(1, 2, '', '2023-02-14', 2, 2, 1000, 1000, -2147483648, '', NULL),
(1, 3, '', '2023-02-14', 3, 3, 1000, 1000, -2147483648, '', NULL),
(1, 4, '', '2023-02-14', 4, 4, 1000, 1000, -2147483648, '', NULL),
(1, 5, '', '2023-02-14', 5, 5, 1000, 1000, -2147483648, '', NULL),
(1, 6, '', '2023-02-14', 6, 6, 1000, 1000, -2147483648, '', NULL),
(1, 7, '', '2023-02-14', 7, 7, 1000, 1000, -2147483648, '', NULL),
(1, 8, '', '2023-02-14', 8, 8, 1000, 1000, -2147483648, '', NULL),
(1, 9, '', '2023-02-14', 1, 5, 1000, 1000, -2147483648, '', NULL),
(1, 11, '', '2023-02-14', 7, 1, 1000, 1000, -2147483648, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `mail`, `is_admin`) VALUES
(1, 'monkeydluffy', 'monkeyd', 'monkeydluffy@gmail.com', 0),
(2, 'barbeblanche', 'blanchelabarbe', 'barbeblanche@gmail.com', 0),
(3, 'ryu', 'streetfighter', 'ryu@gmail.com', 0),
(4, 'sanji', 'lajambenoire', 'sanji@gmail.com', 0),
(5, 'naruto', 'rasengan', 'naruto@gmail.com', 0),
(6, 'kakashi', 'chidori', 'kakashi@gmail.com', 0),
(7, 'kenshin', 'lameinverse', 'kenshin@gmail.com', 1),
(8, 'goku', 'kamehameha', 'goku@gmail.com', 0),
(9, 'vegeta', 'finalflash', 'vegeta@gmail.com', 0),
(10, 'tenshinhan', 'kikoho', 'tenshinhan@gmail.com', 0),
(11, 'chaozu', 'domdompa', 'chaozu@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_items`
--
ALTER TABLE `category_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category_items` (`id_category_item`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_items` (`id_item`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ID_country` (`id_country`),
  ADD KEY `id_collection` (`id_collection`),
  ADD KEY `id_condition` (`id_condition`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_items`
--
ALTER TABLE `category_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `conditions`
--
ALTER TABLE `conditions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collections`
--
ALTER TABLE `collections`
  ADD CONSTRAINT `collections_ibfk_1` FOREIGN KEY (`id_category_item`) REFERENCES `category_items` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `collections_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `items` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `items_ibfk_3` FOREIGN KEY (`id_collection`) REFERENCES `collections` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `items_ibfk_4` FOREIGN KEY (`id_condition`) REFERENCES `conditions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
