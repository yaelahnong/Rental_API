-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2020 at 05:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_denda`
--

CREATE TABLE `tb_denda` (
  `id_denda` int(11) NOT NULL,
  `jumlah_hari` int(1) DEFAULT NULL,
  `total_denda` decimal(10,0) DEFAULT NULL,
  `id_detail_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_denda`
--

INSERT INTO `tb_denda` (`id_denda`, `jumlah_hari`, `total_denda`, `id_detail_transaksi`) VALUES
(1, 2, '100000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_transaksi`
--

CREATE TABLE `tb_detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `kode_transaksi` varchar(30) DEFAULT NULL,
  `id_mobil` int(11) DEFAULT NULL,
  `tgl_sewa` datetime DEFAULT NULL,
  `tgl_akhir_penyewaan` datetime DEFAULT NULL,
  `tgl_pengembalian` datetime DEFAULT NULL,
  `denda` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_detail_transaksi`
--

INSERT INTO `tb_detail_transaksi` (`id_detail_transaksi`, `kode_transaksi`, `id_mobil`, `tgl_sewa`, `tgl_akhir_penyewaan`, `tgl_pengembalian`, `denda`, `total`, `status`, `created_at`, `updated_at`) VALUES
(33, 'TRX-20200801170845-1', 5, '2020-03-26 09:59:10', '2020-03-27 09:59:10', '2020-03-27 08:20:31', '0', '672000', 1, '2020-08-01 17:03:12', '2020-08-01 17:03:12'),
(34, 'TRX-20200801170849-2', 5, '2020-04-12 09:59:10', '2020-04-13 09:59:10', '2020-04-13 08:20:31', '0', '672000', 1, '2020-08-01 17:04:19', '2020-08-01 17:04:19'),
(35, 'TRX-20200801170810-3', 5, '2020-04-21 09:59:10', '2020-04-22 09:59:10', '2020-04-22 08:20:31', '0', '672000', 1, '2020-08-01 17:07:31', '2020-08-01 17:07:31'),
(36, 'TRX-20200801170844-4', 18, '2020-08-02 12:15:28', '2020-08-03 12:15:28', '2020-08-02 00:16:06', '0', '570000', 1, '2020-08-01 17:15:44', '2020-08-01 17:16:06'),
(37, 'TRX-20200801170806-5', 6, '2020-08-02 12:20:49', '2020-08-04 12:20:49', '2020-08-02 00:21:20', '0', '1470000', 1, '2020-08-01 17:21:06', '2020-08-01 17:21:20'),
(38, 'TRX-20200801170834-6', 17, '2020-08-06 10:30:12', '2020-08-07 10:30:12', '2020-08-02 00:22:43', '0', '870000', 1, '2020-08-01 17:22:34', '2020-08-01 17:22:43'),
(39, 'TRX-20200801170801-7', 16, '2020-08-02 12:30:51', '2020-08-03 12:30:51', NULL, NULL, NULL, NULL, '2020-08-01 17:31:01', '2020-08-01 17:31:01'),
(41, 'TRX-20200803050815-9', 6, '2020-08-03 12:24:06', '2020-08-04 12:24:06', '2020-08-10 13:23:16', '73500', '808500', 1, '2020-08-03 05:24:15', '2020-08-10 06:23:16'),
(42, 'TRX-20200803050840-10', 6, '2020-08-27 08:00:00', '2020-08-29 08:00:00', '2020-08-03 12:29:47', '0', '1470000', 1, '2020-08-03 05:28:40', '2020-08-03 05:29:47'),
(43, 'TRX-20200804090823-11', 5, '2020-05-11 09:59:10', '2020-05-12 09:59:10', '2020-05-12 08:10:29', '0', '672000', 1, '2020-08-04 09:09:18', '2020-08-04 09:21:26'),
(47, 'TRX-20200808170855-15', 2, '2020-08-09 12:56:26', '2020-08-10 12:56:26', '2020-09-18 10:59:51', '3780000', '4320000', 1, '2020-08-08 17:56:55', '2020-09-18 03:59:51'),
(48, 'TRX-20200918030917-16', 2, '2020-09-18 02:00:17', '2020-09-19 02:00:17', '2020-09-18 10:57:59', '0', '540000', 1, '2020-09-18 03:57:17', '2020-09-18 03:57:59'),
(49, 'TRX-20200918040902-17', 5, '2020-09-15 11:15:25', '2020-09-16 11:15:25', '2020-09-18 11:16:18', '1344000', '2016000', 1, '2020-09-18 04:16:02', '2020-09-18 04:16:18'),
(54, 'TRX-20201016171044-22', 17, '2020-10-17 09:49:24', '2020-10-18 09:49:24', NULL, NULL, NULL, 0, '2020-10-16 17:45:44', '2020-10-16 17:45:44'),
(62, 'TRX-20201029081011-30', 5, '2020-10-29 08:00:14', '2020-10-30 08:00:14', NULL, NULL, NULL, 0, '2020-10-29 08:16:11', '2020-10-29 08:16:11'),
(112, 'TRX-202010301610-63', 13, '2020-10-30 10:00:05', '2020-10-31 10:00:05', '2020-11-07 23:00:49', '570000', '1140000', 1, '2020-10-30 16:13:26', '2020-11-07 16:00:49'),
(113, 'TRX-202010301610-113', 14, '2020-10-30 11:00:50', '2020-10-31 11:00:50', NULL, NULL, NULL, 0, '2020-10-30 16:27:05', '2020-10-30 16:27:05'),
(114, 'TRX-202010301610-114', 14, '2020-10-30 10:30:03', '2020-10-31 10:30:03', NULL, NULL, NULL, 0, '2020-10-30 16:34:22', '2020-10-30 16:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mobil`
--

CREATE TABLE `tb_mobil` (
  `id_mobil` int(11) NOT NULL,
  `nama_mobil` varchar(20) DEFAULT NULL,
  `merk_mobil` varchar(20) DEFAULT NULL,
  `jenis_mobil` varchar(20) DEFAULT NULL,
  `transmisi_mobil` varchar(10) DEFAULT NULL,
  `deskripsi_mobil` text DEFAULT NULL,
  `tahun_mobil` varchar(4) DEFAULT NULL,
  `kapasitas_mobil` int(2) DEFAULT NULL,
  `harga_mobil` decimal(10,0) DEFAULT NULL,
  `warna_mobil` varchar(10) DEFAULT NULL,
  `plat_no_mobil` varchar(11) DEFAULT NULL,
  `status_mobil` int(1) DEFAULT NULL,
  `foto_mobil` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mobil`
--

INSERT INTO `tb_mobil` (`id_mobil`, `nama_mobil`, `merk_mobil`, `jenis_mobil`, `transmisi_mobil`, `deskripsi_mobil`, `tahun_mobil`, `kapasitas_mobil`, `harga_mobil`, `warna_mobil`, `plat_no_mobil`, `status_mobil`, `foto_mobil`, `created_at`, `updated_at`) VALUES
(2, 'Hiace NEW!', 'Toyota', 'MPV', 'Manual', 'Hiace dari Toyota', '2011', 8, '540000', 'Putih', 'F 123 AB', 1, 'toyota_hiace.png', '2020-03-21 20:42:40', '2020-08-04 10:44:43'),
(5, 'Camry', 'Toyota', 'Sedan', 'Manual', 'Mobil dari Toyota', '2016', 4, '672000', 'Silver', 'B 1234 SE', 1, 'toyota_camry.png', '2020-03-22 16:03:33', '2020-11-07 15:13:22'),
(6, 'Fortuner', 'Toyota', 'SUV', 'Manual', 'Mobil keluaran Toyota', '2014', 7, '735000', 'Putih', 'F 1452 ED', 1, 'fortuner.png', '2020-03-22 16:14:04', '2020-03-22 16:14:04'),
(8, 'Pajero Sport', 'Mitsubishi', 'SUV', 'Manual', 'Hiace dari Toyota', '2013', 7, '645000', 'Silver', 'F 4452 BC', 1, 'pajero-sport.png', '2020-03-22 16:41:28', '2020-08-04 11:02:49'),
(13, 'Jazz RS', 'Honda', 'Hatchback', 'Manual', 'Mobil keluaran Honda', '2011', 4, '570000', 'Biru', 'F 5613 ST', 1, 'Honda-Jazz-RS.jpg', '2020-03-24 12:26:41', '2020-08-04 10:18:43'),
(14, 'Ertiga', 'Suzuki', 'MPV', 'Manual', 'Mobil dari Suzuki', '2015', 7, '680000', 'Putih', 'F 1523 BA', 1, 'ertiga.png', '2020-03-24 13:07:13', '2020-08-04 11:04:53'),
(16, 'Yaris', 'Toyota', 'Hatchback', 'Manual', 'Camry from Toyota', '2015', 5, '650000', 'Putih', 'F 6233 BA', 1, 'yaris.jpg', '2020-03-24 13:30:04', NULL),
(17, 'Alphard', 'Toyota', 'MPV', 'Automatic', 'Mobil keluaran Toyota', '2017', 7, '870000', 'Putih', 'F 1313 AB', 1, 'new-alphard-white-pearl.png', '2020-03-24 13:42:38', NULL),
(18, 'Ayla', 'Daihatsu', 'Hatchback', 'Manual', 'Mobil keluaran Daihatsu', '2016', 5, '570000', 'Orange Met', 'F 4242 OA', 1, 'ayla.jpg', '2020-03-24 13:57:21', NULL),
(23, 'Xenia-R', 'Daihatsu', 'MPV', 'Manual', 'Mobil keluarga handal', '2014', 7, '720000', 'Silver', 'F 2321 EZ', 1, 'xenia-R.jpg', '2020-11-07 15:33:37', '2020-11-07 15:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `kode_transaksi` varchar(30) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tgl_order` datetime DEFAULT NULL,
  `total_pembayaran` decimal(10,0) DEFAULT NULL,
  `tgl_pembayaran` datetime DEFAULT NULL,
  `status_pembayaran` int(1) DEFAULT NULL,
  `status_transaksi` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`kode_transaksi`, `id_user`, `tgl_order`, `total_pembayaran`, `tgl_pembayaran`, `status_pembayaran`, `status_transaksi`, `created_at`, `updated_at`) VALUES
('TRX-20200801170801-7', 18, '2020-08-02 12:31:00', '650000', NULL, 0, 0, '2020-08-01 17:31:01', '2020-08-01 17:31:01'),
('TRX-20200801170806-5', 16, '2020-08-02 12:21:05', '1470000', '2020-08-02 00:21:13', 1, 1, '2020-08-01 17:21:06', '2020-08-01 17:21:20'),
('TRX-20200801170810-3', 15, '2020-04-20 10:20:43', '672000', '2020-04-21 09:59:10', 1, 1, '2020-08-01 17:06:10', '2020-08-01 17:06:10'),
('TRX-20200801170834-6', 15, '2020-08-02 12:22:33', '870000', '2020-08-02 00:22:38', 1, 1, '2020-08-01 17:22:34', '2020-08-01 17:22:43'),
('TRX-20200801170844-4', 7, '2020-08-02 12:15:44', '570000', '2020-08-02 00:15:54', 1, 1, '2020-08-01 17:15:44', '2020-08-01 17:16:06'),
('TRX-20200801170845-1', 7, '2020-03-25 15:03:10', '672000', '2020-03-26 09:59:10', 1, 1, '2020-08-01 17:02:45', '2020-08-01 17:02:45'),
('TRX-20200801170849-2', 7, '2020-04-11 15:20:09', '672000', '2020-04-12 09:59:10', 1, 1, '2020-08-01 17:03:49', '2020-08-01 17:03:49'),
('TRX-20200803050815-9', 15, '2020-08-03 12:24:13', '735000', '2020-08-10 13:23:09', 1, 1, '2020-08-03 05:24:15', '2020-08-10 06:23:16'),
('TRX-20200803050840-10', 19, '2020-08-03 12:28:38', '1470000', '2020-08-03 12:29:15', 1, 1, '2020-08-03 05:28:40', '2020-08-03 05:29:47'),
('TRX-20200804090823-11', 15, '2020-05-10 10:20:43', '672000', '2020-05-11 09:59:10', 1, 1, '2020-08-04 09:07:24', '2020-08-04 09:10:56'),
('TRX-20200808170855-15', 8, '2020-08-09 12:56:53', '540000', '2020-08-10 17:24:49', 1, 1, '2020-08-08 17:56:55', '2020-09-18 03:59:51'),
('TRX-20200918030917-16', 15, '2020-09-18 10:57:10', '540000', '2020-09-18 10:57:43', 1, 1, '2020-09-18 03:57:17', '2020-09-18 03:57:59'),
('TRX-20200918040902-17', 15, '2020-09-18 11:15:59', '672000', '2020-09-18 11:16:11', 1, 1, '2020-09-18 04:16:02', '2020-09-18 04:16:18'),
('TRX-20201016171044-22', 16, '2020-10-17 12:45:42', '870000', NULL, 0, 0, '2020-10-16 17:45:44', '2020-10-16 17:45:44'),
('TRX-20201029081011-30', 22, '2020-10-29 03:15:45', '672000', '2020-10-29 16:21:37', 1, 0, '2020-10-29 08:16:11', '2020-10-29 09:21:37'),
('TRX-202010301610-113', 17, '2020-10-30 11:27:05', '680000', '2020-10-30 23:27:15', 1, 0, '2020-10-30 16:27:05', '2020-10-30 16:27:15'),
('TRX-202010301610-114', 20, '2020-10-30 11:34:22', '680000', NULL, 0, 0, '2020-10-30 16:34:22', '2020-10-30 16:34:22'),
('TRX-202010301610-63', 15, '2020-10-30 11:13:25', '570000', '2020-10-30 23:13:55', 1, 1, '2020-10-30 16:13:25', '2020-11-07 16:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `api_token` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_expires` datetime DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `level` enum('admin','operator','user') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id_user`, `email`, `password`, `api_token`, `reset_password_token`, `reset_password_expires`, `nama`, `no_telp`, `jenis_kelamin`, `alamat`, `foto`, `level`, `created_at`, `updated_at`) VALUES
(5, 'marinoimola@gmail.com', '$2y$10$LKXu/FWnrK14lWMaOkBY/.fFyjRqa8ZV9Nf/ttj/FB9dPknQNhuDm', '7dd79032bdb9c1aaa291e2640698d35ee92c4ae3', NULL, NULL, 'Administrator', '085156252911', 'laki-laki', 'Jl.Cijahe no.1 rt02/01 kec.Bogor Barat kel.Curug Mekar 16113 Jawa Barat', 'ino.jpg', 'admin', '2020-03-19 20:14:12', '2020-10-16 12:03:36'),
(7, 'user@localhost.com', '$2y$10$o6oe.odxRsoqmqexgVhFe.kJK4bBg8h2a/GfDtNo6p5au8vIssi4u', 'c8d9d9c44e5474bb716b04b8b1b9a0e675c41a2b', NULL, NULL, 'user', '0888', NULL, NULL, NULL, 'user', '2020-06-09 19:52:58', '2020-10-30 16:36:38'),
(8, 'marinoimola27@gmail.com', '$2y$10$kZZW9cB8aqXqwVZtYTeNx.5nrfy5/dCZE7PPBVTYsdlj1Z3NZYHTa', 'ac39663d7e48f32344066ee8b61a9c72b693fab7', 'eyJpdiI6IkQ4NDZuVTZma1JOa2F2amNnNlZML1E9PSIsInZhbHVlIjoiTVZWNXIzSkdrMmNjYnNlQmpUQ3lxZz09IiwibWFjIjoiNzM2MTBlY2JkODc5OWI3ZGEyNzQxYzQ3ODYxNGYzZWUyY2MzOWZjYTg0M2NiYTNiYjI4NjliYWM3NWMwNmJkYyJ9', '2020-10-31 00:25:35', 'Marino Imola', '085156251911', 'laki-laki', 'Jl. Cijahe no.1 rt02/rw01 kec.Bogor Barat kel.Curug Mekar Kota Bogor 16113 Jawa Barat', 'user-1.jpg', 'operator', '2020-08-06 13:24:31', '2020-10-30 16:33:31'),
(9, 'bambang@localhost.com', '$2y$10$Lyb9rIQ5av7k55cBCUPJXOSLF25Np9oLi9Mlv6JAa5oauHP.ORJYC', NULL, NULL, NULL, 'Bambang', '081284855532', 'laki-laki', 'Jl. Raya no.23 rt09/rw08 Kota Bogor', 'cr-v.jpg', 'user', '2020-07-09 12:08:17', '2020-07-09 12:08:25'),
(15, 'soekirman@gmail.com', '$2y$10$HE4hrv/07OzplSN/GMaqSuEzhTz6lCXPESYsVlHM.ogHHhQSPvyH.', '717d900decb3c1922ec131273974adca3f5e2271', 'eyJpdiI6IlIwczJObU5RaWVtRWxOeE91UmFpRWc9PSIsInZhbHVlIjoiUy9lRThteTFpWTFYbFdVSFltL0Jjdz09IiwibWFjIjoiZTcyN2Q3MWQ5NWQ2MDViOGRkNGRhMDZjYjc5YzliM2M1NzI4ZjExYzAxMjViOTAzNTExOGNiZDQ5MzE3YTE0ZSJ9', NULL, 'Soekirman', '081284855532', NULL, NULL, NULL, 'user', '2020-07-22 22:19:36', '2020-11-07 15:47:42'),
(16, 'soekisoekijan@yahoo.com', '$2y$10$HRCN8Xayn3dBDWlqDLXnyeNvEu.UFRylFoyg6vJixVGeoqp6mw7wW', '1d9257a29a4bfe8103132374c6cb4e6415273058', NULL, NULL, 'Soekijan', '0895221123234', NULL, NULL, NULL, 'user', '2020-07-22 23:26:55', '2020-10-16 17:43:31'),
(17, 'donirivaldi2@gmail.com', '$2y$10$WfJJ/lCvERqA0Nh0IeGdwetdMny9prdfqotK7A26.po5h6zdneRYW', '5b475a1ff26b19a7075c148ddf60899073fc193e', NULL, NULL, 'Doni Rivaldi', '089513561669', 'laki-laki', 'Tawakal, Cifor', 'IMG_1089.JPG', 'operator', '2020-08-06 13:24:46', '2020-10-30 16:26:28'),
(18, 'marinoimola@yahoo.com', '$2y$10$cyqVhYMy74VYdFBw6rhhgeNJiWwK5JdhvcCP3vwyc6Y067Ju94Kfm', 'f30c65f5268fa745ed72fc812067b409ee8cba46', NULL, NULL, 'Marino Imola', '085156252911', NULL, NULL, NULL, 'user', '2020-08-01 17:29:11', '2020-08-01 17:29:12'),
(19, 'haikaldamar23@gmail.com', '$2y$10$Tb7ab61lW6w41HWJLwyCP.fUCjsZtNAOFWNcOsjlXZVFaEHAOLsI6', '71bf8038078daaa803363d640c493c6a0076b4fd', NULL, NULL, 'Haikal Damar', '085722737371', NULL, NULL, NULL, 'user', '2020-08-03 05:27:10', '2020-08-03 05:27:10'),
(20, 'hazeofficial@gmail.com', '$2y$10$yPCGo.6L9q.SOpD/lLxo6um8.VUf.TgdpKUox3YaYjyQ0oGtsc/pC', '9de3ae7239f36ecaad6c1a7fe30844909277bb42', NULL, NULL, 'Audhika Habby Satria', '082261889566', 'laki-laki', 'Atang Senjaya', '244551.jpg', 'operator', '2020-08-06 13:24:37', '2020-10-30 16:33:43'),
(21, 'yaelahnong@gmail.com', '$2y$10$8x9FnrHtdGjlzc4eiSCl2OZ5.cnvgNWxowMFzulxKrt02lYnJ38Cy', NULL, NULL, NULL, 'Marino Imola', '081284855532', 'laki-laki', 'Bogor', 'ai_cc_splash.png', 'operator', '2020-08-06 13:21:58', NULL),
(22, 'evan.you123@gmail.com', '$2y$10$yiFVRdhDwl96XLZ0I3m9muS2dDe83fVVQAWM0ap6s4lri.1DMph3S', 'd53cd1bd5cb98ce9d88f3ff5ef7cedd6a2280927', NULL, NULL, 'Evan You', '0812321321', NULL, NULL, NULL, NULL, '2020-10-29 07:53:55', '2020-10-29 07:53:56'),
(23, 'user@localhost.com', '$2y$10$5c57uJs2A2h55nbI8G5EG./Pklqugos3jL3157qI89J0J1ynUe5K6', NULL, NULL, NULL, 'user', '1234567890', NULL, NULL, NULL, NULL, '2020-10-30 16:35:18', '2020-10-30 16:35:18'),
(24, 'user@localhost.com', '$2y$10$/UdkIyGhHua8wlMfF5Y3gursx8Vfia7SCSw9aJXavOqZDAC26MIfi', NULL, NULL, NULL, 'user', '1234567890', NULL, NULL, NULL, NULL, '2020-10-30 16:35:21', '2020-10-30 16:35:21'),
(25, 'user@localhost.com', '$2y$10$yw/9ETKzqOAj3ySrDZFyVOqmWDI5xEK55Lm64jbOOGrOntuxpuwmS', NULL, NULL, NULL, 'user', '1234567890', NULL, NULL, NULL, NULL, '2020-10-30 16:35:29', '2020-10-30 16:35:29'),
(26, 'user@localhost.com', '$2y$10$F1QQHA.RXsAvSVtVXglUkugYZ683Bm389DvaV9xdeA3UkLTPJQANe', NULL, NULL, NULL, 'user', '1234567890', NULL, NULL, NULL, NULL, '2020-10-30 16:35:50', '2020-10-30 16:35:50'),
(27, 'user@localhost.com', '$2y$10$ccs2O7AoXP7j8LsZHT.ngOMuXXBIKX34x80LaOE5ymjJVq2fPhbSm', NULL, NULL, NULL, 'user', '0881281421', NULL, NULL, NULL, NULL, '2020-10-30 16:36:38', '2020-10-30 16:36:38'),
(28, 'marinoimola514@gmail.com', '$2y$10$.LKrJKcfRwynMQiAo0XyneSL6etbvGMeyWx0YpiipxU20pvJxz2Ri', '90a537c4228bc6cf4d1a31c65bb2c9aca49a83cf', NULL, NULL, 'Marino Imola', '085156252911', NULL, NULL, NULL, NULL, '2020-10-30 20:39:29', '2020-10-30 20:39:30'),
(29, 'marinoimola704@yahoo.com', '$2y$10$TXfN3mG0RFGdKisUgK321eYhtHz4CxvrSoAikS7C9e6954hP/cVii', NULL, NULL, NULL, 'Marino Imola', '081284855532', 'laki-laki', 'Jl.Cijahe no.1 rt02/rw01 kel.Curug Mekar kec.Bogor Barat Bogor 16113', 'user-1.jpg', 'operator', '2020-11-03 07:16:02', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_detail_transaksi`
-- (See below for the actual view)
--
CREATE TABLE `v_detail_transaksi` (
`kode_transaksi` varchar(30)
,`id_detail_transaksi` int(11)
,`id_user` int(11)
,`id_mobil` int(11)
,`nama` varchar(30)
,`tgl_order` datetime
,`total` decimal(10,0)
,`tgl_pembayaran` datetime
,`status_pembayaran` int(1)
,`status_transaksi` int(1)
,`nama_mobil` varchar(20)
,`merk_mobil` varchar(20)
,`plat_no_mobil` varchar(11)
,`tgl_sewa` datetime
,`tgl_akhir_penyewaan` datetime
,`tgl_pengembalian` datetime
,`harga_mobil` decimal(10,0)
,`denda` decimal(10,0)
,`total_pembayaran` decimal(10,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_hitung_harga`
-- (See below for the actual view)
--
CREATE TABLE `v_hitung_harga` (
`kode_transaksi` varchar(30)
,`harga_perhari` varchar(14)
,`jumlah_hari` int(7)
,`total_pembayaran` varchar(14)
,`hitung_harga` varchar(22)
,`nama_mobil` varchar(41)
);

-- --------------------------------------------------------

--
-- Structure for view `v_detail_transaksi`
--
DROP TABLE IF EXISTS `v_detail_transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_detail_transaksi`  AS  select `tb_transaksi`.`kode_transaksi` AS `kode_transaksi`,`tb_detail_transaksi`.`id_detail_transaksi` AS `id_detail_transaksi`,`tb_users`.`id_user` AS `id_user`,`tb_mobil`.`id_mobil` AS `id_mobil`,`tb_users`.`nama` AS `nama`,`tb_transaksi`.`tgl_order` AS `tgl_order`,`tb_detail_transaksi`.`total` AS `total`,`tb_transaksi`.`tgl_pembayaran` AS `tgl_pembayaran`,`tb_transaksi`.`status_pembayaran` AS `status_pembayaran`,`tb_transaksi`.`status_transaksi` AS `status_transaksi`,`tb_mobil`.`nama_mobil` AS `nama_mobil`,`tb_mobil`.`merk_mobil` AS `merk_mobil`,`tb_mobil`.`plat_no_mobil` AS `plat_no_mobil`,`tb_detail_transaksi`.`tgl_sewa` AS `tgl_sewa`,`tb_detail_transaksi`.`tgl_akhir_penyewaan` AS `tgl_akhir_penyewaan`,`tb_detail_transaksi`.`tgl_pengembalian` AS `tgl_pengembalian`,`tb_mobil`.`harga_mobil` AS `harga_mobil`,`tb_detail_transaksi`.`denda` AS `denda`,`tb_transaksi`.`total_pembayaran` AS `total_pembayaran` from (((`tb_mobil` join `tb_detail_transaksi`) join `tb_transaksi`) join `tb_users`) where `tb_detail_transaksi`.`id_mobil` = `tb_mobil`.`id_mobil` and `tb_detail_transaksi`.`kode_transaksi` = `tb_transaksi`.`kode_transaksi` and `tb_transaksi`.`id_user` = `tb_users`.`id_user` ;

-- --------------------------------------------------------

--
-- Structure for view `v_hitung_harga`
--
DROP TABLE IF EXISTS `v_hitung_harga`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_hitung_harga`  AS  select `tb_transaksi`.`kode_transaksi` AS `kode_transaksi`,format(`tb_mobil`.`harga_mobil`,0) AS `harga_perhari`,to_days(`tb_detail_transaksi`.`tgl_akhir_penyewaan`) - to_days(`tb_detail_transaksi`.`tgl_sewa`) AS `jumlah_hari`,format(`tb_transaksi`.`total_pembayaran`,0) AS `total_pembayaran`,format(`tb_mobil`.`harga_mobil` * (to_days(`tb_detail_transaksi`.`tgl_akhir_penyewaan`) - to_days(`tb_detail_transaksi`.`tgl_sewa`)),0) AS `hitung_harga`,concat_ws(' ',`tb_mobil`.`merk_mobil`,`tb_mobil`.`nama_mobil`) AS `nama_mobil` from ((`tb_transaksi` join `tb_detail_transaksi`) join `tb_mobil`) where `tb_transaksi`.`kode_transaksi` = `tb_detail_transaksi`.`kode_transaksi` and `tb_mobil`.`id_mobil` = `tb_detail_transaksi`.`id_mobil` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_denda`
--
ALTER TABLE `tb_denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indexes for table `tb_detail_transaksi`
--
ALTER TABLE `tb_detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`);

--
-- Indexes for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`kode_transaksi`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_denda`
--
ALTER TABLE `tb_denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_detail_transaksi`
--
ALTER TABLE `tb_detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `tb_mobil`
--
ALTER TABLE `tb_mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
