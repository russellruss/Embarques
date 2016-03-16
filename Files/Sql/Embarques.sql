-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 15, 2016 at 04:14 PM
-- Server version: 5.6.27-log
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Embarques`
--

-- --------------------------------------------------------

--
-- Table structure for table `almacen`
--

CREATE TABLE IF NOT EXISTS `almacen` (
  `clave` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `seriefacturacion` varchar(3) DEFAULT NULL,
  `seriedevolucion` varchar(3) DEFAULT NULL,
  `seriecredito` varchar(3) DEFAULT NULL,
  `seriesimple` varchar(3) DEFAULT NULL,
  `caracter` char(1) DEFAULT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `almacen`
--

INSERT INTO `almacen` (`clave`, `nombre`, `seriefacturacion`, `seriedevolucion`, `seriecredito`, `seriesimple`, `caracter`) VALUES
(0, 'VIGA', 'JA', 'JAA', 'JAB', NULL, NULL),
(2, 'CUAUHTEMOC', 'JL', 'JLA', 'JLB', 'A', 'A'),
(3, 'MONTERREY   ', 'KD', 'KDA', 'KDB', 'B', 'B'),
(4, 'INTERLOMAS', 'JV', 'JVA', 'JVB', 'AL', '1'),
(5, 'PARQUE DELTA', 'JN', 'JNA', 'JNB', 'AQ', '3'),
(6, 'ACAPULCO', 'JB', 'JBA', 'JBB', 'J', 'J'),
(7, 'XALAPA', 'LK', 'LKA', 'LKB', 'AN', '$'),
(12, 'OAXACA', 'KG', 'KGA', 'KGB', 'S', 'S'),
(13, 'IXTAPALUCA', 'JW', 'JWA', 'JWB', 'AR', '4'),
(14, 'MEDICIENCIA', 'KA', 'KAA', 'KAB', 'AS', '5'),
(15, 'CUERNAVACA', 'JM', 'JMA', 'JMB', 'L', 'L'),
(16, 'PACHUCA', 'KI', 'KIA', 'KIB', 'M', 'M'),
(17, 'TOLUCA', 'LD', 'LDA', 'LDB', 'N', 'N'),
(18, 'TAMPICO', 'LB', 'LBA', 'LBB', 'O', NULL),
(19, 'SAN LUIS POTOSI', 'LA', 'LAA', 'LAB', 'P', 'P'),
(20, 'PINO SUAREZ 1', 'KJ', 'KJA', 'KJB', 'Q', 'Q'),
(21, 'COACALCO', 'JK', 'JKA', 'JKB', 'AT', 'D'),
(22, 'LEON CENTRO', 'JY', 'JYA', 'JYB', 'R', 'R'),
(23, 'LERMA', 'JZ', 'JZA', 'JZB', 'AU', '7'),
(24, 'REYNOSA', 'KY', 'KYA', 'KYB', 'CK', '8'),
(25, 'POLITECNICO', 'KT', 'KTA', 'KTB', 'CL', '9'),
(26, 'AGUASCALIENTES', 'JC', 'JCA', 'JCB', 'CM', 'W'),
(27, 'CD. JUAREZ TORRES', 'JI', 'JIA', 'JIB', 'CQ', '('),
(28, 'CD. JUAREZ SENDERO', 'JH', 'JHA', 'JHB', 'EO', ')'),
(30, 'TLAXCALA', 'LC', 'LCA', 'LCB', 'EQ', ''''),
(31, 'PUEBLA CENTRO', 'KV', 'KVA', 'KVB', 'FA', '_'),
(33, 'PUERTO VALLARTA', 'KW', 'KWA', 'KWB', 'FC', NULL),
(34, 'CASCO STO. TOMAS', 'JF', 'JFA', 'JFB', 'ET', 'Á'),
(36, 'PLAZA DEL LIBRO', 'KL', 'KLA', 'KLB', 'EU', 'É'),
(37, 'PLAZA PAQ. ESCOLARES', 'KR', 'KRA', 'KRB', 'EV', '~'),
(38, 'PLAZA INFANTILES', 'KN', 'KNA', 'KNB', 'EX', 'Í'),
(40, 'TUXTLA GUTIERREZ', 'LF', 'LFA', 'LFB', 'FJ', '0'),
(41, 'PLAZA BEST SELLERS', 'KM', 'KMA', 'KMB', 'GY', '-'),
(42, 'SALTILLO', 'KZ', 'KZA', 'KZB', 'HQ', '÷'),
(43, 'PLAZA ARTE Y OBRAS', 'KQ', 'KQA', 'KQB', 'HT', 'À'),
(44, 'PLAZA UNIVERSITAS', 'KS', 'KSA', 'KSB', 'HU', '¯'),
(45, 'CANCUN', 'JE', 'JEA', 'JEB', 'HY', 'È'),
(47, 'GUADA. FERIAS INFANTILES', 'JQ', 'JQA', 'JQB', 'IC', 'Ò'),
(49, 'VILLA HERMOSA TABASCO', 'LJ', 'LJA', 'LJB', 'IH', '¬'),
(50, 'U.A.N.L', 'LG', 'LGA', 'LGB', 'AO', '#'),
(51, 'DURANGO', 'JO', 'JOA', 'JOB', 'FK', '%'),
(52, 'CD. JUAREZ RIO GRANDE', 'JG', 'JGA', 'JGB', 'IJ', '?'),
(53, 'GUADALAJARA KIOSCO', 'LL', 'LLA', 'LLB', 'LL', 'Ù'),
(54, 'FERIAS VARIAS', 'LM', 'LMA', 'LMB', 'LM', NULL),
(55, 'ALM. GRAL. OTROS FONDOS', 'OF', NULL, NULL, NULL, NULL),
(56, 'PLAZA DEL LIBRO POLANCO', 'LP', 'LPA', 'LPB', 'LP', 'Õ'),
(57, 'POLITECNICO FERIAS', 'JS', 'JSA', 'JSB', 'JS', 'Â'),
(58, 'PLAZA DEL LIBRO MORELIA', 'LN', 'LNA', 'LNB', 'LN', 'Î'),
(59, 'CCT. VALLARTA', 'LO', 'LOA', 'LOB', 'LO', 'Ã'),
(60, 'P.V. VIGA 2', 'IZ', 'IZA', 'IZB', 'IZ', NULL),
(61, 'GUADALAJARA   ', 'JT', 'JTA', 'JTB', 'G', 'G'),
(62, 'CHIHUAHUA  FERIAS', 'LQ', 'LQA', 'LQB', 'LQ', NULL),
(65, 'MORELIA ', 'KE', 'KEA', 'KEB', 'AP', '2'),
(68, 'ADMINISTRACION LOCAL 3', 'KO', 'KOA', 'KOB', 'EY', 'Ó'),
(69, 'ADMINISTRACION LOCAL 7', 'KP', 'KPA', 'KPB', 'EZ', 'Ú'),
(71, 'LEON CAMPESTRE', 'JX', 'JXA', 'JXB', 'D', NULL),
(72, 'PUEBLA', 'KU', 'KUA', 'KUB', 'E', 'E'),
(73, 'QUERETARO', 'KX', 'KXA', 'KXB', 'C', 'C'),
(74, 'TORREON', 'LE', 'LEA', 'LEB', 'I', 'I'),
(75, 'VERACRUZ', 'LI', 'LIA', 'LIB', 'H', 'H'),
(76, 'MERIDA', 'KB', 'KBA', 'KBB', 'F', 'F'),
(77, 'ORIZABA', 'KH', 'KHA', 'KHB', 'K', 'K'),
(78, 'INSURGENTES', 'JU', 'JUA', 'JUB', 'U', 'U'),
(79, 'BELISARIO', 'JD', 'JDA', 'JDB', 'Y', 'Y'),
(80, 'METEPEC', 'KC', 'KCA', 'KCB', 'X', 'X'),
(82, 'PINO SUAREZ 2', 'KK', 'KKA', 'KKB', 'Z', 'Z'),
(85, 'UNAM', 'LH', 'LHA', 'LHB', 'T', 'T'),
(86, 'MUNDO E', 'KF', 'KFA', 'KFB', 'AD', '@'),
(89, 'CHIHUAHUA', 'JJ', 'JJA', 'JJB', 'AH', '{'),
(90, 'MONTERREY FERIAS', 'JR', 'JRA', 'JRB', 'ER', 'Ê'),
(91, 'GUADALAJARA FERIAS', 'JP', 'JPA', 'JPB', 'IB', '}');

-- --------------------------------------------------------

--
-- Table structure for table `ft91`
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
-- Table structure for table `ft96`
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
-- Table structure for table `generales`
--

CREATE TABLE IF NOT EXISTS `generales` (
  `idgenerales` int(11) NOT NULL AUTO_INCREMENT,
  `keyaction` varchar(45) DEFAULT NULL,
  `dato` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`idgenerales`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tipousuario`
--

CREATE TABLE IF NOT EXISTS `tipousuario` (
  `tipo` varchar(13) NOT NULL,
  PRIMARY KEY (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipousuario`
--

INSERT INTO `tipousuario` (`tipo`) VALUES
('administrador'),
('asesor');

-- --------------------------------------------------------

--
-- Table structure for table `userAlmacen`
--

CREATE TABLE IF NOT EXISTS `userAlmacen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modificacion` datetime DEFAULT NULL,
  `creacion` timestamp NULL DEFAULT NULL,
  `f_usuario` varchar(50) NOT NULL,
  `f_almacen` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userAlmacen_almacen1_idx` (`f_almacen`),
  KEY `fk_userAlmacen_usuario1_idx` (`f_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1095 ;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `username` varchar(8) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  `f_tipousuario` varchar(13) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `fk_usuario_tipousuario1_idx` (`f_tipousuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`username`, `name`, `password`, `f_tipousuario`) VALUES
('geduardo', 'geduardo', '7362e0ca1dc2e89f230c7407754d18606dad3699c06a834f82e0450853968815', 'administrador');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `userAlmacen`
--
ALTER TABLE `userAlmacen`
  ADD CONSTRAINT `fk_userAlmacen_almacen1` FOREIGN KEY (`f_almacen`) REFERENCES `almacen` (`clave`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_userAlmacen_usuario1` FOREIGN KEY (`f_usuario`) REFERENCES `usuario` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_tipousuario1` FOREIGN KEY (`f_tipousuario`) REFERENCES `tipousuario` (`tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
