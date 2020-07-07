-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time:  7 юли 2020 в 12:49
-- Версия на сървъра: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weather_station`
--

-- --------------------------------------------------------

--
-- Структура на таблица `apiary_weather_station`
--

CREATE TABLE `apiary_weather_station` (
  `id` int(11) NOT NULL,
  `apiary_id` int(11) NOT NULL,
  `current_date_and_time` varchar(255) DEFAULT NULL,
  `temperature` decimal(10,2) NOT NULL,
  `humidity` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `apiary_weather_station`
--

INSERT INTO `apiary_weather_station` (`id`, `apiary_id`, `current_date_and_time`, `temperature`, `humidity`) VALUES
(1, 1, '1594117196', '20.50', '76.80'),
(2, 4, '1594117406', '32.60', '66.70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apiary_weather_station`
--
ALTER TABLE `apiary_weather_station`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apiary_weather_station`
--
ALTER TABLE `apiary_weather_station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
