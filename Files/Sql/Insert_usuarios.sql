-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-03-2016 a las 14:37:46
-- Versión del servidor: 5.5.46-0ubuntu0.14.04.2
-- Versión de PHP: 5.5.9-1ubuntu4.14

--
-- Este archivo no contiene datos de TipoUsuario
--
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `Embarques`
--

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `generales` (`idgenerales`, `keyaction`, `dato`) VALUES
(1, 'ULTIMAACTUALIZACIONDB', '14 de marzo de 2016  a las  10:42:39 AM'),
(2, 'ACTUALIZACIONUSUARIOSARCHIVO', '14 de marzo de 2016  a las  11:25:01 AM');

--
-- Volcado de datos para la tabla `userAlmacen`
--

INSERT INTO `userAlmacen` (`id`, `modificacion`, `creacion`, `f_usuario`, `f_almacen`) VALUES
(12, NULL, NULL, 'geduardo', 27),
(13, NULL, NULL, 'geduardo', 5),
(17, NULL, NULL, 'geduardo', 0),
(18, NULL, NULL, 'geduardo', 2),
(562, NULL, NULL, 'CAAURORA', 36),
(563, NULL, NULL, 'CAAURORA', 38),
(564, NULL, NULL, 'CAAURORA', 43),
(565, NULL, NULL, 'CAAURORA', 41),
(566, NULL, NULL, 'CAAURORA', 37),
(567, NULL, NULL, 'CAAURORA', 44),
(568, NULL, NULL, 'CAAURORA', 14),
(569, NULL, NULL, 'CAAURORA', 5),
(570, NULL, NULL, 'CAAURORA', 2),
(571, NULL, NULL, 'CAAURORA', 53),
(572, NULL, NULL, 'CAMONICA', 36),
(573, NULL, NULL, 'CAMONICA', 38),
(574, NULL, NULL, 'CAMONICA', 43),
(575, NULL, NULL, 'CAMONICA', 41),
(576, NULL, NULL, 'CAMONICA', 37),
(577, NULL, NULL, 'CAMONICA', 44),
(578, NULL, NULL, 'CAMONICA', 14),
(579, NULL, NULL, 'CAMONICA', 5),
(580, NULL, NULL, 'CAMONICA', 2),
(581, NULL, NULL, 'CAMONICA', 53),
(582, NULL, NULL, 'CAFABIOL', 36),
(583, NULL, NULL, 'CAFABIOL', 38),
(584, NULL, NULL, 'CAFABIOL', 43),
(585, NULL, NULL, 'CAFABIOL', 41),
(586, NULL, NULL, 'CAFABIOL', 37),
(587, NULL, NULL, 'CAFABIOL', 44),
(588, NULL, NULL, 'CAFABIOL', 14),
(589, NULL, NULL, 'CAFABIOL', 5),
(590, NULL, NULL, 'CAFABIOL', 2),
(591, NULL, NULL, 'CAFABIOL', 53),
(592, NULL, NULL, 'CAYOLAND', 36),
(593, NULL, NULL, 'CAYOLAND', 38),
(594, NULL, NULL, 'CAYOLAND', 43),
(595, NULL, NULL, 'CAYOLAND', 41),
(596, NULL, NULL, 'CAYOLAND', 37),
(597, NULL, NULL, 'CAYOLAND', 44),
(598, NULL, NULL, 'CAYOLAND', 14),
(599, NULL, NULL, 'CAYOLAND', 5),
(600, NULL, NULL, 'CAYOLAND', 2),
(601, NULL, NULL, 'CAYOLAND', 53),
(602, NULL, NULL, 'CADANIEL', 36),
(603, NULL, NULL, 'CADANIEL', 38),
(604, NULL, NULL, 'CADANIEL', 43),
(605, NULL, NULL, 'CADANIEL', 41),
(606, NULL, NULL, 'CADANIEL', 37),
(607, NULL, NULL, 'CADANIEL', 44),
(608, NULL, NULL, 'CADANIEL', 14),
(609, NULL, NULL, 'CADANIEL', 5),
(610, NULL, NULL, 'CADANIEL', 2),
(611, NULL, NULL, 'CADANIEL', 53),
(612, NULL, NULL, 'CBERIKAE', 3),
(613, NULL, NULL, 'CBERIKAE', 51),
(614, NULL, NULL, 'CBERIKAE', 91),
(615, NULL, NULL, 'CBERIKAE', 90),
(616, NULL, NULL, 'CBCLAUDI', 3),
(617, NULL, NULL, 'CBCLAUDI', 51),
(618, NULL, NULL, 'CBCLAUDI', 91),
(619, NULL, NULL, 'CBCLAUDI', 90),
(620, NULL, NULL, 'AOALEJAN', 3),
(621, NULL, NULL, 'AOALEJAN', 51),
(622, NULL, NULL, 'AOALEJAN', 50),
(623, NULL, NULL, 'AOALEJAN', 91),
(624, NULL, NULL, 'AOALEJAN', 90),
(625, NULL, NULL, 'CBNORADE', 3),
(626, NULL, NULL, 'CBNORADE', 51),
(627, NULL, NULL, 'CBNORADE', 91),
(628, NULL, NULL, 'CBNORADE', 42),
(629, NULL, NULL, 'CBNORADE', 90),
(630, NULL, NULL, 'CBTANIAM', 3),
(631, NULL, NULL, 'CBTANIAM', 91),
(632, NULL, NULL, 'CBTANIAM', 90),
(633, NULL, NULL, 'CBERIKAL', 3),
(634, NULL, NULL, 'CBERIKAL', 91),
(635, NULL, NULL, 'CBERIKAL', 90),
(636, NULL, NULL, 'CBDEISYP', 3),
(637, NULL, NULL, 'CBDEISYP', 91),
(638, NULL, NULL, 'CBDEISYP', 90),
(639, NULL, NULL, 'CCNORMAD', 73),
(640, NULL, NULL, 'ANAQUERE', 73),
(641, NULL, NULL, 'CCBERTHA', 73),
(642, NULL, NULL, 'CLORIENR', 73),
(643, NULL, NULL, 'CRISABEL', 22),
(644, NULL, NULL, 'CRISABEL', 21),
(645, NULL, NULL, 'CRMARCEL', 22),
(646, NULL, NULL, 'CRMARCEL', 21),
(647, NULL, NULL, 'CRMARESA', 22),
(648, NULL, NULL, 'CRMARESA', 21),
(649, NULL, NULL, 'CRHILDAS', 22),
(650, NULL, NULL, 'CRHILDAS', 21),
(651, NULL, NULL, 'CEANGELI', 72),
(652, NULL, NULL, 'CEANGELI', 31),
(653, NULL, NULL, 'CEHILDAC', 72),
(654, NULL, NULL, 'CEHILDAC', 31),
(655, NULL, NULL, 'CEANABEL', 72),
(656, NULL, NULL, 'CEANABEL', 31),
(657, NULL, NULL, 'CEMARCOA', 72),
(658, NULL, NULL, 'CEMARCOA', 31),
(659, NULL, NULL, 'CEMARINA', 72),
(660, NULL, NULL, 'CEMARINA', 31),
(661, NULL, NULL, 'CECLAUDI', 72),
(662, NULL, NULL, 'CECLAUDI', 31),
(663, NULL, NULL, 'CEMARIEL', 72),
(664, NULL, NULL, 'CEMARIEL', 31),
(665, NULL, NULL, 'CEJOSEFI', 72),
(666, NULL, NULL, 'CEJOSEFI', 31),
(667, NULL, NULL, 'CELAURAV', 72),
(668, NULL, NULL, 'CELAURAV', 31),
(669, NULL, NULL, 'CEMANZAN', 72),
(670, NULL, NULL, 'CEMANZAN', 31),
(671, NULL, NULL, 'CTEDILBU', 72),
(672, NULL, NULL, 'CTEDILBU', 31),
(673, NULL, NULL, 'CTLETICI', 72),
(674, NULL, NULL, 'CTLETICI', 31),
(675, NULL, NULL, 'CESANDRA', 72),
(676, NULL, NULL, 'CESANDRA', 31),
(677, NULL, NULL, 'CECRISTI', 72),
(678, NULL, NULL, 'CECRISTI', 31),
(679, NULL, NULL, 'CEMAYRAI', 72),
(680, NULL, NULL, 'CEMAYRAI', 31),
(681, NULL, NULL, 'CEJESUSG', 72),
(682, NULL, NULL, 'CEJESUSG', 31),
(683, NULL, NULL, 'CEARELIA', 72),
(684, NULL, NULL, 'CEARELIA', 31),
(685, NULL, NULL, 'RQPUECEN', 72),
(686, NULL, NULL, 'RQPUECEN', 31),
(687, NULL, NULL, 'CEROSAUR', 72),
(688, NULL, NULL, 'CEROSAUR', 31),
(689, NULL, NULL, 'CEMARIFE', 72),
(690, NULL, NULL, 'CEMARIFE', 31),
(691, NULL, NULL, 'GIOVANAC', 61),
(692, NULL, NULL, 'GIOVANAC', 91),
(693, NULL, NULL, 'GIOVANAC', 47),
(694, NULL, NULL, 'GIOVANAC', 53),
(695, NULL, NULL, 'CGBERENI', 61),
(696, NULL, NULL, 'CGBERENI', 91),
(697, NULL, NULL, 'CGBERENI', 47),
(698, NULL, NULL, 'CGBERENI', 53),
(699, NULL, NULL, 'CGFERNAN', 61),
(700, NULL, NULL, 'CGFERNAN', 91),
(701, NULL, NULL, 'CGFERNAN', 47),
(702, NULL, NULL, 'CGFERNAN', 53),
(703, NULL, NULL, 'CGMIREYA', 61),
(704, NULL, NULL, 'CGMIREYA', 91),
(705, NULL, NULL, 'CGMIREYA', 47),
(706, NULL, NULL, 'CGMIREYA', 53),
(707, NULL, NULL, 'SANDRAIV', 61),
(708, NULL, NULL, 'SANDRAIV', 91),
(709, NULL, NULL, 'SANDRAIV', 47),
(710, NULL, NULL, 'SANDRAIV', 53),
(711, NULL, NULL, 'CGREBECA', 61),
(712, NULL, NULL, 'CGREBECA', 91),
(713, NULL, NULL, 'CGREBECA', 47),
(714, NULL, NULL, 'CGREBECA', 53),
(715, NULL, NULL, 'CGLAURAR', 61),
(716, NULL, NULL, 'CGLAURAR', 91),
(717, NULL, NULL, 'CGLAURAR', 47),
(718, NULL, NULL, 'CGLAURAR', 53),
(719, NULL, NULL, 'CGJOSERA', 61),
(720, NULL, NULL, 'CGJOSERA', 91),
(721, NULL, NULL, 'CGJOSERA', 47),
(722, NULL, NULL, 'CGJOSERA', 53),
(723, NULL, NULL, 'CGALMMAR', 61),
(724, NULL, NULL, 'CGALMMAR', 91),
(725, NULL, NULL, 'CGALMMAR', 47),
(726, NULL, NULL, 'CGALMMAR', 53),
(727, NULL, NULL, 'CGALMKIO', 61),
(728, NULL, NULL, 'CGALMKIO', 91),
(729, NULL, NULL, 'CGALMKIO', 47),
(730, NULL, NULL, 'CGALMKIO', 53),
(731, NULL, NULL, 'MIRIAMCO', 61),
(732, NULL, NULL, 'MIRIAMCO', 91),
(733, NULL, NULL, 'MIRIAMCO', 47),
(734, NULL, NULL, 'MIRIAMCO', 53),
(735, NULL, NULL, 'CGJANETL', 61),
(736, NULL, NULL, 'CGJANETL', 91),
(737, NULL, NULL, 'CGJANETL', 47),
(738, NULL, NULL, 'CGJANETL', 53),
(739, NULL, NULL, 'FERNANDA', 61),
(740, NULL, NULL, 'FERNANDA', 91),
(741, NULL, NULL, 'FERNANDA', 47),
(742, NULL, NULL, 'FERNANDA', 53),
(743, NULL, NULL, 'MARIASAL', 61),
(744, NULL, NULL, 'MARIASAL', 91),
(745, NULL, NULL, 'MARIASAL', 47),
(746, NULL, NULL, 'MARIASAL', 53),
(747, NULL, NULL, 'LILIAORT', 75),
(748, NULL, NULL, 'CHENYIZE', 75),
(749, NULL, NULL, 'LITIZIAI', 75),
(750, NULL, NULL, 'KARENEDI', 75),
(751, NULL, NULL, 'CICONCEP', 74),
(752, NULL, NULL, 'CIROSALI', 74),
(753, NULL, NULL, 'CJNATIVI', 6),
(754, NULL, NULL, 'CJMARIBE', 6),
(755, NULL, NULL, 'CKPATRIC', 77),
(756, NULL, NULL, 'CKHUERTA', 77),
(757, NULL, NULL, 'CKJANETH', 77),
(758, NULL, NULL, 'CLSALOME', 15),
(759, NULL, NULL, 'CLBEATRI', 15),
(760, NULL, NULL, 'CMSAMANT', 16),
(761, NULL, NULL, 'CMSARAHI', 16),
(762, NULL, NULL, 'CMDULCEM', 16),
(763, NULL, NULL, 'CMAURORA', 16),
(764, NULL, NULL, 'CMVERONI', 16),
(765, NULL, NULL, 'CMXOCHIT', 16),
(766, NULL, NULL, 'CUKARLAH', 36),
(767, NULL, NULL, 'CUKARLAH', 38),
(768, NULL, NULL, 'CUKARLAH', 43),
(769, NULL, NULL, 'CUKARLAH', 41),
(770, NULL, NULL, 'CUKARLAH', 37),
(771, NULL, NULL, 'CUKARLAH', 44),
(772, NULL, NULL, 'CUKARLAH', 14),
(773, NULL, NULL, 'CUKARLAH', 5),
(774, NULL, NULL, 'CUKARLAH', 78),
(775, NULL, NULL, 'CUCRISTI', 78),
(776, NULL, NULL, 'CUCRISTI', 5),
(777, NULL, NULL, 'C3TAIDEM', 78),
(778, NULL, NULL, 'C3TAIDEM', 5),
(779, NULL, NULL, 'CSOLIVAR', 12),
(780, NULL, NULL, 'CSNOEMIR', 12),
(781, NULL, NULL, 'CSMARCEL', 12),
(782, NULL, NULL, 'CSEDITHL', 12),
(783, NULL, NULL, 'CXJOVITA', 80),
(784, NULL, NULL, 'CXFABIOL', 80),
(785, NULL, NULL, 'CXISABEL', 80),
(786, NULL, NULL, 'CWGLORIA', 26),
(787, NULL, NULL, 'CWFLORMA', 26),
(788, NULL, NULL, 'CYLIZBET', 79),
(789, NULL, NULL, 'CYLANCON', 79),
(790, NULL, NULL, 'TLAURAUN', 85),
(791, NULL, NULL, 'MOMARIAN', 85),
(792, NULL, NULL, 'TMARGARI', 85),
(793, NULL, NULL, 'TNANCYGA', 85),
(794, NULL, NULL, 'JOSEMANU', 4),
(795, NULL, NULL, 'MIGUELAN', 4),
(796, NULL, NULL, 'ALARACEL', 4),
(797, NULL, NULL, 'DIANACHI', 4),
(798, NULL, NULL, 'MARIBELR', 4),
(799, NULL, NULL, 'C{NORMAM', 89),
(800, NULL, NULL, 'C{CRISTI', 89),
(801, NULL, NULL, 'C{ELIDAL', 89),
(802, NULL, NULL, 'C{ALMCHI', 89),
(803, NULL, NULL, 'YESENIAR', 65),
(804, NULL, NULL, 'YESENIAR', 58),
(805, NULL, NULL, 'LIZBETHG', 65),
(806, NULL, NULL, 'LIZBETHG', 58),
(807, NULL, NULL, 'LAURAOLA', 65),
(808, NULL, NULL, 'LAURAOLA', 58),
(809, NULL, NULL, 'ELIZABET', 65),
(810, NULL, NULL, 'ELIZABET', 58),
(811, NULL, NULL, 'SANDRAVA', 65),
(812, NULL, NULL, 'SANDRAVA', 58),
(813, NULL, NULL, 'STJAZMIN', 34),
(814, NULL, NULL, 'STJAZMIN', 47),
(815, NULL, NULL, 'STJAZMIN', 57),
(816, NULL, NULL, 'STRUTHNI', 34),
(817, NULL, NULL, 'STRUTHNI', 47),
(818, NULL, NULL, 'STRUTHNI', 57),
(819, NULL, NULL, 'STNANCYM', 34),
(820, NULL, NULL, 'STNANCYM', 47),
(821, NULL, NULL, 'STNANCYM', 57),
(822, NULL, NULL, 'ANAZUCEN', 7),
(823, NULL, NULL, 'ANAZUCEN', 75),
(824, NULL, NULL, 'ANSUSANA', 7),
(825, NULL, NULL, 'ANSUSANA', 12),
(826, NULL, NULL, 'C3FABIOL', 5),
(827, NULL, NULL, 'C3GRANIL', 5),
(828, NULL, NULL, 'C3CARMEN', 5),
(829, NULL, NULL, 'C3GABRIE', 5),
(830, NULL, NULL, 'C3MANUEL', 5),
(831, NULL, NULL, 'C4TORRES', 13),
(832, NULL, NULL, 'C4TORRES', 5),
(833, NULL, NULL, 'C4MONROY', 13),
(834, NULL, NULL, 'C4MONROY', 5),
(835, NULL, NULL, 'C4KARINA', 13),
(836, NULL, NULL, 'C4KARINA', 5),
(837, NULL, NULL, 'C4ARACEN', 13),
(838, NULL, NULL, 'C4ARACEN', 5),
(839, NULL, NULL, 'C4TERESA', 13),
(840, NULL, NULL, 'C4TERESA', 5),
(841, NULL, NULL, 'C4ENEDIN', 13),
(842, NULL, NULL, 'C4ENEDIN', 5),
(843, NULL, NULL, 'C8JANNET', 24),
(844, NULL, NULL, 'LEFTINIS', 24),
(845, NULL, NULL, 'ALICIAMA', 24),
(846, NULL, NULL, 'C7NORALE', 23),
(847, NULL, NULL, 'C7NORALE', 17),
(848, NULL, NULL, 'C7LETICI', 23),
(849, NULL, NULL, 'C7LETICI', 17),
(850, NULL, NULL, 'CNCONSUE', 17),
(851, NULL, NULL, 'CNCONSUE', 23),
(852, NULL, NULL, 'CNBERENI', 17),
(853, NULL, NULL, 'CNBERENI', 23),
(854, NULL, NULL, 'CNTANIAP', 17),
(855, NULL, NULL, 'CNTANIAP', 23),
(856, NULL, NULL, 'C9JAZMIN', 25),
(857, NULL, NULL, 'C9JAZMIN', 34),
(858, NULL, NULL, 'C9JAZMIN', 47),
(859, NULL, NULL, 'C9JAZMIN', 57),
(860, NULL, NULL, 'C9LILIAN', 25),
(861, NULL, NULL, 'C9LILIAN', 34),
(862, NULL, NULL, 'C9LILIAN', 47),
(863, NULL, NULL, 'C9LILIAN', 57),
(864, NULL, NULL, 'C(JESUST', 27),
(865, NULL, NULL, 'C(JESUST', 28),
(866, NULL, NULL, 'C(INGRID', 27),
(867, NULL, NULL, 'C(INGRID', 28),
(868, NULL, NULL, 'C(ANAROS', 27),
(869, NULL, NULL, 'C(ANAROS', 28),
(870, NULL, NULL, 'C(IVONNE', 27),
(871, NULL, NULL, 'C(IVONNE', 28),
(872, NULL, NULL, 'C(MAYRAF', 27),
(873, NULL, NULL, 'C(MAYRAF', 28),
(874, NULL, NULL, 'C(DENISS', 27),
(875, NULL, NULL, 'C(DENISS', 28),
(876, NULL, NULL, 'C(JOSEFI', 27),
(877, NULL, NULL, 'C(JOSEFI', 28),
(878, NULL, NULL, 'C(LIZETH', 27),
(879, NULL, NULL, 'C(LIZETH', 28),
(880, NULL, NULL, 'C(AGUEDA', 27),
(881, NULL, NULL, 'C(AGUEDA', 28),
(882, NULL, NULL, 'C(JACQUE', 27),
(883, NULL, NULL, 'C(JACQUE', 28),
(884, NULL, NULL, 'C(TANIAI', 27),
(885, NULL, NULL, 'C(TANIAI', 28),
(886, NULL, NULL, 'C(BRENDA', 27),
(887, NULL, NULL, 'C(BRENDA', 28),
(888, NULL, NULL, 'C(MELISS', 27),
(889, NULL, NULL, 'C(MELISS', 28),
(890, NULL, NULL, 'C(ANAJAT', 27),
(891, NULL, NULL, 'C(ANAJAT', 28),
(892, NULL, NULL, 'C6LAURAM', 86),
(893, NULL, NULL, 'C6ESTEPH', 86),
(894, NULL, NULL, 'C6LORENA', 86),
(895, NULL, NULL, 'ADGLORIA', 86),
(896, NULL, NULL, 'ADANAVIC', 86),
(897, NULL, NULL, 'ADDANIEL', 86),
(898, NULL, NULL, 'ADSOCORR', 86),
(899, NULL, NULL, 'ADESGUAD', 86),
(900, NULL, NULL, 'MOPATYMA', 68),
(901, NULL, NULL, 'MOPATYMA', 69),
(902, NULL, NULL, 'C''ELVIAR', 30),
(903, NULL, NULL, 'C''ROSALI', 30),
(904, NULL, NULL, 'C''EMILIA', 30),
(905, NULL, NULL, 'C''DELIAS', 30),
(906, NULL, NULL, 'C''MARIAC', 30),
(907, NULL, NULL, 'VELAZCOA', 36),
(908, NULL, NULL, 'VELAZCOA', 38),
(909, NULL, NULL, 'VELAZCOA', 43),
(910, NULL, NULL, 'VELAZCOA', 41),
(911, NULL, NULL, 'VELAZCOA', 37),
(912, NULL, NULL, 'VELAZCOA', 44),
(913, NULL, NULL, 'VELAZCOA', 14),
(914, NULL, NULL, 'VELAZCOA', 5),
(915, NULL, NULL, 'NOLASCOF', 36),
(916, NULL, NULL, 'NOLASCOF', 38),
(917, NULL, NULL, 'NOLASCOF', 43),
(918, NULL, NULL, 'NOLASCOF', 41),
(919, NULL, NULL, 'NOLASCOF', 37),
(920, NULL, NULL, 'NOLASCOF', 44),
(921, NULL, NULL, 'NOLASCOF', 14),
(922, NULL, NULL, 'NOLASCOF', 5),
(923, NULL, NULL, 'MOALMACE', 36),
(924, NULL, NULL, 'MOALMACE', 38),
(925, NULL, NULL, 'MOALMACE', 43),
(926, NULL, NULL, 'MOALMACE', 41),
(927, NULL, NULL, 'MOALMACE', 37),
(928, NULL, NULL, 'MOALMACE', 44),
(929, NULL, NULL, 'MOALMACE', 14),
(930, NULL, NULL, 'MOALMACE', 5),
(931, NULL, NULL, 'GUSTABOG', 36),
(932, NULL, NULL, 'GUSTABOG', 38),
(933, NULL, NULL, 'GUSTABOG', 43),
(934, NULL, NULL, 'GUSTABOG', 41),
(935, NULL, NULL, 'GUSTABOG', 37),
(936, NULL, NULL, 'GUSTABOG', 44),
(937, NULL, NULL, 'GUSTABOG', 14),
(938, NULL, NULL, 'GUSTABOG', 5),
(939, NULL, NULL, 'MOBLANDO', 36),
(940, NULL, NULL, 'MOBLANDO', 38),
(941, NULL, NULL, 'MOBLANDO', 43),
(942, NULL, NULL, 'MOBLANDO', 41),
(943, NULL, NULL, 'MOBLANDO', 37),
(944, NULL, NULL, 'MOBLANDO', 44),
(945, NULL, NULL, 'MOBLANDO', 14),
(946, NULL, NULL, 'MOBLANDO', 5),
(947, NULL, NULL, 'SELENIAM', 36),
(948, NULL, NULL, 'SELENIAM', 38),
(949, NULL, NULL, 'SELENIAM', 43),
(950, NULL, NULL, 'SELENIAM', 41),
(951, NULL, NULL, 'SELENIAM', 37),
(952, NULL, NULL, 'SELENIAM', 44),
(953, NULL, NULL, 'SELENIAM', 14),
(954, NULL, NULL, 'SELENIAM', 5),
(955, NULL, NULL, 'MOSANDRA', 36),
(956, NULL, NULL, 'MOSANDRA', 38),
(957, NULL, NULL, 'MOSANDRA', 43),
(958, NULL, NULL, 'MOSANDRA', 41),
(959, NULL, NULL, 'MOSANDRA', 37),
(960, NULL, NULL, 'MOSANDRA', 44),
(961, NULL, NULL, 'MOSANDRA', 14),
(962, NULL, NULL, 'MOSANDRA', 5),
(963, NULL, NULL, 'YOLANDAL', 36),
(964, NULL, NULL, 'YOLANDAL', 38),
(965, NULL, NULL, 'YOLANDAL', 43),
(966, NULL, NULL, 'YOLANDAL', 41),
(967, NULL, NULL, 'YOLANDAL', 37),
(968, NULL, NULL, 'YOLANDAL', 44),
(969, NULL, NULL, 'YOLANDAL', 14),
(970, NULL, NULL, 'YOLANDAL', 5),
(971, NULL, NULL, 'MODANIEL', 36),
(972, NULL, NULL, 'MODANIEL', 38),
(973, NULL, NULL, 'MODANIEL', 43),
(974, NULL, NULL, 'MODANIEL', 41),
(975, NULL, NULL, 'MODANIEL', 37),
(976, NULL, NULL, 'MODANIEL', 44),
(977, NULL, NULL, 'MODANIEL', 14),
(978, NULL, NULL, 'MODANIEL', 5),
(979, NULL, NULL, 'C5ALEJAN', 14),
(980, NULL, NULL, 'MOCLAUDI', 36),
(981, NULL, NULL, 'MOCLAUDI', 38),
(982, NULL, NULL, 'MOCLAUDI', 43),
(983, NULL, NULL, 'MOCLAUDI', 41),
(984, NULL, NULL, 'MOCLAUDI', 37),
(985, NULL, NULL, 'MOCLAUDI', 44),
(986, NULL, NULL, 'MOCLAUDI', 14),
(987, NULL, NULL, 'MOCLAUDI', 5),
(988, NULL, NULL, 'LAURARAM', 36),
(989, NULL, NULL, 'LAURARAM', 38),
(990, NULL, NULL, 'LAURARAM', 43),
(991, NULL, NULL, 'LAURARAM', 41),
(992, NULL, NULL, 'LAURARAM', 37),
(993, NULL, NULL, 'LAURARAM', 44),
(994, NULL, NULL, 'LAURARAM', 14),
(995, NULL, NULL, 'LAURARAM', 5),
(996, NULL, NULL, 'ANDREAPA', 36),
(997, NULL, NULL, 'ANDREAPA', 38),
(998, NULL, NULL, 'ANDREAPA', 43),
(999, NULL, NULL, 'ANDREAPA', 41),
(1000, NULL, NULL, 'ANDREAPA', 37),
(1001, NULL, NULL, 'ANDREAPA', 44),
(1002, NULL, NULL, 'ANDREAPA', 14),
(1003, NULL, NULL, 'ANDREAPA', 5),
(1004, NULL, NULL, 'ARIADNAP', 36),
(1005, NULL, NULL, 'ARIADNAP', 38),
(1006, NULL, NULL, 'ARIADNAP', 43),
(1007, NULL, NULL, 'ARIADNAP', 41),
(1008, NULL, NULL, 'ARIADNAP', 37),
(1009, NULL, NULL, 'ARIADNAP', 44),
(1010, NULL, NULL, 'ARIADNAP', 14),
(1011, NULL, NULL, 'ARIADNAP', 5),
(1012, NULL, NULL, 'ANAMARIA', 36),
(1013, NULL, NULL, 'ANAMARIA', 38),
(1014, NULL, NULL, 'ANAMARIA', 43),
(1015, NULL, NULL, 'ANAMARIA', 41),
(1016, NULL, NULL, 'ANAMARIA', 37),
(1017, NULL, NULL, 'ANAMARIA', 44),
(1018, NULL, NULL, 'ANAMARIA', 14),
(1019, NULL, NULL, 'ANAMARIA', 5),
(1020, NULL, NULL, 'ALEJANDR', 36),
(1021, NULL, NULL, 'ALEJANDR', 38),
(1022, NULL, NULL, 'ALEJANDR', 43),
(1023, NULL, NULL, 'ALEJANDR', 41),
(1024, NULL, NULL, 'ALEJANDR', 37),
(1025, NULL, NULL, 'ALEJANDR', 44),
(1026, NULL, NULL, 'ALEJANDR', 14),
(1027, NULL, NULL, 'ALEJANDR', 5),
(1028, NULL, NULL, 'GIOVANNI', 36),
(1029, NULL, NULL, 'GIOVANNI', 38),
(1030, NULL, NULL, 'GIOVANNI', 43),
(1031, NULL, NULL, 'GIOVANNI', 41),
(1032, NULL, NULL, 'GIOVANNI', 37),
(1033, NULL, NULL, 'GIOVANNI', 44),
(1034, NULL, NULL, 'GIOVANNI', 14),
(1035, NULL, NULL, 'GIOVANNI', 5),
(1036, NULL, NULL, 'GRACIELA', 36),
(1037, NULL, NULL, 'GRACIELA', 38),
(1038, NULL, NULL, 'GRACIELA', 43),
(1039, NULL, NULL, 'GRACIELA', 41),
(1040, NULL, NULL, 'GRACIELA', 37),
(1041, NULL, NULL, 'GRACIELA', 44),
(1042, NULL, NULL, 'GRACIELA', 14),
(1043, NULL, NULL, 'GRACIELA', 5),
(1044, NULL, NULL, 'CFTERESI', 76),
(1045, NULL, NULL, 'CFTERESI', 45),
(1046, NULL, NULL, 'CFELSAAG', 76),
(1047, NULL, NULL, 'CFELSAAG', 45),
(1048, NULL, NULL, 'CFLUISAG', 76),
(1049, NULL, NULL, 'CFLUISAG', 45),
(1050, NULL, NULL, 'C&NERYGU', 40),
(1051, NULL, NULL, 'C&BERTHA', 40),
(1052, NULL, NULL, 'IVONESAN', 51),
(1053, NULL, NULL, 'SUHEILLE', 51),
(1054, NULL, NULL, 'COMARIGU', 51),
(1055, NULL, NULL, 'CPELIZAB', 19),
(1056, NULL, NULL, 'CPFABIOL', 19),
(1057, NULL, NULL, 'CPBLANCA', 19),
(1058, NULL, NULL, 'CPLEIDYA', 19),
(1059, NULL, NULL, 'CARMENGU', 59),
(1060, NULL, NULL, 'MARIATER', 59),
(1061, NULL, NULL, 'CQALFONS', 20),
(1062, NULL, NULL, 'CQALFONS', 82),
(1063, NULL, NULL, 'CQALBERT', 20),
(1064, NULL, NULL, 'CQALBERT', 82),
(1065, NULL, NULL, 'CQSOCORO', 20),
(1066, NULL, NULL, 'CQSOCORO', 82),
(1067, NULL, NULL, 'CQURIELR', 20),
(1068, NULL, NULL, 'CQURIELR', 82),
(1069, NULL, NULL, 'AMADAROD', 45),
(1070, NULL, NULL, 'VERONICA', 45),
(1071, NULL, NULL, 'SELENAVI', 45),
(1072, NULL, NULL, 'GOMEZCAR', 45),
(1073, NULL, NULL, 'BELMARES', 42),
(1074, NULL, NULL, 'NELLYPAT', 42),
(1075, NULL, NULL, 'MARCELAC', 42),
(1076, NULL, NULL, 'KARENLIZ', 42),
(1077, NULL, NULL, 'MARISOLA', 49),
(1078, NULL, NULL, 'BARTOLAY', 49),
(1079, NULL, NULL, 'CECILIAC', 49),
(1080, NULL, NULL, 'ENEDINAW', 49),
(1081, NULL, NULL, 'CRISTIAN', 49),
(1082, NULL, NULL, 'CRMARIAA', 49),
(1083, NULL, NULL, 'CRYANETG', 49),
(1084, NULL, NULL, 'BLANCATE', 56),
(1085, NULL, NULL, 'JOSEFRIA', 56),
(1086, NULL, NULL, 'CRUZMANU', 56),
(1087, NULL, NULL, 'SONIAEDI', 56),
(1088, NULL, NULL, 'SAYURIVI', 56),
(1089, NULL, NULL, 'MONICAAL', 56),
(1090, NULL, NULL, 'BLANCAYA', 56),
(1091, NULL, NULL, 'ULISESOR', 56),
(1092, NULL, NULL, 'ADGLORIA', 2),
(1093, NULL, NULL, 'geduardo', 15),
(1094, NULL, NULL, 'ADGLORIA', 15),
(1095, NULL, NULL, 'ADGLORIA', 16),
(1096, NULL, NULL, 'ADGLORIA', 17),
(1097, NULL, NULL, 'ADGLORIA', 3),
(1098, NULL, NULL, 'ADGLORIA', 18),
(1099, NULL, NULL, 'ALARACEL', 16),
(1100, NULL, NULL, 'AMADAROD', 16),
(1101, NULL, NULL, 'ADESGUAD', 15),
(1102, NULL, NULL, 'ADDANIEL', 16),
(1103, NULL, NULL, 'ADESGUAD', 25),
(1104, NULL, NULL, 'ADGLORIA', 25),
(1108, NULL, NULL, 'ADESGUAD', 0),
(1109, NULL, NULL, 'ADDANIEL', 15),
(1110, NULL, NULL, 'ADESGUAD', 16),
(1114, NULL, NULL, 'ADESGUAD', 17),
(1116, NULL, NULL, 'ADSOCORR', 0);

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`username`, `name`, `password`, `f_tipousuario`) VALUES
('ADANAVIC', 'LONA HERNANDEZ ANA VICTORIA', 'EWT5', 'asesor'),
('ADDANIEL', 'HERRARA GARCIA DANIELA', '4DDF', 'asesor'),
('ADESGUAD', 'CASTRO RAMIREZ ESTEPHANNY GUADALUPE', 'GASE', 'asesor'),
('ADGLORIA', 'MORALES HERNANDEZ GLORIA', 'A043', 'asesor'),
('ADSOCORR', 'VAZQUEZ TREJO MARIA DEL SOCORRO', 'HELP', 'asesor'),
('ALARACEL', 'GERENTE', 'TEMP', 'asesor'),
('ALEJANDR', 'MARTINEZ GUILLEN ALEJANDRA ITZEL', '8SG3', 'asesor'),
('ALICIAMA', 'CARRASCO GONZALEZ ALICIA MAYRA', '27SB', 'asesor'),
('AMADAROD', 'RODRIGUEZ ORTIZ AMADA', 'SAU8', 'asesor'),
('ANAMARIA', 'ANA MARIA RAMIREZ SANCHEZ', 'SS31', 'asesor'),
('ANAQUERE', 'MARTINEZ ROJO ANA MARIA', 'S734', 'asesor'),
('ANAZUCEN', 'GALAN MENDOZA AZUCENA', 'APKH', 'asesor'),
('ANDREAPA', 'MALDONADO CUELLAR ANDREA PAMELA', '4A1C', 'asesor'),
('ANSUSANA', 'CORDOBA GONZALEZ SUSANA', 'WEFO', 'asesor'),
('AOALEJAN', 'SALAS MARQUEZ ALEJANDRO MOISES', 'SKEL', 'asesor'),
('ARIADNAP', 'PEREZ HERNANDEZ ARIADNA', '3SDA', 'asesor'),
('BARTOLAY', 'SANCHEZ LAZARO BARTOLA YANEY', 'REWT', 'asesor'),
('BELMARES', 'BELMARES SANCHEZ ALEJANDRA', '86FD', 'asesor'),
('BLANCATE', 'TEJEDA RODRIGUEZ BLANCA', '7SH5', 'asesor'),
('BLANCAYA', 'HERNANDEZ PLIEGO BLANCA YANET', 'T0UR', 'asesor'),
('C&BERTHA', 'PEREZ GOMEZ BERTHA FRANCISCA', 'LINA', 'asesor'),
('C&NERYGU', 'GUMETA SALAZAR NERY GUADALUPE', 'A49G', 'asesor'),
('C''DELIAS', 'CASTILLO TORRES DELIA SARA', 'HJX2', 'asesor'),
('C''ELVIAR', 'ROMERO MARQUEZ ELVIA', 'AKI1', 'asesor'),
('C''EMILIA', 'SANCHEZ SALINAS MARIA EMILIA', 'CUER', 'asesor'),
('C''MARIAC', 'CUAHUTLE ZARATE LUZ MARIA', 'GX49', 'asesor'),
('C''ROSALI', 'CUELLAR HERRERA ROSALIA', 'AL43', 'asesor'),
('C(AGUEDA', 'MACIAS PEREGRINO AGUEDA', 'PLAN', 'asesor'),
('C(ANAJAT', 'LOZANO ZUÑIGA ANA JANETH', 'SANT', 'asesor'),
('C(ANAROS', 'RAMIREZ RANGEL ANA ROSA', 'DF41', 'asesor'),
('C(BRENDA', 'MARTINEZ ROBLES BRENDA MARISELA', '4FSH', 'asesor'),
('C(DENISS', 'BERNAL ACOSTA PERLA DENISSE', 'PIPO', 'asesor'),
('C(INGRID', 'SAUREZ MENDEZ INGRID REBECA', '2QIK', 'asesor'),
('C(IVONNE', 'AVALOS GONZALEZ IVONNE GUADALUPE', 'R49L', 'asesor'),
('C(JACQUE', 'DE LA REA ARMENTA JACQUELINE', 'SPRI', 'asesor'),
('C(JESUST', 'TEJADA LEAÐOS MARIA DE JESUS', 'AV3H', 'asesor'),
('C(JOSEFI', 'ROMERO PATLAN ADRIANA JOSEFINA', '1L5Z', 'asesor'),
('C(LIZETH', 'LEAL GUERRA LIRIA LIZETH', 'BT3R', 'asesor'),
('C(MAYRAF', 'FERNANDEZ REYES MAYRA ALEJANDRA', '1D57', 'asesor'),
('C(MELISS', 'VALDEZ GUTIERREZ CYNTHIA MELISSA', 'DSW7', 'asesor'),
('C(TANIAI', 'GUZMAN VAZQUEZ TANIA IVONNNE', 'J2P0', 'asesor'),
('C3CARMEN', 'DELGADO HERNANDEZ MARIA DEL CARMEN', '2SE8', 'asesor'),
('C3FABIOL', 'GOMEZ CORTES MARIA FABIOLA', 'NRTS', 'asesor'),
('C3GABRIE', 'MENDOZA GARCIA GABRIELA', '4FS8', 'asesor'),
('C3GRANIL', 'GRANILLO ALCANTARA VERONICA', 'SCON', 'asesor'),
('C3MANUEL', 'ROMERO PONCE CRUZ MANUEL', 'F6GM', 'asesor'),
('C3TAIDEM', 'MARQUEZ CONDE ELIA TAIDE', 'LAB6', 'asesor'),
('C4ARACEN', 'PEREZ ARACEN', 'SKYP', 'asesor'),
('C4ENEDIN', 'FELICIANO AGUSTIN ENEDINA BLANCA', 'ABH4', 'asesor'),
('C4KARINA', 'GONZALEZ AGUILAR KARINA', 'B3D6', 'asesor'),
('C4MONROY', 'MONROY GARCIA LAURA ELIZABETH', 'ZLPQ', 'asesor'),
('C4TERESA', 'ROQUE ROQUE TERESA LIDOINE', 'DFTP', 'asesor'),
('C4TORRES', 'TORRES SOTERO MARIANA', 'AICR', 'asesor'),
('C5ALEJAN', 'CELESTINO CANOBAS MARTINA ALEJANDRA', 'A83G', 'asesor'),
('C6ESTEPH', 'CASTRO RAMIREZ ESTEPHANNY GUADALUPE', 'T3GV', 'asesor'),
('C6LAURAM', 'CHAVEZ CRUZ LAURA MARIA', '390D', 'asesor'),
('C6LORENA', 'TELLEZ RIOS LORENA GUADALUPE', 'PSDV', 'asesor'),
('C7LETICI', 'GONZALEZ AGUILAR LETICIA', 'SS3C', 'asesor'),
('C7NORALE', 'GOMEZ TAGLE LEE NORA HILDA', 'CNFT', 'asesor'),
('C8JANNET', 'RAMIREZ RAMIREZ JANNET', 'AWRP', 'asesor'),
('C9JAZMIN', 'VIVEROS ROMERO JAZMIN', '5RE2', 'asesor'),
('C9LILIAN', 'RIOS GARCIA LILIANA', 'BCXF', 'asesor'),
('CAAURORA', 'ADAME ROMERO AURORA', 'JAVI', 'asesor'),
('CADANIEL', 'DANIEL JAIME ESCAMILLA', 'A16D', 'asesor'),
('CAFABIOL', 'RICO GARCES FABIOLA ESTEFANIA', '455A', 'asesor'),
('CAMONICA', 'GONZALEZ RAMOS MONICA MARIA', 'S42R', 'asesor'),
('CARMENGU', 'GUERRA GARCIA CARMEN', '5WD5', 'asesor'),
('CAYOLAND', 'HERNANDEZ ROZAS YOLANDA', 'TUSA', 'asesor'),
('CBCLAUDI', 'LUGO BECERRA CLAUDIA VERONICA', '14H8', 'asesor'),
('CBDEISYP', 'REYES GONZALEZ DEISY PATRICIA', 'DONA', 'asesor'),
('CBERIKAE', 'LOPEZ RIVERA ERIKA ELIZABETH', '3S83', 'asesor'),
('CBERIKAL', 'CARNIZALEZ GARCIA ERIKA LIZETH', '4GSM', 'asesor'),
('CBNORADE', 'MORENO GALVAN NORA DELIA', 'M23I', 'asesor'),
('CBTANIAM', 'PECINA LICEA TANIA MARCELA', 'N4RT', 'asesor'),
('CCBERTHA', 'BERTHA NAYELI MONTOYA RIVERA', 'PANZ', 'asesor'),
('CCNORMAD', 'CERVANTES GUILLEN NORMA ANGELICA', 'MVAC', 'asesor'),
('CEANABEL', 'OBREGON RUIZ ANABEL', 'OAHS', 'asesor'),
('CEANGELI', 'MENDEZ LUNA ANGELICA', 'GV4N', 'asesor'),
('CEARELIA', 'ARCE AMADO ARELI', '87FI', 'asesor'),
('CECILIAC', 'CORDOVA CORDOVA AURA CECILIA', '45FQ', 'asesor'),
('CECLAUDI', 'HUEPA ONOFRE CLAUDIA', 'DF2G', 'asesor'),
('CECRISTI', 'CORREA CARDENAS CRISTIAN CONCEPCION', 'SDIN', 'asesor'),
('CEHILDAC', 'CAMPOS DOMINGUEZ HILDA', '5WD4', 'asesor'),
('CEJESUSG', 'GUZMAN CASTILLO JESUS', 'FERD', 'asesor'),
('CEJOSEFI', 'BENITEZ MUNGUIA JOSEFINA', 'BLAN', 'asesor'),
('CELAURAV', 'VAZQUEZ CABALLERO ANA LAURA', '35HK', 'asesor'),
('CEMANZAN', 'NUÐEZ MANZANO JESUS NOE', 'TY6C', 'asesor'),
('CEMARCOA', 'ROMERO MENDOZA MARCO ANTONIO', 'A8DC', 'asesor'),
('CEMARIEL', 'SANCHEZ CABRERA MARIEL', 'LA8G', 'asesor'),
('CEMARIFE', 'RICARDO VICENTE MARIA FERNANDA', 'BICI', 'asesor'),
('CEMARINA', 'MARTINEZ ROSAS MARIA DEL MAR', 'PL9U', 'asesor'),
('CEMAYRAI', 'GRAJALES HERNANDEZ MAYRA ITZEL', '867G', 'asesor'),
('CEROSAUR', 'GUTIERREZ BARROSO ROSAURA', 'E4F2', 'asesor'),
('CESANDRA', 'PEÐA HERRERA SANDRA PATRICIA', 'DF0E', 'asesor'),
('CFELSAAG', 'SANCHEZ AGUILAR ELSA DEL SOCORRO', 'SD9W', 'asesor'),
('CFLUISAG', 'GIL GONZALEZ MARIA LUISA', '39S2', 'asesor'),
('CFTERESI', 'LIZAMA RODRIGUEZ TERESITA DE JESUS', 'OTRE', 'asesor'),
('CGALMKIO', 'AREA DE ALMACEN GUADALAJARA KIOSKO', 'EC4X', 'asesor'),
('CGALMMAR', 'AREA DE ALMACEN GUADALAJARA MARIANO OTERO', 'NJ8V', 'asesor'),
('CGBERENI', 'GOMEZ BRAVO GUADALUPE BERENICE', 'A03H', 'asesor'),
('CGFERNAN', 'HERRERA MARTINEZ FERNANDO', 'E3DA', 'asesor'),
('CGJANETL', 'ORTEGA GALEANA LILIANA JANET', '348S', 'asesor'),
('CGJOSERA', 'NAVARRO PARDO JOSE RAMON', 'CGD1', 'asesor'),
('CGLAURAR', 'MACIAS BOBADILLA LAURA RAQUEL', 'SW7D', 'asesor'),
('CGMIREYA', 'DE LA CRUZ GONZALEZ MIREYA', 'A2SR', 'asesor'),
('CGREBECA', 'GARRIDO CHAVEZ MARIA REBECA', '39D1', 'asesor'),
('CHENYIZE', 'NAJERA SEGURA MANUELA ENYIZENITH', 'A19L', 'asesor'),
('CICONCEP', 'DIAZ CARRILLO JUANA CONCEPCION', 'NEKA', 'asesor'),
('CIROSALI', 'MARTINEZ MARTINEZ ROSALINDA', 'MIVA', 'asesor'),
('CJMARIBE', 'HERNANDEZ BRAVO MARIBEL', 'XNSR', 'asesor'),
('CJNATIVI', 'PINEDA RODRIGUEZ NATIVIDAD', 'ARLW', 'asesor'),
('CKHUERTA', 'CHAVEZ HUERTA MONICA', '5TYN', 'asesor'),
('CKJANETH', 'SALAZAR VILLALOBOS JANETH', 'DRDS', 'asesor'),
('CKPATRIC', 'ESTRADA PRADO PATRICIA', 'LLWT', 'asesor'),
('CLBEATRI', 'BAUTISTA HERNANDEZ BEATRIZ', '1CF7', 'asesor'),
('CLORIENR', 'RESENDIZ GONZALEZ LINDA LORIEN', 'GR43', 'asesor'),
('CLSALOME', 'TRAIN RENDON MARIA SALOME', '5TVE', 'asesor'),
('CMAURORA', 'PEREZ MIGUEL AURORA', 'C5DG', 'asesor'),
('CMDULCEM', 'MANCILLA ALVARADO DULCE MARIA', '3ERA', 'asesor'),
('CMSAMANT', 'MENDOZA PEREZ SAMANTHA', '4R3F', 'asesor'),
('CMSARAHI', 'GONZALEZ VILLA SARAHI', 'G46B', 'asesor'),
('CMVERONI', 'VELASCO GRANILLO VERONICA', '4SDV', 'asesor'),
('CMXOCHIT', 'CASTILLO CASTILLO XOCHITL', 'HB5S', 'asesor'),
('CNBERENI', 'REYES GUTIERREZ BERENICE', 'SFF3', 'asesor'),
('CNCONSUE', 'GOMEZ GONZALEZ CONSUELO', '67RF', 'asesor'),
('CNTANIAP', 'GOMEZ GARCIA TANIA PATRICIA', 'JF4A', 'asesor'),
('CODULCEL', 'SANCHEZ CAMACHO DULCE LIZETH', '2QET', 'asesor'),
('COGABRIE', 'VILLEGAS DELGADO GABRIELA', 'MAQU', 'asesor'),
('COMARIGU', 'GUZMAN RINCON MARIBEL', 'ARSD', 'asesor'),
('CPBLANCA', 'SANTIAGO ESCUDERO BLANCA ESTELA', '5847', 'asesor'),
('CPELIZAB', 'CAÐAS GARCIA MARIA ELIZABETH', 'BKSE', 'asesor'),
('CPFABIOL', 'SEGOVIA SALAZAR FABIOLA', 'BO3S', 'asesor'),
('CPLEIDYA', 'LEIDY ADRIANA GOMEZ CISNEROS', 'Q1T0', 'asesor'),
('CQALBERT', 'PEREDO PINEDA CARLOS ALBERTO', 'QWE8', 'asesor'),
('CQALFONS', 'CASTELLANOS AVILA ALFONSO', 'E113', 'asesor'),
('CQSOCORO', 'VAZQUEZ GONZALEZ SOCORRO', '185J', 'asesor'),
('CQURIELR', 'ROSAS GOMEZ URIEL', '454D', 'asesor'),
('CRHILDAS', 'MORALES CABRERA HILDA SOCORRO', '6FSA', 'asesor'),
('CRISABEL', 'ARREDONDO FERRER MARIA ISABEL', 'ABXH', 'asesor'),
('CRISTIAN', 'CORREA CARDENAS CRISTIAN CONCEPCION', 'GJM1', 'asesor'),
('CRMARCEL', 'CHAVEZ NICASIO MARCELA', 'AUWM', 'asesor'),
('CRMARESA', 'MARES MARTINEZ MARIA DOLORES', 'LENH', 'asesor'),
('CRMARIAA', 'HERNANDEZ SAENZ MARIA ASUNCION', 'GIU3', 'asesor'),
('CRUZMANU', 'ROMERO PONCE CRUZ MANUEL', 'KAJG', 'asesor'),
('CRYANETG', 'GONZALEZ LOPEZ YANET', 'V34D', 'asesor'),
('CSEDITHL', 'LOPEZ AGUILAR EDITH', '3RC2', 'asesor'),
('CSMARCEL', 'MANUEL FELIX MARCELA RAQUEL', 'WQS2', 'asesor'),
('CSNOEMIR', 'SANCHEZ RUIZ NOEMI', 'ES2F', 'asesor'),
('CSOLIVAR', 'RUIZ PASCUAL OLIVA', '29DB', 'asesor'),
('CTEDILBU', 'MELO HERNANDEZ EDILBURGA', 'A94B', 'asesor'),
('CTLETICI', 'CASTILLO BAILON LETICIA', 'ASJ4', 'asesor'),
('CUCRISTI', 'RAMIREZ FUENTES ELOINA CRISTINA', 'POIU', 'asesor'),
('CUKARLAH', 'VEGA MENDEZ KARLA', 'LAPX', 'asesor'),
('CWFLORMA', 'SANCHEZ CHAVEZ FLOR MARIA DEL REFUGIO', 'VS2R', 'asesor'),
('CWGLORIA', 'PEREZ PEDROZA GLORIA LETICIA', 'A14V', 'asesor'),
('CXFABIOL', 'PEREZ GASCA FABIOLA', 'SGU3', 'asesor'),
('CXISABEL', 'DIAZ SANCHEZ CLAUDIA ISABEL', 'ADO2', 'asesor'),
('CXJOVITA', 'RANGEL PATIÐO MARIA JOVITA', 'GJDE', 'asesor'),
('CYLANCON', 'TORRES LANCON CLAUDIA', 'KZIR', 'asesor'),
('CYLIZBET', 'GARCIA GONZALEZ LIZBETH', '8DA6', 'asesor'),
('C{ALMCHI', 'AREA DE ALMACEN CHIHUAHUA', 'AYDS', 'asesor'),
('C{CRISTI', 'PEREA OCHOA SUSANA CRISTINA', 'KING', 'asesor'),
('C{ELIDAL', 'BALLESTERO BALLESTERO ELIDA LIZBETH', 'TREN', 'asesor'),
('C{NORMAM', 'MIRANDA REYES NORMA EUNICE', 'DL4R', 'asesor'),
('DIANACHI', 'REYES CHINO DIANA', 'RICH', 'asesor'),
('ELIZABET', 'HUIJON VELAZQUEZ ELIZABETH', '8AH3', 'asesor'),
('ENEDINAW', 'ENEDINA WILLIAMS MENDEZ', '5FWD', 'asesor'),
('FERNANDA', 'MARIA FERNANDA PADILLA GONZALEZ', 'TGX1', 'asesor'),
('geduardo', 'Eduardo Gutierrez', '7362e0ca1dc2e89f230c7407754d18606dad3699c06a834f82e0450853968815', 'administrador'),
('GIOVANAC', 'ZARATE BARAJAS GIOVANNA CRISTINA', 'FRGF', 'asesor'),
('GIOVANNI', 'ARCOS MARTINEZ GIOVANNI OSCAR', 'A8B3', 'asesor'),
('GOLONDRI', 'AREA DE MUESTRARIO GOLONDRINAS', 'MOST', 'asesor'),
('GOMEZCAR', 'GOMEZ GUTIERREZ CAROLINA', 'XCAR', 'asesor'),
('GRACIELA', 'MARTINEZ GONZALEZ GRACIELA', 'A7DB', 'asesor'),
('GUSTABOG', 'GALVAN GONZALEZ GUSTAVO', 'TECO', 'asesor'),
('HUGOGUTI', 'HUGO CONTROL DE CASAS', 'ROSS', 'asesor'),
('IVONESAN', 'VIZARRAGA ANDRADE SANDRA IVONNE', 'A54D', 'asesor'),
('javier', 'javier', '384dac3368de6f658d7bc66e8fd4c8206b91c17a9084498948c7dd6e44d4a055', 'administrador'),
('JOSEFRIA', 'FRIAS IBARRA JOSE LUIS', 'SIAJ', 'asesor'),
('JOSEMANU', 'MORALES GARDUÑO JOSE MANUEL', '45W8', 'asesor'),
('KARENEDI', 'ORTIZ CELIS KEREN EDITH', '617E', 'asesor'),
('KARENLIZ', 'RESENDIZ ELIAS KAREN LIZETH', 'S5FW', 'asesor'),
('LAURAOLA', 'OLALDE RAMIREZ ANA LAURA', 'E25H', 'asesor'),
('LAURARAM', 'RAMIREZ SAUCEDO LAURA', 'R4FC', 'asesor'),
('LEFTINIS', 'CUEVAS MEDRANO LEFTINI SCARLETT', 'C45R', 'asesor'),
('LILIAORT', 'ORTIZ BALDERAS LILIA', '2XV8', 'asesor'),
('LITIZIAI', 'CUEVAS LOPEZ LETICIA IBET', 'AU37', 'asesor'),
('LIZBETHG', 'GUZMAN ZAMUDIO LIZBETH', '5YFA', 'asesor'),
('MARCELAC', 'COVARRUBIAS MARTINEZ MARCELA ELIZABETH', 'AV7E', 'asesor'),
('MARIASAL', 'SALAZAR JUAREZ MARIA ISABEL', '4TFX', 'asesor'),
('MARIATER', 'RAMIREZ COVARRUBIAS MARIA TERESA', 'ERXV', 'asesor'),
('MARIBELR', 'RUPERTO JERONIMO MARIBEL', 'BDF7', 'asesor'),
('MARISOLA', 'DE LA CRUZ ALVAREZ MARISOL', 'CANG', 'asesor'),
('MIGUELAN', 'AGUILAR BENITEZ FRANCISCO MIGUEL ANGEL', 'RKTL', 'asesor'),
('MIRIAMCO', 'MIRIAM EVENTUAL', 'TEMP', 'asesor'),
('MOALMACE', 'HERNANDEZ AYALA ABEL', '27GO', 'asesor'),
('MOBLANDO', 'BLANDO CRUZ NORA', 'DVD6', 'asesor'),
('MOCLAUDI', 'GUTIERREZ RUIZ CLAUDIA ELIZABETH', 'Q8XG', 'asesor'),
('MODANIEL', 'JAIME ESCAMILLA DANIEL', '17SE', 'asesor'),
('MOMARIAN', 'SALAZAR CASTELLANOS MARIANA', 'A03J', 'asesor'),
('MONICAAL', 'LABRA CHAVEZ MONICA ALEJANDRA', 'SY3N', 'asesor'),
('MOPATYMA', 'PATY MACIAS', '14GH', 'asesor'),
('MOSANDRA', 'TREJO VAZQUEZ SANDRA EDITH', '457A', 'asesor'),
('NELLYPAT', 'BALDERAS BUSTOS NELLY PATRICIA', 'FR23', 'asesor'),
('NOLASCOF', 'DEL OLMO NOLASCO FERNANDO', 'SG4S', 'asesor'),
('PCDIANAC', 'DIANA CONTROL DE CASAS', 'AL49', 'asesor'),
('PCENRIQU', 'PEREZ QUINTANA ENRIQUE', 'MALR', 'asesor'),
('PCFEDERI', 'SANCHEZ HERNANDEZ FEDERICO', 'AOC5', 'asesor'),
('PCJUANFE', 'OROZCO COLIN JUAN FELIPE', 'JVFL', 'asesor'),
('PCRICARD', 'GALLARDO RICARDO', 'AILP', 'asesor'),
('PCROSALB', 'ROSALBA CONTROL DE CASAS', 'ELOM', 'asesor'),
('PDFELIPE', 'AMEZQUITA CAMPECHANO JOSE FELIPE', 'PECA', 'asesor'),
('PDJAVIER', 'SOLARES PIÐA JAVIER', 'COMP', 'asesor'),
('PDJOSEOL', 'OLVERA JOSE ', 'AGIL', 'asesor'),
('PDMAHSAN', 'HERNANDEZ SANCHEZ MIGUEL ANGEL', 'MHS2', 'asesor'),
('RICARDOC', 'RICARDO AUDITORIA', 'AUDI', 'asesor'),
('RQPUECEN', 'AREA DE ALMACEN PUEBLA CENTRO', 'REQU', 'asesor'),
('SANDRAIV', 'ESTRADA CERVANTES SANDRA IVETTE', 'A2SR', 'asesor'),
('SANDRAVA', 'VARGAS RUIZ SANDRA', 'GFWR', 'asesor'),
('SAYURIVI', 'SALDIVAR RAMOS SAYURI VIRIDIANA', 'Q78S', 'asesor'),
('SELENAVI', 'CHAN CHIN SELENA VIANEY', 'R3TY', 'asesor'),
('SELENIAM', 'MUÐOZ LOPEZ SELENIA', 'CD4C', 'asesor'),
('SONIAEDI', 'PADILLA FLORES SONIA EDITH', '5ASF', 'asesor'),
('STJAZMIN', 'RUIZ PONCE JAZMIN', '5R9F', 'asesor'),
('STNANCYM', 'GRISELD MURILLO NANCY', 'HD12', 'asesor'),
('STRUTHNI', 'NIETO CHAVEZ RUTH GUADALUPE', 'A82G', 'asesor'),
('SUHEILLE', 'ORNELAS MERAZ SUHEIL LETICIA', 'S7GE', 'asesor'),
('TLAURAUN', 'MAGAÐA DE LA LUZ LAURA', 'XBPZ', 'asesor'),
('TMARGARI', 'MENDOZA LOPEZ MARGARITA', 'CUMB', 'asesor'),
('TNANCYGA', 'HERNANDEZ MORALES NANCY GABRIELA', 'F45D', 'asesor'),
('ULISESOR', 'ORTEGA SAMANO ULISES', 'PRIM', 'asesor'),
('VELAZCOA', 'VELAZQUEZ VELAZCO ARMANDO ENRIQUE', 'T5NJ', 'asesor'),
('VERONICA', 'RODRIGUEZ RAMIREZ VERONICA', 'RWC3', 'asesor'),
('VIGARS36', 'VIGA', 'VIGA', 'asesor'),
('YESENIAR', 'KARLA YESENIA REYES CALDERON', '2383', 'asesor'),
('YOLANDAL', 'LOPEZ MIGUEL YOLANDA', 'R34S', 'asesor');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
