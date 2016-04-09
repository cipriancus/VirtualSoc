-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 02, 2016 at 07:11 AM
-- Server version: 5.6.28
-- PHP Version: 5.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `VirtualSoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `Conversatii`
--

CREATE TABLE IF NOT EXISTS `Conversatii` (
  `idConv` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idReceiver` int(11) NOT NULL,
  `stersSEND` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Conversatii`
--

INSERT INTO `Conversatii` (`idConv`, `idUser`, `idReceiver`, `stersSEND`) VALUES
(2, 5, 2, 0),
(3, 1, 3, 0),
(4, 3, 4, 0),
(5, 7, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Messages`
--

CREATE TABLE IF NOT EXISTS `Messages` (
  `idMessage` int(11) NOT NULL,
  `idConv` int(11) NOT NULL,
  `idSender` int(11) NOT NULL,
  `mesaj` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Messages`
--

INSERT INTO `Messages` (`idMessage`, `idConv`, `idSender`, `mesaj`) VALUES
(9, 3, 1, 'Esti?'),
(12, 4, 3, 'buna'),
(13, 5, 7, 'look at this website pornhub.com'),
(14, 5, 7, 'look at it, i know you wanna do it'),
(15, 5, 1, 'ion sucks'),
(16, 5, 1, 'sictir'),
(17, 5, 1, 'esti smecher?');

-- --------------------------------------------------------

--
-- Table structure for table `PostariDB`
--

CREATE TABLE IF NOT EXISTS `PostariDB` (
  `idPost` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `continut` varchar(500) NOT NULL,
  `data` date NOT NULL,
  `permisiune` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PostariDB`
--

INSERT INTO `PostariDB` (`idPost`, `idUser`, `continut`, `data`, `permisiune`) VALUES
(1, 1, 'Am plecat la mare ', '2015-08-03', 0),
(2, 2, 'Vine vara', '2015-07-01', 1),
(3, 2, 'Am plecat acasa de sarbatori', '2016-01-01', 1),
(4, 1, 'Ana', '2016-01-01', 2),
(6, 1, 'Acesta este un test', '2016-01-01', 2),
(7, 1, 'Am plecat la colindat', '2016-01-01', 0),
(8, 1, 'cip', '2016-01-11', 2),
(9, 6, 'sunt la RC', '2016-01-12', 0),
(10, 7, 'Ce faci', '2016-01-12', 0),
(11, 1, 'Loredana sucks', '2016-01-12', 0),
(12, 1, 'loredana sucks', '2016-01-12', 0),
(13, 1, 'loredana sucks', '2016-01-12', 0),
(14, 1, 'CIprian e smecher', '2016-01-12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Prieteni`
--

CREATE TABLE IF NOT EXISTS `Prieteni` (
  `idUser` int(11) NOT NULL,
  `idPrieten` int(11) NOT NULL,
  `permisiune` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Prieteni`
--

INSERT INTO `Prieteni` (`idUser`, `idPrieten`, `permisiune`) VALUES
(1, 2, 1),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ProfileDB`
--

CREATE TABLE IF NOT EXISTS `ProfileDB` (
  `idUser` int(11) NOT NULL DEFAULT '0',
  `Nume` varchar(100) DEFAULT NULL,
  `Prenume` varchar(100) DEFAULT NULL,
  `data_nasterii` date DEFAULT NULL,
  `telefon` varchar(15) DEFAULT NULL,
  `descriere` varchar(500) DEFAULT NULL,
  `ocupatie` varchar(100) DEFAULT NULL,
  `permisiuni` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ProfileDB`
--

INSERT INTO `ProfileDB` (`idUser`, `Nume`, `Prenume`, `data_nasterii`, `telefon`, `descriere`, `ocupatie`, `permisiuni`) VALUES
(1, 'Cusmuliuc', 'Ciprian', '1995-08-03', '721', 'Tanar programator', 'Student', 0),
(2, 'Gabriela', 'Cusmuliuc', '1968-07-19', '074078', 'Mama', 'Mama', 0),
(5, 'Andrei', 'andrei', '1995-12-10', NULL, NULL, NULL, 0),
(6, 'ionica', NULL, '1995-08-10', NULL, NULL, NULL, 0),
(7, 'ion', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Receiver`
--

CREATE TABLE IF NOT EXISTS `Receiver` (
  `idReceiver` int(11) NOT NULL,
  `idUser` int(11) NOT NULL DEFAULT '0',
  `stersConv` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Receiver`
--

INSERT INTO `Receiver` (`idReceiver`, `idUser`, `stersConv`) VALUES
(2, 1, 0),
(3, 2, 0),
(4, 1, 0),
(5, 1, 0),
(5, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserDB`
--

CREATE TABLE IF NOT EXISTS `UserDB` (
  `idUser` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `parola` varchar(40) NOT NULL,
  `tipCont` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserDB`
--

INSERT INTO `UserDB` (`idUser`, `username`, `parola`, `tipCont`) VALUES
(1, 'cipriancus', '41b600e0e8223b178269fdfe8af5623504bf34cf', 0),
(2, 'gabriela', '3a03546bfcdb81113f4a3128f16c7ed688b40757', 1),
(3, 'andreipanu', 'dc231769966afecc5cc919b447c1d512a5a8b8c6', 1),
(4, 'popica', 'dc231769966afecc5cc919b447c1d512a5a8b8c6', 1),
(5, 'andrei', '93e425087929690e8319399134301473b45a4849', 1),
(6, 'ionica', '93e425087929690e8319399134301473b45a4849', 1),
(7, 'ciprian', '0814234e98548d448c6d3c46bf40c09af1043cec', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Conversatii`
--
ALTER TABLE `Conversatii`
  ADD PRIMARY KEY (`idConv`);

--
-- Indexes for table `Messages`
--
ALTER TABLE `Messages`
  ADD PRIMARY KEY (`idMessage`);

--
-- Indexes for table `PostariDB`
--
ALTER TABLE `PostariDB`
  ADD PRIMARY KEY (`idPost`);

--
-- Indexes for table `Prieteni`
--
ALTER TABLE `Prieteni`
  ADD PRIMARY KEY (`idUser`,`idPrieten`);

--
-- Indexes for table `ProfileDB`
--
ALTER TABLE `ProfileDB`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `idUser` (`idUser`);

--
-- Indexes for table `Receiver`
--
ALTER TABLE `Receiver`
  ADD PRIMARY KEY (`idReceiver`,`idUser`);

--
-- Indexes for table `UserDB`
--
ALTER TABLE `UserDB`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Conversatii`
--
ALTER TABLE `Conversatii`
  MODIFY `idConv` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Messages`
--
ALTER TABLE `Messages`
  MODIFY `idMessage` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `PostariDB`
--
ALTER TABLE `PostariDB`
  MODIFY `idPost` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `UserDB`
--
ALTER TABLE `UserDB`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
