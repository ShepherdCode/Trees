-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: db756488630.db.1and1.com
-- Generation Time: Apr 18, 2019 at 02:55 AM
-- Server version: 5.5.60-0+deb7u1-log
-- PHP Version: 7.0.33-0+deb9u3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db756488630`
--
CREATE DATABASE IF NOT EXISTS `db756488630` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `db756488630`;

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `donor_id` int(11) NOT NULL,
  `donor` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`donor_id`, `donor`) VALUES
(1, 'None'),
(2, '2016 Communitree');

-- --------------------------------------------------------

--
-- Table structure for table `genus`
--

CREATE TABLE `genus` (
  `genus_id` int(11) NOT NULL,
  `genus_name` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `genus`
--

INSERT INTO `genus` (`genus_id`, `genus_name`) VALUES
(1, 'Abies'),
(2, 'Acer'),
(3, 'Amelanchier'),
(4, 'Betula'),
(5, 'Carpinifolia'),
(6, 'Carya'),
(7, 'Cedrus'),
(8, 'Celtis'),
(9, 'Cercis'),
(10, 'Cornus'),
(11, 'Fraxinus'),
(12, 'Ginkgo'),
(13, 'Gleditsia'),
(14, 'Juglans'),
(15, 'Lagerstroemia'),
(16, 'Magnolia'),
(17, 'Malus'),
(18, 'Morus'),
(19, 'Picea'),
(20, 'Platanus'),
(21, 'Prunus'),
(22, 'Pyrus'),
(23, 'Quercus'),
(24, 'Styphnolobium'),
(25, 'Styrax'),
(26, 'Tsuga'),
(27, 'Ulmus');

-- --------------------------------------------------------

--
-- Table structure for table `memorials`
--

CREATE TABLE `memorials` (
  `tree_id` int(11) NOT NULL,
  `recipient` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `memorials`
--

INSERT INTO `memorials` (`tree_id`, `recipient`) VALUES
(91, 'Mrs. Carl Bell'),
(114, 'Mr. Parel Saab'),
(235, '1996 AD Nursing Class'),
(236, 'Lita E. Trayer'),
(240, 'Fr. Gordon Slonaker');

-- --------------------------------------------------------

--
-- Table structure for table `species`
--

CREATE TABLE `species` (
  `species_id` int(11) NOT NULL,
  `species_name` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `genus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `species`
--

INSERT INTO `species` (`species_id`, `species_name`, `genus_id`) VALUES
(1, 'sp.', 1),
(2, 'sp.', 10),
(3, 'sp.', 4),
(4, 'sp.', 15),
(5, 'sp.', 3),
(6, 'sp.', 5),
(7, 'sp.', 11),
(8, 'abies', 19),
(9, 'alba', 18),
(10, 'americana', 11),
(11, 'atlantica', 7),
(12, 'avium', 21),
(13, 'biloba', 12),
(14, 'calleryana', 22),
(15, 'canadensis', 9),
(16, 'canadensis', 26),
(17, 'coccinea', 23),
(18, 'grandiflora', 16),
(19, 'griseum', 2),
(20, 'hopa', 17),
(21, 'illinoinensis', 6),
(22, 'japonicum', 24),
(23, 'japonicus', 25),
(24, 'muehlenbergii', 23),
(25, 'negundo', 2),
(26, 'nigra', 4),
(27, 'nigra', 14),
(28, 'nigrum', 2),
(29, 'occidentalis', 8),
(30, 'occidentalis', 20),
(31, 'palmatum', 2),
(32, 'papyrifera', 4),
(33, 'parvifolia', 27),
(34, 'pennsylvanica', 11),
(35, 'phellos', 23),
(36, 'pumila', 27),
(37, 'rubens', 19),
(38, 'rubra', 23),
(39, 'rubrum', 2),
(40, 'saccharinum', 2),
(41, 'saccharum', 2),
(42, 'serotinia', 21),
(43, 'soulangeana', 16),
(44, 'subhirtella', 21),
(45, 'triacanthos', 13),
(46, 'velutina', 23);

-- --------------------------------------------------------

--
-- Table structure for table `tree_details`
--

CREATE TABLE `tree_details` (
  `tree_id` int(11) NOT NULL,
  `campus` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `common_name` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `dbh` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `genus` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `species` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `memorial` varchar(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `donated` varchar(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `donor_id` int(11) NOT NULL DEFAULT '1',
  `photo_id` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tree_details`
--

INSERT INTO `tree_details` (`tree_id`, `campus`, `common_name`, `dbh`, `height`, `genus`, `species`, `memorial`, `donated`, `donor_id`, `photo_id`) VALUES
(1, 'East Campus', 'Sugar Maple', 71, 19.50930354, 'Acer', 'saccharum', 'N', 'N', 1, '1_P.jpg'),
(2, 'East Campus', 'Dogwood', 17, 7.856418121, 'Cornus', 'sp.', 'N', 'N', 1, '2_P.jpg'),
(3, 'East Campus', 'Dogwood', 18, 7.642881742, 'Cornus', 'sp.', 'N', 'N', 1, '3_P.jpg'),
(4, 'East Campus', 'Sycamore', 11.2, 16.70384079, 'Platanus', 'occidentalis', 'N', 'N', 1, '4_P.jpg'),
(5, 'East Campus', 'Dogwood', 14, 4.116607913, 'Cornus', 'sp.', 'N', 'N', 1, '5_P.jpg'),
(6, 'East Campus', 'Mulberry', 5.5, 1.149949169, 'Morus', 'alba', 'N', 'N', 1, '6_P.jpg'),
(7, 'East Campus', 'Norway Spruce', 11, 4.586021573, 'Picea', 'abies', 'N', 'N', 1, '7_P.jpg'),
(8, 'East Campus', 'Norway Spruce', 42.5, 19.4822278, 'Picea', 'abies', 'N', 'N', 1, '8_P.jpg'),
(9, 'East Campus', 'Norway Spruce', 40, 19.4822278, 'Picea', 'abies', 'N', 'N', 1, '9_P.jpg'),
(10, 'East Campus', 'Eastern Redbud', 5, 3.8593302, 'Cercis', 'canadensis', 'N', 'N', 1, '10_P.jpg'),
(11, 'East Campus', 'Eastern Redbud', 9, 2.501357963, 'Cercis', 'canadensis', 'N', 'N', 1, '11_P.jpg'),
(12, 'East Campus', 'White Ash', 116.5, 23.26920013, 'Fraxinus', 'americana', 'N', 'N', 1, '12_P.jpg'),
(13, 'East Campus', 'Eastern Redbud', 5.4, 3.516790105, 'Cercis', 'canadensis', 'N', 'N', 1, '13_P.jpg'),
(14, 'East Campus', 'Black Maple', 24, 11.06191753, 'Prunus', 'serotinia', 'N', 'N', 1, '14_P.jpg'),
(15, 'East Campus', 'Hackberry', 41.4, 21.99277113, 'Celtis', 'occidentalis', 'N', 'N', 1, '15_P.jpg'),
(16, 'East Campus', 'Norway Spruce', 27.4, 18.1729074, 'Picea', 'abies', 'N', 'N', 1, '16_P.jpg'),
(17, 'East Campus', 'Norway Spruce', 24.5, 13.13399591, 'Picea', 'abies', 'N', 'N', 1, '17_P.jpg'),
(18, 'East Campus', 'Norway Spruce', 38.3, 12.59861976, 'Picea', 'abies', 'N', 'N', 1, '18_P.jpg'),
(19, 'East Campus', 'Sugar Maple', 52.9, 17.78397036, 'Acer', 'saccharum', 'N', 'N', 1, '19_P.jpg'),
(20, 'East Campus', 'Syberian elm', 63.2, 16.65163466, 'Ulmus', 'pumila', 'N', 'N', 1, '20_P.jpg'),
(21, 'East Campus', 'Crab Apple', 32.7, 4.84868448, 'Malus', 'hopa', 'N', 'N', 1, '21_P.jpg'),
(22, 'East Campus', 'Pecan', 78, 14.69584817, 'Carya', 'illinoinensis', 'N', 'N', 1, '22_P.jpg'),
(25, 'East Campus', 'Norway Spruce', 30.8, 10.64172626, 'Picea', 'abies', 'N', 'N', 1, '25_P.jpg'),
(26, 'East Campus', 'Sugar Maple', 80, 18.53503634, 'Acer', 'saccharum', 'N', 'N', 1, '26_P.jpg'),
(27, 'East Campus', 'Red Oak', 64, 17.50518846, 'Quercus', 'rubra', 'N', 'N', 1, '27_P.jpg'),
(28, 'East Campus', 'Sugar Maple', 17.6, 9.479060756, 'Acer', 'saccharum', 'N', 'N', 1, '28_P.jpg'),
(29, 'East Campus', 'Cherry', 41, 8.916804943, 'Prunus', 'avium', 'N', 'N', 1, '29_P.jpg'),
(30, 'East Campus', 'Dogwood', 18.2, 4.77535282, 'Cornus', 'sp.', 'N', 'N', 1, '30_P.jpg'),
(31, 'East Campus', 'Crab Apple', 11.6, 5.331567839, 'Malus', 'hopa', 'N', 'N', 1, '31_P.jpg'),
(34, 'East Campus', 'Norway Spruce', 41.1, 19.80789473, 'Picea', 'abies', 'N', 'N', 1, '34_P.jpg'),
(35, 'East Campus', 'Pecan', 81.5, 34.38907273, 'Carya', 'illinoinensis', 'N', 'N', 1, '35_P.jpg'),
(36, 'East Campus', 'Japanese Pagoda', 15.5, 10.45306716, 'Styphnolobium', 'japonicum', 'N', 'N', 1, '36_P.jpg'),
(37, 'East Campus', 'Japanese Snowbell', 12, 10.45306716, 'Styrax', 'japonicus', 'N', 'N', 1, '37_P.jpg'),
(38, 'East Campus', 'Weeping Crab Apple', 5, 4.805057541, 'Cedrus', 'atlantica', 'N', 'N', 1, '38_P.jpg'),
(39, 'East Campus', 'Japanese Pagoda', 10.1, 3.70941002, 'Styphnolobium', 'japonicum', 'N', 'N', 1, '39_P.jpg'),
(40, 'East Campus', 'Ash ', 7, 8.011963326, 'Fraxinus', 'sp.', 'N', 'N', 1, '40_P.jpg'),
(41, 'East Campus', 'Zelkova ', 32.5, 18.9646742, 'Carpinifolia', 'sp.', 'N', 'N', 1, '41_P.jpg'),
(42, 'East Campus', 'Crab Apple', 15, 3.1716487, 'Malus', 'hopa', 'N', 'N', 1, '42_P.jpg'),
(43, 'East Campus', 'Sugar Maple', 14.5, 15.1563667, 'Acer', 'saccharum', 'N', 'N', 1, '43_P.jpg'),
(44, 'East Campus', 'Purple Leaf Plum ', 65, 44.21828503, 'Acer', 'saccharum', 'N', 'N', 1, '44_P.jpg'),
(45, 'East Campus', 'Crab Apple', 12.5, 6.396089944, 'Malus', 'hopa', 'N', 'N', 1, '45_P.jpg'),
(46, 'East Campus', 'Sugar Maple', 13.9, 15.77484289, 'Acer', 'saccharum', 'N', 'N', 1, '46_P.jpg'),
(47, 'East Campus', 'Crab Apple', 10.3, 5.751958044, 'Malus', 'hopa', 'N', 'N', 1, '47_P.jpg'),
(48, 'East Campus', 'Ash ', 19.5, 7.009406531, 'Fraxinus', 'sp.', 'N', 'N', 1, '48_P.jpg'),
(49, 'East Campus', 'Ash ', 20.6, 9.479381135, 'Fraxinus', 'sp.', 'N', 'N', 1, '49_P.jpg'),
(50, 'East Campus', 'Sugar Maple', 86, 24.68976297, 'Acer', 'saccharum', 'N', 'N', 1, '50_P.jpg'),
(51, 'East Campus', 'Sugar Maple', 87, 23.15664576, 'Acer', 'saccharum', 'N', 'N', 1, '51_P.jpg'),
(52, 'East Campus', 'Sugar Maple', 72, 20.47363513, 'Acer', 'saccharum', 'N', 'N', 1, '52_P.jpg'),
(53, 'East Campus', 'Bradford Pear', 28.4, 13.74047445, 'Pyrus', 'calleryana', 'N', 'N', 1, '53_P.jpg'),
(54, 'East Campus', 'Crab Apple', 16, 6.314029399, 'Malus', 'hopa', 'N', 'N', 1, '54_P.jpg'),
(55, 'East Campus', 'Dogwood', 12.5, 5.250931416, 'Cornus', 'sp.', 'N', 'N', 1, '55_P.jpg'),
(56, 'East Campus', 'Crab Apple', 11.2, 3.1716487, 'Malus', 'hopa', 'N', 'N', 1, '56_P.jpg'),
(57, 'East Campus', 'Sugar Maple', 68, 18.18341261, 'Acer', 'saccharum', 'N', 'N', 1, '57_P.jpg'),
(58, 'East Campus', 'Sugar Maple', 27.4, 10.15901718, 'Acer', 'saccharum', 'N', 'N', 1, '58_P.jpg'),
(59, 'East Campus', 'Sugar Maple', 57, 23.76986905, 'Acer', 'saccharum', 'N', 'N', 1, '59_P.jpg'),
(60, 'East Campus', 'Serviceberry', 4, 3.977273506, 'Amelanchier', 'sp.', 'N', 'N', 1, '60_P.jpg'),
(61, 'East Campus', 'Norway Spruce', 35, 24.42093575, 'Picea', 'abies', 'N', 'N', 1, '61_P.jpg'),
(62, 'East Campus', 'Silver Maple', 146.6, 28.2260538, 'Acer', 'saccharinum', 'N', 'N', 1, '62_P.jpg'),
(63, 'East Campus', 'Norway Spruce', 53.5, 15.05230635, 'Picea', 'abies', 'N', 'N', 1, '63_P.jpg'),
(64, 'East Campus', 'Norway Spruce', 58, 13.89592328, 'Picea', 'abies', 'N', 'N', 1, '64_P.jpg'),
(65, 'East Campus', 'Zelkova ', 28, 17.38573476, 'Carpinifolia', 'sp.', 'N', 'N', 1, '65_P.jpg'),
(66, 'East Campus', 'Bradford Pear', 33.5, 20.30853224, 'Pyrus', 'calleryana', 'N', 'N', 1, '66_P.jpg'),
(67, 'East Campus', 'Bradford Pear', 26, 18.05739017, 'Pyrus', 'calleryana', 'N', 'N', 1, '67_P.jpg'),
(68, 'East Campus', 'Crab Apple', 34.5, 7.219634923, 'Malus', 'hopa', 'N', 'N', 1, '68_P.jpg'),
(69, 'East Campus', 'Bradford Pear', 39.5, 11.43528233, 'Pyrus', 'calleryana', 'N', 'N', 1, '69_P.jpg'),
(70, 'East Campus', 'Bradford Pear', 21, 15.05230635, 'Pyrus', 'calleryana', 'N', 'N', 1, '70_P.jpg'),
(71, 'East Campus', 'Crab Apple', 23.4, 11.58904523, 'Malus', 'hopa', 'N', 'N', 1, '71_P.jpg'),
(72, 'East Campus', 'Norway Spruce', 26, 7.090960085, 'Picea', 'abies', 'N', 'N', 1, '72_P.jpg'),
(73, 'East Campus', 'River Birch', 2.2, 2.283112523, 'Betula', 'nigra', 'N', 'N', 1, '73_P.jpg'),
(77, 'East Campus', 'Willow Oak', 3, 1.575120145, 'Quercus', 'phellos', 'N', 'Y', 2, '77_P.jpg'),
(81, 'East Campus', 'River Birch', 2.5, 3.527647495, 'Betula', 'nigra', 'N', 'Y', 2, '81_P.jpg'),
(89, 'East Campus', 'Cherry', 15.7, 6.367122243, 'Prunus', 'avium', 'N', 'Y', 2, '89_P.jpg'),
(90, 'East Campus', 'Dogwood', 3.2, 1.750310472, 'Cornus', 'sp.', 'N', 'N', 1, '90_P.jpg'),
(91, 'East Campus', 'Mulberry', 7.3, 1.575120145, 'Morus', 'alba', 'Y', 'N', 1, '91_P.jpg'),
(92, 'East Campus', 'Sugar Maple', 34.8, 9.675254462, 'Acer', 'saccharum', 'N', 'N', 1, '92_P.jpg'),
(93, 'East Campus', 'Black Walnut', 50.5, 17.3754858, 'Juglans', 'nigra', 'N', 'N', 1, '93_P.jpg'),
(94, 'East Campus', 'Dogwood', 28, 8.922080012, 'Cornus', 'sp.', 'N', 'N', 1, '94_P.jpg'),
(95, 'East Campus', 'Dogwood', 13.2, 4.080685857, 'Cornus', 'sp.', 'N', 'N', 1, '95_P.jpg'),
(96, 'East Campus', 'Green Ash', 25.6, 9.111214305, 'Fraxinus', 'pennsylvanica', 'N', 'N', 1, '96_P.jpg'),
(97, 'East Campus', 'Green Ash', 24.6, 7.456394027, 'Fraxinus', 'pennsylvanica', 'N', 'N', 1, '97_P.jpg'),
(98, 'East Campus', 'Green Ash', 17.5, 7.107237147, 'Fraxinus', 'pennsylvanica', 'N', 'N', 1, '98_P.jpg'),
(99, 'East Campus', 'Green Ash', 15, 5.966692732, 'Fraxinus', 'pennsylvanica', 'N', 'N', 1, '99_P.jpg'),
(100, 'East Campus', 'Cherry', 47, 1.431914965, 'Prunus', 'avium', 'N', 'N', 1, '100_P.jpg'),
(101, 'East Campus', 'Crab Apple', 36.9, 6.000904504, 'Malus', 'hopa', 'N', 'N', 1, '101_P.jpg'),
(102, 'East Campus', 'Crab Apple', 33.8, 5.269773512, 'Malus', 'hopa', 'N', 'N', 1, '102_P.jpg'),
(104, 'East Campus', 'Magnolia', 15.7, 4.966798546, 'Magnolia', 'grandiflora', 'N', 'N', 1, '104_P.jpg'),
(105, 'East Campus', 'Cherry', 17.6, 1.886459338, 'Prunus', 'avium', 'N', 'N', 1, '105_P.jpg'),
(106, 'East Campus', 'Sugar Maple', 20.4, 14.0026966, 'Acer', 'saccharum', 'N', 'N', 1, '106_P.jpg'),
(107, 'East Campus', 'Dogwood', 7.3, 1.402396258, 'Cornus', 'sp.', 'N', 'N', 1, '107_P.jpg'),
(108, 'East Campus', 'Dogwood', 7.3, 1.860335185, 'Cornus', 'sp.', 'N', 'N', 1, '108_P.jpg'),
(109, 'East Campus', 'Dogwood', 10.2, 2.768981608, 'Cornus', 'sp.', 'N', 'N', 1, '109_P.jpg'),
(110, 'East Campus', 'Dogwood', 32.4, 12.49384197, 'Cornus', 'sp.', 'N', 'N', 1, '110_P.jpg'),
(111, 'East Campus', 'Eastern Redbud', 21.4, 4.442761731, 'Cercis', 'canadensis', 'N', 'N', 1, '111_P.jpg'),
(112, 'East Campus', 'Eastern Redbud', 8.3, 3.898688375, 'Cercis', 'canadensis', 'N', 'N', 1, '112_P.jpg'),
(113, 'East Campus', 'Eastern Redbud', 11.3, 2.280294982, 'Cercis', 'canadensis', 'N', 'N', 1, '113_P.jpg'),
(114, 'East Campus', 'Magnolia', 15.4, 7.619971804, 'Magnolia', 'grandiflora', 'Y', 'N', 1, '114_P.jpg'),
(115, 'East Campus', 'Sugar Maple', 69, 16.89409605, 'Acer', 'saccharum', 'N', 'N', 1, '115_P.jpg'),
(116, 'East Campus', 'Cherry', 17, 4.788822222, 'Prunus', 'avium', 'N', 'N', 1, '116_P.jpg'),
(117, 'East Campus', 'Crab Apple', 10, 4.084900271, 'Malus', 'hopa', 'N', 'N', 1, '117_P.jpg'),
(118, 'East Campus', 'Dogwood', 19, 4.272862205, 'Cornus', 'sp.', 'N', 'N', 1, '118_P.jpg'),
(119, 'East Campus', 'Magnolia', 33.6, 12.40858647, 'Magnolia', 'grandiflora', 'N', 'N', 1, '119_P.jpg'),
(120, 'East Campus', 'Dogwood', 5, 4.272862205, 'Cornus', 'sp.', 'N', 'N', 1, '120_P.jpg'),
(122, 'East Campus', 'Green Ash', 10, 3.837002695, 'Fraxinus', 'pennsylvanica', 'N', 'N', 1, '122_P.jpg'),
(123, 'East Campus', 'Green Ash', 12.3, 8.053117735, 'Fraxinus', 'pennsylvanica', 'N', 'N', 1, '123_P.jpg'),
(124, 'East Campus', 'Green Ash', 14, 8.105858824, 'Fraxinus', 'pennsylvanica', 'N', 'N', 1, '124_P.jpg'),
(125, 'East Campus', 'Ash ', 22.7, 19.18863384, 'Fraxinus', 'sp.', 'N', 'N', 1, '125_P.jpg'),
(126, 'East Campus', 'Ash ', 13, 16.09583881, 'Fraxinus', 'sp.', 'N', 'N', 1, '126_P.jpg'),
(127, 'East Campus', 'Ash ', 24.2, 20.77568801, 'Fraxinus', 'sp.', 'N', 'N', 1, '127_P.jpg'),
(128, 'East Campus', 'Ash ', 17.5, 16.31232995, 'Fraxinus', 'sp.', 'N', 'N', 1, '128_P.jpg'),
(130, 'East Campus', 'Green Ash', 16, 6.648389327, 'Fraxinus', 'pennsylvanica', 'N', 'N', 1, '130_P.jpg'),
(132, 'East Campus', 'Green Ash', 21.1, 8.945878473, 'Fraxinus', 'pennsylvanica', 'N', 'N', 1, '132_P.jpg'),
(133, 'East Campus', 'Cherry', 15.5, 4.084900271, 'Prunus', 'avium', 'N', 'N', 1, '133_P.jpg'),
(134, 'East Campus', 'Crape Myrtle', 16.8, 8.011963326, 'Lagerstroemia', 'sp.', 'N', 'N', 1, '134_P.jpg'),
(135, 'East Campus', 'Hackberry', 31.5, 13.99086568, 'Celtis', 'occidentalis', 'N', 'N', 1, '135_P.jpg'),
(136, 'East Campus', 'Red Oak', 58.5, 18.86279571, 'Quercus', 'rubra', 'N', 'N', 1, '136_P.jpg'),
(137, 'East Campus', 'Hackberry', 49.5, 14.25386984, 'Celtis', 'occidentalis', 'N', 'N', 1, '137_P.jpg'),
(140, 'East Campus', 'Green Ash', 22.6, 6.826096436, 'Fraxinus', 'pennsylvanica', 'N', 'N', 1, '140_P.jpg'),
(142, 'East Campus', 'Eastern Hemlock', 12.4, 6.25503037, 'Tsuga', 'canadensis', 'N', 'N', 1, '142_P.jpg'),
(143, 'East Campus', 'Eastern Hemlock', 22.1, 5.581688456, 'Tsuga', 'canadensis', 'N', 'N', 1, '143_P.jpg'),
(144, 'East Campus', 'Yellow Oak', 72, 19.6926287, 'Quercus', 'muehlenbergii', 'N', 'N', 1, '144_P.jpg'),
(145, 'East Campus', 'Weeping Cherry', 29.2, 2.633253956, 'Prunus', 'subhirtella', 'N', 'N', 1, '145_P.jpg'),
(146, 'East Campus', 'Weeping Cherry', 28.9, 2.633253956, 'Prunus', 'subhirtella', 'N', 'N', 1, '146_P.jpg'),
(147, 'East Campus', 'Weeping Cherry', 25.8, 2.280294982, 'Prunus', 'subhirtella', 'N', 'N', 1, '147_P.jpg'),
(148, 'East Campus', 'Green Ash', 20.8, 5.637379453, 'Fraxinus', 'pennsylvanica', 'N', 'N', 1, '148_P.jpg'),
(149, 'East Campus', 'Weeping Cherry', 20.8, 1.92948614, 'Prunus', 'subhirtella', 'N', 'N', 1, '149_P.jpg'),
(150, 'East Campus', 'Weeping Cherry', 18.3, 2.315144113, 'Prunus', 'subhirtella', 'N', 'N', 1, '150_P.jpg'),
(151, 'East Campus', 'Dogwood', 14.9, 2.98925275, 'Cornus', 'sp.', 'N', 'N', 1, '151_P.jpg'),
(152, 'East Campus', 'Atlas Cedar ', 23.7, 11.62972115, 'Cedrus', 'atlantica', 'N', 'N', 1, '152_P.jpg'),
(153, 'East Campus', 'Atlas Cedar ', 23.1, 11.62972115, 'Cedrus', 'atlantica', 'N', 'N', 1, '153_P.jpg'),
(154, 'East Campus', 'Atlas Cedar ', 25.4, 11.62972115, 'Cedrus', 'atlantica', 'N', 'N', 1, '154_P.jpg'),
(155, 'East Campus', 'Thornless Honey Locust (cultivars)', 19.4, 8.703648997, 'Gleditsia', 'triacanthos', 'N', 'N', 1, '155_P.jpg'),
(156, 'East Campus', 'Thornless Honey Locust (cultivars)', 18.3, 7.828300111, 'Gleditsia', 'triacanthos', 'N', 'N', 1, '156_P.jpg'),
(157, 'East Campus', 'Thornless Honey Locust (cultivars)', 18.1, 6.582829568, 'Gleditsia', 'triacanthos', 'N', 'N', 1, '157_P.jpg'),
(158, 'East Campus', 'Dogwood', 16.9, 4.84868448, 'Cornus', 'sp.', 'N', 'N', 1, '158_P.jpg'),
(159, 'East Campus', 'Dogwood', 14.5, 4.654605309, 'Cornus', 'sp.', 'N', 'N', 1, '159_P.jpg'),
(160, 'East Campus', 'Black Maple', 49.2, 19.03425396, 'Acer', 'nigrum', 'N', 'N', 1, '160_P.jpg'),
(161, 'East Campus', 'Dogwood', 13.8, 4.84868448, 'Cornus', 'sp.', 'N', 'N', 1, '161_P.jpg'),
(162, 'East Campus', 'Scarlet Oak', 70, 17.84416002, 'Quercus', 'coccinea', 'N', 'N', 1, '162_P.jpg'),
(163, 'East Campus', 'White Ash', 65.4, 17.1507993, 'Fraxinus', 'americana', 'N', 'N', 1, '163_P.jpg'),
(164, 'East Campus', 'Red Maple', 5, 3.530973964, 'Acer', 'rubrum', 'N', 'N', 1, '164_P.jpg'),
(165, 'East Campus', 'Sycamore', 52.4, 15.96282223, 'Platanus', 'occidentalis', 'N', 'N', 1, '165_P.jpg'),
(166, 'East Campus', 'Dogwood', 2, 3.168678154, 'Cornus', 'sp.', 'N', 'N', 1, '166_P.jpg'),
(167, 'East Campus', 'Red Maple', 5.2, 3.349211438, 'Acer', 'rubrum', 'N', 'N', 1, '167_P.jpg'),
(168, 'East Campus', 'Dogwood', 21.5, 4.84868448, 'Cornus', 'sp.', 'N', 'N', 1, '168_P.jpg'),
(169, 'East Campus', 'Crape Myrtle', 5, 3.168678154, 'Lagerstroemia', 'sp.', 'N', 'N', 1, '169_P.jpg'),
(170, 'East Campus', 'Crape Myrtle', 5, 2.98925275, 'Lagerstroemia', 'sp.', 'N', 'N', 1, '170_P.jpg'),
(172, 'East Campus', 'Black Walnut', 83, 20.01174407, 'Juglans', 'nigra', 'N', 'N', 1, '172_P.jpg'),
(173, 'East Campus', 'Sycamore', 90, 26.03991575, 'Platanus', 'occidentalis', 'N', 'N', 1, '173_P.jpg'),
(174, 'East Campus', 'Silver Maple', 101, 24.42093575, 'Acer', 'saccharinum', 'N', 'N', 1, '174_P.jpg'),
(175, 'East Campus', 'Silver Maple', 77, 24.27826692, 'Acer', 'saccharinum', 'N', 'N', 1, '175_P.jpg'),
(176, 'East Campus', 'Yellow Oak', 132, 27.12210562, 'Quercus', 'muehlenbergii', 'N', 'N', 1, '176_P.jpg'),
(177, 'East Campus', 'Norway Spruce', 24.3, 9.191377622, 'Picea', 'abies', 'N', 'N', 1, '177_P.jpg'),
(178, 'East Campus', 'Red Maple', 11.8, 6.010214911, 'Acer', 'rubrum', 'N', 'N', 1, '178_P.jpg'),
(179, 'East Campus', 'Green Ash', 11, 5.445670605, 'Fraxinus', 'pennsylvanica', 'N', 'N', 1, '179_P.jpg'),
(180, 'East Campus', 'Magnolia', 3.7, 4.462715162, 'Magnolia', 'grandiflora', 'N', 'N', 1, '180_P.jpg'),
(181, 'East Campus', 'Magnolia', 5.6, 4.654605309, 'Magnolia', 'grandiflora', 'N', 'N', 1, '181_P.jpg'),
(182, 'East Campus', 'Magnolia', 4.9, 3.898688375, 'Magnolia', 'grandiflora', 'N', 'N', 1, '182_P.jpg'),
(183, 'East Campus', 'Magnolia', 3.9, 3.349211438, 'Magnolia', 'grandiflora', 'N', 'N', 1, '183_P.jpg'),
(184, 'East Campus', 'Green Ash', 17.5, 8.076156368, 'Fraxinus', 'pennsylvanica', 'N', 'N', 1, '184_P.jpg'),
(185, 'East Campus', 'Birch Ornamental', 7, 6.294994346, 'Betula', 'sp.', 'N', 'N', 1, '185_P.jpg'),
(186, 'East Campus', 'Magnolia', 3, 3.021364077, 'Magnolia', 'grandiflora', 'N', 'N', 1, '186_P.jpg'),
(187, 'East Campus', 'Birch Ornamental', 13, 5.728272011, 'Betula', 'sp.', 'N', 'N', 1, '187_P.jpg'),
(188, 'East Campus', 'Mulberry', 3.5, 3.285597654, 'Morus', 'alba', 'N', 'N', 1, '188_P.jpg'),
(189, 'East Campus', 'Paper Bark Maple', 6.9, 2.643071211, 'Acer', 'griseum', 'N', 'N', 1, '189_P.jpg'),
(190, 'East Campus', 'Paper Bark Maple', 8.5, 2.98925275, 'Acer', 'griseum', 'N', 'N', 1, '190_P.jpg'),
(191, 'East Campus', 'Paper Birch', 7.8, 3.898688375, 'Betula', 'papyrifera', 'N', 'N', 1, '191_P.jpg'),
(192, 'East Campus', 'Red Maple', 14.4, 8.076156368, 'Acer', 'rubrum', 'N', 'N', 1, '192_P.jpg'),
(193, 'East Campus', 'Dogwood', 4.5, 1.92948614, 'Cornus', 'sp.', 'N', 'N', 1, '193_P.jpg'),
(194, 'East Campus', 'Crape Myrtle', 5.7, 3.349211438, 'Lagerstroemia', 'sp.', 'N', 'N', 1, '194_P.jpg'),
(195, 'East Campus', 'Crape Myrtle', 8, 3.714090258, 'Lagerstroemia', 'sp.', 'N', 'N', 1, '195_P.jpg'),
(196, 'East Campus', 'Paper Birch', 8, 6.010214911, 'Betula', 'papyrifera', 'N', 'N', 1, '196_P.jpg'),
(197, 'East Campus', 'Paper Birch', 6.7, 5.448954167, 'Betula', 'papyrifera', 'N', 'N', 1, '197_P.jpg'),
(198, 'East Campus', 'Crape Myrtle', 5.4, 3.530973964, 'Lagerstroemia', 'sp.', 'N', 'N', 1, '198_P.jpg'),
(199, 'East Campus', 'Sycamore', 138.1, 30.52365195, 'Platanus', 'occidentalis', 'N', 'N', 1, '199_P.jpg'),
(206, 'East Campus', 'Red Spruce', 6.5, 2.633253956, 'Picea', 'rubens', 'N', 'N', 1, '206_P.jpg'),
(207, 'East Campus', 'Crape Myrtle (Pink)', 7.8, 3.773274755, 'Lagerstroemia', 'sp.', 'N', 'N', 1, '207_P.jpg'),
(208, 'East Campus', 'Paper Birch', 6.7, 5.728272011, 'Betula', 'papyrifera', 'N', 'N', 1, '208_P.jpg'),
(209, 'East Campus', 'Paper Birch', 4.5, 4.624738762, 'Betula', 'papyrifera', 'N', 'N', 1, '209_P.jpg'),
(210, 'East Campus', 'Crape Myrtle (Pink)', 6.9, 3.168678154, 'Lagerstroemia', 'sp.', 'N', 'N', 1, '210_P.jpg'),
(211, 'East Campus', 'Crape Myrtle (White) ', 7.1, 3.349211438, 'Lagerstroemia', 'sp.', 'N', 'N', 1, '211_P.jpg'),
(212, 'East Campus', 'Paper Birch', 5.7, 3.817146645, 'Betula', 'papyrifera', 'N', 'N', 1, '212_P.jpg'),
(214, 'East Campus', 'Chinese Elm', 22.4, 6.294994346, 'Ulmus', 'parvifolia', 'N', 'N', 1, '214_P.jpg'),
(215, 'East Campus', 'Sugar Maple', 10.4, 5.172056991, 'Acer', 'saccharum', 'N', 'N', 1, '215_P.jpg'),
(216, 'East Campus', 'Sugar Maple', 8.8, 4.89738255, 'Acer', 'saccharum', 'N', 'N', 1, '216_P.jpg'),
(217, 'East Campus', 'Sugar Maple', 7.8, 4.89738255, 'Acer', 'saccharum', 'N', 'N', 1, '217_P.jpg'),
(218, 'East Campus', 'Sugar Maple', 8.5, 4.89738255, 'Acer', 'saccharum', 'N', 'N', 1, '218_P.jpg'),
(219, 'East Campus', 'Sugar Maple', 7.6, 3.817146645, 'Acer', 'saccharum', 'N', 'N', 1, '219_P.jpg'),
(220, 'East Campus', 'Sugar Maple', 7.9, 4.353938835, 'Acer', 'saccharum', 'N', 'N', 1, '220_P.jpg'),
(221, 'East Campus', 'Sugar Maple', 8.5, 3.817146645, 'Acer', 'saccharum', 'N', 'N', 1, '221_P.jpg'),
(222, 'East Campus', 'Sugar Maple', 8, 4.353938835, 'Acer', 'saccharum', 'N', 'N', 1, '222_P.jpg'),
(223, 'East Campus', 'Sugar Maple', 8, 4.353938835, 'Acer', 'saccharum', 'N', 'N', 1, '223_P.jpg'),
(224, 'East Campus', 'Sugar Maple', 7.7, 5.172056991, 'Acer', 'saccharum', 'N', 'N', 1, '224_P.jpg'),
(226, 'East Campus', 'Silver Maple', 29, 11.94028226, 'Acer', 'saccharinum', 'N', 'N', 1, '226_P.jpg'),
(227, 'East Campus', 'Ginkgo', 15, 7.168587639, 'Ginkgo', 'biloba', 'N', 'N', 1, '227_P.jpg'),
(228, 'East Campus', 'Sugar Maple', 72.5, 18.39177842, 'Acer', 'saccharum', 'N', 'N', 1, '228_P.jpg'),
(229, 'East Campus', 'Sycamore', 45.6, 21.06120617, 'Platanus', 'occidentalis', 'N', 'N', 1, '229_P.jpg'),
(230, 'East Campus', 'Dogwood', 15.7, 3.285597654, 'Cornus', 'sp.', 'N', 'N', 1, '230_P.jpg'),
(231, 'East Campus', 'Dogwood', 10.7, 3.550802538, 'Cornus', 'sp.', 'N', 'N', 1, '231_P.jpg'),
(232, 'East Campus', 'Black Maple', 77, 20.8319326, 'Acer', 'nigrum', 'N', 'N', 1, '232_P.jpg'),
(233, 'East Campus', 'Sugar Maple', 25.2, 11.50442504, 'Acer', 'saccharum', 'N', 'N', 1, '233_P.jpg'),
(234, 'East Campus', 'Black Oak', 57.8, 18.39177842, 'Quercus', 'velutina', 'N', 'N', 1, '234_P.jpg'),
(235, 'East Campus', 'Cherry', 37.7, 12.3839619, 'Prunus', 'avium', 'Y', 'N', 1, '235_P.jpg'),
(236, 'East Campus', 'Saucer Magnolia', 12.2, 5.448954167, 'Magnolia', 'soulangeana', 'Y', 'N', 1, '236_P.jpg'),
(237, 'East Campus', 'Black Walnut', 72, 14.8218013, 'Juglans', 'nigra', 'N', 'N', 1, '237_P.jpg'),
(238, 'East Campus', 'Dogwood', 13, 3.349211438, 'Cornus', 'sp.', 'N', 'N', 1, '238_P.jpg'),
(239, 'East Campus', 'Dogwood', 18, 7.769427512, 'Cornus', 'sp.', 'N', 'N', 1, '239_P.jpg'),
(240, 'East Campus', 'Sugar Maple', 41.9, 17.80895039, 'Acer', 'saccharum', 'Y', 'N', 1, '240_P.jpg'),
(241, 'East Campus', 'Japanese Maple', 87, 23.26123395, 'Acer', 'palmatum', 'N', 'N', 1, '241_P.jpg'),
(242, 'East Campus', 'White Ash', 81.6, 16.28062383, 'Fraxinus', 'americana', 'N', 'N', 1, '242_P.jpg'),
(243, 'East Campus', 'White Ash', 106, 19.11303438, 'Fraxinus', 'americana', 'N', 'N', 1, '243_P.jpg'),
(244, 'East Campus', 'Crape Myrtle', 3.5, 2.810816694, 'Lagerstroemia', 'sp.', 'N', 'N', 1, '244_P.jpg'),
(245, 'East Campus', 'Crape Myrtle', 4.9, 3.168678154, 'Lagerstroemia', 'sp.', 'N', 'N', 1, '245_P.jpg'),
(246, 'East Campus', 'Crape Myrtle', 4.5, 3.168678154, 'Lagerstroemia', 'sp.', 'N', 'N', 1, '246_P.jpg'),
(247, 'East Campus', 'Crape Myrtle (Natchez)', 3.8, 2.98925275, 'Lagerstroemia', 'sp.', 'N', 'N', 1, '247_P.jpg'),
(248, 'East Campus', 'Red Maple', 13.6, 7.769427512, 'Acer', 'rubrum', 'N', 'N', 1, '248_P.jpg'),
(254, 'East Campus', 'Eastern Redbud', 10.9, 4.89738255, 'Cercis', 'canadensis', 'N', 'N', 1, '254_P.jpg'),
(257, 'East Campus', 'Chinese Elm', 11.1, 3.898688375, 'Ulmus', 'parvifolia', 'N', 'N', 1, '257_P.jpg'),
(258, 'East Campus', 'Crab Apple', 11.7, 4.272862205, 'Malus', 'hopa', 'N', 'N', 1, '258_P.jpg'),
(259, 'East Campus', 'Bradford Pear', 89.2, 21.04815559, 'Pyrus', 'calleryana', 'N', 'N', 1, '259_P.jpg'),
(260, 'East Campus', 'Black Walnut', 54.7, 19.18763242, 'Juglans', 'nigra', 'N', 'N', 1, '260_P.jpg'),
(261, 'East Campus', 'Black Walnut', 56.7, 21.60883191, 'Juglans', 'nigra', 'N', 'N', 1, '261_P.jpg'),
(262, 'East Campus', 'Box Elder', 58.8, 18.90842179, 'Acer', 'negundo', 'N', 'N', 1, '262_P.jpg'),
(263, 'East Campus', 'Cherry', 24.6, 7.108757119, 'Prunus', 'avium', 'N', 'N', 1, '263_P.jpg'),
(264, 'East Campus', 'Cherry', 10, 4.353938835, 'Prunus', 'avium', 'N', 'N', 1, '264_P.jpg'),
(265, 'East Campus', 'Norway Spruce', 74.3, 15.80941543, 'Picea', 'abies', 'N', 'N', 1, '265_P.jpg'),
(266, 'East Campus', 'Norway Spruce', 62, 13.88051251, 'Picea', 'abies', 'N', 'N', 1, '266_P.jpg'),
(267, 'East Campus', 'Eastern Hemlock', 37, 13.4655778, 'Tsuga', 'canadensis', 'N', 'N', 1, '267_P.jpg'),
(268, 'East Campus', 'Eastern Redbud', 32.9, 14.76211154, 'Cercis', 'canadensis', 'N', 'N', 1, '268_P.jpg'),
(269, 'East Campus', 'Fir species', 11.7, 6.019786499, 'Abies', 'sp.', 'N', 'N', 1, '269_P.jpg'),
(270, 'East Campus', 'Fir species', 11.8, 5.659912133, 'Abies', 'sp.', 'N', 'N', 1, '270_P.jpg'),
(271, 'East Campus', 'Syberian elm', 15.3, 8.331446241, 'Ulmus', 'pumila', 'N', 'N', 1, '271_P.jpg'),
(273, 'East Campus', 'Serviceberry', 73, 14.82802907, 'Amelanchier', 'sp.', 'N', 'N', 1, '273_P.jpg'),
(274, 'East Campus', 'Hackberry', 6.5, 2.361232132, 'Celtis', 'occidentalis', 'N', 'N', 1, '274_P.jpg'),
(277, 'East Campus', 'Eastern Hemlock', 4.4, 2.98925275, 'Tsuga', 'canadensis', 'N', 'N', 1, '277_P.jpg'),
(278, 'East Campus', 'Red Spruce', 5.3, 2.98925275, 'Picea', 'rubens', 'N', 'N', 1, '278_P.jpg'),
(279, 'East Campus', 'Fir species', 9.2, 3.349211438, 'Abies', 'sp.', 'N', 'N', 1, '279_P.jpg'),
(280, 'East Campus', 'River Birch', 6.3, 3.55437856, 'Betula', 'nigra', 'N', 'N', 1, '280_P.jpg'),
(281, 'East Campus', 'Fir species', 10.8, 5.244048697, 'Abies', 'sp.', 'N', 'N', 1, '281_P.jpg'),
(282, 'East Campus', 'Fir species', 5.8, 6.722502664, 'Abies', 'sp.', 'N', 'N', 1, '282_P.jpg'),
(283, 'East Campus', 'Fir species', 9.6, 6.722502664, 'Abies', 'sp.', 'N', 'N', 1, '283_P.jpg'),
(284, 'East Campus', 'Fir species', 10.4, 6.948498862, 'Abies', 'sp.', 'N', 'N', 1, '284_P.jpg'),
(285, 'East Campus', 'Fir species', 11.9, 6.500662842, 'Abies', 'sp.', 'N', 'N', 1, '285_P.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tree_raw`
--

CREATE TABLE `tree_raw` (
  `tree_id` int(11) NOT NULL,
  `north_south` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `east_west` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `campus` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `date` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `collector` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `latitude_degrees` double DEFAULT NULL,
  `latitude_minutes` int(11) DEFAULT NULL,
  `latitude_seconds` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude_degrees` double DEFAULT NULL,
  `longitude_minutes` int(11) DEFAULT NULL,
  `longitude_seconds` int(11) DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `common_name` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `scientific_name` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `dbh` double DEFAULT NULL,
  `notes` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `dbh_second_stem` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `distance_from_tree` double DEFAULT NULL,
  `clinometer_reading_top` int(11) DEFAULT NULL,
  `clinometer_reading_bottom` int(11) DEFAULT NULL,
  `height` double DEFAULT '0',
  `condition` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `exposure_to_sunlight` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `other_notes` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `text_from_scientific_name` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `photographed` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `genus` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `species` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tree_raw`
--

INSERT INTO `tree_raw` (`tree_id`, `north_south`, `east_west`, `campus`, `date`, `collector`, `latitude_degrees`, `latitude_minutes`, `latitude_seconds`, `latitude`, `longitude_degrees`, `longitude_minutes`, `longitude_seconds`, `longitude`, `common_name`, `scientific_name`, `dbh`, `notes`, `dbh_second_stem`, `distance_from_tree`, `clinometer_reading_top`, `clinometer_reading_bottom`, `height`, `condition`, `exposure_to_sunlight`, `other_notes`, `text_from_scientific_name`, `photographed`, `genus`, `species`) VALUES
(1, 'N', 'W', 'East Campus', '2/27/16', 'Adam Hull and Company', 39.4309, 0, 0, 39.4309, 77.8055, 0, 0, 77.8055, 'Sugar Maple', 'Acer saccharum', 71, '', '', 40, 26, 0, 19.50930354, 'Good', 'Full', 'cabling system an branch overhanging road; leaning toward road', '', 'Y', 'Acer', 'saccharum'),
(2, 'N', 'W', 'East Campus', '2/27/16', 'Adam Hull and Company', 39, 25, 51, 39.43083333, 77, 48, 20, 77.80555556, 'Dogwood', 'Cornus', 17, '', '', 20, 24, 3, 7.856418121, 'Fair', 'Partial', 'Two dead branches requiring pruning, no danger', '', 'Y', 'Cornus', NULL),
(3, 'N', 'W', 'East Campus', '2/27/16', 'Adam Hull and Company', 39, 25, 51, 39.43083333, 77, 48, 20, 77.80555556, 'Dogwood', 'Cornus', 18, '', '', 15, 27, 0, 7.642881742, 'Fair-poor', 'Shaded', 'Dead Branches, Shaded by building', '', 'Y', 'Cornus', NULL),
(4, 'N', 'W', 'East Campus', '2/27/16', 'Adam Hull and Company', 39, 25, 51, 39.43083333, 77, 48, 18, 77.805, 'Sycamore', 'Platanus occidentalis', 11.2, '', '', 8.9, 59, -12, 16.70384079, 'Good', 'Partial', 'Height may be off, wall in line way, hanging widow makers, Prune off lower branches craise the crown', '', 'Y', 'Platanus', 'occidentalis'),
(5, 'N', 'W', 'East Campus', '2/27/16', 'Adam Hull and Company', 39, 25, 51, 39.43083333, 77, 48, 20, 77.80555556, 'Dogwood', 'Cornus', 14, '', '', 14, 20, 4, 4.116607913, 'Fair-poor', 'Partial- shaded', 'Few dead Branches', '', 'Y', 'Cornus', NULL),
(6, 'N', 'W', 'East Campus', '2/27/16', 'Adam Hull and Company', 39, 25, 51, 39.43083333, 77, 48, 19, 77.80527778, 'Mulberry', 'Morus alba', 5.5, '', '', 13, 9, 4, 1.149949169, 'Good', 'Partial', 'Invasive tree, possible removal', '', 'Y', 'Morus', 'alba'),
(7, 'N', 'W', 'East Campus', '2/27/16', 'Adam Hull and Company', 39, 25, 56, 39.43222222, 77, 48, 18, 77.805, 'Norway Spruce', 'Picea abies', 11, '', '', 20, 11, -2, 4.586021573, 'Good', 'Full', 'Sad looking, something (pest) eating it', '', 'Y', 'Picea', 'abies'),
(8, 'N', 'W', 'East Campus', '2/27/16', 'Adam Hull and Company', 39, 25, 53, 39.43138889, 77, 48, 17, 77.80472222, 'Norway Spruce', 'Picea abies', 42.5, '', '', 30, 33, 0, 19.4822278, 'Fair', 'Partial', 'too close to other trees', '', 'Y', 'Picea', 'abies'),
(9, 'N', 'W', 'East Campus', '2/27/16', 'Adam Hull and Company', 39, 25, 53, 39.43138889, 77, 48, 17, 77.80472222, 'Norway Spruce', 'Picea abies', 40, '', '', 30, 33, 0, 19.4822278, 'Good', 'Full', 'Wood pecker holes', '', 'Y', 'Picea', 'abies'),
(10, 'N', 'W', 'East Campus', '2/27/16', 'Adam Hull and Company', 39, 25, 52, 39.43111111, 77, 48, 18, 77.805, 'Eastern Redbud', 'Cercis canadensis', 5, '', '', 18, 14, 2, 3.8593302, 'Good', 'Full', 'Cracked bark might indicate stress', '', 'Y', 'Cercis', 'canadensis'),
(11, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 53, 39.43130556, 77, 48, 16, 77.80447222, 'Eastern Redbud', 'Cercis canadensis', 9, '', '', 20, 12, 5, 2.501357963, 'Good', 'Partial', 'Some lower branches are not Flowering', '', 'Y', 'Cercis', 'canadensis'),
(12, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 53, 39.43133333, 77, 48, 16, 77.80441667, 'White Ash', 'Fraxinus americana', 116.5, '', '', 25, 44, 2, 23.26920013, 'Good', 'Full', 'Hard to see, but there is one large, dead branch. Shading a corner of White hall', '', 'Y', 'Fraxinus', 'americana'),
(13, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 53, 39.43136111, 77, 48, 17, 77.80466667, 'Eastern Redbud', 'Cercis canadensis', 5.4, '', '', 20, 9, -1, 3.516790105, 'Good', 'Shaded', 'Has some bark stripping on one side', '', 'Y', 'Cercis', 'canadensis'),
(14, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 52, 39.43108333, 77, 48, 16, 77.80447222, 'Black Maple', 'Prunus serotinia', 24, '', '', 12, 38, -8, 11.06191753, 'Good', 'Partial', 'Ivy, cable on side. Taller tree on one side blocks light', '', 'Y', 'Prunus', 'serotinia'),
(15, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 52, 39.43113889, 77, 48, 17, 77.80469444, 'Hackberry', 'Celtis occidentalis', 41.4, '', '', 25, 39, -4, 21.99277113, 'Fair', 'Partial', 'Dark marks along one side. Very close to a Norway Spruce', '', 'Y', 'Celtis', 'occidentalis'),
(16, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 52, 39.43102778, 77, 48, 16, 77.8045, 'Norway Spruce', 'Picea abies', 27.4, '', '', 25, 34, -3, 18.1729074, 'Good', 'Partial', 'Ivy along bottom. Sharing Space with tree 15.', '', 'Y', 'Picea', 'abies'),
(17, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 52, 39.431, 77, 48, 16, 77.80452778, 'Norway Spruce', 'Picea abies', 24.5, '', '', 22, 33, 3, 13.13399591, 'Poor', 'Partial- shaded', 'Extensive foreign ivy. Covers entire tree Lots of dead Branches', '', 'Y', 'Picea', 'abies'),
(18, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 52, 39.43102778, 77, 48, 17, 77.80458333, 'Norway Spruce', 'Picea abies', 38.3, '', '', 24, 30, 3, 12.59861976, 'Poor', 'Partial', 'Thick foreign ivy and lots of it.', '', 'Y', 'Picea', 'abies'),
(19, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 52, 39.43119444, 77, 48, 17, 77.80461111, 'Sugar Maple', 'Acer saccharum', 52.9, '', '', 25, 38, 4, 17.78397036, 'Poor', 'Full', 'Peeling bark', '', 'Y', 'Acer', 'saccharum'),
(20, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 53, 39.43125, 77, 48, 17, 77.80466667, 'Syberian elm', 'Ulmus pumila', 63.2, '', '', 25, 37, 5, 16.65163466, 'Good', 'Partial', 'Right next to a build, would be hard to cut down', '', 'Y', 'Ulmus', 'pumila'),
(21, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 58, 39.43277778, 77, 48, 12, 77.80341667, 'Crab Apple', 'Malus hopa', 32.7, '', '', 10, 19, -8, 4.84868448, 'Excellent', 'Full', '', '', 'Y', 'Malus', 'hopa'),
(22, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 57, 39.43261111, 77, 48, 12, 77.80336111, 'Pecan', 'Carya illinoinensis', 78, '', '', 30, 30, 5, 14.69584817, 'Good', 'Full', 'Overlooking coner of a road and a poweline. Protential safety hazarder although Tree is Healthy. Some branches calling off', '', 'Y', 'Carya', 'illinoinensis'),
(25, 'N', 'W', 'East Campus', '2/27/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 51, 39.43083333, 77, 48, 20, 77.80555556, 'Norway Spruce', 'Picea abies', 30.8, '', '', 23, 24, -1, 10.64172626, 'Fair', 'Partial', 'droopy Branches', '', 'Y', 'Picea', 'abies'),
(26, 'N', 'W', 'East Campus', '2/27/16', 'Jaysen, Adam, Tim, Melissa', 39.43139, 0, 0, 39.43139, 77.80502, 0, 0, 77.80502, 'Sugar Maple', 'Acer saccharum', 80, '', '', 25, 31, -8, 18.53503634, 'Fair', 'Partial', 'cabling system in place on branch over top of parkinglot', '', 'Y', 'Acer', 'saccharum'),
(27, 'N', 'W', 'East Campus', '2/27/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 52, 39.43111111, 77, 48, 19, 77.80527778, 'Red Oak', 'Quercus rubra', 64, '', '', 25, 35, 0, 17.50518846, 'Excellent', 'Full', 'right next to Reynolds and can provide shade', '', 'Y', 'Quercus', 'rubra'),
(28, 'N', 'W', 'East Campus', '2/27/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 52, 39.43111111, 77, 48, 20, 77.80555556, 'Sugar Maple', 'Acer saccharum', 17.6, '', '', 20, 22, -4, 9.479060756, 'Excellent', 'Full', 'young', '', 'Y', 'Acer', 'saccharum'),
(29, 'N', 'W', 'East Campus', '2/27/16', 'Jaysen, Adam, Tim, Melissa', 39, 26, 5, 39.43472222, 77, 48, 32, 77.80888889, 'Cherry', 'Prunus avium', 41, '', '', 25, 16, -4, 8.916804943, 'Excellent', 'Full', '', '', 'Y', 'Prunus', 'avium'),
(30, 'N', 'W', 'East Campus', '2/27/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 52, 39.43111111, 77, 48, 19, 77.80527778, 'Dogwood', 'Cornus', 18.2, '', '', 15, 13, -5, 4.77535282, 'Fair', 'Full', 'One dead branch', '', 'Y', 'Cornus', NULL),
(31, 'N', 'W', 'East Campus', '2/27/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 55, 39.43194444, 77, 48, 18, 77.805, 'Crab Apple', 'Malus hopa', 11.6, '', '', 15, 15, -5, 5.331567839, 'Fair', 'Partial', 'right next to Knutti', '', 'Y', 'Malus', 'hopa'),
(34, 'N', 'W', 'East Campus', '2/27/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 54, 39.43166667, 77, 48, 14, 77.80388889, 'Norway Spruce', 'Picea abies', 41.1, '', '', 35, 31, 2, 19.80789473, 'Fair', 'Partial', 'could provide shade', '', 'Y', 'Picea', 'abies'),
(35, 'N', 'W', 'East Campus', '2/27/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 52, 39.43111111, 77, 48, 18, 77.805, 'Pecan', 'Carya illinoinensis', 81.5, '', '', 35, 45, 1, 34.38907273, 'Good', 'Full', 'near a building', '', 'Y', 'Carya', 'illinoinensis'),
(36, 'N', 'W', 'East Campus', '2/27/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 52, 39.43111111, 77, 48, 18, 77.805, 'Japanese Pagoda', 'Styphnolobium japonicum', 15.5, '', '15.9', 20, 26, -2, 10.45306716, 'Good', 'Partial', '', '', 'Y', 'Styphnolobium', 'japonicum'),
(37, 'N', 'W', 'East Campus', '2/27/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 52, 39.43111111, 77, 48, 18, 77.805, 'Japanese Snowbell', 'Styrax japonicus', 12, '', '13.2', 20, 26, -2, 10.45306716, 'Good', 'Partial', 'gigantic rock by roots', '', 'Y', 'Styrax', 'japonicus'),
(38, 'N', 'W', 'East Campus', '4/2/16', 'Ella B. Ben L. Jasmin T.', 39, 26, 0, 39.4316, 77, 48, 0, 77.80428333, 'Weeping Crab Apple', 'Cedrus atlantica', 5, '', '', 10, 12, -15, 4.805057541, 'Good', 'Partial', '', 'Glauca Pendula', 'Y', 'Cedrus', 'atlantica'),
(39, 'N', 'W', 'East Campus', '4/2/16', 'Ella B. Ben L. Jasmin T.', 39, 26, 0, 39.43156667, 77, 48, 0, 77.80405, 'Japanese Pagoda', 'Styphnolobium japonicum', 10.1, 'Taken 40 cm from base (branching Point)', '', 10, 12, -9, 3.70941002, 'Excellent', 'Full', 'Branching at base.', '', 'Y', 'Styphnolobium', 'japonicum'),
(40, 'N', 'W', 'East Campus', '4/2/16', 'Ella B. Ben L. Jasmin T.', 39, 26, 0, 39.4315, 77, 48, 0, 77.80378333, 'Ash ', 'Fraxinus', 7, '', '', 10, 32, -10, 8.011963326, 'Excellent', 'Full', '', '', 'Y', 'Fraxinus', NULL),
(41, 'N', 'W', 'East Campus', '4/2/16', 'Ella B. Ben L. Jasmin T.', 39, 26, 0, 39.4321, 77, 48, 0, 77.80381667, 'Zelkova ', 'Carpinifolia', 32.5, '', '', 20, 44, 1, 18.9646742, 'Good', 'Full', 'Non-native (elm Family)', '', 'Y', 'Carpinifolia', NULL),
(42, 'N', 'W', 'East Campus', '4/2/16', 'Ella B. Ben L. Jasmin T.', 39, 26, 0, 39.432, 77, 48, 0, 77.80363333, 'Crab Apple', 'Malus hopa', 15, '', '', 10, 11, -7, 3.1716487, 'Excellent', 'Full', 'Could use some pruning', '', 'Y', 'Malus', 'hopa'),
(43, 'N', 'W', 'East Campus', '4/2/16', 'Ella B. Ben L. Jasmin T.', 39, 26, 0, 39.432, 77, 48, 0, 77.80356667, 'Sugar Maple', 'Acer saccharum', 14.5, '', '', 10, 55, -5, 15.1563667, 'Dying', 'Full', 'Some scarring; branching halfway  up base, shelf fungi, crown is dead', '', 'Y', 'Acer', 'saccharum'),
(44, 'N', 'W', 'East Campus', '4/2/16', 'Ella B. Ben L. Jasmin T.', 39, 26, 0, 39.43231667, 77, 48, 0, 77.80323333, 'Purple Leaf Plum ', 'Acer saccharum', 65, '', '', 40, 46, -4, 44.21828503, 'Good', 'Full', 'Branching by electrical cables', '', 'Y', 'Acer', 'saccharum'),
(45, 'N', 'W', 'East Campus', '4/2/16', 'Ella B. Ben L. Jasmin T.', 39, 26, 0, 39.43231667, 77, 48, 0, 77.80333333, 'Crab Apple', 'Malus hopa', 12.5, 'Taken 72 cm from base (branching Point)', '', 10, 24, -11, 6.396089944, 'Fair', 'Full', 'Bark is flaking, branches growing straight up and straight down', '', 'Y', 'Malus', 'hopa'),
(46, 'N', 'W', 'East Campus', '4/2/16', 'Ella B. Ben L. Jasmin T.', 39, 26, 0, 39.43263333, 77, 48, 0, 77.8032, 'Sugar Maple', 'Acer saccharum', 13.9, '', '', 15, 40, -12, 15.77484289, 'Fair', 'Full', 'Some branching are dead', '', 'Y', 'Acer', 'saccharum'),
(47, 'N', 'W', 'East Campus', '4/2/16', 'Ella B. Ben L. Jasmin T.', 39, 26, 0, 39.43265, 77, 48, 0, 77.80321667, 'Crab Apple', 'Malus hopa', 10.3, '', '', 10, 19, -13, 5.751958044, 'Good', 'Full', 'Some dead branches', '', 'Y', 'Malus', 'hopa'),
(48, 'N', 'W', 'East Campus', '4/2/16', 'Ella B. Ben L. Jasmin T.', 39, 26, 0, 39.4328, 77, 48, 0, 77.80385, 'Ash ', 'Fraxinus', 19.5, '', '', 12, 28, -3, 7.009406531, 'Good', 'Partial', 'Right behind Library', '', 'Y', 'Fraxinus', NULL),
(49, 'N', 'W', 'East Campus', '4/2/16', 'Ella B. Ben L. Jasmin T.', 39, 26, 0, 39.43286667, 77, 48, 0, 77.8038, 'Ash ', 'Fraxinus', 20.6, '', '', 12, 33, -8, 9.479381135, 'Good', 'Partial', '', '', 'Y', 'Fraxinus', NULL),
(50, 'N', 'W', 'East Campus', '2/27/16', 'Group 3', 39, 25, 51, 39.43080583, 77, 48, 19, 77.80532194, 'Sugar Maple', 'Acer saccharum', 86, '', '', 30, 35, -7, 24.68976297, 'Good', 'Full', 'wiring system, divison in bark, large branch cut off, vine system (European Ivay) that ideally should be Removed', '', 'Y', 'Acer', 'saccharum'),
(51, 'N', 'W', 'East Campus', '2/27/16', 'Group 3', 39.43105, 0, 0, 39.43105, 77.80504, 0, 0, 77.80504, 'Sugar Maple', 'Acer saccharum', 87, '', '', 32, 31, -7, 23.15664576, 'Fair', 'Full', 'leaning; wiring syste,; multple splits; European Ivory (Should ideally be removed)', '', 'Y', 'Acer', 'saccharum'),
(52, 'N', 'W', 'East Campus', '2/27/16', 'Group 3', 39.43105, 0, 0, 39.43105, 77.8051, 0, 0, 77.8051, 'Sugar Maple', 'Acer saccharum', 72, '', '', 30, 30, -6, 20.47363513, 'Good', 'Full', '', '', 'Y', 'Acer', 'saccharum'),
(53, 'N', 'W', 'East Campus', '2/27/16', 'Group 3', 39, 25, 54, 39.43157472, 77, 48, 18, 77.80505333, 'Bradford Pear', 'Pyrus calleryana', 28.4, '', '', 33, 20, -3, 13.74047445, 'Excellent', 'Partial', 'Ivasive species; branches can be very brittle', '', 'Y', 'Pyrus', 'calleryana'),
(54, 'N', 'W', 'East Campus', '2/27/16', 'Group 3', 39.43148, 0, 0, 39.43148, 77.80476, 0, 0, 77.80476, 'Crab Apple', 'Malus hopa', 16, '', '', 30, 8, -4, 6.314029399, 'Poor', 'Partial', 'Bark is getting Weary; suckers; old tree', '', 'Y', 'Malus', 'hopa'),
(55, 'N', 'W', 'East Campus', '2/27/16', 'Group 3', 39, 25, 53, 39.43131556, 77, 48, 18, 77.80508194, 'Dogwood', 'Cornus', 12.5, '', '14', 30, 6, -4, 5.250931416, 'Fair', 'Full', 'tree split into 2 below DBH; have open wounds that are healing over; decay within; all branches have buds with in canopy', '', 'Y', 'Cornus', NULL),
(56, 'N', 'W', 'East Campus', '2/27/16', 'Group 3', 39, 25, 55, 39.43204389, 77, 48, 17, 77.8047425, 'Crab Apple', 'Malus hopa', 11.2, '', '', 10, 11, -7, 3.1716487, 'Good', 'Full', '', '', 'Y', 'Malus', 'hopa'),
(57, 'N', 'W', 'East Campus', '2/27/16', 'Group 3', 39.43139, 0, 0, 39.43139, 77.80476, 0, 0, 77.80476, 'Sugar Maple', 'Acer saccharum', 68, '', '', 28, 33, 0, 18.18341261, 'Good', 'Full', 'Some wear on bark', '', 'Y', 'Acer', 'saccharum'),
(58, 'N', 'W', 'East Campus', '2/27/16', 'Group 3', 39, 25, 54, 39.43163333, 77, 48, 18, 77.80487472, 'Sugar Maple', 'Acer saccharum', 27.4, '', '', 21, 25, -1, 10.15901718, 'Excellent', 'Full', '', '', 'Y', 'Acer', 'saccharum'),
(59, 'N', 'W', 'East Campus', '4/2/16', 'Alyssa, et. Al', 39, 25, 54, 39.43170222, 77, 48, 15, 77.80406028, 'Sugar Maple', 'Acer saccharum', 57, '', '', 30, 39, 1, 23.76986905, 'Fair', 'Full', 'Bark is starting to fall apart', '', 'Y', 'Acer', 'saccharum'),
(60, 'N', 'W', 'East Campus', '4/2/16', 'Alyssa, et. Al', 39, 25, 54, 39.43170389, 77, 48, 15, 77.80419889, 'Serviceberry', 'Amelanchier', 4, '', '', 5, 33, -9, 3.977273506, 'Excellent', 'Partial', '', '', 'Y', 'Amelanchier', NULL),
(61, 'N', 'W', 'East Campus', '4/2/16', 'Alyssa, et. Al', 39, 25, 51, 39.4309475, 77, 48, 15, 77.80407028, 'Norway Spruce', 'Picea abies', 35, '', '', 30, 36, -5, 24.42093575, 'Fair', 'Shaded', 'Missing Branches', '', 'Y', 'Picea', 'abies'),
(62, 'N', 'W', 'East Campus', '4/2/16', 'Alyssa, et. Al', 39, 25, 52, 39.43102167, 77, 48, 17, 77.80461944, 'Silver Maple', 'Acer saccharinum', 146.6, '', '', 20, 54, -2, 28.2260538, 'Good', 'Full', 'Branch Running into Norway Spruce beside it', '', 'Y', 'Acer', 'saccharinum'),
(63, 'N', 'W', 'East Campus', '4/2/16', 'Alyssa, et. Al', 39, 25, 52, 39.43122056, 77, 48, 16, 77.80450111, 'Norway Spruce', 'Picea abies', 53.5, '', '', 20, 35, -3, 15.05230635, 'Fair', 'Shaded', 'Branches towards the bottom are dead that can be cut off', '', 'Y', 'Picea', 'abies'),
(64, 'N', 'W', 'East Campus', '4/2/16', 'Alyssa, et. Al', 39, 25, 51, 39.43079639, 77, 48, 19, 77.80523194, 'Norway Spruce', 'Picea abies', 58, '', '', 20, 32, -4, 13.89592328, 'Fair', 'Shaded', 'Dead brances, cut down branches', '', 'Y', 'Picea', 'abies'),
(65, 'N', 'W', 'East Campus', '4/2/16', 'Alyssa, et. Al', 39, 25, 56, 39.43229583, 77, 48, 13, 77.80372556, 'Zelkova ', 'Carpinifolia', 28, '', '', 20, 41, 0, 17.38573476, 'Good', 'Full', 'Some bark is falling off, but overall good', '', 'Y', 'Carpinifolia', NULL),
(66, 'N', 'W', 'East Campus', '4/2/16', 'Alyssa, et. Al', 39, 25, 58, 39.43283306, 77, 48, 14, 77.8037575, 'Bradford Pear', 'Pyrus calleryana', 33.5, '', '', 20, 40, -10, 20.30853224, 'Fair', 'Partial/Full', 'Broken branches, one branch is cracked MAY break ', '', 'Y', 'Pyrus', 'calleryana'),
(67, 'N', 'W', 'East Campus', '4/2/16', 'Alyssa, et. Al', 39, 25, 54, 39.43161111, 77, 48, 14, 77.80389167, 'Bradford Pear', 'Pyrus calleryana', 26, '', '', 20, 36, -10, 18.05739017, 'Good', 'Partial', '', '', 'Y', 'Pyrus', 'calleryana'),
(68, 'N', 'W', 'East Campus', '4/2/16', 'Alyssa, et. Al', 39, 25, 57, 39.43245306, 77, 48, 14, 77.80393028, 'Crab Apple', 'Malus hopa', 34.5, '', '', 12, 28, -4, 7.219634923, 'Good', 'Partial', 'Dead tree limb that can be cut off', '', 'Y', 'Malus', 'hopa'),
(69, 'N', 'W', 'East Campus', '4/2/16', 'Alyssa, et. Al', 39, 25, 57, 39.43260528, 77, 48, 14, 77.80388306, 'Bradford Pear', 'Pyrus calleryana', 39.5, '', '', 20, 29, -1, 11.43528233, 'Good', 'Full', 'Scar from broken branch, cut off branches', '', 'Y', 'Pyrus', 'calleryana'),
(70, 'N', 'W', 'East Campus', '4/2/16', 'Alyssa, et. Al', 39, 25, 58, 39.43286833, 77, 48, 13, 77.80370461, 'Bradford Pear', 'Pyrus calleryana', 21, '', '', 20, 35, -3, 15.05230635, 'Good', 'Partial', 'Pointed Broken Branch', '', 'Y', 'Pyrus', 'calleryana'),
(71, 'N', 'W', 'East Campus', '4/2/16', 'Alyssa, et. Al', 39, 25, 57, 39.43237056, 77, 48, 14, 77.80396611, 'Crab Apple', 'Malus Hopa', 23.4, '', '', 20, 27, -4, 11.58904523, 'Good', 'Partial', 'Right beside a building', '', 'Y', 'Malus', 'Hopa'),
(72, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 53, 39.43138889, 77, 48, 16, 77.80444444, 'Norway Spruce', 'Picea abies', 26, '', '', 20, 23, 4, 7.090960085, 'Good', 'Partial', 'Singe marks along side of tree, tagged with orange Ribbon', '', 'Y', 'Picea', 'abies'),
(73, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Dr. Lesser, Ella', 39, 27, 0, 39.44176667, 77, 49, 0, 77.81308333, 'River Birch', 'Betula nigra', 2.2, '', '', 10, 9, -4, 2.283112523, 'Excellent', 'Full', 'Part of 2016 Communitree Arbor Day', '', 'Y', 'Betula', 'nigra'),
(77, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Dr. Lesser, Ella', 39, 27, 0, 39.44176667, 77, 49, 0, 77.81331667, 'Willow Oak', 'Quercus phellos', 3, '', '', 10, 3, -6, 1.575120145, 'Excellent', 'Full', 'Part of 2016 Communitree Arbor Day', '', 'Y', 'Quercus', 'phellos'),
(81, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Dr. Lesser, Ella', 39, 27, 0, 39.4418, 77, 49, 0, 77.81351667, 'River Birch', 'Betula nigra', 2.5, '', '', 10, 11, -9, 3.527647495, 'Excellent', 'Full', 'Part of 2016 Communitree Arbor Day', '', 'Y', 'Betula', 'nigra'),
(89, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Ella, Demian, Rodney, Ferris', 39.43244, 0, 0, 39.43244, 77.8042, 0, 0, 77.8042, 'Cherry', 'Prunus avium', 15.7, 'Splits 0.8 meters up', '', 15, 23, 0, 6.367122243, 'Good', 'Full', 'Extensive Pruning', '', 'Y', 'Prunus', 'avium'),
(90, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Ella, Demian, Rodney, Ferris', 39.43246, 0, 0, 39.43246, 77.80458, 0, 0, 77.80458, 'Dogwood', 'Cornus', 3.2, 'Branches .35 meters up', '', 10, 6, -4, 1.750310472, 'Good', 'Full', 'Some broken branches', '', 'Y', 'Cornus', NULL),
(91, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Ella, Demian, Rodney, Ferris', 39, 25, 57, 39.43261111, 77, 48, 17, 77.80463889, 'Mulberry', 'Morus alba', 7.3, '', '', 10, 6, -3, 1.575120145, 'Good', 'Full', 'Planted in memory of Mrs. Carl Bell, Pest hole/ split neat base', '', 'Y', 'Morus', 'alba'),
(92, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Ella, Demian, Rodney, Ferris', 39, 25, 56, 39.43211111, 77, 48, 18, 77.80494444, 'Sugar Maple', 'Acer saccharum', 34.8, '', '', 20, 25, -1, 9.675254462, 'Excellent', 'Full', 'a squirrel lives here', '', 'Y', 'Acer', 'saccharum'),
(93, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Ella, Demian, Rodney, Ferris', 39, 25, 55, 39.43191667, 77, 48, 17, 77.80461111, 'Black Walnut', 'Juglans nigra', 50.5, '', '', 20, 38, -5, 17.3754858, 'Good', 'Full', 'Pruning', '', 'Y', 'Juglans', 'nigra'),
(94, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Ella, Demian, Rodney, Ferris', 39, 25, 59, 39.43291667, 77, 48, 16, 77.80452778, 'Dogwood', 'Cornus', 28, 'split stem 0.41 m up', '', 15, 30, -1, 8.922080012, 'Good', 'Full', 'Moss growing on it', '', 'Y', 'Cornus', NULL),
(95, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Ella, Demian, Rodney, Ferris', 39, 25, 59, 39.43316667, 77, 48, 16, 77.80455556, 'Dogwood', 'Cornus', 13.2, '', '', 10, 15, -9, 4.080685857, 'Fair', 'Full', 'Pruning, scars, hole near base', '', 'Y', 'Cornus', NULL),
(96, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Ella, Demian, Rodney, Ferris', 39, 25, 59, 39.43308333, 77, 48, 16, 77.80452778, 'Green Ash', 'Fraxinus pennsylvanica', 25.6, '', '', 15, 32, 1, 9.111214305, 'Good', 'Full', 'healed over scars, plugged holes', '', 'Y', 'Fraxinus', 'pennsylvanica'),
(97, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Ella, Demian, Rodney, Ferris', 39, 25, 59, 39.43313889, 77, 48, 16, 77.80447222, 'Green Ash', 'Fraxinus pennsylvanica', 24.6, '', '', 12, 27, -7, 7.456394027, 'Good', 'Full', 'Plugged Holes at base, tree crown lacks buds unlike the rest of branches', '', 'Y', 'Fraxinus', 'pennsylvanica'),
(98, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Ella, Demian, Rodney, Ferris', 39, 26, 0, 39.43336111, 77, 48, 16, 77.8045, 'Green Ash', 'Fraxinus pennsylvanica', 17.5, '', '', 18, 18, -4, 7.107237147, 'Fair', 'Full', 'Soft rot, pluged, insect investation', '', 'Y', 'Fraxinus', 'pennsylvanica'),
(99, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Ella, Demian, Rodney, Ferris', 39, 26, 0, 39.43333333, 77, 48, 16, 77.80441667, 'Green Ash', 'Fraxinus pennsylvanica', 15, '', '', 15, 20, -3, 5.966692732, 'Fair', 'Full', 'Pluged at base, insect investation, some scaring', '', 'Y', 'Fraxinus', 'pennsylvanica'),
(100, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 58, 39.43275, 77, 48, 11, 77.80316667, 'Cherry', 'Prunus avium', 47, '', '', 20, 11, 7, 1.431914965, 'Excellent', 'Full', '', '', 'Y', 'Prunus', 'avium'),
(101, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 53, 39.43133333, 77, 48, 13, 77.8035, 'Crab Apple', 'Malus hopa', 36.9, '', '', 20, 12, -5, 6.000904504, 'Good', 'Full', 'Deep hole through center of tree', '', 'Y', 'Malus', 'hopa'),
(102, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 58, 39.43280556, 77, 48, 13, 77.80347222, 'Crab Apple', 'Malus hopa', 33.8, '', '', 20, 9, -6, 5.269773512, 'Excellent', 'Full', '', '', 'Y', 'Malus', 'hopa'),
(104, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 59, 39.43305556, 77, 48, 12, 77.80325, 'Magnolia', 'Magnolia grandiflora', 15.7, '', '', 12, 25, 3, 4.966798546, 'Excellent', 'Full', 'Two praying mantis nests', '', 'Y', 'Magnolia', 'grandiflora'),
(105, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Adam, Tim, Melissa', 39, 25, 60, 39.43330556, 77, 48, 13, 77.80363889, 'Cherry', 'Prunus avium', 17.6, '', '', 15, 13, 6, 1.886459338, 'Excellent', 'Full', '', '', 'Y', 'Prunus', 'avium'),
(106, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.4325, 77, 48, 0, 77.80425, 'Sugar Maple', 'Acer saccharum', 20.4, '', '', 20, 30, -7, 14.0026966, 'Excellent', 'Full', '', '', 'Y', 'Acer', 'saccharum'),
(107, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.4325, 77, 48, 0, 77.80431667, 'Dogwood', 'Cornus', 7.3, '', '', 10, 1, -7, 1.402396258, 'Excellent', 'Full', '', '', 'Y', 'Cornus', NULL),
(108, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43256667, 77, 48, 0, 77.80438333, 'Dogwood', 'Cornus', 7.3, '', '', 5, -3, -23, 1.860335185, 'Excellent', 'Full', '', '', 'Y', 'Cornus', NULL),
(109, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43261667, 77, 48, 0, 77.80445, 'Dogwood', 'Cornus', 10.2, '', '', 5, 5, -25, 2.768981608, 'Good', 'Full', 'Some of the leaves are shriveld or dying', '', 'Y', 'Cornus', NULL),
(110, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43273333, 77, 48, 0, 77.80453333, 'Dogwood', 'Cornus', 32.4, 'spilt below breast hight', '', 20, 25, -9, 12.49384197, 'Good', 'Full', 'Tons of weed coverring base by the library', '', 'Y', 'Cornus', NULL),
(111, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43271667, 77, 48, 0, 77.80461667, 'Eastern Redbud', 'Cercis canadensis', 21.4, '', '', 10, 15, -10, 4.442761731, 'Good', 'Full', 'Roots that are exposed have been cut; the bark on the trunk of the tree looks loose', '', 'Y', 'Cercis', 'canadensis'),
(112, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43266667, 77, 48, 0, 77.80465, 'Eastern Redbud', 'Cercis canadensis', 8.3, '', '', 10, 14, -8, 3.898688375, 'Good', 'Full', 'Part of the tree looks poorly cut', '', 'Y', 'Cercis', 'canadensis'),
(113, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.4326, 77, 48, 0, 77.80466667, 'Eastern Redbud', 'Cercis canadensis', 11.3, '', '', 10, 8, -5, 2.280294982, 'Excellent', 'Full', 'Gentle', '', 'Y', 'Cercis', 'canadensis'),
(114, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43238333, 77, 48, 0, 77.80485, 'Magnolia', 'Magnolia grandiflora', 15.4, '', '', 10, 34, -5, 7.619971804, 'Excellent', 'Partial', 'Planted in memory of Mr. Parel Saab Biology Professor, right next to Snyder Hall', '', 'Y', 'Magnolia', 'grandiflora'),
(115, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.4321, 77, 48, 0, 77.80473333, 'Sugar Maple', 'Acer saccharum', 69, '', '', 20, 39, -2, 16.89409605, 'Fair', 'Full', 'There\'s a cable going through the tree; near Snyder Hall; branches overlook the sidewalk and part of the load lot of rot in bottom of stem', '', 'Y', 'Acer', 'saccharum'),
(116, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43211667, 77, 48, 0, 77.80455, 'Cherry', 'Prunus avium', 17, '', '', 15, 14, -4, 4.788822222, 'Good', 'Full', '', '', 'Y', 'Prunus', 'avium'),
(117, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43278333, 77, 48, 0, 77.80448333, 'Crab Apple', 'Malus hopa', 10, '', '', 10, 15, -8, 4.084900271, 'Good', 'Partial', 'A wound near the base', '', 'Y', 'Malus', 'hopa'),
(118, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.433, 77, 48, 0, 77.80443333, 'Dogwood', 'Cornus', 19, '', '', 10, 16, -8, 4.272862205, 'Good', 'Partial', 'There is foreign ivy growing on it', '', 'Y', 'Cornus', NULL),
(119, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.433, 77, 48, 0, 77.80441667, 'Magnolia', 'Magnolia grandiflora', 33.6, 'Multiple stems', '', 15, 39, -1, 12.40858647, 'Excellent', 'Full', 'by library', '', 'Y', 'Magnolia', 'grandiflora'),
(120, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.4331, 77, 48, 0, 77.80433333, 'Dogwood', 'Cornus', 5, '', '', 10, 16, -8, 4.272862205, 'Excellent', 'Partial', '', '', 'Y', 'Cornus', NULL),
(122, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43331667, 77, 48, 0, 77.80426667, 'Green Ash', 'Fraxinus pennsylvanica', 10, '', '', 9, 15, -9, 3.837002695, 'Excellent', 'Full', '', '', 'Y', 'Fraxinus', 'pennsylvanica'),
(123, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.433335, 77, 48, 0, 77.80401667, 'Green Ash', 'Fraxinus pennsylvanica', 12.3, '', '', 10, 35, -6, 8.053117735, 'Good', 'Partial', 'By Byrd Legislation Building', '', 'Y', 'Fraxinus', 'pennsylvanica'),
(124, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43335, 77, 48, 0, 77.80401667, 'Green Ash', 'Fraxinus pennsylvanica', 14, '', '', 11, 33, -5, 8.105858824, 'Good', 'Partial', '', '', 'Y', 'Fraxinus', 'pennsylvanica'),
(125, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.4329, 77, 48, 0, 77.80375, 'Ash ', 'Fraxinus', 22.7, '', '', 15, 50, -5, 19.18863384, 'Good', 'Partial', 'Tilting toward parking lot', '', 'Y', 'Fraxinus', NULL),
(126, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43296667, 77, 48, 0, 77.80376667, 'Ash ', 'Fraxinus', 13, '', '', 15, 43, -8, 16.09583881, 'Good', 'Partial', '', '', 'Y', 'Fraxinus', NULL),
(127, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43301667, 77, 48, 0, 77.80371667, 'Ash ', 'Fraxinus', 24.2, '', '', 15, 52, -6, 20.77568801, 'Good', 'Partial', '', '', 'Y', 'Fraxinus', NULL),
(128, 'N', 'W', 'East Campus', '4/2/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.4331, 77, 48, 0, 77.80363333, 'Ash ', 'Fraxinus', 17.5, '', '', 15, 45, -5, 16.31232995, 'Good', 'Full', '', '', 'Y', 'Fraxinus', NULL),
(130, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43341667, 77, 48, 0, 77.80428333, 'Green Ash', 'Fraxinus pennsylvanica', 16, '', '', 10, 30, -5, 6.648389327, 'Fair', 'Full', 'One branch is dead and the tree has been pruned', '', 'Y', 'Fraxinus', 'pennsylvanica'),
(132, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43336667, 77, 48, 0, 77.80391667, 'Green Ash', 'Fraxinus pennsylvanica', 21.1, '', '', 10, 35, -11, 8.945878473, 'Good', 'Full', '', '', 'Y', 'Fraxinus', 'pennsylvanica'),
(133, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43335, 77, 48, 0, 77.8038, 'Cherry', 'Prunus avium', 15.5, '', '', 10, 15, -8, 4.084900271, 'Good', 'Full', 'Pruned', '', 'Y', 'Prunus', 'avium'),
(134, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43285, 77, 48, 0, 77.80293333, 'Crape Myrtle', 'Lagerstroemia', 16.8, 'Multiple stems', '', 10, 32, -10, 8.011963326, 'Fair', 'Full', 'Bag Worms in 2 locations; between two power line poles', '', 'Y', 'Lagerstroemia', NULL),
(135, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43358333, 77, 48, 0, 77.80335, 'Hackberry', 'Celtis occidentalis', 31.5, '', '', 17, 35, -7, 13.99086568, 'Excellent', 'Partial', '', '', 'Y', 'Celtis', 'occidentalis'),
(136, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.4336, 77, 48, 0, 77.80331667, 'Red Oak', 'Quercus rubra', 58.5, '', '', 25, 33, -6, 18.86279571, 'Good', 'Full', 'Super straight, cut at the top, all the branches are growing out from one side', '', 'Y', 'Quercus', 'rubra'),
(137, 'N', 'W', 'East Campus', '4/23/16', 'Jaysen, Tim, Tanai, Adam, Dr. Lesser, Dr. Plautz, Emily, Tim F. Sncha', 39, 26, 0, 39.43363333, 77, 48, 0, 77.80373333, 'Hackberry', 'Celtis occidentalis', 49.5, '', '', 20, 29, -9, 14.25386984, 'Good', 'Full', 'At a corner overlooking parts of the parking lot', '', 'Y', 'Celtis', 'occidentalis'),
(140, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Ella, Demian, Rodney, Ferris', 39, 26, 0, 39.43344444, 77, 48, 15, 77.80427778, 'Green Ash', 'Fraxinus pennsylvanica', 22.6, '', '', 15, 22, -4, 6.826096436, 'Fair', 'Full', 'Some Vertical branching, branch rot', '', 'Y', 'Fraxinus', 'pennsylvanica'),
(142, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Ella, Demian, Rodney, Ferris', 39, 26, 1, 39.43372222, 77, 48, 12, 77.80344444, 'Eastern Hemlock', 'Tsuga canadensis', 12.4, '', '', 15, 15, -9, 6.25503037, 'Good', 'Full', 'Split stem, bush honeysuckle growing beneath, tailgater damage', '', 'Y', 'Tsuga', 'canadensis'),
(143, 'N', 'W', 'East Campus', '4/23/16', 'Ben, Ella, Demian, Rodney, Ferris', 39, 26, 1, 39.43358333, 77, 48, 14, 77.80375, 'Eastern Hemlock', 'Tsuga canadensis', 22.1, '', '', 15, 14, -7, 5.581688456, 'Dying', 'Full', 'Destroyed by Wooly Adelgid; Could recover if treated ', '', 'Y', 'Tsuga', 'canadensis'),
(144, 'N', 'W', 'East Campus', '7/11/16', 'Dr. Lesser, Rodney, Benjamin', 39.43419, 0, 0, 39.43419, 77.80369, 0, 0, 77.80369, 'Yellow Oak', 'Quercus muehlenbergii', 72, '', '', 25, 36, -4, 19.6926287, 'Excellent', 'Full', 'Doing very well in spot', '', 'Y', 'Quercus', 'muehlenbergii'),
(145, 'N', 'W', 'East Campus', '7/11/16', 'Dr. Lesser, Rodney, Benjamin', 39.43376, 0, 0, 39.43376, 77.80401, 0, 0, 77.80401, 'Weeping Cherry', 'Prunus subhirtella', 29.2, '', '', 10, 7, -8, 2.633253956, 'Good', 'Partial', 'Oriental Flowering Cherry', 'Pendula', 'Y', 'Prunus', 'subhirtella'),
(146, 'N', 'W', 'East Campus', '7/11/16', 'Dr. Lesser, Rodney, Benjamin', 39.43375, 0, 0, 39.43375, 77.80393, 0, 0, 77.80393, 'Weeping Cherry', 'Prunus subhirtella', 28.9, '', '', 10, 7, -8, 2.633253956, 'Good', 'Partial', '', 'Pendula', 'Y', 'Prunus', 'subhirtella'),
(147, 'N', 'W', 'East Campus', '7/11/16', 'Dr. Lesser, Rodney, Benjamin', 39.43364, 0, 0, 39.43364, 77.8041, 0, 0, 77.8041, 'Weeping Cherry', 'Prunus subhirtella', 25.8, '', '', 10, 5, -8, 2.280294982, 'Good', 'Partial', '', 'Pendula', 'Y', 'Prunus', 'subhirtella'),
(148, 'N', 'W', 'East Campus', '7/11/16', 'Dr. Lesser, Rodney, Benjamin', 39.43382, 0, 0, 39.43382, 77.80432, 0, 0, 77.80432, 'Green Ash', 'Fraxinus pennsylvanica', 20.8, '', '', 20, 11, -5, 5.637379453, 'Excellent', 'Partial', 'Tree has been pluged', '', 'Y', 'Fraxinus', 'pennsylvanica'),
(149, 'N', 'W', 'East Campus', '7/11/16', 'Dr. Lesser, Rodney, Benjamin', 39.43393, 0, 0, 39.43393, 77.80421, 0, 0, 77.80421, 'Weeping Cherry', 'Prunus subhirtella', 20.8, '', '', 10, 3, -8, 1.92948614, 'Good', 'Full', 'Abnormal new shoots', 'Pendula', 'Y', 'Prunus', 'subhirtella'),
(150, 'N', 'W', 'East Campus', '7/11/16', 'Dr. Lesser, Rodney, Benjamin', 39.43393, 0, 0, 39.43393, 77.80421, 0, 0, 77.80421, 'Weeping Cherry', 'Prunus subhirtella', 18.3, '', '', 11, 4, -8, 2.315144113, 'Good', 'Full', '', 'Pendula', 'Y', 'Prunus', 'subhirtella'),
(151, 'N', 'W', 'East Campus', '7/11/16', 'Dr. Lesser, Rodney, Benjamin', 39.43405, 0, 0, 39.43405, 77.80394, 0, 0, 77.80394, 'Dogwood', 'Cornus', 14.9, '', '', 10, 9, -8, 2.98925275, 'Poor', 'Full', '3/5ths dying, several shoots have been removed', '', 'Y', 'Cornus', NULL),
(152, 'N', 'W', 'East Campus', '7/11/16', 'Dr. Lesser, Rodney, Benjamin', 39.43395, 0, 0, 39.43395, 77.80456, 0, 0, 77.80456, 'Atlas Cedar ', 'Cedrus atlantica', 23.7, '', '', 25, 22, -4, 11.62972115, 'Good', 'Partial', '# 152-154 are in same photo', '', 'Y', 'Cedrus', 'atlantica'),
(153, 'N', 'W', 'East Campus', '7/11/16', 'Dr. Lesser, Rodney, Benjamin', 39.43394, 0, 0, 39.43394, 77.80453, 0, 0, 77.80453, 'Atlas Cedar ', 'Cedrus atlantica', 23.1, '', '', 25, 22, -4, 11.62972115, 'Good', 'Partial', '# 152-154 are in same photo', '', 'Y', 'Cedrus', 'atlantica'),
(154, 'N', 'W', 'East Campus', '7/11/16', 'Dr. Lesser, Rodney, Benjamin', 39.43393, 0, 0, 39.43393, 77.80454, 0, 0, 77.80454, 'Atlas Cedar ', 'Cedrus atlantica', 25.4, '', '', 25, 22, -4, 11.62972115, 'Good', 'Partial', '# 152-154 are in same photo', '', 'Y', 'Cedrus', 'atlantica'),
(155, 'N', 'W', 'East Campus', '7/11/16', 'Dr. Lesser, Rodney, Benjamin', 39.43438, 0, 0, 39.43438, 77.80442, 0, 0, 77.80442, 'Thornless Honey Locust (cultivars)', 'Gleditsia triacanthos', 19.4, '', '', 15, 25, -7, 8.703648997, 'Good', 'Full', '', '', 'Y', 'Gleditsia', 'triacanthos'),
(156, 'N', 'W', 'East Campus', '7/11/16', 'Dr. Lesser, Rodney, Benjamin', 39.43431, 0, 0, 39.43431, 77.8043, 0, 0, 77.8043, 'Thornless Honey Locust (cultivars)', 'Gleditsia triacanthos', 18.3, '', '', 14, 24, -7, 7.828300111, 'Good', 'Full', '', '', 'Y', 'Gleditsia', 'triacanthos'),
(157, 'N', 'W', 'East Campus', '7/11/16', 'Dr. Lesser, Rodney, Benjamin', 39.4343, 0, 0, 39.4343, 77.80429, 0, 0, 77.80429, 'Thornless Honey Locust (cultivars)', 'Gleditsia triacanthos', 18.1, '', '', 15, 18, -7, 6.582829568, 'Good', 'Full', 'Minor pruning', '', 'Y', 'Gleditsia', 'triacanthos'),
(158, 'N', 'W', 'East Campus', '7/12/16', 'Dr. Lesser, Rodney, Benjamin', 39.43436, 0, 0, 39.43436, 77.80392, 0, 0, 77.80392, 'Dogwood', 'Cornus', 16.9, '', '', 10, 19, -8, 4.84868448, 'Fair/Poor', 'Partial', 'Die back in the Crown', '', 'Y', 'Cornus', NULL),
(159, 'N', 'W', 'East Campus', '7/12/16', 'Dr. Lesser, Rodney, Benjamin', 39.4345, 0, 0, 39.4345, 77.80343, 0, 0, 77.80343, 'Dogwood', 'Cornus', 14.5, '', '', 10, 18, -8, 4.654605309, 'Good/Fair', 'Partial', 'Die back at top', '', 'Y', 'Cornus', NULL),
(160, 'N', 'W', 'East Campus', '7/12/16', 'Dr. Lesser, Rodney, Benjamin', 39.43458, 0, 0, 39.43458, 77.80324, 0, 0, 77.80324, 'Black Maple', 'Acer nigrum', 49.2, '', '', 25, 35, -4, 19.03425396, 'Excellent', 'Full', 'Split Stem, has been pruned', '', 'Y', 'Acer', 'nigrum'),
(161, 'N', 'W', 'East Campus', '7/12/16', 'Dr. Lesser, Rodney, Benjamin', 39.43492, 0, 0, 39.43492, 77.80303, 0, 0, 77.80303, 'Dogwood', 'Cornus', 13.8, '', '', 10, 19, -8, 4.84868448, 'Good', 'Partial', '', '', 'Y', 'Cornus', NULL),
(162, 'N', 'W', 'East Campus', '7/12/16', 'Dr. Lesser, Rodney, Benjamin', 39.4352, 0, 0, 39.4352, 77.80317, 0, 0, 77.80317, 'Scarlet Oak', 'Quercus coccinea', 70, '', '', 30, 30, -1, 17.84416002, 'Excellent', 'Full', '', '', 'Y', 'Quercus', 'coccinea'),
(163, 'N', 'W', 'East Campus', '7/12/16', 'Dr. Lesser, Rodney, Benjamin', 39.43536, 0, 0, 39.43536, 77.8029, 0, 0, 77.8029, 'White Ash', 'Fraxinus americana', 65.4, '', '', 25, 32, -4, 17.1507993, 'Poor', 'Full', 'Affected by Emerald Ash Bore, split in two at stem, Has been immunized against (Emerald Ash borer)?', '', 'Y', 'Fraxinus', 'americana'),
(164, 'N', 'W', 'East Campus', '7/13/16', 'Dr. Lesser, Rodney, Benjamin', 39.43546, 0, 0, 39.43546, 77.80289, 0, 0, 77.80289, 'Red Maple', 'Acer rubrum', 5, '', '', 10, 12, -8, 3.530973964, 'Excellent', 'Full', 'Young Tree', '', 'Y', 'Acer', 'rubrum'),
(165, 'N', 'W', 'East Campus', '7/13/16', 'Dr. Lesser, Rodney, Benjamin', 39.43549, 0, 0, 39.43549, 77.80289, 0, 0, 77.80289, 'Sycamore', 'Platanus occidentalis', 52.4, '', '', 25, 30, -4, 15.96282223, 'Fair', 'Full', '', '', 'Y', 'Platanus', 'occidentalis'),
(166, 'N', 'W', 'East Campus', '7/13/16', 'Dr. Lesser, Rodney, Benjamin', 39.43532, 0, 0, 39.43532, 77.80285, 0, 0, 77.80285, 'Dogwood', 'Cornus', 2, '', '', 10, 10, -8, 3.168678154, 'Excellent', 'Full', '', '', 'Y', 'Cornus', NULL),
(167, 'N', 'W', 'East Campus', '7/13/16', 'Dr. Lesser, Rodney, Benjamin', 39.43555, 0, 0, 39.43555, 77.80294, 0, 0, 77.80294, 'Red Maple', 'Acer rubrum', 5.2, '', '', 10, 11, -8, 3.349211438, 'Fair', 'Full', 'Damage on trunk caused by cuting and or mowing to close', '', 'Y', 'Acer', 'rubrum'),
(168, 'N', 'W', 'East Campus', '7/13/16', 'Dr. Lesser, Rodney, Benjamin', 39.43513, 0, 0, 39.43513, 77.80337, 0, 0, 77.80337, 'Dogwood', 'Cornus', 21.5, '', '', 10, 19, -8, 4.84868448, 'Fair', 'Full', 'Crown is dying', '', 'Y', 'Cornus', NULL),
(169, 'N', 'W', 'East Campus', '7/13/16', 'Dr. Lesser, Rodney, Benjamin', 39.43515, 0, 0, 39.43515, 77.80338, 0, 0, 77.80338, 'Crape Myrtle', 'Lagerstroemia', 5, '', '', 10, 10, -8, 3.168678154, 'Excellent', 'Partial', '', '', 'Y', 'Lagerstroemia', NULL),
(170, 'N', 'W', 'East Campus', '7/13/16', 'Dr. Lesser, Rodney, Benjamin', 39.43516, 0, 0, 39.43516, 77.8037, 0, 0, 77.8037, 'Crape Myrtle', 'Lagerstroemia', 5, '', '', 10, 9, -8, 2.98925275, 'Excellent', 'Partial', '', '', 'Y', 'Lagerstroemia', NULL),
(172, 'N', 'W', 'East Campus', '7/13/16', 'Dr. Lesser, Rodney, Benjamin', 39.43494, 0, 0, 39.43494, 77.80367, 0, 0, 77.80367, 'Black Walnut', 'Juglans nigra', 83, '', '', 35, 29, -1, 20.01174407, 'Excellent', 'Full', '', '', 'Y', 'Juglans', 'nigra'),
(173, 'N', 'W', 'East Campus', '7/13/16', 'Dr. Lesser, Rodney, Benjamin', 39.43485, 0, 0, 39.43485, 77.80359, 0, 0, 77.80359, 'Sycamore', 'Platanus occidentalis', 90, '', '', 35, 36, -1, 26.03991575, 'Good', 'Full', '', '', 'Y', 'Platanus', 'occidentalis'),
(174, 'N', 'W', 'East Campus', '7/13/16', 'Dr. Lesser, Rodney, Benjamin', 39.43478, 0, 0, 39.43478, 77.80366, 0, 0, 77.80366, 'Silver Maple', 'Acer saccharinum', 101, '', '', 30, 36, -5, 24.42093575, 'Good/Fair', 'Full', '', '', 'Y', 'Acer', 'saccharinum'),
(175, 'N', 'W', 'East Campus', '7/13/16', 'Dr. Lesser, Rodney, Benjamin', 39.43474, 0, 0, 39.43474, 77.80369, 0, 0, 77.80369, 'Silver Maple', 'Acer saccharinum', 77, '', '', 29.5, 35, -7, 24.27826692, 'Fair', 'Full', 'Lots of Pruning, and breakage', '', 'Y', 'Acer', 'saccharinum'),
(176, 'N', 'W', 'East Campus', '7/13/16', 'Dr. Lesser, Rodney, Benjamin', 39.43477, 0, 0, 39.43477, 77.80399, 0, 0, 77.80399, 'Yellow Oak', 'Quercus muehlenbergii', 132, '', '', 30, 38, -7, 27.12210562, 'Fair', 'Full', '', '', 'Y', 'Quercus', 'muehlenbergii'),
(177, 'N', 'W', 'East Campus', '7/13/16', 'Dr. Lesser, Rodney, Benjamin', 39.43486, 0, 0, 39.43486, 77.8039, 0, 0, 77.8039, 'Norway Spruce', 'Picea abies', 24.3, '', '', 19.5, 21, -5, 9.191377622, 'Good', 'Full', 'leaning', '', 'Y', 'Picea', 'abies'),
(178, 'N', 'W', 'East Campus', '7/13/16', 'Dr. Lesser, Rodney, Benjamin', 39.43449, 0, 0, 39.43449, 77.8038, 0, 0, 77.8038, 'Red Maple', 'Acer rubrum', 11.8, '', '', 15, 16, -7, 6.010214911, 'Excellent', 'Full', 'Large scar on it', '', 'Y', 'Acer', 'rubrum'),
(179, 'N', 'W', 'East Campus', '7/18/16', 'Dr. Lesser, Rodney, Benjamin', 39.43446, 0, 0, 39.43446, 77.80392, 0, 0, 77.80392, 'Green Ash', 'Fraxinus pennsylvanica', 11, '', '', 10, 22, -8, 5.445670605, 'Dead', 'Full', 'Remove at once', '', 'Y', 'Fraxinus', 'pennsylvanica'),
(180, 'N', 'W', 'East Campus', '7/18/16', 'Dr. Lesser, Rodney, Benjamin', 39.43448, 0, 0, 39.43448, 77.80399, 0, 0, 77.80399, 'Magnolia', 'Magnolia grandiflora', 3.7, 'Multiple stems', '', 10, 17, -8, 4.462715162, 'Excellent', 'Partial', '', '', 'Y', 'Magnolia', 'grandiflora'),
(181, 'N', 'W', 'East Campus', '7/18/16', 'Dr. Lesser, Rodney, Benjamin', 39.43449, 0, 0, 39.43449, 77.80402, 0, 0, 77.80402, 'Magnolia', 'Magnolia grandiflora', 5.6, 'Multiple stems', '', 10, 18, -8, 4.654605309, 'Excellent', 'Partial', '', '', 'Y', 'Magnolia', 'grandiflora'),
(182, 'N', 'W', 'East Campus', '7/18/16', 'Dr. Lesser, Rodney, Benjamin', 39.43454, 0, 0, 39.43454, 77.80399, 0, 0, 77.80399, 'Magnolia', 'Magnolia grandiflora', 4.9, 'Multiple stems', '', 10, 14, -8, 3.898688375, 'Excellent', 'Partial', '', '', 'Y', 'Magnolia', 'grandiflora'),
(183, 'N', 'W', 'East Campus', '7/18/16', 'Dr. Lesser, Rodney, Benjamin', 39.43453, 0, 0, 39.43453, 77.80391, 0, 0, 77.80391, 'Magnolia', 'Magnolia grandiflora', 3.9, 'Multiple stems', '', 10, 11, -8, 3.349211438, 'Excellent', 'Full', '', '', 'Y', 'Magnolia', 'grandiflora'),
(184, 'N', 'W', 'East Campus', '7/18/16', 'Dr. Lesser, Rodney, Benjamin', 39.43454, 0, 0, 39.43454, 77.80391, 0, 0, 77.80391, 'Green Ash', 'Fraxinus pennsylvanica', 17.5, '', '', 15, 23, -7, 8.076156368, 'Fair/Poor', 'Full', 'Look into inoculating', '', 'Y', 'Fraxinus', 'pennsylvanica'),
(185, 'N', 'W', 'East Campus', '7/18/16', 'Dr. Lesser, Rodney, Benjamin', 39.4346, 0, 0, 39.4346, 77.80399, 0, 0, 77.80399, 'Birch Ornamental', 'Betula', 7, '', '', 15, 17, -7, 6.294994346, 'Excellent', 'Full', '', '', 'Y', 'Betula', NULL),
(186, 'N', 'W', 'East Campus', '7/18/16', 'Dr. Lesser, Rodney, Benjamin', 39.4346, 0, 0, 39.4346, 77.80399, 0, 0, 77.80399, 'Magnolia', 'Magnolia grandiflora', 3, 'Multiple stems', '', 15, 5, -7, 3.021364077, 'Excellent', 'Full', 'Not in GPS memory', '', 'Y', 'Magnolia', 'grandiflora'),
(187, 'N', 'W', 'East Campus', '7/18/16', 'Dr. Lesser, Rodney, Benjamin', 39.4346, 0, 0, 39.4346, 77.80403, 0, 0, 77.80403, 'Birch Ornamental', 'Betula', 13, '', '', 15, 15, -7, 5.728272011, 'Excellent', 'Full', '', '', 'Y', 'Betula', NULL),
(188, 'N', 'W', 'East Campus', '7/18/16', 'Dr. Lesser, Rodney, Benjamin', 39.4346, 0, 0, 39.4346, 77.80403, 0, 0, 77.80403, 'Mulberry', 'Morus alba', 3.5, 'Multiple stems', '', 15, 6, -7, 3.285597654, 'Excellent', 'Partial', 'Over shadowed by Berch', '', 'Y', 'Morus', 'alba'),
(189, 'N', 'W', 'East Campus', '7/18/16', 'Dr. Lesser, Rodney, Benjamin', 39.43464, 0, 0, 39.43464, 77.80412, 0, 0, 77.80412, 'Paper Bark Maple', 'Acer griseum', 6.9, '', '', 10, 4, -11, 2.643071211, 'Excellent', 'Full', 'In GPS memory as 188', '', 'Y', 'Acer', 'griseum'),
(190, 'N', 'W', 'East Campus', '7/18/16', 'Dr. Lesser, Rodney, Benjamin', 39.43463, 0, 0, 39.43463, 77.80418, 0, 0, 77.80418, 'Paper Bark Maple', 'Acer griseum', 8.5, '', '', 10, 9, -8, 2.98925275, 'Excellent', 'Full', 'In GPS memory as 189', '', 'Y', 'Acer', 'griseum'),
(191, 'N', 'W', 'East Campus', '7/18/16', 'Dr. Lesser, Rodney, Benjamin', 39.43464, 0, 0, 39.43464, 77.80426, 0, 0, 77.80426, 'Paper Birch', 'Betula papyrifera', 7.8, '', '', 10, 14, -8, 3.898688375, 'Excellent', 'Full', '', '', 'Y', 'Betula', 'papyrifera'),
(192, 'N', 'W', 'East Campus', '7/18/16', 'Dr. Lesser, Rodney, Benjamin', 39.4348, 0, 0, 39.4348, 77.80419, 0, 0, 77.80419, 'Red Maple', 'Acer rubrum', 14.4, '', '', 15, 23, -7, 8.076156368, 'Excellent', 'Full', '', '', 'Y', 'Acer', 'rubrum'),
(193, 'N', 'W', 'East Campus', '7/18/16', 'Dr. Lesser, Rodney, Benjamin', 39.43485, 0, 0, 39.43485, 77.80412, 0, 0, 77.80412, 'Dogwood', 'Cornus', 4.5, '', '', 10, 3, -8, 1.92948614, 'Fair', 'Full', '', '', 'Y', 'Cornus', NULL),
(194, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43281, 0, 0, 39.43281, 77.80518, 0, 0, 77.80518, 'Crape Myrtle', 'Lagerstroemia', 5.7, 'Multiple stems', '', 10, 11, -8, 3.349211438, 'Excellent', 'Full', '', '', 'Y', 'Lagerstroemia', NULL),
(195, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43513, 0, 0, 39.43513, 77.804, 0, 0, 77.804, 'Crape Myrtle', 'Lagerstroemia', 8, 'Multiple stems', '', 10, 13, -8, 3.714090258, 'Excellent', 'Partial', '', '', 'Y', 'Lagerstroemia', NULL),
(196, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43515, 0, 0, 39.43515, 77.80412, 0, 0, 77.80412, 'Paper Birch', 'Betula papyrifera', 8, 'Multiple stems', '', 15, 16, -7, 6.010214911, 'Good', 'Partial', 'Branches are chained together', '', 'Y', 'Betula', 'papyrifera'),
(197, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43512, 0, 0, 39.43512, 77.80419, 0, 0, 77.80419, 'Paper Birch', 'Betula papyrifera', 6.7, 'Multiple stems', '', 15, 14, -7, 5.448954167, 'Good', 'Partial', 'Branches are chained together', '', 'Y', 'Betula', 'papyrifera'),
(198, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43512, 0, 0, 39.43512, 77.80427, 0, 0, 77.80427, 'Crape Myrtle', 'Lagerstroemia', 5.4, 'Multiple stems', '', 10, 12, -8, 3.530973964, 'Excellent', 'Partial', '', '', 'Y', 'Lagerstroemia', NULL),
(199, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43502, 0, 0, 39.43502, 77.80421, 0, 0, 77.80421, 'Sycamore', 'Platanus occidentalis', 138.1, '', '', 30, 45, -1, 30.52365195, 'Excellent', 'Full', 'Has Root Sprots, and has been Pruned', '', 'Y', 'Platanus', 'occidentalis'),
(206, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43491, 0, 0, 39.43491, 77.80479, 0, 0, 77.80479, 'Red Spruce', 'Picea rubens', 6.5, '', '', 10, 7, -8, 2.633253956, 'Excellent', 'Full', 'Tree has cones', '', 'Y', 'Picea', 'rubens'),
(207, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43505, 0, 0, 39.43505, 77.80441, 0, 0, 77.80441, 'Crape Myrtle (Pink)', 'Lagerstroemia', 7.8, 'Multiple stems', '', 10, 18, -3, 3.773274755, 'Excellent', 'Partial', 'Has root suckers', '', 'Y', 'Lagerstroemia', NULL),
(208, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43493, 0, 0, 39.43493, 77.80451, 0, 0, 77.80451, 'Paper Birch', 'Betula papyrifera', 6.7, 'Multiple stems', '', 15, 15, -7, 5.728272011, 'Excellent', 'Full', 'Stems are chained together', '', 'Y', 'Betula', 'papyrifera'),
(209, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43494, 0, 0, 39.43494, 77.80466, 0, 0, 77.80466, 'Paper Birch', 'Betula papyrifera', 4.5, 'Multiple stems', '', 15, 11, -7, 4.624738762, 'Good/Fair', 'Full', 'Some branches have die back', '', 'Y', 'Betula', 'papyrifera');
INSERT INTO `tree_raw` (`tree_id`, `north_south`, `east_west`, `campus`, `date`, `collector`, `latitude_degrees`, `latitude_minutes`, `latitude_seconds`, `latitude`, `longitude_degrees`, `longitude_minutes`, `longitude_seconds`, `longitude`, `common_name`, `scientific_name`, `dbh`, `notes`, `dbh_second_stem`, `distance_from_tree`, `clinometer_reading_top`, `clinometer_reading_bottom`, `height`, `condition`, `exposure_to_sunlight`, `other_notes`, `text_from_scientific_name`, `photographed`, `genus`, `species`) VALUES
(210, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43489, 0, 0, 39.43489, 77.80467, 0, 0, 77.80467, 'Crape Myrtle (Pink)', 'Lagerstroemia', 6.9, 'Multiple stems', '', 10, 10, -8, 3.168678154, 'Excellent', 'Full', '', '', 'Y', 'Lagerstroemia', NULL),
(211, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43489, 0, 0, 39.43489, 77.80479, 0, 0, 77.80479, 'Crape Myrtle (White) ', 'Lagerstroemia', 7.1, 'Multiple stems', '', 10, 11, -8, 3.349211438, 'Excellent', 'Full', '', '', 'Y', 'Lagerstroemia', NULL),
(212, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43489, 0, 0, 39.43489, 77.80479, 0, 0, 77.80479, 'Paper Birch', 'Betula papyrifera', 5.7, '', '', 15, 8, -7, 3.817146645, 'Fair', 'Full', 'Tree has a lean', '', 'Y', 'Betula', 'papyrifera'),
(214, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43504, 0, 0, 39.43504, 77.80522, 0, 0, 77.80522, 'Chinese Elm', 'Ulmus parvifolia', 22.4, '', '', 15, 17, -7, 6.294994346, 'Excellent', 'Full', '', '', 'Y', 'Ulmus', 'parvifolia'),
(215, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43511, 0, 0, 39.43511, 77.80521, 0, 0, 77.80521, 'Sugar Maple', 'Acer saccharum', 10.4, '', '', 15, 13, -7, 5.172056991, 'Excellent', 'Full', '', '', 'Y', 'Acer', 'saccharum'),
(216, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43516, 0, 0, 39.43516, 77.8051, 0, 0, 77.8051, 'Sugar Maple', 'Acer saccharum', 8.8, '', '', 15, 12, -7, 4.89738255, 'Excellent', 'Full', '', '', 'Y', 'Acer', 'saccharum'),
(217, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43521, 0, 0, 39.43521, 77.805, 0, 0, 77.805, 'Sugar Maple', 'Acer saccharum', 7.8, '', '', 15, 12, -7, 4.89738255, 'Good', 'Full', 'Some die back', '', 'Y', 'Acer', 'saccharum'),
(218, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43526, 0, 0, 39.43526, 77.80485, 0, 0, 77.80485, 'Sugar Maple', 'Acer saccharum', 8.5, '', '', 15, 12, -7, 4.89738255, 'Fair', 'Full', 'Die back at the top of the tree and on the side', '', 'Y', 'Acer', 'saccharum'),
(219, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43529, 0, 0, 39.43529, 77.80473, 0, 0, 77.80473, 'Sugar Maple', 'Acer saccharum', 7.6, '', '', 15, 8, -7, 3.817146645, 'Poor', 'Full', 'Lots of die back', '', 'Y', 'Acer', 'saccharum'),
(220, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43533, 0, 0, 39.43533, 77.80462, 0, 0, 77.80462, 'Sugar Maple', 'Acer saccharum', 7.9, '', '', 15, 10, -7, 4.353938835, 'Poor', 'Full', 'Significant die back', '', 'Y', 'Acer', 'saccharum'),
(221, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.4354, 0, 0, 39.4354, 77.80449, 0, 0, 77.80449, 'Sugar Maple', 'Acer saccharum', 8.5, '', '', 15, 8, -7, 3.817146645, 'Poor', 'Full', 'Top of the tree is dead', '', 'Y', 'Acer', 'saccharum'),
(222, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43543, 0, 0, 39.43543, 77.80432, 0, 0, 77.80432, 'Sugar Maple', 'Acer saccharum', 8, '', '', 15, 10, -7, 4.353938835, 'Poor', 'Full', 'Significant die back. Top of the tree is dead', '', 'Y', 'Acer', 'saccharum'),
(223, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43549, 0, 0, 39.43549, 77.80421, 0, 0, 77.80421, 'Sugar Maple', 'Acer saccharum', 8, '', '', 15, 10, -7, 4.353938835, 'Poor', 'Full', 'Top of the crown is dead', '', 'Y', 'Acer', 'saccharum'),
(224, 'N', 'W', 'East Campus', '7/20/16', 'Dr. Lesser, Rodney, Benjamin', 39.43552, 0, 0, 39.43552, 77.80411, 0, 0, 77.80411, 'Sugar Maple', 'Acer saccharum', 7.7, '', '', 15, 13, -7, 5.172056991, 'Fair', 'Full', 'Som die back', '', 'Y', 'Acer', 'saccharum'),
(226, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43237, 0, 0, 39.43237, 77.8056, 0, 0, 77.8056, 'Silver Maple', 'Acer saccharinum', 29, '', '', 20, 27, -5, 11.94028226, 'Excellent', 'Full', '', '', 'Y', 'Acer', 'saccharinum'),
(227, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43234, 0, 0, 39.43234, 77.8056, 0, 0, 77.8056, 'Ginkgo', 'Ginkgo biloba', 15, '', '', 15, 20, -7, 7.168587639, 'Excellent', 'Full', '', '', 'Y', 'Ginkgo', 'biloba'),
(228, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43229, 0, 0, 39.43229, 77.8054, 0, 0, 77.8054, 'Sugar Maple', 'Acer saccharum', 72.5, '', '', 25, 34, -4, 18.39177842, 'Good', 'Full', 'Half way up Crown some branches are dead', '', 'Y', 'Acer', 'saccharum'),
(229, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43225, 0, 0, 39.43225, 77.80529, 0, 0, 77.80529, 'Sycamore', 'Platanus occidentalis', 45.6, '', '', 25, 38, -4, 21.06120617, 'Excellent', 'Full', '', '', 'Y', 'Platanus', 'occidentalis'),
(230, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43221, 0, 0, 39.43221, 77.80523, 0, 0, 77.80523, 'Dogwood', 'Cornus', 15.7, '', '', 15, 6, -7, 3.285597654, 'Good/Fair', 'Partial', 'N/a', '', 'Y', 'Cornus', NULL),
(231, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43219, 0, 0, 39.43219, 77.80518, 0, 0, 77.80518, 'Dogwood', 'Cornus', 10.7, '', '', 15, 7, -7, 3.550802538, 'Good', 'Partial', 'Some die back', '', 'Y', 'Cornus', NULL),
(232, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43226, 0, 0, 39.43226, 77.80512, 0, 0, 77.80512, 'Black Maple', 'Acer nigrum', 77, '', '', 28, 36, -1, 20.8319326, 'Excellent', 'Full', 'Metal plate in tree trunk', '', 'Y', 'Acer', 'nigrum'),
(233, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43232, 0, 0, 39.43232, 77.80507, 0, 0, 77.80507, 'Sugar Maple', 'Acer saccharum', 25.2, '', '', 20, 26, -5, 11.50442504, 'Excellent', 'Partial', '', '', 'Y', 'Acer', 'saccharum'),
(234, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43241, 0, 0, 39.43241, 77.80508, 0, 0, 77.80508, 'Black Oak', 'Quercus velutina', 57.8, '', '', 25, 34, -4, 18.39177842, 'Good', 'Full', 'Tree has been trimed back over side walk', '', 'Y', 'Quercus', 'velutina'),
(235, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43262, 0, 0, 39.43262, 77.805, 0, 0, 77.805, 'Cherry', 'Prunus avium', 37.7, '', '', 20, 28, -5, 12.3839619, 'Excellent', 'Full', 'Plaque \"1996 AD Nursing Class\"\"\"', '', 'Y', 'Prunus', 'avium'),
(236, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43258, 0, 0, 39.43258, 77.80498, 0, 0, 77.80498, 'Saucer Magnolia', 'Magnolia soulangeana', 12.2, '', '', 15, 14, -7, 5.448954167, 'Good', 'Partial', 'Plaque \"planted in memory of Lita E. Trayer Nursing class 0f 1986\"\"\"', 'Magnolia X soulangeana', 'Y', 'Magnolia', 'soulangeana'),
(237, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43263, 0, 0, 39.43263, 77.80498, 0, 0, 77.80498, 'Black Walnut', 'Juglans nigra', 72, '', '', 25, 28, -4, 14.8218013, 'Good', 'Full', 'Some pruning has been done', '', 'Y', 'Juglans', 'nigra'),
(238, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43277, 0, 0, 39.43277, 77.80507, 0, 0, 77.80507, 'Dogwood', 'Cornus', 13, '', '', 10, 11, -8, 3.349211438, 'Fair', 'Partial', 'Branches are broken', '', 'Y', 'Cornus', NULL),
(239, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.4328, 0, 0, 39.4328, 77.80512, 0, 0, 77.80512, 'Dogwood', 'Cornus', 18, '', '', 15, 22, -7, 7.769427512, 'Poor', 'Partial', 'Leaves are discolered', '', 'Y', 'Cornus', NULL),
(240, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43281, 0, 0, 39.43281, 77.80523, 0, 0, 77.80523, 'Sugar Maple', 'Acer saccharum', 41.9, '', '', 25, 32, -5, 17.80895039, 'Good', 'Partial', 'Plaque \"planted in memory of Fr. Gordon Slonaker\"\" The tree has a strange wire coming out of trunk', ' the tree has been tapped for syrup\"', 'Y', 'Acer', 'saccharum'),
(241, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43292, 0, 0, 39.43292, 77.80544, 0, 0, 77.80544, 'Japanese Maple', 'Acer palmatum', 87, '', '', 25, 41, -4, 23.26123395, 'Good', 'Full', 'Some die back', '', 'Y', 'Acer', 'palmatum'),
(242, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43282, 0, 0, 39.43282, 77.8055, 0, 0, 77.8055, 'White Ash', 'Fraxinus americana', 81.6, '', '', 20, 36, -5, 16.28062383, 'Good/Fair', 'Full', 'Wire around trunk for nursery school zip line', '', 'Y', 'Fraxinus', 'americana'),
(243, 'N', 'W', 'East Campus', '7/25/16', 'Dr. Lesser, Rodney, Benjamin', 39.43271, 0, 0, 39.43271, 77.80558, 0, 0, 77.80558, 'White Ash', 'Fraxinus americana', 106, '', '', 22, 38, -5, 19.11303438, 'Good', 'Full', 'Wire around trunk for nursery school zip line', '', 'Y', 'Fraxinus', 'americana'),
(244, 'N', 'W', 'East Campus', '7/26/16', 'Rodney, Benjamin', 39.43279, 0, 0, 39.43279, 77.80488, 0, 0, 77.80488, 'Crape Myrtle', 'Lagerstroemia', 3.5, 'Multiple stems', '', 10, 8, -8, 2.810816694, 'Excellent', 'Full', '', '', 'Y', 'Lagerstroemia', NULL),
(245, 'N', 'W', 'East Campus', '7/26/16', 'Rodney, Benjamin', 39.43286, 0, 0, 39.43286, 77.80482, 0, 0, 77.80482, 'Crape Myrtle', 'Lagerstroemia', 4.9, 'Multiple stems', '', 10, 10, -8, 3.168678154, 'Excellent', 'Full', '', '', 'Y', 'Lagerstroemia', NULL),
(246, 'N', 'W', 'East Campus', '7/26/16', 'Rodney, Benjamin', 39.43292, 0, 0, 39.43292, 77.8048, 0, 0, 77.8048, 'Crape Myrtle', 'Lagerstroemia', 4.5, 'Multiple stems', '', 10, 10, -8, 3.168678154, 'Excellent', 'Full', '', '', 'Y', 'Lagerstroemia', NULL),
(247, 'N', 'W', 'East Campus', '7/26/16', 'Rodney, Benjamin', 39.43295, 0, 0, 39.43295, 77.80476, 0, 0, 77.80476, 'Crape Myrtle (Natchez)', 'Lagerstroemia', 3.8, 'Multiple stems', '', 10, 9, -8, 2.98925275, 'Excellent', 'Full', '', '', 'Y', 'Lagerstroemia', NULL),
(248, 'N', 'W', 'East Campus', '7/26/16', 'Rodney, Benjamin', 39.43326, 0, 0, 39.43326, 77.80472, 0, 0, 77.80472, 'Red Maple', 'Acer rubrum', 13.6, 'Two trunks', '', 15, 22, -7, 7.769427512, 'Good', 'Full', 'One side of the tree is green, the other side is yellowish green', '', 'Y', 'Acer', 'rubrum'),
(254, 'N', 'W', 'East Campus', '7/26/16', 'Rodney, Benjamin', 39.43447, 0, 0, 39.43447, 77.80492, 0, 0, 77.80492, 'Eastern Redbud', 'Cercis canadensis', 10.9, 'Two trunks', '', 15, 12, -7, 4.89738255, 'Excellent', 'Partial', '', '', 'Y', 'Cercis', 'canadensis'),
(257, 'N', 'W', 'East Campus', '7/26/16', 'Rodney, Benjamin', 39.43444, 0, 0, 39.43444, 77.80507, 0, 0, 77.80507, 'Chinese Elm', 'Ulmus parvifolia', 11.1, '', '', 10, 14, -8, 3.898688375, 'Excellent', 'Full', '', '', 'Y', 'Ulmus', 'parvifolia'),
(258, 'N', 'W', 'East Campus', '7/26/16', 'Rodney, Benjamin', 39.43457, 0, 0, 39.43457, 77.80503, 0, 0, 77.80503, 'Crab Apple', 'Malus hopa', 11.7, '', '', 10, 16, -8, 4.272862205, 'Excellent', 'Full', '', '', 'Y', 'Malus', 'hopa'),
(259, 'N', 'W', 'East Campus', '7/27/16', 'Dr. Lesser, Benjamin', 39.43313, 0, 0, 39.43313, 77.80611, 0, 0, 77.80611, 'Bradford Pear', 'Pyrus calleryana', 89.2, '', '', 20, 45, -3, 21.04815559, 'Good', 'Full', 'There is a lean, covered with ivy, right by fence  to private back yard, the tree has been heavily pruned', '', 'Y', 'Pyrus', 'calleryana'),
(260, 'N', 'W', 'East Campus', '7/27/16', 'Dr. Lesser, Benjamin', 39.43343, 0, 0, 39.43343, 77.8064, 0, 0, 77.8064, 'Black Walnut', 'Juglans nigra', 54.7, '', '', 30, 34, 2, 19.18763242, 'Excellent', 'Full', 'Some pruning has been done', '', 'Y', 'Juglans', 'nigra'),
(261, 'N', 'W', 'East Campus', '7/27/16', 'Dr. Lesser, Benjamin', 39.43357, 0, 0, 39.43357, 77.80648, 0, 0, 77.80648, 'Black Walnut', 'Juglans nigra', 56.7, '', '', 20, 49, 4, 21.60883191, 'Excellent', 'Full', '', '', 'Y', 'Juglans', 'nigra'),
(262, 'N', 'W', 'East Campus', '7/27/16', 'Dr. Lesser, Benjamin', 39.43359, 0, 0, 39.43359, 77.80643, 0, 0, 77.80643, 'Box Elder', 'Acer negundo', 58.8, '', '', 30, 35, 4, 18.90842179, 'Excellent', 'Full', '', '', 'Y', 'Acer', 'negundo'),
(263, 'N', 'W', 'East Campus', '7/27/16', 'Dr. Lesser, Benjamin', 39.43393, 0, 0, 39.43393, 77.80652, 0, 0, 77.80652, 'Cherry', 'Prunus avium', 24.6, 'Multiple stems', '', 20, 15, -5, 7.108757119, 'Excellent', 'Full', '', '', 'Y', 'Prunus', 'avium'),
(264, 'N', 'W', 'East Campus', '7/27/16', 'Dr. Lesser, Benjamin', 39.43423, 0, 0, 39.43423, 77.80664, 0, 0, 77.80664, 'Cherry', 'Prunus avium', 10, '', '', 15, 10, -7, 4.353938835, 'Excellent', 'Full', '', '', 'Y', 'Prunus', 'avium'),
(265, 'N', 'W', 'East Campus', '7/27/16', 'Dr. Lesser, Benjamin', 39.43467, 0, 0, 39.43467, 77.80575, 0, 0, 77.80575, 'Norway Spruce', 'Picea abies', 74.3, '', '', 30, 27, -1, 15.80941543, 'Excellent', 'Full', 'Ivy covering trunk', '', 'Y', 'Picea', 'abies'),
(266, 'N', 'W', 'East Campus', '7/27/16', 'Dr. Lesser, Benjamin', 39.43475, 0, 0, 39.43475, 77.80583, 0, 0, 77.80583, 'Norway Spruce', 'Picea abies', 62, '', '', 30, 24, -1, 13.88051251, 'Excellent', 'Full', 'Ivy covering trunk', '', 'Y', 'Picea', 'abies'),
(267, 'N', 'W', 'East Campus', '7/27/16', 'Dr. Lesser, Benjamin', 39.43481, 0, 0, 39.43481, 77.80587, 0, 0, 77.80587, 'Eastern Hemlock', 'Tsuga canadensis', 37, '', '', 30, 25, 1, 13.4655778, 'Excellent', 'Full', 'Ivy covering trunk', '', 'Y', 'Tsuga', 'canadensis'),
(268, 'N', 'W', 'East Campus', '7/27/16', 'Dr. Lesser, Benjamin', 39.4348, 0, 0, 39.4348, 77.80586, 0, 0, 77.80586, 'Eastern Redbud', 'Cercis canadensis', 32.9, '', '', 30, 27, 1, 14.76211154, 'Excellent', 'Full', '', '', 'Y', 'Cercis', 'canadensis'),
(269, 'N', 'W', 'East Campus', '8/1/16', 'Dr. Lesser, Rodney, Benjamin', 39.43525, 0, 0, 39.43525, 77.80479, 0, 0, 77.80479, 'Fir species', 'Abies', 11.7, '', '', 15, 21, -1, 6.019786499, 'Excellent', 'Full', '', '', 'Y', 'Abies', NULL),
(270, 'N', 'W', 'East Campus', '8/1/16', 'Dr. Lesser, Rodney, Benjamin', 39.43524, 0, 0, 39.43524, 77.80472, 0, 0, 77.80472, 'Fir species', 'Abies', 11.8, '', '', 15, 18, -3, 5.659912133, 'Excellent', 'Full', '', '', 'Y', 'Abies', NULL),
(271, 'N', 'W', 'East Campus', '8/1/16', 'Dr. Lesser, Rodney, Benjamin', 39.4352, 0, 0, 39.4352, 77.80467, 0, 0, 77.80467, 'Syberian elm', 'Ulmus pumila', 15.3, '', '', 14, 35, 6, 8.331446241, 'Good-Fair', 'Full', 'Leaves have been eaten by insects', '', 'Y', 'Ulmus', 'pumila'),
(273, 'N', 'W', 'East Campus', '8/1/16', 'Dr. Lesser, Rodney, Benjamin', 39.43533, 0, 0, 39.43533, 77.80418, 0, 0, 77.80418, 'Serviceberry', 'Amelanchier', 73, '', '', 20, 31, -8, 14.82802907, 'Fair', 'Full', 'Dead branches, mutiple pruning', '', 'Y', 'Amelanchier', NULL),
(274, 'N', 'W', 'East Campus', '8/1/16', 'Dr. Lesser, Rodney, Benjamin', 39.43539, 0, 0, 39.43539, 77.80426, 0, 0, 77.80426, 'Hackberry', 'Celtis occidentalis', 6.5, 'Multiple stems', '', 15, 5, -4, 2.361232132, 'Excellent', 'Partial', '', '', 'Y', 'Celtis', 'occidentalis'),
(277, 'N', 'W', 'East Campus', '8/1/16', 'Dr. Lesser, Rodney, Benjamin', 39.43562, 0, 0, 39.43562, 77.80384, 0, 0, 77.80384, 'Eastern Hemlock', 'Tsuga canadensis', 4.4, 'Multiple stems', '', 10, 9, -8, 2.98925275, 'Fair', 'Full', 'the tree\'s leaves are experencing necrosis', '', 'Y', 'Tsuga', 'canadensis'),
(278, 'N', 'W', 'East Campus', '8/1/16', 'Dr. Lesser, Rodney, Benjamin', 39.43558, 0, 0, 39.43558, 77.80385, 0, 0, 77.80385, 'Red Spruce', 'Picea rubens', 5.3, '', '', 10, 9, -8, 2.98925275, 'Excellent', 'Full', '', '', 'Y', 'Picea', 'rubens'),
(279, 'N', 'W', 'East Campus', '8/1/16', 'Dr. Lesser, Rodney, Benjamin', 39.43557, 0, 0, 39.43557, 77.80388, 0, 0, 77.80388, 'Fir species', 'Abies', 9.2, '', '', 10, 11, -8, 3.349211438, 'Excellent', 'Full', 'Poision ivy growing at the base of the trunk', '', 'Y', 'Abies', NULL),
(280, 'N', 'W', 'East Campus', '8/1/16', 'Dr. Lesser, Rodney, Benjamin', 39.43552, 0, 0, 39.43552, 77.80411, 0, 0, 77.80411, 'River Birch', 'Betula nigra', 6.3, '', '', 10, 5, -15, 3.55437856, 'Excellent', 'Full', '', '', 'Y', 'Betula', 'nigra'),
(281, 'N', 'W', 'East Campus', '8/1/16', 'Dr. Lesser, Rodney, Benjamin', 39.43552, 0, 0, 39.43552, 77.80414, 0, 0, 77.80414, 'Fir species', 'Abies', 10.8, '', '', 10, 21, -8, 5.244048697, 'Excellent', 'Full', '', '', 'Y', 'Abies', NULL),
(282, 'N', 'W', 'East Campus', '8/1/16', 'Dr. Lesser, Rodney, Benjamin', 39.43541, 0, 0, 39.43541, 77.80449, 0, 0, 77.80449, 'Fir species', 'Abies', 5.8, '', '', 10, 28, -8, 6.722502664, 'Excellent', 'Full', 'Poision ivy growing up the tree trunk', '', 'Y', 'Abies', NULL),
(283, 'N', 'W', 'East Campus', '8/1/16', 'Dr. Lesser, Rodney, Benjamin', 39.43539, 0, 0, 39.43539, 77.80453, 0, 0, 77.80453, 'Fir species', 'Abies', 9.6, '', '', 10, 28, -8, 6.722502664, 'Excellent', 'Full', '', '', 'Y', 'Abies', NULL),
(284, 'N', 'W', 'East Campus', '8/1/16', 'Dr. Lesser, Rodney, Benjamin', 39.4353, 0, 0, 39.4353, 77.80467, 0, 0, 77.80467, 'Fir species', 'Abies', 10.4, '', '', 10, 29, -8, 6.948498862, 'Excellent', 'Full', 'Poision ivy growing up the tree trunk', '', 'Y', 'Abies', NULL),
(285, 'N', 'W', 'East Campus', '8/1/16', 'Dr. Lesser, Rodney, Benjamin', 39.43527, 0, 0, 39.43527, 77.80471, 0, 0, 77.80471, 'Fir species', 'Abies', 11.9, '', '', 10, 27, -8, 6.500662842, 'Excellent', 'Full', 'Ivy on trunk ', '', 'Y', 'Abies', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `genus`
--
ALTER TABLE `genus`
  ADD PRIMARY KEY (`genus_id`),
  ADD UNIQUE KEY `uk_genus_id` (`genus_id`),
  ADD UNIQUE KEY `uk_genus_name` (`genus_name`);

--
-- Indexes for table `memorials`
--
ALTER TABLE `memorials`
  ADD PRIMARY KEY (`tree_id`);

--
-- Indexes for table `species`
--
ALTER TABLE `species`
  ADD PRIMARY KEY (`species_id`),
  ADD UNIQUE KEY `uk_species_id` (`species_id`),
  ADD KEY `genus_id` (`genus_id`);

--
-- Indexes for table `tree_details`
--
ALTER TABLE `tree_details`
  ADD PRIMARY KEY (`tree_id`),
  ADD KEY `tree_details` (`donor_id`);

--
-- Indexes for table `tree_raw`
--
ALTER TABLE `tree_raw`
  ADD PRIMARY KEY (`tree_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `donor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `genus`
--
ALTER TABLE `genus`
  MODIFY `genus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `species`
--
ALTER TABLE `species`
  MODIFY `species_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `memorials`
--
ALTER TABLE `memorials`
  ADD CONSTRAINT `fk_memorials_tree_details` FOREIGN KEY (`tree_id`) REFERENCES `tree_details` (`tree_id`);

--
-- Constraints for table `species`
--
ALTER TABLE `species`
  ADD CONSTRAINT `fk_species_genus` FOREIGN KEY (`genus_id`) REFERENCES `genus` (`genus_id`);

--
-- Constraints for table `tree_details`
--
ALTER TABLE `tree_details`
  ADD CONSTRAINT `fk_tree_details_donors` FOREIGN KEY (`donor_id`) REFERENCES `donors` (`donor_id`),
  ADD CONSTRAINT `fk_tree_details_tree_raw` FOREIGN KEY (`tree_id`) REFERENCES `tree_raw` (`tree_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
