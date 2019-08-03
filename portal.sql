-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2019 at 12:51 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `version` bigint(20) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `date_created` datetime NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `identity_hash` varchar(255) DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `password` varchar(255) NOT NULL,
  `identity_hash_last_update` bigint(20) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `member_type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `version`, `phone`, `address`, `is_active`, `date_created`, `first_name`, `identity_hash`, `last_updated`, `password`, `identity_hash_last_update`, `last_name`, `member_type`, `email`) VALUES
(1, 0, '01933253615', 'Dhaka', b'1111111111111111111111111111111', '2019-08-03 15:53:33', 'System', NULL, '2019-08-03 15:53:33', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Administrator', 'ADMINISTRATOR', 'admin@localhost.local'),
(2, 0, '01933253615', 'Dhaka', b'1111111111111111111111111111111', '2019-08-03 15:58:36', 'Rabby', NULL, '2019-08-03 15:58:36', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'Rikabder', 'REGULAR_MEMBER', 'mgrabby312@gmail.com'),
(3, 0, '01310898909', 'badda', b'1111111111111111111111111111111', '2019-08-03 16:45:26', 'Rabby', NULL, '2019-08-03 16:45:26', '81dc9bdb52d04dc20036dbd8313ed055', NULL, '1', 'REGULAR_MEMBER', 'rabby@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_mbmcqelty0fbrvxp1q58dn57t` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
