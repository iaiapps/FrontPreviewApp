-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 30 Jun 2022 pada 02.50
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend_certificate_verification`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `scores`
--

CREATE TABLE `scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `a1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b3a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b3b` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b3c` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `scores`
--

INSERT INTO `scores` (`id`, `user_id`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `b1`, `b2`, `b3a`, `b3b`, `b3c`, `created_at`, `updated_at`) VALUES
(1, 2, '89', '90', '88', '87', '91', '90', '86', '84', '85', '87,78', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(2, 3, '92', '94', '92', '94', '92', '91', '87', '85', '88', '90,56', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(3, 4, '84', '83', '83', '77', '79', '81', '84', '84', '86', '82,33', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(4, 5, '85', '85', '86', '80', '83', '83', '88', '83', '83', '84,00', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(5, 6, '87', '89', '89', '79', '85', '85', '88', '83', '84', '85,44', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(6, 7, '85', '88', '85', '80', '83', '85', '83', '86', '83', '84,22', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(7, 8, '90', '88', '88', '82', '87', '87', '88', '84', '83', '86,33', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(8, 9, '85', '87', '82', '78', '79', '81', '85', '84', '81', '82,44', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(9, 10, '94', '94', '91', '91', '92', '94', '88', '86', '88', '90,89', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(10, 11, '87', '85', '83', '77', '80', '83', '84', '83', '81', '82,56', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(11, 12, '91', '93', '90', '94', '91', '91', '93', '84', '88', '90,56', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(12, 13, '89', '89', '88', '86', '85', '83', '89', '88', '83', '86,67', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(13, 14, '86', '84', '87', '79', '80', '82', '85', '84', '80', '83,00', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(14, 15, '92', '89', '89', '86', '88', '85', '90', '84', '86', '87,67', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(15, 16, '91', '92', '90', '86', '90', '89', '85', '87', '85', '88,33', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(16, 17, '85', '86', '83', '83', '86', '81', '83', '82', '84', '83,67', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(17, 18, '95', '96', '92', '94', '94', '93', '92', '86', '93', '92,78', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(18, 19, '86', '85', '80', '79', '80', '80', '84', '84', '79', '81,89', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(19, 20, '92', '93', '92', '88', '92', '90', '91', '86', '89', '90,33', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(20, 21, '91', '92', '89', '91', '89', '89', '85', '83', '87', '88,44', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(21, 22, '89', '91', '92', '87', '91', '92', '87', '82', '85', '88,44', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(22, 23, '87', '88', '83', '80', '82', '84', '81', '84', '80', '83,22', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(23, 24, '97', '96', '95', '95', '97', '96', '93', '92', '94', '95,00', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(24, 25, '83', '85', '85', '85', '84', '85', '83', '84', '80', '83,78', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(25, 26, '89', '90', '83', '87', '83', '83', '88', '84', '83', '85,56', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(26, 27, '96', '96', '95', '94', '94', '93', '89', '85', '88', '92,22', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(27, 28, '86', '90', '88', '81', '82', '83', '87', '85', '83', '85,00', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(28, 29, '93', '93', '93', '90', '92', '92', '91', '84', '91', '91,00', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(29, 30, '84', '89', '92', '79', '87', '84', '86', '84', '87', '85,78', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(30, 31, '87', '88', '88', '81', '85', '85', '85', '88', '81', '85,33', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(31, 32, '92', '90', '88', '81', '87', '85', '88', '84', '84', '86,56', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(32, 33, '91', '92', '90', '97', '88', '89', '86', '86', '84', '89,22', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(33, 34, '94', '95', '93', '94', '92', '94', '90', '87', '93', '92,44', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(34, 35, '91', '92', '89', '84', '90', '89', '86', '87', '86', '88,22', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(35, 36, '88', '90', '87', '81', '84', '87', '85', '85', '88', '86,11', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(36, 37, '88', '90', '89', '84', '87', '87', '85', '85', '87', '86,89', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(37, 38, '89', '89', '90', '85', '88', '88', '87', '84', '86', '87,33', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(38, 39, '93', '94', '91', '89', '92', '93', '90', '85', '88', '90,56', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(39, 40, '92', '91', '89', '86', '85', '86', '86', '84', '86', '87,22', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(40, 41, '94', '96', '93', '92', '95', '93', '92', '84', '94', '92,56', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(41, 42, '92', '93', '93', '86', '94', '92', '90', '86', '91', '90,78', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(42, 43, '93', '95', '92', '92', '93', '90', '90', '85', '90', '91,11', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(43, 44, '90', '94', '91', '90', '91', '92', '88', '86', '91', '90,33', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(44, 45, '88', '87', '87', '85', '86', '86', '87', '85', '88', '86,56', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(45, 46, '85', '88', '87', '82', '85', '84', '84', '84', '83', '84,67', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(46, 47, '87', '84', '84', '78', '81', '84', '85', '84', '80', '83,00', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(47, 48, '86', '86', '85', '81', '82', '83', '87', '86', '83', '84,33', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(48, 49, '90', '92', '92', '93', '92', '89', '89', '87', '88', '90,22', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(49, 50, '90', '93', '92', '92', '92', '90', '87', '79', '87', '89,11', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(50, 51, '87', '83', '85', '81', '83', '84', '84', '85', '79', '83,44', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(51, 52, '86', '84', '84', '81', '83', '82', '85', '82', '80', '83,00', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(52, 53, '88', '88', '88', '87', '87', '87', '89', '87', '85', '87,33', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(53, 54, '91', '90', '89', '88', '88', '88', '90', '86', '85', '88,33', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(54, 55, '88', '85', '84', '84', '84', '83', '83', '85', '85', '84,56', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(55, 56, '91', '88', '90', '84', '90', '89', '88', '86', '87', '88,11', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(56, 57, '90', '90', '87', '85', '89', '87', '85', '87', '88', '87,56', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(57, 58, '88', '85', '86', '85', '86', '85', '84', '84', '82', '85,00', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(58, 59, '90', '85', '85', '78', '84', '84', '84', '83', '78', '83,44', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(59, 60, '86', '93', '92', '90', '90', '90', '89', '84', '86', '88,89', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(60, 61, '91', '91', '90', '87', '89', '85', '86', '85', '87', '87,89', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(61, 62, '89', '86', '86', '81', '83', '85', '87', '80', '80', '84,11', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(62, 63, '87', '89', '88', '84', '88', '85', '88', '84', '78', '85,67', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(63, 64, '90', '90', '90', '88', '87', '86', '86', '86', '83', '87,33', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(64, 65, '92', '90', '88', '87', '87', '90', '86', '92', '87', '88,78', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(65, 66, '90', '90', '89', '87', '90', '90', '86', '90', '87', '88,78', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(66, 67, '92', '92', '93', '86', '93', '94', '87', '91', '89', '90,78', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(67, 68, '89', '89', '90', '85', '89', '89', '86', '89', '87', '88,11', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(68, 69, '93', '91', '90', '92', '92', '91', '88', '91', '92', '91,11', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(69, 70, '89', '90', '85', '83', '86', '87', '86', '92', '87', '87,22', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(70, 71, '92', '90', '87', '88', '90', '88', '86', '90', '89', '88,89', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(71, 72, '93', '93', '92', '92', '91', '92', '88', '90', '91', '91,33', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(72, 73, '93', '94', '94', '89', '94', '94', '89', '90', '92', '92,11', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(73, 74, '90', '88', '88', '85', '88', '83', '86', '90', '85', '87,00', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(74, 75, '93', '93', '90', '91', '90', '90', '87', '90', '89', '90,33', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(75, 76, '90', '85', '83', '82', '82', '83', '85', '89', '81', '84,44', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(76, 77, '89', '90', '88', '83', '88', '86', '85', '88', '82', '86,56', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(77, 78, '90', '88', '85', '83', '85', '85', '86', '91', '85', '86,44', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(78, 79, '92', '90', '87', '86', '88', '87', '86', '89', '88', '88,11', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(79, 80, '91', '87', '86', '83', '86', '85', '84', '88', '83', '85,89', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(80, 81, '87', '85', '82', '81', '82', '81', '86', '90', '82', '84,00', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(81, 82, '90', '88', '84', '81', '84', '85', '84', '88', '84', '85,33', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16'),
(82, 83, '94', '94', '90', '90', '93', '92', '88', '92', '92', '91,67', NULL, '2022-06-05 02:04:16', '2022-06-05 02:04:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `scores`
--
ALTER TABLE `scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
