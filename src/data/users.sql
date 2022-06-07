-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 07 Jun 2022 pada 08.02
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
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Admin', 'admin@ijazah.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yPt0k3Qyha', '2022-06-05 02:04:12', '2022-06-05 02:04:12', 1),
(2, 'Akbar Malik Ibrahim', '0096126558@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:14', '2022-06-05 02:04:14', 2),
(3, 'Alaikal Fajri El Maududy', '0106802589@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(4, 'Alya Faizatul Maysaroh', '0092876574@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(5, 'Annisa Akyla Nurvania', '0095023547@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(6, 'Arivatul Rizky', '0102186173@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(7, 'Athallah Shafa Sheehan', '0091759436@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(8, 'Daffi Hanif Setyawan', '0099034946@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(9, 'Faith Romneiya Abrielle Chryssani', '0104135846@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(10, 'Farhan Aulia Rabbany', '0108587077@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(11, 'Hamam Maulana Shodiq', '0096060890@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(12, 'Khairina Aydin Najla\'a', '0108232698@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(13, 'Mochammad Affan Mawla Shahzada', '0096883446@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(14, 'Muhammad Adnan Muflih Murtaqib', '0098354710@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(15, 'Nafisah Nailal Husna', '0099438970@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(16, 'Narayan Fakhri Izzudin', '0102590611@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(17, 'Narendra Ahmad Setyoadi', '0097120456@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(18, 'Naura Chasna Chuwaida', '0109481334@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(19, 'Nayyaka Ardenio Sachiohadi Antasena', '0107815009@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(20, 'Padma Hayu Duhita', '0102550637@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(21, 'Puan Aliya Nugroho', '0105054602@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(22, 'Qitarah Qwandaff', '0106580857@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(23, 'Rafif Agha Abdullah', '0095522225@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(24, 'Sylan Aisha Farhana', '3093408347@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(25, 'Yustishio Putra Atmaja', '0098838905@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(26, 'Ailsa Vania Sakhi', '0096224591@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(27, 'Akmalul Mukmin Sholahuddin', '0094680474@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(28, 'Almira Althafunnisa', '0105790058@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(29, 'Arsyila Fahima Almunqidza', '0109481696@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(30, 'Aufaa \'Aliiyah Zahrah', '0107423924@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(31, 'Daffa Hanif Setyawan', '0096698472@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(32, 'Fauziah Jasmine', '0107884078@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(33, 'Muhammad Alman Haq', '0108169993@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(34, 'Muhammad Dafy El Barra', '0094073699@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(35, 'Muhammad Dzaki Effendi', '0096604086@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(36, 'Muhammad Naufal Azmi', '0104632476@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(37, 'Muhammad Thufail Amru', '0094150858@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(38, 'Muhammad Zaim Adhyaksa', '0092680167@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(39, 'M Zidan Rizki Prastyo', '0095698431@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(40, 'Muhammad Dzakwan Dwi Raditya', '0107099391@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(41, 'Niswa Izzati Hanifa', '0103175097@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(42, 'Raisya Nazwa Nurul Fathiya', '0103533719@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(43, 'Raniyah Flotilla Khairunnisa', '0109264003@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(44, 'Zafran Muhammad Thoriq Hermawanto', '0099583103@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(45, 'Ahmad Haidar Salam', '0095811908@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(46, 'Amirah Najla Hidayat', '0109518511@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(47, 'Azril Wildan Rahmana', '0105556416@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(48, 'Bilqis Syafitri Putri Subagio', '0097033907@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(49, 'Devon Azka Putratama', '0108390725@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(50, 'Dheazzahra Ilafa Auliani', '0095555128@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(51, 'Fakhris Abidi Usman', '0099452288@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(52, 'Fariha Azzahra', '0102343801@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(53, 'Faris Muhammad Al Fatih', '0092891239@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(54, 'Ibrahim Furqon Khasani', '0102483169@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(55, 'Mabid Akbar Dzunnun', '0098922245@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(56, 'Muhammad Azril Krisbianto', '0096356642@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(57, 'Muhammad Farrel', '0108721610@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(58, 'Muhammad Nizar Rasyid', '0102999355@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(59, 'Nabila Shalihah', '0101624681@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(60, 'Naifah Isaura Indriana', '0103618935@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(61, 'Shaffa Orelia Azzahra', '0096622207@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(62, 'Syadza Qanitah Ruswana', '0107376841@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(63, 'Tiara Aqila Putri', '0106553206@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(64, 'Zahira Qurrota A\'yunina Hadi', '0106895589@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(65, 'Ahmad Hibatul Haq', '0101100597@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(66, 'Alifah Raaida Karima', '0108917495@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(67, 'Aline Sin Nurherlambang', '0101195393@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(68, 'Bilqis Faiqah Zihni Hanifah', '0099302705@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(69, 'Dhiya Silmi Atiyah Tsani', '0101421877@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(70, 'Emirsyah Athaya', '0101638279@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(71, 'Faishal Widad Alkafi', '0101450063@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(72, 'Fawwaza Syifa Khoiron', '0096683169@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(73, 'Gaida Widya Pradipta Lanojaya', '0103505257@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(74, 'Khonsa Khoirunnisa Ammarullah', '0097896005@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(75, 'Martiza Tsaqofah Ridho', '0108794662@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(76, 'Muhammad Afif Habiburrahman', '0091178185@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(77, 'Muhammad Azzam Firdaus', '0099155755@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(78, 'Muhammad Faris Abyan Asy Syarofi', '0105374208@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(79, 'Muhammad Rizqy Dzikrulloh', '0107335719@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(80, 'Muhammad Syafi\'i Al-Faras', '0093250198@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(81, 'Naureen Feiyaz Khansania', '0107580528@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(82, 'Rafie Ahmad Yusron', '0091565853@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2),
(83, 'Salman Al Farisi', '0103478926@sditharum.id', NULL, 'password', NULL, '2022-06-05 02:04:15', '2022-06-05 02:04:15', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
