-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 09:10 PM
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
-- Database: `biodata`
--

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_awards` varchar(255) NOT NULL,
  `thn_penyelenggara` varchar(255) NOT NULL,
  `penyelenggara` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `name_awards`, `thn_penyelenggara`, `penyelenggara`, `created_at`, `updated_at`) VALUES
(1, 'Data Analyisis Competition', '2016-02-07', 'Institut Teknologi Sepuluh Nopember', '2024-06-10 08:42:54', '2024-06-10 09:28:34'),
(3, 'Microsoft Excel (If, Macro, dan Pivot Table)', '2020-05-17', 'Technology for Indonesia', '2024-06-10 09:37:11', '2024-06-10 09:37:11'),
(4, 'Bahasa Pemrograman R, SQL, Python', '2021-01-14', 'Course in DQLAB', '2024-06-10 09:38:55', '2024-06-10 09:38:55'),
(5, 'UI/UX Design', '2023-12-20', 'Course in MySkill', '2024-06-10 09:40:38', '2024-06-10 09:40:38'),
(6, 'Human Resources', '2024-01-03', 'Course in MySkill', '2024-06-10 09:41:45', '2024-06-10 09:41:45'),
(7, 'Professional Virtual Assistant', '2024-02-05', 'Course in habiskerja.com', '2024-06-10 09:42:43', '2024-06-10 09:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `tahunmasuk` date NOT NULL,
  `tahunselesai` date NOT NULL,
  `kegiatan` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `nama_sekolah`, `jurusan`, `fakultas`, `tahunmasuk`, `tahunselesai`, `kegiatan`, `created_at`, `updated_at`) VALUES
(1, 'Universitas Negeri Jakarta', 'Teknologi Pendidikan', 'Fakultas Ilmu Pendidikan', '2012-09-29', '2015-06-01', 'Program Kreativitas Mahasiswa 2014 Membuat Aplikasi Media Pembelajaran', '2024-06-08 06:46:07', '2024-06-10 11:03:06'),
(2, 'Universitas Terbuka', 'Matematika', 'Fakultas Sains dan Teknologi', '2015-06-01', '2021-04-23', 'Data Analysis Competition 2016. Olimpiade Nasional MIPA 2017. Kerelawanan Disaster Management Exercise UT Tangguh 2018. Ikatan Mahasiswa MIPA UT. Resimen Mahasiswa UT.', '2024-06-08 06:56:05', '2024-06-08 06:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_name` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `tahunmasuk` date NOT NULL,
  `tahunkeluar` date NOT NULL,
  `job_desk` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `job_name`, `place`, `location`, `tahunmasuk`, `tahunkeluar`, `job_desk`, `created_at`, `updated_at`) VALUES
(1, 'Accounting Staff', 'PT Sri Intan Perkasa', 'Bekasi, Jawa Barat', '2023-07-24', '2023-11-03', 'Menginput petty cash dan pembelian barang. Mereview dokumentasi seluruh transaksi keuangan secara kronologis, rinci, dan akurat. Mengidentifikasi dan memperbaiki kesalahan perhitungan serta perbedaan keuangan untuk penyelesaian tepat waktu.', '2024-06-08 08:29:16', '2024-06-08 08:29:48'),
(2, 'Head of Human Resources', 'PT Sri Intan Perkasa', 'Bekasi, Jawa Barat', '2023-11-06', '2024-04-26', 'Menscreening 3000++ CV calon karyawan. Menghandle 10+ posisi baru. Menghandle 47 karyawan. Membuat peta konsep pengembangan website perusahaan. Mengelola dan menjaga sistem absensi serta data diri karyawan. Mengiklankan peluang kerja di Instagram, LinkedIn, dan Jobstreet.', '2024-06-08 08:41:39', '2024-06-08 08:41:39');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(7, '2024_06_07_043906_create_education', 5),
(8, '2024_06_07_044216_create_profile', 6),
(11, '2024_06_08_142203_create_experiences', 8),
(16, '2024_06_10_151627_create_skill_bahasas', 12),
(18, '2024_06_10_152046_create_skill_software', 14),
(19, '2024_06_10_151805_create_awards', 15),
(20, '2024_06_10_185651_create_projects', 16);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(500) NOT NULL,
  `phone` varchar(35) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pembukaan` varchar(255) NOT NULL,
  `motivasi` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `github_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `tiktok_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `fullname`, `phone`, `email`, `address`, `pembukaan`, `motivasi`, `description`, `github_link`, `linkedin_link`, `instagram_link`, `facebook_link`, `youtube_link`, `tiktok_link`, `created_at`, `updated_at`) VALUES
(1, 'Putri Maulidiyah', '081288010137', 'putrimaulidiyah94@gmail.com', 'Bogor, Jawa Barat', 'Assalamualaikum, Hello para pembaca resumeku.', 'Jangan pernah ragu pada kekuatanmu sendiri', 'Aku seorang sistem analis. Aku mempunyai pengalaman di bidang human resources dan accounting. Aku seorang INTJ-A, Intellectual Introvert, Melankolis, Tipe RIASEC (Conventional Realistic Investigative), Tipe DISC (Compliance). Aku mempunyai 3 kecerdasan tertinggi dalam kecerdasan majemuk yaitu 100% Kecerdasan Logika Matematika, 96% Kecerdasan Intrapersonal, 82% Kecerdasan Spasial Visual. Selain sebagai sistem analis, saya menghabiskan banyak waktu luang saya dengan bersosial media, membuat desain grafis, video editor, menjadi koki, dan menjelajahi kemajuan teknologi terkini . Saya juga suka jalan-jalan menikmati alam dan kuliner. Saya mengikuti sejumlah film bergenre fiksi ilmiah bertema luar angkasa. Selain itu, saya berminat berkarir menjadi sistem analis, personal assistant/virtual assistant, accounting, risk management, data analis, dan recruiter.', 'https://github.com/puuypm', 'https://www.linkedin.com/in/putri-maulidiyah', 'https://www.instagram.com/puuypm', 'https://www.facebook.com/puuypm', 'https://www.youtube.com/@maulidiyaahofficial', 'https://www.tiktok.com/@puuypm', '2024-06-08 06:37:52', '2024-06-08 09:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_project` varchar(255) NOT NULL,
  `project_desk` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `nama_project`, `project_desk`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Aplikasi Peserta', 'Membuat website aplikasi peserta', 'ap.PNG', '2024-06-10 11:58:57', '2024-06-10 11:59:30'),
(2, 'Penjualan Barang', 'Membuat website penjualan barang', 'op.PNG', '2024-06-10 12:00:33', '2024-06-10 12:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `profile_picture` varchar(110) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `profile_picture`, `created_at`, `updated_at`) VALUES
(1, '1717866573_me.png', '2024-06-08 10:09:33', '2024-06-08 10:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `skill_bahasas`
--

CREATE TABLE `skill_bahasas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bahasa` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill_bahasas`
--

INSERT INTO `skill_bahasas` (`id`, `bahasa`, `created_at`, `updated_at`) VALUES
(1, 'HTML', '2024-06-10 11:01:33', '2024-06-10 11:01:33'),
(2, 'PHP', '2024-06-10 11:01:50', '2024-06-10 11:01:50'),
(3, 'JavaScript', '2024-06-10 11:02:05', '2024-06-10 11:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `skill_software`
--

CREATE TABLE `skill_software` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `software_skill` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill_software`
--

INSERT INTO `skill_software` (`id`, `software_skill`, `created_at`, `updated_at`) VALUES
(1, 'Canva', '2024-06-10 10:58:47', '2024-06-10 10:58:47'),
(2, 'Tableau', '2024-06-10 10:59:08', '2024-06-10 10:59:08'),
(3, 'CorelDraw', '2024-06-10 10:59:26', '2024-06-10 10:59:26'),
(4, 'Microsoft Office', '2024-06-10 10:59:48', '2024-06-10 10:59:48'),
(5, 'Visual Studio Code', '2024-06-10 11:00:08', '2024-06-10 11:00:08'),
(6, 'DISC', '2024-06-10 11:00:24', '2024-06-10 11:00:24'),
(7, 'Adobe InDesign', '2024-06-10 11:00:41', '2024-06-10 11:00:41'),
(8, 'Accurate', '2024-06-10 11:00:58', '2024-06-10 11:00:58'),
(9, 'MBTI', '2024-06-10 11:01:11', '2024-06-10 11:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Putri Maulidiyah', 'admin@gmail.com', NULL, '12345678', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_bahasas`
--
ALTER TABLE `skill_bahasas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_software`
--
ALTER TABLE `skill_software`
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
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skill_bahasas`
--
ALTER TABLE `skill_bahasas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skill_software`
--
ALTER TABLE `skill_software`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
