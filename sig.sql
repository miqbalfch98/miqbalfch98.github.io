-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2022 at 07:36 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sig`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_tempat` int(11) NOT NULL,
  `nama_galeri` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `ket_galeri` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id_galeri`, `id_tempat`, `nama_galeri`, `gambar`, `ket_galeri`) VALUES
(22, 15, 'Alun-alun Bebekan', '8526bebekan.jpg', ''),
(35, 10, 'OW Pantai Depok', '3479pantai-depok.jpg', ''),
(37, 11, 'Pantai Wonokerto', '2149wonokerto.jpg', ''),
(38, 12, 'Lolong Adventure', '9275lolong-adventure.jpg', ''),
(39, 13, 'OW Linggo Asri', '5119linggo.jpg', ''),
(40, 14, 'Sigesing', '6588sigesing-kesesi.jpg', ''),
(41, 16, 'Watu Ireng', '8606watu-ireng.jpg', ''),
(42, 17, 'Curug Bidadari', '1112curug-bidadari.jpg', ''),
(43, 18, 'Curug Lawe', '7329curug-lawe.jpg', ''),
(44, 19, 'Curug Muncar', '5213curug-muncar.jpg', ''),
(45, 20, 'Curug Bajing', '6484curug-bajing2.jpg', ''),
(46, 21, 'Karangsrity', '9253karangsrity.jpg', ''),
(47, 22, 'Kalipahingan', '1488kalipaingan.jpg', ''),
(48, 24, 'OW Welo Asri', '6487welo-asri.jpg', ''),
(49, 23, 'Watu Bahan', '4230watu-bahan.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_options`
--

CREATE TABLE `tb_options` (
  `option_name` varchar(16) NOT NULL,
  `option_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options`
--

INSERT INTO `tb_options` (`option_name`, `option_value`) VALUES
('default_lat', '-8.251889'),
('default_lng', '115.076818'),
('default_zoom', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat`
--

CREATE TABLE `tb_tempat` (
  `id_tempat` int(11) NOT NULL,
  `nama_tempat` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tempat`
--

INSERT INTO `tb_tempat` (`id_tempat`, `nama_tempat`, `gambar`, `lat`, `lng`, `lokasi`, `keterangan`) VALUES
(10, 'OW Pantai Depok', '3719pantai-depok.jpg', -6.8399696556294645, 109.60181406361151, 'Sawah, Depok, Kec. Siwalan, Kabupaten Pekalongan, Jawa Tengah 51137', ''),
(11, 'Pantai Wonokerto', '6457wonokerto.jpg', -6.845530120543586, 109.63361371929354, '5J3M+MFC, Wonokerto Kulon, Kec. Wonokerto, Kabupaten Pekalongan, Jawa Tengah', ''),
(12, 'Lolong adventure', '6520lolong-adventure.jpg', -7.06824114351165, 109.6419373813671, 'Jl. Karanganyar - Lebakbarang Kelurahan No.KM. 5, RT.7/RW.3, Karangrejo, Lolong, Kec. Karanganyar, Kabupaten Pekalongan, Jawa Tengah 51182', ''),
(13, 'OW Linggo Asri', '2270linggo.jpg', -7.102754277610418, 109.58710591347435, 'Kec. Kajen Kabupaten Pekalongan Jawa Tengah', ''),
(14, 'Sigesing', '7601sigesing-kesesi.jpg', -7.012810320650369, 109.539672912052, 'Jl. Raya Watu Gajah, Watugajah, Kec. Kesesi, Kabupaten Pekalongan, Jawa Tengah 51162', ''),
(15, 'Alun-alun Bebekan', '3591bebekan.jpg', -6.960338899174958, 109.64064648136629, 'Alun alun Kedungwuni Kedungwuni Lama. Kedungwuni, Sopaten, Kedungwuni Bar., Kec. Kedungwuni, Kabupaten Pekalongan, Jawa Tengah 51173', ''),
(16, 'Watu Ireng', '6897watu-ireng.jpg', -7.099070013431308, 109.51022889195806, 'WG26+83, Hutan, Windurojo, Kec. Kesesi, Kabupaten Pekalongan, Jawa Tengah', ''),
(17, 'Curug Bidadari', '7000curug-bidadari.jpg', -6.921524752883714, 109.7954867445315, 'Hutan, Jolotigo, Kec. Talun, Kabupaten Pekalongan, Jawa Tengah 51192', ''),
(18, 'Curug Lawe', '6417curug-lawe.jpg', -7.130192385829396, 109.73018571020316, 'VP9J+R3G, Desa Cakrawati, Songowedi, Songgodadi, Kec. Petungkriono, Kabupaten Pekalongan, Jawa Tengah 51193', ''),
(19, 'Curug Muncar', '7180curug-muncar.jpg', -7.176008274214731, 109.7209796654388, 'Kec. Petungkriono Kabupaten Pekalongan Jawa Tengah', ''),
(20, 'Curug Bajing', '3713curug-bajing2.jpg', -7.170515525354964, 109.72870442711913, 'RPHH+FFF, Tlogopakis, Petungkriono, Hutan, Gumelem, Kec. Petungkriono, Kabupaten Pekalongan, Jawa Tengah 51193', ''),
(21, 'Karangsrity', '5314karangsrity.jpg', -7.1637908424103625, 109.72081569486065, 'Tlogopakis, Kec. Petungkriono, Kabupaten Pekalongan, Jawa Tengah 51193', ''),
(22, 'OW Kali Pahingan', '9742kalipaingan.jpg', -7.1159080628205285, 109.59263666787442, 'VHMV+G32, Hutan, Tenogo, Kec. Paninggaran, Kabupaten Pekalongan, Jawa Tengah 51164', ''),
(23, 'Watu Bahan', '9243watu-bahan.jpg', -7.075014374936377, 109.69795565253143, 'WMFX+V6C, Kebun, Lemah Abang, Kec. Doro, Kabupaten Pekalongan, Jawa Tengah 51191', ''),
(24, 'OW Welo Asri', '2086welo-asri.jpg', -7.115688139838952, 109.73993181205276, 'VPMQ+JX6, Hutan, Kayupuring, Kec. Petungkriono, Kabupaten Pekalongan, Jawa Tengah 51193', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `user`, `pass`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`option_name`);

--
-- Indexes for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  ADD PRIMARY KEY (`id_tempat`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  MODIFY `id_tempat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
