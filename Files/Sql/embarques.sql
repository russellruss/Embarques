-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2016 a las 17:36:24
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
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `clave` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `seriefacturacion` varchar(3) DEFAULT NULL,
  `seriedevolucion` varchar(3) DEFAULT NULL,
  `seriecredito` varchar(3) DEFAULT NULL,
  `seriesimple` varchar(3) DEFAULT NULL,
  `caracter` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ft91`
--

CREATE TABLE `ft91` (
  `IDSYS` varchar(1) DEFAULT NULL,
  `TDOC` int(2) NOT NULL DEFAULT '0',
  `SERIE` varchar(3) NOT NULL DEFAULT 'XXX',
  `NDOC` int(7) NOT NULL DEFAULT '0',
  `CTE` int(8) DEFAULT NULL,
  `RAZSOC` varchar(50) DEFAULT NULL,
  `FECEMI` date DEFAULT NULL,
  `HOREMI` time DEFAULT NULL,
  `FEREAL` date DEFAULT NULL,
  `HOREAL` time DEFAULT NULL,
  `USREAL` varchar(8) DEFAULT NULL,
  `FESAAL` date DEFAULT NULL,
  `HOSALL` time DEFAULT NULL,
  `USSAL` varchar(8) DEFAULT NULL,
  `FEREEM` date DEFAULT NULL,
  `HOREEM` time DEFAULT NULL,
  `USREEM` varchar(8) DEFAULT NULL,
  `FESAEM` date DEFAULT NULL,
  `HORSAEM` time DEFAULT NULL,
  `USSAEM` varchar(8) DEFAULT NULL,
  `FEREEB` date DEFAULT NULL,
  `HOREEB` time DEFAULT NULL,
  `USREEB` varchar(8) DEFAULT NULL,
  `FESAEB` date DEFAULT NULL,
  `HOSAEB` time DEFAULT NULL,
  `USSAEB` varchar(8) DEFAULT NULL,
  `PEDIDO` varchar(8) DEFAULT NULL,
  `CVECON` int(2) DEFAULT NULL,
  `ALMA` int(2) DEFAULT NULL,
  `CVE` varchar(1) DEFAULT NULL,
  `STATUS` varchar(1) DEFAULT NULL,
  `FOLINI` int(77) DEFAULT NULL,
  `FOLFIN` int(7) DEFAULT NULL,
  `CVV` int(1) DEFAULT NULL,
  `TVTA` int(1) DEFAULT NULL,
  `FDOC` date DEFAULT NULL,
  `HDOC` time DEFAULT NULL,
  `PERREC` varchar(30) DEFAULT NULL,
  `SER` varchar(3) DEFAULT NULL,
  `FOLIO` int(7) DEFAULT NULL,
  `CARTA` varchar(55) DEFAULT NULL,
  `GUIA` varchar(20) DEFAULT NULL,
  `PLACA` varchar(10) DEFAULT NULL,
  `NOMREC` varchar(30) DEFAULT NULL,
  `FESAE2` date DEFAULT NULL,
  `HOSA32` time DEFAULT NULL,
  `USSAE2` varchar(8) DEFAULT NULL,
  `FESAE3` date DEFAULT NULL,
  `HOSAE3` time DEFAULT NULL,
  `USSAE3` varchar(8) DEFAULT NULL,
  `FESAE4` date DEFAULT NULL,
  `HOSAE4` time DEFAULT NULL,
  `USSAE4` varchar(8) DEFAULT NULL,
  `FECENV` date DEFAULT NULL,
  `CUTRA` int(3) DEFAULT NULL,
  `ALMAO` int(2) DEFAULT NULL,
  `SERPED` varchar(3) DEFAULT NULL,
  `NUMPED` varchar(8) DEFAULT NULL,
  `FECHR` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ft96`
--

CREATE TABLE `ft96` (
  `IDENT` varchar(1) DEFAULT NULL,
  `CTRL` varchar(1) DEFAULT NULL,
  `TIPODOC` int(2) DEFAULT NULL,
  `SER` varchar(3) NOT NULL DEFAULT 'XXX',
  `FOLIO` int(7) NOT NULL DEFAULT '0',
  `STA` varchar(1) DEFAULT NULL,
  `F1` varchar(6) DEFAULT NULL,
  `RSOCF` varchar(120) DEFAULT NULL,
  `DIRF` varchar(60) DEFAULT NULL,
  `COLF` varchar(40) DEFAULT NULL,
  `DELF` varchar(40) DEFAULT NULL,
  `CDF` varchar(30) DEFAULT NULL,
  `EDOF` varchar(30) DEFAULT NULL,
  `PAISF` varchar(30) DEFAULT NULL,
  `CPF` int(5) DEFAULT NULL,
  `F2` varchar(123) DEFAULT NULL,
  `RSOCE` varchar(120) DEFAULT NULL,
  `DIRE` varchar(60) DEFAULT NULL,
  `COLE` varchar(40) DEFAULT NULL,
  `DELE` varchar(40) DEFAULT NULL,
  `CDE` varchar(30) DEFAULT NULL,
  `EDOE` varchar(30) DEFAULT NULL,
  `PAISE` varchar(30) DEFAULT NULL,
  `CPE` int(5) DEFAULT NULL,
  `F3` varchar(144) DEFAULT NULL,
  `CTA` int(8) DEFAULT NULL,
  `TUNID` int(7) DEFAULT NULL,
  `TIMPNM` double(10,2) DEFAULT NULL,
  `TIMPDL` double(7,2) DEFAULT NULL,
  `TDOC` int(3) DEFAULT NULL,
  `F4` varchar(59) DEFAULT NULL,
  `CVTRA` int(3) DEFAULT NULL,
  `CIATRA` varchar(55) DEFAULT NULL,
  `GUIA` varchar(20) DEFAULT NULL,
  `FECENV` date DEFAULT NULL,
  `NCAJ` int(4) DEFAULT NULL,
  `NPAC` int(4) DEFAULT NULL,
  `PLACAS` varchar(10) DEFAULT NULL,
  `NOMREC` varchar(30) DEFAULT NULL,
  `TREP` varchar(1) DEFAULT NULL,
  `FOLPAS` varchar(10) DEFAULT NULL,
  `F5` varchar(79) DEFAULT NULL,
  `FECCAP` date DEFAULT NULL,
  `HORCAP` time DEFAULT NULL,
  `SUCAP` varchar(8) DEFAULT NULL,
  `HORENV` time DEFAULT NULL,
  `F6` varchar(46) DEFAULT NULL,
  `FACPA12G` varchar(12) DEFAULT NULL,
  `FACCAN` varchar(12) DEFAULT NULL,
  `IMPFLE` double(7,2) DEFAULT NULL,
  `IMPSEG` double(7,2) DEFAULT NULL,
  `IMTOT` double(7,2) DEFAULT NULL,
  `NORDCO` varchar(12) DEFAULT NULL,
  `NCONRE` varchar(12) DEFAULT NULL,
  `NDEVO` varchar(10) DEFAULT NULL,
  `RELEMP` int(1) DEFAULT NULL,
  `ORIGI` int(1) DEFAULT NULL,
  `CARINS` int(1) DEFAULT NULL,
  `PAGCAJ` int(1) DEFAULT NULL,
  `CPAMA` int(1) DEFAULT NULL,
  `IDOPER` int(1) DEFAULT NULL,
  `IDOOTR` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generales`
--

CREATE TABLE `generales` (
  `idgenerales` int(11) NOT NULL,
  `keyaction` varchar(45) DEFAULT NULL,
  `dato` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `tipo` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `useralmacen`
--

CREATE TABLE `useralmacen` (
  `id` int(11) NOT NULL,
  `modificacion` datetime DEFAULT NULL,
  `creacion` timestamp NULL DEFAULT NULL,
  `f_usuario` varchar(50) NOT NULL,
  `f_almacen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `username` varchar(8) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  `f_tipousuario` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `ft91`
--
ALTER TABLE `ft91`
  ADD PRIMARY KEY (`NDOC`,`SERIE`,`TDOC`);

--
-- Indices de la tabla `ft96`
--
ALTER TABLE `ft96`
  ADD PRIMARY KEY (`SER`,`FOLIO`);

--
-- Indices de la tabla `generales`
--
ALTER TABLE `generales`
  ADD PRIMARY KEY (`idgenerales`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`tipo`);

--
-- Indices de la tabla `useralmacen`
--
ALTER TABLE `useralmacen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userAlmacen_almacen1_idx` (`f_almacen`),
  ADD KEY `fk_userAlmacen_usuario1_idx` (`f_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`username`),
  ADD KEY `fk_usuario_tipousuario1_idx` (`f_tipousuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `generales`
--
ALTER TABLE `generales`
  MODIFY `idgenerales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `useralmacen`
--
ALTER TABLE `useralmacen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1095;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `useralmacen`
--
ALTER TABLE `useralmacen`
  ADD CONSTRAINT `fk_userAlmacen_almacen1` FOREIGN KEY (`f_almacen`) REFERENCES `almacen` (`clave`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_userAlmacen_usuario1` FOREIGN KEY (`f_usuario`) REFERENCES `usuario` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_tipousuario1` FOREIGN KEY (`f_tipousuario`) REFERENCES `tipousuario` (`tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
