-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2024 at 08:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Sari Tania Puspita', NULL, NULL),
(2, 'Diki Alfarabi Hadi', NULL, NULL),
(3, 'Luluh Sinaga', NULL, NULL),
(4, 'Lamar Putra', NULL, NULL),
(5, 'Banawi Kuswoyo', NULL, NULL),
(6, 'Ratih Wijayanti', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anggota_hadiah`
--

CREATE TABLE `anggota_hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `hadiah_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota_hadiah`
--

INSERT INTO `anggota_hadiah` (`id`, `anggota_id`, `hadiah_id`, `created_at`, `updated_at`) VALUES
(1, 6, 6, NULL, NULL),
(2, 2, 5, NULL, NULL),
(3, 6, 10, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 6, NULL, NULL),
(6, 1, 4, NULL, NULL),
(7, 4, 11, NULL, NULL),
(8, 5, 5, NULL, NULL),
(9, 2, 9, NULL, NULL),
(10, 6, 6, NULL, NULL),
(11, 3, 2, NULL, NULL),
(12, 2, 3, NULL, NULL),
(13, 1, 8, NULL, NULL),
(14, 6, 8, NULL, NULL),
(15, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `judul`, `created_at`, `updated_at`) VALUES
(1, 'Placeat saepe ea possimus provident quos est molestiae reiciendis.', NULL, NULL),
(2, 'Totam laudantium molestiae similique sit.', NULL, NULL),
(3, 'Aut consequatur ducimus ut non voluptatem voluptas.', NULL, NULL),
(4, 'Ad sit voluptatem qui ut dolorem.', NULL, NULL),
(5, 'Qui consequatur eum fuga corrupti.', NULL, NULL),
(6, 'Quos nesciunt blanditiis amet odio.', NULL, NULL),
(7, 'Ex doloremque consequuntur velit alias repellendus ullam.', NULL, NULL),
(8, 'Perspiciatis a quo beatae nobis et suscipit illo.', NULL, NULL),
(9, 'Maiores voluptate animi est enim totam.', NULL, NULL),
(10, 'Rerum expedita inventore nulla voluptates perferendis placeat.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id` int(10) NOT NULL,
  `file` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id`, `file`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, '1719124502_WhatsApp Image 2024-04-14 at 20.54.24_969569eb.jpg', 'ngambek', '2024-06-22 22:35:02', '2024-06-22 22:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `hadiah`
--

CREATE TABLE `hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_hadiah` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hadiah`
--

INSERT INTO `hadiah` (`id`, `nama_hadiah`, `created_at`, `updated_at`) VALUES
(1, 'Kulkas', NULL, NULL),
(2, 'Lemari', NULL, NULL),
(3, 'Rumah', NULL, NULL),
(4, 'Mobil', NULL, NULL),
(5, 'Sepeda Motor', NULL, NULL),
(6, 'Pulpen', NULL, NULL),
(7, 'Tas', NULL, NULL),
(8, 'Sepatu', NULL, NULL),
(9, 'Voucher', NULL, NULL),
(10, 'Mouse', NULL, NULL),
(11, 'Laptop', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_22_052441_create_mahasiswa_table', 2),
(11, '2024_05_25_074926_create_mahasiswa_table', 3),
(12, '2024_05_25_083026_create_pegawai2_table', 4),
(13, '2024_05_25_130523_create_pegawai2_table', 5),
(14, '2024_05_26_075236_create_mahasiswa_table', 6),
(15, '2024_05_26_080050_rename__mahasiswa_table', 7),
(16, '2024_05_26_080358_drop__mahasiswa_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('eltaapriliani@gmail.com', '$2y$10$360jQSby.EBlw830xehuue7dGP508hj5TjL00qnkHmcZ4cCC.f3/G', '2024-06-09 20:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `pegawai_nama` varchar(30) NOT NULL,
  `pegawai_jabatan` varchar(20) NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `pegawai_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_nama`, `pegawai_jabatan`, `pegawai_umur`, `pegawai_alamat`) VALUES
(1, 'elta', 'CEO', 20, 'brang biji'),
(7, 'Joni', 'Web Designer', 25, 'Jl. Panglateh'),
(8, 'Galuh Sihombing', 'Buruh Harian Lepas', 31, 'Kpg. Bacang No. 479, Tual 91404, Sumbar'),
(9, 'Legawa Sihombing', 'Tabib', 40, 'Jr. Ekonomi No. 654, Solok 60811, Bengkulu'),
(10, 'Vera Andriani', 'Buruh Harian Lepas', 29, 'Gg. Bakau Griya Utama No. 630, Sawahlunto 10821, Gorontalo'),
(11, 'Ifa Safitri', 'Penata Rambut', 26, 'Ki. Basket No. 911, Banjarbaru 92185, Kepri'),
(12, 'Maimunah Wahyuni', 'Juru Masak', 33, 'Jln. Jend. Sudirman No. 902, Madiun 68809, Bali'),
(13, 'Kairav Napitupulu', 'Karyawan Honorer', 30, 'Gg. Sukajadi No. 874, Bima 64114, Malut'),
(14, 'Galih Mandala S.Gz', 'Perawat', 34, 'Gg. R.M. Said No. 843, Sungai Penuh 89359, Jabar'),
(15, 'Umi Rahayu S.E.', 'Atlet', 25, 'Ki. Flores No. 705, Pekanbaru 72022, Sulsel'),
(16, 'Bagus Paiman Saragih S.Pd', 'Arsitek', 39, 'Gg. Imam Bonjol No. 70, Gunungsitoli 10418, Sumsel'),
(17, 'Alambana Anggriawan', 'Karyawan Swasta', 34, 'Jr. Taman No. 802, Prabumulih 16031, Jambi'),
(18, 'Mulya Marwata Latupono', 'Tukang Kayu', 32, 'Gg. Baranang No. 639, Probolinggo 80502, DKI'),
(19, 'Malik Samosir S.E.', 'Pastor', 38, 'Ds. Lembong No. 889, Ambon 39483, Sumut'),
(20, 'Jessica Yuniar', 'Nahkoda', 40, 'Psr. Ujung No. 152, Cirebon 41748, Maluku'),
(21, 'Galur Muhammad Sihombing S.Psi', 'Tukang Sol Sepatu', 26, 'Ds. Radio No. 490, Tidore Kepulauan 81734, Jateng'),
(22, 'Harsanto Rahman Prakasa', 'Pramusaji', 35, 'Gg. Rajawali Timur No. 821, Pontianak 62054, Sumsel'),
(23, 'Rika Salsabila Nasyidah M.Farm', 'Notaris', 37, 'Ki. Pintu Besar Selatan No. 127, Kotamobagu 58121, Sumbar'),
(24, 'Legawa Karma Kuswoyo', 'Buruh Harian Lepas', 26, 'Kpg. Ciwastra No. 232, Jambi 66637, Sumsel'),
(25, 'Waluyo Damanik', 'Dokter', 40, 'Ds. Gedebage Selatan No. 838, Depok 20183, Sumsel'),
(26, 'Vanesa Fujiati', 'Penerjemah', 25, 'Ds. Flora No. 344, Sungai Penuh 28209, Riau'),
(27, 'Kiandra Palastri S.E.', 'Sopir', 36, 'Jln. Kiaracondong No. 144, Samarinda 45662, Sulbar'),
(28, 'Kamila Yuliarti', 'Karyawan BUMN', 32, 'Jln. Surapati No. 720, Batam 70815, Bali'),
(29, 'Jamal Hidayat', 'Wakil Presiden', 36, 'Dk. Babadan No. 285, Kupang 63046, DKI'),
(30, 'Nilam Usamah', 'Buruh Peternakan', 28, 'Kpg. Kiaracondong No. 24, Pagar Alam 59269, Kalteng'),
(31, 'Ani Pudjiastuti', 'Pramugari', 30, 'Psr. Krakatau No. 643, Palangka Raya 44866, Jabar'),
(32, 'Daliono Saptono M.M.', 'Pelajar / Mahasiswa', 26, 'Dk. Yap Tjwan Bing No. 184, Depok 49155, Jatim'),
(33, 'Nyana Ibun Setiawan', 'Penyiar Televisi', 25, 'Dk. Cut Nyak Dien No. 310, Kendari 10608, Sumsel'),
(34, 'Kiandra Eka Laksita S.E.I', 'Peternak', 38, 'Psr. Lada No. 840, Manado 72086, Sumbar'),
(35, 'Joni', 'Web Designer', 25, 'Jl. Panglateh'),
(36, 'Ida Kusmawati', 'Jaksa', 38, 'Jr. Baja Raya No. 248, Sukabumi 61063, Riau'),
(37, 'Joni', 'Web Designer', 25, 'Jl. Panglateh'),
(38, 'Joni', 'Web Designer', 25, 'Jl. Panglateh'),
(39, 'Prayogo Mansur', 'Pialang', 40, 'Jr. Sampangan No. 972, Bima 24993, Sulteng'),
(40, 'Langgeng Caket Nababan', 'Karyawan Swasta', 31, 'Jr. Sukabumi No. 763, Manado 37396, Jatim'),
(41, 'Mahesa Prayoga S.H.', 'Nahkoda', 27, 'Kpg. Bara Tambar No. 477, Administrasi Jakarta Timur 12800, Bali'),
(42, 'Dimaz Zulkarnain', 'Guru', 39, 'Ki. Wahid Hasyim No. 425, Surabaya 27026, Kalsel'),
(43, 'Wisnu Firgantoro', 'Buruh Harian Lepas', 34, 'Kpg. Ciwastra No. 159, Mataram 28423, NTT'),
(44, 'Jaka Bakda Prasasta S.H.', 'Nelayan / Perikanan', 37, 'Jln. Sumpah Pemuda No. 963, Jayapura 23381, Maluku'),
(45, 'Ajimin Saragih', 'Karyawan Swasta', 30, 'Jln. Ters. Kiaracondong No. 322, Bontang 84243, Sultra'),
(46, 'Winda Lestari S.Pd', 'Dokter', 38, 'Ki. Ikan No. 402, Gunungsitoli 72087, Kaltim'),
(47, 'Wawan Lanang Wacana', 'Penyiar Televisi', 40, 'Ds. Sutan Syahrir No. 456, Balikpapan 47449, DIY'),
(48, 'Hamima Mandasari S.Psi', 'Juru Masak', 35, 'Ki. Bazuka Raya No. 764, Denpasar 32398, Sulteng'),
(49, 'Najwa Pudjiastuti', 'Tukang Sol Sepatu', 39, 'Gg. Baung No. 598, Pangkal Pinang 45952, Sulsel'),
(50, 'Nurul Namaga', 'Penambang', 31, 'Dk. Gegerkalong Hilir No. 580, Parepare 93070, Riau'),
(51, 'Cager Rajasa M.Ak', 'Buruh Peternakan', 39, 'Ki. M.T. Haryono No. 607, Pekalongan 99744, NTT'),
(52, 'Taufan Prakasa S.E.I', 'Atlet', 39, 'Jln. Jakarta No. 204, Padang 86819, Kalbar'),
(53, 'Titi Ami Yolanda S.Ked', 'Hakim', 32, 'Jr. Yos No. 330, Kotamobagu 39921, Sulteng'),
(54, 'etaa', 'mahasiswa', 10, 'brang biji city'),
(55, 'Joni', 'Web Designer', 25, 'Jl. Panglateh'),
(56, 'Rahmi Halimah', 'Peternak', 31, 'Jr. Wahid No. 704, Sibolga 52308, NTT'),
(57, 'Najam Dipa Mandala', 'Tukang Listrik', 34, 'Jln. Warga No. 117, Ambon 31304, Gorontalo'),
(58, 'Icha Hasanah S.Kom', 'Pedagang', 32, 'Jr. K.H. Wahid Hasyim (Kopo) No. 358, Langsa 87922, Sulut'),
(59, 'Cawisono Luis Dongoran', 'Konsultan', 28, 'Jr. Jambu No. 862, Pariaman 74867, Sulteng'),
(60, 'Jarwi Lazuardi', 'Buruh Harian Lepas', 36, 'Ds. Kiaracondong No. 228, Ternate 10922, Sumut'),
(61, 'Yoga Maheswara', 'Tabib', 38, 'Gg. Sadang Serang No. 783, Administrasi Jakarta Barat 88329, NTT'),
(62, 'Nasim Tarihoran', 'Karyawan Honorer', 31, 'Gg. Imam No. 59, Salatiga 38194, Sulsel'),
(63, 'Unjani Wijayanti', 'Buruh Harian Lepas', 27, 'Jr. Barat No. 506, Salatiga 45247, Kaltara'),
(64, 'Virman Nardi Napitupulu S.IP', 'Montir', 30, 'Gg. Abdul. Muis No. 828, Bekasi 32713, Sulbar'),
(65, 'Diah Uyainah', 'Ustaz / Mubaligh', 32, 'Dk. Baabur Royan No. 738, Payakumbuh 93079, Sumbar'),
(66, 'Joni', 'Web Designer', 25, 'Jl. Panglateh'),
(67, 'Sabrina Queen Padmasari', 'Perancang Busana', 34, 'Psr. Babadak No. 489, Sawahlunto 30887, Maluku'),
(68, 'Panca Prabawa Wibisono S.T.', 'Karyawan Honorer', 31, 'Ki. Bahagia  No. 708, Samarinda 98804, Papua'),
(69, 'Amelia Usada', 'Penulis', 35, 'Ki. Katamso No. 371, Ambon 88340, Riau'),
(70, 'Humaira Ayu Zulaika S.Ked', 'Petani / Pekebun', 40, 'Dk. Eka No. 858, Tebing Tinggi 82383, Pabar'),
(71, 'Jamalia Mutia Haryanti', 'Guru', 28, 'Psr. Dago No. 686, Dumai 61738, Kalsel'),
(72, 'Gandi Napitupulu', 'Perdagangan', 28, 'Dk. Bayan No. 810, Administrasi Jakarta Barat 22338, Bali'),
(73, 'Warsa Sihombing', 'Penata Rias', 38, 'Ki. Ahmad Dahlan No. 886, Makassar 38270, DIY'),
(74, 'Kusuma Natsir', 'Wiraswasta', 32, 'Kpg. Jend. A. Yani No. 317, Jayapura 38462, Sulsel'),
(75, 'Karimah Melinda Rahayu M.Farm', 'Penyiar Radio', 32, 'Ki. Mahakam No. 868, Yogyakarta 64349, Jatim'),
(76, 'Rahman Sitompul', 'Industri', 31, 'Psr. Badak No. 433, Banda Aceh 29335, Sulbar'),
(77, 'Joni', 'Web Designer', 25, 'Jl. Panglateh'),
(78, 'Vicky Sudiati', 'Dokter', 28, 'Jln. Kyai Mojo No. 925, Pariaman 87930, Sultra'),
(79, 'Endra Rajasa S.T.', 'Desainer', 37, 'Ds. Rajawali Barat No. 877, Dumai 92121, Lampung'),
(80, 'Laksana Dongoran', 'Apoteker', 38, 'Gg. Bahagia No. 418, Dumai 41497, Sumut'),
(81, 'Vicky Devi Yuniar S.T.', 'Konsultan', 37, 'Gg. Jambu No. 358, Magelang 39958, Malut'),
(82, 'Dipa Argono Waluyo M.TI.', 'Masinis', 36, 'Psr. Sadang Serang No. 113, Administrasi Jakarta Utara 59430, Sulteng'),
(83, 'Kasiyah Lili Melani', 'Tabib', 38, 'Ds. Basoka Raya No. 963, Lhokseumawe 42760, Bengkulu'),
(84, 'Sari Suartini S.IP', 'Juru Masak', 27, 'Dk. M.T. Haryono No. 453, Samarinda 18871, Sumsel'),
(85, 'Violet Wijayanti S.Sos', 'Petani / Pekebun', 28, 'Kpg. Tentara Pelajar No. 763, Bengkulu 81358, Aceh');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai2`
--

CREATE TABLE `pegawai2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(225) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai2`
--

INSERT INTO `pegawai2` (`id`, `nama`, `alamat`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'Ratih Yuliarti', 'Ki. Krakatau No. 633, Banjarmasin 12033, Sulut', NULL, '2024-05-26 22:58:13', '2024-05-26 22:58:13'),
(7, 'Yono Irawan', 'Dk. Abdul No. 698, Pangkal Pinang 34265, Kalteng', NULL, NULL, NULL),
(8, 'Keisha Kani Usamah S.E.', 'Gg. Wahid Hasyim No. 194, Tual 57795, Bali', NULL, NULL, NULL),
(9, 'Darman Pangestu', 'Ki. Ters. Pasir Koja No. 258, Tegal 59535, DKI', NULL, NULL, NULL),
(10, 'Cici Nuraini S.I.Kom', 'Ki. Baja No. 971, Pekalongan 60173, Babel', NULL, NULL, NULL),
(11, 'Qori Hartati S.E.', 'Jr. Ir. H. Juanda No. 629, Tual 35411, Papua', NULL, NULL, NULL),
(12, 'Jaga Santoso', 'Kpg. Bappenas No. 222, Sorong 64767, Babel', NULL, NULL, NULL),
(13, 'Kuncara Sinaga M.Ak', 'Jln. Sadang Serang No. 309, Administrasi Jakarta Barat 71997, Riau', NULL, NULL, NULL),
(14, 'Rachel Aryani', 'Kpg. Barat No. 56, Palopo 11765, Banten', NULL, NULL, NULL),
(15, 'Nadine Safitri', 'Kpg. Bagonwoto  No. 730, Yogyakarta 39392, Jatim', NULL, NULL, NULL),
(16, 'Puji Rahmawati M.Farm', 'Dk. Baha No. 858, Denpasar 22799, Sumut', NULL, NULL, NULL),
(17, 'Kasiyah Agustina', 'Ds. Ekonomi No. 171, Administrasi Jakarta Timur 40464, Kalbar', NULL, NULL, NULL),
(18, 'Ifa Rahimah', 'Ki. Sugiyopranoto No. 646, Payakumbuh 98659, Sumsel', NULL, NULL, NULL),
(19, 'Dalimin Maulana', 'Ds. Sunaryo No. 732, Denpasar 94407, Sultra', NULL, NULL, NULL),
(20, 'Syahrini Nasyidah', 'Psr. Labu No. 271, Bukittinggi 94212, Sulsel', NULL, NULL, NULL),
(21, 'Eka Kasiyah Kusmawati S.Farm', 'Ds. Villa No. 515, Gunungsitoli 30372, Sumbar', NULL, NULL, NULL),
(22, 'Perkasa Wibisono', 'Ds. Kyai Gede No. 138, Semarang 19901, Pabar', NULL, NULL, NULL),
(23, 'Hani Nuraini M.TI.', 'Ds. Flores No. 211, Tomohon 65074, Kaltim', NULL, NULL, NULL),
(24, 'Luluh Saadat Budiman', 'Gg. Antapani Lama No. 171, Kotamobagu 42429, Sumbar', NULL, NULL, NULL),
(25, 'Balamantri Laksana Salahudin S.H.', 'Dk. Bakhita No. 850, Blitar 35450, Kalbar', NULL, NULL, NULL),
(26, 'Oman Ridwan Firgantoro S.Pd', 'Dk. Padma No. 812, Langsa 55405, Maluku', NULL, NULL, NULL),
(27, 'Halima Wastuti', 'Dk. Bakau No. 518, Madiun 59211, Pabar', NULL, NULL, NULL),
(28, 'Bahuwarna Radika Prabowo S.IP', 'Gg. BKR No. 82, Dumai 60902, Sulut', NULL, NULL, NULL),
(29, 'Hasan Rajasa S.Psi', 'Jr. Asia Afrika No. 720, Lubuklinggau 59342, Bali', NULL, NULL, NULL),
(30, 'Belinda Suartini', 'Jln. Sukajadi No. 399, Pagar Alam 93420, Kepri', NULL, NULL, NULL),
(31, 'Rina Mandasari', 'Ds. Bak Air No. 928, Surabaya 16548, Kaltara', NULL, NULL, NULL),
(32, 'Carub Zulkarnain S.H.', 'Dk. Suprapto No. 726, Tanjung Pinang 69244, Sulteng', NULL, NULL, NULL),
(33, 'Ratih Febi Utami', 'Jln. Jambu No. 397, Administrasi Jakarta Pusat 31690, Jabar', NULL, NULL, NULL),
(34, 'Tiara Puspa Hasanah M.Ak', 'Jr. Basmol Raya No. 524, Administrasi Jakarta Selatan 44761, Gorontalo', NULL, NULL, NULL),
(35, 'Novi Fujiati', 'Jln. Salatiga No. 77, Sorong 38664, Sulteng', NULL, NULL, NULL),
(36, 'Atma Mangunsong', 'Psr. Rajiman No. 194, Sungai Penuh 71490, Babel', NULL, NULL, NULL),
(37, 'Jaya Napitupulu', 'Ki. Bakhita No. 926, Langsa 55309, Banten', NULL, NULL, NULL),
(38, 'Halima Usamah', 'Ds. Baan No. 250, Dumai 17187, Sulsel', NULL, NULL, NULL),
(39, 'Rangga Santoso S.Ked', 'Ds. Baha No. 788, Tual 23894, Babel', NULL, NULL, NULL),
(40, 'Daryani Putra', 'Ki. Mulyadi No. 648, Malang 76890, NTB', NULL, NULL, NULL),
(41, 'Hardana Maheswara S.I.Kom', 'Gg. Teuku Umar No. 527, Medan 53626, Bengkulu', NULL, NULL, NULL),
(42, 'Adika Maheswara', 'Kpg. Pasir Koja No. 353, Sibolga 46287, Bali', NULL, NULL, NULL),
(43, 'Dewi Hesti Andriani S.Gz', 'Dk. Tubagus Ismail No. 572, Serang 44632, Sumbar', NULL, NULL, NULL),
(44, 'Gamani Situmorang', 'Dk. Pacuan Kuda No. 15, Sibolga 33716, Bali', NULL, NULL, NULL),
(45, 'Narji Habibi', 'Kpg. Banda No. 966, Salatiga 23640, Jambi', NULL, NULL, NULL),
(46, 'Puspa Unjani Yulianti S.Ked', 'Jr. Surapati No. 754, Magelang 97377, Sulsel', NULL, NULL, NULL),
(47, 'Candrakanta Nashiruddin', 'Kpg. Yohanes No. 522, Balikpapan 10677, Bengkulu', NULL, NULL, NULL),
(48, 'Paulin Jane Aryani S.Kom', 'Kpg. Bahagia  No. 878, Metro 16260, Kalteng', NULL, NULL, NULL),
(49, 'Lintang Shania Novitasari', 'Ds. Dahlia No. 98, Serang 96906, Jambi', NULL, NULL, NULL),
(50, 'Danuja Lazuardi S.Sos', 'Jr. Dewi Sartika No. 957, Metro 41504, Jatim', NULL, NULL, NULL),
(57, 'etaa cans', 'boak', NULL, NULL, NULL),
(58, 'rezaaa', 'kalimango', NULL, '2024-05-26 22:10:17', NULL),
(59, 'ade', 'boak', NULL, '2024-05-26 22:45:02', '2024-05-26 22:45:02');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Padmi Kamila Hassanah S.Farm', NULL, NULL),
(2, 'Julia Oktaviani', NULL, NULL),
(3, 'Darmana Sitompul', NULL, NULL),
(4, 'Naradi Nainggolan', NULL, NULL),
(5, 'Tedi Winarno', NULL, NULL),
(6, 'Ulya Yani Permata S.Pt', NULL, NULL),
(7, 'Maida Uyainah', NULL, NULL),
(8, 'Putri Dian Nasyidah M.Pd', NULL, NULL),
(9, 'Lantar Uwais', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'dolores', 2, NULL, NULL),
(2, 'culpa', 3, NULL, NULL),
(3, 'sit', 4, NULL, NULL),
(4, 'quasi', 3, NULL, NULL),
(5, 'inventore', 5, NULL, NULL),
(6, 'ut', 7, NULL, NULL),
(7, 'quisquam', 5, NULL, NULL),
(8, 'fugiat', 7, NULL, NULL),
(9, 'perspiciatis', 5, NULL, NULL),
(10, 'voluptatem', 3, NULL, NULL),
(11, 'non', 2, NULL, NULL),
(12, 'ducimus', 5, NULL, NULL),
(13, 'tempora', 4, NULL, NULL),
(14, 'voluptatem', 10, NULL, NULL),
(15, 'nisi', 3, NULL, NULL),
(16, 'exercitationem', 10, NULL, NULL),
(17, 'sed', 2, NULL, NULL),
(18, 'tempora', 6, NULL, NULL),
(19, 'laudantium', 7, NULL, NULL),
(20, 'a', 6, NULL, NULL),
(21, 'consequuntur', 9, NULL, NULL),
(22, 'omnis', 1, NULL, NULL),
(23, 'rerum', 9, NULL, NULL),
(24, 'ut', 1, NULL, NULL),
(25, 'amet', 10, NULL, NULL),
(26, 'atque', 9, NULL, NULL),
(27, 'at', 4, NULL, NULL),
(28, 'hic', 3, NULL, NULL),
(29, 'itaque', 1, NULL, NULL),
(30, 'quia', 9, NULL, NULL),
(31, 'consequatur', 8, NULL, NULL),
(32, 'non', 9, NULL, NULL),
(33, 'explicabo', 10, NULL, NULL),
(34, 'eos', 6, NULL, NULL),
(35, 'eveniet', 5, NULL, NULL),
(36, 'dolor', 10, NULL, NULL),
(37, 'magnam', 10, NULL, NULL),
(38, 'aut', 1, NULL, NULL),
(39, 'et', 6, NULL, NULL),
(40, 'ut', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `telepon`
--

CREATE TABLE `telepon` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor_telepon` varchar(20) NOT NULL,
  `pengguna_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telepon`
--

INSERT INTO `telepon` (`id`, `nomor_telepon`, `pengguna_id`, `created_at`, `updated_at`) VALUES
(1, '(+62) 878 0989 834', 1, NULL, NULL),
(2, '(+62) 509 9868 0557', 2, NULL, NULL),
(3, '023 9503 4379', 3, NULL, NULL),
(4, '(+62) 24 1120 052', 4, NULL, NULL),
(5, '0535 3676 2454', 5, NULL, NULL),
(6, '0614 0945 4128', 6, NULL, NULL),
(7, '0460 8541 5478', 7, NULL, NULL),
(8, '(+62) 713 5497 976', 8, NULL, NULL),
(9, '(+62) 653 4057 294', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'customer',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Elta Apriliani', 'eltaapriliani@gmail.com', 'Admin', NULL, '$2y$10$rRR0HPevUwKTqIccRghWNeVaKrPcVd1yAKpQs9A0Ac1tOifqk4dXO', 'wU8cGtOikKjViAGGt29MBABDX1J2hmuqrTqz6rJdLkvj3zJvtYsYOhY6TPa8', '2024-04-22 01:47:44', '2024-06-06 22:14:02'),
(2, 'Rezha Fathurrahman', 'rezhafathurrahman@gmail.com', 'customer', NULL, '$2y$10$bdEMsC5.UgriAgKfhlDkUOKSIizRiCJ65NAfUcBDCCiBmZAcIIUUG', NULL, '2024-04-22 05:11:43', '2024-04-22 05:11:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hadiah`
--
ALTER TABLE `hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indexes for table `pegawai2`
--
ALTER TABLE `pegawai2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `telepon`
--
ALTER TABLE `telepon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hadiah`
--
ALTER TABLE `hadiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `pegawai2`
--
ALTER TABLE `pegawai2`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `telepon`
--
ALTER TABLE `telepon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
