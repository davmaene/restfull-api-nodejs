-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2021 at 10:16 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `__db_ms_transport`
--

-- --------------------------------------------------------

--
-- Table structure for table `__tbl_capital`
--

CREATE TABLE `__tbl_capital` (
  `id` int(11) NOT NULL,
  `totalsolde` float NOT NULL,
  `createby` int(11) NOT NULL DEFAULT 18041995,
  `modifiedby` int(11) NOT NULL DEFAULT 18041995,
  `deletedby` int(11) NOT NULL DEFAULT 18041995,
  `datastatus` int(11) NOT NULL DEFAULT 18041995,
  `createdon` varchar(45) NOT NULL DEFAULT 'mid'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `__tbl_cars`
--

CREATE TABLE `__tbl_cars` (
  `id` int(11) NOT NULL,
  `idcateg` int(11) NOT NULL,
  `matricule` varchar(32) NOT NULL,
  `iduser` int(11) NOT NULL COMMENT 'represents agent or conductor',
  `createby` int(11) NOT NULL DEFAULT 18041995,
  `modifiedby` int(11) NOT NULL DEFAULT 18041995,
  `deletedby` int(11) NOT NULL DEFAULT 18041995,
  `datastatus` int(11) NOT NULL DEFAULT 18041995,
  `createdon` varchar(45) NOT NULL DEFAULT 'mid'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `__tbl_categorie`
--

CREATE TABLE `__tbl_categorie` (
  `id` int(11) NOT NULL,
  `categorie` varchar(60) NOT NULL,
  `staticprice` double NOT NULL,
  `retrocommission` float NOT NULL COMMENT 'this represents the retrocommission of the kind of car',
  `createby` int(11) NOT NULL DEFAULT 18041995,
  `modifiedby` int(11) NOT NULL DEFAULT 18041995,
  `deletedby` int(11) NOT NULL DEFAULT 18041995,
  `datastatus` int(11) NOT NULL DEFAULT 18041995,
  `createdon` varchar(45) NOT NULL DEFAULT 'mid'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `__tbl_clients`
--

CREATE TABLE `__tbl_clients` (
  `id` int(11) NOT NULL,
  `fsname` varchar(60) NOT NULL,
  `lsname` varchar(60) NOT NULL,
  `idsolde` int(11) NOT NULL,
  `avatar` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `pwd` text NOT NULL,
  `createby` int(11) NOT NULL DEFAULT 18041995,
  `modifiedby` int(11) NOT NULL DEFAULT 18041995,
  `deletedby` int(11) NOT NULL DEFAULT 18041995,
  `datastatus` int(11) NOT NULL DEFAULT 18041995,
  `createdon` varchar(45) NOT NULL DEFAULT 'mid'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `__tbl_credit`
--

CREATE TABLE `__tbl_credit` (
  `id` int(11) NOT NULL,
  `idsolde` int(11) NOT NULL,
  `montant` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `__tbl_debit`
--

CREATE TABLE `__tbl_debit` (
  `id` int(11) NOT NULL,
  `idsolde` int(11) NOT NULL,
  `montant` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `__tbl_operations`
--

CREATE TABLE `__tbl_operations` (
  `id` int(11) NOT NULL,
  `idcar` int(11) NOT NULL,
  `idclient` int(11) NOT NULL,
  `ispending` int(11) NOT NULL COMMENT 'if 1 i.e operation done, 0 otherwise',
  `createby` int(11) NOT NULL DEFAULT 18041995,
  `modifiedby` int(11) NOT NULL DEFAULT 18041995,
  `deletedby` int(11) NOT NULL DEFAULT 18041995,
  `datastatus` int(11) NOT NULL DEFAULT 18041995,
  `createdon` varchar(45) NOT NULL DEFAULT 'mid'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `__tbl_solde`
--

CREATE TABLE `__tbl_solde` (
  `id` int(11) NOT NULL,
  `solde` float NOT NULL,
  `createby` int(11) NOT NULL DEFAULT 18041995,
  `modifiedby` int(11) NOT NULL DEFAULT 18041995,
  `deletedby` int(11) NOT NULL DEFAULT 18041995,
  `datastatus` int(11) NOT NULL DEFAULT 18041995,
  `createdon` varchar(45) NOT NULL DEFAULT 'mid'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `__tbl_users`
--

CREATE TABLE `__tbl_users` (
  `id` int(11) NOT NULL,
  `fsname` varchar(60) NOT NULL,
  `lsname` varchar(60) NOT NULL,
  `role` int(11) NOT NULL COMMENT 'this column represents the role of diffents users',
  `avatar` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `pwd` text NOT NULL,
  `createby` int(11) NOT NULL DEFAULT 18041995,
  `modifiedby` int(11) NOT NULL DEFAULT 18041995,
  `deletedby` int(11) NOT NULL DEFAULT 18041995,
  `datastatus` int(11) NOT NULL DEFAULT 18041995,
  `createdon` varchar(45) NOT NULL DEFAULT 'mid'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `__tbl_users`
--

INSERT INTO `__tbl_users` (`id`, `fsname`, `lsname`, `role`, `avatar`, `email`, `phone`, `pwd`, `createby`, `modifiedby`, `deletedby`, `datastatus`, `createdon`) VALUES
(1, 'david', 'maene', 1, '', 'kubuya.darone.david@gmail.com', '+243970284772', 'emFxeHN3Y2Rl', 1, 0, 0, 1, '14/07/2021, 19:57:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `__tbl_capital`
--
ALTER TABLE `__tbl_capital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `__tbl_cars`
--
ALTER TABLE `__tbl_cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `__tbl_clients`
--
ALTER TABLE `__tbl_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `__tbl_credit`
--
ALTER TABLE `__tbl_credit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `__tbl_debit`
--
ALTER TABLE `__tbl_debit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `__tbl_operations`
--
ALTER TABLE `__tbl_operations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `__tbl_solde`
--
ALTER TABLE `__tbl_solde`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `__tbl_users`
--
ALTER TABLE `__tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `__tbl_capital`
--
ALTER TABLE `__tbl_capital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `__tbl_cars`
--
ALTER TABLE `__tbl_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `__tbl_clients`
--
ALTER TABLE `__tbl_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `__tbl_credit`
--
ALTER TABLE `__tbl_credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `__tbl_debit`
--
ALTER TABLE `__tbl_debit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `__tbl_operations`
--
ALTER TABLE `__tbl_operations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `__tbl_solde`
--
ALTER TABLE `__tbl_solde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `__tbl_users`
--
ALTER TABLE `__tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
