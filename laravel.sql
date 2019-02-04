-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2019 at 01:58 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_02_03_152314_create_table_kelas', 1),
(2, '2019_02_04_030846_create_table_siswa', 2),
(3, '2019_02_04_032029_create_table_siswa', 3),
(4, '2019_02_04_032350_create_table_siswa', 4),
(5, '2019_02_04_055957_create_table_user', 5),
(6, '2019_02_04_110248_add_foto_table_siswa', 6);

-- --------------------------------------------------------

--
-- Table structure for table `table_kelas`
--

CREATE TABLE `table_kelas` (
  `id_kelas` int(10) UNSIGNED NOT NULL,
  `nama_kelas` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_kelas`
--

INSERT INTO `table_kelas` (`id_kelas`, `nama_kelas`, `jurusan`, `created_at`, `updated_at`) VALUES
(1, 'XII-RPL1', 'Rekayasa perangkat Lunak', NULL, NULL),
(2, 'XII-RPL2', 'Rekayasa perangkat Lunak', NULL, NULL),
(3, 'XII-RPL3', 'Rekayasa Perangkat Lunak', '2019-02-03 09:40:09', '2019-02-03 20:06:06'),
(4, 'XII-RPL4', 'Rekayasa Perangkat Lunak', '2019-02-03 09:54:31', '2019-02-03 09:54:31'),
(5, 'XII-RPL5', 'Rekayasa Perangkat Lunak', '2019-02-03 09:55:09', '2019-02-03 09:55:09'),
(6, 'XII-RPL6', 'Rekayasa Perangkat Lunak', '2019-02-03 09:56:50', '2019-02-03 09:56:50'),
(7, 'XII-RPL7', 'Rekayasa Perangkat Lunak', '2019-02-03 09:57:54', '2019-02-03 09:57:54'),
(12, 'XII-RPL8', 'Rekayasa Perangkat Lunak', '2019-02-03 20:06:25', '2019-02-03 20:06:25');

-- --------------------------------------------------------

--
-- Table structure for table `table_siswa`
--

CREATE TABLE `table_siswa` (
  `nis` int(11) NOT NULL,
  `nama_lengkap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_siswa`
--

INSERT INTO `table_siswa` (`nis`, `nama_lengkap`, `jenis_kelamin`, `alamat`, `no_telp`, `id_kelas`, `created_at`, `updated_at`, `foto`) VALUES
(10515084, 'Elga Mustafa', 'L', 'Jl.Dago', '08782006646', 1, '2019-02-03 22:11:34', '2019-02-04 05:54:12', '10515084.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `id_login` int(10) UNSIGNED NOT NULL,
  `nama_user` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`id_login`, `nama_user`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '$2y$10$f.I5jKC035JEufI97jkwUeOPXLm6T1ihXKX2g2pDe5uFfPOl7wsoe', 'wjP8JRmMRlhDXbgwSRuDjC6UXmsjKJhpniosMHj0ahIMF2CPEu6svauiC2WQ', '2019-02-03 23:27:54', '2019-02-03 23:27:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_kelas`
--
ALTER TABLE `table_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `table_siswa`
--
ALTER TABLE `table_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_kelas`
--
ALTER TABLE `table_kelas`
  MODIFY `id_kelas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `table_user`
--
ALTER TABLE `table_user`
  MODIFY `id_login` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
