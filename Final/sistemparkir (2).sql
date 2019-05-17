-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2019 at 09:46 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemparkir`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `Nama` varchar(30) DEFAULT NULL,
  `NIP` int(15) NOT NULL,
  `PlatNomor` varchar(20) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`Nama`, `NIP`, `PlatNomor`, `Password`) VALUES
('wkwkw', 123, 'b213', '12345'),
('tes', 678, 'b678', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `Jenis` varchar(30) DEFAULT NULL,
  `PlatNomor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`Jenis`, `PlatNomor`) VALUES
('motor', 'B 1267 RT'),
('motor', 'B 34685 BN'),
('motor', 'B 3757 CT'),
('motor', 'B 4481 SEP'),
('motor', 'B 8785 ED'),
('motor', 'B 8841 SEP'),
('motor', 'b1231'),
('motor', 'b213'),
('motor', 'b6'),
('motor', 'b678'),
('motor', 'BE 3231 IA'),
('motor', 'BE 32432 IA'),
('motor', 'BE12'),
('motor', 'Be1231'),
('motor', 'bg1'),
('motor', 'by1');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `Nama` varchar(30) NOT NULL,
  `NIM` int(15) NOT NULL,
  `PlatNomor` varchar(20) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

CREATE TABLE `security` (
  `Nama` varchar(30) DEFAULT NULL,
  `NIPSecurity` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `security`
--

INSERT INTO `security` (`Nama`, `NIPSecurity`) VALUES
('Bambang', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `NamaTamu` varchar(30) NOT NULL,
  `PlatNomor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NIP`),
  ADD KEY `PlatNomor` (`PlatNomor`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`PlatNomor`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`),
  ADD KEY `PlatNomor` (`PlatNomor`);

--
-- Indexes for table `security`
--
ALTER TABLE `security`
  ADD PRIMARY KEY (`NIPSecurity`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`NamaTamu`),
  ADD KEY `PlatNomor` (`PlatNomor`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`PlatNomor`) REFERENCES `kendaraan` (`PlatNomor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`PlatNomor`) REFERENCES `kendaraan` (`PlatNomor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tamu`
--
ALTER TABLE `tamu`
  ADD CONSTRAINT `tamu_ibfk_1` FOREIGN KEY (`PlatNomor`) REFERENCES `kendaraan` (`PlatNomor`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
