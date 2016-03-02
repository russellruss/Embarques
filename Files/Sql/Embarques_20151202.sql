-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-12-2015 a las 18:12:20
-- Versión del servidor: 5.6.27-log
-- Versión de PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `Embarques`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE IF NOT EXISTS `almacen` (
  `clave` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`clave`, `nombre`) VALUES
(0, 'VIGA'),
(2, 'CUAUHTEMOC'),
(3, 'MONTERREY   '),
(4, 'INTERLOMAS'),
(5, 'PARQUE DELTA'),
(6, 'ACAPULCO'),
(7, 'XALAPA'),
(12, 'OAXACA'),
(13, 'IXTAPALUCA'),
(14, 'MEDICIENCIA'),
(15, 'CUERNAVACA'),
(16, 'PACHUCA'),
(17, 'TOLUCA'),
(18, 'TAMPICO'),
(19, 'SAN LUIS POTOSI'),
(20, 'PINO SUAREZ 1'),
(21, 'COACALCO'),
(22, 'LEON CENTRO'),
(23, 'LERMA'),
(24, 'REYNOSA'),
(25, 'POLITECNICO'),
(26, 'AGUASCALIENTES'),
(27, 'CD. JUAREZ TORRES'),
(28, 'CD. JUAREZ SENDERO'),
(30, 'TLAXCALA'),
(31, 'PUEBLA CENTRO'),
(33, 'PUERTO VALLARTA'),
(34, 'CASCO STO. TOMAS'),
(36, 'PLAZA DEL LIBRO'),
(37, 'PLAZA PAQ. ESCOLARES'),
(38, 'PLAZA INFANTILES'),
(40, 'TUXTLA GUTIERREZ'),
(41, 'PLAZA BEST SELLERS'),
(42, 'SALTILLO'),
(43, 'PLAZA ARTE Y OBRAS'),
(44, 'PLAZA UNIVERSITAS'),
(45, 'CANCUN'),
(47, 'GUADA. FERIAS INFANTILES'),
(49, 'VILLA HERMOSA TABASCO'),
(50, 'U.A.N.L'),
(51, 'DURANGO'),
(52, 'CD. JUAREZ RIO GRANDE'),
(53, 'GUADALAJARA KIOSCO'),
(54, 'FERIAS VARIAS'),
(55, 'ALM. GRAL. OTROS FONDOS'),
(56, 'PLAZA DEL LIBRO POLANCO'),
(57, 'POLITECNICO FERIAS'),
(58, 'PLAZA DEL LIBRO MORELIA'),
(59, 'CCT. VALLARTA'),
(60, 'P.V. VIGA 2'),
(61, 'GUADALAJARA   '),
(62, 'CHIHUAHUA  FERIAS'),
(65, 'MORELIA '),
(68, 'ADMINISTRACION LOCAL 3'),
(69, 'ADMINISTRACION LOCAL 7'),
(71, 'LEON CAMPESTRE'),
(72, 'PUEBLA'),
(73, 'QUERETARO'),
(74, 'TORREON'),
(75, 'VERACRUZ'),
(76, 'MERIDA'),
(77, 'ORIZABA'),
(78, 'INSURGENTES'),
(79, 'BELISARIO'),
(80, 'METEPEC'),
(82, 'PINO SUAREZ 2'),
(85, 'UNAM'),
(86, 'MUNDO E'),
(89, 'CHIHUAHUA'),
(90, 'MONTERREY FERIAS'),
(91, 'GUADALAJARA FERIAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ft91`
--

CREATE TABLE IF NOT EXISTS `ft91` (
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
  `FECHR` date DEFAULT NULL,
  PRIMARY KEY (`NDOC`,`SERIE`,`TDOC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ft96`
--

CREATE TABLE IF NOT EXISTS `ft96` (
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
  `IDOOTR` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`SER`,`FOLIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generales`
--

CREATE TABLE IF NOT EXISTS `generales` (
  `idgenerales` int(11) NOT NULL AUTO_INCREMENT,
  `keyaction` varchar(45) DEFAULT NULL,
  `dato` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idgenerales`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `generales`
--

INSERT INTO `generales` (`idgenerales`, `keyaction`, `dato`) VALUES
(1, 'ULTIMAACTUALIZACIONDB', '2 de diciembre de 2015  a las  14:15:24 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE IF NOT EXISTS `tipousuario` (
  `tipo` varchar(13) NOT NULL,
  PRIMARY KEY (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`tipo`) VALUES
('administrador'),
('asesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userAlmacen`
--

CREATE TABLE IF NOT EXISTS `userAlmacen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modificacion` datetime DEFAULT NULL,
  `creacion` timestamp NULL DEFAULT NULL,
  `f_usuario` varchar(12) NOT NULL,
  `f_almacen` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userAlmacen_usuario1_idx` (`f_usuario`),
  KEY `fk_userAlmacen_almacen1_idx` (`f_almacen`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `userAlmacen`
--

INSERT INTO `userAlmacen` (`id`, `modificacion`, `creacion`, `f_usuario`, `f_almacen`) VALUES
(4, NULL, NULL, 'geduardo', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `username` varchar(12) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  `f_tipousuario` varchar(13) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `fk_usuario_tipousuario1_idx` (`f_tipousuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`username`, `password`, `f_tipousuario`) VALUES
('geduardo', '7362e0ca1dc2e89f230c7407754d18606dad3699c06a834f82e0450853968815', 'administrador'),
('javier', '384dac3368de6f658d7bc66e8fd4c8206b91c17a9084498948c7dd6e44d4a055', 'administrador'),
('somesome', '51680d9d74a76a6e30df9fc7e9d68a7d12caa9acfc76f7f1cf0cb1afd4eacb30', 'asesor'),
('testtest', '37268335dd6931045bdcdf92623ff819a64244b53d0e746d438797349d4da578', 'asesor');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `userAlmacen`
--
ALTER TABLE `userAlmacen`
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
