-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2020 at 08:09 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbapotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_dokter`
--

CREATE TABLE `data_dokter` (
  `id` int(11) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` char(1) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gol_darah` varchar(2) NOT NULL,
  `alamat` text NOT NULL,
  `keterangan` text DEFAULT NULL,
  `deleted` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_dokter`
--

INSERT INTO `data_dokter` (`id`, `kode`, `nama`, `jk`, `tgl_lahir`, `gol_darah`, `alamat`, `keterangan`, `deleted`) VALUES
(1, 'DK0001', 'Adit', 'L', '2020-08-06', 'AB', 'Bandung', 'Test', '0'),
(2, 'DK0002', 'Alfi', 'P', '2020-08-08', 'B', 'Bandung', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `data_jenis`
--

CREATE TABLE `data_jenis` (
  `id` int(11) NOT NULL,
  `jenis` varchar(25) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `deleted` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_jenis`
--

INSERT INTO `data_jenis` (`id`, `jenis`, `keterangan`, `deleted`) VALUES
(1, 'Tablet', '', '0'),
(2, 'Pil', NULL, '0'),
(3, 'Kapsul', NULL, '0'),
(4, 'Syrup', 'Antibiotik', '0'),
(5, 'Tablet Hisap', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `data_kelolauser`
--

CREATE TABLE `data_kelolauser` (
  `group_id` int(11) NOT NULL,
  `data_satuan` int(11) NOT NULL,
  `data_jenisObat` int(11) NOT NULL,
  `data_obat` int(11) NOT NULL,
  `data_penyakit` int(11) NOT NULL,
  `data_dokter` int(11) NOT NULL,
  `data_pelanggan` int(11) NOT NULL,
  `transaksi_obat` int(11) NOT NULL,
  `lap_transaksi` int(11) NOT NULL,
  `lap_stok` int(11) NOT NULL,
  `lap_obatKeluar` int(11) NOT NULL,
  `lap_penjualanGlobal` int(11) NOT NULL,
  `lap_rekamMedis` int(11) NOT NULL,
  `data_pengguna` int(11) NOT NULL,
  `kelola_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kelolauser`
--

INSERT INTO `data_kelolauser` (`group_id`, `data_satuan`, `data_jenisObat`, `data_obat`, `data_penyakit`, `data_dokter`, `data_pelanggan`, `transaksi_obat`, `lap_transaksi`, `lap_stok`, `lap_obatKeluar`, `lap_penjualanGlobal`, `lap_rekamMedis`, `data_pengguna`, `kelola_menu`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_obat`
--

CREATE TABLE `data_obat` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `merk` varchar(30) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `expired` date NOT NULL,
  `keterangan` text DEFAULT NULL,
  `deleted` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_obat`
--

INSERT INTO `data_obat` (`id`, `kode`, `merk`, `id_jenis`, `harga_beli`, `harga_jual`, `stok`, `id_satuan`, `expired`, `keterangan`, `deleted`) VALUES
(1, 'Ob0001', 'Ibuprofen', 2, 8000, 12000, 10, 1, '2021-01-27', 'Test', '0'),
(2, 'Ob0002', 'Bodrex', 2, 1500, 3000, 15, 2, '2021-04-09', 'Coba', '0'),
(3, 'Ob0003', 'Oralit', 4, 500, 2000, 50, 3, '2021-12-02', 'Obat diare', '0'),
(4, 'Ob0004', 'Woods', 4, 30000, 35000, 35, 3, '2021-06-09', 'Obat Batuk', '0');

-- --------------------------------------------------------

--
-- Table structure for table `data_pelanggan`
--

CREATE TABLE `data_pelanggan` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` char(1) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `deleted` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pelanggan`
--

INSERT INTO `data_pelanggan` (`id`, `nama`, `jk`, `telp`, `alamat`, `deleted`) VALUES
(1, 'Akbar', 'L', '082315392312', 'Bandung', '1'),
(2, 'Susi', 'L', '0823143988', 'Bandung', '1'),
(3, 'Agam', 'L', '082314398833', 'Bandung', '0'),
(4, 'Mariam', 'P', '08231439884', 'Bandung', '0'),
(5, 'Dodit', 'L', '0854354322', 'Cilacap', '0'),
(6, 'William', 'L', '084324235', 'Bandung', '1'),
(7, 'test', 'P', '0867646556', 'test', '1');

-- --------------------------------------------------------

--
-- Table structure for table `data_penyakit`
--

CREATE TABLE `data_penyakit` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `deleted` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_penyakit`
--

INSERT INTO `data_penyakit` (`id`, `nama`, `keterangan`, `deleted`) VALUES
(1, 'Asma', 'test', '0'),
(2, 'Migrain', NULL, '0'),
(3, 'Hepatitis', 'coba', '0');

-- --------------------------------------------------------

--
-- Table structure for table `data_satuan`
--

CREATE TABLE `data_satuan` (
  `id` int(11) NOT NULL,
  `satuan` varchar(25) NOT NULL,
  `deleted` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_satuan`
--

INSERT INTO `data_satuan` (`id`, `satuan`, `deleted`) VALUES
(1, 'Kapsul', '1'),
(2, 'Tablet', '0'),
(3, 'Botol', '1'),
(4, 'Bungkus', '1'),
(5, 'Pcs', '0'),
(6, 'Kotak', '0'),
(7, 'Ampul', '1'),
(8, 'PC', '0'),
(9, 'ml', '0'),
(10, 'Lusin', '0'),
(11, 'mle', '0'),
(12, 'test', '0'),
(13, 'testnya', '0'),
(14, 'cobain', '0'),
(15, 'rexe', '0'),
(16, 'Box', '1'),
(17, 'Box', '1'),
(18, 'Box', '1'),
(19, 'Box', '0'),
(20, 'Boxe', '1'),
(21, 'Boxny', '0'),
(22, 'Box', '1'),
(23, 'Cs', '0'),
(24, 'Box2', '1'),
(25, 'testnya3', '0'),
(26, 'coba', '1'),
(27, 'Bere', '1'),
(28, 're', '0'),
(29, 'test', '0'),
(30, 'Ce', '1');

-- --------------------------------------------------------

--
-- Table structure for table `data_stok`
--

CREATE TABLE `data_stok` (
  `id` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_obat` varchar(10) NOT NULL,
  `kode_penjualan` varchar(20) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `deleted` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_stok`
--

INSERT INTO `data_stok` (`id`, `id_penjualan`, `tanggal`, `kode_obat`, `kode_penjualan`, `id_pelanggan`, `stok`, `deleted`) VALUES
(1, 1, '2020-07-31', 'Ob0002', 'TR2020070001', 1, -2, '0'),
(2, 2, '2020-10-07', 'Ob0003', 'TR2020070002', 1, -5, '1'),
(3, 2, '2020-10-07', 'Ob0003', 'TR2020070002', 1, -5, '1'),
(4, 3, '2020-08-02', 'Ob0002', 'TR2020070003', 1, -3, '1'),
(5, 4, '2021-02-01', 'Ob0004', 'TR2020070004', 2, -1, '0'),
(6, 4, '2021-02-01', 'Ob0004', 'TR2020070004', 2, -1, '0'),
(7, 4, '2021-02-01', 'Ob0004', 'TR2020070004', 2, -1, '0'),
(8, 5, '2020-08-01', 'Ob0003', 'TR2020080001', 1, -2, '1'),
(9, 6, '2020-08-14', 'Ob0004', 'TR2020080002', 2, -1, '0'),
(10, 7, '2020-08-21', 'Ob0004', 'TR2020080003', 1, -1, '1'),
(11, 7, '2020-08-21', 'Ob0003', 'TR2020080003', 1, -2, '1'),
(12, 8, '2020-08-15', 'Ob0002', 'TR2020080004', 1, -2, '0'),
(13, 8, '2020-08-15', 'Ob0002', 'TR2020080004', 1, -2, '0'),
(14, 9, '2020-08-14', 'Ob0002', 'TR2020080005', 1, -2, '1'),
(15, 10, '2020-08-21', 'Ob0003', 'TR2020080006', 0, -2, '0'),
(16, 10, '2020-08-21', 'Ob0003', 'TR2020080006', 0, -2, '0'),
(17, 11, '2020-08-18', 'Ob0002', 'TR2020080007', 1, -2, '0'),
(18, 12, '2020-08-15', 'Ob0001', 'TR2020080008', 3, -3, '1'),
(19, 13, '2020-08-14', 'Ob0003', 'TR2020080009', 2, -4, '1'),
(20, 16, '2020-08-30', 'Ob0004', 'TR2020080012', 3, 1, '0'),
(21, 16, '2020-08-30', 'Ob0004', 'TR2020080012', 3, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `catatan` text DEFAULT NULL,
  `deleted` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`id`, `nama`, `pass`, `group_id`, `catatan`, `deleted`) VALUES
(1, 'Marcell', '123', 1, 'test', '0'),
(2, 'Adit', '123', 1, 'Test aja', '0'),
(3, 'Mutiara', '123', 2, 'Test', '0'),
(4, 'Putri', '321', 1, 'Test', '0'),
(5, 'test', '123', 3, 'Test', '0'),
(6, 'Coba', '123', 2, 'test', '1');

-- --------------------------------------------------------

--
-- Table structure for table `d_penjualan`
--

CREATE TABLE `d_penjualan` (
  `id` int(11) NOT NULL,
  `id_penjualan` int(10) NOT NULL,
  `kode_obat` varchar(10) NOT NULL,
  `merk` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `deleted` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_penjualan`
--

INSERT INTO `d_penjualan` (`id`, `id_penjualan`, `kode_obat`, `merk`, `harga`, `qty`, `subtotal`, `deleted`) VALUES
(1, 1, 'Ob0002', 'Bodrex', 3000, 2, 6000, '1'),
(2, 2, 'Ob0003', 'Oralit', 2000, 5, 10000, '0'),
(3, 2, 'Ob0004', 'Woods', 35000, 1, 35000, '1'),
(4, 3, 'Ob0002', 'Bodrex', 3000, 3, 9000, '1'),
(5, 4, 'Ob0002', 'Bodrex', 3000, 2, 6000, '0'),
(6, 4, 'Ob0002', 'Bodrex', 3000, 2, 6000, '0'),
(7, 4, 'Ob0002', 'Bodrex', 3000, 2, 6000, '0'),
(8, 5, 'Ob0003', 'Oralit', 2000, 2, 4000, '0'),
(9, 6, 'Ob0004', 'Woods', 35000, 1, 35000, '0'),
(10, 7, 'Ob0004', 'Woods', 35000, 1, 35000, '0'),
(11, 7, 'Ob0003', 'Oralit', 2000, 2, 4000, '0'),
(12, 8, 'Ob0002', 'Bodrex', 3000, 2, 6000, '1'),
(13, 8, 'Ob0001', 'Ibuprofen', 12000, 1, 12000, '0'),
(14, 9, 'Ob0002', 'Bodrex', 3000, 2, 6000, '0'),
(15, 10, 'Ob0002', 'Bodrex', 3000, 2, 6000, '1'),
(16, 10, 'Ob0003', 'Oralit', 12000, 1, 12000, '0'),
(17, 11, 'Ob0002', 'Bodrex', 3000, 2, 6000, '0'),
(18, 12, 'Ob0001', 'Ibuprofen', 12000, 3, 36000, '0'),
(19, 13, 'Ob0003', 'Oralit', 2000, 4, 8000, '0'),
(20, 14, 'Ob0001', 'Ibuprofen', 12000, 1, 12000, '0'),
(21, 14, 'Ob0003', 'Oralit', 2000, 1, 2000, '0'),
(22, 15, 'Ob0003', 'Oralit', 2000, 1, 2000, '0'),
(23, 15, 'Ob0002', 'Bodrex', 3000, 1, 3000, '0'),
(24, 16, 'Ob0004', 'Woods', 35000, 1, 35000, '1'),
(25, 16, 'Ob0004', 'Woods', 35000, 1, 35000, '0'),
(26, 16, 'Ob0004', 'Woods', 35000, 1, 35000, '0'),
(27, 16, 'Ob0004', 'Woods', 35000, 1, 35000, '0'),
(28, 16, 'Ob0004', 'Woods', 35000, 1, 35000, '0'),
(29, 18, 'Ob0002', 'Bodrex', 3000, 2, 6000, '0'),
(30, 19, 'Ob0002', 'Bodrex', 3000, 1, 3000, '0'),
(31, 19, 'Ob0001', 'Ibuprofen', 12000, 2, 24000, '0'),
(32, 20, 'Ob0003', 'Oralit', 2000, 2, 4000, '0'),
(33, 20, 'Ob0004', 'Woods', 35000, 1, 35000, '0'),
(34, 20, 'Ob0001', 'Ibuprofen', 12000, 2, 24000, '0'),
(35, 20, 'Ob0002', 'Bodrex', 3000, 1, 3000, '0'),
(36, 20, 'Ob0001', 'Ibuprofen', 12000, 2, 24000, '0'),
(37, 20, 'Ob0003', 'Oralit', 2000, 2, 4000, '0'),
(38, 20, 'Ob0002', 'Bodrex', 3000, 1, 3000, '0'),
(39, 20, 'Ob0001', 'Ibuprofen', 12000, 2, 24000, '0'),
(40, 20, 'Ob0003', 'Oralit', 2000, 2, 4000, '0'),
(41, 20, 'Ob0003', 'Oralit', 2000, 2, 4000, '0'),
(42, 20, 'Ob0001', 'Ibuprofen', 12000, 1, 12000, '0'),
(43, 21, 'Ob0002', 'Bodrex', 3000, 2, 6000, '0'),
(44, 21, 'Ob0001', 'Ibuprofen', 12000, 1, 12000, '0'),
(45, 22, 'Ob0002', 'Bodrex', 3000, 1, 3000, '0'),
(46, 22, 'Ob0001', 'Ibuprofen', 12000, 1, 12000, '0'),
(47, 22, 'Ob0003', 'Oralit', 2000, 2, 4000, '0'),
(48, 23, 'Ob0002', 'Bodrex', 3000, 2, 6000, '0'),
(49, 29, 'Ob0003', 'Oralit', 2000, 1, 2000, '0'),
(50, 3, 'Ob0003', 'Oralit', 2000, 2, 4000, '1'),
(51, 3, 'Ob0001', 'Ibuprofen', 12000, 1, 12000, '1'),
(52, 3, 'Ob0003', 'Oralit', 2000, 1, 2000, '1'),
(53, 3, 'Ob0001', 'Ibuprofen', 12000, 1, 12000, '0'),
(54, 3, 'Ob0002', 'Bodrex', 3000, 2, 6000, '1');

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `desc` text DEFAULT NULL,
  `deleted` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `nama`, `desc`, `deleted`) VALUES
(1, 'Admin', 'SuperUser', '0'),
(2, 'Kasir', 'User', '1'),
(3, 'test', 'ceki', '1');

-- --------------------------------------------------------

--
-- Table structure for table `group_access`
--

CREATE TABLE `group_access` (
  `menu_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `policy` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_access`
--

INSERT INTO `group_access` (`menu_id`, `group_id`, `policy`) VALUES
(1, 1, ''),
(1, 2, ''),
(2, 1, 'VIEW;ADD;EDIT;DELETE;'),
(2, 2, ''),
(3, 1, 'VIEW;ADD;EDIT;DELETE;'),
(3, 2, ''),
(4, 1, 'VIEW;ADD;EDIT;DELETE;'),
(4, 2, 'VIEW;'),
(5, 1, 'VIEW;ADD;EDIT;DELETE;'),
(5, 2, 'VIEW;'),
(6, 1, 'VIEW;ADD;EDIT;DELETE;'),
(6, 2, 'VIEW;'),
(7, 1, 'VIEW;ADD;EDIT;DELETE;'),
(7, 2, 'VIEW;ADD;'),
(9, 1, ''),
(9, 2, ''),
(10, 1, 'VIEW;ADD;EDIT;DELETE;'),
(10, 2, 'VIEW;ADD;'),
(11, 1, ''),
(11, 2, 'VIEW;'),
(12, 1, 'VIEW;'),
(12, 2, ''),
(13, 1, 'VIEW;'),
(13, 2, ''),
(14, 1, 'VIEW;'),
(14, 2, ''),
(15, 1, 'VIEW;'),
(15, 2, ''),
(16, 1, ''),
(16, 2, 'VIEW;'),
(17, 1, 'VIEW;ADD;EDIT;DELETE;'),
(17, 2, ''),
(18, 1, 'VIEW;ADD;'),
(18, 2, ''),
(19, 1, 'VIEW;ADD;EDIT;DELETE;'),
(19, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `h_penjualan`
--

CREATE TABLE `h_penjualan` (
  `id` int(11) NOT NULL,
  `kode_penjualan` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembali` int(11) NOT NULL,
  `deleted` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `h_penjualan`
--

INSERT INTO `h_penjualan` (`id`, `kode_penjualan`, `tanggal`, `id_user`, `id_dokter`, `id_penyakit`, `id_pelanggan`, `total`, `bayar`, `kembali`, `deleted`) VALUES
(1, 'TR2020070001', '2020-07-31', 1, 1, 1, 1, 0, 10000, 10000, '0'),
(2, 'TR2020070002', '2020-10-07', 1, 1, 2, 1, 10000, 50000, 40000, '1'),
(3, 'TR2020070003', '2020-09-08', 1, 1, 2, 6, 18000, 20000, 2000, '0'),
(4, 'TR2020070004', '2021-02-01', 1, 2, 1, 2, 53000, 60000, 7000, '0'),
(5, 'TR2020080001', '2020-08-01', 1, 2, 2, 1, 4000, 5000, 1000, '1'),
(6, 'TR2020080002', '2020-08-14', 1, 1, 3, 2, 35000, 50000, 15000, '0'),
(7, 'TR2020080003', '2020-08-21', 1, 1, 1, 1, 39000, 40000, 1000, '1'),
(8, 'TR2020080004', '2020-08-15', 1, 1, 2, 1, 18000, 20000, 2000, '0'),
(9, 'TR2020080005', '2020-08-14', 1, 1, 3, 1, 6000, 7000, 1000, '0'),
(10, 'TR2020080006', '2020-08-21', 1, 2, 3, 1, 10000, 20000, 10000, '0'),
(11, 'TR2020080007', '2020-08-18', 1, 2, 2, 1, 6000, 10000, 4000, '0'),
(12, 'TR2020080008', '2020-08-15', 1, 1, 2, 3, 36000, 40000, 4000, '0'),
(13, 'TR2020080009', '2020-08-14', 1, 2, 1, 2, 8000, 10000, 2000, '0'),
(14, 'TR2020080010', '2020-08-21', 1, 0, 3, 4, 14000, 20000, 6000, '1'),
(15, 'TR2020080011', '2020-08-21', 1, 2, 2, 4, 5000, 5000, 0, '0'),
(16, 'TR2020080012', '2020-08-30', 1, 1, 1, 3, 51000, 55000, 4000, '0'),
(17, 'TR2020080013', '2020-09-10', 1, 2, 1, 2, 10000, 7000, 3000, '0'),
(18, 'TR2020080013', '2020-09-10', 1, 2, 1, 2, 10000, 7000, 3000, '0'),
(19, 'TR2020080014', '0000-00-00', 1, 1, 1, 3, 27000, 30000, 3000, '0'),
(20, 'TR2020080015', '2020-09-06', 1, 1, 3, 3, 39000, 40000, 1000, '0'),
(21, 'TR2020080016', '2020-09-07', 1, 1, 1, 4, 18000, 20000, 2000, '0'),
(22, 'TR2020080017', '0000-00-00', 1, 1, 1, 3, 19000, 20000, 1000, '0'),
(23, 'TR2020080018', '2020-09-07', 1, 1, 2, 3, 6000, 10000, 4000, '0'),
(24, 'TR2020070001', '2020-07-31', 1, 1, 1, 1, 0, 9000, 9000, '0'),
(25, 'TR2020070001', '2020-07-31', 1, 1, 1, 1, 0, 9000, 9000, '0'),
(26, 'TR2020070001', '2020-07-31', 1, 1, 1, 1, 0, 9000, 9000, '0'),
(27, 'TR2020070003', '2020-08-02', 1, 1, 2, 4, 9000, 11000, 2000, '0'),
(28, 'TR2020070003', '2020-08-02', 1, 1, 2, 1, 9000, 11000, 2000, '0'),
(29, 'TR2020070003', '2020-09-07', 1, 1, 2, 1, 9000, 11000, 2000, '0');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_group` varchar(20) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `menu_parent` varchar(20) DEFAULT NULL,
  `url` varchar(50) NOT NULL,
  `hide` smallint(6) NOT NULL,
  `policy` varchar(25) NOT NULL,
  `span_id` varchar(20) DEFAULT NULL,
  `icon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_group`, `menu_name`, `menu_parent`, `url`, `hide`, `policy`, `span_id`, `icon`) VALUES
(1, 'Master', 'Master', NULL, '#', 0, 'VIEW;', NULL, NULL),
(2, 'Master', 'Data Satuan', '1', 'pages/dataSatuan.php', 0, 'VIEW;ADD;EDIT;DELETE;', 'dataSatuan', NULL),
(3, 'Master', 'Data Jenis Obat', '1', 'pages/dataJenis.php', 0, 'VIEW;ADD;EDIT;DELETE;', 'dataJenis', NULL),
(4, 'Master', 'Data Obat', '1', 'pages/dataObat.php', 0, 'VIEW;ADD;EDIT;DELETE;', 'dataObat', NULL),
(5, 'Master', 'Data Penyakit', '1', 'pages/dataPenyakit.php', 0, 'VIEW;ADD;EDIT;DELETE;', 'dataPenyakit', NULL),
(6, 'Master', 'Data Dokter', '1', 'pages/dataDokter.php', 0, 'VIEW;ADD;EDIT;DELETE;', 'dataDokter', NULL),
(7, 'Master', 'Data Pelanggan', '1', 'pages/dataPelanggan.php', 0, 'VIEW;ADD;EDIT;DELETE;', 'dataPelanggan', NULL),
(9, 'Transaksi', 'Transaksi', NULL, '#', 0, 'VIEW;', NULL, NULL),
(10, 'Transaksi', 'Penjualan Obat', '8', 'pages/penjualanObat.php', 0, 'VIEW;ADD;EDIT;DELETE;', 'penjualanObat', NULL),
(11, 'Laporan', 'Laporan', NULL, '#', 0, 'VIEW;', NULL, NULL),
(12, 'Laporan', 'Laporan Stok Gudang', '11', 'pages/lap_stokObat.php', 0, 'VIEW;', 'lap_stokObat', NULL),
(13, 'Laporan', 'Laporan Obat Keluar', '11', 'pages/lap_obatKeluar.php', 0, 'VIEW;', 'lap_total_obat', NULL),
(14, 'Laporan', 'Laporan Penjualan Global', '11', 'pages/lap_penjualanGlobal.php', 0, 'VIEW;', 'lap_penjualanGlobal', NULL),
(15, 'Laporan', 'Laporan Rekam Medis', '11', 'pages/lap_rekamMedis.php', 0, 'VIEW;', 'lap_rekamMedis', NULL),
(16, 'Setting', 'Setting', NULL, '#', 0, 'VIEW;', NULL, NULL),
(17, 'Setting', 'User Group', '16', 'pages/setting/userGroup.php', 0, 'VIEW;ADD;EDIT;DELETE;', 'userGroup', NULL),
(18, 'Setting', 'Group Akses', '16', 'pages/setting/groupAkses.php', 0, 'VIEW;ADD;', 'groupAkses', NULL),
(19, 'Setting', 'Data Pengguna', '16', 'pages/dataUser.php', 0, 'VIEW;ADD;EDIT;DELETE;', 'dataPengguna', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu1`
--

CREATE TABLE `menu1` (
  `menu_id` int(11) NOT NULL,
  `menu_group` varchar(20) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `menu_parent` varchar(20) DEFAULT NULL,
  `url` varchar(50) NOT NULL,
  `hide` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu1`
--

INSERT INTO `menu1` (`menu_id`, `menu_group`, `menu_name`, `menu_parent`, `url`, `hide`) VALUES
(1, 'Master', 'Master Data', NULL, '#', 0),
(2, 'Master', 'Data Satuan', '1', '/master_data/satuan', 0),
(3, 'Master', 'Data Jenis Obat', '1', '/master_data/data_jenis', 0),
(4, 'Master', 'Data Obat', '1', '/master_data/data_obat', 0),
(5, 'Master', 'Data Penyakit', '1', '/master_data/data_penyakit', 0),
(6, 'Master', 'Data Dokter', '1', '/master_data/data_dokter', 0),
(7, 'Master', 'Data Pelanggan', '1', '/master_data/data_pelanggan', 0),
(9, 'Transaksi', 'Transaksi', NULL, '#', 0),
(10, 'Transaksi', 'Penjualan Obat', '8', '/transaksi/penjualan', 0),
(11, 'Laporan', 'Laporan', NULL, '#', 0),
(12, 'Laporan', 'Laporan Stok Gudang', '11', '/laporan/lap_stok_obat?tgl_awal=&tgl_akhir=', 0),
(13, 'Laporan', 'Laporan Obat Keluar', '11', '/laporan/lap_obat_keluar?tgl_awal=&tgl_akhir=', 0),
(14, 'Laporan', 'Laporan Penjualan Global', '11', '/laporan/lap_penjualan_global', 0),
(15, 'Laporan', 'Laporan Rekam Medis', '11', '/laporan/lap_rekam_medis', 0),
(16, 'Setting', 'Setting', NULL, '#', 0),
(17, 'Setting', 'User Group', '16', '/setting/user_group', 0),
(18, 'Setting', 'Group Akses', '16', '/setting/group_akses', 0),
(19, 'Setting', 'Data Pengguna', '16', '/setting/data_user', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_dokter`
--
ALTER TABLE `data_dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_jenis`
--
ALTER TABLE `data_jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_kelolauser`
--
ALTER TABLE `data_kelolauser`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `data_obat`
--
ALTER TABLE `data_obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pelanggan`
--
ALTER TABLE `data_pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_penyakit`
--
ALTER TABLE `data_penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_satuan`
--
ALTER TABLE `data_satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_stok`
--
ALTER TABLE `data_stok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_penjualan`
--
ALTER TABLE `d_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_access`
--
ALTER TABLE `group_access`
  ADD PRIMARY KEY (`menu_id`,`group_id`);

--
-- Indexes for table `h_penjualan`
--
ALTER TABLE `h_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menu1`
--
ALTER TABLE `menu1`
  ADD PRIMARY KEY (`menu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_dokter`
--
ALTER TABLE `data_dokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_jenis`
--
ALTER TABLE `data_jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_obat`
--
ALTER TABLE `data_obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_pelanggan`
--
ALTER TABLE `data_pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `data_penyakit`
--
ALTER TABLE `data_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_satuan`
--
ALTER TABLE `data_satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `data_stok`
--
ALTER TABLE `data_stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `d_penjualan`
--
ALTER TABLE `d_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `h_penjualan`
--
ALTER TABLE `h_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `menu1`
--
ALTER TABLE `menu1`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
