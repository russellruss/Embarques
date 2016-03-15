-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2016 a las 20:37:25
-- Versión del servidor: 10.1.8-MariaDB
-- Versión de PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `embarques`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generales`
--

CREATE TABLE `generales` (
  `idgenerales` int(11) NOT NULL,
  `keyaction` varchar(45) DEFAULT NULL,
  `dato` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `generales`
--

INSERT INTO `generales` (`idgenerales`, `keyaction`, `dato`) VALUES
(1, 'ULTIMAACTUALIZACIONDB', '5 de enero de 2016  a las  19:00:01 PM'),
(2, 'ACTUALIZACIONUSUARIOSARCHIVO', '11 de marzo de 2016  a las  13:26:29 PM');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `generales`
--
ALTER TABLE `generales`
  ADD PRIMARY KEY (`idgenerales`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `generales`
--
ALTER TABLE `generales`
  MODIFY `idgenerales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
