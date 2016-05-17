-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 17, 2016 at 10:40 AM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.16

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
(29, 'BODEGA DEL LIBRO TIJUANA', 'LR', 'LRA', 'LRB', 'LR', '2'),
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
(83, 'TRILLAS MATERIAL DAÑADO', NULL, NULL, NULL, NULL, NULL),
(85, 'UNAM', 'LH', 'LHA', 'LHB', 'T', 'T'),
(86, 'MUNDO E', 'KF', 'KFA', 'KFB', 'AD', '@'),
(89, 'CHIHUAHUA', 'JJ', 'JJA', 'JJB', 'AH', '{'),
(90, 'MONTERREY FERIAS', 'JR', 'JRA', 'JRB', 'ER', 'Ê'),
(91, 'GUADALAJARA FERIAS', 'JP', 'JPA', 'JPB', 'IB', '}'),
(94, 'VIGA OPORTUNIDADES', NULL, NULL, NULL, NULL, NULL),
(95, 'TRILLAS MERC. RESERVA', NULL, NULL, NULL, NULL, NULL),
(96, 'CONALITEG', NULL, NULL, NULL, NULL, NULL),
(97, 'CCT DF.GOLONDRINAS', NULL, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
