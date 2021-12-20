-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-12-2021 a las 04:07:35
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `banea_bd`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `addLcl` (IN `nom` VARCHAR(50), IN `tel` DECIMAL(10,0), IN `dir` VARCHAR(200), IN `eml` VARCHAR(50), IN `pwd` VARCHAR(30))  INSERT INTO locales VALUES(nom, tel, dir, eml, pwd)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `bngTbl` (IN `stt` CHAR(1))  NO SQL
SELECT ide_ord, nom_ord, des_ord, pre_ord, vig_ord FROM ordenes WHERE stt_ord = stt$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logLcl` (IN `eml` VARCHAR(50), IN `pwd` VARCHAR(30))  SELECT nom_loc, eml_loc FROM locales WHERE eml_loc = eml AND pwd_loc = pwd$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `newOrd` (IN `ide` INT, IN `nom` VARCHAR(50), IN `des` VARCHAR(200), IN `pre` DECIMAL(6,2), IN `vig` VARCHAR(16))  INSERT INTO ordenes VALUES(ide, nom, des, pre, vig, 'A')$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locales`
--

CREATE TABLE `locales` (
  `nom_loc` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tel_loc` decimal(10,0) NOT NULL,
  `dir_loc` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `eml_loc` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pwd_loc` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `locales`
--

INSERT INTO `locales` (`nom_loc`, `tel_loc`, `dir_loc`, `eml_loc`, `pwd_loc`) VALUES
('Admin', '1234567890', 'qwertyuiopasdfghjklzxcvbnm', 'root', 'root'),
('Tacos Ãngel', '0', 'Av. Insurgentes, Ext. A, Int. B, Col. Centro, CDMX', 'tacos-A@gmail.com', '123456Aa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `ide_ord` int(11) NOT NULL,
  `nom_ord` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `des_ord` text COLLATE utf8_spanish_ci NOT NULL,
  `pre_ord` decimal(6,2) NOT NULL,
  `vig_ord` varchar(16) COLLATE utf8_spanish_ci NOT NULL,
  `stt_ord` char(1) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ordenes`
--

INSERT INTO `ordenes` (`ide_ord`, `nom_ord`, `des_ord`, `pre_ord`, `vig_ord`, `stt_ord`) VALUES
(1, 'Tacos de Tripa', '5 tacos de tripa con cebolla, salsa y cilantro.', '9.99', '2021-12-19', 'R'),
(2, 'Sopita de Lentejas', 'Tazon de medio litro de lenteja con jamon', '9.99', '2021-12-19', 'R'),
(3, 'Caldo de pollo', 'Medio litro de caldo de pollo con verduras', '45.00', '2021-12-21T01:01', 'A'),
(4, 'Camaron relleno', 'Orden de 5 camarones empanizados', '50.12', '2021-01-18T01:01', 'A'),
(5, 'Bistek con papas', '1 platillo de bistek con papas', '21.12', '2021-12-19T12:12', 'A'),
(6, 'Consome de pollo', '1 tazon de medio litro de consome de pollo', '32.00', '2021-12-17T01:01', 'D'),
(7, 'Enchiladas', '3 enchiladas suizas acompaÃ±adas de frijoles', '35.00', '2022-01-21T09:01', 'A'),
(8, 'Chicharron prenzado', 'plato de chicharron con 5 tortillas', '25.00', '2021-12-18T01:01', 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `locales`
--
ALTER TABLE `locales`
  ADD PRIMARY KEY (`eml_loc`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`ide_ord`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
