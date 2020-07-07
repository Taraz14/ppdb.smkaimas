-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 25, 2020 at 02:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smk_aimas`
--

-- --------------------------------------------------------

--
-- Table structure for table `accepted`
--

CREATE TABLE `accepted` (
  `acc_id` varchar(64) CHARACTER SET latin1 NOT NULL,
  `id_jalur` int(11) NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 NOT NULL,
  `nisn` varchar(11) NOT NULL,
  `tempat_lahir` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') CHARACTER SET latin1 NOT NULL,
  `agama` varchar(20) CHARACTER SET latin1 NOT NULL,
  `kewarganegaraan` varchar(50) CHARACTER SET latin1 NOT NULL,
  `no_telp` varchar(18) CHARACTER SET latin1 NOT NULL,
  `alamat` text CHARACTER SET latin1 NOT NULL,
  `jurusan` varchar(100) CHARACTER SET latin1 NOT NULL,
  `ayah_kandung` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(255) NOT NULL,
  `ibu_kandung` varchar(100) CHARACTER SET latin1 NOT NULL,
  `pekerjaan_ibu` varchar(255) NOT NULL,
  `telp_ortu` varchar(21) NOT NULL,
  `alamat_ortu` text CHARACTER SET latin1 NOT NULL,
  `nama_wali` varchar(50) CHARACTER SET latin1 NOT NULL,
  `pekerjaan_wali` varchar(50) CHARACTER SET latin1 NOT NULL,
  `alamat_wali` text CHARACTER SET latin1 NOT NULL,
  `telp_wali` varchar(21) CHARACTER SET latin1 NOT NULL,
  `asal_sekolah` varchar(255) CHARACTER SET latin1 NOT NULL,
  `alamat_sekolah` text CHARACTER SET latin1 NOT NULL,
  `tahun_lulus` year(4) NOT NULL,
  `submit_at` int(11) NOT NULL,
  `nomor_pendaftar` int(11) NOT NULL,
  `nilai` float DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `is_tested` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accepted`
--

INSERT INTO `accepted` (`acc_id`, `id_jalur`, `nama_lengkap`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `kewarganegaraan`, `no_telp`, `alamat`, `jurusan`, `ayah_kandung`, `pekerjaan_ayah`, `ibu_kandung`, `pekerjaan_ibu`, `telp_ortu`, `alamat_ortu`, `nama_wali`, `pekerjaan_wali`, `alamat_wali`, `telp_wali`, `asal_sekolah`, `alamat_sekolah`, `tahun_lulus`, `submit_at`, `nomor_pendaftar`, `nilai`, `file`, `is_tested`) VALUES
('5edf18501bfa2', 1, 'simson duwit', '0037181176', 'kampung klamit ', '2003-07-08', 'Laki-laki', 'Protestan', 'wni', '082122160278', 'jln intimpura/kabupaten sorong', '1', 'oktovianus duwit', 'petani', 'yuliana duwit', 'petani', '082122160278', 'sayosa timur', 'elisabet mlasmene', 'petani', 'intimpura', '085244377347', 'smp negeri persiapan pasir putih', 'kampung pasir putih', 2020, 1593045984, 2107927399, NULL, '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepted`
--
ALTER TABLE `accepted`
  ADD PRIMARY KEY (`acc_id`),
  ADD KEY `id_jalur` (`id_jalur`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
