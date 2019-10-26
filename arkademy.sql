-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2019 at 05:11 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arkademy`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kasir`
--

CREATE TABLE `tb_kasir` (
  `id` int(6) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kasir`
--

INSERT INTO `tb_kasir` (`id`, `name`) VALUES
(1, 'Pevita Pearce'),
(2, 'Raisa Andriana');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id` int(6) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id`, `name`) VALUES
(1, 'Food'),
(2, 'Drink');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id` int(6) NOT NULL,
  `name` varchar(25) NOT NULL,
  `price` int(12) NOT NULL,
  `id_kategori` int(6) NOT NULL,
  `id_kasir` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id`, `name`, `price`, `id_kategori`, `id_kasir`) VALUES
(1, 'Latte', 10000, 0, 0),
(2, 'Cake', 20000, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kasir`
--
ALTER TABLE `tb_kasir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kasir`
--
ALTER TABLE `tb_kasir`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
