-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 08-01-2023 a las 05:51:58
-- Versión del servidor: 10.5.16-MariaDB
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id18265205_2010067_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ESPtable2`
--

CREATE TABLE `ESPtable2` (
  `id` int(5) NOT NULL,
  `PASSWORD` int(5) NOT NULL,
  `SENT_NUMBER_1` decimal(8,2) NOT NULL,
  `SENT_NUMBER_2` int(5) NOT NULL,
  `SENT_NUMBER_3` int(5) NOT NULL,
  `SENT_NUMBER_4` int(5) NOT NULL,
  `SENT_BOOL_1` tinyint(1) NOT NULL,
  `SENT_BOOL_2` tinyint(1) NOT NULL,
  `SENT_BOOL_3` tinyint(1) NOT NULL,
  `RECEIVED_BOOL1` int(1) NOT NULL,
  `RECEIVED_BOOL2` int(1) NOT NULL,
  `RECEIVED_BOOL3` int(1) NOT NULL,
  `RECEIVED_BOOL4` int(1) NOT NULL,
  `RECEIVED_BOOL5` int(1) NOT NULL,
  `RECEIVED_NUM1` int(5) NOT NULL,
  `RECEIVED_NUM2` int(5) NOT NULL,
  `RECEIVED_NUM3` int(5) NOT NULL,
  `RECEIVED_NUM4` int(5) NOT NULL,
  `RECEIVED_NUM5` int(5) NOT NULL,
  `TEXT_1` text CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `timestamp_temperatura` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ESPtable2`
--

INSERT INTO `ESPtable2` (`id`, `PASSWORD`, `SENT_NUMBER_1`, `SENT_NUMBER_2`, `SENT_NUMBER_3`, `SENT_NUMBER_4`, `SENT_BOOL_1`, `SENT_BOOL_2`, `SENT_BOOL_3`, `RECEIVED_BOOL1`, `RECEIVED_BOOL2`, `RECEIVED_BOOL3`, `RECEIVED_BOOL4`, `RECEIVED_BOOL5`, `RECEIVED_NUM1`, `RECEIVED_NUM2`, `RECEIVED_NUM3`, `RECEIVED_NUM4`, `RECEIVED_NUM5`, `TEXT_1`, `timestamp_temperatura`) VALUES
(99999, 12345, 124.58, 1212, 3233, 1313, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Nebune!', '2022-11-03 17:42:15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ESPtable2`
--
ALTER TABLE `ESPtable2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ESPtable2`
--
ALTER TABLE `ESPtable2`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100000;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
