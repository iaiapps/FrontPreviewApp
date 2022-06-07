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
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parents_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isUpdate` tinyint(1) DEFAULT NULL,
  `isVerified` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `user_id`, `name`, `place_of_birth`, `date_of_birth`, `parents_name`, `nis`, `nisn`, `isUpdate`, `isVerified`, `created_at`, `updated_at`) VALUES
(1, 2, 'Akbar Malik Ibrahim', 'Sidoarjo', '12 November 2009', 'Ahmad Syafiudin Hanum', '646', '0096126558', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(2, 3, 'Alaikal Fajri El Maududy', 'Probolinggo', '13 Maret 2010', 'Abul A\'la El Maududy', '434', '0106802589', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(3, 4, 'Alya Faizatul Maysaroh', 'Jember', '10 Maret 2009', 'Achmad Gofir', '491', '0092876574', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(4, 5, 'Annisa Akyla Nurvania', 'Jember', '27 Juni 2009', 'Mohammad Ricky Marianto', '492', '0095023547', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(5, 6, 'Arivatul Rizky', 'Jember', '18 April 2010', 'Suyitno', '661', '0102186173', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(6, 7, 'Athallah Shafa Sheehan', 'Banyuwangi', '24 September 2009', 'Dodi Aria Kusuma Candra', '437', '0091759436', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(7, 8, 'Daffi Hanif Setyawan', 'Jember', '12 Agustus 2009', 'Herwan Setya Bhakti', '494', '0099034946', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(8, 9, 'Faith Romneiya Abrielle Chryssani', 'Jember', '13 April 2010', 'Robby Christanto', '489', '0104135846', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(9, 10, 'Farhan Aulia Rabbany', 'Jember', '22 Juli 2010', 'Dwi Krisnanto', '440', '0108587077', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(10, 11, 'Hamam Maulana Shodiq', 'Banyuwangi', '17 April 2009', 'Mahfud Shodiq', '443', '0096060890', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(11, 12, 'Khairina Aydin Najla\'a', 'Banyuwangi', '29 Juli 2010', 'Mochamad Farid Husni', '654', '0108232698', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(12, 13, 'Mochammad Affan Mawla Shahzada', 'Jember', '06 Agustus 2009', 'Djoko Setianto', '445', '0096883446', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(13, 14, 'Muhammad Adnan Muflih Murtaqib', 'Jember', '12 Desember 2009', 'Murtaqib', '500', '0098354710', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(14, 15, 'Nafisah Nailal Husna', 'Jember', '03 November 2009', 'Iwan Setiawan', '448', '0099438970', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(15, 16, 'Narayan Fakhri Izzudin', 'Jember', '27 Januari 2010', 'Abdullah Ismail', '509', '0102590611', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(16, 17, 'Narendra Ahmad Setyoadi', 'Jember', '07 Oktober 2009', 'Bahtiar Adi Candra', '449', '0097120456', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(17, 18, 'Naura Chasna Chuwaida', 'Banyuwangi', '30 Maret 2010', 'Samsul Ashari', '663', '0109481334', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(18, 19, 'Nayyaka Ardenio Sachiohadi Antasena', 'Jember', '12 Januari 2010', 'Teguh Hadi Budiarto', '450', '0107815009', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(19, 20, 'Padma Hayu Duhita', 'Jember', '14 Januari 2010', 'Mahendra Yudya Bhirawa', '453', '0102550637', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(20, 21, 'Puan Aliya Nugroho', 'Jember', '07 April 2010', 'Aris Wahyu Nugroho', '871', '0105054602', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(21, 22, 'Qitarah Qwandaff', 'Surabaya', '15 Januari 2010', 'Hermawan Sutadi', '454', '0106580857', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(22, 23, 'Rafif Agha Abdullah', 'Jember', '13 Oktober 2009', 'Abdul Yakin', '455', '0095522225', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(23, 24, 'Sylan Aisha Farhana', 'Banyuwangi', '30 Desember 2009', 'Dyno Yuniarta', '984', '3093408347', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(24, 25, 'Yustishio Putra Atmaja', 'Jember', '05 September 2009', 'Atmodjo', '657', '0098838905', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(25, 26, 'Ailsa Vania Sakhi', 'Jember', '01 April 2009', 'Pengky Sutanto Dwi Prasetyo', '842', '0096224591', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(26, 27, 'Akmalul Mukmin Sholahuddin', 'Jember', '15 Desember 2009', 'Jauhar Firdaus', '461', '0094680474', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(27, 28, 'Almira Althafunnisa', 'Jember', '03 Februari 2010', 'Bambang Irwanto', '490', '0105790058', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(28, 29, 'Arsyila Fahima Almunqidza', 'Magetan', '21 Juli 2010', 'Rahadi Nugroho', '463', '0109481696', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(29, 30, 'Aufaa \'Aliiyah Zahrah', 'Palembang', '15 Mei 2010', 'Priyono Setiawan', '493', '0107423924', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(30, 31, 'Daffa Hanif Setyawan', 'Jember', '12 Agustus 2009', 'Herwan Setya Bhakti', '466', '0096698472', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(31, 32, 'Fauziah Jasmine', 'Sleman', '20 Januari 2010', 'Firdaus Ubaidillah', '441', '0107884078', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(32, 33, 'Muhammad Alman Haq', 'Jember', '31 Maret 2010', 'Muhammad Firdaus', '501', '0108169993', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(33, 34, 'Muhammad Dafy El Barra', 'Kediri', '05 November 2009', 'Gugun Hernanto', '647', '0094073699', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(34, 35, 'Muhammad Dzaki Effendi', 'Jember', '23 April 2009', 'Achmad Effendi', '446', '0096604086', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(35, 36, 'Muhammad Naufal Azmi', 'Jember', '24 April 2010', 'Zaenal Fatah', '498', '0104632476', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(36, 37, 'Muhammad Thufail Amru', 'Jember', '26 Desember 2009', 'Mohammad Arief Iqbal', '481', '0094150858', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(37, 38, 'Muhammad Zaim Adhyaksa', 'Jember', '20 Maret 2009', 'Sulung Lukman Cahyono', '499', '0092680167', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(38, 39, 'M Zidan Rizki Prastyo', 'Jember', '10 Oktober 2009', 'Bayu Abdi Prastyo', '507', '0095698431', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(39, 40, 'Muhammad Dzakwan Dwi Raditya', 'Jember', '01 Januari 2010', 'Agus Eko Prayitno', '503', '0107099391', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(40, 41, 'Niswa Izzati Hanifa', 'Kediri', '23 Januari 2010', 'Riyono Mursitho Soleh', '451', '0103175097', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(41, 42, 'Raisya Nazwa Nurul Fathiya', 'Jember', '19 Maret 2010', 'Samsuri', '484', '0103533719', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(42, 43, 'Raniyah Flotilla Khairunnisa', 'Jember', '12 Juni 2010', 'Ali Imron', '506', '0109264003', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(43, 44, 'Zafran Muhammad Thoriq Hermawanto', 'Surabaya', '14 Oktober 2009', 'Yudha Hermawanto,Sp', '458', '0099583103', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(44, 45, 'Ahmad Haidar Salam', 'Jember', '15 September 2009', 'Abdus Salam', '459', '0095811908', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(45, 46, 'Amirah Najla Hidayat', 'Jember', '16 April 2010', 'Very Hidayat', '462', '0109518511', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(46, 47, 'Azril Wildan Rahmana', 'Jember', '24 Maret 2010', 'Abdul Rahman', '464', '0105556416', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(47, 48, 'Bilqis Syafitri Putri Subagio', 'Jember', '26 September 2009', 'Nanang Catur Hari Subagio', '465', '0097033907', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(48, 49, 'Devon Azka Putratama', 'Jember', '05 April 2010', 'Yohanes Setyabudi', '467', '0108390725', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(49, 50, 'Dheazzahra Ilafa Auliani', 'Jember', '17 November 2009', 'Dhewan Wicaksono', '658', '0095555128', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(50, 51, 'Fakhris Abidi Usman', 'Jember', '03 Oktober 2009', 'Sulung Heriawan', '469', '0099452288', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(51, 52, 'Fariha Azzahra', 'Jember', '26 Januari 2010', 'Soelistiya Boedi E.S.', '470', '0102343801', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(52, 53, 'Faris Muhammad Al Fatih', 'Jember', '24 Juni 2009', 'Mohammad Sodiq', '471', '0092891239', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(53, 54, 'Ibrahim Furqon Khasani', 'Nganjuk', '02 Maret 2010', 'Imam Zunaidi', '473', '0102483169', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(54, 55, 'Mabid Akbar Dzunnun', 'Jember', '04 Oktober 2009', 'Aris Dewantoro', '474', '0098922245', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(55, 56, 'Muhammad Azril Krisbianto', 'Batu', '06 Desember 2009', 'Dedy Krisbianto', '660', '0096356642', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(56, 57, 'Muhammad Farrel', 'Jember', '02 Februari 2010', 'Januariyanto', '478', '0108721610', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(57, 58, 'Muhammad Nizar Rasyid', 'Jember', '17 Juni 2010', 'Moch. Zakkiy Ardianto', '479', '0102999355', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(58, 59, 'Nabila Shalihah', 'Jember', '27 Mei 2010', 'Hernowo Guntur Pranajaya', '482', '0101624681', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(59, 60, 'Naifah Isaura Indriana', 'Kediri', '10 Juni 2010', 'Agustinus Hendry Sulaksono', '508', '0103618935', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(60, 61, 'Shaffa Orelia Azzahra', 'Nganjuk', '09 Agustus 2009', 'Satriya Dwie Maharja', '457', '0096622207', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(61, 62, 'Syadza Qanitah Ruswana', 'Jember', '17 April 2010', 'Dian Dwi Susanti', '485', '0107376841', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(62, 63, 'Tiara Aqila Putri', 'Jember', '12 Maret 2010', 'Herianto', '515', '0106553206', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(63, 64, 'Zahira Qurrota A\'yunina Hadi', 'Jember', '20 Maret 2010', 'Untung Saiful Hadi, S.P, ', '486', '0106895589', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(64, 65, 'Ahmad Hibatul Haq', 'Jember', '22 Januari 2010', 'Ahmad Rusdan', '460', '0101100597', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(65, 66, 'Alifah Raaida Karima', 'Jember', '12 Februari 2010', 'Topo Harmoko', '435', '0108917495', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(66, 67, 'Aline Sin Nurherlambang', 'Jember', '26 Maret 2010', 'Bayu Herlambang', '436', '0101195393', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(67, 68, 'Bilqis Faiqah Zihni Hanifah', 'Jember', '13 Oktober 2009', 'Dwi Nurahmanto', '438', '0099302705', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(68, 69, 'Dhiya Silmi Atiyah Tsani', 'Jember', '18 April 2010', 'Anang Suprayitno', '488', '0101421877', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(69, 70, 'Emirsyah Athaya', 'Jember', '20 Januari 2010', 'Ismed Sanditama', '468', '0101638279', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(70, 71, 'Faishal Widad Alkafi', 'Jember', '14 April 2010', 'Moh. Ainur Rofiq', '439', '0101450063', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(71, 72, 'Fawwaza Syifa Khoiron', 'Jember', '28 Juli 2009', 'Khoiron', '472', '0096683169', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(72, 73, 'Gaida Widya Pradipta Lanojaya', 'Jember', '22 April 2010', 'Avilanofa Bagus Budi', '442', '0103505257', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(73, 74, 'Khonsa Khoirunnisa Ammarullah', 'Jember', '24 September 2009', 'Muchamad Imron Wahyudi', '444', '0097896005', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(74, 75, 'Martiza Tsaqofah Ridho', 'Jember', '31 Maret 2010', 'Atok Ainur Ridho', '475', '0108794662', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(75, 76, 'Muhammad Afif Habiburrahman', 'Jember', '26 Februari 2009', 'Abdul Basid', '477', '0091178185', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(76, 77, 'Muhammad Azzam Firdaus', 'Jember', '15 Desember 2009', 'Hari Setiawan', '495', '0099155755', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(77, 78, 'Muhammad Faris Abyan Asy Syarofi', 'Batam', '19 September 2009', 'Akhmad Najib Syarofi', '504', '0105374208', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(78, 79, 'Muhammad Rizqy Dzikrulloh', 'Jember', '13 April 2010', 'Didiek Prihadiono', '480', '0107335719', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(79, 80, 'Muhammad Syafi\'i Al-Faras', 'Jember', '10 Agustus 2009', 'Achmad Kautsar', '447', '0093250198', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(80, 81, 'Naureen Feiyaz Khansania', 'Jember', '08 Januari 2010', 'Suhardiyono', '511', '0107580528', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(81, 82, 'Rafie Ahmad Yusron', 'Jember', '15 Juli 2009', 'Kamalik', '512', '0091565853', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15'),
(82, 83, 'Salman Al Farisi', 'Bontang', '10 Maret 2010', 'Adhi Nugroho', '456', '0103478926', NULL, 0, '2022-06-05 02:04:15', '2022-06-05 02:04:15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
