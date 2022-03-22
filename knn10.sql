-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2018 at 06:05 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `knn`
--

-- --------------------------------------------------------

--
-- Table structure for table `bobot`
--

CREATE TABLE IF NOT EXISTS `bobot` (
`id` int(15) NOT NULL,
  `b_jenis` double NOT NULL,
  `b_usia` double NOT NULL,
  `b_jk` double NOT NULL,
  `b_mata_buta` double NOT NULL,
  `b_mata_sayu` double NOT NULL,
  `b_mata_belekan` double NOT NULL,
  `b_terlihat_sakit` double NOT NULL,
  `b_terlihat_kurus` double NOT NULL,
  `b_terlihat_gila` double NOT NULL,
  `b_terlihat_lemah` double NOT NULL,
  `b_kaki_depan` double NOT NULL,
  `b_kaki_belakang` double NOT NULL,
  `b_pincang` double NOT NULL,
  `b_kuping` double NOT NULL,
  `b_tanduk` double NOT NULL,
  `b_gigi` double NOT NULL,
  `b_ekor` double NOT NULL,
  `b_keluar_darah` double NOT NULL,
  `b_bulu` double NOT NULL,
  `b_kuku` double NOT NULL,
  `b_hidung` double NOT NULL,
  `b_kotoran` double NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `bobot`
--

INSERT INTO `bobot` (`id`, `b_jenis`, `b_usia`, `b_jk`, `b_mata_buta`, `b_mata_sayu`, `b_mata_belekan`, `b_terlihat_sakit`, `b_terlihat_kurus`, `b_terlihat_gila`, `b_terlihat_lemah`, `b_kaki_depan`, `b_kaki_belakang`, `b_pincang`, `b_kuping`, `b_tanduk`, `b_gigi`, `b_ekor`, `b_keluar_darah`, `b_bulu`, `b_kuku`, `b_hidung`, `b_kotoran`) VALUES
(1, 0.5, 0.8, 0.8, 0.4, 0.4, 0.5, 0.6, 0.8, 0.4, 0.5, 0.4, 0.5, 0.6, 0.3, 0.4, 0.5, 0.6, 0.4, 0.6, 0.4, 0.5, 0.4);

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
`id` int(11) NOT NULL,
  `pemilik` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `berat` varchar(50) NOT NULL,
  `usia` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `mata_buta` varchar(50) NOT NULL,
  `mata_sayu` varchar(50) NOT NULL,
  `mata_belekan` varchar(50) NOT NULL,
  `terlihat_sakit` varchar(50) NOT NULL,
  `terlihat_kurus` varchar(50) NOT NULL,
  `terlihat_gila` varchar(50) NOT NULL,
  `terlihat_lemah` varchar(50) NOT NULL,
  `kaki_depan` varchar(50) NOT NULL,
  `kaki_belakang` varchar(50) NOT NULL,
  `pincang` varchar(50) NOT NULL,
  `kuping` varchar(50) NOT NULL,
  `tanduk` varchar(50) NOT NULL,
  `gigi` varchar(50) NOT NULL,
  `ekor` varchar(50) NOT NULL,
  `keluar_darah` varchar(50) NOT NULL,
  `bulu` varchar(50) NOT NULL,
  `kuku` varchar(50) NOT NULL,
  `hidung` varchar(50) NOT NULL,
  `kotoran` varchar(50) NOT NULL,
  `kelayakan` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `pemilik`, `jenis`, `berat`, `usia`, `jk`, `mata_buta`, `mata_sayu`, `mata_belekan`, `terlihat_sakit`, `terlihat_kurus`, `terlihat_gila`, `terlihat_lemah`, `kaki_depan`, `kaki_belakang`, `pincang`, `kuping`, `tanduk`, `gigi`, `ekor`, `keluar_darah`, `bulu`, `kuku`, `hidung`, `kotoran`, `kelayakan`) VALUES
(1, 'ADNQ099', 'domba', '25', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', ''),
(9, 'ADNQ200', 'domba', '22', '> = 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Tidak', 'Tidak', '', '', '', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', ''),
(10, 'AA01', 'domba', '22', '> = 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', '', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE IF NOT EXISTS `hasil` (
`id` int(11) NOT NULL,
  `id_data` int(11) NOT NULL,
  `id_pemilik` int(11) NOT NULL,
  `jarak` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id`, `id_data`, `id_pemilik`, `jarak`) VALUES
(1, 1, 1, 0.92233),
(2, 1, 2, 0.886726),
(3, 1, 3, 0.934959),
(4, 1, 4, 0.890977),
(5, 1, 5, 0.944056),
(6, 1, 6, 0.947712),
(7, 1, 7, 0),
(8, 1, 8, 0.953757),
(9, 1, 9, 0.956284),
(10, 1, 10, 0.958549),
(11, 1, 11, 0),
(12, 1, 12, 0.658216),
(13, 1, 13, 0.964126),
(14, 1, 14, 0.965665),
(15, 1, 15, 0.95679),
(16, 1, 16, 0.949407),
(17, 1, 17, 0.969582),
(18, 1, 18, 0.970696),
(19, 1, 19, 0.971731),
(20, 1, 20, 0.942662),
(21, 1, 21, 0.973597),
(22, 1, 22, 0.974441),
(23, 1, 23, 0.975232),
(24, 1, 24, 0.975976),
(25, 1, 25, 0.976676),
(26, 1, 26, 0.968839),
(27, 1, 27, 0.977961),
(28, 1, 28, 0.978552),
(29, 1, 29, 0),
(30, 1, 30, 0.979644),
(31, 1, 31, 0.980149),
(32, 1, 32, 0.576755),
(33, 1, 33, 0.960284),
(34, 1, 34, 0.970439),
(35, 1, 35, 0.971106),
(36, 1, 36, 0.971744),
(37, 1, 37, 0.982721),
(38, 1, 38, 0.972939),
(39, 1, 39, 0.983437),
(40, 1, 40, 0.983773),
(41, 1, 41, 0.984095),
(42, 1, 42, 0.984405),
(43, 1, 43, 0.984704),
(44, 1, 44, 0.984991),
(45, 1, 45, 0.985267),
(46, 1, 46, 0.985533),
(47, 1, 47, 0.98579),
(48, 1, 48, 0.986038),
(49, 1, 49, 0.986278),
(50, 1, 50, 0.986509),
(51, 1, 51, 0.986733),
(52, 1, 52, 0.558728),
(53, 1, 53, 0.987159),
(54, 1, 54, 0.987362),
(55, 1, 55, 0.987558),
(56, 1, 56, 0.98392),
(57, 1, 57, 0.984163),
(58, 1, 58, 0.984398),
(59, 1, 59, 0.984627),
(60, 1, 60, 0.98557),
(61, 1, 61, 0.981792),
(62, 1, 62, 0.98878),
(63, 1, 63, 0.988935),
(64, 1, 64, 0.989086),
(65, 1, 65, 0.989233),
(66, 1, 66, 0.542098),
(67, 9, 1, 0.951456),
(68, 9, 2, 0.79823),
(69, 9, 3, 0.813008),
(70, 9, 4, 0.764662),
(71, 9, 5, 0.769231),
(72, 9, 6, 0.751634),
(73, 9, 7, 0),
(74, 9, 8, 0.74104),
(75, 9, 9, 0.727869),
(76, 9, 10, 0.699482),
(77, 9, 11, 0),
(78, 9, 12, 0.95493),
(79, 9, 13, 0.686996),
(80, 9, 14, 0.665236),
(81, 9, 15, 0.648148),
(82, 9, 16, 0.64585),
(83, 9, 17, 0.658555),
(84, 9, 18, 0.641026),
(85, 9, 19, 0.636042),
(86, 9, 20, 0.612287),
(87, 9, 21, 0.627063),
(88, 9, 22, 0.623003),
(89, 9, 23, 0.619195),
(90, 9, 24, 0.615616),
(91, 9, 25, 0.612245),
(92, 9, 26, 0.600567),
(93, 9, 27, 0.606061),
(94, 9, 28, 0.603217),
(95, 9, 29, 0),
(96, 9, 30, 0.597964),
(97, 9, 31, 0.595533),
(98, 9, 32, 0.971913),
(99, 9, 33, 0.577778),
(100, 9, 34, 0.585219),
(101, 9, 35, 0.583296),
(102, 9, 36, 0.581457),
(103, 9, 37, 0.583153),
(104, 9, 38, 0.578013),
(105, 9, 39, 0.596273),
(106, 9, 40, 0.59432),
(107, 9, 41, 0.592445),
(108, 9, 42, 0.590643),
(109, 9, 43, 0.58891),
(110, 9, 44, 0.587242),
(111, 9, 45, 0.585635),
(112, 9, 46, 0.584087),
(113, 9, 47, 0.582593),
(114, 9, 48, 0.581152),
(115, 9, 49, 0.57976),
(116, 9, 50, 0.578415),
(117, 9, 51, 0.577114),
(118, 9, 52, 0.995922),
(119, 9, 53, 0.566934),
(120, 9, 54, 0.57346),
(121, 9, 55, 0.572317),
(122, 9, 56, 0.567381),
(123, 9, 57, 0.566365),
(124, 9, 58, 0.565379),
(125, 9, 59, 0.564422),
(126, 9, 60, 0.564214),
(127, 9, 61, 0.559317),
(128, 9, 62, 0.565217),
(129, 9, 63, 0.564315),
(130, 9, 64, 0.563438),
(131, 9, 65, 0.562584),
(132, 9, 66, 0.990969),
(133, 10, 1, 1),
(134, 10, 2, 0.886726),
(135, 10, 3, 0.934959),
(136, 10, 4, 0.915038),
(137, 10, 5, 0.944056),
(138, 10, 6, 0.947712),
(139, 10, 7, 0),
(140, 10, 8, 0.972254),
(141, 10, 9, 0.97377),
(142, 10, 10, 0.958549),
(143, 10, 11, 0),
(144, 10, 12, 0.673239),
(145, 10, 13, 0.978475),
(146, 10, 14, 0.965665),
(147, 10, 15, 0.95679),
(148, 10, 16, 0.962055),
(149, 10, 17, 0.981749),
(150, 10, 18, 0.970696),
(151, 10, 19, 0.971731),
(152, 10, 20, 0.953584),
(153, 10, 21, 0.973597),
(154, 10, 22, 0.974441),
(155, 10, 23, 0.975232),
(156, 10, 24, 0.975976),
(157, 10, 25, 0.976676),
(158, 10, 26, 0.968839),
(159, 10, 27, 0.977961),
(160, 10, 28, 0.978552),
(161, 10, 29, 0),
(162, 10, 30, 0.979644),
(163, 10, 31, 0.980149),
(164, 10, 32, 0.584504),
(165, 10, 33, 0.967849),
(166, 10, 34, 0.977829),
(167, 10, 35, 0.97833),
(168, 10, 36, 0.978808),
(169, 10, 37, 0.982721),
(170, 10, 38, 0.979704),
(171, 10, 39, 1),
(172, 10, 40, 1),
(173, 10, 41, 1),
(174, 10, 42, 1),
(175, 10, 43, 1),
(176, 10, 44, 1),
(177, 10, 45, 1),
(178, 10, 46, 1),
(179, 10, 47, 1),
(180, 10, 48, 1),
(181, 10, 49, 1),
(182, 10, 50, 1),
(183, 10, 51, 1),
(184, 10, 52, 0.571778),
(185, 10, 53, 0.992295),
(186, 10, 54, 1),
(187, 10, 55, 1),
(188, 10, 56, 0.996172),
(189, 10, 57, 0.996229),
(190, 10, 58, 0.996285),
(191, 10, 59, 0.99634),
(192, 10, 60, 0.997114),
(193, 10, 61, 0.993172),
(194, 10, 62, 1),
(195, 10, 63, 1),
(196, 10, 64, 1),
(197, 10, 65, 1),
(198, 10, 66, 0.552722);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE IF NOT EXISTS `jenis` (
`id` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `jenis`) VALUES
(1, 'domba'),
(2, 'kambing');

-- --------------------------------------------------------

--
-- Table structure for table `jk`
--

CREATE TABLE IF NOT EXISTS `jk` (
`id` int(11) NOT NULL,
  `jk` enum('jantan','betina') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jk`
--

INSERT INTO `jk` (`id`, `jk`) VALUES
(1, 'jantan'),
(2, 'betina');

-- --------------------------------------------------------

--
-- Table structure for table `kedekatan`
--

CREATE TABLE IF NOT EXISTS `kedekatan` (
`id` int(11) NOT NULL,
  `id_data` int(11) NOT NULL,
  `id_pemilik` int(11) NOT NULL,
  `jenis` double NOT NULL,
  `berat` double NOT NULL,
  `usia` double NOT NULL,
  `jk` double NOT NULL,
  `mata_buta` double NOT NULL,
  `mata_sayu` double NOT NULL,
  `mata_belekan` double NOT NULL,
  `terlihat_sakit` double NOT NULL,
  `terlihat_kurus` double NOT NULL,
  `terlihat_gila` double NOT NULL,
  `terlihat_lemah` double NOT NULL,
  `kaki_depan` double NOT NULL,
  `kaki_belakang` double NOT NULL,
  `pincang` double NOT NULL,
  `kuping` double NOT NULL,
  `tanduk` double NOT NULL,
  `gigi` double NOT NULL,
  `ekor` double NOT NULL,
  `keluar_darah` double NOT NULL,
  `bulu` double NOT NULL,
  `kuku` double NOT NULL,
  `hidung` double NOT NULL,
  `kotoran` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kedekatan`
--

INSERT INTO `kedekatan` (`id`, `id_data`, `id_pemilik`, `jenis`, `berat`, `usia`, `jk`, `mata_buta`, `mata_sayu`, `mata_belekan`, `terlihat_sakit`, `terlihat_kurus`, `terlihat_gila`, `terlihat_lemah`, `kaki_depan`, `kaki_belakang`, `pincang`, `kuping`, `tanduk`, `gigi`, `ekor`, `keluar_darah`, `bulu`, `kuku`, `hidung`, `kotoran`) VALUES
(1, 10, 1, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 10, 2, 1, 22, 0, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 10, 3, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 10, 4, 1, 22, 0.4, 1, 1, 0.5, 0.5, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0.5, 1, 1),
(5, 10, 5, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(6, 10, 6, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(7, 10, 7, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 10, 8, 1, 22, 0.4, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 10, 9, 1, 22, 0.4, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(10, 10, 10, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 10, 11, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 10, 12, 1, 22, 0.4, 0.4, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(13, 10, 13, 1, 22, 0.4, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(14, 10, 14, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 10, 15, 0.5, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 10, 16, 1, 22, 0.4, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(17, 10, 17, 1, 22, 0.4, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(18, 10, 18, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 10, 19, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(20, 10, 20, 1, 22, 0.4, 0.4, 1, 1, 1, 1, 0.5, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(21, 10, 21, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(22, 10, 22, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(23, 10, 23, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(24, 10, 24, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 10, 25, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(26, 10, 26, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0.5, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(27, 10, 27, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 10, 28, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(29, 10, 29, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 10, 30, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 10, 31, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(32, 10, 32, 1, 22, 0.4, 0.4, 1, 0.5, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(33, 10, 33, 1, 22, 0.4, 0.4, 1, 1, 1, 1, 0.5, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(34, 10, 34, 1, 22, 0.4, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(35, 10, 35, 1, 22, 0.4, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(36, 10, 36, 1, 22, 0.4, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(37, 10, 37, 1, 22, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(38, 10, 38, 1, 22, 0.4, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(39, 10, 39, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(40, 10, 40, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(41, 10, 41, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(42, 10, 42, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(43, 10, 43, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(44, 10, 44, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(45, 10, 45, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(46, 10, 46, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(47, 10, 47, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(48, 10, 48, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(49, 10, 49, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(50, 10, 50, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(51, 10, 51, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(52, 10, 52, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0.5, 1),
(53, 10, 53, 1, 22, 0.4, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(54, 10, 54, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(55, 10, 55, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(56, 10, 56, 0.5, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(57, 10, 57, 0.5, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(58, 10, 58, 0.5, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(59, 10, 59, 0.5, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(60, 10, 60, 1, 22, 1, 1, 1, 0.5, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(61, 10, 61, 1, 22, 1, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(62, 10, 62, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(63, 10, 63, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(64, 10, 64, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(65, 10, 65, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(66, 10, 66, 1, 22, 1, 0.4, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0.5),
(67, 1, 1, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(68, 1, 2, 1, 25, 0, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(69, 1, 3, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(70, 1, 4, 1, 25, 0, 1, 1, 0.5, 0.5, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0.5, 1, 1),
(71, 1, 5, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(72, 1, 6, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(73, 1, 7, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(74, 1, 8, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(75, 1, 9, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(76, 1, 10, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(77, 1, 11, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(78, 1, 12, 1, 25, 0, 0.4, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(79, 1, 13, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(80, 1, 14, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(81, 1, 15, 0.5, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(82, 1, 16, 1, 25, 0, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(83, 1, 17, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(84, 1, 18, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(85, 1, 19, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(86, 1, 20, 1, 25, 0, 0.4, 1, 1, 1, 1, 0.5, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(87, 1, 21, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(88, 1, 22, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(89, 1, 23, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(90, 1, 24, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(91, 1, 25, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(92, 1, 26, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0.5, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(93, 1, 27, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(94, 1, 28, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(95, 1, 29, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(96, 1, 30, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(97, 1, 31, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(98, 1, 32, 1, 25, 0, 0.4, 1, 0.5, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(99, 1, 33, 1, 25, 0, 0.4, 1, 1, 1, 1, 0.5, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(100, 1, 34, 1, 25, 0, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(101, 1, 35, 1, 25, 0, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(102, 1, 36, 1, 25, 0, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(103, 1, 37, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(104, 1, 38, 1, 25, 0, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(105, 1, 39, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(106, 1, 40, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(107, 1, 41, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(108, 1, 42, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(109, 1, 43, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(110, 1, 44, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(111, 1, 45, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(112, 1, 46, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(113, 1, 47, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(114, 1, 48, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(115, 1, 49, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(116, 1, 50, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(117, 1, 51, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(118, 1, 52, 1, 25, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0.5, 1),
(119, 1, 53, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(120, 1, 54, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(121, 1, 55, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(122, 1, 56, 0.5, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(123, 1, 57, 0.5, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(124, 1, 58, 0.5, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(125, 1, 59, 0.5, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(126, 1, 60, 1, 25, 0, 1, 1, 0.5, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(127, 1, 61, 1, 25, 0, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(128, 1, 62, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(129, 1, 63, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(130, 1, 64, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(131, 1, 65, 1, 25, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(132, 1, 66, 1, 25, 0, 0.4, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0.5),
(133, 9, 1, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(134, 9, 2, 1, 22, 0, 0.4, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(135, 9, 3, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(136, 9, 4, 1, 22, 0.4, 1, 1, 0.5, 0.5, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0.5, 1, 1),
(137, 9, 5, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(138, 9, 6, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(139, 9, 7, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(140, 9, 8, 1, 22, 0.4, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(141, 9, 9, 1, 22, 0.4, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(142, 9, 10, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(143, 9, 11, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(144, 9, 12, 1, 22, 0.4, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(145, 9, 13, 1, 22, 0.4, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(146, 9, 14, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(147, 9, 15, 0.5, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(148, 9, 16, 1, 22, 0.4, 0.4, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(149, 9, 17, 1, 22, 0.4, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(150, 9, 18, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(151, 9, 19, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(152, 9, 20, 1, 22, 0.4, 0.4, 1, 1, 1, 0.5, 0.5, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(153, 9, 21, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(154, 9, 22, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(155, 9, 23, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(156, 9, 24, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(157, 9, 25, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(158, 9, 26, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 0.5, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(159, 9, 27, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(160, 9, 28, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(161, 9, 29, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(162, 9, 30, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(163, 9, 31, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(164, 9, 32, 1, 22, 0.4, 0.4, 1, 0.5, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(165, 9, 33, 1, 22, 0.4, 0.4, 1, 1, 1, 0.5, 0.5, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(166, 9, 34, 1, 22, 0.4, 0.4, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(167, 9, 35, 1, 22, 0.4, 0.4, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(168, 9, 36, 1, 22, 0.4, 0.4, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(169, 9, 37, 1, 22, 0, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(170, 9, 38, 1, 22, 0.4, 0.4, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(171, 9, 39, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(172, 9, 40, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(173, 9, 41, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(174, 9, 42, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(175, 9, 43, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(176, 9, 44, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(177, 9, 45, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(178, 9, 46, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(179, 9, 47, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(180, 9, 48, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(181, 9, 49, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(182, 9, 50, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(183, 9, 51, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(184, 9, 52, 1, 22, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0.5, 1),
(185, 9, 53, 1, 22, 0.4, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(186, 9, 54, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(187, 9, 55, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(188, 9, 56, 0.5, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(189, 9, 57, 0.5, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(190, 9, 58, 0.5, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(191, 9, 59, 0.5, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(192, 9, 60, 1, 22, 1, 1, 1, 0.5, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(193, 9, 61, 1, 22, 1, 0.4, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(194, 9, 62, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(195, 9, 63, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(196, 9, 64, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(197, 9, 65, 1, 22, 1, 1, 1, 1, 1, 0.5, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(198, 9, 66, 1, 22, 1, 0.4, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `k_bulu`
--

CREATE TABLE IF NOT EXISTS `k_bulu` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_bulu`
--

INSERT INTO `k_bulu` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_ekor`
--

CREATE TABLE IF NOT EXISTS `k_ekor` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_ekor`
--

INSERT INTO `k_ekor` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_gigi`
--

CREATE TABLE IF NOT EXISTS `k_gigi` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_gigi`
--

INSERT INTO `k_gigi` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_hidung`
--

CREATE TABLE IF NOT EXISTS `k_hidung` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_hidung`
--

INSERT INTO `k_hidung` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_jenis`
--

CREATE TABLE IF NOT EXISTS `k_jenis` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_jenis`
--

INSERT INTO `k_jenis` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'domba', 'domba', 1),
(2, 'domba', 'kambing', 0.5),
(3, 'kambing', 'domba', 0.5),
(4, 'kambing', 'kambing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_jk`
--

CREATE TABLE IF NOT EXISTS `k_jk` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_jk`
--

INSERT INTO `k_jk` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'jantan', 'jantan', 1),
(2, 'jantan', 'betina', 0.4),
(3, 'betina', 'jantan', 0.4),
(4, 'betina', 'betina', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_kaki_belakang`
--

CREATE TABLE IF NOT EXISTS `k_kaki_belakang` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_kaki_belakang`
--

INSERT INTO `k_kaki_belakang` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_kaki_depan`
--

CREATE TABLE IF NOT EXISTS `k_kaki_depan` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_kaki_depan`
--

INSERT INTO `k_kaki_depan` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_keluar_darah`
--

CREATE TABLE IF NOT EXISTS `k_keluar_darah` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_keluar_darah`
--

INSERT INTO `k_keluar_darah` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_kotoran`
--

CREATE TABLE IF NOT EXISTS `k_kotoran` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_kotoran`
--

INSERT INTO `k_kotoran` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_kuku`
--

CREATE TABLE IF NOT EXISTS `k_kuku` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_kuku`
--

INSERT INTO `k_kuku` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_kuping`
--

CREATE TABLE IF NOT EXISTS `k_kuping` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_kuping`
--

INSERT INTO `k_kuping` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_mata_belekan`
--

CREATE TABLE IF NOT EXISTS `k_mata_belekan` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_mata_belekan`
--

INSERT INTO `k_mata_belekan` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_mata_buta`
--

CREATE TABLE IF NOT EXISTS `k_mata_buta` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_mata_buta`
--

INSERT INTO `k_mata_buta` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_mata_sayu`
--

CREATE TABLE IF NOT EXISTS `k_mata_sayu` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_mata_sayu`
--

INSERT INTO `k_mata_sayu` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_pincang`
--

CREATE TABLE IF NOT EXISTS `k_pincang` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_pincang`
--

INSERT INTO `k_pincang` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_tanduk`
--

CREATE TABLE IF NOT EXISTS `k_tanduk` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_tanduk`
--

INSERT INTO `k_tanduk` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_terlihat_gila`
--

CREATE TABLE IF NOT EXISTS `k_terlihat_gila` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_terlihat_gila`
--

INSERT INTO `k_terlihat_gila` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_terlihat_kurus`
--

CREATE TABLE IF NOT EXISTS `k_terlihat_kurus` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_terlihat_kurus`
--

INSERT INTO `k_terlihat_kurus` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_terlihat_lemah`
--

CREATE TABLE IF NOT EXISTS `k_terlihat_lemah` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_terlihat_lemah`
--

INSERT INTO `k_terlihat_lemah` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_terlihat_sakit`
--

CREATE TABLE IF NOT EXISTS `k_terlihat_sakit` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_terlihat_sakit`
--

INSERT INTO `k_terlihat_sakit` (`id`, `n1`, `n2`, `kd`) VALUES
(1, 'Ya', 'Ya', 1),
(2, 'Ya', 'Tidak', 0.5),
(3, 'Tidak', 'Ya', 0.5),
(4, 'Tidak', 'Tidak', 1);

-- --------------------------------------------------------

--
-- Table structure for table `k_usia`
--

CREATE TABLE IF NOT EXISTS `k_usia` (
`id` int(11) NOT NULL,
  `n1` varchar(50) NOT NULL,
  `n2` varchar(50) NOT NULL,
  `kd` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `k_usia`
--

INSERT INTO `k_usia` (`id`, `n1`, `n2`, `kd`) VALUES
(1, '< 6 Bulan', '< 6 Bulan', 1),
(2, '< 6 Bulan', '> = 6 Bulan dan < 12 Bulan', 0.4),
(3, '< 6 Bulan', '>= 12 Bulan', 0.4),
(4, '> = 6 Bulan dan < 12 Bulan', '< 6 Bulan', 0.4),
(5, '> = 6 Bulan dan < 12 Bulan', '> = 6 Bulan dan < 12 Bulan', 1),
(6, '> = 6 Bulan dan < 12 Bulan', '>= 12 Bulan', 0.4),
(7, '> = 12 Bulan', '< 6 Bulan', 0.4),
(8, '> = 12 Bulan', '> = 6 Bulan dan < 12 Bulan', 0.4),
(9, '> = 12 Bulan', '> = 12 Bulan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
`id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `urutan` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`) VALUES
(35, 'Hasil Perhitungan', '?module=hasil', '', '', 'Y', 'user', 'Y', 18),
(19, 'Nilai Kedekatan', '?module=nilai_kedekatan', '', '', 'Y', 'user', 'Y', 15),
(4, 'Bobot', '?module=bobot', '', '', 'N', 'user', 'Y', 4),
(1, 'Data Kasus', '?module=data', '', '', 'N', 'user', 'Y', 13),
(18, 'Data Sampel', '?module=sampel', '', '', 'N', 'user', 'Y', 12);

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE IF NOT EXISTS `penyakit` (
`id` int(11) NOT NULL,
  `penyakit` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `penyakit`) VALUES
(1, 'sehat'),
(2, 'sakit');

-- --------------------------------------------------------

--
-- Table structure for table `sampel`
--

CREATE TABLE IF NOT EXISTS `sampel` (
`id` int(11) NOT NULL,
  `pemilik` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `berat` varchar(50) NOT NULL,
  `usia` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `mata_buta` varchar(50) NOT NULL,
  `mata_sayu` varchar(50) NOT NULL,
  `mata_belekan` varchar(50) NOT NULL,
  `terlihat_sakit` varchar(50) NOT NULL,
  `terlihat_kurus` varchar(50) NOT NULL,
  `terlihat_gila` varchar(50) NOT NULL,
  `terlihat_lemah` varchar(50) NOT NULL,
  `kaki_depan` varchar(50) NOT NULL,
  `kaki_belakang` varchar(50) NOT NULL,
  `pincang` varchar(50) NOT NULL,
  `kuping` varchar(50) NOT NULL,
  `tanduk` varchar(50) NOT NULL,
  `gigi` varchar(50) NOT NULL,
  `ekor` varchar(50) NOT NULL,
  `keluar_darah` varchar(50) NOT NULL,
  `bulu` varchar(50) NOT NULL,
  `kuku` varchar(50) NOT NULL,
  `hidung` varchar(50) NOT NULL,
  `kotoran` varchar(50) NOT NULL,
  `kelayakan` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sampel`
--

INSERT INTO `sampel` (`id`, `pemilik`, `jenis`, `berat`, `usia`, `jk`, `mata_buta`, `mata_sayu`, `mata_belekan`, `terlihat_sakit`, `terlihat_kurus`, `terlihat_gila`, `terlihat_lemah`, `kaki_depan`, `kaki_belakang`, `pincang`, `kuping`, `tanduk`, `gigi`, `ekor`, `keluar_darah`, `bulu`, `kuku`, `hidung`, `kotoran`, `kelayakan`) VALUES
(1, 'ADNQ033', 'domba', '21', '> = 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(2, 'ADNQ042', 'domba', '19', '>= 12 Bulan', 'betina', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(3, 'ADNQ060', 'domba', '24', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(4, 'ADNQ066', 'domba', '19', '> = 6 Bulan dan < 12 Bulan', 'jantan', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Tidak', 'Tidak', 'Tidak'),
(5, 'ADNQ070', 'domba', '21', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(6, 'AJAQ0007', 'domba', '29', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(8, 'AJAQ0009', 'domba', '17', '> = 6 Bulan dan < 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(9, 'AJAQ0016', 'domba', '19', '> = 6 Bulan dan < 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(10, 'AJAQ0020', 'domba', '30', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(12, 'AJAQ0025', 'domba', '18', '> = 6 Bulan dan < 12 Bulan', 'betina', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(13, 'AJAQ0030', 'domba', '15', '> = 6 Bulan dan < 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(14, 'AJAQ0036', 'domba', '25', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(15, 'AJAQ0039', 'kambing', '22', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(16, 'ARIQ0001', 'domba', '14', '> = 6 Bulan dan < 12 Bulan', 'betina', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(17, 'ARIQ0003', 'domba', '15', '> = 6 Bulan dan < 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(18, 'ARIQ0004', 'domba', '28', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(19, 'ARIQ0007', 'domba', '27', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(20, 'ARIQ0013', 'domba', '16', '> = 6 Bulan dan < 12 Bulan', 'betina', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(21, 'ARIQ0021', 'domba', '26', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(22, 'ARIQ0023', 'domba', '29', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(23, 'ARIQ0031', 'domba', '32', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(24, 'ARIQ0043', 'domba', '27', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(25, 'ARIQ0060', 'domba', '29', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(26, 'ARIQ0065', 'domba', '23', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(27, 'ARIQ0071', 'domba', '29', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(28, 'ARIQ0072', 'domba', '32', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(30, 'ARIQ0076', 'domba', '30', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(31, 'ARIQ0083', 'domba', '26', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(32, 'ARIQ0116', 'domba', '18', '> = 6 Bulan dan < 12 Bulan', 'betina', 'Tidak', 'Ya', 'Tidak', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(33, 'ARIQ0117', 'domba', '17', '> = 6 Bulan dan < 12 Bulan', 'betina', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(34, 'ARIQ0119', 'domba', '18', '> = 6 Bulan dan < 12 Bulan', 'betina', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(35, 'ARIQ0120', 'domba', '18', '> = 6 Bulan dan < 12 Bulan', 'betina', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(36, 'ARIQ0124', 'domba', '18', '> = 6 Bulan dan < 12 Bulan', 'betina', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(37, 'ARIQ0362', 'domba', '20', '>= 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(38, 'ARIQ0369', 'domba', '19', '> = 6 Bulan dan < 12 Bulan', 'betina', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(39, 'ATEQ0022', 'Domba', '25', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(40, 'ATEQ0037', 'Domba', '24', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(41, 'GRTQ0007', 'Domba', '34', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(42, 'GRTQ0009', 'Domba', '34', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(43, 'GRTQ0017', 'Domba', '30', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(44, 'GRTQ0020', 'Domba', '29', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(45, 'GRTQ0023', 'Domba', '26', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(46, 'GRTQ0026', 'Domba', '30', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(47, 'GRTQ0031', 'Domba', '25', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(48, 'GRTQ0038', 'Domba', '30', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(49, 'GRTQ0051', 'Domba', '28', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(50, 'GRTQ0052', 'Domba', '27', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(51, 'GRTQ0070', 'Domba', '26', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(52, 'GRTQ0072', 'Domba', '25', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Tidak', 'Tidak'),
(53, 'GRTQ0073', 'Domba', '16', '> = 6 Bulan dan < 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(54, 'GRTQ0087', 'Domba', '25', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(55, 'GRTQ0089', 'Domba', '30', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(56, 'GRTQ0102', 'Kambing', '22', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(57, 'GRTQ0109', 'Kambing', '28', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(58, 'GRTQ0120', 'Kambing', '25', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(59, 'GRTQ0125', 'Kambing', '29', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(60, 'PRIQ0009', 'Domba', '21', '> = 12 Bulan', 'Jantan', 'Tidak', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(61, 'PRIQ0010', 'Domba', '19', '> = 12 Bulan', 'Betina', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(62, 'PRIQ0013', 'Domba', '25', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(63, 'PRIQ0014', 'Domba', '30', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(64, 'PRIQ0016', 'Domba', '20', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(65, 'PRIQ0017', 'Domba', '20', '> = 12 Bulan', 'Jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya'),
(66, 'PRIQ0018', 'Domba', '19', '> = 12 Bulan', 'Betina', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Tidak'),
(67, 'PRIQ0020', 'Domba', '19', '> = 12 Bulan', 'Betina', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(68, 'PRIQ0021', 'domba', '20', '> = 6 Bulan dan < 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Tidak', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak'),
(69, 'ADNQ104', 'domba', '19,9', '> = 6 Bulan dan < 12 Bulan', 'jantan', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', 'Ya', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak', 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Fajri Fathurrahman', 'fajri@student.uinsgd.ac.id', '082317327321', 'admin', 'N'),
('fajri', '437eb04136c59d226f14527f52726341', 'Fajri Fathurrahman', 'fajri.ijrun@gmail.com', '081222387938', 'user', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `usia`
--

CREATE TABLE IF NOT EXISTS `usia` (
`id` int(11) NOT NULL,
  `usia` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usia`
--

INSERT INTO `usia` (`id`, `usia`) VALUES
(1, 'dewasa'),
(2, 'muda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bobot`
--
ALTER TABLE `bobot`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jk`
--
ALTER TABLE `jk`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kedekatan`
--
ALTER TABLE `kedekatan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_bulu`
--
ALTER TABLE `k_bulu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_ekor`
--
ALTER TABLE `k_ekor`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_gigi`
--
ALTER TABLE `k_gigi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_hidung`
--
ALTER TABLE `k_hidung`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_jenis`
--
ALTER TABLE `k_jenis`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_jk`
--
ALTER TABLE `k_jk`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_kaki_belakang`
--
ALTER TABLE `k_kaki_belakang`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_kaki_depan`
--
ALTER TABLE `k_kaki_depan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_keluar_darah`
--
ALTER TABLE `k_keluar_darah`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_kotoran`
--
ALTER TABLE `k_kotoran`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_kuku`
--
ALTER TABLE `k_kuku`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_kuping`
--
ALTER TABLE `k_kuping`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_mata_belekan`
--
ALTER TABLE `k_mata_belekan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_mata_buta`
--
ALTER TABLE `k_mata_buta`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_mata_sayu`
--
ALTER TABLE `k_mata_sayu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_pincang`
--
ALTER TABLE `k_pincang`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_tanduk`
--
ALTER TABLE `k_tanduk`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_terlihat_gila`
--
ALTER TABLE `k_terlihat_gila`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_terlihat_kurus`
--
ALTER TABLE `k_terlihat_kurus`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_terlihat_lemah`
--
ALTER TABLE `k_terlihat_lemah`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_terlihat_sakit`
--
ALTER TABLE `k_terlihat_sakit`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k_usia`
--
ALTER TABLE `k_usia`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
 ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sampel`
--
ALTER TABLE `sampel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `usia`
--
ALTER TABLE `usia`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bobot`
--
ALTER TABLE `bobot`
MODIFY `id` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=199;
--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jk`
--
ALTER TABLE `jk`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kedekatan`
--
ALTER TABLE `kedekatan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=199;
--
-- AUTO_INCREMENT for table `k_bulu`
--
ALTER TABLE `k_bulu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_ekor`
--
ALTER TABLE `k_ekor`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_gigi`
--
ALTER TABLE `k_gigi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_hidung`
--
ALTER TABLE `k_hidung`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_jenis`
--
ALTER TABLE `k_jenis`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_jk`
--
ALTER TABLE `k_jk`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_kaki_belakang`
--
ALTER TABLE `k_kaki_belakang`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_kaki_depan`
--
ALTER TABLE `k_kaki_depan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_keluar_darah`
--
ALTER TABLE `k_keluar_darah`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_kotoran`
--
ALTER TABLE `k_kotoran`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_kuku`
--
ALTER TABLE `k_kuku`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_kuping`
--
ALTER TABLE `k_kuping`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_mata_belekan`
--
ALTER TABLE `k_mata_belekan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_mata_buta`
--
ALTER TABLE `k_mata_buta`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_mata_sayu`
--
ALTER TABLE `k_mata_sayu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_pincang`
--
ALTER TABLE `k_pincang`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_tanduk`
--
ALTER TABLE `k_tanduk`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_terlihat_gila`
--
ALTER TABLE `k_terlihat_gila`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_terlihat_kurus`
--
ALTER TABLE `k_terlihat_kurus`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_terlihat_lemah`
--
ALTER TABLE `k_terlihat_lemah`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_terlihat_sakit`
--
ALTER TABLE `k_terlihat_sakit`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `k_usia`
--
ALTER TABLE `k_usia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sampel`
--
ALTER TABLE `sampel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `usia`
--
ALTER TABLE `usia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
