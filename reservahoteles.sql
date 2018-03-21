-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-03-2018 a las 16:29:17
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reservahoteles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `clienteID` int(11) NOT NULL,
  `nombreCliente` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellidosCliente` varchar(100) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `DniCliente` varchar(9) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccionCliente` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `EmailCliente` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`clienteID`, `nombreCliente`, `apellidosCliente`, `DniCliente`, `direccionCliente`, `EmailCliente`) VALUES
(2, 'Ángeles', 'Bueno Aguilar', '45485965E', 'Calle jejeje', 'angeles@gmail.com'),
(3, 'Paqui', 'New Port', '33365895R', 'Calle Rafelillo 10 1º', 'fpadillarebollo@hotmail.es'),
(4, 'Francisco', 'Flores Palacios', '33364789T', 'calle Rafaelillo 10 1º', 'fflorespalacios@gmail.com'),
(5, 'Lucia', 'Flores Padilla', '45896587J', 'rafaelillo 10 1º', 'lucia@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `reservaID` int(11) NOT NULL,
  `nombreHotel` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `paisHotel` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `clienteID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`reservaID`, `nombreHotel`, `paisHotel`, `clienteID`) VALUES
(4, 'Gandá Shore', 'España', 2),
(5, 'Disney land ', 'Paris', 2),
(6, 'El coliseo Romano', 'Italia', 3),
(7, 'El algarve', 'Portugal', 4),
(8, 'Hiltton', 'Alemania', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`clienteID`),
  ADD UNIQUE KEY `DniCliente` (`DniCliente`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`reservaID`),
  ADD KEY `reserva_ibfk_1` (`clienteID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `clienteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `reservaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`clienteID`) REFERENCES `cliente` (`clienteID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
