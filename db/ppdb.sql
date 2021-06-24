-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 20, 2021 at 05:33 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accepted`
--

CREATE TABLE `accepted` (
  `acc_id` varchar(64) CHARACTER SET latin1 NOT NULL,
  `id_jalur` int(11) NOT NULL,
  `class_id` varchar(64) NOT NULL,
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
  `kode_jurusan` int(11) NOT NULL,
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
  `accepted_at` int(11) NOT NULL,
  `accepted_year` year(4) NOT NULL,
  `nomor_pendaftar` int(11) NOT NULL,
  `nilai` float DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `is_tested` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accepted`
--

INSERT INTO `accepted` (`acc_id`, `id_jalur`, `class_id`, `nama_lengkap`, `nisn`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `kewarganegaraan`, `no_telp`, `alamat`, `kode_jurusan`, `ayah_kandung`, `pekerjaan_ayah`, `ibu_kandung`, `pekerjaan_ibu`, `telp_ortu`, `alamat_ortu`, `nama_wali`, `pekerjaan_wali`, `alamat_wali`, `telp_wali`, `asal_sekolah`, `alamat_sekolah`, `tahun_lulus`, `accepted_at`, `accepted_year`, `nomor_pendaftar`, `nilai`, `file`, `is_tested`) VALUES
('60ce8e2bb6e32', 1, 'smk1-XTKJ1', 'hasjjshhs', '7837948979', '2734792847274924', 'Surabaya', '2021-06-10', 'Laki-laki', 'Islam', 'wni', '081393484770', 'Jl. Petro Cina, Unit 1, Aimas, Kabupaten Sorong, Papua Barat/jajajajajaja', 4, 'asdasda', 'asdasdasdg', 'sdADSA', 'sdfsdgwer', '081393484770', 'Jl. Petro Cina, Unit 1, Aimas, Kabupaten Sorong, Papua Barat', '', '', '', '', 'saffff', 'asdasdasd', 2021, 1624164352, 2021, 1634437554, 0, '', 0),
('60ceca0506eb4', 2, 'smk1-XAKL1', 'sdvsas', '9483762543', '9283716329423187', 'Sorong', '2021-06-11', 'Laki-laki', 'Islam', 'wni', '081393484770', 'Jl. Petro Cina, Unit 1, Aimas, Kabupaten Sorong, Papua Barat/asdsdvef', 1, 'cbefd', 'asdsd', 'awfsdf', 'fbcvcx', '7837948979', 'vszxfs', '', '', '', '', 'xvfasfwwef', '', 2024, 1624166435, 2021, 1330730191, 78, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl`
--

CREATE TABLE `acl` (
  `ai` int(10) UNSIGNED NOT NULL,
  `action_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_actions`
--

CREATE TABLE `acl_actions` (
  `action_id` int(10) UNSIGNED NOT NULL,
  `action_code` varchar(100) NOT NULL COMMENT 'No periods allowed!',
  `action_desc` varchar(100) NOT NULL COMMENT 'Human readable description',
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_categories`
--

CREATE TABLE `acl_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_code` varchar(100) NOT NULL COMMENT 'No periods allowed!',
  `category_desc` varchar(100) NOT NULL COMMENT 'Human readable description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_sessions`
--

CREATE TABLE `auth_sessions` (
  `id` varchar(128) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `login_time` datetime DEFAULT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_sessions`
--

INSERT INTO `auth_sessions` (`id`, `user_id`, `login_time`, `modified_at`, `ip_address`, `user_agent`) VALUES
('p2hmr5q3o7bpqn416mlepu6mleiukbah', 2890700273, '2021-06-20 11:36:05', '2021-06-20 05:29:31', '::1', 'Chrome 91.0.4472.101 on Windows 10'),
('hapattuclg7rogtib5d5ocs2jfka2l4r', 2890700273, '2021-06-20 06:52:08', '2021-06-20 00:25:15', '::1', 'Chrome 91.0.4472.101 on Windows 10');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `berita_id` varchar(64) CHARACTER SET latin1 NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `judul_b` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `sub_judul` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `isi_b` text CHARACTER SET latin1,
  `post_at` int(11) NOT NULL,
  `last_edit` int(11) NOT NULL,
  `counts` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `button_activate`
--

CREATE TABLE `button_activate` (
  `bt_id` int(11) NOT NULL,
  `bool` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `button_activate`
--

INSERT INTO `button_activate` (`bt_id`, `bool`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('p2hmr5q3o7bpqn416mlepu6mleiukbah', '::1', 1624167188, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343136363937313b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302031313a33363a3035223b7d223b),
('4eeq0sod3n6toc9si1pt6q6j4nibls8b', '::1', 1624166971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343136363937313b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302031313a33363a3035223b7d223b),
('krc56e8cont86fdh7c0v8l279u7n7qjm', '::1', 1624166579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343136363537393b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302031313a33363a3035223b7d223b),
('ps919tv9c8hkdmptf6759kkgs1h0s14l', '::1', 1624166180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343136363138303b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302031313a33363a3035223b7d223b),
('o86uh9nhn5hns36cmt2opn48s083mdha', '::1', 1624165848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343136353834383b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302031313a33363a3035223b7d223b),
('tpmkemh9foskpf79vke8sgve1ua1mdb0', '::1', 1624165485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343136353438353b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302031313a33363a3035223b7d223b),
('vvu7b3j9t92etmcbk9uge7p4rg0h7g5i', '::1', 1624165159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343136353135393b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302031313a33363a3035223b7d223b),
('igv6sjq5rcra09910vruqp23j5s3mb97', '::1', 1624164823, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343136343832333b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302031313a33363a3035223b7d223b),
('o2mgov9fjhg91rejqgr0gk3oe19o5j51', '::1', 1624164208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343136343230383b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302031313a33363a3035223b7d223b),
('bp128rmbh82aldr3cee9dbnftkrmhn4i', '::1', 1624163765, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343136333736353b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302031313a33363a3035223b7d223b),
('hddcp265qpajae8697gp9omeuroepc4r', '::1', 1624163695, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343136333639353b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302031313a32393a3533223b7d223b),
('blr9cdom8knmfp86vv5tc0vgiq9f3975', '::1', 1624163393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343136333339333b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302031313a32393a3533223b7d223b),
('nohce2gspi618uef8p76n77efm83ga58', '::1', 1624151059, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343135313035393b),
('elafh5hf3f1rjieik5g0l07tkprk1i9k', '::1', 1624151103, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343135313035393b),
('n26av6dtanqtas8hrs6q7acs5te8aagv', '::1', 1624150738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343135303733383b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302030373a34323a3138223b7d223b),
('8chu3njnsgkmr9evc00l3gkjnfqau14q', '::1', 1624150425, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343135303432353b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302030373a34323a3138223b7d223b),
('r32t8lomjlrh378tnfieduv470lq8101', '::1', 1624150052, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343135303035323b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302030373a34323a3138223b7d223b),
('cj5c65o0ln876ec5h5f0dut6053d45gf', '::1', 1624149738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343134393733383b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302030373a34323a3138223b7d223b),
('hapattuclg7rogtib5d5ocs2jfka2l4r', '::1', 1624149453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343134393435333b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302030363a35323a3038223b7d223b),
('ba7lplcff2241rsnq7cvhfsgms41m84h', '::1', 1624148715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343134383731353b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302030363a35323a3038223b7d223b),
('j31hu0p834gg5aka3otch719rr3vu2fa', '::1', 1624148394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343134383339343b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302030363a35323a3038223b7d223b),
('69lm60nea9mc726f38c5u3b3a7mqnjl3', '::1', 1624146728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343134363732383b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d32302030363a35323a3038223b7d223b),
('buk16taifsgshodhv6l8o1dodcitneh1', '::1', 1624146722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343134363732323b),
('lj1l8d8l6vt1t6kvrvo5tn28i4fccfcp', '::1', 1624112965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343131323936353b),
('4qorq57p3p79m6tuamhn0soa9pcj8t01', '::1', 1624090792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343039303533313b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('n9kja6q0uhmaonvpkvhbhd963odpoe5e', '::1', 1624090531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343039303533313b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('m93ellgomfp2a3fu3hbvsm3p5vllvop3', '::1', 1624088538, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343038383533383b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('ncg06264u0j74ude09l0heumbc451gkt', '::1', 1624087691, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343038373639313b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('jf842skmupc6m5gkjqjdfbuqugqcq343', '::1', 1624087100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343038373130303b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('sncee7epd2btc7f755me0shd41osckdj', '::1', 1624086777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343038363737373b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('u63hkbb3cp757opou0ukhsgqqd090lu4', '::1', 1624086400, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343038363430303b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('fre5v988uu17iplt0eqg3ecm0r5q50ug', '::1', 1624084202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343038343230323b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('g67ckob7d8ln8s5kidvhsj001faoh4gc', '::1', 1624083171, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343038333137313b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('qgsgku5ek9934ncj409gmbv2hjap375t', '::1', 1624082863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343038323836333b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('oa5vc13scm9njn02en66o2699u7nm2fe', '::1', 1624082543, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343038323534333b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('p7tfrukh5he3a3f81rf5tuo315oei188', '::1', 1624081911, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343038313931313b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('ejg9h6ud45m4fc3oiv23spgg1t8kgvcq', '::1', 1624080928, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343038303932383b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('k7luu54c6rp1np1ujdecjqeeih0rjjvo', '::1', 1624077348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343037373334383b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('v2e0sr4n8u8hff705foeeekc4ghpikk8', '::1', 1624073335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343037333333353b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('rq5q93gubmiiq5thpnkv75o1tgb4i29g', '::1', 1624073027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343037333032373b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('pn4o6h3fd23d1maclf6vrpc88ogeilts', '::1', 1624069953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343036393935333b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('1kpbap1n0gn195u4ss5st2q93sp21ht3', '::1', 1624069643, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343036393634333b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('h9nk0bih45f922h23lli8v09vsmdhr8k', '::1', 1624067889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343036373838393b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('54ci92rri6rjk7qndk700okndk5mri7p', '::1', 1624067062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343036373036323b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('06pr06gu1moqvpc229dbs2n6416jorbp', '::1', 1624066628, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343036363632383b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('1f38pt5ljshfma5g5n6vuk6qknc4n725', '::1', 1624065880, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343036353838303b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('trc4aojecsvf2kl1gqut0ooad1k3j23t', '::1', 1624064916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343036343931363b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('4lsrp0ssqu90dl5qsahc3m29ahndgh1h', '::1', 1624065222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343036353232323b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b),
('d0ojco7gp6dafctr9ccovksqrtor03n6', '::1', 1624065523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313632343036353532333b617574685f6964656e746966696572737c733a38333a22613a323a7b733a373a22757365725f6964223b733a31303a2232383930373030323733223b733a31303a226c6f67696e5f74696d65223b733a31393a22323032312d30362d31392030383a30383a3336223b7d223b);

-- --------------------------------------------------------

--
-- Table structure for table `denied_access`
--

CREATE TABLE `denied_access` (
  `ai` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  `reason_code` tinyint(1) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ips_on_hold`
--

CREATE TABLE `ips_on_hold` (
  `ai` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jalur_daftar`
--

CREATE TABLE `jalur_daftar` (
  `id_jalur` int(11) NOT NULL,
  `jalur` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jalur_daftar`
--

INSERT INTO `jalur_daftar` (`id_jalur`, `jalur`) VALUES
(1, 'Papua'),
(2, 'Non Papua');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `kode_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `alias` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`kode_jurusan`, `nama_jurusan`, `alias`) VALUES
(1, 'Akuntansi dan Keuangan Lembaga', 'AKL'),
(2, 'Otomatisasi dan Tata Kelola Perkantoran', 'OTKP'),
(3, 'Desain Pemodelan dan Informasi Bangunan', 'DPIB'),
(4, 'Teknik Komputer dan Jaringan', 'TKJ'),
(5, 'Teknik Kendaraan Ringan Otomotif', 'TKRO'),
(6, 'Teknik Instalasi Tenaga Listrik', 'TITL'),
(7, 'Teknik dan Bisnis Sepeda Motor', 'TBSM');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `class_id` varchar(64) NOT NULL,
  `class_name` varchar(10) NOT NULL,
  `create_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`class_id`, `class_name`, `create_at`) VALUES
('smk1-XAKL1', 'X AKL 1', 1593429685),
('smk1-XAKL2', 'X AKL 2', 1593429695),
('smk1-XDPIB', 'X DPIB', 1593429743),
('smk1-XOTKP1', 'X OTKP 1', 1593429710),
('smk1-XOTKP2', 'X OTKP 2', 1593429717),
('smk1-XTBSM', 'X TBSM', 1593429791),
('smk1-XTITL', 'X TITL', 1593429781),
('smk1-XTKJ1', 'X TKJ 1', 1593429753),
('smk1-XTKJ2', 'X TKJ 2', 1593429759),
('smk1-XTKRO', 'X TKRO', 1593429769);

-- --------------------------------------------------------

--
-- Table structure for table `login_errors`
--

CREATE TABLE `login_errors` (
  `ai` int(10) UNSIGNED NOT NULL,
  `username_or_email` varchar(255) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_errors`
--

INSERT INTO `login_errors` (`ai`, `username_or_email`, `ip_address`, `time`) VALUES
(78, 'novel', '::1', '2021-06-20 11:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `ppdb_archive`
--

CREATE TABLE `ppdb_archive` (
  `archive_id` varchar(64) CHARACTER SET latin1 NOT NULL,
  `id_jalur` int(11) NOT NULL,
  `class_id` varchar(64) NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 NOT NULL,
  `nisn` varchar(11) NOT NULL,
  `tempat_lahir` varchar(50) CHARACTER SET latin1 NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') CHARACTER SET latin1 NOT NULL,
  `agama` varchar(20) CHARACTER SET latin1 NOT NULL,
  `kewarganegaraan` varchar(50) CHARACTER SET latin1 NOT NULL,
  `no_telp` varchar(18) CHARACTER SET latin1 NOT NULL,
  `alamat` text CHARACTER SET latin1 NOT NULL,
  `kode_jurusan` int(11) NOT NULL,
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
  `archive_at` int(11) NOT NULL,
  `nomor_pendaftar` int(11) NOT NULL,
  `nilai` float DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `is_tested` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ppdb_archive`
--

INSERT INTO `ppdb_archive` (`archive_id`, `id_jalur`, `class_id`, `nama_lengkap`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `kewarganegaraan`, `no_telp`, `alamat`, `kode_jurusan`, `ayah_kandung`, `pekerjaan_ayah`, `ibu_kandung`, `pekerjaan_ibu`, `telp_ortu`, `alamat_ortu`, `nama_wali`, `pekerjaan_wali`, `alamat_wali`, `telp_wali`, `asal_sekolah`, `alamat_sekolah`, `tahun_lulus`, `archive_at`, `nomor_pendaftar`, `nilai`, `file`, `is_tested`) VALUES
('5ea25ca6eecef', 2, 'smk1-XTBSM', 'MUHAMMAD ADAM PUTRA LADOPURA ', '0046371995', 'SORONG ', '2004-10-10', 'Laki-laki', 'islam', 'wni', '082199615799', 'Jln. Poros Pengalengan /Klabinain/Aimas/Papua Barat', 7, 'Paskalis FR Suban', 'Swasta', 'Nur Wati Sully', 'IRT', '082399564458', 'JLN. POROS PENGALENGAN', '', '', '', '', 'SMP NEGERI 9 KOTA SORONG', 'JLN. JEND. SUDIRMAN-DELIMA NO. 02', 2020, 1593819884, 1921837207, 45, '', 0),
('5ea3a2be15d74', 2, 'smk1-XAKL2', 'Mawar', '0049177545', 'Sorong', '2004-09-16', 'Perempuan', 'Islam', 'wni', '082198342649', 'Jln.Intimpura/Aimas/Sorong/Papua Barat', 1, 'Basri', 'Wiraswasta', 'Siarung', 'Ibu Rumah Tangga', '082198335187', 'Jln.Intimpura', 'Basri', 'Wiraswasta', '', '082198335187', 'Mts Negeri Sorong kabupaten Sorong', 'Jln.Menur No.2 Kel.Mariai Distrik Mariat', 2020, 1593992354, 885707013, 67.5, '', 0),
('5ea3bc5751e4c', 2, 'smk1-XAKL1', 'Astriani Saruran', '0056478923', 'Tobelo', '2005-04-22', 'Perempuan', 'Protestan', 'wni', '082199782253', 'Jl Tutwuri/Aimas/kabupaten sorong/papua barat', 1, 'Matius saruran', 'Karyawan Swasta', 'Wina salamat', 'Ibu rumah tangga', '081354068514', 'Jln tutwuri', '', '', '', '', 'SMP ypk Bethel', 'Jln Enau', 2020, 1593990908, 1702544532, 70, '', 0),
('5ea622632e014', 2, 'smk1-XAKL1', 'Nuhzul suma wabula', '0047756375', 'Sorong ', '2004-11-25', 'Laki-laki', 'Islam', 'wni', '081342862242', 'Jl.Durian/Aimas/ sorong /papua barat', 1, 'Nalo.suma', 'Suwasta', 'Pani ', 'Ibu rumah tangga', '081342862242', 'Jl.Durian', '', '', '', '', 'Smp negeri 1 kabupaten sorong', 'Km19. Jl.klamono', 2020, 1593991268, 1110183634, 62.5, '', 0),
('5ea62ed071c54', 2, 'smk1-XTKJ1', 'Nabila Qori Anggraini', '0058404141', 'Sorong', '2005-06-21', 'Perempuan', 'Islam', 'wni', '085254044992', 'Jalan cianjur. RT 12 RW 01 kelurahan Jamaimo/Mariyat kabupaten sorong papua Barat', 4, 'Siswanto', 'Petani', 'Sunarsi', 'IRT', '085254044992', 'Jalan cianjur. RT 12 RW 01 kelurahan Jamaimo', 'Siswanto', 'Petani', 'Jalan cianjur. RT 12 RW 01 kelurahan Jamaimo', '085254044992', 'SMP Negeri 3 Kabupaten sorong', 'Jln. Merpati kelurahan Jamaimo kecamatan mariat kabupaten sorong', 2020, 1593832542, 1150324940, 57.5, '', 0),
('5ea63ffe705ee', 2, 'smk1-XTITL', 'Agung Prasatya Ayuba', '0045721750', 'Gorontalo', '2004-08-03', 'Laki-laki', 'Islam', 'wni', '082239118258', 'Aimas unit 2 /Sorong Papua Barat', 6, 'Tui Ayuba', 'Petani', 'Yanti Paris', 'URT', '085244461082', 'Aimas unit 2 Jlan Kacang', '', '', '', '', 'SMP N 1 KABUPATEN SORONG', 'Jalan Klamono', 2020, 1593826506, 1849273595, 57.5, '', 0),
('5ea64313c2f43', 2, 'smk1-XOTKP2', 'Eva Yulia sari', '0059316668', 'Grobogan', '2005-07-28', 'Perempuan', 'Islam', 'wni', '085243864261', 'Jln.Tomat unit 2/Malawele/ kab sorong/ papua barat', 2, 'Alm. Suparmin', '-', 'Jasirah', 'Ibu rumah tangga', '082397153989', 'Jln.Tomat unit 2', 'Jumali', 'Suasta', 'Jln.Tomat unit 2', '082248540064', 'SMP N 1 KAB SORONG', 'Jln.Klamono km 19 malawili Aimas', 2020, 1593837024, 786093953, 52.5, '', 0),
('5ea645c967b27', 2, 'smk1-XAKL2', 'TRI HIDAYATUL KHASANAH ', '0056065804', 'SORONG', '2005-11-15', 'Perempuan', 'Islam', 'wni', '082198305130', 'JLN TAWES TUGUMERAH SP1/MARIAT/SORONG/ PAPUA BARAT ', 1, 'PAWIT', 'OJEK', 'JUMIYATI', 'IBU RUMAH TANGGA', '082398587495', 'JLN TAWES TUGUMERAH SP1', '', '', '', '', 'SMP NEGRI 3', 'JLN MERPATI SP1', 2020, 1593992922, 465873323, 35, '', 0),
('5ea64684e26c8', 2, 'smk1-XOTKP2', 'Shelviana Rahmawati', '1703', 'Sorong', '2004-07-09', 'Perempuan', 'Islam', 'wni', '081344196601', 'Jlr D jln cempedak/Kabupaten Sorong', 2, 'Abdul Rahman', 'Swasta', 'Sarilah', 'Rumah tangga', '082398421418', 'Jlr D jln cempedak', '', '', '', '', 'SMP negeri 1 kabupaten Sorong', 'Jln klamono ', 2020, 1593837501, 912691108, 55, '', 0),
('5ea646dc8e7fa', 2, 'smk1-XAKL2', 'Sarifa lidan', '0052740085', 'Rantepao', '2005-03-26', 'Perempuan', 'katolik', 'wni', '082197850747', 'Jln.klamono km 19 aimas/Kabupaten', 1, 'Seprianus pon', 'Sopir', 'Lusyana lidan', 'Ibu rumah tangga', '082197850747', 'Jln klamono km.19 aimas', '', '', '', '', 'Smpn 1 kabupaten sorong', 'Jln klamono km.19 aimas', 2020, 1593992742, 1284759606, 50, '', 0),
('5ea647476576f', 2, 'smk1-XTKJ2', 'RAVAEL DEMARCO HITIPEUW ', '0055473505', 'SORONG', '2005-07-27', 'Laki-laki', 'Protestan', 'wni', '082238110468', 'Km 17 jalan H.Watem/KLAURUNG/SORONG/PAPUA BARAT', 4, 'DEVI HITIPEUW ', 'SUPIR', 'AGUS SUTINI SIPAYUNG', 'IBU RUMAH TANGGA', '082239110468', 'KM 17 JALAN H. WATEM', '', '', '', '', 'SMPN 01 KAB SORONG', 'KM. 19 KLAMONO', 2020, 1593835410, 911122512, 50, '', 0),
('5ea6486720936', 2, 'smk1-XAKL2', 'Tiara Putri Wulandari', '0051361892', 'Sorong,Papua barat', '2005-04-28', 'Perempuan', 'Islam', 'wni', '081240381040', 'Jalan,lumba-lumba/Mariat/Sorong/Papua barat', 1, 'Parno Purwantoro', 'Swasta', 'Suparmi', 'Tani', '082239068532', 'Jln.lumba-lumba', '', '', '', '', 'SMPN 03 kab.sorong', 'Jln.merpati ', 2020, 1593992894, 1295881143, 70, '', 0),
('5ea64891827ef', 2, 'smk1-XTBSM', 'Danar adi susanto', '0052356410', 'Sorong, papua barat', '2005-06-15', 'Laki-laki', 'Islam', 'wni', '081344599455', 'Jalan gabus rt 2 rw 1/Aimas/sorong/papua barat', 7, 'Sigit yuli susanto', 'Swasta ', 'Minarti', 'Ibu rumah tangga', '081344599455', 'Jalan gabus rt 2 rw 1', '', '', '', '', 'SMP NEGERI 3 KABUPATEN SORONG', 'Jl. Merpati Aimas 2 sp.1 distrik. Mariat kab.sorong', 2020, 1593819597, 193403358, 37.5, '', 0),
('5ea648c431da7', 2, 'smk1-XTBSM', 'Sufyan Fadlil', '0052357064', 'Sorong', '2005-06-24', 'Laki-laki', 'Islam', 'wni', '082199462909', 'Jalan gabus rt 2 rw 1/Aimas/sorong/papuabarat', 7, 'Rianto', 'Swasta', 'Khotimah', 'Ibu rumah tangga', '082199462909', 'Jalan gabus rt2 rw1', '', '', '', '', 'MTS NEGERI MARIAI', 'Jln.menur no 2 kel. Mariai distrik mariat', 2020, 1593820107, 1560000346, 47.5, '', 0),
('5ea6490335038', 2, 'smk1-XTKJ2', 'Nurfarahin echa salsabilla', '0035877195', 'Tulungagung', '2003-08-15', 'Perempuan', 'Islam', 'wni', '082398981051', 'Jl. Cempedak/Malagusa/sorong/papua barat', 4, 'Mahmud ridananto', 'Swasta', 'Nurlailin triarifah', 'Ibu rumah tangga', '082197975916', 'Jl. Cempedak', '', '', '', '', 'Smp negri 1 kab.sorong', 'Jl. Klamono km. 19 Malawali Aimas - Papua Barat', 2020, 1593835331, 2074972292, 52.5, '', 0),
('5ea64968e2a06', 2, 'smk1-XAKL1', 'NUR SRIWAHYUNI', '0048692963', 'Watampone', '2004-05-29', 'Perempuan', 'Islam', 'wni', '08124021040', 'Jalan Sagu/Aimas/Sorong/Papua Barat', 1, 'Muhammad Nasruddin', 'Wiraswasta', 'NurJannah Djafar', 'URT', '082398488028', 'Jln Sungai Kapuas Kabupaten Bone Sulawesi Selatan', 'Ridwan Iskandar', 'Wiraswasta', 'Jln Sagu', '085344689800', 'SMPN 1 KABUPATEN SORONG', 'Jln Klamono km.19 Malawili Aimas-Papua Barat', 2020, 1593991313, 1518052298, 42.5, '', 0),
('5ea649a6b4fbf', 2, 'smk1-XTKRO', 'LINDU ILHAM SAPUTRA', '0052277536', 'Sorong', '2005-04-03', 'Laki-laki', 'Islam', 'wni', '082399142630', 'Jln.Gambas Malawele Aimas/Aimas', 5, 'Suyitno', 'Swasta', 'Lilik irianti', '-', '085244740373', 'Jln.Gambas Malawele Aimas', 'Sadinah,SPd', 'PNS', 'Jln.Gambas Malawele Aimas', '085254568741', 'Al Ma\'arif 1 kabupaten Sorong', 'Jln.wortel malewe aimas', 2020, 1593820717, 39310784, 57.5, '', 0),
('5ea649ccba3a2', 2, 'smk1-XTKJ1', 'ALFINA SHELA SALSABILA SYUKUR', '0052021192', 'Sorong', '2005-02-16', 'Perempuan', 'Islam', 'wni', '082238760618', 'JlN.DURIAN/Malawili/Sorong/Papua barat', 4, 'MUHAMMAD SYUKUR', 'WIRASWASTA', 'YATI OCTAVIA PURBA', 'iBU RUMAH TANGGA', '082197964697', 'JlN.Durian', '', '', '', '', 'SMP NEGERI 1 KABUPATEN SORONG', 'Jl.Klamono Km. 19 Malawili Aimas-Papua Barat', 2020, 1593832151, 626883624, 50, '', 0),
('5ea649dd847c1', 2, 'smk1-XOTKP1', 'ARANTI PUTRI AULIA NURLITA', '0055443197', 'SORONG', '2005-06-07', 'Perempuan', 'Islam', 'wni', '081248006812', 'JALAN GAMBAS /AIMAS KABUPATEN SORONG PAPUA BARAT', 2, 'RATIMAN', 'PNS', 'SURYATI', 'IBU RUMAH TANGGA', '081248006812', 'JALAN GAMBAS', '', '', '', '', 'SMP NEGERI 1 KABUPATEN SORONG', 'JALAN KLAMONO KM 19', 2020, 1593835840, 889059203, 67.5, '', 0),
('5ea649deecbad', 2, 'smk1-XDPIB', 'PanjiBagaskara', '0052277528', 'Sorong', '2005-02-05', 'Laki-laki', 'Islam', 'wni', '081363832727', 'Jln.seledri,Malawele, RT 2.RW 5,Aimas, kabupaten Sorong/Aimas/Sorong/Papua Barat', 3, 'Imam Asyuni', 'Swasta', 'Endah Iriani', 'Ibu Rumah tangga', '085254612409', 'Jln.Seledri,Malawele, RT 2.RW 5,Aimas, kabupaten Sorong', 'Imam Asyuni', 'Swasta', 'Jln.Seledri,Malawele, RT 2.RW 5,Aimas, kabupaten Sorong', '085254612409', 'SMP Muhammadiyah Aimas', 'Jln.wortel,Malasom,Aimas, Kabupaten Sorong', 2020, 1593827964, 790934345, 65, '', 0),
('5ea64b2321620', 2, 'smk1-XAKL2', 'Wa Endang Larasati', '0051939458', 'Sorong', '2005-02-13', 'Perempuan', 'Islam', 'wni', '085232935105', 'Jalan Wortel RT/RW 006/003/Aimas, Sorong, Papua Barat', 1, 'La Jamal', 'Wiraswata', 'Sunarsih', 'Ibu Rumah Tangga', '085344136166', 'Jalan Wortel RT/RW 006/003', '', '', '', '', 'MTs. Al-Ma\'arif 1 Kabupaten Sorong', 'Jalan Wortel', 2020, 1593992946, 1587692163, 82.5, '', 0),
('5ea64c8a4b12e', 2, 'smk1-XTKJ2', 'Tita Ailla Syachrani', '0057838682', 'Sorong ', '2005-05-16', 'Perempuan', 'Islam', 'wni', '081248011657', 'Jalan nangka RT 01 RW 01 kelurahan malagusa /Kecamatan aimas kabupaten Sorong Papua barat ', 4, 'Muntaha', 'Pelaut ', 'Nurlaela Risti ', 'Ibu rumah tangga ', '082317479528', 'Jalan nangka RT 01 RW 01 kelurahan malagusa kecamatan aimas kabupaten Sorong Papua barat ', '', '', '', '', 'SMP NEGERI 1 KABUPATEN SORONG', 'Jalan klamono km.19 kelurahan malagusa kecamatan aimas kabupaten Sorong Papua barat', 2020, 1593835510, 38919653, 85, '', 0),
('5ea64cdfe2ab8', 2, 'smk1-XAKL2', 'INDAH PERMATA SARI', '0057662563', 'SORONG', '2005-06-07', 'Perempuan', 'Islam', 'wni', '081240078462', 'Jln pepaya jlr apolos/Aimas/sorong/papua barat', 1, 'Sholeh Hariadi', 'Tani', 'Siti Zubaedah', 'Tani', '082248128331', 'Jln pepaya jlr apolos', '', '', '', '', 'Smp N 01 Kab sorong', 'Km 19 jln klamono Malawili Aimas', 2020, 1593992246, 1828609248, 35, '', 0),
('5ea64d0e81b18', 2, 'smk1-XTKJ1', 'Tri Wahyu Puspitasari', '0051427772', 'Sorong', '2005-05-04', 'Perempuan', 'Islam', 'wni', '', 'Jl.Melati/Aimas , Kab.Sorong , Papua Barat', 4, 'Jiono', 'PNS', 'Mesini Widianti', 'Ibu rumah tangga', '081344177748', 'Jln.Melati , Mariat Pantai', '', '', '', '', 'SMP MUHAMMADIYAH AIMAS', 'Jl. K.H.A Dahlan No.04 Malasom Aimas', 2020, 1593832716, 867984394, 82.5, '', 0),
('5ea64dbe40daa', 2, 'smk1-XTKJ1', 'Fifi nur azizah', '0054553777', 'Sorong', '2005-06-26', 'Perempuan', 'Islam', 'wni', '081343479987', 'Jln. Rajawali kel. Klamalu /distrik mariat kap. Sorong papua barat', 4, 'Halim efendy', 'Tukang cukur', 'Sunarti', 'Mengurus rumah tangga', '085344690077', 'Jln. rajawali kel.klamalu', '', '', '', '', 'Mts negeri mariai', 'Jln. Menur no 2 kel. Mariai distrik mariat', 2020, 1593832297, 383572239, 67.5, '', 0),
('5ea64e7949374', 2, 'smk1-XOTKP2', 'DINDA ANUGRAH MEIRAWATI', '0057510808', 'SORONG', '2005-05-19', 'Perempuan', 'Islam', 'wni', '081356179704', 'JLN.CEMPEDAK JALUR D/KABUPATEN', 2, 'KANTI SANTOSO', 'TUKANG KAYU', 'SITI MUADATUL ISTIKOMAH', 'IBU RUMAH TANGGA', '081248705446', 'JALAN CEMPEDAK JALUR D', '', '', '', '', 'SMP NEGERI 1 KABUPATEN SORONG', 'JL.KLAMONO KM.19', 2020, 1593836882, 1197210825, 75, '', 0),
('5ea64e801d8f0', 2, 'smk1-XTKJ2', 'CANTIKA DEVI RIANI', '0057977853', 'Sorong', '2005-05-18', 'Perempuan', 'Islam', 'wni', '082248456305', 'Jl.Cempedak/Malagusa/Sorong/Papua Barat', 4, 'MUNARI', 'Swasta', 'HARTATI', 'Ibu Rumah Tangga', '081354148398', 'Jl.Cempedak', '', '', '', '', 'SMP Negeri 1 Kab.Sorong', 'Jl.Klamono Km. 19 Malawili Aimas-Papua Barat ', 2020, 1593833030, 786838714, 52.5, '', 0),
('5ea64e848e520', 2, 'smk1-XTKJ2', 'RISMIATI MAKASAU', '0054220126', 'SORONG', '2005-03-17', 'Perempuan', 'Islam', 'wni', '082239202107', 'Jln.Cempedak/Malagusa/Kabupaten/Papua Barat', 4, 'IDRIS MAKASAU', 'SOPIR', 'SUMIATI', 'IBU RUMAH TANGGA', '081248020814', 'Jln Cempedak', '', '', '', '', 'SMP Negeri 1 Kab Sorong', 'Jl.Klamono km.19 Malawili Aimas-Papua Barat', 2020, 1593835449, 261575709, 52.5, '', 0),
('5ea64e8b0e9cc', 2, 'smk1-XOTKP2', 'Nadila El Cinta', '0051494138', 'Kediri', '2005-08-27', 'Perempuan', 'Islam', 'wni', '082238321142', 'Jln mawar /Kabupaten Sorong', 2, 'Wijiyanto', 'Wiraswasta', 'Dewi Ningsih ', 'Ibu rumah tangga ', '082238321142', 'Jalan mawar. ', 'Dewi Ningsih', 'Ibu rumah tangga ', 'Jalan mawar ', '082238321142', 'SMP Muhammadiyah Aimas', 'Jln KH.ahmad dahlan', 2020, 1593837360, 1354836234, 47.5, '', 0),
('5ea64ecc83ef2', 2, 'smk1-XTKRO', 'MOHAMAD AJI PRAMADI', '0045117910', 'SORONG', '2004-02-20', 'Laki-laki', 'Islam', 'wni', '082339182461', 'JALAN KLAMONO km22/AIMAS,SORONG, PAPUA BARAT', 5, 'SUGENG.B', 'Petani', 'Komariah', 'Ibu rumah tangga', '082198223034', 'Jln kelamono km22', '', '', '', '', 'SMP N 3kab.sorong', 'Jln merpati', 2020, 1593820771, 1796584441, 47.5, '', 0),
('5ea64ed2c1b44', 2, 'smk1-XAKL1', 'Rifaldhi fajar permana', '0051497946', 'Sorong', '2005-01-05', 'Laki-laki', 'Islam', 'wni', '081344584409', 'Jalan nangka aimas unit 1 kelurahan malagusa/Aimas/kabupaten sorong/provinsi papua barat', 1, 'Hadi pramono', 'Swasta', 'Siti fatonah', 'Ibu rumah tangga', '082199912374', 'Jalan nangka unit 1 aimas kelurahan malagusa', '', '', '', '', 'Smp negeri 1 kabupaten sorong', 'Klamono km19', 2020, 1593991344, 1098514258, 50, '', 0),
('5ea64fb2a4405', 2, 'smk1-XTKJ1', 'Elang Ian Artha Andatto', '0050598008', 'Jayapura', '2005-01-16', 'Laki-laki', 'Islam', 'wni', '085244113380', 'Klalen 1 kel. Klabinain/Aiss/Sorong/Papua Barat', 4, 'Hasan La Nusu', 'ASDP', 'Mel Iin Indarwati', 'Swasta', '085244113380', 'Klalen 1 Kel. Klabinain distrik Aiss Kab. Sorong Papua Barat', '', '', '', '', 'SMP Muhammadiyah Al Amin Kota Sorong', 'Jl. Basuki Rahmat KM 10 Distrik Malaimsimsa Kota Sorong', 2020, 1593832278, 156271641, 80, '', 0),
('5ea64fb6a1246', 2, 'smk1-XAKL1', 'RIZKY OKTAVIA RIFA\'I', '0045998538', 'SORONG', '2004-10-05', 'Perempuan', 'Islam', 'wni', '085254286493', 'JL. NUSA INDAH RT 002 RW 003 KLARU/mariat/sorong/PAPUA BARAT ', 1, 'IMAM RIFA\'I', 'SWASTA', 'SRI JURIANTI', 'IBU RUMAH TANGGA', '085244106075', 'JL. NUSA INDAH RT 002 RW 003 KLARU', '', '', '', '', 'MADRASAH TSANAWIYAH NEGERI SORONG', 'JL. MENUR NO 2 KEL. MARIAI DISTRIK MARIAT', 2020, 1593991389, 459995658, 75, '', 0),
('5ea64fbb16199', 2, 'smk1-XAKL2', 'Fitriani kusnul khotimah', '0055262624', 'Sorong', '2005-11-09', 'Perempuan', 'Islam', 'wni', '082398927700', 'Jln. Intimpura RT09/02 Aimas mariat pantai/Kecamatan aimas kabupaten sorong provinsi papua barat', 1, 'Kasianto', 'Swasta', 'Katini', 'Swasta', '081344262950', 'Jln. Intimpura RT09/02 aimas mariat pantai', 'Kasianto', 'Swasta', 'Jln. Intimpura RT09/02 Aimas mariat pantai', '081344262950', 'Madrasah Tsanawiyah Negeri Sorong', 'Jln. Menur no.2 kel. Mariai distrik mariat', 2020, 1593992202, 909925844, 65, '', 0),
('5ea65096894df', 2, 'smk1-XTKRO', 'Muhammad Yahya Firman Syawal', '0047945321', 'Brebes', '2020-04-19', 'Laki-laki', 'Islam', 'wni', '082238205656', 'Jalan Terong/Aimas, Sorong, Papua Barat', 5, 'Somad', 'Pedagang', 'Saidah', 'Ibu Rumah Tangga', '085319175605', 'Jalan Terong', '', '', '', '', 'MTs. Al-Ma\'arif 1 Kabupaten Sorong', 'Jalan Wortel', 0000, 1593820820, 847706246, 82.5, '', 0),
('5ea650e74af05', 2, 'smk1-XAKL2', 'Kholifah', '0048875013', 'Sorong', '2020-12-08', 'Perempuan', 'Islam', 'wni', '082114148541', 'JLN.MELATI RT/RW 002/001 KEL.MAKLALUT DISTRIK MARIAT KAB.SORONG PROVINSI PAPUA BARAT/Distrik mariat/ kab. Sorong / papua barat', 1, 'Muhammad fais', 'Wiraswasta', 'Mustofiah', 'Ibu rumah tangga', '081248624972', 'Jalan melati RT/RW 002/001 Kel. Maklalut Distrik Mariat Kab. Sorong Provinsi Papua Barat', '', '', '', '', 'MADRASAH TSANAWIYAH NEGERI MARIAI', 'Jl. MENUR NO 2 KEL. MARIAI DISTRIK MARIAT', 2020, 1593992270, 2018003176, 45, '', 0),
('5ea651ed1b0ae', 2, 'smk1-XTKJ2', 'Dwi Putri Ayu Astuti', '0057132439', 'Sorong', '2005-09-26', 'Perempuan', 'Islam', 'wni', '', 'Jln wortel/Kabupaten sorong', 4, 'Karli', 'Petani', 'Boirah', 'Petani', '082399245533', 'Jalan wortel', '', '', '', '', 'Smp Muhammadiyah aimas kab sorong', 'Jln K.H.Ahmad dahlan', 2020, 1593833064, 1037227188, 65, '', 0),
('5ea651fb00ecf', 2, 'smk1-XTKJ1', 'Rio faldy', '0058632811', 'sorong ', '2005-05-12', 'Laki-laki', 'Protestan', 'wni', '085254044832', 'Jln.jambu/Kabupaten ', 4, 'Samiaji', 'PNS', 'Debora', 'IRT', '082395960331', 'jln.jambu', '', '', '', '', 'SMP N 1 KAB.SORONG', 'Jln.klamono', 2020, 1593832649, 779930908, 30, '', 0),
('5ea652b15b360', 2, 'smk1-XAKL2', 'BAGAS IVANDA', '0051946661', 'Jawa tengah,Jepara', '2004-11-11', 'Laki-laki', 'Budha', 'wni', '081344190200', 'jl perkutut/aimas,sorong,papua barat', 1, 'ALLEX RASMANTO', 'petani', 'WANITI', 'ibu rumah tangga', '081291417317', 'JL.perkutut', '', '', '', '', 'SMP NEGRI 1 KAB.Sorong', 'Jalan klamono km 19', 2020, 1593992097, 1599306646, 42.5, '', 0),
('5ea652fd4d39e', 2, 'smk1-XDPIB', 'Andi Putra Syamdani', '0057942571', 'Sorong', '2005-02-20', 'Laki-laki', 'Islam', 'wni', '081219464784', 'Jln. Durian/Malawili, Kabupaten Sorong, Papua Barat', 3, 'Wanikar Purbo Wantoro', 'Swasta', 'Anak Mujiati', 'Honorer', '082198336380', 'Jln. Durian', '', '', '', '', 'SMP MUHAMMADIYAH AIMAS', 'Jln.K. H. A. Dahlan No. 04', 2020, 1593827453, 1929122384, 52.5, '', 0),
('5ea65395164f4', 2, 'smk1-XOTKP1', 'Michella Fiona Latuhihin', '0051617411', 'Sorong', '2005-04-16', 'Perempuan', 'Protestan', 'wni', '085244648020', 'Jln.Intimpura km.18/Aimas,Kabupaten Sorong,Provinsi Papua Barat', 2, 'Thomas Latuhihin', 'Karyawan swasta', 'Widya Nento', 'Ibu. Rumah Tangga', '085254167859', 'Jln.Intimpura km.18', '', '', '', '', 'SMPN 1 Kab.Sorong', 'Jln.Klamono km.19', 2020, 1593836267, 1484253911, 77.5, '', 0),
('5ea653e7bcd46', 2, 'smk1-XOTKP1', 'FARAH INDIRA', '0062853494', 'SORONG', '2006-01-26', 'Perempuan', 'Islam', 'wni', '082199636383', 'JL.CEMPEDAK RT/009 RW/003 KELURAHAN MALAGUSA/AIMAS', 2, 'DWI RATMOKO', 'POLISI', 'ARIANTY', 'IBU RUMAH TANGGA', '082146977753', 'JL.CEMPEDAK RT/009 RW/003 KEL.MALAGUSA', '', '', '', '', 'SMPN 1 KAB.SORONG', 'JL.KLAMONO KM 19', 2020, 1593836002, 1956121844, 80, '', 0),
('5ea6586032810', 2, 'smk1-XTKJ2', 'Asyril Majid', '0050711654', 'Sorong,Papua Barat', '2005-09-13', 'Laki-laki', 'Islam', 'wni', '082232450592', 'Jln.Flamboyan SP2/Mariat/Sorong/Papua Barat ', 4, 'Carito ', 'Swasta', 'Muzaro\'ah', 'Ibu rumah tangga', '082232450592', 'Jln.Flamboyan SP2', 'Carito', 'Swata', 'Jln.Flamboyan SP2', '082232450592', 'Mtsn Sorong', 'Jln.Menur N2 Kel. Mariai Distrik Mariat', 2020, 1593833012, 63979974, 77.5, '', 0),
('5ea6589c9d457', 2, 'smk1-XAKL1', 'Nurul Fitriani', '3040391367', 'Sorong', '2004-11-11', 'Perempuan', 'Islam', 'wni', '082199604974', 'Unit 1 Jalan Minyak/Aimas Kabupaten Sorong, Papua Barat', 1, 'Ajidin', 'Pedagang', 'Eroh Siti Mariah', 'Ibu rumah tangga', '082238205699', 'Unit 1 Jalan Minyak', '', '', '', '', 'MTs. Al-Ma\'arif 1 Kabupaten Sorong', 'Unit 2 Jalan Wortel', 2020, 1593991330, 1240895985, 57.5, '', 0),
('5ea6597d7da89', 2, 'smk1-XTITL', 'Ahmad Aldrian Risky', '0042002658', 'Aimas', '2004-05-08', 'Laki-laki', 'Islam', 'wni', '082248117927', 'Jln timun/Malawele,sorong,papua barat', 6, 'Mohamad sofyan', 'Swasta', 'Stenly mokodongan', 'Ibu rumah tangga', '085254024716', 'Jln timun', '', '', '', '', 'SMP MUHAMMADYAH', 'Jln,K.H.A.Dahlan No.04', 2020, 1593826587, 1650929913, 47.5, '', 0),
('5ea65c344e1e9', 2, 'smk1-XOTKP2', 'MIKHA KRISTIN WIDIAN', '0053436945', 'SORONG', '2005-03-01', 'Perempuan', 'Protestan', 'wni', '082398947142', 'JLN NANGKA UNIT 1 AIMAS/AIMAS, SORONG, PAPUA BARAT', 2, 'WIDODO', 'KARYAWAN SWASTA', 'ANGRIANI', 'IBU RUMAH TANGGA', '085254528734', 'JLN NANGKA UNIT 1 AIMAS', '', '', '', '', 'SMP NEGERI 1 KABUPATEN SORONG', 'JLN KLAMONO KM 19', 2020, 1593837321, 1138953982, 47.5, '', 0),
('5ea65d5074ca8', 1, 'smk1-XTKJ1', 'Agna Selvira', '0059734857', 'Aimas', '2005-08-16', 'Perempuan', 'Islam', 'wni', '082239707704', 'Jalan Wortel/Aimas/Sorong/Papua Barat', 5, 'Jumanto', 'Petani', 'Mujilah', 'Petani', '085244485826', 'Jalan Wortel', '', '', '', '', 'SMP Muhammadiyah aimas Kab.Sorong', 'Jalan Wortel', 2020, 1593831917, 443948009, 60, '', 0),
('5ea65e7c24e7f', 1, 'smk1-XTKJ1', 'Barsalina waroy', '0054927920', 'Sorong', '2005-06-04', 'Perempuan', 'Protestan', 'wni', '085254354781', 'Jl.intimpura/Provinsi papua barat', 4, 'Ferry waroy', 'Swasta', 'Maria rumagesan', 'Ibu rumah tangga', '085254125314', 'Jl.intimpura', '', '', '', '', 'Smpn 1 kab.sorong', 'Jl.klamono', 2020, 1593832788, 1604754962, 55, '', 0),
('5ea65e86635de', 2, 'smk1-XOTKP2', 'PUTERI NABILLA PRAMESTY', '0053919382', 'Sorong', '2005-03-31', 'Perempuan', 'Islam', 'wni', '081248431756', 'JALAN TOMAT UNIT 2/KABUPATEN', 2, 'SUPARLAN', 'SWASTA', 'MARIANA', 'IBU RUMAH TANGGA', '082197980990', 'JALAN TOMAT UNIT 2', '', '', '', '', 'SMP NEGERI 1 KABUPATEN SORONG', 'JALAN KLAMONO KM 19', 2020, 1593837412, 2109324766, 65, '', 0),
('5ea66061ae253', 2, 'smk1-XTKRO', 'Muhammad Arif Hermawan', '0053761248', 'Sorong', '2020-06-05', 'Laki-laki', 'Islam', 'wni', '085254561772', 'Jln gambas/Aimas kabupaten Sorong', 5, 'Wagimin', 'Swasta', 'Asniri Hermawati', 'Ibu rumah tangga', '085294436785', 'Jln gambas', '', '', '', '', 'Mts Al Ma\'arif 1 aimas kabupaten Sorong', 'Jln wortel', 2020, 1593820789, 924307078, 50, '', 0),
('5ea66093060d8', 2, 'smk1-XOTKP1', 'RISKA RAMADANI WALI', '005173645', 'SORONG ', '2005-10-24', 'Perempuan', 'Islam', 'wni', '082238143142', 'JALAN TIMUN/AIMAS,KABUPATEN SORONG,PAPUA BARAT', 2, 'ATJI WALI', 'SWASTA', 'SALMA', 'IBU RUMAH TANGGA', '082397706108', 'JALAN TIMUN ', '', '', '', '', 'SMP NEGERI 1 KABUPATEN SORONG', 'JL.KLAMONO KM.19', 2020, 1593836528, 1410698940, 65, '', 0),
('5ea6617eafafd', 2, 'smk1-XTKJ2', 'IHWAN HAMID', '0056898344', 'Tial', '2005-05-04', 'Laki-laki', 'Islam', 'wni', '085244463684', 'JL.labu/AIMAS', 4, 'LA SAMSUDIN', 'KARYAWAN SUWASTA', 'ASKIN KAIMUDIN', 'Ibu rumah tangga', '081344513186', 'Jl.labu', '', '', '', '', 'MTS Muhammadiyah 2 kabupaten sorong', 'JL.K.H.Ahmad Dahlan', 2020, 1593833172, 2082120417, 45, '', 0),
('5ea661e0aa281', 2, 'smk1-XTBSM', 'Muhammad Ari Hermawan', '0052301908', 'Sorong ', '2005-06-05', 'Laki-laki', 'Islam', 'wni', '085294436785', 'Jln gambas/Aimas kabupaten Sorong', 7, 'Wagimin', 'Swasta', 'Asniri hermawati', 'Ibu rumah tangga', '085294436785', 'Jln gambas', '', '', '', '', 'Mts Al Ma\'arif 1 aimas kabupaten Sorong', 'Jln wortel', 2020, 1593819911, 262634744, 40, '', 0),
('5ea66307f0188', 2, 'smk1-XOTKP2', 'INDAH ANGGRAENI', '0052935437', 'sorong', '2005-07-27', 'Perempuan', 'Islam', 'wni', '081369806965', 'jl.gambas /kabupaten', 2, 'SURYADI', 'TUKANG BATU', 'ENDANG SRI UTAMI', 'IRT', '081344195452', 'kabupaten aimas', '', '', '', '', 'SMP NEGERI 1 Kab.sorong', 'Jl.Klamono km 19', 2020, 1593837108, 1383241758, 42.5, '', 0),
('5ea6641e4e611', 2, 'smk1-XTKRO', 'Bayu Prasetiawan', '0032013445', 'Sorong', '2003-04-12', 'Laki-laki', 'Islam', 'wni', '082199694083', 'Jalan tomat/Aimas, kabupaten sorong, Papua barat', 5, 'Edi Purwanto', 'Petani', 'Riyanti', 'Ibu rumah tangga', '+6282255993433', 'Jalan tomat', '', '', '', '', 'SMP Muhammadiyah kab.sorong', 'Jalan. Kh Ahmad Dahlan', 2020, 1593820589, 25478605, 70, '', 0),
('5ea6659e0d88b', 2, 'smk1-XOTKP2', 'SOFYAN NUR SHAFRY ANGGORO', '0054154743', 'Kabupaten sorong', '2005-08-30', 'Laki-laki', 'Islam', 'wni', '085254137674', 'Jln. Rambutan/Malagusa, aimas, kabupaten sorong', 2, 'Yanas samsudi ', 'Swasta ', 'Ani suswanti', 'Ibu rumah tangga', '081344973440', 'Aimas, jln. Rambutan', '', '', '', '', 'SMP NEGERI 1 KABUPATEN SORONG', 'Jln. Klamono ', 2020, 1593837568, 883015681, 45, '', 0),
('5ea666b5886a7', 2, 'smk1-XTBSM', 'Akbar arung samudra', '0046756672', 'Sorong', '2004-12-19', 'Laki-laki', 'Islam', 'wni', '081343322349', 'Jln durian jlr b/Malawili.kab sorong.papua barat', 7, 'Solehan efendi', 'Wiraswasta', 'Siti maryamah', 'Ibu rumah tangga', '081240553774', 'Jln durian jlr b', '', '', '', '', 'SMP NEGRI 1 KABUPATEN SORONG', 'Jln klamono km 19', 0000, 1593819458, 567648372, 42.5, '', 0),
('5ea668448c3c0', 2, 'smk1-XTBSM', 'MUHAMMAD NUR MU\'MIN', '0052610902', 'Sorong', '2005-04-02', 'Laki-laki', 'Islam', 'wni', '082198952519', 'Jln tomat malawele aimas/Aimas,sorong,papua barat', 7, 'Mistoyo', 'Buruh bangunan', 'Juminah', 'Ibu rumah tangga', '085243931571', 'Jln tomat malawele aimas', '', '', '', '', 'Smp negeri 1 kab.Sorong', 'Jl.Klamono km.19 malawili aimas', 2020, 1593819926, 230271582, 45, '', 0),
('5ea66851db3c1', 2, 'smk1-XTKJ2', 'Destiana', '0051337619', 'Sorong', '2005-12-28', 'Perempuan', 'Islam', 'wni', '081247420942', 'Jln cempedak aimas jalur d/Malawili', 4, 'Andi Darman', 'Swasta', 'Andi asyah', 'IRT', '082239689504', 'Jln cempedak aimas jalur d', '', '', '', '', 'SMP NEGERI 1KAB SORONG ', 'Jln klamono km 19', 2020, 1593833046, 204086101, 52.5, '', 0),
('5ea66ab324504', 2, 'smk1-XDPIB', 'GILBERT PARINDING', '0059327484', 'Sorong', '2005-01-31', 'Laki-laki', 'Protestan', 'wni', '082198139714', 'JL. Tutwuri/Malagusa/Aimas/Papua Barat', 3, 'Yusak Ta\'bi Remak', 'Swasta', 'Ludriani Sarung Allo', 'Ibu rumah tangga', '081344073380', 'JL. Tutwuri', '', '', '', '', 'SMP NEGERI 1 KABUPATEN SORONG', 'Jl. Klamono Km. 19 Aimas Kabupaten Sorong', 2020, 1593827677, 1349681777, 55, '', 0),
('5ea66abedb43e', 2, 'smk1-XTBSM', 'Asrofi Rafiq Nurlaili', '0052936091', 'Gunung kidul Yogyakarta', '2005-08-07', 'Laki-laki', 'Islam', 'wni', '081237889649', 'Jalan tomat/Malawe/Sorong/Papua', 7, 'Sudaryono', 'Wiraswasta', 'Srisiyamti', 'Ibu Rumahtangga (IRT)', '081248422286', 'Jalan tomat', '', '', '', '', 'SMP MUHAMMADIYAH AIMAS', 'Jln KH Ahmad Dahlan', 2020, 1593819522, 1385518190, 40, '', 0),
('5ea66af1d6a10', 2, 'smk1-XTBSM', 'Irsyad ', '0062472101', 'Sorong ', '2005-01-24', 'Laki-laki', 'Islam', 'wni', '081247537845 ', 'Jln. Makam/Malasom/sorong/papua barat', 7, 'Hamuri', 'Karayawan toko', 'Asna abdullah ', 'Ibu rumah tangga', '081234349011', 'Jln. Makam', '', '', '', '', 'Smp. Muhammadiyah. Aimas', 'Jln. K. H. ahmad dahlan', 2020, 1593819696, 977038277, 40, '', 0),
('5ea66b03e7776', 2, 'smk1-XTKJ2', 'ANDIKA FIRMANSYAH', '0056593021', 'Sorong', '2005-04-25', 'Laki-laki', 'Islam', 'wni', '082399196703', 'Jalan pepaya/Aimas/Sorong/Papua barat', 4, 'Soegijo', 'Swasta', 'Siti Munawaroh', 'Ibu rumah tangga', '082399196703', 'Jalan pepaya ', '', '', '', '', 'SMPN 1 Kab.Sorong', 'Jl.klamono km.19 malawili Aimas-Papua barat', 2020, 1593832984, 655153092, 47.5, '', 0),
('5ea66c005cef3', 2, 'smk1-XTKRO', 'AZIZ ARDIAWAN', '0059573704', 'SORONG', '2005-05-04', 'Laki-laki', 'Islam', 'wni', '081343100503', 'JALUR D JALAN CEMPEDAK/MALAGUSA/SORONG/PAPUA BARAT', 5, 'SARIJAN', 'SWASTA', 'MISNEM', 'IBU RUMAH TANGGA', '0812 4846 6116', 'JALUR D JALAN CEMPEDAK', '', '', '', '', 'SMP NEGERI 1 KABUPATEN SORONG', 'JL KLAMONO KM. 19 MALAWILI AIMAS-PAPUA BARAT', 2020, 1593820562, 1388369670, 55, '', 0),
('5ea66c7d6f9d7', 2, 'smk1-XTKJ2', 'Samsiah', '0058207875', 'Sorong', '2005-04-29', 'Perempuan', 'Islam', 'wni', '085244393401', 'Jl.mangga/Aimas, sorong, papua barat', 4, 'Suidi', 'Petani', 'Nurlela', 'Ibu rmh tngga', '085244393401', 'Jl.mangga', '', '', '', '', 'SMPN 1 Kabupaten sorong', 'Jl.klmono smpn 1 kb sorong', 2020, 1593835490, 1257104025, 47.5, '', 0),
('5ea66f4fa4d98', 2, 'smk1-XTKJ1', 'Dimas adrianto', '0056938851', 'Sorong papua barat', '2005-12-12', 'Laki-laki', 'Islam', 'wni', '081248436551', 'Jln.tuturuga Tugu Merah/Klamesen/kabupaten sorong/papua barat', 4, 'Syamsudin', 'Swasta', 'Suryani', 'Ibu rumah tangga', '082398644426', 'Jln.tuturuga tugumerah', '', '', '', '', 'SMP NEGERI 3 KABUPATEN SORONG', 'jln.merpati sp1', 2020, 1593832255, 1653608222, 52.5, '', 0),
('5ea6710dd12c7', 2, 'smk1-XAKL2', 'Mei nur khasanah', '0045979637', 'Gunungkidul', '2004-05-17', 'Perempuan', 'Islam', 'wni', '082248131650', 'Jalan mambruk unit 2/Kabupaten sorong', 1, 'Wastiyo', 'Petani', 'Ngatijah', 'Petani', '085346901643', 'Jalan mambruk', '', '', '', '', 'Smp muhammadiyah aimas', 'Jln kh.ahmad dahlan', 2020, 1593992386, 2059983020, 70, '', 0),
('5ea6721fc472f', 2, 'smk1-XAKL2', 'Dewi komalasari', '0047539308', 'Sorong,malawili', '2004-10-18', 'Perempuan', 'Islam', 'wni', '085373889304', 'Aimas unit 1 jln pepaya/Aimas/Sorong/Papua Barat', 1, 'Kasiman', 'Swasta', 'Turiyem', 'Ibu rumah tangga', '085373889304', 'Aimas unit 1 Jln pepaya', '', '', '', '', 'SMPN 1 kabsorong', 'Jl. klamono Malawili Aimas Sorong', 2020, 1593992114, 774833391, 70, '', 0),
('5ea672c3e5700', 2, 'smk1-XDPIB', 'INDAH SARTIKA', '0052740595', 'Sorong', '2005-01-15', 'Perempuan', 'Islam', 'wni', '082239701297', 'Jalan Timun unit 2/Kabupaten', 3, 'SUKADI', 'Swasta', 'Supriyanti', 'Ibu rumah tangga', '081344603260', 'Jalan timun unit 2', '', '', '', '', 'SMPN 1 KABUPATEN SORONG', 'Jl. Klamono Malawili Aimas Sorong', 2020, 1593827742, 1332161343, 47.5, '', 0),
('5ea676cc744d0', 2, 'smk1-XTKJ2', 'Alfrein Christiano Siranga', '0051115799', 'Sorong', '2005-10-08', 'Laki-laki', 'Protestan', 'wni', '085244417074', 'Jalan Tut Wuri/Aimas, Kabupaten Sorong, Papua Barat', 4, 'Aries Meme Siranga', 'Wiraswasta', 'Erni Mahebung', 'Ibu Rumah Tangga', '081344534013', 'Jalan Tut Wuri, Aimas, Kabupaten Sorong', '', '', '', '', 'SMP N 1 Kabupaten Sorong', 'Jl. Klamono Km. 19 Aimas, Kabupaten Sorong', 2020, 1593832967, 1801745831, 70, '', 0),
('5ea676f9d0a7e', 2, 'smk1-XTITL', 'Hendi hermawan', '0048599405', 'Gerobogan', '2004-08-07', 'Laki-laki', 'Islam', 'wni', '082248762717', 'Jl.pepaya/Aimas/sorong/papua barat', 6, 'Edi siswanto', 'Petani', 'Siti rahayu', 'Ibu rumah tangga', '085244246665', 'Jl.pepaya', '', '', '', '', 'SMPN 1 kab.sorong', 'Jl klamono km. 19 malawili Aimas-papua barat', 2020, 1593826725, 430222516, 62.5, '', 0),
('5ea676fce2f26', 2, 'smk1-XTBSM', 'Akmal zakli', '0068858792', 'Walambeno wite', '2006-05-09', 'Laki-laki', 'Islam', 'wni', '082199764203', 'Jl. Klamono km 21/Aimas/Sorong/Papua Barat', 7, 'La kara', 'Petani ', 'Wa ani', 'Ibu rumah tangga', '082199559064', 'Jl. Klamono km 21', '', '', '', '', 'SMPN 1 Kab Sorong', 'Jl. Klamono km. 19 Malawili Aimas-Papua Barat ', 2020, 1593819475, 1574320652, 45, '', 0),
('5ea677801b94c', 2, 'smk1-XTKJ1', 'FRANSISCO D. OSLEKY', '0056319439', 'SORONG', '2005-12-12', 'Laki-laki', 'Protestan', 'wni', '082248620632', 'AIMAS UNIT 1/Aimas/ Sorong/Papua Barat', 4, 'BRAMPIS OSLEKY', 'SWASTA', 'BERGITA BURUNG', 'Ibu rumah tangga', '081344260001', 'AIMAS UNIT 1', '', '', '', '', 'SMP NEGERI 1 KABUPATEN SORONG', 'Jalan Klamono Km 19', 2020, 1593832361, 1661918810, 45, '', 0),
('5ea6799cac644', 2, 'smk1-XTKRO', 'Pradana Puji Adrian', '0044532803', 'Sorong', '2005-04-13', 'Laki-laki', 'Islam', 'wni', '082239408709', 'Jl.gambas aimas unit 2/Aimas,Sorong,Papua barat', 5, 'Slamet sentono', 'Swasta', 'Priatinningsih', 'Ibu rumah tangga', '085244830792', 'Jl.gambas aimas unit 2', '', '', '', '', 'Mts. Muhammadiyah 2 aimas', 'Jl. KH. Ahmad Dahlan no.4, malasom kec.aimas, kab.sorong', 2020, 1593820897, 250156138, 50, '', 0),
('5ea67b813e20b', 2, 'smk1-XDPIB', 'Tegar Nur Aji Marsigit', '0044302257', 'Gunungkidul', '2004-12-21', 'Laki-laki', 'Islam', 'wni', '081272741740', 'Jln Wortel/Aimas/Kab Sorong/Papua Barat', 3, 'Wasgito', 'petani', 'Wigati', 'ibu rumah tangga', '085243947210', 'Jln wortel/kel malasom/Aimas/kab sorong/papua barat', '', '', '', '', 'SMP NEGERI 1 KAB SORONG', 'Jln klamono', 2020, 1593828098, 969080087, 77.5, '', 0),
('5ea67c4979a1e', 1, 'smk1-XDPIB', 'Akwila Sarik Malayewen Su', '0043320647', 'Sorong ', '2002-01-03', 'Laki-laki', 'Protestan', 'wni', '081248250939', 'Jl ketiwilas RT/RW 03/07 /Klaurung /Kota Sorong/Papua Barat', 3, 'Melkianus Su', 'Pegawai Negeri Sipil', 'Lea Hana Samolo', 'Ibu Rumah Tangga', '085354221666', 'Jl Ketiwilas RT/RW 03/07 Klasaman', '', '', '', '', 'SMP Negeri 10 Kota Sorong', 'Jl Basuki Rahmat Klasaman Kota Sorong', 2020, 1593827420, 1105334442, 30, '', 0),
('5ea67f01e0d4a', 1, 'smk1-XAKL2', 'rara armadani rumainum', '0059654998', 'Dabo singkep', '2005-12-05', 'Perempuan', 'Islam', 'wni', '081247330681', 'Jalan melati, perum pelita, rt-rw.006-001, kelurahan klamasen/Kecamatan maria, kabupaten sorong, provinsi papua barat ', 1, 'Asser rumainum ', 'purnawirawan ', 'siti nur ainun ', 'ibu rumah tangga', '085244697779', 'Jalan melati, perum pelita, rt-rw.006-001, kelurahan klamasen', '', '', '', '', 'Smp negri  1 kabupaten sorong ', 'Jln.klamono km.19 malawili Aimas-papua barat', 2020, 1593992641, 1489203398, 72.5, '', 0),
('5ea6864bc1301', 2, 'smk1-XTKJ2', 'FISYEN AGNES TAHAPARY', '0214748364', 'Ambon', '2004-09-03', 'Perempuan', 'Protestan', 'wni', '081342310058', 'JL SELEDRI/AIMAS/KABUPATEN /PAPUA BARAT', 4, 'REMSI TAHAPARY', 'SWASTA', 'HENDRA LITILOLY', 'MENGURUS RUMAH TANGGA', '081354197733', 'JLN SELEDRI', '', '', '', '', 'SMP N 11 AIMAS KAB SORONG', 'JL SAGU MARIAT PANTAI', 2020, 1593835632, 713014664, 42.5, '', 0),
('5ea68b305b397', 2, 'smk1-XDPIB', 'Sahrul supriyanto', '0052337547', 'Purworejo', '2005-06-07', 'Laki-laki', 'Islam', 'wni', '085244798082', 'Jl.nagka, malawili, aimas, KAB.SORONG, Papua barat/MALAWILI KAB.SORONG ,PAPUA BARAT', 3, 'Suwito', 'Swasta', 'Remu', 'Swasta', '+6285243257424', 'Jl.nangka aimas malawili kab.sorong Papua barat', '', '', '', '', 'SMPN 1 KAB. SORONG', 'jl.klamono km.19 malawili Aimas Papua barat', 2020, 1593828030, 599941708, 42.5, '', 0),
('5ea68d96ab9ee', 2, 'smk1-XDPIB', 'Bishma Danu Kautsar', '0057674332', 'Majaran', '2005-04-01', 'Laki-laki', 'Islam', 'wni', '082399075213', 'Jalan Nangka RT 01 RW 01 Kel.Malagusa/Aimas/Sorong/Papua barat', 3, 'Aan paryadi', 'Swasta', 'Siti kotimah', 'Ibu rumah tangga', '081248203040', 'Jalan Nangka RT 01 RW 01 Kel.Malagusa', '', '', '', '', 'SMPN 1', 'Jalan Klamono Kel.Malagusa ', 2020, 1593827559, 1399075178, 75, '', 0),
('5ea6923f093cb', 2, 'smk1-XDPIB', 'Bagas Yuda Ardika ', '0054977122', 'Sorong, Papua Barat', '2005-09-14', 'Laki-laki', 'Islam', 'wni', '+6282399683876', 'Jl. Seledri/Aimas, Sorong, Papua Barat', 3, 'Ma\'ruf', 'Tukang Kayu', 'Miftakhul Jannah', 'IRT', '+6282199194315', 'Jl. Seledri', '', '', '', '', 'SMPN 1 KABUPATEN SORONG', 'Jl. Klamono km 19 Malawili Aimas Sorong', 2020, 1593827493, 512075245, 72.5, '', 0),
('5ea6a600ef361', 2, 'smk1-XOTKP2', 'FITRI YUNI', '0057107651', 'ABEPURA', '2005-04-18', 'Perempuan', 'Islam', 'wni', '081344608272', 'Jln lobak/Aimas, Sorong,Papua Barat', 2, 'CHARLES', 'Swasta', 'Nurmia', 'Ibu rumah tangga', '085256870308', 'Jln lobak', '', '', '', '', 'SMP MUHAMMADIYAH AIMAS', 'Jl. KH. Ahmad Dahlan No. 04 Kel. Malawele Distrik Aimas Kabupaten Sorong 98418', 2020, 1593837068, 2098189551, 27.5, '', 0),
('5ea6a8061e1d3', 2, 'smk1-XAKL1', 'Marwa', '0057378123', 'Salulaiya', '2005-04-05', 'Perempuan', 'Islam', 'wni', '081344486823', 'Jln.poros pengalegan klalin 1/Aimas /Sorong/Papua barat ', 1, 'Jamaluddin', 'Petani', 'Hj.Dewi', 'Ibu rumah tangga', '081354103048', 'Jalan.poros pengalegan klalin 1', '', '', '', '', 'SMPN26 kab.sorong', 'Jln Rambutan klalin 1', 2020, 1593991166, 2067970663, 37.5, '', 0),
('5ea6a8f42029d', 2, 'smk1-XTKJ2', 'Juliana Pojoh ', '0053531710', 'Sorong', '2005-06-19', 'Perempuan', 'Protestan', 'wni', '081389585941', 'Jalan trikora (transat) /Distrik Aimas/Kabupaten Sorong /Papua Barat ', 4, 'Samuel Ibrahim Pojoh ', 'Swasta', 'Stefi Lantemona ', 'Ibu Rumah Tangga (IRT) ', '085254511196 ', 'Jalan trikora (transat) ', '', '', '', '', 'SMP Negeri 1 Kabupaten Sorong ', 'Jalan klamono (kilo 19)', 2020, 1593833207, 640885051, 55, '', 0),
('5ea6c7004b232', 2, 'smk1-XAKL1', 'Veby Ayu Angrahini ', '0053973948', 'Sorong, Papua Barat', '2005-02-28', 'Perempuan', 'Islam', 'wni', '081344608769', 'Aimas Jl. Cempedak Jalur D/Aimas,Sorong,Papua barat', 1, 'Tri Prasetyo', 'Polri', 'Sri jatmiyati', 'Wirausaha', '082238317168', 'Jl. Cempedak Jlr D', '', '', '', '', 'SMP NEGERI 1 KABUPATEN SORONG', 'Jl Klamono km 19', 2020, 1593991795, 1682228639, 62.5, '', 0),
('5ea6c966346bc', 2, 'smk1-XTITL', 'M. Ivecof Tahisa', '0039668658', 'Sorong', '2003-06-04', 'Laki-laki', 'Islam', 'wni', '082199454455', 'Sp3 Jl. Kawasan Industri/Kabupaten sorong ', 6, 'Fahdin Tahisa', 'Nelayan', 'Fitriyani Miraji', 'Ibu rumah tangga ', '082199454455', 'Sp3 Jl. Kawasan Industri', '', '', '', '', 'SMP N 2 KABUPATEN.SORONG', '', 2020, 1593826834, 465543936, 42.5, '', 0),
('5ea6d322e8033', 2, 'smk1-XOTKP2', 'Firsty Thenu', '0048752336', 'Sorong', '2004-08-04', 'Perempuan', 'Protestan', 'wni', '081344584932', 'Jln.klalim/Aimas,Sorong,Papua barat', 2, 'Thomas Thenu', 'Swasta', 'Dina Banne Tasik', 'Ibu rumah tangga', '085244255230', 'Jln.klalin', '', '', '', '', 'SMP Negeri 1 Kabupaten Sorong', 'Jln. klamono KM.19', 2020, 1593837051, 189646863, 62.5, '', 0),
('5ea6d7ad8f2b5', 2, 'smk1-XTKRO', 'Fathoni Tirta Rhafi', '0049578330', 'Sorong papua barat', '2005-02-23', 'Laki-laki', 'Islam', 'wni', '085243863761', 'Jl.tuturuga  klamalu/kecamatan mariat/kabupaten sorong/provinsi papua barat', 5, 'Joko Sutriyono', 'Tani', 'Umi Kalsum', 'Ibu rumah tangga', '085244177673', 'Jl.tuturuga. klamalu', '', '', '', '', 'SMP MUHAMMADIYAH 02 MARIYAI', 'JL. K.H. AHMAD DAHLAN NO.1 KELURAHAN MARIYAIDISTRIK MARIAT KABUPATEN SORONG', 2020, 1593820622, 1501736962, 65, '', 0),
('5ea6e8cb1f613', 2, 'smk1-XTITL', 'WAHYU TRI NUR ICHSAN ', '0052277533', 'SORONG ', '2005-02-12', 'Laki-laki', 'Islam', 'wni', '082259861683 ', 'Jl. Gambas  RT. 02/RK.03/Aimas Kabupaten sorong Papua Barat ', 6, 'DIMYATI', 'PETANI', 'KHOTIDJAH', 'Ibu rumah tangga ', '081344612500', 'Jl. Gambas RT. 02/RK.03', '', '', '', '', 'SMP. N. 1 KAB. SORONG ', 'Jl. Klamono KM. 19 aimas Kabupaten sorong ', 2020, 1593827101, 1244333046, 70, '', 0),
('5ea73f1ee4089', 2, 'smk1-XAKL1', 'Siti fitrianingrum ', '0045998526', 'Sorong ', '2005-06-08', 'Perempuan', 'Islam', 'wni', '085254562151', 'Jln wortel unit 2/Aimas,sorong,papua barat ', 1, 'Supardi ', 'petani ', 'irianti ningsih ', 'ibu rumah tangga ', '082248521499', 'Jln wortel unit 2', '', '', '', '', 'Mts muhammadiyah 02 aimas ', 'jln wortel unit 2,mts muhammadiyah 02 aimas ', 2020, 1593991535, 1333376581, 52.5, '', 0),
('5ea744156b23b', 2, 'smk1-XAKL2', 'Amelya Layli Fitriyani', '0039284912', 'SEMARANG', '2003-10-23', 'Perempuan', 'Islam', 'wni', '081248428646', 'JALAN MAKAM/Kabupaten sorong', 1, 'ALM.ROSIDI', 'SWASTA', 'SITI KAROMAH', 'IBU RUMAH TANGGA', '081247374571', 'JALAN MAKAM', '', '', '', '', 'MTS.Muhmmadiyah 2', 'JALAN WORTEL', 2020, 1593992060, 1198387424, 25, '', 0),
('5ea75e111d763', 2, 'smk1-XAKL2', 'Resty Prasetya Kurniawati', '1520', 'Sleman', '0000-00-00', 'Perempuan', 'Islam', 'wni', '081243303377', 'Desa makotimsyah /Kecamatan mayamuk kabupaten Sorong', 1, 'Kabul Suratman', 'Petani', 'Sujarwanti', 'Petani', '082248178269', 'Sisipan makotimsyah', '', '', '', '', 'SMP PGRI Salawati', 'Katapop 2', 2020, 1593992677, 1597504702, 52.5, '', 0),
('5ea76ae17f91b', 2, 'smk1-XTKRO', 'Chalvin. B. Sugiyat', '0065258981', 'Sorong', '2006-02-02', 'Laki-laki', 'Protestan', 'wni', '082248398849', 'Jalan Gambas/Aimas/Sorong/Papua Barat', 5, 'Christian Sugiyat', 'Swasta', 'Sendy Novita Mussa', 'Ibu Rumah Tangga', '085244235026', 'Jalan Gambas', '-', '-', '-', '-', 'SMP NEGERI 11 KABUPATEN SORONG', 'Jalan Sagu, Mariat Pantai', 2020, 1593820605, 13183333, 60, '', 0),
('5ea7719c4bb86', 2, 'smk1-XTBSM', 'tri pujianto', '0056147416', 'sorong 2005', '2005-06-28', 'Laki-laki', 'Islam', 'wni', '', 'jln nangka/aimas sorong papua barat', 7, 'sunariyadi', 'tidak ada', 'tukiyem maryati', 'tidak ada', '081344326396', 'jln nangka ', 'sunariyadi', 'tidak ada', 'jln nangka', '081344326396', 'mts al ma\'arif', 'jln wortel', 2020, 1593820151, 425943843, 27.5, '', 0),
('5ea772d6a30c1', 1, 'smk1-XOTKP2', 'Intang Woloble', '0058768357', 'Sorong', '2005-05-17', 'Perempuan', 'Protestan', 'wni', '082199576086', 'Jln. Duku Kelurahan Malagusa/Aimas/Sorong/Papua Barat', 2, 'Marthen Woloble', 'PNS', 'Dorlintje', 'PNS', '082399481220', 'Jln.Duku Keluarahan Malagusa', '', '', '', '', 'SMP N1 Kab. Sorong', 'Jln. Klamono Km. 19', 2020, 1593837184, 1023064942, 40, '', 0),
('5ea7753f551b6', 2, 'smk1-XTITL', 'Raldo.lawalata', '0047813098', 'Paperu', '2004-09-05', 'Laki-laki', 'Protestan', 'wni', '082197968173', 'Jln.Mangga malawili/Aimas.kabupaten sorong.papua barat', 6, 'Piter lawalata', 'Petani', 'Yudik manuputi', 'Ibu rumah tangga', '085254470378', 'Jln.mangga.malawili aimas', '', '', '', '', 'Smp n 1 kab.sorong', 'Jln.klamono km 19', 2020, 1593826951, 408971601, 45, '', 0),
('5ea77b1618ccb', 2, 'smk1-XOTKP1', 'Indah dwi lestari gunawan ', '0036605817', 'banyuwangi ', '2003-06-17', 'Perempuan', 'Islam', 'wni', '082199156307', 'km12 msuk jln suteja /klaurung/sorong kota/papua barat', 2, 'Gunawan ', 'wiraswasta ', 'sri hartatik ', 'ibu rumah tangga ', '082199156307', 'km12jln suteja ', 'Gunawan ', 'wiraswasta', 'km12msuk jln suteja ', '082199156307', 'Mts az zikra ', 'km12 msuk jln madukoro ', 2020, 1593836083, 1785578777, 37.5, '', 0),
('5ea77b403bdd6', 2, 'smk1-XOTKP2', 'Tirania puspita cantik', '0052095548', 'Kediri, jawa timur', '2004-07-07', 'Perempuan', 'Islam', 'wni', '081248174599', 'Km.12 masuk jln.teminabuan sadewa 8 perum jmp 1 lorong 2 no.29/Klaurung/sorong kota/ papua barat', 2, 'Dharmendra', 'Wiraswasta', 'Diah citra wulandari', 'ibu rumah tangga', '081248174599', 'km.12 masuk jln.teminabuan sadewa 8 perum. Jmp lorong 2 no.29', 'Dharmendra', 'wiraswasta ', 'km.12 masuk jln.teminabuan sadewa 8 perum. Jmp lorong 2 no.29', '081248174599', 'MTs az-zikra', 'km.12 masuk jln.madukoro', 2020, 1593837719, 642900682, 60, '', 0),
('5ea77c156f5a9', 2, 'smk1-XTKRO', 'Andika triangga', '0038955601', 'Sorong', '2003-12-23', 'Laki-laki', 'Islam', 'wni', '082399299152', 'Jln labu /Aimas kabupaten sorong papua barat', 5, 'Sunarto', 'Swasta', 'Suwarni', 'Ibu rumah tangga', '082238118794', 'Jln labu malawele aimas', '', '', '', '', 'Mts muhammadiyah02', 'Mts muhammadiyah aimas', 0000, 1593820420, 919739252, 17.5, '', 0),
('5ea77e97322ee', 2, 'smk1-XTKRO', 'Charis try yulianto', '0061613331', 'Sorong', '2005-07-20', 'Laki-laki', 'Islam', 'wni', '082399182234', 'Jl. Rosa indah SP1/Kab. Sorong', 5, 'Nur ahmad', 'Swasta', 'Hadminah', 'Ibu rumah tangga', '081245208598', 'Jl.rosa indah SP1', 'Putri arum dwi astuti', 'Ibu rumah tangga', 'Sp2', '082399182234', 'SMP negeri 3 kab. Sorong', 'Jl. Merpati SP1', 2020, 1593821412, 140298440, 62.5, '', 0),
('5ea782441c1fe', 2, 'smk1-XAKL1', 'LARAS LESTARI', '0059129661', 'PEKALONGAN', '2004-10-21', 'Perempuan', 'Islam', 'wni', '08114854531', 'PERUMAHAN CENDRAWASI GREEN PARK BLOK L NO. 13 MALAWILI/KEC. AIMAS KABUPATEN SORONG', 1, 'SAIFUL ANWAR', 'PEGARWAI NEGERI SIPIL', 'NANI INAWATI', 'IRT', '08114854531', 'PERUMAHAN CENDRAWASIH GREEN PARK BLOK L NO. 13 MALAWILI ', '', '', '', '', 'SMP MUHAMMADIYAH I AIMAS', 'JL. WORTEI UNIT II MALAWELE AIMAS KABUPATEN SORONG', 2020, 1593991096, 7635495, 72.5, '', 0),
('5ea78987688ff', 2, 'smk1-XDPIB', 'Riska Nurvia Ayu Rahmadhania', '0053974174', 'Sorong', '2005-10-28', 'Perempuan', 'Islam', 'wni', '082248764019', 'Jln wortel aimas unit 2/Aimas/sorong/papua barat', 3, 'Heru susanto', 'Swasta', 'Surati', 'Ibu rumah tangga', '085244595202', 'Jln wortel aimas unit 2', '', '', '', '', 'Mts al maarif 01 kab.sorong', 'Jln wortel', 2020, 1593827994, 1010106607, 77.5, '', 0),
('5ea789ce175f9', 2, 'smk1-XDPIB', 'SENDHI RAHMANDHA SETIYAWAN', '0047084905', 'Sorong', '2004-02-08', 'Laki-laki', 'Islam', 'wni', '081247411092', 'Jl.gambas RT 0.2/RK 0.3/Aimas/sorong/papua barat', 3, 'Ribut krstyawan', 'Swasta', 'Priyati', 'Ibu rumah tangga', '081247441092', 'Jln gambas Rt 0.2/rw 0.3', '', '', '', '', 'Roudlotul khuffadz', 'Jln wortel lorong kakak tua', 2020, 1593828082, 1618836581, 65, '', 0),
('5ea78a79a9b49', 2, 'smk1-XTKRO', 'SAHRUL EFENDI', '0057671019', 'SORONG', '2005-05-30', 'Laki-laki', 'Islam', 'wni', '081247330506', 'Jln jambu /Aimas/Sorong/Papua barat', 5, 'Arfa Purwanto', 'WiraSwasta', 'Legini', 'Ibu rumah tangga', '081248646544', 'Jln jambu ', '', '', '', '', 'SMP N1 kab Sorong', 'Jln klamono km 19', 2020, 1593820942, 1275431424, 57.5, '', 0),
('5ea78cf05a232', 2, 'smk1-XTKJ1', 'Muhamad irfandi khoirudin', '0058223483', 'Kabupaten sorong', '2005-04-16', 'Laki-laki', 'Islam', 'wni', '082239705417', 'Jln.nusa indah/Kabupaten sorong', 4, 'Imam khoirudin', 'Petani', 'Wanurija', 'Rumah tangga', '+6281247893138', 'Jln.nusa indah', '', '', '', '', 'SMP IT NURUL YAQIN', 'Jln.nusa indah', 2020, 1593832509, 2108163473, 75, '', 0),
('5ea78fa7b335e', 2, 'smk1-XAKL1', 'Fatmawati ', '0052277555', 'Sorong', '2005-07-09', 'Perempuan', 'Islam', 'wni', '085244485410', 'Jln, bolhok klalin 1/Klabinain, sorong, papua barat', 1, 'Bona', 'Tani', 'Rina marina', 'Ibu rumah tangga ', '082399433169', 'Jln bolhok Klalin 1', '', '', '', '', 'Smp 26 kabupaten sorong', 'Jln, bolhok klalin 1', 2020, 1593990966, 950249477, 42.5, '', 0),
('5ea7918433160', 2, 'smk1-XOTKP2', 'Indriani Dian Pratiwi', '0054075360', 'Sorong', '2020-06-01', 'Perempuan', 'Islam', 'wni', '082239448856', 'Jl. Sedap Malam Rt 04 Rw 02/Mayamuk/kabupaten Sorong/papua barat', 2, 'Slamet Santoso ', 'Petani', 'Sunarti', 'Petani', '082399076569', 'Jl. Sedap Malam Rt 04 Rw 02', '', '', '', '', 'SMP PGRI Salawati', 'Jl. Nusantara Salawati', 2020, 1593837124, 1565512849, 52.5, '', 0),
('5ea797506e57f', 2, 'smk1-XOTKP1', 'FUTI KHATURRAHMAH', '0052472100', 'CILACAP', '2005-03-09', 'Perempuan', 'Islam', 'wni', '082197932378', 'Jln.menur sp2 /Distrik Mariat/kabupaten sorong/Papua Barat', 2, 'Sutiman', 'Swasta', 'Lasinah', 'Ibu rumah tangga', '081248815752', 'Jln.menur sp2', 'Sutiman', 'Swasta', 'Jln.menur sp2', '081248815752', 'Mts.N.sorong', 'Jln.menur NO 2 kel.Mariai Distrik Mariat', 2020, 1593836037, 1315844837, 55, '', 0),
('5ea79751ca86b', 2, 'smk1-XOTKP1', 'NUR MAULIDANI', '0050718147', 'SORONG', '2005-05-02', 'Perempuan', 'Islam', 'wni', '082248349972', 'Jln.Teratai/Distrik Mariat/Kabupaten Sorong/Papua Barat', 2, 'Slamet Rohidi', 'Swasta', 'Komsiatun', 'Ibu Rumah Tangga', '081344891009', 'Jln.Teratai', 'Slamet Rohidi', 'Swasta', 'Jln.Teratai', '081344891009', 'Mts.N.Sorong', 'Jln.Menur NO 2 Kel. Mariai Distrik Mariat', 2020, 1593836425, 884816297, 55, '', 0),
('5ea79755cd785', 2, 'smk1-XOTKP2', 'HANIFAH FAUZIAH', '0058192292', 'SORONG', '2005-01-01', 'Perempuan', 'Islam', 'wni', '081343488618', 'Jln.Teratai /Distrik Mariat/Kabupaten Sorong/Papua Barat', 2, 'Rakam', 'Swasta', 'Marsini', 'Ibu Rumah Tangga', '081343488618', 'Jln.Teratai', 'Rakam', 'Swasta', 'Jln.Teratai', '081343488616', 'Mts.N.Sorong', 'Jln.Menur No 2 Kel.Mariai Distrik Mariat', 2020, 1593837088, 15177511, 57.5, '', 0),
('5ea7a4f4a03e2', 2, 'smk1-XTBSM', 'Umar said', '0054039319', 'Sorong', '2004-06-16', 'Laki-laki', 'Islam', 'wni', '081247248389', 'Jln nabire kelalin 2 /Disterik/mariat/kabupaten sorong', 7, 'Misno', 'Wirasuasta', 'Rodiah', 'Ibu rumah tangga', '081247248389', 'Jln nabire', 'Misno', 'Wirasuasta', 'Jln nabire', '081247248389', 'MTS N sorong', 'Jln menur sp 2', 2020, 1593820167, 1299276764, 32.5, '', 0),
('5ea7aa0ddd614', 2, 'smk1-XDPIB', 'GUNAWAN', '0051628313', 'Aimas', '2005-04-04', 'Laki-laki', 'Islam', 'wni', '', 'Malawili, Jln. Nangka/Aimas, Sorong, Papua Barat', 3, 'DUHA', 'Buruh Bangunan', 'SITI', 'Ibu Rumah Tangga', '081343419306', 'Jln. Nangka', '', '', '', '', 'SMPN 1 Kabupaten Sorong', 'Jl. Klamono Malawili Aimas Sorong', 2020, 1593827696, 1034028860, 60, '', 0),
('5ea7ac6342f6e', 2, 'smk1-XAKL1', 'TITA ANDINI', '0043489100', 'Sorong', '2004-07-21', 'Perempuan', 'Islam', 'wni', '081341947637', 'Jln. Sagu aimas /Kabupaten sorong', 1, 'Mahmud', 'Karyawan swasta', 'Hasnah', 'Ibu rumah tangga', '081344181840', 'Jln. Sagu aimas ', '', '', '', '', 'SMP Muhammadiyah aimas ', 'Jln.K.H.A.Dahlan No.4', 2020, 1593991697, 1526388117, 52.5, '', 0),
('5ea7ad07a515a', 2, 'smk1-XOTKP2', 'STIVANI THERESIA TANGKULUNG', '0019456154', 'SORONG', '2005-05-12', 'Perempuan', 'Protestan', 'wni', '082248942927', 'JL. KLAMONO KM 17,5/KLAURUNG,PAPUA BARAT', 2, 'BRANDO TANGKULUNG', 'WIRASWASTA', 'KATRIN BAWANG', 'IBU RUMAH TANGGA', '082248734334', 'JL. KLAMONO KM 17,5', '', '', '', '', 'SMP NEGERI 1 KABUPATEN SORONG', 'JL. KLAMONO KM 19', 2020, 1593837587, 857500528, 45, '', 0),
('5ea7b96717846', 2, 'smk1-XTKJ1', 'Amanda Cindy Nuraini ', '0051232640', 'Sorong ', '2005-03-05', 'Perempuan', 'Islam', 'wni', '081344596912', 'Aimas Jl.Cempedak /Malagusa Sorong Papua Barat ', 4, 'Rumani', 'Karyawan swasta ', 'Tuti Sriyanti ', 'Ibu rumah tangga ', '085244561758', 'Aimas', '', '', '', '', 'SMP Negeri 1 kan. Sorong ', 'Jl. Klamono km. 19 Malawili Aimas-Papau Barat ', 2020, 1593832173, 1310452784, 67.5, '', 0),
('5ea7bcd46c8a1', 2, 'smk1-XAKL2', 'Kurnia cahyanti', '0052277532', 'Sorong', '2005-02-12', 'Perempuan', 'Islam', 'wni', '082239701210', 'Jl.bolhok klalin 1/Kabupaten sorong', 1, 'Jumintono', 'Petani', 'Surgiatik', 'Ibu rumah tangga', '085244248126', 'Jl.bolhok klalin 1', '', '', '', '', 'Mts.muhammadiyah 02 aimas', 'Jl.KH.ahmad dahlan no.01 kel.malasom distrik aimas kab. sorong', 2020, 1593992297, 2014879390, 65, '', 0),
('5ea7cc8819590', 2, 'smk1-XTKJ2', 'Haris .lewaney', '0069823954', 'Sorong', '2005-06-27', 'Laki-laki', 'Protestan', 'wni', '', 'Jln.klalin malawili/Aimas.kabupaten sorong.papua barat', 4, 'Adolop .lewaney', 'Wiraswasta', 'Yunita Rundunuwu', 'Ibu rumah tangga', '081298954428', 'Jln.Klain malawili aimas', '', '', '', '', 'Smp n 1 kab.sorong', 'Jln.klamono km 19', 2020, 1593833154, 555327119, 52.5, '', 0);
INSERT INTO `ppdb_archive` (`archive_id`, `id_jalur`, `class_id`, `nama_lengkap`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `kewarganegaraan`, `no_telp`, `alamat`, `kode_jurusan`, `ayah_kandung`, `pekerjaan_ayah`, `ibu_kandung`, `pekerjaan_ibu`, `telp_ortu`, `alamat_ortu`, `nama_wali`, `pekerjaan_wali`, `alamat_wali`, `telp_wali`, `asal_sekolah`, `alamat_sekolah`, `tahun_lulus`, `archive_at`, `nomor_pendaftar`, `nilai`, `file`, `is_tested`) VALUES
('5ea7e23e72a6f', 2, 'smk1-XAKL1', 'NAZWA LUTFIA IKA RAMADANI', '0059827287', 'SORONG', '2005-10-19', 'Perempuan', 'Islam', 'wni', '082198263736', 'SP 1,JALAN CIANJUR/KABUPATEN', 1, 'MUHAMMAD SOLIFUDIN', 'PETANI', 'SUSANA', 'IBU RUMAH TANGGA ', '082399311552', 'SP 1,JALAN CIANJUR', '', '', '', '', 'SMP N 3 KABUPATEN SORONG', 'SP 1, JALAN MERPATI', 2020, 1593991224, 324949618, 62.5, '', 0),
('5ea7e244232ce', 2, 'smk1-XAKL1', 'INTAN MUSDALIFAH', '0058284407', 'SORONG', '2005-03-28', 'Perempuan', 'Islam', 'wni', '082198188696', 'SP 1, JALAN CENDRAWASIH/KABUPATEN', 1, 'DAENG AWING', 'SWASTA', 'RAODAH', 'IBU RUMAH TANGGA', '085244247209', 'SP 1, JALAN CENDRAWASIH', '', '', '', '', 'SMP NEGERI 3 KABUPATEN SORONG', 'SP 1,JALAN MERPATI', 2020, 1593991063, 541497647, 37.5, '', 0),
('5ea7f48a7757c', 2, 'smk1-XTITL', 'Muh rifaldin', '0027823215', 'Buton ', '2002-12-31', 'Laki-laki', 'Islam', 'wni', '082399173760', 'Aimas unit 1 jlr B jln durian/Malawili KAB SORONG ', 6, 'Saludi', 'Saypam(swasta)', 'Waode harnia', 'Ibu rumah tangga', '082399173760', 'Jlr B jln durian', '', 'Blum ada', '', '', 'SMPN1 KAB SORONG', 'Jln klamono', 2020, 1593826862, 2026811568, 50, '', 0),
('5ea7f6ebc998e', 2, 'smk1-XOTKP1', 'SITI AISAH BADERAN', '0059706290', 'Sorong', '2005-06-12', 'Perempuan', 'Islam', 'wni', '082392770673', 'Jln tomat/Kabupaten', 2, 'HENDRO M BADERAN', 'Swasta', 'FITRI ZAKARIA', 'Ibu rumah tangga', '082399710567', 'Jln tomat', '', '', '', '', 'Mts al-ma\'arif 1 kab. Sorong', 'Jln wortel', 2020, 1593836625, 1837331096, 50, '', 0),
('5ea809899669f', 2, 'smk1-XTBSM', 'Mohammad Reno hardiansyah', '0058841937', 'Sorong', '2005-06-25', 'Laki-laki', 'Islam', 'wni', '085339078464', 'Jln.purama sp1/Aimas/Sorong/Papua barat', 7, 'Suwito', 'Swasta', 'Tutik', 'Rumah tangga', '085339078464', 'Jln.purama sp1', '', '', '', '', 'MTSN sorong', 'Jln.menur no.2 kel.mariayai distrik Mariat', 0000, 1593515263, 2141650617, 65, '', 0),
('5ea81002ad41a', 2, 'smk1-XTKRO', 'Ade putra fareza', '0033380796', 'Jombang', '2003-11-11', 'Laki-laki', 'Islam', 'wni', '+6282397973283', 'Jln terong/Kabupaten sorong', 5, 'Arnas', 'Kuli bangunan', 'Supiyati ningsih', 'Ibu rumah tangga', '+6285254286142', 'Jln terong', '', '', '', '', 'Mts al-ma\'arif 01 kabupaten Sorong', 'Jln wortel', 2020, 1593820291, 2057218670, 55, '', 0),
('5ea8af5038b1d', 2, 'smk1-XTKRO', 'Nanda Tri septiawan', '1503005803', 'Sorong', '2021-09-07', 'Laki-laki', 'Islam', 'wni', '', 'Jln.madura Rk 1 Rt 2 desa majaran salawati kabupaten sorong /Rk 1 Rt 2 desa majaran salawati kabupaten sorong', 5, 'Sukamto', 'Swasta', 'Iryati', 'Ibu rumah tangga', '082199054166', 'Jln.madura Rk 1 Rt 2 salawati kabupaten sorong', '', '', '', '', 'Smp pgri salawati ', 'Jln.nusantara', 2020, 1593820859, 1561369941, 40, '', 0),
('5ea8d9e97643c', 2, 'smk1-XTKRO', 'Vicky Kurniawan', '0052472098', 'Sorong', '2020-02-06', 'Laki-laki', 'Islam', 'wni', '', 'Jln. Nusa Indah/Mariat Kab. Sorong Prof. Papua Barat', 5, 'Muhammad Nugroho', 'Swasta', 'Nurin Indah Pertiwi', 'Ibu Rumah Tangga', '085243268614', 'Jl. Menur RT/004 RW/004 Kel. Mariyai Kec. Mariat', '', '', '', '', 'MADRASAH TSANAWIYAH NEGRI SORONG', 'Jl. Menur NO 2 Kel. Maria Distrik Mariat', 2020, 1593821007, 1899257198, 65, '', 0),
('5ea9029e8b67b', 2, 'smk1-XAKL1', 'Nur mustika ayu', '0052357000', 'Sorong', '2005-04-21', 'Perempuan', 'Islam', 'wni', '085243913197', 'Jln. Lumba-lumba RT 4 RW 2 tugu merah/Mariat/Sorong/Papua barat', 1, 'Syamsuddin', 'Swasta', 'Khotijah', 'Rumah tangga', '085254185598', 'Jln. Lumba-lumba RT 4 RW 2', '', '', '', '', 'MTs Negeri Sorong', 'Jln. Menur NO 2', 2020, 1593991297, 1427220521, 40, '', 0),
('5ea902a3020d8', 2, 'smk1-XAKL2', 'Rina Anggraini', '0063644862', 'Sorong', '2006-02-04', 'Perempuan', 'Islam', 'wni', '085243404153', 'Jln. Tawes,  RT 1 RW 1 Tugu Merah/Mariat/ Sorong/Papua Barat', 1, 'Suparman', 'Swasta', 'Suminah', 'Ibu Rumah Tangga', '085254547897', 'Jln.Tawes RT 1 RW 1 Tugu Merah', '', '', '', '', 'MTs Al-Ma\'arif 1 Kabupaten sorong', 'Jln.wortel Unit 2', 2020, 1593992719, 1364127954, 55, '', 0),
('5ea9097dcaea3', 2, 'smk1-XOTKP2', 'Muhammad Abdul Khohar', '0042682932', 'Sorong Papua barat', '2004-02-17', 'Laki-laki', 'Islam', 'wni', '082199418516', 'Jalan makam/Aimas,Sorong,Papua barat', 2, 'Museno', 'Petani', 'Wagiyem ', 'Petani', '085197345281', 'Jln makam ', '', '', '', '', 'Mts al Ma\'arif 1 kab sorong', 'Ponpes mimhajuth Tholibin,Jl. Wortel.kel.malawele aimas.kab sorong', 2020, 1593837345, 1919745595, 35, '', 0),
('5ea90b60f0c1f', 1, 'smk1-XDPIB', 'JEREMIA YUSUF KAMBU', '0048186483', 'JAYAPURA ', '2004-07-05', 'Laki-laki', 'Protestan', 'wni', '082238954798', 'Jln Osok km 19.aimas kab Sorong/Kabupaten', 3, 'ISASKAR KAMBU', 'PNS', 'DINNA JITMAU', 'Ibu rumahtangga', '081344845798', 'Jln Osok aimas', 'ISASKAR KAMBU', 'PNS', 'Jln osok aimas', '081344845798', 'SMP OIKUMENE SORONG', 'jl.s.kalagison kec.sorong Papua barat', 2020, 1593827783, 629748297, 22.5, '', 0),
('5ea90cb07e290', 2, 'smk1-XOTKP1', 'ZAHRA NABILA PUTRI ', '0055638099', 'SORONG', '2005-04-19', 'Perempuan', 'Islam', 'wni', '085244302573', 'Jalan gambas/Aimas/sorong/papua barat', 2, 'NADI SALOTAN', 'BURUH HARIAN', 'SITI MASLIKAH', 'IRT(ibu rumah tangga) ', '081240579720', 'JALAN GAMBAS', 'NADI SALOTAN', 'BURUH HARIAN', 'JALAN GAMBAS', '081240579720', 'MTS. N MARIAI KAB. SORONG', 'JALAN MENUR', 2020, 1593836674, 516284512, 40, '', 0),
('5ea910a3dd65a', 2, 'smk1-XAKL1', 'Risna wati', '0055829992', 'Sorong', '2020-08-02', 'Perempuan', 'Islam', 'wni', '+62 822-3942-3164', 'Jl.Tomat/Malawele , kabupaten Sorong', 1, 'Udin', 'Swasta', 'Jumriani', 'Ibu rumah tangga', '085254423365', 'Jalan tomat', '', '', '', '', 'Mts Al Ma\'arif 1 kabupaten Sorong', 'Jl. Wortel', 2020, 1593991362, 1119893771, 37.5, '', 0),
('5ea91de729df5', 1, 'smk1-XAKL2', 'Imel tamara semunya', '0054512053', 'Jayapura', '2005-09-06', 'Perempuan', 'Protestan', 'wni', '082238407762', 'Aimas unit 2,jalan wortel lorong rajawali/Kabupaten sorong', 1, 'Imanuel semunya', 'Pns', 'Emi seru', 'Pns', '081241031149', 'Aimas unit 2 jalan wortel lorong rajawali', '', '', '', '', 'Smpn 1 kabupaten sorong', 'Jl.klamono km.19 malawili aimas', 2020, 1593992222, 1405766567, 50, '', 0),
('5ea9362714485', 2, 'smk1-XDPIB', 'ARVITA NUR HIDAYAH', '0055698542', 'LEMAH ABANG', '2005-09-23', 'Perempuan', 'Islam', 'wni', '085244073562', 'JL.Melati Mariat Pantai Kabupaten Sorong/AIMAS / SORONG /PAPUA BARAT', 3, 'KATIRAN', 'Wiraswasta', 'SUSIATI', 'Ibu rumah tangga', '081354174416', 'Jl. Melati Mariat Pantai Kabupaten Sorong', 'KATIRAN', 'Wiraswasta', 'Jl. Melati Mariat Pantai Kabupaten Sorong', '081247550200', 'MTs NEGERI SORONG', 'Jl. Menur Sp2 Kabupaten Sorong', 2020, 1593827468, 1329005828, 70, '', 0),
('5ea93b60500cf', 2, 'smk1-XAKL1', 'Aisyiyah uswatun hasanah ', '0050711632', 'Sorong', '2005-02-17', 'Perempuan', 'Islam', 'wni', '082398282649', 'Jalan flamboyan sp2 kabupaten sorong/Distrik mariat/sorong/papua barat', 1, 'Supardi hadi saputra', 'Petani', 'Nuriyah', 'Ibu rumah tangga', '082239690440', 'Jalan flamboyan sp 2 kabupaten sorong', 'Suwasis', 'Petani', 'Jalan flamboyan sp 2 kabupaten sorong', '082199402828', 'Mts negeri sorong', 'jalan menur sp2 kabupaten sorong', 2020, 1593990870, 423634030, 55, '', 0),
('5ea9500bc8b40', 2, 'smk1-XTKJ1', 'Manuel Alexius Parapaga', '0052062268', 'Manado', '2005-05-09', 'Laki-laki', 'katolik', 'wni', '082239398831', 'Jl. Sagu mariat pantai/Aimas, Kabupaten Sorong, Papua Barat', 4, 'Michael M. Parapaga', 'Swasta', 'Witadini S. Taareluan', 'Ibu rumah tangga', '082198745520', 'Jl. Sagu Mariat Pantai', '', '', '', '', 'SMPTK DIASPORA', 'Jl. Diaspora', 2020, 1593832483, 110801066, 65, '', 0),
('5ea95261d5e8d', 2, 'smk1-XDPIB', 'Faridathul Putri Nur Annisa', '0052277551', 'Sorong', '2005-06-29', 'Perempuan', 'Islam', 'wni', '082157520075', 'Jalan Durian/Distrik Aimas, kabupaten sorong, papua barat', 3, 'Edi Setiyo', 'Swasta', 'Yuni Astutik', 'Ibu rumah tangga', '081344583008', 'Jalan Durian', '', '', '', '', 'Mts Al-ma\'Arif 1 kabupaten sorong', 'Jalan wortel', 2020, 1593827640, 1309727914, 77.5, '', 0),
('5ea968979f3c6', 2, 'smk1-XTITL', 'Ahmadya Nadi Prawiro', '0053882721', 'Blitar jawa timur', '2005-09-28', 'Laki-laki', 'Islam', 'wni', '082238118267', 'JL.SETIA AL AMIN/Kecamatan mariat/kabupaten sorong/provinsi papua barat', 6, 'SUHARTONO', 'SWASTA', 'TUTIK HANDAYANI', 'IBU RUMAH TANGGA', '082238118267', 'JL.SETIA AL AMIN', '', '', '', '', 'MTSn MARIAI KABUPATEN. SORONG', 'JL.MENUR NO.2 KEL.MARIAI DISTRIK MARIAT KABUPATRN SORONG', 2020, 1593826636, 979577374, 42.5, '', 0),
('5ea96aa87664a', 2, 'smk1-XDPIB', 'marchelino prasetiyo', '0056826450', 'sorong ', '2005-03-28', 'Laki-laki', 'Protestan', 'wni', '082238281189', 'jalan jambu jlr A/kabupaten ', 3, 'Sugiarto', 'Tukang kayu', 'Fice kapong ', 'Ibu rumah tangga ', '082398472044', 'jalan jambu jlr A', '', '', '', '', 'smp negri 1 kab. sorong ', 'jalan kelamono km 19', 2020, 1593827849, 245062244, 57.5, '', 0),
('5eaa0907c5c54', 2, 'smk1-XDPIB', 'MohammadFajarSodiq', '0057152401', 'Sorong', '2005-04-04', 'Laki-laki', 'Islam', 'wni', '082190922860', 'JL.Tomat/Aimas,Sorong,Papuabarat', 3, 'SLAMET', 'Swasta', 'Unengsih', 'Iburumahtangga', '085354898554', 'JL.Tomat', '', '', '', '', 'SMPN1KAB.SORONG', 'JL.KlamonoKM.19MalawiliAimas', 2020, 1593827897, 380936485, 70, '', 0),
('5eaa383514aa2', 2, 'smk1-XOTKP2', 'KEZIA ANABEL SIMORI', '0063654546', 'Sorong', '2006-01-11', 'Perempuan', 'Protestan', 'wni', '081248412564', 'Jln. Tawes RT.001/RW.001 Kelurahan Klamasen/Distrik Mariat Kabupaten Sorong Provinsi Papua Barat', 2, 'YAHYA SIMORI', 'Aparatur Sipil Negara (ASN)', 'IDA JOIS WETAN', 'Tidak ada', '081344824033', 'Jln. Tawes RT.001/RW.001 Kelurahan Klamasen', '-', '-', '-', '-', 'SMP Negeri 3 Kabupaten Sorong', 'Jln. Merpati Kelurahan Klamasen Distrik Mariat Kabupaten Sorong', 2020, 1593837259, 158266915, 67.5, '', 0),
('5eaa3c9caa7bc', 2, 'smk1-XTBSM', 'Muhamad Fabriyanto Saridin', '0045360903', 'Bitung', '2004-02-23', 'Laki-laki', 'Islam', 'wni', '082238011577', 'Jl. Jambu KPR Cendrawasih Blok R No 10, Kel. Malawili/Kec. Aimas, Kab. Sorong, Prov. Papua Barat', 7, 'Umar Saridin (Alm)', 'Tidak ada', 'Aisyah Tangkulung', 'Ibu Rumah Tangga', '085344488484', 'Kel. Girian Bawah, Kec. Girian, Kota Bitung, Prov. Sulawesi Utara', 'Faisal Umar', 'TNI', 'Jl. Jambu KPR Cendrawasih Blok R No 10, Kel. Malawili, Kec. Aimas, Kab. Sorong', '082199916335', 'Madrasah Tsanawiyah Alkhairaat Bitung', 'Girian, Kota Bitung, Prov. Sulawesi Utara', 2019, 1593819868, 1841095970, 47.5, '', 0),
('5eaa3e1910892', 2, 'smk1-XAKL2', 'NURSAFIRA', '0053289619', 'Sorong', '2005-06-19', 'Perempuan', 'Islam', 'wni', '082363877063', 'Jalan bayam/Aimas,sorong,papua barat', 1, 'LA UDIN', 'Wiraswasta', 'WANURI', 'Ibu rumah tangga', '081343350524', 'Jalan bayam', '', '', '', '', 'Smp N 11 Kab.Sorong', 'Jalan sagu mariat pantai', 2020, 1593992621, 1105150955, 65, '', 0),
('5eaa46b44d40c', 2, 'smk1-XTBSM', 'MUHAMMAD SHABRI', '0052396865', 'Sorong', '2005-03-01', 'Laki-laki', 'Islam', 'wni', '082248969257', 'Aimas jln lobak unit 2/Sorong/Sorong/Papua barat', 7, 'BAHARUDIN', 'Swasta', 'SARIYANA', 'Ibu rumah tangga', '081248467610', 'Aimas unit 2 jln lobak', '', '', '', '', 'Mts Muhammadiyah 02 aimas kab.sorong', 'Jalan wortel', 2020, 1593819970, 1390633475, 37.5, '', 0),
('5eaa6b15bc60c', 2, 'smk1-XTITL', 'Agung Baitullah Anbiya', '0058938088', 'Pontianak', '2005-08-19', 'Laki-laki', 'Islam', 'wni', '082157520151', 'JLN. PETROCHINA/Kabupaten', 6, 'Awang Suwangsha', 'Pedagang', 'Robiah', 'Pedagang ', '082148059801', 'JLN. PETROCHINA', '', '', '', '', 'Mts Muda 2 kab.Sorong', '', 2020, 1593826488, 552887852, 50, '', 0),
('5eaa6ef022540', 2, 'smk1-XTKRO', 'MICHAEL HARIS PASARIBU', '0057210522', 'Bandung', '2005-03-15', 'Laki-laki', 'Protestan', 'wni', '081247411147', 'Jln baru aimas km.21/Aimas/Sorong/Papua barat', 5, 'JACKSON HENDRA PASARIBU', 'Wiraswasta', 'JUNIKA HUTAJULU', 'Ibu rumah tangga', '081344891716', 'Jln bru aimas km.21', '', '', '', '', 'SMP N 1.KAB. SORONG', 'JL.Klamono Km. 19, Malawili, Aimas, Sorong', 2020, 1593820750, 216074065, 65, '', 0),
('5eaa8e22ac795', 2, 'smk1-XAKL1', 'ZAHRA NUR HAYDA', '0053912294', 'SORONG', '2005-11-21', 'Perempuan', 'Islam', 'wni', '085244500533', 'JL.PULAU WAIGEO/Sorong,sorong kota,papua barat', 1, 'HAMKA MUCHTAR', 'KARYAWAN SWASTA', 'SITI RUKIMAH', 'MENGURUS RUMAH TANGGA ', '081343498807', 'JL.PULAU WAIGEO', '', '', '', '', 'SMP NEGERI 1 KOTA SORONG', 'Jl.Kesehatan No.6 Kelurahan kampung baru kec. sorong kota', 2020, 1593991847, 1398308297, 37.5, '', 0),
('5eaaa5fd482fa', 2, 'smk1-XTKJ2', 'Fizla Auliana', '0055755382', 'sorong', '2005-06-27', 'Perempuan', 'Islam', 'wni', '085244316662', 'Jln.kartini/mayamuk/sorong/papua barat', 4, 'Chaerullah', 'Swasta', 'Mutmainnah', 'Ibu rumah tangga', '085243334488', 'jln.kartini', '', '', '', '', 'Mts N sorong', 'Jln.menur', 2020, 1593833106, 828473811, 60, '', 0),
('5eaaa62c9360b', 2, 'smk1-XAKL1', 'Abdillah Khoiriyah Zuso', '0051778773', 'Malang', '2005-03-07', 'Perempuan', 'Islam', 'wni', '082399009682', 'Jln wortel/Aimas, Sorong,Papua Barat', 1, 'SODIQ', 'Swasta', 'SITI ZULAIKHA', 'Ibu rumah tangga', '085244413779', 'Jln Wortel', '', '', '', '', 'SMP MUHAMMADIYAH AIMAS', 'Jl KH Ahmad Dahlan ', 2020, 1594857719, 1290144024, 30, '', 0),
('5eaaabfa392fa', 2, 'smk1-XTKJ2', 'JEREMIA TANDI MASSAU', '0059745690', 'SORONG', '2005-08-13', 'Laki-laki', 'Protestan', 'wni', '082198116105', 'Jl. Sagu Aimas/Kab.Sorong', 4, 'BENYAMIN TAMPANG', 'PNS', 'NATALIA TARUK MENDEN', 'IRT', '085244458433', 'Jl. Sagu Aimas', '', '', '', '', 'SMP NEGERI 1 KABUPATEN SORONG', '', 2020, 1593833191, 1240841671, 62.5, '', 0),
('5eaab141cc722', 2, 'smk1-XTITL', 'LUQMAN NUR RIFA\'I', '0051955204', 'sorong', '2004-04-04', 'Laki-laki', 'Islam', 'wni', '081344960414', 'SP 2 Jln.melati/Distrik mariat', 6, 'Girun iswantoro', 'Petani', 'Siti komdasah', 'Ibu rumah tangga', '081344960414', 'SP 2 Jln. melati', '', '', '', '', 'MTS N SORONG', 'Jln menur. NO 2 Kel.Mariai Distrik mariat', 2020, 1593826805, 644480165, 45, '', 0),
('5eaab1a77d61f', 2, 'smk1-XOTKP2', 'WIWIN CHOIROTUN NISAK ', '0042582069', 'Pasuruan ', '2004-06-20', 'Perempuan', 'Islam', 'wni', '081351735549', 'Jln. Rambutan Rt. 010 Rw.003 Keluraan Malagusa/Kecamatan Aimas ', 2, 'KHUSAIRI', 'Wiraswasta ', 'THOYYIBA ', 'Rumah tangga ', '082197865750', 'jln. Sele be solu 2 Rt. 001 Rw. 002 Kelurahan  Klawaluk ', ' REGO FATCHUROZI ', 'Wiraswasta ', 'Jln. Rambutan Rt. 010 Rw. 003 Kel/Desa. Malagusa kecamatan. Aimas ', '081344423744', 'Mts Muh 1 salawati ', 'Jln. Poros makbalim ', 2020, 1593837753, 1099819611, 37.5, '', 0),
('5eaab5ce049af', 2, 'smk1-XTKJ2', 'FATAHUL AFRIZAL', '0059387901', 'sorong', '2005-03-15', 'Laki-laki', 'Islam', 'wni', '082197966008', 'jl.mangga/aimas,sorong,papua barat', 4, 'AHMAD NURYADI', 'WIRASWASTA', 'SUYATMI', 'MENGURUS RUMAH TANGGA ', '082197966008', 'jl.magga', '', '', '', '', 'MTs n sorong', 'jl.menur No.02 kulurahan mariyai distrik mariat', 2020, 1593833090, 257265624, 45, '', 0),
('5eaabad0215ee', 2, 'smk1-XOTKP1', 'Muh Bisabri ', '0061531951', 'Kab.Sorong ', '2005-05-09', 'Laki-laki', 'Islam', 'wni', '085244485300', 'Jln Seledri /Kabupaten', 2, 'Ruslan Mardjan', 'Swasta', 'Baharia Uran', 'Ibu Rumah Tangga', '082198969404', 'Jln Seledri', '', '', '', '', 'MTs Muhammadiyah 02 Aimas Kab.Sorong', 'Jln Wortel', 2020, 1593836362, 573748470, 37.5, '', 0),
('5eaac6a870d7f', 2, 'smk1-XDPIB', 'Muhammad Khoirul Fadly ', '0055350579', 'Sorong', '2005-07-07', 'Laki-laki', 'Islam', 'wni', '081247785156', 'Jln. Pariwisata, / - Malasom/Aimas, Sorong, Papua Barat', 3, 'Egianto', 'Swasta', 'Sumarmy', 'Ibu Rumah tangga', '081247785156', 'Jln, Pariwisata', 'Egianto ', 'Swasta', 'Jln, Pariwisata', '081247785156', 'Mts Roudlotulkhuffadz', 'Jln, Kakak Tua Malasom', 2020, 1593827914, 1808864451, 42.5, '', 0),
('5eaac839c6d57', 2, 'smk1-XTKRO', 'Aditya Prayoga', '0046855187', 'Boyolali', '2004-08-31', 'Laki-laki', 'Islam', 'wni', '081343102901', 'Jl.flamboyan. Sp 2/Mariat/ Sorong/Papua Barat', 5, 'Joko Santoso', 'Swasta', 'Triyani', 'Swasta', '+62 813-4310-2731', 'Jl Flamboyan SP2', '', '', '', '', 'SMP Negeri 3 Kabupaten Sorong', 'Jl. Merpati Aimas ll Sp 1 klamalu distrik mariat ', 2020, 1593820313, 571559902, 62.5, '', 0),
('5eaac9176353b', 2, 'smk1-XDPIB', 'Khalep Setiadi', '0054642581', 'Sorong', '2005-10-04', 'Laki-laki', 'Protestan', 'wni', '+6282198696499', 'Jl. Menur Sp. 2/Mariat/Sorong/Papua Barat', 3, 'Suyoto', 'Petani', 'Sarti', 'Swasta', '081343155532', 'Jl. Menur Sp. 2', '', '', '', '', 'SMP NEGERI 3 KABUPATEN SORONG', 'Jl. Merpati Aimas ll Sp.1 Klamalu Dist.Mariat Kab.Sorong', 2020, 1593827827, 1812065179, 60, '', 0),
('5eaac938cca5e', 2, 'smk1-XDPIB', 'Danu Prismana', '0050711964', 'sorong', '2005-05-25', 'Laki-laki', 'Islam', 'wni', '081248737128', 'Jl. Menur Sp. 2/mariat/sorong/papua barat', 3, 'Iwan Hartono', 'swasta', 'Artini', 'Ibu rumah tangga', '082198757457', 'Jl. Menur Sp. 2', '', '', '', '', 'SMP NEGERI 3 KABUPATEN SORONG', 'Jl Merpati Aimas ll Sp.1 Klamalu Dist.Mariat Kab.Sorong', 2020, 1593827581, 1056653781, 57.5, '', 0),
('5eaac9ba718be', 2, 'smk1-XTBSM', 'Glendy Shan Billy Salibana', '0050775093', 'Sorong', '2005-07-22', 'Laki-laki', 'Protestan', 'wni', '082239705750', 'Jl. Kenanga Sp 2/Mariat/Sorong/Papua barat', 7, 'San Hugu Salibana', 'Petani', 'Sulimah Deborah', 'Ibu Rumah Tangga', '081247350810', 'Jl. Kenanga', '', '', '', '', 'SMP Negri 3 Kab.sorong', 'Jl. Merpati ', 2020, 1593819616, 950315195, 30, '', 0),
('5eaaf0af1afd4', 2, 'smk1-XAKL2', 'Nessa Indah Febriyanti', '0066287554', 'Sorong', '2006-02-05', 'Perempuan', 'Islam', 'wni', '082399352375', 'JL. Gambas, Aimas Unit 2 Kab. Sorong/Aimas Malawele, Sorong, Papua Barat', 1, 'Paiman', 'Pemotong Kayu Bakar', 'Dina Deitje Deivi Rondonuwu', 'Ibu Rumah Tangga', '081344627745', 'JL. Gambas Unit 2', 'Paiman', 'Pemotong kayu bakar', 'JL. Gambas', '081344627745', 'MTs. Muhammadiyah 02 Kab. Sorong', 'JL. Wortel DIY Aimas Unit 2', 2020, 1593992474, 2070769620, 65, '', 0),
('5eab6658110b7', 2, 'smk1-XOTKP1', 'Cindy Cantika s Pangemanan ', '0059073762', 'Sorong', '2005-05-09', 'Perempuan', 'Protestan', 'wni', '082398978197', 'Jl klamono km 28/Kabupaten sorong', 2, 'Mechri christian Pangemanan ', 'Swasta', 'Merlin peo', 'Pns', '0821-9946-2443', 'Jl klamono km 28', '', '', '', '', 'SMP negri 1 kabupaten sorong', 'Jl klamono km 19 (aimas)', 2020, 1593835857, 919691439, 50, '', 0),
('5eab69ad21ca3', 2, 'smk1-XTKRO', 'Joan Airlangga Kudori', '0054903915', 'Sorong', '2005-07-01', 'Laki-laki', 'Islam', 'wni', '082239417396', 'Jalan jendral Sudirman/Mayamuk / kab.sorong/Papua barat', 5, 'Kudori', 'Swasta', 'Indriyani', 'Ibu rumah tangga', '081344282031', 'Jalan jendral Sudirman', 'Indriyani', 'Ibu rumah tangga', 'Jalan jendral Sudirman', '081344282031', 'SMPN 2 kab.sorong', '', 2020, 1593820695, 1802530394, 47.5, '', 0),
('5eab6f271434e', 2, 'smk1-XTKJ2', 'OLIVIA SALSABILA KOIBUR ', '0055638149', 'Manado', '2005-10-29', 'Perempuan', 'Protestan', 'wni', '085254103937', 'Jalan Nabire/Aimas,Sorong,Papua Barat', 4, 'SIMON KOIBUR', 'Nelayan/perikanan', 'YULIN AREROS', 'Ibu Rumah tangga', '085254103937', 'Jalan Nabire', '', '', '', '', 'SMP NEGERI 11 KAB.SORONG', 'Jalan Sagu Mariat Pantai', 2020, 1593835353, 1448442006, 55, '', 0),
('5eab711833a79', 2, 'smk1-XTKJ1', 'Rizaldi Dwi Saputra', '0054089204', 'Sorong', '2005-08-12', 'Laki-laki', 'Islam', 'wni', '081248726942', 'Jln Rosa indah sp1/Mariat/Sorong /Papua barat', 4, 'Suyadi', 'Petani', 'Nur Sri Rahayu', 'Ibu rumah tangga', '082238424115', 'Jln Rosa indah', '', '', '', '', 'MTsN Sorong', 'Jln.menur sp2', 2020, 1593832666, 498382881, 72.5, '', 0),
('5eab77ef286ac', 2, 'smk1-XAKL1', 'BUNGA AIDIL SAFITRI', '0028060023', 'SUMBER MAKMUR', '2005-11-11', 'Perempuan', 'Islam', 'wni', '082238349692', 'Jln klamono km32 mariad gunung/Aimas/sorong/Papua barat', 1, 'SULIONO', 'Wiraswasta', 'Syamsiani', 'Ibu rumah tangga', '081240530171', 'Jln klamono km32 mariad gunung', 'SULIONO', 'Wiraswasta', 'Jln klamono km32 mariad gunung', '081240530171', 'SMPN3 KAB SORONG', 'Jln merpati sp 1', 2020, 1593990921, 2100163543, 55, '', 0),
('5eab7f1749b81', 2, 'smk1-XOTKP2', 'Lesly Cicilia Miranda', '0038909364', 'sorong', '2004-11-20', 'Perempuan', 'Islam', 'wni', '', 'jl wamena klaigit klalin dua/kabupaten sorong', 2, 'Daeng Roni', 'Petani', 'Minarni Kopong', 'Ibu Rumah Tangga', '085244485278', 'jl.wamena klaigit klalin dua', '', '', '', '', 'SMP N 11 Kab Sorong', 'jl.sagu mariat pantai', 2020, 1593837277, 1576546655, 45, '', 0),
('5eab875222df2', 2, 'smk1-XTKJ2', 'Yeni Anggraini', '0051466923', 'Sorong ', '2005-08-29', 'Perempuan', 'Islam', 'wni', '085243403984', 'Jl.Purama/Mariat,Sorong,Papua Barat', 4, 'Karimun', 'Wiraswasta ', 'Riyani', 'IRT(ibu rumah tangga) ', '+6285244306235', 'Purama', '', '', '', '', 'Smp Muhammadiyah 2 Mariyai', 'K.H Ahmad Dahlan No.01', 2020, 1593835528, 1990168469, 65, '', 0),
('5eab8fe592e66', 2, 'smk1-XAKL2', 'enjeli', '0059744098', 'Pinrang(Sulawesi selatan)', '2004-09-01', 'Perempuan', 'Protestan', 'wni', '082399600479', 'jln.nangka/aimas/seiring/papua barat', 1, 'amos', 'swasta', 'Dorce dodo', 'urt', '082190883752', 'jln.nangka', '', '', '', '', 'smp.n.1.kab sorong', 'klamono', 2020, 1593992162, 1321893634, 42.5, '', 0),
('5eab96037d8bf', 2, 'smk1-XTKRO', 'MUHRIZAL GILANG REHAN ERLANDA', '0052119183', 'Sorong 13 Agustus 2005', '2005-08-13', 'Laki-laki', 'Islam', 'wni', '082398285942', 'Jlr B jalan durian/Malawili kab Sorong Papua barat', 5, 'MUHTAROM', 'swasta', 'RIANI', 'ibu rumah tangga', '092398285942', 'Jlr B jalan durian', '', '', '', '', 'Mts Al Ma\'arif', 'Jln wortel', 2020, 1593820833, 147477461, 50, '', 0),
('5eab9ae745e85', 2, 'smk1-XAKL2', 'Nur Latif ', '0055414263', 'Banyuwangi ', '2005-07-25', 'Laki-laki', 'Islam', 'wni', '082199418474', 'Jln. Kontener /Malasom/sorong/Papua Barat ', 1, 'Sudarto', 'Petani', 'Leginem ', 'Ibu rumah tangga ', '081248810405', 'Jln. Kontener ', '', '', '', '', 'MTs. Al-Ma\'arif 1 kab Sorong ', 'Unit 2 jln. Wortel', 2020, 1593992596, 1324489865, 65, '', 0),
('5eaba6521b3ad', 2, 'smk1-XAKL1', 'KRISTIN TIRZA NATALIA LAISKODAT', '0045015430', 'Sorong', '2004-12-23', 'Perempuan', 'Protestan', 'wni', '082248952041', 'Jln sakura mariyai sp 2/Mariyai,  kabupaten Sorong provinsi papua barat', 1, 'Markus Laiskodat ', 'Petani', 'Ina Lidia Laiskodat ', 'Ibu rumah tangga', '085254777867', 'Jln.  Sakura sp 2', '', '', '', '', 'SMP NEGERI 3 KABUPATEN SORONG', 'Jln.  Merpati Sp. 1', 2020, 1593991081, 124232794, 72.5, '', 0),
('5eabaee292afa', 1, 'smk1-XTKJ1', 'OLIVIA SAGISOLO', '0055179855', 'Sorong ', '2005-10-20', 'Perempuan', 'Protestan', 'wni', '081248419334', 'Jln Basuki Rahmat Km 14/Sorong Timur Kota Sorong Papua Barat ', 4, 'Simson Sagisolo', 'PNS', 'Mina Burdam', 'Ibu Rumah Tangga ', '081344640636', 'Jln Basuki Rahmat Km 14', '', '', '', '', 'SMP NEGRI 5 KOTA SORONG ', 'Jln Basuki Rahmat Km 12 Klasaman', 2020, 1593832835, 1963082152, 42.5, '', 0),
('5eabcc31283ba', 2, 'smk1-XTKJ2', 'Rina jafar', '0052128100', 'Makassar', '2005-05-22', 'Perempuan', 'Islam', 'wni', '081343506302', 'Jalan klamono km29/Aimas,sorong,papua barat', 4, 'M jafar', 'Swasta', 'Hasmia', 'Swasta', '082399077011', 'Jalan klamono km29', 'M jafar', 'Swasta', 'Jalan klamono km29', '081344585969', 'MTS DARUL ISTIQAMAH', 'Jalan klamono km28', 2017, 1593835425, 1810072564, 50, '', 0),
('5eabcf3b979fa', 2, 'smk1-XOTKP1', 'MELODIA SYAMSIR', '0045812157', 'Sorong', '2004-12-09', 'Perempuan', 'Islam', 'wni', '085243913066', 'Aimas unit 2 jln terong/Kabupaten sorong', 2, 'SYAMSIR', 'SWASTA', 'SITY MARSIYAH', 'IBU RUMAH TANGGA', '082238573591', 'Aimas unit 2 jln terong', '', '', '', '', 'Mts almaarif 1 kab Sorong', 'Jln wortel', 2020, 1593836241, 925059783, 55, '', 0),
('5eabd2d71d29a', 2, 'smk1-XTKRO', 'Syamsul Arifin', '0032920449', 'Sorong', '2003-12-13', 'Laki-laki', 'Islam', 'wni', '081343070097', 'Jl. Pisang/Malawili, Aimas, Kabupaten Sorong', 5, 'Ahmad Yani Walangitan', 'Karyawan Swasta', 'Siti Aminah', 'Ibu Rumah Tangga', '081343070097', 'Jl. Pisang', '', '', '', '', 'MTs Al Ma\'arif 2 Kabupaten Sorong', 'SP 3', 2020, 1593820963, 770175985, 62.5, '', 0),
('5eabfde91fe17', 2, 'smk1-XAKL1', 'ABIGAEL .NENSI.KINDANGEN', '0054073973', 'Sorong', '2005-08-23', 'Perempuan', 'Protestan', 'wni', '082399009793', 'Jalan intipura kel.klasuluk/Mariat/sorong/papua barat', 1, 'Tonny.kindangen', 'Swasta', 'Yoke.tanalawo', 'Ibu rumah tangga', '082399069423', 'Jln.intipura kel.klasuluk', 'Tonny.kindangen', 'Swasta', 'Jln.intipura kel.klasuluk', '', 'SMP.N.11.KAB.SORONG', 'Jln.sagu mariat pantai', 2020, 1593990856, 1116918513, 50, '', 0),
('5eac0fed94ac3', 2, 'smk1-XAKL1', 'Sri astuti nur anjani', '0062351701', 'Sorong', '2005-03-01', 'Perempuan', 'Islam', 'wni', '082188653164', 'Jln wortel/Aimas', 1, 'Mulyadi', 'Petani', 'Siti nurtatik', 'Rumah tangga', '082197533993', 'Jln wortel', 'Mulyadi', 'Petani', 'Jln wortel', '081248761501', 'Mts al-maarif 1kab sorong', 'Jln wortel', 0000, 1593991583, 2143151541, 42.5, '', 0),
('5eac1b5ec6e33', 2, 'smk1-XTKJ2', 'HAFIZ SATRIO ZULFIKAR', '0054152566', 'Sorong', '2004-12-15', 'Laki-laki', 'Islam', 'wni', '085216362096', 'Jln.Tuturuga/RT 03/RW 01 klamalu/Mariat/Sorong/Papua barat', 4, 'SUJONO MURTI', 'Wirausaha', 'KARSINI', 'Ibu rumah tangga', '081241989889', 'Jln.Tuturuga/RT 03/RW 01 klamalu', '', '', '', '', 'SMPN 3 kab Sorong', 'Jln.merpati', 2020, 1593833137, 1287351854, 50, '', 0),
('5eac72241a683', 2, 'smk1-XOTKP2', 'Rini jafar', '3052000680', 'Makassar', '2005-05-22', 'Perempuan', 'Islam', 'wni', '081344751933', 'Jln klamono km29/Aimas-sorong-papua barat', 2, 'M jafar', 'Swasta', 'Hasmia', 'Ibu rumah tangga', '082399077011', 'Jln klamono km29', 'M jafar', 'Swasta', 'Jln klamono km29', '081344585969', 'MTS DARUL ISTIQAMAH', 'Jln klamono km28', 2017, 1593837446, 531846076, 47.5, '', 0),
('5eac7ebb1615e', 2, 'smk1-XDPIB', 'SEKAR ARUM RAHMADANI', '0057931891', 'SORONG', '2005-09-12', 'Perempuan', 'Islam', 'wni', '085211987227', 'Jln. Cemara sp1/Mariat, sorong, Papua barat', 3, 'Yoyok Maryanto', 'Swasta', 'Suliyah irianti ', 'Ibu rumah tangga', '085243945243', 'Jln. Cemara sp 1', 'Yoyok maryanto', 'Swasta', 'Jln. Cemara sp1', '081387535098', 'SMP NEGRI 3 KAB. SORONG', 'JLN. MERPATI', 2020, 1593828067, 864552105, 72.5, '', 0),
('5eacd2bf1c3f8', 2, 'smk1-XTBSM', 'Muhamad Dwiki Awaluddin', '0053115841', 'Sorong/Papua barat ', '2005-11-07', 'Laki-laki', 'Islam', 'wni', '082399010568', 'Jalan Supriyadi sp3/Mayamuk,Sorong,Papua barat ', 7, 'Malik', 'Wiraswasta', 'Fitry', 'Ibu rumah tangga', '085344054602', 'Jln Supriyadi SP3 makbusun', '', '', '', '', 'SMPN 2 kab.sorong', 'Sp 3 makbusun', 2020, 1593819849, 1132275200, 45, '', 0),
('5eace6aa1f15e', 2, 'smk1-XTKRO', 'AHMAD MIFTAKHUL FARHAN', '0057220375', 'Nabire', '2015-11-14', 'Laki-laki', 'Islam', 'wni', '085344053681', 'Jl sorong klamono km 21/Aimas,Sorong,Papua Barat', 5, 'Muhammad Aris', 'Tani', 'Siti Mariatun', 'Tani', '085344053681', 'Jl. Sorong Klamono Km 21', 'Muhammad Aris', 'Tani', 'Jl.Sorong klamono Km 21', '085354043531', 'Mts Al ma\'arif 2', 'Jl. Ir .salim mas\'oed ( jalur 3 , Sp 3 ) kel makbusun, distrik mayamuk.kab Sorong', 2020, 1593820364, 719891053, 67.5, '', 0),
('5ead1e3093060', 2, 'smk1-XTBSM', 'M. Chaesar Arba\'i', '0056527086', 'Sorong', '2005-06-23', 'Laki-laki', 'Islam', 'wni', '082197980903', 'Jln buncis /Malawili. Sorong. Papau barat ', 7, 'Bambang Sutrisno', 'Menjual sayur ', 'Siti Aminah', 'Menjaga toko', '081299031215', 'Jln buncis ', '', '', '', '', 'Mts Al Ma\'arif 1 kabsorong ', 'Jln buncis ', 2020, 1593819713, 1059116814, 22.5, '', 0),
('5ead2bdccc98a', 2, 'smk1-XOTKP1', 'MUSLIMAH', '0056188500', 'Buton', '2005-07-05', 'Perempuan', 'Islam', 'wni', '082190826607', 'Jl. SELEDRI/Aimas/Sorong/Papua barat ', 2, 'LA HAMIMU', 'PETANI/PEKEBUN', 'NUR HALIMAH MAKING', 'MENGURUS RUMAH TANGGA', '082199714561', 'Jl. SELEDRI', '', '', '', '', 'MTs Muhammadiyah 02 kab.sorong', 'Jl. K.H Ahmad Dahlan No. 1 Kel.Malasom Distrik Aimas kab. Sorong Papua barat ', 2020, 1593836386, 422222789, 40, '', 0),
('5ead456683cf3', 2, 'smk1-XTITL', 'Ahmad cahyadi', '0038677065', 'Bayuwangi', '2003-09-19', 'Laki-laki', 'Islam', 'wni', '085243041924', 'Jl jawa majaran/Selawati/ sorong/ papau barat', 6, 'Katino', 'Petani', 'Riwanti budiani', 'Ibu rumah tangga', '085247955446', 'Jl jawa majara ', 'Purwanto', 'Petani', 'Jl jawa majaran', '081247955446', 'Smp pgri slawati', 'Jl nusantra', 2020, 1593826601, 1055333370, 37.5, '', 0),
('5ead4c5975989', 2, 'smk1-XOTKP2', 'Zahradila Ramadani Umar ', '0052259868', 'Sorong', '2005-10-21', 'Perempuan', 'Islam', 'wni', '082248782611', 'Jalan Cendrawasih sp 1/Mariat/Sorong/Papua Barat', 2, 'Umar Said', 'Swasta(Supir)', 'Siti Komariah', 'Ibu rumah tangga', '081344406323', 'JL. Cendrawasih', '', '', '', '', 'SMP Negri 3 kab.sorong', 'JL. Merpati sp 1', 2020, 1593837779, 487693712, 60, '', 0),
('5ead4dccb158a', 2, 'smk1-XTKJ1', 'NURUL SYAFIKA', '0055611313', 'PAJALELE', '2005-07-23', 'Perempuan', 'Islam', 'wni', '081344605012', 'JLN.APEL,RT/RW:014/004,MALAGUSA AIMAS/AIMAS/SORONG/PAPUA BARAT', 4, 'AHMAD ALWI', '-', 'SUARNI', 'SWASTA', '082238628655', 'JL.TG.PINANG KM.8 RT/RW:004/002', 'SURYANTI', 'IRT', 'JLN.APEL,RT/RW:014/004,MALAGUSA AIMAS', '081355300078', 'MTS AL-MA\'ARIF 1', 'JLN.WORTEL', 2020, 1593832567, 653570023, 57.5, '', 0),
('5ead54fa14ae3', 2, 'smk1-XTBSM', 'Morys kalvin lapasi', '0054138290', 'Sorong', '2005-02-02', 'Laki-laki', 'Protestan', 'wni', '085254027720', 'Klalin2 kelurahan klaigit/Aimas / kab.sorong / Papua barat', 7, 'Ardianto lapasi', 'Petani', 'Lea Karolina mnsen', 'Ibu rumah tangga', '085254027720', 'Klalin2 kelurahan klaigit', 'Ardianto lapasi', 'Petani', 'Klalin2 kelurahan kelaigit', '085254027720', 'SMPN 11 kab. Sorong', 'Jalan sagu mariat pantai', 2020, 1593819829, 1342064662, 37.5, '', 0),
('5ead5a4d18077', 2, 'smk1-XAKL1', 'Dhea Fitria Karundeng', '0053687993', 'Sorong', '2005-05-05', 'Perempuan', 'Islam', 'wni', '081356970887', 'JL.Flamboyan/Mariat, Kab. Sorong,Papua Barat', 1, 'Angki Karundeng', 'Swasta', 'Angga Arianti', 'Ibu Rumah Tangga', '081356970887', 'JL. Flamboyan', 'Angki Karundeng', 'Swasta', 'JL. Flamboyan', '081356970887', 'SMP Muhammadiyah', 'JL. Wortel', 2020, 1593990938, 1893347416, 32.5, '', 0),
('5ead623d1643e', 2, 'smk1-XTBSM', 'HARIS TOMIA', '0053860581', 'Sorong', '2020-05-11', 'Laki-laki', 'Islam', 'wni', '085254030727', 'KAMPUNG KLASOF/Moisegen/Sorong/Papua Barat', 7, 'ABUDIN TOMIA', 'Swasta', 'AMINAH', 'Swasta', '0852-5404-5026', 'KAMPUNG KLASOF', '', '', '', '', 'SMP N 14 KAB.SORONG', 'KAMPUNG KLASARI ', 2020, 1593819639, 1434068191, 27.5, '', 0),
('5eae1b7d7d642', 2, 'smk1-XTKJ2', 'Muh.zaky ardiansyah', '0054200939', 'Sorong', '2005-09-09', 'Laki-laki', 'Islam', 'wni', '082198153656', 'Jl. Buncis Kel. Malawele/Kec. Simas kab. Sorong Papua barat', 4, 'Fajar', 'Karyawan swasta', 'Suciana', 'Mengurus rumah tangga', '085243990355', 'Jl. Buncis Kel. Malawele', 'Bejo', 'TNI AD', 'Asrama KOREM 181 Pvt', '081248448464', 'SMP negeri 1 kab. Sorong', 'Jl. Klamono km 19 Kel. Malawili kab. Sorong', 2020, 1593835273, 1744799572, 62.5, '', 0),
('5eae5d14189ae', 2, 'smk1-XTBSM', 'ALKI DEY JUNIOR SAPULETTE', '0057719749', 'Sorong', '2005-06-19', 'Laki-laki', 'Protestan', 'wni', '08124823803', 'Jl.Mangga/Aimas,Sorong,Papua Barat', 7, 'RECY SAPULETTE', 'SWASTA', 'HENY LISTATI', 'IBU RUMAH TANGGA', '082198268051', 'JL.MANGGA', '', '', '', '', 'SMP N 3 KABUPATEN SORONG', 'Jl.MERPATI, SP 1', 2020, 1593819489, 1480395729, 40, '', 0),
('5eae676116282', 0, 'smk1-XTBSM', 'Muhammad sholeh', '0036860333', 'Sorong ', '2003-12-25', 'Laki-laki', 'Islam', 'wni', '081344654218', 'Klalin 2 kelurahan klaigit/Aimas/kab.sorong/papua barat', 7, 'Pur wanto', 'Petani', 'maonah', 'Ibu rumah tangga', '081246338099', 'klalin 2 kelurahan klaigit', 'Trubus', 'Petani', 'klalin 2 kelurahan klaigit', '082397909550', 'MTS.N.kab sorong', 'jln kodok ', 2020, 1593819989, 1527284017, 15, '', 0),
('5eae9b201f963', 2, 'smk1-XTITL', 'Helmi Ferdinandus', '0052322731', 'Sorong', '2005-02-09', 'Laki-laki', 'Protestan', 'wni', '081247268013', 'Jalan Gambas/Aimas, Sorong,Papua Barat', 6, 'Wellem Ferdinandus', 'Swasta', 'Agustin Aponno', 'Ibu Rumah tangga', '081344896228', 'Jalan Gambas', '', '', '', '', 'SMP N 11 Kabupaten Sorobg', 'Jalan Mariat Pantai', 2020, 1593826709, 600065298, 25, '', 0),
('5eaec0e516f7d', 2, 'smk1-XTKJ1', 'TIRTA ARDIANSYAH PUTRA', '0042036280', 'Aimas', '2004-09-10', 'Laki-laki', 'Islam', 'wni', '081343108640', 'Jl.pisang RT.002/ RW.001 malawili/Aimas / sorong barat / papua barat', 4, 'SAMSUDIN', 'Wiraswasta', 'KASIAH NINGSIH', 'Ibu rumah tangga', '081343108640', 'Jl.pisang RT.002/RW.001 malawili', 'SAMSUDIN', 'wiraswasta', 'Jl.pisang RT.002/ RW.001 malawili', '085244599231', 'MTs AL MA\'ARIF 2 ', 'Jl.ir.salim mas\'oed sp 3 , makbusun distrik Mayamuk kab.sorong', 2020, 1593832700, 2022875783, 65, '', 0),
('5eaee06b1674a', 2, 'smk1-XTKJ1', 'Radifa salsabilla wally', '0053431089', 'Kota sorong papua barat', '2005-01-14', 'Perempuan', 'Islam', 'wni', '081344899240', 'Transad jalan trikora km 19/Kabupaten sorong', 4, 'Arifin wally', 'Swasta', 'Nur Hasya Hasyim', 'Ibu rumah tangga', '081344564157', 'Transad jalan trikora km 19', '', '', '', '', 'Smp negeri 1 kabupaten sorong', 'Aimas kabupaten sorong km 19', 2020, 1593832600, 912958493, 57.5, '', 0),
('5eaf5df41f1e5', 1, 'smk1-XOTKP1', 'EVIANA YOHANA KLASIBIN', '0029828090', 'SORONG', '2004-09-16', 'Perempuan', 'Protestan', 'wni', '085243245139', 'Jl sagu aimas/Aimas', 2, 'Demas klasibin', 'Petani', 'Selfina delila ulim', 'Ibu rumah tangga', '085243245139', 'Jl sagu Aimas', '', '', '', '', 'Smp ypk bethel aimas', 'Jl enau kel.aimas distrik aimas', 2020, 1593835984, 1346067609, 40, '', 0),
('5eaf5df88b9ff', 1, 'smk1-XOTKP1', 'IVON YULIANDA.SUU', '0025571726', 'Sorong', '2002-08-18', 'Perempuan', 'Protestan', 'wni', '0823-9832-9287', 'Jln sagu aimas/AIMAS', 2, 'YERMIAS .SUU', 'STAF KHUSUS', 'MARTINCE .MUBALEN', 'Ibu rumah tangga', '0823-9832-9287', 'Jln.sagu aimas', '', '', '', '', 'SMP YPK BEHTEL ,AIMAS', 'Jl.enau Kel.Aimas Distrik Aimas', 2020, 1593836109, 1908170584, 40, '', 0),
('5eaf68ced8358', 2, 'smk1-XAKL1', 'Maya Dwi Astuti', '0047813533', 'Sorong', '2004-05-06', 'Perempuan', 'Islam', 'wni', '082197929312', 'JL. Pepaya/Aimas,sorong,papua barat', 1, 'Lamijan', 'Tani', 'Supinah', 'IRT(ibu rumah tangga)', '081344232831', 'JL.pepaya', '', '', '', '', 'SMP Negeri 1 kabupaten sorong', 'JL klamono km 19', 2020, 1593991195, 1876749374, 45, '', 0),
('5eaf6b812bcc7', 2, 'smk1-XAKL2', 'Siti nur halissa', '0057712203', 'Sorong', '2020-03-19', 'Perempuan', 'Islam', 'wni', '082239270478', 'Jlan wortel/Kabupaten sorong', 1, 'Suyatno', 'Petani', 'Siti riana', 'Ibu rumah tangga', '082248654575', 'Jlan wortel', 'Suyatno', 'Petani', 'Jlan wortel', '082248654575', 'Mts al-ma\'arif 1 kab. Sorong', 'Jln wortel', 2020, 1593992846, 2131055955, 65, '', 0),
('5eaf7c4a072bf', 2, 'smk1-XTKJ1', 'ARFIN NURSANTO', '0052472109', 'SORONG', '2005-05-17', 'Laki-laki', 'Islam', 'wni', '082198799878', 'JL.Nusa Indah, SP 2 ,RT 01, RW 03/Mariat/ Kab. Sorong/ Papua Barat', 4, 'Sunardi', 'Swasta', 'Jami', 'Ibu Rumah Tangga', '085254377184', 'Jl. Nusa Indah, SP 2, RT 01, RW 03', '', '', '', '', 'MTS Negeri Sorong', 'Jl. Menur No. 2 Kel. Mariai Distrik Mariat', 2020, 1593832191, 52038426, 65, '', 0),
('5eaf7f8b5c796', 2, 'smk1-XDPIB', 'RISKI ARIANTO', '0046724227', 'SORONG', '2004-11-17', 'Laki-laki', 'Islam', 'wni', '082238916278', 'Jalan teratai sisipanrt5/rw3/Distrik mayamuk,kecamatan makotyamsa kab.sorong papua barat', 3, 'ANDARI', 'Petani', 'DEWI RIANTI', 'Ibu rumah tangga', '081249518240', 'Jalan teratai sisipan rt5/rw3', '', '', '', '', 'SMP PGRI SALAWATI', 'Majaran jln nusantara salawati', 2020, 1593828010, 424638785, 50, '', 0),
('5eaf9dea188af', 2, 'smk1-XTKJ1', 'Ahmad azan saputra laturua', '0051147532', 'Aimas jln kentang', '2005-07-09', 'Laki-laki', 'Islam', 'wni', '081341763675', 'Jln gambas/Aimas sorong papua barat', 4, 'Samad laturua', 'Suwasta', 'Tariyanti', 'Ibu rumah tanga', '085244117180', 'Jln gambas', 'Samad laturua', 'Suwasta', 'Jln gambas', '085244117180', 'SMPN 1', 'Jl klamono km 19 Aimas sorong', 2020, 1593831871, 2075684170, 50, '', 0),
('5eafb08beeb8c', 1, 'smk1-XTKJ2', 'Ruce Yewen', '0057506935', 'Seni kabupaten  maybrat', '2005-03-16', 'Perempuan', 'Protestan', 'wni', '082197878340', 'Jl.  Tutwuri  gang 4 kelurahan malagusa/Malagusa kabupaten sorong  provinsi  papua barat', 4, 'Adam yewen. (alm) ', 'Tani', 'Berta bame', 'Tani', '082197878340', 'Kampung kuraso,  distrik mare selatan kabupaten maybrat', 'Florentina Yewen', 'Ibu rumah tangga ', 'Jl.  Tutwuri gang 4 kelurahan Malagusa aimas Kabupaten  sorong', '082197878340', 'SMP YPK BETHEL KABUPATEN  SORONG', 'jl. Enau kel. aimas Distrik aimas Kabupaten  sorong', 2020, 1593835601, 1413896937, 47.5, '', 0),
('5eb0ac911ef76', 2, 'smk1-XOTKP1', 'ratna nabila', '0054404933', 'Sorong', '2005-12-24', 'Perempuan', 'Islam', 'wni', '082397972615', 'jalan tomat.RT002/RW001/aimas/sorong/Papua barat', 2, 'suripto', 'petani', 'siti fatimah', 'ibu rumah tangga', '082248836428', 'jalan tomat.RT002/RW001', 'Yayok kiswantoro', 'pedagang', 'jalan tomat.RT002/001', '082248836428', 'smp it nurul yaqin kabupaten Sorong', 'Jl.Raya katapop KM 33,kel.makbusun', 2020, 1593836506, 1175454991, 25, '', 0),
('5eb0d82ecd38d', 2, 'smk1-XTKJ2', 'Muhannad Rahman Ardiansyah ', '0053115842', 'Sorong', '2004-12-19', 'Laki-laki', 'Islam', 'wni', '082198247565 ', 'Jl.Budi Utomo, Kelurahan Makbusun , Distrik Mayamuk, Kabupaten Sorong /Distrik Mayamuk, Kab.sorong, Papua Barat', 4, 'Herman.D', 'Petani', 'Tuti', 'Ibu rumah tangga', '081240623620', 'Jl.Budi Utomo, Sp 3', '', '', '', '', 'Smp Negeri 2 Kabupaten Sorong', 'Jalan Poros Katapop', 2020, 1593835316, 721539974, 55, '', 0),
('5eb0dd3e32c6f', 1, 'smk1-XAKL2', 'Elvitha Eba Mobilala', '0059059751', 'Sorong ', '2005-07-02', 'Perempuan', 'Protestan', 'wni', '082238662154', 'Jl.Basuki Rahmat KM 14/Klaurun', 1, 'Julianus Mobilala,S.hut', 'PNS', 'Rita Oka.Aidore', 'Ibu rumah tangga', '082238662154', 'Jl.Basuki Rahmat KM 14', 'Julianus Mobilala,S.hut', 'PNS', 'Jl.Basuki Rahmat KM 14', '082238662154', 'SMP N 5 kota Sorong', 'Jl.Basuki Rahmat KM 12', 2020, 1593992146, 2049464865, 47.5, '', 0),
('5eb10bb818c8f', 2, 'smk1-XTKJ1', 'JONATAN SAPUTRA KAKOMBA', '0056518678', 'BLITAR', '2005-08-02', 'Laki-laki', 'Protestan', 'wni', '082397989232', 'Jalan purama sp1,kel.Jamaimo/MARIAT,SORONG,PAPUA BARAT', 4, 'AKBAR PUTRA ', 'WIRASWASTA ', 'SRI AYU ', 'WIRASWASTA', '081335775701', 'Jl. purama sp.1,kel.jamaimo', '', '', '', '', 'SMP NEGERI 3 KABUPATEN SORONG', 'Jl.Merpati Aimas II sp.1 klamalu ', 2020, 1593832463, 117189792, 50, '', 0),
('5eb20c44678dc', 2, 'smk1-XTKJ1', 'ASYER KIDING ALLO', '0043965112', 'TANAH TORAJA', '2004-06-01', 'Laki-laki', 'Protestan', 'wni', '085254505668', 'JLN.SANDWON/AIMAS,SORONG,PAPUA BARAT', 4, 'YEHESKEL TARRAN', 'WIRASWASTA', 'DAMARIS TIKU', 'MENGURUS RUMAH TANGGA', '081240043799', 'JLN.SANDWON', '', '', '', '', 'SMP N 1 KAB.SORONG', 'Jl. Klamono Km 19 kelurahan Malagusa Distrik Alimas Kabupaten Sorong ', 2020, 1593832206, 1145623476, 45, '', 0),
('5eb217fd00858', 2, 'smk1-XAKL2', 'Fahra Anggraini', '0053108223', 'Sorong', '2005-02-23', 'Perempuan', 'Islam', 'wni', '082199167748', 'Jalan Diponegoro RK 1 RT 3 makbusun/Mayamuk, Sorong, Papua barat pilih ', 1, 'Suwadi', 'Tani', 'Irianti', 'Tani', '082199167748', 'Jalan Diponegoro RK 1 RT 3 makbusun', '', '', '', '', 'SMP negeri 2 Sorong', 'Jln. Poros katapop kelurahan makbusun distrik mayamuk ', 2020, 1593992185, 1856008841, 35, '', 0),
('5eb2a3625aa99', 2, 'smk1-XTBSM', 'Aria Prasetiyo', '0041033139', 'Sorong', '2024-09-16', 'Laki-laki', 'Islam', 'wni', '085314965634', 'Jl.Budi Utomo, Kelurahan Makbusun, Distrik Mayamuk, Kabupaten Sorong, Papua Barat/Kelurahan Makbusun, Kabupaten Sorong, Papua Barat ', 7, 'Nyamin', 'Petani', 'Parinem', 'Petani', '081248951381', ' Makbusun, Distrik Mayamuk, Kabupaten Sorong, Papua Barat', '', '', '', '', 'Smp Negeri 2 Kabupaten Sorong ', 'Jalan Poros Katapop ', 2020, 1593819503, 368512270, 30, '', 0),
('5eb374631b0a7', 1, 'smk1-XTKRO', 'JEFRI SUU', '0047393153', 'SORONG', '2003-01-29', 'Laki-laki', 'Protestan', 'wni', '082198531215', 'Cempaka sp 1/mariat / sorong/papua barat', 5, 'Sulaeiman suu', 'Swasta', 'Nunung siti', 'Ibu Rumah tangga', '+6281240017580', 'cempaka sp1', '', '', '', '', 'SMP N 3 kab sorong', 'Merpati', 2020, 1593820678, 757165514, 45, '', 0),
('5eb3746387ee9', 2, 'smk1-XTKJ1', 'SAIFUDDIN', '0059705167', 'SORONG', '2004-12-13', 'Laki-laki', 'Islam', 'wni', '082248348753', 'RAJAWALI SP1/MARIAT/SORONG/PAPUABARAT', 4, 'SUCIPTO', 'PETANI', 'KASIH', 'IBU RUMAH TANGGA', '+6282399562240', 'JL. RAJAWALI SP1', '', '', '', '', 'SMPN 3 KAB. SORONG', 'MERPATI', 2020, 1593832683, 33534043, 57.5, '', 0),
('5eb3ac094ac1e', 2, 'smk1-XTBSM', 'MUHAMMAD RIFALDI SAPUTRA', '0052935701', 'Sorong', '2005-04-07', 'Laki-laki', 'Islam', 'wni', '085205559930', 'Jalan labu unit 2 aimas /Malawele sorong papua barat', 7, 'Agus saputra', 'Swasta', 'Sur yanti', 'IRT', '085205559930', 'Jalan labu unit 2 aimas', 'Arafiq', 'Swasta', 'Jalan labu unit 2 aimas', '085205559930', 'Mts muh 02 aimas ', 'Jalan KH ahmad dahlan', 2020, 1593819947, 1635158112, 27.5, '', 0),
('5eb3d266d9faf', 2, 'smk1-XTKJ2', 'PAULUS RIANDO MONGILALA', '0057334853', 'TANGKUNEY', '2005-01-02', 'Laki-laki', 'Protestan', 'wni', '085243365906', 'JL.BUNCIS,UNIT 2/KEC.AIMAS/KAB.SORONG/PROF.PAPUA BARAT', 4, 'JENDRI JHONY MONGILALA', 'OJEK', 'DJEINIE INEKE TUELA', 'IBU RUMAH TANGGA', '082198415075', 'JL.BUNCIS,UNIT 2', '', '', '', '', 'SMPN 11 KAB.SORONG', 'JL.SAGU,MARIAT PANTAI', 2020, 1593835371, 2011154395, 52.5, '', 0),
('5eb3ec329b0de', 2, 'smk1-XTKJ1', 'Parlindungan simatupang', '0056803055', 'Toba samosir', '2005-04-08', 'Laki-laki', 'Protestan', 'wni', '', 'Jl.pura sp 1/Kecamatan mariat,kabupaten sorong,provinsi Papua Barat', 4, 'Partogi simatupang', 'Almarhum', 'Tetty pangaribuan', 'PNS', '081247347509', 'Jl.pura sp 1', '', '', '', '', 'SMPN 3 KAB.SORONG', 'Jl.merpati sp 1', 2020, 1593832582, 1790047538, 70, '', 0),
('5eb3ecc2b160a', 2, 'smk1-XTITL', 'Eko Prasetyo', '0051128582', 'Sorong', '2005-08-20', 'Laki-laki', 'Islam', 'wni', '085246625608', 'Klagulu/Malabotom/sorong/papua barat', 6, 'Suyut', 'Petani', 'Zaitun amalia', 'Ibu rumah tangga', '081248725927', 'Klagulu', '', '', '', '', 'SMP NEGERI 15', 'Magatarum kabupaten sorong', 2020, 1593826672, 1053692562, 62.5, '', 0),
('5eb3f9b98b3c3', 2, 'smk1-XTKJ2', 'Rofiq Syaifadhil', '0057066385', 'Sorong', '2005-06-09', 'Laki-laki', 'Islam', 'wni', '081343374156', 'Jl Rajawali/Dist.Mariat kabupaten Sorong', 4, 'Rokhim Mustofa', 'Petani', 'Siti Nurul Hidayati', 'Ibu rumah tangga', '082397976182', 'Jl Rajawali', '', '', '', '', 'SMP Negeri 3 Kabupaten Sorong', 'Jl Merpati sp.1 Klamalu', 2020, 1593835473, 999563757, 55, '', 0),
('5eb4bdb321093', 2, 'smk1-XTKRO', 'Andika rahmat saputra', '0057016827', 'Sorong', '2005-09-24', 'Laki-laki', 'Islam', 'wni', '', 'Jalan nusantara RT 11 / RK 3 kelurahan majaran distrik salawati/salawati / kabupaten sorong / papua barat', 5, 'Sugianto', 'Petani', 'puji lestari', 'ibu rumah tangga', '085244052801', 'jalan nusantara RT 11 / RK 3 kelurahan majaran', '', '', '', '', 'SMP PGRI kabupaten sorong', 'jalan nusantara kelurahan majaran', 2020, 1593820401, 1919829160, 57.5, '', 0),
('5eb4ddb3a8ac4', 2, 'smk1-XAKL1', 'Siti Afifah', '0058208726', 'Sorong', '2005-03-29', 'Perempuan', 'Islam', 'wni', '082198275244', 'Jln Apel/Kabupaten sorong, Papua barat', 1, 'Sugiyanto', 'Swasta', 'Saina Alwan', 'Ibu rumah tangga', '085344299680', 'Jln Apel', 'Husain Alwan', 'Swasta', 'Jln Apel', '082248160929', 'MTs Muhammadiyah 2 Aimas', 'Jln wortel', 2020, 1593991487, 1968525579, 65, '', 0),
('5eb53da82756f', 1, 'smk1-XAKL2', 'MISAEL RAMSES KAMESRAR', '0044143177', 'SORONG', '2004-12-30', 'Laki-laki', 'Protestan', 'wni', '082398510371', 'Kampung  fafi/Mariat kab sorong', 1, 'Benyamin kamesarar', 'Petani', 'Martince krimadi', 'Petani', '082398510371', 'Kampung fafi ', 'Benyamin kamesarar', 'Petani', 'Kampung fafi', '082398510371', 'SMP N.3 Kb sorong', 'Jl merpati sp 1', 2020, 1593992449, 1235802279, 37.5, '', 0),
('5eb560691fc65', 2, 'smk1-XAKL1', 'NUR HALDA', '0047760797', 'SORONG', '2004-01-31', 'Perempuan', 'Islam', 'wni', '082197822977', 'Jalan terong/Malawele/kabupaten sorong/Papua Barat', 1, 'Alm. Jalil iskandar alam', 'Tidak bekerja', 'Tursinah', 'Ibu rumah tangga', '081343418589', 'Jalan terong', '', '', '', '', 'MTs. Al Ma\'arif 1 Kab.Sorong', 'Jalan wortel', 2020, 1593991282, 249047824, 77.5, '', 0),
('5eb60465cd6e1', 1, 'smk1-XTKJ2', 'Urbanus sedik ', '0031540672', 'Sorong ', '2004-02-21', 'Laki-laki', 'katolik', 'wni', '', 'jalan intimpura km 21/Aimas / kabupaten sorong / papua barat ', 4, 'Yonas ferdinandus Sedik ', 'Petani ', 'Yosepina momo ', 'Ibu rumah tangga ', '081354091558', 'Jalan intimpura km 21', '', '', '', '', 'SMPTK DIASPORA ', 'Jalan diaspora /kelurahan mariat pantai / aimas ', 2020, 1593835617, 447086841, 57.5, '', 0),
('5eb6537c18da6', 2, 'smk1-XTKJ1', 'Aulia Nur Jannah', '0053204445', 'Sorong', '2005-06-13', 'Perempuan', 'Islam', 'wni', '082398726427', 'Banyumas/kabupaten ', 4, 'Gafar lariang ', 'Petani', 'Sutirah', 'Ibu rumah tangga', '082347867595', 'Banyumas', 'Gafar lariang', 'Petani', 'Banyumas', '082347867595', 'Mts negeri sorong', 'Menur', 2020, 1593832221, 1266858956, 45, '', 0),
('5eb66cba199f8', 2, 'smk1-XTKJ1', 'Rendy Tandi Pasauran', '0059648418', 'Sorong', '2005-04-30', 'Laki-laki', 'Protestan', 'wni', '082197634696', 'Jl.osok/Distrik Aimas/Kab.Sorong/Papua Barat', 4, 'Roy Pasauran', 'ASN', 'Elisa Lintin', 'IRT', '085244269143', 'Jl.osok', '', '', '', '', 'SMPN 1 Kab. Sorong', 'Malawili/Aimas/Sorong Papua Barat', 2020, 1593832635, 858801560, 52.5, '', 0),
('5eb6872b8c71b', 2, 'smk1-XTKJ2', 'MUHAMAD RIZQI ARDIANTO', '0059996762', 'SORONG', '2005-05-03', 'Laki-laki', 'Islam', 'wni', '082248333923', 'Jln.mawar RT 05 RW 03/Aimas/Sorong/Papua barat', 4, 'KUSNIANTO', 'Petani', 'Yulianti', 'Ibu rumah tangga', '085244467494', 'Jln.mawar RT 05 RW 03', 'AMAN SULAIMAN', 'Petani', 'Jln.mawar RT 05 RW 03', '085244467494', 'MTSN SORONG', 'Sp2 mariai', 2020, 1593835300, 927316901, 75, '', 0),
('5eb68902e5dec', 2, 'smk1-XTKJ1', 'Glenno viery pitna', '0060133464', 'Sorong', '2006-07-15', 'Laki-laki', 'Protestan', 'wni', '081343106026', 'Jln. dewi Sartika RT,05 RW,04/Salawati,kab.sorong, papua barat', 4, 'Krestian pitna', 'Kondektur bus sekolah', 'Dominggas kalahatu ', 'Ibu rumah tangga', '081343364123', 'Jln.dewi Sartika majener', '', '', '', '', 'SMP negeri 9 kabupaten Sorong', 'Jl.poros Majener', 2020, 1593832379, 619416079, 65, '', 0),
('5eb68ee23ae91', 2, 'smk1-XTKRO', 'Nurhuda umar ghozali', '0052588385', 'Kabu paten sorong', '2005-07-18', 'Laki-laki', 'Islam', 'wni', '082399182234', 'Sp1 jln. Sakura/Lancaster sorong', 5, 'Lestari', 'Buruh tani', 'Umi aisah', 'Ibu rumah tangga', '085344719571', 'Jlan sakura sp1', '', '', '', '', 'Smp negeri 3 Kab. Sorong', 'Jln. Metallica sp1', 2020, 1593820880, 597566269, 60, '', 0),
('5eb7b49414c7f', 1, 'smk1-XAKL1', 'Sergius kaliele', '0044791066', 'Tofot', '2004-06-15', 'Laki-laki', 'Protestan', 'wni', '082398187735', 'Kpr Moyo permai/Kabupaten sorong', 1, 'YAKOB KALIELE', 'PNS', 'TABITA KALFLE', 'IBU Rumah tangga', '085243199280', 'Kpr moyo permai', 'YAKOB KALIELE', 'PNS', 'Kpr Moyo permai', '082398187735', 'Smp nusantara kota sorong', 'Km 13 kota sorong', 2020, 1593991429, 1209435477, 37.5, '', 0),
('5eb7bb9024b3e', 2, 'smk1-XOTKP1', 'Hendra Darmawan Alimuddin', '0047450553', 'Sorong', '2004-05-06', 'Laki-laki', 'Islam', 'wni', '', 'Jln sagu aimas/Aimas/Aimas/Papua Barat', 2, 'Darwis Darmawan Alimuddin', 'Buruh', 'Noviazkia Angel Norlin Tangajo', 'Ibu rumah tangga', '082189800074', 'Jln sagu aimas', '', '', '', '', 'SMP N 1 KOTA SORONG', 'Jln kesehatan no.6', 2020, 1593836055, 518566687, 40, '', 0),
('5eb7e070d43a5', 2, 'smk1-XDPIB', 'FIRDAUS SULTON HADIANSYAH', '0054853963', 'TIMIKA', '2005-05-29', 'Laki-laki', 'katolik', 'wni', '081344700541', 'Jln.makam/MALASOM,AIMAS,PAPUA BARAT', 3, 'ROHMAT FATHUROZI', 'Buruh ', 'YULIANA TONAPA', 'Ibu rumah tangga', '081344871661', 'Jln.makam', '', '', '', '', 'SMPN 1 KAB.SORONG', 'Jln.klamono km 18', 2020, 1593827660, 1957008058, 42.5, '', 0),
('5eb7e4de5927a', 1, 'smk1-XAKL1', 'Thiratia wasty Meyske Alfonsina Sefle ', '0056294099', 'Sorong', '2005-05-26', 'Perempuan', 'Protestan', 'wni', '085254568261', 'Jln Terong RT/RW 001/001/Kel.malawele Distrik aimas kab.sorong provinsi papua barat', 1, 'Dekianus Sefle ', 'Swasta', 'Nur fitria k Ngutro ', 'Ibu Rumah tangga ', '085254568261', 'Jln Terong RT/RW 001/001 kel.Malawele Distrik Aimas Kab sorong ', '', '', '', '', 'SMP N 11 KABUPATEN SORONG', 'Jln Sagu kel.mariat Pantai Distrik Aimas Kab sorong ', 2020, 1593991638, 743614297, 55, '', 0),
('5eb8046412c1c', 2, 'smk1-XAKL2', 'DINDA AYU DWI PRASTIWI', '0053012040', 'BANYUWANGI', '2005-07-24', 'Perempuan', 'Islam', 'wni', '087797659190', 'Dsn. Pondok Asem RT/RW 027/005 Ds. Kedung Asri/Tegaldlimo/Banyuwangi/Jawa Timur', 1, 'Suparno', 'Wiraswasta', 'Sutami', 'Wiraswasta', '082132215070', 'Jalan Nangka, Kabupaten sorong', 'Suparno', 'Wiraswasta', 'Jalan Nangka, Kabupaten sorong', '082132215070', 'SMP NEGERI 2 TEGALDLIMO', 'Jalan Purwo kalipait, Desa Kalipait, Kecamatan Tegaldlimo', 2020, 1593992132, 50788489, 82.5, '', 0);
INSERT INTO `ppdb_archive` (`archive_id`, `id_jalur`, `class_id`, `nama_lengkap`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `kewarganegaraan`, `no_telp`, `alamat`, `kode_jurusan`, `ayah_kandung`, `pekerjaan_ayah`, `ibu_kandung`, `pekerjaan_ibu`, `telp_ortu`, `alamat_ortu`, `nama_wali`, `pekerjaan_wali`, `alamat_wali`, `telp_wali`, `asal_sekolah`, `alamat_sekolah`, `tahun_lulus`, `archive_at`, `nomor_pendaftar`, `nilai`, `file`, `is_tested`) VALUES
('5eb8c67b57f88', 2, 'smk1-XTKRO', 'JEDIKA MONTOH', '0043882850', 'Pinokalan', '2004-09-10', 'Laki-laki', 'Protestan', 'wni', '082238420874', 'KPR CENDRAWASI 2 BLOK F NO 09 JLN INTIMPURA RT 001 RW 006 kel KLASULUK/MARIAT/KOTA SORONG/PAPUA BARAT', 5, 'DARWIN MONTOH', 'BURUH BANGUNAN', 'IRNA SASOENG', 'PENGURUS RUMAH TANGGA', '081247957766', 'KPR CENDRAWASI 2 BLOK F NO 09 JLN. INTIMPURA RT 002 RW 006 KLADULUK', '', '', '', '', 'SMP N 03 KABUPATEN SORONG', 'Jln merpati sp 1', 2020, 1593820637, 118367666, 47.5, '', 0),
('5eb8fc4f7e4ac', 1, 'smk1-XDPIB', 'Vinsen kawias ', '0043527159', 'Sorong ', '2020-12-20', 'Laki-laki', 'katolik', 'wni', '082197929237', 'Jalan intimpura km 21/Aimas/ kabupaten sorong / papua barat ', 3, 'Gaspar kamat ', 'Petani ', 'Agnes assem ', 'Petani ', '081247344042', 'Jalan intimpura km 21', '', '', '', '', 'SMP negeri 3 kabupaten sorong ', 'Jalan merpati sp 1', 2020, 1593828128, 129221121, 22.5, '', 0),
('5eb925c3c48de', 1, 'smk1-XDPIB', 'NYEPITA MAGRID YEUYANAN', '0056196207', 'Doom', '2005-03-11', 'Perempuan', 'Protestan', 'wni', '082198243256', 'Jl . Nangka /Aimas kabupaten sorong papua barat', 3, 'PAULUS YEUYANAN', 'PNS', 'MARICE A SIPATA', 'Tidak ada', '082399383756', 'Jl . Nangka unit 1', '', '', '', '', 'SMPN 1 KAIMANA', 'Jl . Lettu idrus', 2020, 1593827930, 1279182205, 72.5, '', 0),
('5eb941e7b397c', 2, 'smk1-XDPIB', 'MAYANG PUSPITA SARI', '0052095078', 'Sorong', '2005-12-17', 'Perempuan', 'Islam', 'wni', '082399561089', 'Jln. Poros rk1 rw4 katapop 1/Majener Sorong Papua barat', 3, 'Sochiful', 'Suwasta', 'Suprianti', 'Ibu rumah tangga', '0813-4479-6460', 'Jln. poros rk1 rw4 katapop 1 kab.sorong Papua barat', '', '', '', '', 'SMP N.9 Kab.Sorong', 'Jln. Poros Majener Salawati Papua barat', 2020, 1593827878, 289382415, 75, '', 0),
('5eb945e9ee5c1', 2, 'smk1-XTBSM', 'SUNADI JAYA', '0062392554', 'SORONG', '2005-04-15', 'Laki-laki', 'Islam', 'wni', '082114175251', 'JLN KLAMONO KM 21/PAPUA BARAT', 7, 'Rukun santoso', 'Petani', 'Siti Roidah', 'Ibu rumah tangga', '082114175251', 'JLN KLAMONO KM 21', ' WASIAH', 'IBU RUMAH TANGGA', 'JALUR BALI', '082248226563', 'MTs MUHAMMADIYAH AIMAS 02 KAB SORONG', ' Jln Kh. Ahmad dahlan', 2020, 1593820121, 876004927, 32.5, '', 0),
('5eba208f1d6d0', 2, 'smk1-XAKL1', 'STEPANUS TANDIBAYONG', '0043893812', 'PASANG', '2004-09-20', 'Laki-laki', 'katolik', 'wni', '', 'JLN.NANGKA UNIT 1 AIMAS/MALAWILI,SORONG,PAPUA BARAT', 1, 'ANTONIUS DUMA\'', 'PETANI', 'APRIANI RURUK', 'IBU RUMAH TANGGA', '082198911188', 'JLN.NANGKA UNIT 1 AIMAS', '', '', '', '', 'SMP NEGERI 3 KABUPATEN SORONG', '', 2020, 1593991602, 1438669341, 50, '', 0),
('5eba7b872e966', 2, 'smk1-XTITL', 'Yehezkiel Tombi', '0057372784', 'Sorong', '2020-01-02', 'Laki-laki', 'Protestan', 'wni', '081344821911', 'Aimas,Jlr Bali,Jln Rambutan/Aimas,Kabupaten Sorong, Provinsi Papua Barat', 6, 'Elya Tombi', 'Karyawan Swasta', 'Martha Baso Lasang', 'Ibu Rumah Tangga', '081344921911', 'Aimas,Jlr Bali,Jln Rambutan', '', '', '', '', 'Smp N 1 Kab Sorong', 'Jln Klamono KM 19', 0000, 1593827161, 1253649705, 42.5, '', 0),
('5ebb667434339', 2, 'smk1-XAKL1', 'April Sisilia Erawati Tharob', '0052190626', 'Sorong', '2005-04-25', 'Perempuan', 'katolik', 'wni', '081344430452', 'Jl.p.sulawesi, kampung baru/Provinsi Papua barat,sorong', 1, 'Natalius Tharob', 'Swasta', 'Vivi singkoh', 'IRT', '081344417722', 'Jl.p.sulawesi, kampung baru', 'I Gede Adyana', 'PNS', 'Jl.juanda RT.02 RW.03 Majener', '081344140204', 'SMP N 9 KAB.SORONG', 'Jl.poros katapop,majener', 2020, 1593990896, 838649037, 62.5, '', 0),
('5ebba3d916f09', 0, 'smk1-XOTKP2', 'Marsya mahu', '0055402190', 'Wakal', '2005-10-21', 'Perempuan', 'Islam', 'wni', '082399698477', 'JL.FLAMBOYAN/AIMAS/SORONG/PAPUA BARAT', 2, 'Hamit mahu', 'Wiraswasta', 'Aisa wael', 'Ibu rumah tangga', '082399698477', 'Aimas', 'Iin hamid', 'Ibu rumah tangga', 'Aimas', '082399698477', 'SMP N 3 KABUPATEN SORONG', 'Jl merpati sp 1', 2020, 1593837299, 2103117196, 35, '', 0),
('5ebba928b09f2', 2, 'smk1-XAKL2', 'Agung alfian', '0051814605', 'Sorong', '2005-01-01', 'Laki-laki', 'Protestan', 'wni', '085254423424', 'Jalan terong/Aimas,sorong,papua barat', 1, 'Amin', 'Petani', 'Adonia pariama', 'Ibu rumah tangga', '085254535076', 'Jalan terong', '', '', '', '', 'Smp negeri 11 kabupaten sorong', 'Mariat panatai, jalan sagu', 2020, 1593992047, 666938236, 70, '', 0),
('5ebbd50999b52', 2, 'smk1-XOTKP2', 'NAJWA NUR FATIMAH', '0068300811', 'Sorong', '2005-06-13', 'Perempuan', 'Islam', 'wni', '081343047409', 'Jalan Cianjur sp 1/Mariat/aimas /Papua barat', 2, 'Dadan juanda', 'Petani', 'Dede Suryani', 'Ibu rumah tangga', '082198594601', 'Jalan Cianjur sp 1', '', '', '', '', 'Mts roudlotul khuffadz', 'jalan wortel lorong kakak tua aimas unit 2', 2020, 1593837375, 445219548, 47.5, '', 0),
('5ebc12211b0cb', 1, 'smk1-XTITL', 'Yansen s sefle', '0032618822', 'Sorong', '2004-01-29', 'Laki-laki', 'Protestan', 'wni', '', 'Jln.sukarno/Mayamuk,sorong\'pb', 6, 'Yonas.s sefle', 'Petani', 'Feransina lokden', 'Ibu rumah tangga', '082197932551', 'Jln.sukarno', '', '', '', '', 'Smpn.2kabsorong', '', 2020, 1593827129, 345758453, 35, '', 0),
('5ebca99bdf534', 2, 'smk1-XTITL', 'Fransius manullang', '0045039543', 'Kab.sorong unit 1', '2004-11-16', 'Laki-laki', 'katolik', 'wni', '081363832758', 'Unit 1 jlr.bali jln.rambutan/Aimas/Kab.sorong/provinsi papua barat', 6, 'Sarminton manullang', 'Wirasuasta', 'Romian pandiangan', 'Ibu.rumah.tangga', '081247742499', 'Unit.1 Jlr.bali jln.rambutan', '', '', '', '', 'SMPN 1 kab.sorong', 'Jln.klamono km.18', 2020, 1593826690, 1419077413, 25, '', 0),
('5ebcb3fdae297', 2, 'smk1-XTKJ1', 'MUHAMMAD.ZHAKY.BASRI', '0031004446', 'SORONG', '2004-03-08', 'Laki-laki', 'Islam', 'wni', '082239381061', 'Jln.lobak/KAB.SORONG', 4, 'JHONY.BASRI', 'Suasta', 'SITTI HALIMA KASTELLA', 'Ibu rumah tangga', '082239381061', 'Jln.Lobak', '', '', '', '', 'SMPN 1 KAB.SORONG', 'Jl.klamono KM. 19 Aimas kabupaten sorong', 2020, 1593832526, 2068094124, 45, '', 0),
('5ebcc0cbf276a', 2, 'smk1-XTBSM', 'IRFANTO', '0044901632', 'FAK-FAK', '2020-10-25', 'Laki-laki', 'Islam', 'wni', '081240254404', 'klalin1/kabupaten aimas', 7, 'samsul', 'kuli bangunan', 'harisa', 'tidak berkerja', '082399507414', 'klalin1', 'samsul', 'kuli bangunan', 'klalin1', '', 'Mts muhammadiyah02', 'jln wortel', 2020, 1593819682, 2064002838, 20, '', 0),
('5ebcd186ad52d', 2, 'smk1-XTKJ2', 'MARIO.MUGAMA', '0052397935', 'MANADO', '2005-05-14', 'Laki-laki', 'Protestan', 'wni', '081356971196', 'Jln.lobak/KAB.SORONG', 4, 'AGUSTINUS MUGAMA', 'BURUH', 'MARYANTI', 'RUMAH TANGGA', '081356971196', 'Jln.lobak', '', '', '', '', 'SMPN 1 KAB.SORONG', 'Jl.Klamono KM. 19 Aimas Kabupaten Sorong', 2020, 1593833228, 1568317993, 45, '', 0),
('5ebcd6e219f3e', 2, 'smk1-XAKL2', 'Maftuhah dian irfani', '0056261901', 'Sorong', '2005-03-02', 'Perempuan', 'Islam', 'wni', '082248320650', 'Jl. Lobak aimas unit 2/Aimas/ Sorong/ Papua Barat', 1, 'Putut sudarmaji', 'Tukang ojek ', 'Dwi indriasari', 'Ibu rumah tangga', '081248865338', 'Aimas unit 2', 'Putut sudarmaji ', 'Tukang ojek', 'Jl. Lobak aimas unit 2', '081248865338', 'Smp Muhammadiyah Aimas', 'Jl. KH. Ahmad Dahlan No. 4', 2020, 1593992316, 2079042548, 90, '', 0),
('5ebce2e6b7ac5', 2, 'smk1-XTBSM', 'Petra s.c.lewotoby', '0051390818', 'BABO', '2005-07-14', 'Laki-laki', 'Protestan', 'wni', '082248677296', 'Jln.wortel /Aimas kabsorong papuabarat', 7, 'Jhon lewotoby', 'Petani', 'Pujiani lewotoby', 'Petani', '082248677296', 'Jaln wortel', '', '', '', '', 'Smpn 11 kabsorong', '', 2020, 1593820038, 149668935, 27.5, '', 0),
('5ebce9931b4bf', 2, 'smk1-XAKL1', 'Wahyu desi nur amalia', '0043880439', 'Sorong ', '2004-12-09', 'Perempuan', 'Islam', 'wni', '082248630097 ', 'Jalan salak RT 2 RW 2/Papua barat', 1, 'Sugiono', 'Petani', 'Sunarmi', 'Mengurus Ibu rumah tangga', '082399142599', 'Jalan salak RT 2 RW 2', 'Sarijan', 'Pedagang', 'Aimas, jalan cempedak', '082239418231', 'SMP N. 15 Kab Sorong', ' kampung malasigit', 2020, 1593991825, 391235052, 42.5, '', 0),
('5ebce9c020433', 2, 'smk1-XTKJ2', 'Abraham Ehyal Asvanson Saptenno', '0063277714', 'Surabaya', '2006-04-27', 'Laki-laki', 'Protestan', 'wni', '082399511435', 'Kampung Malafolon Jl. Intimpura/Distrik Sorong, Kabupaten Sorong, Papua Barat', 4, 'Irvan Saptenno', 'Swasta', 'Astriyanti', 'Ibu rumah tangga', '082399511435', 'Kampung Malafolon Jl. Intimpura', '', '', '', '', 'SMPN 2 Sorong', 'Jl. D. Singkarak, Rufei', 2020, 1593832953, 78026612, 82.5, '', 0),
('5ebcf98eef7ae', 2, 'smk1-XTBSM', 'Nicky poluakan', '0039476922', 'Sorong', '2003-11-12', 'Laki-laki', 'Islam', 'wni', '082271220511', 'Jln poros majaran/Salawati/Sorong/Papua barat', 7, 'Alm Arnold Alvon poluakan ', 'Swasta', 'Indriani', 'Ibu rumah tangga', '082197969399', 'Jln poros majaran', 'Galuh ApriYanto', 'Swasta', 'Jln poros majaran', '082198063269', 'SMPN  9 kab Sorong', 'Majener', 2020, 1593820017, 592427869, 50, '', 0),
('5ebcfaff4ed58', 2, 'smk1-XTKRO', 'Muhammad Fahri', '0055806822', 'Sorong', '2005-05-13', 'Laki-laki', 'Islam', 'wni', '082239689418', 'Majener/Salawati/Sorong/Papua barat', 5, 'Juliarto', 'Petani', 'Suliswati', 'Ibu rumah tangga', '082143543337', 'Majener', 'Juliarto', 'Petani', 'Majener', '081240070359', 'SMPN9 kab Sorong ', 'Mejener', 2020, 1593820806, 976450011, 55, '', 0),
('5ebd161e166bf', 2, 'smk1-XAKL2', 'SITI AZIZAH NUR KHASANAH ', '0050718339', 'SORONG', '2020-05-29', 'Perempuan', 'Islam', 'wni', '082199913922', 'JLN. INTIMPURA/Aimas/Sorong/irian jaya', 1, 'Sampiono', 'Petani', 'Mardiyanti', 'Ibu rumah tangga', '081344270781', 'JLN intimpura', '', '', '', '', 'Mts N sorong', 'JLN Menur sp 2', 2020, 1593992831, 936892667, 27.5, '', 0),
('5ebd1c6474eaa', 2, 'smk1-XDPIB', 'Sandi Kurniawan', '0059268558', 'Sorong', '2005-05-18', 'Laki-laki', 'Islam', 'wni', '082399141806', 'Jl durian/Papua barat', 3, 'Siman', 'Karyawan swasta', 'Siti asrifah', 'Karyawan swasta', '085197195830', 'Jl durian', 'Siman', 'Karyawan swasta', 'Jl durian', '085197195830', 'Mts Al Ma\'arif', 'Jl wortel', 2020, 1593828047, 830275956, 40, '', 0),
('5ebd365118c65', 1, 'smk1-XOTKP1', 'Patrisia Roswati Blesia', '0052398444', 'Sorong', '2020-07-14', 'Perempuan', 'Protestan', 'wni', '081247267564', 'Jln lobak Rt 02 Rw 04/Aimas kab sorong povisi papua barat', 2, 'Mauris Blesia', 'Tani', 'Anike Sefle', 'Tani', '082399362120', 'Jln lobak Rt/Rw : 02/04 kel malasom', '', '', '', '', 'SMP N 11  Kab Sorong', 'Jl Sagu Mariat Pantai Distrik aimas ', 2020, 1593836466, 1312585120, 40, '', 0),
('5ebd92581e022', 2, 'smk1-XTKRO', 'RAHMAT ADITYA SIAUTA', '0055108445', 'Sorong', '2005-06-02', 'Laki-laki', 'Islam', 'wni', '082398886397', 'Jl.Terong RT 03 RW 01 MALAWELE/Aimas/Sorong/Papua Barat', 5, 'Zainudin Prayoga Siauta', 'Buruh ', 'Wartini', 'Ibu rumah tangga', '082398886397', 'Jl.Terong RT 03 RW 01 MALAWELE', '', '', '', '', 'MTs.Al-Ma\'arif 1 Kab.Sorong', 'Jl.Wortel', 2020, 1593820919, 147653663, 52.5, '', 0),
('5ebd9f117598e', 2, 'smk1-XTKJ1', 'Novel Adil Dwijaksana', '0123456789', 'Sorong', '2004-11-24', 'Laki-laki', 'Islam', 'wni', '082226249908', 'Jl. Wortel/Malasom', 4, 'Mesradi', 'Petani', 'Sugiyanti', 'Ibu Rumah Tangga', '082226249908', 'Jl. Wortel', '', '', '', '', 'MTs', 'Jl. KH. Ahmad Dahlan No. 01', 2020, 1594197041, 1831667223, 27.5, '', 0),
('5ebddee6c3b25', 2, 'smk1-XTKJ1', 'Yosua Yance Hode', '0055071194', 'Sorong', '2006-10-14', 'Laki-laki', 'Protestan', 'wni', '082238349719', 'Jln.TUTWURI/Distrik.AIMAS Kab.SORONG Provinsi.PAPUA BARAT', 4, 'Yance N Hode', 'Ojek', 'Alisye.P.Palla', 'Ibu Rumah Tangga', '082399293565', 'Jln.Tutwuri Kab.Sorong', '', '', '', '', 'SMP N 1 KAB.SORONG', 'JLN.KLAMONO KM.19 MALAWILI AIMAS KAB.SORONG PAPUA BARAT', 2020, 1593832755, 1412435887, 62.5, '', 0),
('5ebde0ef43b97', 2, 'smk1-XTITL', 'Agung aji saputra', '0047517578', 'Sorong', '2004-11-16', 'Laki-laki', 'Islam', 'wni', '085254511280', 'Jl. Lokulo/Mayamuk/ sorong/ papua barat', 6, 'Nursaid', 'Petani', 'Katiyem', 'IRT', '085244302993', 'Jl. Lokulo', 'Ida sugiyati', 'Guru', 'Jl. Lokulo', '', 'SMPN 2 KAB. SORONG', 'Jl. Poros katapop aimas 2 unit 3 makbusun.', 2020, 1593826464, 1424175089, 37.5, '', 0),
('5ebdf58d66199', 2, 'smk1-XTKRO', 'ARDHI PRATAMA SAPUTRA', '0054147754', 'Sorong', '2005-09-05', 'Laki-laki', 'Islam', 'wni', '082198304040', 'Aimas Unit 2 jalan kentang/Kab.sorong', 5, 'Warman Saputra', 'Tambang nicel', 'Wa santi', 'Ibu rumah tangga', '081344201628', 'Jln kentang unit 2', '', '', '', '', 'SMPN 1 KAB.SORONG', 'Klamono kilometer 18', 2020, 1593820488, 700972586, 45, '', 0),
('5ebdfb565b459', 2, 'smk1-XTITL', 'Wahyu dimas AN', '31680086', 'Sorong Papua barat', '2005-05-15', 'Laki-laki', 'Islam', 'wni', '085254525505', 'Sisipan Makotyamsa JL. STHIL RT12 RW6/Makotyamsa/Sorong/Papua barat', 6, 'Puguh Waskito', 'Petani', 'Miswati', 'Ibu rumah tangga', '081343387833', 'Sisipan makotyamsa JL. STHIL RT12 RW6', 'Puguh waskito', 'Petani', 'Sisipan makotyamsa JL. STHIL RT12 RW6', '081343387833', 'SMP PGRI', 'JL. NUSANTARA', 2020, 1593827084, 675959004, 47.5, '', 0),
('5ebdfeb929421', 1, 'smk1-XAKL2', 'Novena turot', '0045989912', 'Sorong', '2003-05-24', 'Perempuan', 'katolik', 'wni', '082238143889', 'Jln sorong klamono km 32/Aimas,sorong,papua barat', 1, 'Benediktus Turot', 'Petani ', 'Sarce korain', 'Petani', '082238143889', 'Jln sorong klamono km 32', 'Fransiskus xaverius Turot', 'Petani ', 'Jln sorong klamono km 32', '082198076077', 'SMP N 25', 'Kelurahan mariat gunung', 2020, 1593992508, 1851356115, 47.5, '', 0),
('5ebe08333a3b7', 1, 'smk1-XTKRO', 'Yosep Yes Taa', '0037206800', 'Sorong', '2003-11-12', 'Laki-laki', 'katolik', 'wni', '085243600706', 'Jln sorong klamono km 32/Aimas sorong papua barat', 5, 'Fincesius taa', 'Petani', 'Agnes turot', 'Ibu rumah tangga', '085243600706', 'Jln sorong klamono km 32', 'Yanpiter taa', 'Petani', 'Jln sorong klamono km 32', '085243600706', 'SMP N 25 kab sorong', 'Jln sorong klamono km 32 kelurahan-mariat gunung', 2020, 1593821058, 552838119, 37.5, '', 0),
('5ebe0fc66744d', 1, 'smk1-XTITL', 'Korneles taa', '0061563536', 'Sorong', '2006-03-02', 'Laki-laki', 'katolik', 'wni', '085243600706', 'Jln sorong klamono km 32/Aimas sorong papua barat', 6, 'Fincesius taa', 'Petani', 'Agnes turot', 'Ibu rumah tangga', '085243600706', 'Jln sorong klamono km 32', 'Yanpiter taa', 'Petani', 'Jln sorong klamono km 32', '085243600706', 'SMP N 25 kab sorong', 'Jln sorong klamono km 32 kelurahan mariat gunung', 2020, 1593826791, 1411979643, 52.5, '', 0),
('5ebe1624d2724', 1, 'smk1-XTITL', 'Imanuel turot', '0045881920', 'Ayawasi', '2002-10-01', 'Laki-laki', 'katolik', 'wni', '081344752867', 'Jln sorong klamono km 32/Aimas, sorong,papua barat', 6, 'Marius turot', 'Petani', 'Susana saud', 'Petani', '081344752867', 'Jln sorong klamono km 32', 'Feransixkus xaverius turot', 'Petani', 'Jln sorong klamono km 32', '081344752867', 'SMP N 18 KB SORONG', 'Jln sorong klamono km 42', 2020, 1593826758, 1421432368, 52.5, '', 0),
('5ebe172c0fc80', 2, 'smk1-XTITL', 'Muhammad zacky assidiq', '0056183786', 'Sorong', '2020-09-06', 'Laki-laki', 'Islam', 'wni', '085243706636', 'Jalan Herlina,SP3/Kabupaten Sorong', 6, 'Muhammad ma\'mun', 'Swasta', 'Marini duma', 'Tidak ada', '082248269501', 'Jalan Herlina,SP3', '', '', '', '', 'Mts negeri', 'Jl.basuki Rahmat no.40', 2020, 1593826894, 483364865, 47.5, '', 0),
('5ebe1a5c3d74c', 1, 'smk1-XTITL', 'agustinus taa', '0019130104', 'Sorong', '2001-08-03', 'Laki-laki', 'katolik', 'wni', '085254562911', 'Jln sorong klamono km 32/Aimas, sorong,papua barat', 6, 'Marius taa', 'Petani', 'Selliy turot', 'Petani', '085254652911', 'Jln sorong klmono km 32', 'Fransixkus taa', 'Pelajar', 'Jln sorong klamono km 32', '085254562911', 'SMP N 25 KABUPATEN SORONG', 'Jln sorong klamono', 2020, 1593826566, 410306919, 35, '', 0),
('5ebe26478af70', 2, 'smk1-XTKJ2', 'Rafli Triono Prakoso', '0055456192', 'Sorong', '2005-08-18', 'Laki-laki', 'Islam', 'wni', '082239226818', 'Jl. Lumba-lumba, rt 02 rw 04/Kel. Klamasen dis. Mariat Kabupaten Sorong', 4, 'Dumadi', 'Tani', 'Isnaeni', 'Ibu rumah tangga', '081247726298', 'Jl. Lumba-lumba rt. 02 rw. 02,kel.Klamasen dis. Mariat, Kabupaten Sorong', '', '', '', '', 'SMP N 3 Kabupaten Sorong', 'Jl. Merpati, sp 1, kel. Klamalu kabupaten sorong', 2020, 1593835394, 1643412640, 50, '', 0),
('5ebe4ef54d8a0', 1, 'smk1-XDPIB', 'Vicky Lektor kalaibin', '0054991175', 'Aimas', '2020-05-22', 'Laki-laki', 'Protestan', 'wni', '082399174352', 'Jln.kalain/Kabupaten Sorong', 3, 'Harun kalaibin', 'Swasta', 'Selina kalasuat', 'Ibu rumah tangga', '082399174352', 'Jln klalin', 'Sargius kalaibin', 'Swasta', 'Jln klalin', '082399174352', 'SMP negeri 1kab.sorong', 'Jln.sorong klamono', 2020, 1593828112, 757795918, 35, '', 0),
('5ebf2bcece203', 1, 'smk1-XAKL2', 'MARSELINO YANCE MOMOT', '0049496664', 'Sorong', '2004-03-02', 'Laki-laki', 'Protestan', 'wni', '081344297377', 'Jl Intipura/Mariat pantai/Sorong/Papua Barat', 1, 'Marinus Momot', 'PNS', 'Welmina.y.pariri', 'Ibu rumah tangga', '082398587795', 'Jl.intipura', '', '', '', '', 'SMP Muhamadya Aimas ', 'K.h ahmad dahlan', 2020, 1593992338, 911490370, 50, '', 0),
('5ebf5611dea18', 1, 'smk1-XOTKP2', 'ELISABETH MILKA BLESIA', '0052935289', 'SORONG', '2005-06-01', 'Perempuan', 'Protestan', 'wni', '081247420179', 'JL.GAMBAS /AIMAS /SORONG /PAPUA BARAT', 2, 'DAVID NAFTALI BLESIA', 'TANI ', 'YENY YOLANDA OSMONDO', 'IBU RUMAH TANGGA ', '081247420179', 'JL. GAMBAS', 'DAFID NAFTALI BLESIA', 'TANI', 'JL.GAMBAS', '081247420179', 'SMP N  11', 'MARIAT PANTAI  JLN .NANGKA', 0000, 1593836913, 491374229, 32.5, '', 0),
('5ebf5aca274e7', 2, 'smk1-XOTKP1', 'Dwi rahayu ningsih wasolo', '055523356', 'Sorong', '2005-02-09', 'Perempuan', 'Islam', 'wni', '082398942879', 'Aimas unit 2 jln.bayam/Aimas, sorong, papua barat', 2, 'Supandi wasolo', 'Swasta', 'Nurdewanti sasabone', 'Pedagang', '082398942879', 'Aimas unit 2 jln.bayam', '', '', '', '', 'Smp muhammadiyah aimas', 'Jln. K. H Ahmad Dahlan No. 1', 2020, 1593835918, 1192059848, 70, '', 0),
('5ebf95911af96', 1, 'smk1-XOTKP1', 'SAHRUL RAMADAN MACAP', '0041164083', 'Katapop ', '2004-10-29', 'Laki-laki', 'Islam', 'wni', '082238664261', 'Aimas jln.perkutut/Malawele,sorong,papua barat', 2, 'RIZAL MACAP', 'Petani', 'NUR AISYAH TOMANIMA', '-', '082238270080', 'Katapop', '', '', '', '', 'SMPN 9 KAB.SORONG', 'Katapop 1', 2020, 1593836562, 1957521367, 60, '', 0),
('5ebfac9c5aa52', 1, 'smk1-XDPIB', 'DEVIS MENEK RIRION YEWEN', '0049264506', 'Sorong', '2004-12-29', 'Laki-laki', 'katolik', 'wni', '081344597270', 'Jalan kafuk/klamalu sorong papua barat', 3, 'Bernadus Yewen', 'petani', 'Karolina Yewen', 'petani', '085254525394', 'jalan kafuk', '', '', '', '', 'SMP N.3 Kab.sorong', 'jalan merpati', 2020, 1593827601, 1998498369, 35, '', 0),
('5ebfaea4f100d', 2, 'smk1-XTKJ1', 'Rahmat Dwi Cahyo', '0057894991', 'Asiki', '2005-09-10', 'Laki-laki', 'Islam', 'wni', '081240263348', 'Jalan wortel/Malawele,kabupaten Sorong,Papua barat', 4, 'Suparjo', 'Petani', 'Mariyani', 'Ibu rumah tangga', '085244094480', 'Jalan wortel', '', '', '', '', 'MTS muhamadiyah 2 aimas', 'Jalan kH Ahmad Dahlan', 2020, 1593832617, 960249452, 60, '', 0),
('5ebfe0a66b31b', 2, 'smk1-XTBSM', 'Heldi tonglo', '0022760120', 'Baruppu\'', '2002-09-20', 'Laki-laki', 'Protestan', 'wni', '082283234744', 'Jln osok/Aimas/sorong/papua barat', 7, 'Markus sumongga', 'Swasta', 'Elisabeth bura', 'Pns/guru', '081248702329', 'Jln osok', '', '', '', '', 'Smp 1 rindingallo', 'Pangala\'rindingallo', 2019, 1593819654, 1686943637, 30, '', 0),
('5ec079ae18ceb', 2, 'smk1-XDPIB', 'RENGGA ADITIA DARMAWAN', '0027646360', 'Sorong', '2006-01-02', 'Laki-laki', 'Islam', 'wni', '085270220738', 'Jl.  sidomulyo Katapop 2 majaran/Salawati/Kab.Sorong/Papua Barat', 3, 'Suprapto', 'Tani', 'Siti Saodah', 'Mengurus Rumah Tangga', '085254083659', 'Jl.  Sidomulyo Katapop 2 Majaran', '', '', '', '', 'SMP Negeri 09 Kabupaten Sorong', 'Jl.  Poros Katapop 1', 2020, 1593827976, 1950768109, 70, '', 0),
('5ec07d261e9d4', 2, 'smk1-XOTKP1', 'ENJELINA KABRAHANUBUN', '0039341350', 'TUAL', '2003-04-17', 'Perempuan', 'katolik', 'wni', '081248656607', 'JLN MERPATI/PAPUA BARAT', 2, 'MARIUS KABRAHANUBUN', 'TIDAK BERKERJA', 'AGUSTINA HAN', 'IBU RUMAH TANGGA', '081354151391', 'JLN MERPATI', 'ENJELINA KABRAHANUBUN', 'PETANI', 'JLN MERPATI', '081248656607', 'SMPN3 KAB.SORONG', 'JLN MERPATI', 2020, 1593835970, 1044720009, 25, '', 0),
('5ec08f21a8d58', 1, 'smk1-XDPIB', 'Martinus Frisa', '0046822173', 'wenslolo', '2005-08-16', 'Laki-laki', 'Protestan', 'wni', '081343147636', 'wenslolo/Distrik Salkma Kab Sorong Selatan', 3, 'Yusuf Frisa', 'Tani', 'Yuliana Saflafo', 'PNS', '082194493879', 'Wenslolo', '', '', '', '', 'Smp Negeri 1Sawiat kab. Sorong Selatan', 'Jl.Raya..Sorong..Teminabuan', 2020, 1593827863, 1904429776, 35, '', 0),
('5ec091af07f3e', 2, 'smk1-XTKJ2', 'Alfa Riegel Imanuel Ponggohong', '0054303024', 'Sorong', '2005-04-30', 'Laki-laki', 'Protestan', 'wni', '082326233861', 'Jln soekarno RT 4 RW 6/Mayamuk/kab sorong/papua barat', 4, 'Mans Ponggohong', 'Sopir', 'Deyske Saertje Dumais', 'PNS', '081248785395 ', 'Jln soekarno', '', '', '', '', 'SMP NEGRI 2 KAB SORONG', 'Jln poros katapop', 2020, 1593835573, 1250684360, 45, '', 0),
('5ec0dc7923e71', 1, 'smk1-XOTKP2', 'Junita sedik', '0034289611', 'Sorong', '2003-06-06', 'Perempuan', 'katolik', 'wni', '081344490673', 'Jln intimpura km 21/Aimas/ kabupaten Sorong / Papua barat', 2, 'Daniel Sedik', 'PNS ', 'Maria fatie', 'Petani ', '085254140773', 'Jln intimpura km 21', '', '', '', '', 'SMP negeri 11 kabupaten Sorong', 'Jln sagu mariat pantai', 2020, 1593837239, 254512790, 35, '', 0),
('5ec10645ed891', 1, 'smk1-XOTKP2', 'AKNES HERLINA KRENAK', '0041024042', 'WALIAM', '2004-09-13', 'Perempuan', 'Protestan', 'wni', '085254039122', 'Waliam/Salawati Tengah Kabupaten Sorong', 2, 'YUSUP KRENAK', 'PETANI', 'MINCE WALIM', 'IBU RUMAH TANGGA', '085254039122', 'WALIAM ', '', '', '', '', 'SMP NEGERI 28 ', 'SALAWATI TENGAH KABUPATEN SORONG', 2020, 1593836824, 972380742, 70, '', 0),
('5ec1eb4635c4a', 2, 'smk1-XTBSM', 'Rizal antanugraha', '0047374988', 'Sulawesi', '2004-05-26', 'Laki-laki', 'Islam', 'wni', '082239994362', 'Kampung klasof/Moisigen/sorong/papua barat', 7, 'Patta bolong', 'Swasta', 'Sulestina', 'Ibu rumah tangga', '0822-3874-0483', 'Kampung klasof', '', '', '', '', 'SMP. N. 14 kab. Sorong', 'Kampung klasari', 2020, 1593820054, 1128528797, 15, '', 0),
('5ec1ed475384b', 2, 'smk1-XOTKP2', 'CHANNEL SARI TARUKAN', '0055719541', 'Sorong', '2005-04-28', 'Laki-laki', 'katolik', 'wni', '081247373943', 'Jalan merpati/Kabupaten sorong provinsi papua barat', 2, 'sunyiar Sari Tarukan', 'Guru', 'Abigael Banne Tasik', 'Ibu rumah tangga', '081286726319', 'Jalan merpati', '', '', '', '', 'SMP Negeri 3 kab sorong', 'Jalan merpati', 2020, 1593836843, 2035776249, 27.5, '', 0),
('5ec1ff27ba0d3', 2, 'smk1-XTITL', 'Muhamad Abdul ghoni', '0052006715', 'Sorong/Papua barat', '2005-06-16', 'Laki-laki', 'Islam', 'wni', '081248940213', 'Rk3/jln anugrah/Kabupaten', 6, 'Samdi', 'Tani', 'Supiyah', 'Ibu rumah tangga', '081248940213', 'Rk3/jln anugrah', 'Syarifudin', 'Kepala kampung', 'Sp4 klasmelek', '', 'Mts al-ma\'arif 2', 'Jln ponogito', 2020, 1593826881, 1456001429, 32.5, '', 0),
('5ec2493d89dea', 1, 'smk1-XAKL1', 'Maxsimus Ball', '0065404823', 'Favenembu', '2006-03-16', 'Laki-laki', 'katolik', 'wni', '081346679210', 'Jln.terong/Aimas,Kab.Sorong,Papua Barat', 1, 'Celsius Ball', 'Petani', 'Fransina Sam', 'Petani', '08124798773o', 'Tatakra', 'Karolus Syufi', 'Petani', 'Jln.terong', '082238736101', 'SMP YPPK SEMINARI PETRUS van DIEPEN', 'Jln.Melati mariat pantai Aimas kab.Sorong', 2020, 1593991180, 952004968, 45, '', 0),
('5ec267f81efb5', 2, 'smk1-XAKL1', 'Heidy tetetissa', '0059897298', 'Ambon', '2005-08-03', 'Perempuan', 'Protestan', 'wni', '081340302867', 'aimas jlr D Jln cempedak/Aimas/sorong/papua barat', 1, 'Roy teterissa', 'Swasta', 'Herlina taroreh', 'Ibu rumah tangga', '081340302867', 'Aimas jlr d,jln cempedak', '', '', '', '', 'SMP NEGRI 1 KABUPATEN SORONG', 'Jalan klamono km,19 malawili,aimas,sorong', 2020, 1593991047, 53130631, 30, '', 0),
('5ec282a848404', 0, 'smk1-XTBSM', 'Candra agus wibowo', '0036296525', 'Demak', '2003-08-18', 'Laki-laki', 'Islam', 'wni', '082399752494', 'Jln intimpura/Ainas sorong papua barat', 7, 'Achlis sofiandi', 'Patani', 'Siti zaenab', 'Ibu rmh tangga', '082399752494', 'Jln intimpura ', '', '', '', '', 'Mts.n sorong', 'Sp2 jln menur', 2020, 1593819550, 1978335244, 47.5, '', 0),
('5ec2f8a07e40d', 1, 'smk1-XTITL', 'Nimbrot kamesrar', '0052766173', 'Sorong', '2003-07-23', 'Laki-laki', 'Protestan', 'wni', '081247151806', 'Jln poros katapop/Makbusun/sorong/papua barat', 6, 'Markus kamesrar', 'Petani', 'Monike krimadi', 'Ibu rumah tangga', '081247151806', 'Jln.poros katapop', '', '', '', '', 'Smpn2', '', 2020, 1593826914, 1118290355, 32.5, '', 0),
('5ec30b75157b3', 1, 'smk1-XOTKP2', 'Sandrina thabita tiblola', '0052190647', 'Sorong', '2005-08-31', 'Perempuan', 'Protestan', 'wni', '082198304609', 'Jl.H.watem kpr mazuin/Klawurung,sorong,papua barat', 2, 'Agustinus .saebra .tiblola', 'Supir', 'Rentina purba', 'Ibu rumah tangga', '082198304609', 'Jl h watem kpr mazuin', 'Primangningtyas mundingarum', '', '', '', 'Smp ypk mutu mawolokmai', 'Jl enau kb aimas', 2020, 1593837475, 1013023111, 27.5, '', 0),
('5ec31f64175e2', 1, 'smk1-XOTKP2', 'Risat ovaldo.syufan', '005167737', 'Disfra', '2005-11-20', 'Laki-laki', 'Protestan', 'wni', '081248824419', 'Kampung Bagun /Kecamatan Bagun kabupaten Sorong propinsi Papua barat ', 2, 'Naftali syufan', 'Tani ', 'Dina syalubu ', 'Tani ', '085244462401', 'Kampung bagun', '', '', '', '', 'SMP negeri 27 kabupaten Sorong ', 'Kampung Bagun ', 2020, 1593837461, 1174461133, 37.5, '', 0),
('5ec3388f18713', 1, 'smk1-XOTKP1', 'YULIANTI SYATMIS', '0035183887', 'SORONG', '2003-07-14', 'Perempuan', 'Protestan', 'wni', '085343711032', 'Jln. Intimpura/Mariah pantai/Sorong/Papua Barat', 2, 'SPENYER SYATMIS', 'Petani', 'SARAH MEDER', 'Ibu Rumah Tangga', '082197809372', 'Jln. Intimpura', 'SABET MLASMENE', 'Ibu Rumah Tangga', 'Jln. Intimpura', '085254196612', 'SMP negeri 11.kab.sorong', 'Jln.Sagu', 2020, 1593836660, 1328600062, 40, '', 0),
('5ec33d1f27a89', 2, 'smk1-XTBSM', 'Salmon sasior', '0038395395', 'Sorong', '2004-09-26', 'Laki-laki', 'katolik', 'wni', '0855254446388', 'Jl.intimpura/aimas/sorong/papua barat', 7, 'Pius sasior', 'petani', 'karolina fatemyo', 'petani', '085254446388', 'jl.intimpura', '', '', '', '', 'Smp diaspora', 'jl.diaspora', 2020, 1593820072, 605636505, 32.5, '', 0),
('5ec33f2489253', 1, 'smk1-XTKRO', 'Yohanis falentinus sasior', '0033968384', 'Sorong', '2004-10-29', 'Laki-laki', 'katolik', 'wni', '082399711619', 'Jalan intimpura/Aimas sorong papua barat ', 5, 'Samuel sasior', 'Swasta', 'Triani asmuruf', 'PNS', '082399711619', 'Jalan intimpura', '', '', '', '', 'SMP  Negeri 2 Teminabuan', 'Jalan Brawijaya Teminabuan', 2020, 1593821043, 1819921451, 32.5, '', 0),
('5ec3be21e0f13', 2, 'smk1-XTKJ1', 'Herviana Puspita Cahyati', '0053331477', 'Sorong ', '2005-08-11', 'Perempuan', 'Islam', 'wni', '082248624070', 'Jln. Gambas/Malawele, Aimas,papua barat', 4, 'Supardi', 'Pedagang', 'Subaryati', 'Ibu rumah tangga ', '081344640035', 'Jln. Gambas', '', '', '', '', 'Mts  Al-ma\'arif 1', 'Jln. Wortel', 2020, 1593832417, 1816739949, 70, '', 0),
('5ec3bfcfb61a4', 1, 'smk1-XTKJ1', 'DELILA IEK', '0029197080', 'SUSUMUK', '2005-12-06', 'Perempuan', 'Protestan', 'wni', '082399262770', 'Susumuk/Aifat/Maybrat/papua Barat', 2, 'Soleman iek', 'Petani', 'Yuliana kaitana', 'Petani', '082239131363', 'Susumuk/kecamatan aifat/kab.maybrat', 'Popiana soge', 'Petani', 'Jln.mawar mariat pantai kab.sorong', '', 'SMP NEGERI 1 AIFAT KAB.MAYBRAT', 'Jln . Sungai kamundan kab. Maybrat', 2020, 1593835877, 1367933804, 57.5, '', 0),
('5ec3c36d8d2d3', 1, 'smk1-XDPIB', 'ALFRED MEYOR LEMAUK', '0062441608', 'MOSWAREN', '2006-02-23', 'Laki-laki', 'Protestan', 'wni', '081340134519', 'Kampung Hasik Jaya/Moswaren/Sorong Selatan/Papua Barat', 3, 'Antonius Lemauk', 'Wiraswasta', 'Yulinda Kambu', 'Guru Honda Tk II', '081340134519', 'Kampung Wenslolo', 'Rode Lemauk', 'Petani', 'Jl. Lansat', '082198710143', 'SMP Negeri 1 Moswaren', 'Jl. TransTeminabuan - Ayamaru Kab. Sorong Selatan Provinsi Papua Barat', 2020, 1593827436, 1824920591, 60, '', 0),
('5ec3d4065d7e7', 2, 'smk1-XTBSM', 'Adi nata admaja', '0052769098', 'Sorong', '2005-04-28', 'Laki-laki', 'Islam', 'wni', '085232850759', 'Jl. Sledri/Aimas, Sorong, Papua barat', 7, 'Rusimin', 'Swasta', 'Susilaeati', 'Ibu rumah tangga ', '085354220566', 'Jl. Sledri 002/005', '', '', '', '', 'Mts Muhamadiya 2 Aimas', 'Jl. Wortel', 2020, 1593819436, 1547640307, 40, '', 0),
('5ec3dbcc1d371', 1, 'smk1-XTITL', 'RICKY YERMIAS SYUFAN', '0051714645', 'DISFRA', '2004-01-18', 'Laki-laki', 'Protestan', 'wni', '082198189049', 'JLN.WERK KAMPUNG BAGUN/BAGUN/KAB.SORONG/PAPUA BARAT', 6, 'JHONY SYUFAN', 'TANI', 'OKTOVINA SYALUBU', 'TANI', '085254502779', 'KAMPUNG MODE', 'MELKIANUS SYALUBU', 'TANI', 'JLN KACANG AIMAS', '081240263240', 'SMP NEGERI 27 KABUPATEN SORONG', 'JLN.WERK KAMPUNG BAGUN', 2020, 1593826973, 985008077, 32.5, '', 0),
('5ec3e1fd48685', 2, 'smk1-XTITL', 'AHMAD GUFRANIL FADIL', '0053115825', 'ULOE', '2005-04-19', 'Laki-laki', 'Islam', 'wni', '081248409363', 'Jl.Pattimura RT 002 RW 004 Kelurahan Makbusun/Kec.Mayamuk Kabupaten sorong-Papua Barat', 6, 'MUHAMMAD YUSUF', 'KARYAWAN SWASTA', 'RASMIANA', 'IBU RUMAH TANGGA', '085244585995', 'Jl.Pattimura RT 002 RW 004 Kel.Makbusun', 'MUHAMMAD YUSUF', 'KARYAWAN SWASTA', 'Jl.Pattimura RT 002 RW 004 Kel.Makbusun', '085244585995', 'SMP Negeri 2 Kab.Sorong', 'Jl. Poros Katapop', 2020, 1593826620, 1938112282, 45, '', 0),
('5ec4bdbc25241', 2, 'smk1-XAKL2', 'Sentia Seba Jahumoto', '0039584943', 'Nuweletetu,', '2005-03-17', 'Perempuan', 'Protestan', 'wni', '081343039580', 'Jlr. A. Jln. Pepaya/Aimas, kab. Sorong, Papua Barat', 1, 'Yosias Jahumoto', 'Petani', 'Marlen Leipary/Jahumoto', 'Ibu rumah tangga', '081343039580', 'Aimas, Jlr A, Jln. Pepaya', '', '', '', '', 'SMPTK Diaspora', 'Jln. Diaspora, Kelurahan Mariat pantai', 2020, 1593992757, 2138816908, 45, '', 0),
('5ec4d622e430f', 2, 'smk1-XTITL', 'ROBIN RANTE LEMBANG', '0053389423', 'SORONG', '2005-07-14', 'Laki-laki', 'Islam', 'wni', '082198493304', 'Jalan langsat/Aimas/kab.sorong/ Papua Barat', 6, 'YUNUS RANTE LEMBANG', 'Buruh bangunan', 'UMILAH', 'Ibu rumah tangganya', '082198493304', 'Jln.langsat', '', '', '', '', 'SMP NEGERI 1 KAB. SORONG', 'Jln klamono, kilometer 19', 2020, 1593827001, 1719767483, 85, '', 0),
('5ec4eabc8acdb', 1, 'smk1-XOTKP2', 'Rachwel Alisia Blesia', '0038789497', 'Sorong', '2004-04-16', 'Perempuan', 'Protestan', 'wni', '081343458151', 'Jln. Buncis/Aimas,sorong,Papua Barat', 2, 'Marthen L Salamuk', 'Petani', 'Marice Blesia', 'Ibu Rumah Tangga', '+6281248737701', 'Jalan Buncis', '', '', '', '', 'SMP Negeri 11 Kabupaten Sorong', 'Jalan sagu, Kelurahan mariat pantai Kabpaten sorong', 2020, 1593837432, 1437274101, 50, '', 0),
('5ec51e2f64113', 1, 'smk1-XAKL1', 'NOVELA SYUFAN', '0006123704', 'DISFRA', '2003-05-08', 'Perempuan', 'Protestan', 'wni', '081247722618', 'KAMPUNG KLAWONRIT/BAGUN/SORONG/PAPUA BARAT', 1, 'YOHOSUA SYUFAN', 'PETANI/PEKEBUN', 'MARGARETHA MEDER', 'MENGURUS RUMAH TANGGA', '081247722618', 'KAMPUNG KLAWONRIT', '', '', '', '', 'SMP NEGERI 27 KAB.SORONG', 'Jl.Werk', 2020, 1593991246, 1064915324, 25, '', 0),
('5ec5228908dc5', 2, 'smk1-XTKRO', 'AGIL TRANJAYA', '0052252902', 'KAB.SORONG', '2005-10-16', 'Laki-laki', 'Islam', 'wni', '082198075857', 'JLN CUMI-CUMI/KLASEMEN/SORONG/PAPUA BARAT', 5, 'ALMARHUM MISTO', 'SWASTA', 'ALMARHUM NGATINEM', 'IBU RUMAH TANGGA', '082321793478', 'KATAPOP 1 JLN.SRIKANDI', 'NANIK INJAYA', 'IBU RUMAH TANGGA', 'JLN CUMI-CUMI', '082321793478', 'SMP N 9 KAB.SORONG', 'MAJENER', 2020, 1593820347, 1449451314, 45, '', 0),
('5ec5408c21cd7', 2, 'smk1-XTKJ1', 'INDAH PERMATA SARI PAPILAYA', '0053216063', 'Sorong', '2005-07-21', 'Perempuan', 'Protestan', 'wni', '082199594215', 'Jln.basuki rahmat km 09/Sorong manoi/papua barat', 4, 'Minto', 'Almarhum', 'ADRIANA PAPILAYA', 'Ibu rumah tangga', '082199594215', 'Jln.basuki rahmat km.09', '', '', '', '', 'SMP N 10', 'Km 12,5', 2020, 1593832447, 512269724, 50, '', 0),
('5ec622d9add45', 2, 'smk1-XTKRO', 'THAQWIN NOFALDI', '0047677815', 'Kabupaten. Sorong', '2004-05-05', 'Laki-laki', 'Islam', 'wni', '085244862395', 'Jln. Unamin/Jamaimo, kabupaten Sorong,papua barat', 5, 'Jumadi', 'Pengeboran minyak', 'Lina', 'Ibu rumah tangga', '085244862395', 'Jln unamin', '', '', '', '', 'SMP Muhammadiyah 2 mariyai', 'Jln dahlia', 2020, 1593820987, 1596250732, 60, '', 0),
('5ec7675414049', 1, 'smk1-XAKL1', 'Fika marthina Meder', '0045726299', 'Disfra', '2004-09-28', 'Perempuan', 'Protestan', 'wni', '081344515428', 'Kampung Disfra/Bagun/sorong/papua barat', 1, 'Yehuda Meder', 'Petani', 'Ester Mlasmene', 'Petani', '082398980986', 'Kampung Disfra', '', '', '', '', 'Smp Negeri 27 kabupaten sorong', 'Jln wer ', 2020, 1593990998, 1625810424, 42.5, '', 0),
('5ec7698028e7e', 1, 'smk1-XOTKP1', 'Silpa serli Syufan', '0046201403', 'Disfra', '2005-07-27', 'Perempuan', 'Protestan', 'wni', '081344515428', 'Kampung Bagun/Bagun/sorong/papua barat', 2, 'Ronny Syufan', 'Pegawai Negeri sipil', 'Marlina mlasmene', 'Petani', '081344595477', 'Kampung bagun', '', '', '', '', 'Smp Negeri 27 kabupaten sorong', 'Jln werk', 2020, 1593836577, 1928147077, 37.5, '', 0),
('5ec88e6679aa0', 1, 'smk1-XTKRO', 'JOIS KLASAFLE', '0022241171', 'WILTI', '2004-01-09', 'Laki-laki', 'Protestan', 'wni', '081247785375', 'JL.PEPAYA/MALAWILI DISTRIK AIMAS KAB.SORONG', 5, 'NAFRTALI KLASAFLE', 'PETANI', 'KOSTANTINA KOLIS', 'PETANI', '082248476871', 'JL.INTIMPURA KM21', 'NAFTALI KLASJOK', 'PNS', 'JLN.MELATY RAYA KM9', '081240258272', 'SMP YPK BETHEL AIMAS KAB.SORONG', 'JL.ENAU KM19 AIMAS', 2017, 1593821285, 918605965, 25, '', 0),
('5ec9ed2a1df6b', 2, 'smk1-XTITL', 'HENDRA HENDRIYANUS YABLE', '0030026027', 'Sorong', '2003-10-11', 'Laki-laki', 'Protestan', 'wni', '082399141763', 'Jl. Sagu aimas/Aimas,sorong,papua barat', 6, 'MARINUS YABLE', 'Petani', 'MARIA SEEKELEFAT', 'Ibu rumah tanga', '085243569101', 'Jl. Sagu aimas', '', '', '', '', 'SMP N 2 KBP SORONG', 'Sp 3  kelurahan mayamuk', 2020, 1593826743, 1858246643, 25, '', 0),
('5ecb331c18eea', 1, 'smk1-XTKJ1', 'Ricky risyat kamesrar', '0055007620', 'Sorong', '2005-06-08', 'Laki-laki', 'Protestan', 'wni', '085245550558', 'Jl.BAHSUKI RAHMAT KM.13/Kelasaman', 4, 'Fredy fredinando kamesrar', 'Sopir taxi', 'Agustina hermayanti worumboy', 'Ibu rumah tangga', '085254069342/08223864', 'Jl.BAHSUKI RAMHAT KM.13', '', '', '', '', 'Smp nusantara kota sorong', 'Jl.klamana km.13', 2020, 1593832818, 137662852, 62.5, '', 0),
('5ecdc0840bb8e', 1, 'smk1-XDPIB', 'Zet bao', '0063085260', 'Susumuk', '2005-09-26', 'Laki-laki', 'Protestan', 'wni', '085254534982', 'Martaim/Aifat kab maybrat', 3, 'Yakob bao', 'Tani', 'Rodefina baho', 'Pengurus rumah tangga', '085254534982', 'Maybrat', 'Martinus atanay', 'Pns', 'Jln merpati sp1 klamalu', '082147515221', 'Smp negeri 1 aifat', 'Jln sungai kamundan', 2020, 1593828153, 522202654, 35, '', 0),
('5ecdf720c446b', 1, 'smk1-XOTKP2', 'Christin natalia tamunete', '0046697282', 'Fak fak ', '2004-12-27', 'Perempuan', 'Protestan', 'wni', '081344473594', 'Km 18/Kabupaten', 2, 'Yohanis tamunete', 'Pns', 'Ratna ningkeula', 'Ibu rumah tangga', '085254467731', 'km18', 'Yohanis tamunete ', 'Pns', 'Km 18', '085254467731', 'smp ypk bethel aimas', 'Jalan enau km 19', 2020, 1593836867, 1436045919, 22.5, '', 0),
('5ecef979cbb9b', 1, 'smk1-XTITL', 'Maklon.syufan', '0039317684', 'Disfra', '2003-06-21', 'Laki-laki', 'Protestan', 'wni', '082238226185', 'Kampung klakwinkrit/Bagun/sorong/papua barat', 6, 'Zekaus.syufan', 'Tani', 'Eduka.mlasmene', 'Tani', '085270571834', 'Kampung klakwonkrit distrik bagun', '', '', '', '', 'Smp negeri 27 kabupaten sorong', 'Distrik bagun', 2020, 1593826850, 6006329, 27.5, '', 0),
('5ed082d39bc25', 1, 'smk1-XDPIB', 'EKO SYUFAN ', '0009782845', 'DISFRA, 03 DESEMBER 2003', '2003-12-03', 'Laki-laki', 'Protestan', 'wni', '082248456270', 'KAMPUNG BAGUN/BAGUN', 3, 'LAURENS SYUFAN', 'PNS', 'SARA MEDER', 'RUMAH TANGGA', '081342852262', 'KAMPUNG DISFRA', '', '', '', '', 'SMP N 27 KAB SORONG', 'Jln, werk. KAMPUNG BAGUN', 2020, 1593827624, 727805196, 22.5, '', 0),
('5ed253631ad23', 2, 'smk1-XTKJ1', 'Haidir MIrza Ahmad Zacky', '0050718298', 'Kota Sorong', '2005-03-06', 'Laki-laki', 'Islam', 'wni', '082198632088', 'Jalan Timun/Kecamatan Aimas, Kabupaten Sorong, Provinsi Papua Barat', 4, 'Cecep Sudrajat', 'Swasta', 'Rusminah', 'Swasta', '081247870292', 'Jalan timun', '', '', '', '', 'Mts Al-Ma\'arif 1 Kab. Sorong', 'Jalan Wortel', 2020, 1593832398, 494469588, 55, '', 0),
('5ed27cd124d43', 1, 'smk1-XAKL1', 'Mariana C P Evangalin isir flassy', '0047223438', 'Teminabuan', '2004-03-08', 'Perempuan', 'Protestan', 'wni', '081248727387', 'Kamp.Kasim/Seget,Sorong,Papua barat', 1, 'Anthon Isir', 'Petani ', 'Agustina C Flassy', 'Petani/Ibu Rumah Tangga', '082398277227', 'Kamp.Kasim', 'Noldi Sutikno Krarin', 'Mahasiswa', 'jln.mawar /mariat pante', '082399262770', 'SMP N 5 Kab.Sorong', 'jln.pembangunan /Kelurahan Wawenagu/Kecamatan Seget', 2020, 1593991148, 594752373, 65, '', 0),
('5ed4e47fe481f', 1, 'smk1-XOTKP2', 'Susance novalia fife ', '0054991679', 'Sorong ', '2005-11-10', 'Perempuan', 'Protestan', 'wni', '085254141488', 'Jln poros sp 3/Kabupaten ', 2, 'Yohanis fife ', 'Petani ', 'Benselina ijie ', 'Ibu rumah tangga ', '085254141488', 'Jln poros sp 3', 'Novalia susance fife ', 'Tidak ada ', 'Sp 3', '085254141488', 'Kabupaten ', 'Smpn 2kab sorong ', 2020, 1593837703, 1801275259, 30, '', 0),
('5ed5922f997e7', 2, 'smk1-XAKL2', 'Nur Dian Safitri', '0045469020', 'Sorong', '2004-12-18', 'Perempuan', 'Islam', 'wni', '081213820691', 'Walal. jln Majapahit/Salawati/ kab.sorong/papua barat', 1, 'Dadiono', 'Petani', 'Sri Rahayu Ninggsih', 'Ibu Rumah Tangga', '082397957453', 'Walal. Jl. Majapahit', '', '', '', '', 'SMP PGRI Salawati', 'Majaran', 2020, 1593992529, 1474692787, 47.5, '', 0),
('5ed595f6a87c9', 2, 'smk1-XTITL', 'Yoel Sudewo Kabrahan Ubun', '0058641085', 'Sorong', '2005-03-09', 'Laki-laki', 'katolik', 'wni', '081240656217', 'Jl. Wortel Aimas/Aimas/Kabupaten Sorong?Papua Barat', 6, 'Niko Laus Khabrahan Ubun', 'Petani', 'Maria Makdalena', 'Ibu Rumah Tangga', '081240656217', 'Jl. Wortel Aimas', '', '', '', '', 'SMP Negeri 18 Kelapa Sawit', 'Klasafet KM 42', 2020, 1593827176, 845720315, 27.5, '', 0),
('5ed5994a9afa9', 2, 'smk1-XOTKP1', 'Khasanah Iriyanti', '0055917888', 'Sorong', '2005-12-24', 'Perempuan', 'Islam', 'wni', '082239378869', 'Kamp. Magatarum RT.02 RW.01/Malabotom/Sorong?Papua Barat', 2, 'Slamet', 'Petani', 'Siti Mahfudah', 'Ibu Rumah Tangga', '081228664560', 'Kamp. Magatarum RT.02 RW. 01', '', '', '', '', 'SMP N 15 Kabupaten Sorong', 'Jl. Jenderal Soedirman Malamoja Distrik Malabotom', 2020, 1593836186, 1417488063, 37.5, '', 0),
('5ed5a40861993', 1, 'smk1-XOTKP2', 'Nesti Sara Assem', '0057436277', 'Klamalu', '2005-06-28', 'Perempuan', 'Protestan', 'wni', '08525432035', 'Kampung Gisim Darat/Aimas/Sorong/Papua Barat', 2, 'Deky Assem', 'Swasta', 'Klara Saruf', 'Ibu Rumah Tangga', '085254532035', 'Jl. Gabus Tugu Merah', '', '', '', '', 'SMP N 18 Kabupaten Sorong', 'Kampung Gisim Darat', 2020, 1593837389, 1644348242, 25, '', 0),
('5ed5aa50d8d6b', 2, 'smk1-XAKL2', 'Wahyunia Armiati', '0046905912', 'Sorong', '2008-08-01', 'Perempuan', 'Islam', 'wni', '082238518344', 'Jl. Menur SP2 Mariyai/Mariyat/Sorong/Papua Barat', 1, 'Suparno', 'Petani', 'Sumirah', 'Petani', '082239518344', 'Jl. Sisinga Mangaraja Katimin 2 Wonosobo', 'Ranis', 'Petani', 'Jl. Menur SP 2 Mariyat', '081247575624', 'SMP N 14 Klasari Kabupaten Sorong', 'Kmp. Klasari Katimin 2', 2020, 1593992962, 1327402010, 42.5, '', 0),
('5ed5ac874ad8a', 1, 'smk1-XTITL', 'Agustinus Saud', '0037078673', 'Klamalu', '2003-08-15', 'Laki-laki', 'Protestan', 'wni', '082198183467', 'Klamaalu/Mariyat/Sorong/Papua Barat', 6, 'Simon Saud', 'Petani', 'Yubelina Safuf', 'Petani', '082198183467', 'Klamalu', '', '', '', '', 'SMP N 18 Kabupaten Sorong', 'Kampung Gisim Barat', 2020, 1593826521, 1663187784, 27.5, '', 0),
('5ed5b3581390f', 2, 'smk1-XTKJ2', 'Giyan Alfan Prasetyan', '0050855340', 'Sorong', '2005-05-23', 'Laki-laki', 'Islam', 'wni', '082239707783', 'Jl. Matoa RT.03 RW. 02/Moisegen/Sorong/Papua Barat', 4, 'Sugianto', 'Petani', 'Septiana Prasetyo Ningsih', 'Ibu Rumah Tangga', '085349940838', 'Jl. Matoa RT.03 RW. 02', '', '', '', '', 'SMP N 22 Kabupaten Sorong', 'Kampung Klafdalim', 2020, 1593833122, 1893167563, 27.5, '', 0),
('5ed5b58ca6358', 1, 'smk1-XTKJ1', 'Keliopas Wim Wanma', '0038293275', 'Sorong', '2003-12-04', 'Laki-laki', 'Protestan', 'wni', '081344876371', 'jl. poros klakdalin /Kurnia/ moisigin/moi segin/ kab. sorong/papua barat', 4, 'Obeth Wanma (almarhum)', 'petani', 'Orpa Sagaret', 'Ibu Rumah Tangga', '081247326873', 'Sorong Selaltan ', 'Luis J Wanma', 'Kepala DESA', 'Kampung KLAFDALIN', '081247326873', 'SMP N 22 KAB.SORONG', 'KAMPUNG KLAFDALIN', 2020, 1593832771, 631888395, 40, '', 0),
('5ed5ba8819166', 1, 'smk1-XOTKP2', 'Janet Jenggren', '005760464', 'Doom', '2004-01-19', 'Perempuan', 'Protestan', 'wni', '082238205942', 'Jl. Karantina /Malawili/ Sorong/Papua Baat', 2, 'Kellyopas Jenggren (Alm)', 'Petani', 'Margaretha Kasuari', 'Ibu Rumah Tangga', '082198076059', 'Jl. Macan Tutul RT. 001 RW.001 Dum Timur', 'Netty Jenggren', 'Swasta', 'Jl. Karaktina Malawili', '082198876059', 'SMP YPK Bethel Doom', 'Jl. Trikora No. 12 Doo Timur', 2020, 1593837204, 1659022002, 20, '', 0),
('5ed62a7d1905b', 2, 'smk1-XTKJ2', 'Zakiatun Nissa', '0067297736', 'Sorong', '2006-03-18', 'Laki-laki', 'Islam', 'wni', '082398727757', 'Jl. Durian/Malawili, Kabupaten Sorong, Papua Barat', 4, 'Robiyan', 'Swasta', 'Siti Komariyah', 'Ibu Rumah Tangga', '085244847445', 'Jl. Durian', '', '', '', '', 'SMP Muhammadiyah', 'Jl. Wortel', 2020, 1593835558, 466215126, 50, '', 0),
('5ed6f5899a42b', 1, 'smk1-XAKL1', 'Efradus. Syufan', '0056187604', 'Disfra', '2003-03-24', 'Laki-laki', 'Protestan', 'wni', '0823-9901-0176', 'Jln. terong/bagun/sorong/papua barat', 1, 'Yakop. Syufan', 'Petani', 'Matzeba. meder', 'petani', '085243605879', 'jln. terong', 'ANDAS. S.Pd', 'guru', 'jln. werk', '', 'SMP N 27 KAB. SORONG', 'JL. WERK', 2020, 1593990953, 1091685517, 35, '', 0),
('5ed6f7f5a8474', 1, 'smk1-XOTKP1', 'SISILIA NATALIA LOBAT', '0044590378', 'KLAMONO', '2004-09-03', 'Perempuan', 'Protestan', 'wni', '081343103267', 'JALAN KLASAFET 3 KAMPUNG WARIAYU /KLAMONO, SORONG, PAPUA BARAT', 2, 'BARTOL LOBAT', 'PETANI', 'HENDRIKA SARU', 'PETANI', '082197967987', 'JALAN KLASAFET 3 KAMPUNG WARIAYAU', '', '', '', '', 'SMPN 15 KAB. SORONG', 'JL.  JEND. SOEDIRMAN KAMPUNG MALAMOJA', 2020, 1593836606, 1493259939, 25, '', 0),
('5ed6ff78b5954', 2, 'smk1-XDPIB', 'WELEM SIUS TIKUPASANG', '0058629640', 'TORAJA', '2005-09-22', 'Laki-laki', 'katolik', 'wni', '0821-9799-6223', 'Jl. tutwuri/Aimas/kab.sorong/papua barat', 3, 'DANIEL TIKUPASANG', 'SOPIR', 'YULIANA LINDAN', 'IBU RUMAH TANGGA', '0821-9784-1339', 'Jl.TUTWURI', '', '', '', '', 'SMP N 1 KAB.SORONG', 'JL.klamono,  KM.19 aimas, malawili', 2020, 1593828141, 917110747, 20, '', 0),
('5ed704a92fa5e', 1, 'smk1-XOTKP2', 'SINCE S MALAGILIK', '0036926296', 'KLLAWANA ', '2003-04-02', 'Perempuan', 'Protestan', 'wni', '081346797903', 'JLN KLALIN /AIMAS ', 2, 'SALMON MALAGILIK ', 'PETANI ', 'YOKBET', 'IBU RUMAH TANGGA', '081346797903', 'JLN KLALIN ', 'YAN YAFET ', 'TANI ', 'JLN KLALIN ', '', 'SMP N 6 KAB. SORONG ', 'JLN TUTURI KLAMONO 2', 2020, 1593837551, 1134495243, 45, '', 0),
('5ed70c826760c', 1, 'smk1-XOTKP1', 'MARCIANA. SIENDY.BATLAYANGIN', '0061374146', 'SORONG', '2005-03-21', 'Perempuan', 'Protestan', 'wni', '082399142992', 'JL.KLALIN, KM 19,5/AIMAS/SORONG/PAPUA BARAT', 2, 'JOSIAS. BATLAYANGIN', 'KARYAWAN SWASTA', 'IMELDA KAMUMPAT', 'PEGAWAI NEGERI SIPIL', '082399769676', 'JL. KLALIN.KM 19,5', '', '', '', '', 'SMP N 6 KOTA SORONG', 'JL. F. KLASUAT', 2020, 1593836204, 548130903, 25, '', 0),
('5ed8242d24be7', 2, 'smk1-XTBSM', 'Maryo alexander sumah', '0051695657', 'Sorong', '2005-06-02', 'Laki-laki', 'Protestan', 'wni', '081247720874', 'Jalan merpati sp 1/Mariai/kab sorong/provinsi papua barat', 7, 'Permenas sumah', 'Buruh harian', 'Nortje henny lelapary', 'Ibu rumah tangga', '082199747098', 'Jalan merpati sp 1', '', '', '', '', 'Smp negeri 3 kab sorong', 'Jalan merpati', 2020, 1593997515, 1544226688, 40, '', 0),
('5ed83075b2e00', 1, 'smk1-XTITL', 'bezaliel willy junior eraiy', '0057520925', 'sorong', '2005-11-28', 'Laki-laki', 'Protestan', 'wni', '081240019132', 'salawati/salawati', 6, 'paulus erary', 'tani', 'maria ayomi (alm)', 'tani', '081344429133', 'salawati', '', '', '', '', 'smp pgri salawati', 'salawati', 2020, 1593826653, 1352085346, 32.5, '', 0),
('5ed831fdeae78', 1, 'smk1-XOTKP1', 'Monika Tresia Wafom', '0040101800', 'Sorong', '2004-05-15', 'Perempuan', 'Protestan', 'wni', '082398509624', 'Jl.Cemara SP.1 Kab. Sorong/Jamaima/Sorong/Papua Barat', 2, 'Habel Wafom', 'Petani', 'Debora Nauw', 'Petani', '082398586905', 'Jl.Cemara SP.1 Kab.Sorong', 'Martha Sialila', 'Guru', 'Sorong-Tampa Garam', '', 'SMP Negeri 3 Kab.Sorong', 'Jl.Merpati', 2020, 1593836293, 823359998, 32.5, '', 0),
('5ed8324c22f5f', 1, 'smk1-XTKRO', 'YOSUA JEMS JEKSON MALALU', '003532563', 'YEFLIO', '2003-10-03', 'Laki-laki', 'Protestan', 'wni', '082398044055', 'KAMPUNG JEFLIO,/MAYAMUK/KABUPATEN SORONG', 5, 'BALDUS MALALU', 'PETANI', 'FRANSINA KOKMALA', 'PETANI', '082398044055', 'KAMPUNG JEFLIO', 'OKTOFIANUS YAIJAN', 'PETANI', 'KAMPUNG MOJA', '081248428730', 'SMP PGRI SALAWATI', 'SALAWATI, KATAPOP 2', 2020, 1593821075, 515483899, 25, '', 0),
('5ed839839d09f', 2, 'smk1-XTKRO', 'ARIEKA GUSDIANTORO', '0056539938', 'BANYUWANGI', '2005-07-29', 'Laki-laki', 'Islam', 'wni', '085244486251', 'JL.NANGKA/MALAWILI/AIMAS/PAPUA BARAT', 5, 'SODIK', 'PETANI', 'SUKARTI', 'IBU RUMAH TANGGA', '082239707758', 'JL.NANGKA', 'JAYAMTO', 'PETANI', 'JL.NANGKA', '085254423433', 'MTS MUHAMADIYAH 2 AIMAS ', 'JL.WORTEL', 2020, 1593820524, 1881450996, 37.5, '', 0),
('5ed85292d6f76', 1, 'smk1-XOTKP1', 'MARIAHTY FIORELLA SEGIDIFAT', '0056174382', 'SORONG', '2005-03-19', 'Perempuan', 'Protestan', 'wni', '081344603801', 'JL.INTIMPURA/AIMAS/PAPUA BARAT', 2, 'ONESIMUS SEGIDIFAT', 'PETANI', 'MERRY MARAR', 'PETANI', '085244797800', 'JL.INTIMPURA', '', '', '', '', 'SMP YPK BETHEL', 'JL.ENAU', 2020, 1593836222, 486825569, 25, '', 0),
('5ed992b123af4', 1, 'smk1-XTITL', 'Ortisan Yakobus Mate ', '0044024038', 'Klamalu', '2004-05-16', 'Laki-laki', 'katolik', 'wni', '082397710421', 'Jl. Intimpura/Aimas/sorong/papua barat ', 6, 'Abraham Mate', 'Petani', 'Agata Baru', 'Petani', '082397710421', 'Jl. Intimpura ', '', '', '', '', 'SMPTK Dispora ', 'Jl. Dispora ', 2020, 1593826932, 1688980108, 35, '', 0),
('5ed996f43c6fa', 2, 'smk1-XOTKP1', 'Junanda Dea Adelia', '0045562534', 'Sorong', '2004-02-02', 'Perempuan', 'Islam', 'wni', '081243964256', 'Jln. Klamono, Km 34/Mariat/Sorong/Papua barat', 2, 'Junaedi', 'Swasta', 'Indah', 'Ibu Rumah Tangga', '0821998023', 'Jln. Klamono', '', '', '', '', 'SMP Negeri 10', 'Perumahan Pemda Km. 24', 2020, 1593836143, 455119395, 40, '', 0),
('5ed9a2c6c6833', 2, 'smk1-XTITL', 'Yuan Andre Nikolas', '0052810280', 'Trenggalek', '2005-05-25', 'Laki-laki', 'Islam', 'wni', '082198184691', 'Jln. Wortel, KPR Filla/Aimas/Sorong/Papua Barat', 6, 'Mujikan', 'Tukang', 'Sunarti', 'IRT', '085244141533', 'Jln. Wortel, KPR Filla', '', '', '', '', 'MTs Muhammadiyah 2', 'Jln. KH. Ahmad Dahlan', 2020, 1593827189, 1667829690, 35, '', 0),
('5ed9a39d250e1', 1, 'smk1-XTBSM', 'MIKAEL MUBALEN ', '0037610880', 'AIMAS', '2003-05-10', 'Laki-laki', 'Protestan', 'wni', '', 'JLN ENAU/AIMAS', 7, 'KEPAS MUBALEN ', 'JLN ENAU', 'YULIANA KALAIBIN ', 'IRT', '081239180707', 'JLN ENAU', '', '', '', '', 'SMP N 1 KAB. SORONG ', 'JLN KLAMONO KM 19', 2020, 1594097739, 1334192438, 30, '', 0),
('5eda0a19c6e40', 2, 'smk1-XDPIB', 'Ika umi yulianti', '0042453597', 'Sorong', '2004-02-02', 'Perempuan', 'Islam', 'wni', '082239469386', 'Sp3 /Mayamuk/kab, Sorong/Papua barat', 3, 'Aan Yulianto', 'Tukang', 'Isti khoirini', 'Ibu rumah tangga', '081344997027', 'Sp3', '', '', '', '', 'Smp negeri 2 kabupaten Sorong', 'Sp3', 2020, 1593827727, 1532843919, 35, '', 0),
('5eda4d3016cff', 2, 'smk1-XOTKP1', 'WINDY RINA YUNITA MARANI', '0052216124', 'Sorong', '2005-04-30', 'Perempuan', 'Protestan', 'wni', '081344413145', 'JLN MELATI/MARIAT,SORONG,PAPUA BARAT', 2, 'EDWIN M. MARANI', 'Wiraswasta', 'OKTOVINA BAKARBESSY', 'Ibu Rumahtangga', '081344413145', 'JLN MELATI', '', '', '', '', 'SMPN3 KAB SORONG', 'JLN MERPATI', 2020, 1593836639, 1213958735, 35, '', 0),
('5edad34ea7543', 1, 'smk1-XOTKP1', 'ANIKE SUSANA SEDE', '0039399165', 'AIMAS', '2003-11-03', 'Perempuan', 'Protestan', 'wni', '082238663780', 'JALAN KLALIN KM. 19/SEGUN, KABUPATEN SORONG, PAPUA BARAT', 2, 'EDUARD SEDE', 'PNS', 'MARTHA SEMUGU', 'IRT', '085254655782', 'KAMPUNG GISIM, DISTRIK SEGUN, KABUPATEN SORONG', 'ALEXINA SEDE', '-', 'JALAN KLALIN, KM 19', '081248701079', 'SMK YPK BETHEL MUTU MAWALOKMAE', 'JALAN ENAU, KM.19, KELURAHAN AIMAS', 2020, 1593835823, 1213894135, 30, '', 0),
('5edadeae31ca6', 1, 'smk1-XOTKP2', 'ENDEMINA MANIMBU', '3068401441', 'MANOKWARI', '2006-07-06', 'Perempuan', 'Protestan', 'wni', '0815-4460-0445', 'JL.klalin, KM. 19 /AIMAS/SORONG/PAPUA BARAT', 2, 'ABSALOM MANINBU', 'PNS', 'PEMI RENI KOIBUR', 'IBU RUMAH TANGGA', '081248494448', 'JL. Klalin. KM 19', '', '', '', '', 'SMP YPK BETHEL MUTU MAWALOKMAE', 'JL. ENAU, KM 19', 2020, 1593836969, 1405110011, 30, '', 0);
INSERT INTO `ppdb_archive` (`archive_id`, `id_jalur`, `class_id`, `nama_lengkap`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `kewarganegaraan`, `no_telp`, `alamat`, `kode_jurusan`, `ayah_kandung`, `pekerjaan_ayah`, `ibu_kandung`, `pekerjaan_ibu`, `telp_ortu`, `alamat_ortu`, `nama_wali`, `pekerjaan_wali`, `alamat_wali`, `telp_wali`, `asal_sekolah`, `alamat_sekolah`, `tahun_lulus`, `archive_at`, `nomor_pendaftar`, `nilai`, `file`, `is_tested`) VALUES
('5edadfab5958b', 1, 'smk1-XDPIB', 'KAREL FATEM', '0039050373', 'TAHSIMARA', '2003-04-14', 'Laki-laki', 'Protestan', 'wni', '082199325280', 'JALAN KAMUNDAN, AIFAT TIMUR/AIFAT, MAYBRAT, PAPUA BARAT', 3, 'JHONATAN FATEM', 'TANI', 'YULIANA WAFOM', 'TANI', '-', 'JALAN KAMUNDAN, AIFAT TIMUR', 'DESIANUS FATEM', 'MAHASISWA', 'SP 1', '082199325280', 'SMPN 2 AIFAT', 'JALAN SUNGAI KAMUNDAN', 2020, 1594000597, 175168705, 42.5, '', 0),
('5edaf3a31c31c', 2, 'smk1-XTBSM', 'STEVANUS G GULTOM', '0054009645', 'SORONG', '2005-08-30', 'Laki-laki', 'Protestan', 'wni', '081259705745', 'INTIMPURA/AIMAS', 7, 'JHON N GULTOM', 'PETANI', 'INNE P', 'IRT', '081344294155', 'INTIMPURA', '', '', '', '', 'SMP N 1 KAB. SORONG', 'JLN KLAMONO KM 19', 2020, 1593820092, 1608939062, 25, '', 0),
('5edafe2316e67', 1, 'smk1-XTKRO', 'YOHANA AGUSTINA ASSEM', '0025964747', 'KLAMALU', '2002-03-23', 'Perempuan', 'katolik', 'wni', '', 'KLAMALU, SP.1/KLAMALU, MARIAT, SP.1.', 5, 'LINUS ASSEM', 'PETANI', 'AFRALINA MATE', 'IRT', '085244077940', 'KLAMALU, SP. 1', 'YERMIAS MATE', 'PETANI', 'KLAMAONO, KM. 24', '', 'SMPN 18 KABUPATEN SORONG', 'KLAMONO, KM.24', 2020, 1593821025, 923751411, 32.5, '', 0),
('5edcc7511aea8', 2, 'smk1-XTITL', 'THEROUCHY CHRISMA ANGGEL KUSALY', '0047183393', 'SORONG', '2004-12-22', 'Perempuan', 'Protestan', 'wni', '082399751202', 'JLN MELATI/MARIAT, SORONG,PAPUA BARAT', 6, 'SEPTINUS KUSALY', 'WIRASWASTA', 'MARIA MAKDALENA BAKARBESSY', 'IBU RUMAHTANGGA', '082399751202', 'JLN MELATI', '', '', '', '', 'SMPN3 KAB SORONG', 'JLN MERPATI', 2020, 1593827062, 1798975574, 55, '', 0),
('5edd80e81c0c0', 1, 'smk1-XOTKP1', 'JESIKA FLORENSIA ANGGOLOLY', '0048944974', 'SORONG', '2004-08-16', 'Perempuan', 'Protestan', 'wni', '082399699090', 'JL. SAGU/AIMAS, kABUPATEN SORONG, PAPUA BARAT', 2, 'EFRON ANGGOLOLY', 'GURU (PNS)', 'ENDEMINA KATUMLAS', 'IBU RUMAH TANGGA', '081223508011', 'KAMPUNG SEGET', '', '', '', '', 'SMP NEGERI 5', 'JLN. PEMBANGUNAN KAMP. WAWENAGU', 2020, 1593836123, 1293798760, 25, '', 0),
('5eded820789b9', 2, 'smk1-XAKL2', 'Arifa listiyani', '0045187628', 'Sorong', '2004-12-28', 'Perempuan', 'Islam', 'wni', '082199271192', 'Jalan wortel lorong kasuari/Distrik aimas,kabupaten sorong, papua barat.', 1, 'Nur kholisin', 'Petani', 'Dewi suryani', 'Petani', '085354439279', 'Kampung klasegun', 'Nur kholisin', 'Petani', 'Kampung klasegun', '085354439279', 'Smp negri 8 kabupaten sorong', 'Jalan mambruk no.24 klasegun', 2020, 1593992075, 438344034, 40, '', 0),
('5edf18501bfa2', 1, 'smk1-XTITL', 'simson duwit', '0037181176', 'kampung klamit ', '2003-07-08', 'Laki-laki', 'Protestan', 'wni', '082122160278', 'jln intimpura/kabupaten sorong', 6, 'oktovianus duwit', 'petani', 'yuliana duwit', 'petani', '082122160278', 'sayosa timur', 'elisabet mlasmene', 'petani', 'intimpura', '085244377347', 'smp negeri persiapan pasir putih', 'kampung pasir putih', 2020, 1593827022, 108857723, 52.5, '', 0),
('5ee029bcd780b', 2, 'smk1-XDPIB', 'GABRIEL NEHEMIA VALENTINO KIRIHIO', '0056911715', 'SORONG', '2005-07-31', 'Laki-laki', 'Protestan', 'wni', '081247268131', 'PERUMAHAN PEMDA KM 24/AIMAS/SORONG/PAPUA BARAT', 3, 'ONESIMUS KIRIHIO ST', 'ASN', 'RITA MABRA', 'ASN', '082197705633', 'PERUMAHAN PEMDA KM 24', '', '', '', '', 'SMP NEGERI 3 KABUPATEN SORONG', 'JALAN MERPATI KELURAHAN KLAMALU DISTRIK MARIAT', 2020, 1593483093, 1423909292, 60, '', 0),
('5efe904af3350', 2, 'smk1-XOTKP2', 'IVANA ROSANDI MANGGOSA', '0034830348', 'SORONG', '2003-03-23', 'Perempuan', 'Protestan', 'wni', '', 'JLN KLAMONO KM 19/KABUPATEN', 2, 'JHONI MANGGOSA', 'NELAYAN', 'RENNI MANUMPAHI', 'Pengurus Rumah Tangga', '082398838220', 'JLN KLAMONO KM 19', 'RUTH BAWOLE', 'Pengurus Rumah Tangga', 'JLN KLAMONO KM 19', '', 'SMP N 01 KABUPATEN SORONG', '', 2020, 1594859351, 1258912510, 40, '', 0),
('5f026b28e9a2b', 2, 'smk1-XAKL2', 'Nur Ilham Rafly', '0057933174', 'Sorong', '2005-02-25', 'Laki-laki', 'Islam', 'wni', '082398885056', 'Jl. Gajah Mada RT 001/RW 002/Mayamuk, Makbusun, Kabupaten Sorong', 1, 'Imam Suroso', 'Wiraswasta', 'Nurmin', 'Ibu Rumah Tangga', '082398885056', 'Jl. Gajah Mada RT 001/RW 002', '', '', '', '', 'SMP N 10 Kota Sorong', 'Jl. Basuki Rahmat Km. 12 Klamana Sorong', 2020, 1593994334, 33969837, 40, '', 0),
('5f026e76c672c', 1, 'smk1-XAKL2', 'Sisilia Asmuruf', '0061343594', 'Sumanis', '2005-10-01', 'Laki-laki', 'Protestan', 'wni', '082238205717', 'Jl. Sorong Klamono Km 26/Aimas, Sorong, Papua Barat', 1, 'Onessius Asmuruf', 'Petani', 'Agustinus Antoh', 'Petani', '082238205717', 'Jl. Sorong Klamono Km 26', '', '', '', '', 'SMP N 10 Kab Sorong', 'Jl. Sorong Klamono KM 24 Perumahan Pemda', 2020, 1593994950, 2072371661, 40, '', 0),
('5f0271e136ba6', 1, 'smk1-XAKL1', 'Naomi Ibiah', '0013767056', 'Kisor', '2001-08-17', 'Perempuan', 'Protestan', 'wni', '082238205717', 'Jl. Kokoda Kisor/Kisor, Aifat Selatan, Kabupaten Maybrat', 1, 'Zadrak Ibiah', 'Petani', 'Margareta Faan ', 'Ibu Rumah Tangga', '082238205717', 'Jl. Kokoda Kisor', '', '', '', '', 'SMP N 02 Aifat', 'Jl. S. Kamundan Distrik Aifat', 2020, 1593995811, 1509153714, 40, '', 0),
('5f0277072df5d', 1, 'smk1-XTBSM', 'Martinus Cristovel Kambu', '0059322135', 'Sorong', '2005-05-07', 'Laki-laki', 'Protestan', 'wni', '082397910341', 'Jl. Angsa SP 1 Klamalu/Mariat, Kabupaten Sorong, Papua Barat', 7, 'Yakobus Kambu', 'Swasta', 'Rosmina F. Antoh', 'PNS', '082397910341', 'Jl. Angsa SP 1 Klamalu', '', '', '', '', 'SMP N 03 Kab Sorong', 'Jl. Merpati Kelurahan Klamalu', 2020, 1593997111, 1582453473, 40, '', 0),
('5f02833620873', 1, 'smk1-XTBSM', 'Tomas Wafom ', '0043988082', 'Susumuk', '2003-09-29', 'Laki-laki', 'Protestan', 'wni', '081240361857', 'Kamp Susumuk/Aimas, Kabupaten Sorong, Papua Barat', 7, 'Askenas Wafom', 'Petani', 'Karolina Bao', 'Petani', '081240361857', 'Kamp Susumuk', '', '', '', '', 'SMP N 02 Aifat ', 'Jl. Sungai Kamundan', 2020, 1594000224, 1920306892, 40, '', 0),
('5f028e231cca8', 1, 'smk1-XTKRO', 'Maikel Yordan Ulimene', '004696294', 'Sorong', '2004-02-17', 'Laki-laki', 'Protestan', 'wni', '082399373135', 'Kampung Klasou/Klaso, Kabupaten Sorong, Papua Barat', 5, 'Maurid Ulimene', 'PNS', 'Ina Pegi Maker', 'Ibu Rumah Tangga', '082399373135', 'Kampung Klasou', '', '', '', '', 'SMP N 29 Kab Sorong', 'Jl. Nusantara Kampung Siwis', 2020, 1594003019, 1224782168, 40, '', 0),
('5f03b57dae025', 1, 'smk1-XTITL', 'Siti Jamalia Patipi', '0031229511', 'Mega', '2007-07-06', 'Perempuan', 'Islam', 'wni', '081344040632', 'Jl. Klamono Km 21 Aimas/Aimas, Kabupaten Sorong, Papua Barat', 6, 'Idris Patipi', 'Petani', 'Rahima Sangaji', 'Ibu Rumah Tangga', '081355531758', 'Jl. Klamono Km 21 Aimas', 'M. Nur Sangaji', 'PNS', 'Jl. Klamono Km 21 Aimas', '082198180054', 'SMP YPK Immanuel Werur', 'Jl. Kesehatan Kampung Werti, Tambrauw', 2020, 1594078621, 2067882928, 40, '', 0),
('5f03b6bb93d3e', 1, 'smk1-XTITL', 'Wilem Sreifi', '0008603543', 'Srer', '2001-10-10', 'Laki-laki', 'Protestan', 'wni', '082241504831', 'Kampung Srer/Seremuk, Kabupaten Sorong Selatan, Papua Barat', 6, 'Obaja Sreifi', 'Petani', 'Arance Sreknya', 'Petani', '082399383153', 'Kampung Srer', '', '', '', '', 'SMP YPK Pengharapan Teminabuan', 'Kampung Tegirolo Distrik Teminabuan', 2020, 1594078939, 320286940, 40, '', 0),
('5f03b8cec9bc5', 2, 'smk1-XTKJ1', 'Delon Kristiano Kasim', '0053675565', 'Sorong', '2005-06-09', 'Laki-laki', 'Protestan', 'wni', '082199100279', 'Jl. Gambas Unit 2 Malawele/Aimas, Kabupaten Sorong, Papua Barat', 4, 'Burhan Kasim', 'Wirswasta', 'Jahra Karatem', 'Ibu Rumah Tangga', '082199100279', 'Jl. Gambas Unit 2 Malawele', 'Antoni', 'Honorer', 'Jl. Gambas Unit 2 Malawele', '081281894262', 'SMP N 11 Kab Sorong', 'Jl. Sagu Mariat Pantai', 2020, 1594079483, 1793738742, 40, '', 0),
('5f03ba5d26dcd', 2, 'smk1-XTKJ1', 'Marsella Lendongan', '0056239016', 'Aimas', '2005-03-30', 'Perempuan', 'Protestan', 'wni', '082197980607', 'Jl. Pisang Jalur A Malawili/Aimas, Kabupaten Sorong, Papua Barat', 4, 'Refman Lendongan', 'Swasta', 'Deisy Lumangkun', 'Ibu Rumah Tangga', '082197980607', 'Jl. Pisang Jalur A Malawili', '', '', '', '', 'SMP YPK Bethel Mutu Mawalokmae', 'Jl. Enau Km 19 Kelurahan Aimas', 2020, 1594079873, 629755327, 40, '', 0),
('5f03bc961d839', 2, 'smk1-XTKJ2', 'Asrandi', '0056248459', 'Sorong', '2005-10-15', 'Laki-laki', 'Islam', 'wni', '085244500417', 'Jl. Warmasen Gang Pelangi Permai No. 11/Rufei, Kota Sorong, Papua Barat', 4, 'Haeruddin M', 'Wiraswasta', 'Syamsiah HB', 'Ibu Rumah Tangga', '085244500417', 'Jl. Warmasen Gang Pelangi Permai No. 11', '', '', '', '', 'SMP N 10 Kota Sorong ', 'Jl. Basuki Rahmat Km. 12', 2020, 1594080445, 206970339, 40, '', 0),
('5f03c8eeb21b0', 1, 'smk1-XTKJ2', 'Kristian Jony Saa', '0036201798', 'Kumurkek', '2003-06-09', 'Laki-laki', 'Protestan', 'wni', '081343419889', 'Kumurkek Barat/Aifat, Maybrat, Papua Barat', 4, 'Apolos Saa', 'Petani', 'Alfonsina Asmuruf', 'Petani', '081343419889', 'Kumurkek Barat', '', '', '', '', 'SMP N 01 Aifat', 'Jl. Frateo Kampung Ayawasi', 2020, 1594083595, 118572936, 40, '', 0),
('5f03cc6b4fd2b', 1, 'smk1-XOTKP1', 'Adriana Turot', '0032435936', 'Ayawasi', '2001-11-18', 'Perempuan', 'katolik', 'wni', '082238143889', 'Kampung Fonatu/Aifat Utara, Maybrat, Papua Barat', 2, 'Octovianus Turot', 'Petani', 'Agnes Kocu', 'Petani', '082238143889', 'Kampung Fonatu', '', '', '', '', 'SMP N 01 Aifat', 'Jl. Ftrateo Kampung Ayawasi', 2020, 1594084487, 907437665, 40, '', 0),
('5f03cee23fec1', 1, 'smk1-XOTKP1', 'Ema Tamunete', '0047151258', 'Sabah', '2004-10-31', 'Perempuan', 'katolik', 'wni', '081344493087', 'Dusun Malagubtuk Jalan Sorong-Tambrauw/Kalavili, Sorong, Papua Barat', 2, 'Thomas Tamunete', 'Petani', 'Barlince Sapisa', 'Petani', '082399136007', 'Dusun Malagubtuk Jalan Sorong-Tambrauw', '', '', '', '', 'SMP N Satap Malagubtuk', 'Jl. Sorong-Tambrauw', 2020, 1594085120, 807300216, 40, '', 0),
('5f03df9b1b017', 1, 'smk1-XOTKP1', 'Novela Alobeka Aisnak', '0065206639', 'Aimau', '2004-03-31', 'Perempuan', 'Protestan', 'wni', '081356079917', 'Jl. Pepaya Aimas Jalur A Malawili/Aimas, Kabupaten Sorong, Papua Barat', 2, 'Frans Aisnak', 'Petani', 'Marsela Aifat', 'Petani', '081356079917', 'Jl. Pepaya Aimas Jalur A Malawili', '', '', '', '', 'SMP N 06 Kota Sorong ', 'Jl. F. Kalasuat Malanu', 2020, 1594089407, 267482683, 40, '', 0),
('5f03e10698e9f', 1, 'smk1-XOTKP1', 'Rani Laurensia Aitrem', '0034401782', 'Sorong', '2003-07-06', 'Perempuan', 'katolik', 'wni', '081356079917', 'Jl. Pepaya Aimas Jalur A Malawili/Aimas, Kabupaten Sorong, Papua Barat', 2, 'Maximux Aitrem', 'Petani', 'Lince Wakom', 'Petani', '081356079917', 'Jl. Pepaya Aimas Jalur A Malawili', '', '', '', '', 'SMP N 10 Kab Sorong', 'Jl. Klamono Km 24', 2020, 1594089775, 878614854, 40, '', 0),
('5f03e29f5b786', 1, 'smk1-XOTKP2', 'Maria Elisabet Assem', '0057610478', 'Sorong', '2005-05-26', 'Perempuan', 'katolik', 'wni', '082198139826', 'Kampung Samerakator Distrik Aifat/Aifat Selatan, Maybrat, Papua Barat', 2, 'Stevanus Assem', 'Swasta', 'Sarce Asmuruf ', 'Ibu Rumah Tangga', '082198139826', 'Kampung Samerakator Distrik Aifat', 'Paulus Assem', 'PNS', '', '082198983257', 'SMP N 02 Aifat', 'Jl. S. Kamundan Distrik Aifat', 2020, 1594090178, 2077012251, 40, '', 0),
('5f03e40d42720', 1, 'smk1-XOTKP2', 'Yuliana Maria M. Serkadifat', '0057677162', 'Seribau', '2005-12-25', 'Perempuan', 'Protestan', 'wni', '082198075919', 'Jl. Klalin-Aimas/Aimas, Kabupaten Sorong, Papua Barat', 2, 'Zeth Serkadifat', 'Petani', 'Dorthea Flassy', 'Wiraswasta', '082397062162', 'Jl. Klalin-Aimas', '', '', '', '', 'SMP YPK Bethel Mutu Mawalokmae', 'Jl. Enau Km 19 ', 2020, 1594090549, 1911585763, 40, '', 0),
('5f03fb9552f46', 1, 'smk1-XOTKP1', 'Iskam Fiona Wanane', '0053555166', 'Kamro', '2006-11-09', 'Perempuan', 'Protestan', 'wni', '082197986359', 'Kamro Selatan/Aitinyo, Maybrat, Papua Barat', 2, 'Amin Wanane', 'Petani', 'Mina Kambu', 'Ibu Rumah Tangga', '082197986359', 'Kamro Selatan', '', '', '', '', 'SMP N 01 Aitinyo', 'Kampung Karsu Distrik Aitinyo', 2020, 1594096569, 1876733665, 40, '', 0),
('5f03fcbdd308b', 1, 'smk1-XOTKP2', 'Fivianti Ngaibawar', '0054302480', 'Kamro', '2006-02-04', 'Perempuan', 'Protestan', 'wni', '085254365867', 'Kamro Selatan/Aitinyo, Maybrat, Papua Barat', 2, 'Ari Ngaibawar', 'Petani', 'Yorlince Wanang', 'Ibu Rumah Tangga', '082199083428', 'Kamro Selatan', '', '', '', '', 'SMP N 01 Aitinyo', 'Kampung Karsu Distrik Aitinyo', 2020, 1594096861, 2021295999, 40, '', 0),
('5f03fe21ceb25', 1, 'smk1-XOTKP1', 'Selly Susana Su', '0034562776', 'Klayili', '2003-09-04', 'Perempuan', 'Protestan', 'wni', '082114690862', 'Jl. Sorong Klayili/Klayili, Kabupaten Sorong, Papua Barat', 2, 'Yakob Su', 'Petani', 'Federika Mubalen', 'Ibu Rumah Tangga', '082114690862', 'Jl. Sorong Klayili', '', '', '', '', 'SMP N Satap Klayili Kab Sorong', 'Jl. Malasik Kampung Klayili', 2020, 1594097224, 747190064, 40, '', 0),
('5f0401982bf34', 1, 'smk1-XTBSM', 'Darwin Aru', '0068577515', 'Sorong', '2006-12-14', 'Laki-laki', 'Protestan', 'wni', '-', 'SP 3 Kampung Klalin Makbusun/Mayamuk, Kabupaten Sorong, Papua Barat', 7, 'Arkelas Aru', 'Petani', 'Oktovina Howay', 'Ibu Rumah Tangga', '-', 'SP 3 Kampung Klalin Makbusun', '', '', '', '', 'SMP N 1 Wayer', 'Jl. Teminabuan-Ayamaru', 2020, 1594098094, 222097753, 40, '', 0),
('5f06660c06cce', 2, 'smk1-XAKL2', 'Sasya Allyfia Putri', '0005844678', 'Sorong', '2005-01-12', 'Perempuan', 'Islam', 'wni', '082399141795', 'Jl. Sindoro RT 06 / RW 02 Makbalim/Mayamuk, Kabupaten Sorong, Papua Barat', 1, 'Bagus Setiawan', 'Tani', 'Samsiati', 'Ibu Rumah Tangga', '082399141795', 'Jl. Sindoro RT 06 / RW 02 Makbalim', '', '', '', '', 'MTs Muhammadiyah 01 Salawati', 'Jl. Poros Makbalim', 2020, 1594254918, 1268187146, 40, '', 0),
('5f0f9070d7cfa', 2, 'smk1-XTKJ1', 'Takuri', '0025168765', 'Brebes', '2002-10-04', 'Laki-laki', 'Islam', 'wni', '082199671753', 'Jl. S. Warmun/Sorong Timur, Kota Sorong, Papua Barat', 4, 'Supardi', 'Petani', 'Saisah', 'Ibu Rumah Tangga', '082199671753', 'Jl. S. Warmun', 'Hendra', 'PNS', 'Jl. S. Warmun', '081354129434', 'SMP N 10 Kota Sorong', 'Jl. Basuki Rahmat KM. 12', 2020, 1594855617, 1462882279, 40, '', 0),
('5f12c7341f5d3', 2, 'smk1-XTBSM', 'DImas Nur Afrizal', '0053115822', 'Sorong', '2005-03-17', 'Laki-laki', 'Islam', 'wni', '081343164210', 'Jl. Budi Utomo, RT 004 RW 001 Makbusun/Mayamuk, Kabupaten Sorong, Papua Barat', 7, 'Muklas Mulyono', 'Nelayan', 'Sumiati', 'Ibu Rumah Tangga', '082248324609', 'Jl. Budi Utomo, RT 004 RW 001 Makbusun', '', '', '', '', 'MTs Negeri Sorong', 'Kampung Mariyai', 2020, 1595066199, 632392264, 40, '', 0),
('5f12c9481c982', 1, 'smk1-XAKL2', 'Rosalina Assem', '0062167375', 'Timika', '2004-04-25', 'Perempuan', 'Islam', 'wni', '082110032189', 'Jl. Sanpan/Aimas, Kabupaten Sorong, Papua Barat', 1, 'Abner Assem', 'PNS', 'Emeliana Serin', 'Ibu Rumah Tangga', '082110032189', 'Kampung Susumuk', 'Amelia Serin', 'Ibu Runah Tangga', 'Jl. Sanpan', '081211405319', 'SMP N 02 Aifat Kab. Maybrat', 'Jl. Kamundan', 2020, 1595066744, 1122862632, 40, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ppdb_archive_new`
--

CREATE TABLE `ppdb_archive_new` (
  `id` varchar(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `id_jalur` int(11) NOT NULL,
  `class_id` varchar(64) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nisn` varchar(11) NOT NULL,
  `nik` varchar(17) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `kewarganegaraan` varchar(50) NOT NULL,
  `no_telp` varchar(18) NOT NULL,
  `alamat` text NOT NULL,
  `kode_jurusan` int(11) NOT NULL DEFAULT '0',
  `ayah_kandung` varchar(100) NOT NULL,
  `pekerjaan_ayah` varchar(255) NOT NULL,
  `ibu_kandung` varchar(100) NOT NULL,
  `pekerjaan_ibu` varchar(255) NOT NULL,
  `telp_ortu` varchar(18) NOT NULL,
  `alamat_ortu` text NOT NULL,
  `nama_wali` varchar(50) NOT NULL,
  `pekerjaan_wali` varchar(255) NOT NULL,
  `alamat_wali` text NOT NULL,
  `telp_wali` varchar(18) NOT NULL,
  `asal_sekolah` varchar(255) NOT NULL,
  `alamat_sekolah` text NOT NULL,
  `tahun_lulus` year(4) NOT NULL,
  `archive_at` int(11) NOT NULL,
  `archive_year` year(4) NOT NULL,
  `nomor_pendaftar` varchar(50) NOT NULL,
  `nilai` float DEFAULT NULL,
  `file` varchar(50) DEFAULT NULL,
  `is_tested` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ppdb_archive_new`
--

INSERT INTO `ppdb_archive_new` (`id`, `id_jalur`, `class_id`, `nama_lengkap`, `nisn`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `kewarganegaraan`, `no_telp`, `alamat`, `kode_jurusan`, `ayah_kandung`, `pekerjaan_ayah`, `ibu_kandung`, `pekerjaan_ibu`, `telp_ortu`, `alamat_ortu`, `nama_wali`, `pekerjaan_wali`, `alamat_wali`, `telp_wali`, `asal_sekolah`, `alamat_sekolah`, `tahun_lulus`, `archive_at`, `archive_year`, `nomor_pendaftar`, `nilai`, `file`, `is_tested`) VALUES
('60ceca0506eb4', 2, 'smk1-XAKL1', 'sdvsas', '9483762543', '9283716329423187', 'Sorong', '2021-06-11', 'Laki-laki', 'Islam', 'wni', '081393484770', 'Jl. Petro Cina, Unit 1, Aimas, Kabupaten Sorong, Papua Barat/asdsdvef', 1, 'cbefd', 'asdsd', 'awfsdf', 'fbcvcx', '7837948979', 'vszxfs', '', '', '', '', 'xvfasfwwef', '', 2024, 1624166435, 2021, '745611769', 78, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `psb`
--

CREATE TABLE `psb` (
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
  `is_tested` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `psb`
--

INSERT INTO `psb` (`psb_id`, `id_jalur`, `nama_lengkap`, `nisn`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `kewarganegaraan`, `no_telp`, `alamat`, `jurusan1`, `ayah_kandung`, `pekerjaan_ayah`, `ibu_kandung`, `pekerjaan_ibu`, `telp_ortu`, `alamat_ortu`, `nama_wali`, `pekerjaan_wali`, `alamat_wali`, `telp_wali`, `asal_sekolah`, `alamat_sekolah`, `tahun_lulus`, `tahun_submit`, `submit_at`, `nomor_pendaftar`, `nilai`, `file`, `is_tested`) VALUES
('60ce8e2bb6e32', 1, 'hasjjshhs', '7837948979', '2734792847274924', 'Surabaya', '2021-06-10', 'Laki-laki', 'Islam', 'wni', '081393484770', 'Jl. Petro Cina, Unit 1, Aimas, Kabupaten Sorong, Papua Barat/jajajajajaja', 'Teknik Komputer dan Jaringan', 'asdasda', 'asdasdasdg', 'sdADSA', 'sdfsdgwer', '081393484770', 'Jl. Petro Cina, Unit 1, Aimas, Kabupaten Sorong, Papua Barat', '', '', '', '', 'saffff', 'asdasdasd', 2021, 2021, 1624149547, 1070240755, 0, NULL, 0),
('60ceca0506eb4', 2, 'sdvsas', '9483762543', '9283716329423187', 'Sorong', '2021-06-11', 'Laki-laki', 'Islam', 'wni', '081393484770', 'Jl. Petro Cina, Unit 1, Aimas, Kabupaten Sorong, Papua Barat/asdsdvef', 'Akuntansi Keuangan Lembaga', 'cbefd', 'asdsd', 'awfsdf', 'fbcvcx', '7837948979', 'vszxfs', '', '', '', '', 'xvfasfwwef', '', 2024, 2021, 1624164869, 639163679, 78, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `username_or_email_on_hold`
--

CREATE TABLE `username_or_email_on_hold` (
  `ai` int(10) UNSIGNED NOT NULL,
  `username_or_email` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `nidn` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` varchar(12) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` text,
  `gender` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `telp` varchar(21) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `auth_level` tinyint(3) UNSIGNED NOT NULL,
  `banned` enum('0','1') NOT NULL DEFAULT '0',
  `passwd` varchar(60) NOT NULL,
  `passwd_recovery_code` varchar(60) DEFAULT NULL,
  `passwd_recovery_date` datetime DEFAULT NULL,
  `passwd_modified_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `nidn`, `nama`, `username`, `email`, `alamat`, `gender`, `telp`, `status`, `auth_level`, `banned`, `passwd`, `passwd_recovery_code`, `passwd_recovery_date`, `passwd_modified_at`, `last_login`, `created_at`, `modified_at`) VALUES
(2890700273, '99999999', 'Tarazi Udang', 'taraz14', 'dimaz.taraz@gmail.com', NULL, 'Laki-laki', NULL, 'Admin', 9, '0', '$2y$11$Xq.Wc4qq4ylIisf6K0Kwq.oh4BbWN4akgGtbUkMdokWoHer1cL4L2', NULL, NULL, NULL, '2021-06-20 11:36:05', '2020-02-29 11:10:04', '2021-06-20 04:36:05'),
(3428488265, '1456772673130043', 'Novel Dwijaksana', 'novel', 'novel.dwijaksana@gmail.com', NULL, NULL, NULL, NULL, 9, '0', '$2y$10$91MRnxd4Hd6s.ZNNPqY2.ufZEgpCZVygW1x3/M6QmtgkgL0SbjQTa', NULL, NULL, '2021-06-20 13:35:08', '2020-08-21 09:53:21', '2020-04-23 12:38:35', '2021-06-20 04:35:08');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `ca_passwd_trigger` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
    IF ((NEW.passwd <=> OLD.passwd) = 0) THEN
        SET NEW.passwd_modified_at = NOW();
    END IF;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepted`
--
ALTER TABLE `accepted`
  ADD PRIMARY KEY (`acc_id`),
  ADD KEY `id_jalur` (`id_jalur`) USING BTREE,
  ADD KEY `class_id` (`class_id`),
  ADD KEY `kode_jurusan` (`kode_jurusan`);

--
-- Indexes for table `acl`
--
ALTER TABLE `acl`
  ADD PRIMARY KEY (`ai`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `acl_categories`
--
ALTER TABLE `acl_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_code` (`category_code`),
  ADD UNIQUE KEY `category_desc` (`category_desc`);

--
-- Indexes for table `auth_sessions`
--
ALTER TABLE `auth_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`berita_id`),
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `button_activate`
--
ALTER TABLE `button_activate`
  ADD PRIMARY KEY (`bt_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `denied_access`
--
ALTER TABLE `denied_access`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `ips_on_hold`
--
ALTER TABLE `ips_on_hold`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `jalur_daftar`
--
ALTER TABLE `jalur_daftar`
  ADD PRIMARY KEY (`id_jalur`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `login_errors`
--
ALTER TABLE `login_errors`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `ppdb_archive`
--
ALTER TABLE `ppdb_archive`
  ADD PRIMARY KEY (`archive_id`),
  ADD KEY `id_jalur` (`id_jalur`) USING BTREE,
  ADD KEY `class_id` (`class_id`),
  ADD KEY `kode_jurusan` (`kode_jurusan`);

--
-- Indexes for table `ppdb_archive_new`
--
ALTER TABLE `ppdb_archive_new`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jalur` (`id_jalur`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `kode_jurusan` (`kode_jurusan`);

--
-- Indexes for table `psb`
--
ALTER TABLE `psb`
  ADD PRIMARY KEY (`psb_id`),
  ADD KEY `id_jalur` (`id_jalur`);

--
-- Indexes for table `username_or_email_on_hold`
--
ALTER TABLE `username_or_email_on_hold`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acl`
--
ALTER TABLE `acl`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acl_actions`
--
ALTER TABLE `acl_actions`
  MODIFY `action_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acl_categories`
--
ALTER TABLE `acl_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `denied_access`
--
ALTER TABLE `denied_access`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ips_on_hold`
--
ALTER TABLE `ips_on_hold`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jalur_daftar`
--
ALTER TABLE `jalur_daftar`
  MODIFY `id_jalur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `kode_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login_errors`
--
ALTER TABLE `login_errors`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `username_or_email_on_hold`
--
ALTER TABLE `username_or_email_on_hold`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `acl`
--
ALTER TABLE `acl`
  ADD CONSTRAINT `acl_ibfk_1` FOREIGN KEY (`action_id`) REFERENCES `acl_actions` (`action_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `acl_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD CONSTRAINT `acl_actions_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `acl_categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
