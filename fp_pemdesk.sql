-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 07:23 PM
-- Server version: 10.4.32-MariaDB-log
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fp_pemdesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `kereta`
--

CREATE TABLE `kereta` (
  `id_kereta` int(100) NOT NULL,
  `from_station` varchar(100) NOT NULL,
  `to_station` varchar(100) NOT NULL,
  `jam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kereta`
--

INSERT INTO `kereta` (`id_kereta`, `from_station`, `to_station`, `jam`) VALUES
(1, 'Wonokromo', 'Gubeng', '07.00 - 08.00'),
(2, 'Gubeng', 'Pasar Turi', '11:10 - 11.40'),
(3, 'sidoarjo', 'malang', '12.00 - 14.00');

-- --------------------------------------------------------

--
-- Table structure for table `kursi_kereta`
--

CREATE TABLE `kursi_kereta` (
  `id_kursi` int(100) NOT NULL,
  `nomor_kursi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kursi_kereta`
--

INSERT INTO `kursi_kereta` (`id_kursi`, `nomor_kursi`) VALUES
(1, 'A-1'),
(2, 'A-2'),
(3, 'A-3'),
(4, 'B - 1'),
(5, 'B - 3'),
(6, 'B - 4'),
(7, 'C - 1'),
(8, 'C - 4'),
(9, 'D - 2'),
(10, 'D - 3'),
(11, 'D - 4');

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`username`, `password`) VALUES
('admin', 'admin404');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `id_order` int(100) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `kursi_krt` varchar(100) NOT NULL,
  `harga_tiket` varchar(100) NOT NULL,
  `tgl_order` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`id_order`, `nama_pelanggan`, `kursi_krt`, `harga_tiket`, `tgl_order`) VALUES
(4, 'alex', 'A-2', '20000', '2024-12-16'),
(6, 'aku', 'B - 3', '20000', '2024-12-16'),
(7, 'saya', 'B - 4', '20000', '2024-12-16'),
(8, 'faiq', 'B - 1', '20000', '2024-12-17'),
(9, 'kula', 'B - 3', '20000', '2024-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('alex', 'alexganteng'),
('faiq', 'faiq1110');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kereta`
--
ALTER TABLE `kereta`
  ADD PRIMARY KEY (`id_kereta`);

--
-- Indexes for table `kursi_kereta`
--
ALTER TABLE `kursi_kereta`
  ADD PRIMARY KEY (`id_kursi`);

--
-- Indexes for table `master`
--
ALTER TABLE `master`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kereta`
--
ALTER TABLE `kereta`
  MODIFY `id_kereta` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kursi_kereta`
--
ALTER TABLE `kursi_kereta`
  MODIFY `id_kursi` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `id_order` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
