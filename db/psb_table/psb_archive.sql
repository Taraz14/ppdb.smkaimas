-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table ppdb.psb
CREATE TABLE IF NOT EXISTS `psb_archive` (
  `psb_id` varchar(64) CHARACTER SET latin1 NOT NULL,
  `id_jalur` int(11) NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 NOT NULL,
  `nisn` varchar(11) NOT NULL,
  `nik` varchar(17) NOT NULL,
  `tempat_lahir` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') CHARACTER SET latin1 NOT NULL,
  `agama` varchar(20) CHARACTER SET latin1 NOT NULL,
  `kewarganegaraan` varchar(50) CHARACTER SET latin1 NOT NULL,
  `no_telp` varchar(18) CHARACTER SET latin1 NOT NULL,
  `alamat` text CHARACTER SET latin1 NOT NULL,
  `jurusan1` varchar(100) CHARACTER SET latin1 NOT NULL,
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
  `tahun_submit` year(4) NOT NULL,
  `submit_at` int(11) NOT NULL,
  `nomor_pendaftar` int(11) NOT NULL,
  `nilai` float DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `cadangkan` tinyint(1) NOT NULL,
  `is_accepted` tinyint(1) NOT NULL,
  `is_tested` tinyint(1) NOT NULL,
  PRIMARY KEY (`psb_id`),
  KEY `id_jalur` (`id_jalur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
