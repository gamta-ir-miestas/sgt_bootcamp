-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 26, 2023 at 05:27 PM
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
-- Database: `bootcamp`
--

-- --------------------------------------------------------

--
-- Table structure for table `weather_conditions`
--

CREATE TABLE `weather_conditions` (
  `id` bigint(20) NOT NULL,
  `conditionCode` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weather_conditions`
--

INSERT INTO `weather_conditions` (`id`, `conditionCode`) VALUES
(0, 'cloudy-with-sunny-intervals'),
(1, 'rain'),
(2, 'mist'),
(3, 'clear'),
(4, 'fog'),
(5, 'partly-cloudy'),
(6, 'cloudy'),
(7, 'rain-showers'),
(8, 'variable-cloudiness'),
(9, 'light-rain');

-- --------------------------------------------------------

--
-- Table structure for table `weather_info`
--

CREATE TABLE `weather_info` (
  `id` bigint(20) NOT NULL,
  `observationTimeUtc` text DEFAULT NULL,
  `airTemperature` double DEFAULT NULL,
  `feelsLikeTemperature` double DEFAULT NULL,
  `windSpeed` double DEFAULT NULL,
  `windGust` double DEFAULT NULL,
  `windDirection` bigint(20) DEFAULT NULL,
  `cloudCover` bigint(20) DEFAULT NULL,
  `seaLevelPressure` double DEFAULT NULL,
  `relativeHumidity` bigint(20) DEFAULT NULL,
  `precipitation` double DEFAULT NULL,
  `condition_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weather_info`
--

INSERT INTO `weather_info` (`id`, `observationTimeUtc`, `airTemperature`, `feelsLikeTemperature`, `windSpeed`, `windGust`, `windDirection`, `cloudCover`, `seaLevelPressure`, `relativeHumidity`, `precipitation`, `condition_id`) VALUES
(0, '2023-06-25 15:00:00', 24.5, 24, 3.2, 6.4, 309, 75, 1014.9, 37, 0, 0),
(1, '2023-06-25 16:00:00', 20.4, 20.4, 4.7, 9.9, 318, 100, 1015.9, 49, 0, 6),
(2, '2023-06-25 17:00:00', 15.8, 15.8, 1.8, 4.2, 342, 100, 1016.2, 86, 1.3, 9),
(3, '2023-06-25 18:00:00', 16.1, 16.1, 3.2, 6.2, 303, 88, 1016.4, 84, 0.1, 1),
(4, '2023-06-25 19:00:00', 15.6, 15.6, 0.9, 2, 145, 100, 1015.6, 86, 0.1, 9),
(5, '2023-06-25 20:00:00', 14.4, 14.4, 0.7, 1.7, 234, 75, 1015.6, 93, 0, 0),
(6, '2023-06-25 21:00:00', 13.5, 13.5, 1.4, 2.2, 278, 0, 1015.7, 95, 0, 3),
(7, '2023-06-25 22:00:00', 12.6, 12.6, 0.5, 0.8, 329, 75, 1015.7, 96, 0, 0),
(8, '2023-06-25 23:00:00', 12.5, 12.5, 1.5, 2.5, 338, 63, 1015.5, 97, 0, 0),
(9, '2023-06-26 00:00:00', 12, 12, 0.9, 1.4, 331, 0, 1015.5, 96, 0, 2),
(10, '2023-06-26 01:00:00', 11.4, 11.4, 0.5, 0.7, 18, 0, 1015.3, 97, 0, 2),
(11, '2023-06-26 02:00:00', 10.8, 10.8, 0.2, 0.4, 105, 38, 1015, 97, 0, 4),
(12, '2023-06-26 03:00:00', 11.1, 11.1, 0.8, 1.1, 201, 38, 1014.7, 97, 0, 4),
(13, '2023-06-26 04:00:00', 14, 14, 1, 1.7, 97, 88, 1014.4, 93, 0, 6),
(14, '2023-06-26 05:00:00', 15.6, 15.6, 0.8, 1.5, 189, 88, 1014.2, 86, 0, 6),
(15, '2023-06-26 06:00:00', 15.5, 15.5, 1.6, 2.7, 86, 50, 1013.9, 89, 0, 8),
(16, '2023-06-26 07:00:00', 18.2, 18.2, 0.9, 2.3, 347, 25, 1013.7, 74, 0, 5),
(17, '2023-06-26 08:00:00', 20.2, 20.2, 1.9, 3.8, 8, 0, 1013.2, 54, 0, 3),
(18, '2023-06-26 09:00:00', 20.8, 20.8, 2.2, 4.4, 3, 38, 1012.9, 55, 0, 8),
(19, '2023-06-26 10:00:00', 22.2, 22.2, 1.8, 4.7, 328, 13, 1012.2, 46, 0, 5),
(20, '2023-06-26 11:00:00', 23.8, 23.3, 2.7, 5, 305, 38, 1011.9, 40, 0, 8),
(21, '2023-06-26 12:00:00', 20.1, 20.1, 2.5, 4.7, 10, 50, 1012.1, 59, 0, 7),
(22, '2023-06-26 13:00:00', 22.6, 22.6, 2.3, 5.2, 10, 13, 1011.7, 45, 0, 5),
(23, '2023-06-26 14:00:00', 21.3, 21.3, 4.3, 7.2, 303, 88, 1011.6, 53, 0.1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weather_conditions`
--
ALTER TABLE `weather_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weather_info`
--
ALTER TABLE `weather_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `condition_id` (`condition_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `weather_info`
--
ALTER TABLE `weather_info`
  ADD CONSTRAINT `weather_info_ibfk_1` FOREIGN KEY (`condition_id`) REFERENCES `weather_conditions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
