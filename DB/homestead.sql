-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2021 at 10:36 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `course_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `published` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `slug`, `description`, `price`, `course_image`, `start_date`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'Perencanaan dan Instalasi Sistem Audio Video (PSA)', 'perencanaan-dan-instalasi-sistem-audio-video-(psa)', 'Mata Pelajaran Perencanaan dan Instalasi Sistem Audio Video (PSA) Kelas XI', NULL, NULL, '2021-11-22', 1, '2021-11-21 23:19:54', '2021-11-21 23:36:21', NULL),
(7, 'test', 'test', 'test', NULL, NULL, '2021-11-22', 1, '2021-11-22 02:12:34', '2021-11-22 02:15:28', '2021-11-22 02:15:28');

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `rating` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_student`
--

INSERT INTO `course_student` (`course_id`, `user_id`, `rating`, `created_at`, `updated_at`) VALUES
(6, 3, 0, '2021-11-21 23:19:54', '2021-11-21 23:19:54'),
(6, 4, 0, '2021-11-21 23:19:54', '2021-11-21 23:19:54'),
(7, 3, 0, '2021-11-22 02:12:35', '2021-11-22 02:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `course_user`
--

CREATE TABLE `course_user` (
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_user`
--

INSERT INTO `course_user` (`course_id`, `user_id`) VALUES
(6, 2),
(7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesson_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `free_lesson` tinyint(4) DEFAULT 0,
  `published` tinyint(4) DEFAULT 0,
  `is_forum_active` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `title`, `slug`, `lesson_image`, `short_text`, `full_text`, `position`, `free_lesson`, `published`, `is_forum_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(51, 6, 'Konsep Gelombang Suara dan Sistem Akustik Ruang', 'konsep-gelombang-suara-dan-sistem-akustik-ruang', NULL, 'Kompetensi Dasar: Memahami gelombang suara dan sistem akustik ruang', '<p>Kompetensi Dasar:</p>\r\n\r\n<ul>\r\n	<li>Memahami gelombang suara dan sistem akustik ruang</li>\r\n</ul>\r\n\r\n<p>Indikator Pencapaian:</p>\r\n\r\n<ul>\r\n	<li>Menginterprestasikan elemen gelombang, jenis-jenis dan interaksi gelombang suara.</li>\r\n</ul>\r\n\r\n<p>Materi Pembelajaran:</p>\r\n\r\n<ul>\r\n	<li>Definisi Gelombang Suara</li>\r\n	<li>Karakteristik dasar gelombang suara</li>\r\n	<li>Sifat dasar gelombang bunyi</li>\r\n	<li>Manfaat Gelombang Bunyi</li>\r\n	<li>Menghitung gelombang bunyi</li>\r\n	<li>Tujuan akustik</li>\r\n	<li>Persyaratan Akustik</li>\r\n	<li>Bahan Penyerap Bunyi</li>\r\n	<li>Mengukur dimensi akustik ruang</li>\r\n</ul>', 1, 0, 1, 0, '2021-11-21 23:24:33', '2021-11-22 00:16:22', NULL),
(52, 6, 'Psikoakustik Anatomi Telinga', 'psikoakustik-anatomi-telinga', NULL, 'Kompetensi Dasar: Memahami anatomi dan fungsi telinga manusia', '<p>Kompetensi Dasar:</p>\r\n\r\n<ul>\r\n	<li>Memahami anatomi dan fungsi telinga manusia.</li>\r\n</ul>\r\n\r\n<p>Indikator Pencapaian:</p>\r\n\r\n<ul>\r\n	<li>Menjelaskan anatomi dan fungsi telinga manusia.</li>\r\n</ul>\r\n\r\n<p>Materi Pembelajaran</p>\r\n\r\n<ul>\r\n	<li>Fungsi Telinga</li>\r\n	<li>Bagian dari telinga manusia</li>\r\n	<li>Kurva isofonik</li>\r\n	<li>Ambang batas pendengaran manusia</li>\r\n</ul>', 2, 0, 1, 0, '2021-11-21 23:53:53', '2021-11-21 23:53:53', NULL),
(53, NULL, 'Instalasi Mikrofon', 'instalasi-mikrofon', NULL, 'Kompetensi Dasar: Menerapkan instalasi macam-macam tipe mikrofon pada sistem akustik.', '<p>Kompetensi Dasar:</p>\r\n\r\n<ul>\r\n	<li>Menerapkan instalasi macam-macam tipe mikrofon pada sistem akustik.</li>\r\n</ul>\r\n\r\n<p>Indikator Pencapaian:</p>\r\n\r\n<ul>\r\n	<li>Menjelaskan terminologi karakteristik mikrofon sistem akustik suara.</li>\r\n</ul>\r\n\r\n<p>Materi Pembelajaran</p>\r\n\r\n<ul>\r\n	<li>Sejarah mikrofon</li>\r\n	<li>Fungsi Mikrofon</li>\r\n	<li>Karakteristik mikrofon</li>\r\n	<li>Jenis Mikrofon</li>\r\n</ul>', 1, 0, 1, 0, '2021-11-21 23:57:07', '2021-11-21 23:57:07', NULL),
(54, NULL, 'Instalasi Mikrofon', 'instalasi-mikrofon', NULL, 'Kompetensi Dasar: Menerapkan instalasi macam-macam tipe mikrofon pada sistem akustik.', '<p>Kompetensi Dasar:</p>\r\n\r\n<ul>\r\n	<li>Menerapkan instalasi macam-macam tipe mikrofon pada sistem akustik.</li>\r\n</ul>\r\n\r\n<p>Indikator Pencapaian:</p>\r\n\r\n<ul>\r\n	<li>Menjelaskan terminologi karakteristik mikrofon sistem akustik suara.</li>\r\n</ul>\r\n\r\n<p>Materi Pembelajaran</p>\r\n\r\n<ul>\r\n	<li>Sejarah mikrofon</li>\r\n	<li>Fungsi Mikrofon</li>\r\n	<li>Karakteristik mikrofon</li>\r\n	<li>Jenis Mikrofon</li>\r\n</ul>', 2, 0, 1, 0, '2021-11-21 23:59:34', '2021-11-21 23:59:34', NULL),
(55, NULL, 'Instalasi Mikrofon', 'instalasi-mikrofon', NULL, 'Kompetensi Dasar: Menerapkan instalasi macam-macam tipe mikrofon pada sistem akustik.', '<p>Kompetensi Dasar:</p>\r\n\r\n<ul>\r\n	<li>Menerapkan instalasi macam-macam tipe mikrofon pada sistem akustik.</li>\r\n</ul>\r\n\r\n<p>Indikator Pencapaian:</p>\r\n\r\n<ul>\r\n	<li>Menjelaskan terminologi karakteristik mikrofon sistem akustik suara.</li>\r\n</ul>\r\n\r\n<p>Materi Pembelajaran</p>\r\n\r\n<ul>\r\n	<li>Sejarah mikrofon</li>\r\n	<li>Fungsi Mikrofon</li>\r\n	<li>Karakteristik mikrofon</li>\r\n	<li>Jenis Mikrofon</li>\r\n</ul>', 3, 0, 1, 0, '2021-11-21 23:59:50', '2021-11-21 23:59:50', NULL),
(56, 6, 'Instalasi Mikrofon', 'instalasi-mikrofon', NULL, 'Kompetensi Dasar: Menerapkan instalasi macam-macam tipe mikrofon pada sistem akustik.', '<p>Kompetensi Dasar:</p>\r\n\r\n<ul>\r\n	<li>Menerapkan instalasi macam-macam tipe mikrofon pada sistem akustik.</li>\r\n</ul>\r\n\r\n<p>Indikator Pencapaian:</p>\r\n\r\n<ul>\r\n	<li>Menjelaskan terminologi karakteristik mikrofon sistem akustik suara.</li>\r\n</ul>\r\n\r\n<p>Materi Pembelajaran</p>\r\n\r\n<ul>\r\n	<li>Sejarah mikrofon</li>\r\n	<li>Fungsi Mikrofon</li>\r\n	<li>Karakteristik mikrofon</li>\r\n	<li>Jenis Mikrofon</li>\r\n</ul>', 3, 0, 1, 0, '2021-11-22 00:00:37', '2021-11-22 00:14:55', NULL),
(57, 6, 'Rangkaian Universal Pre-Amplifier', 'rangkaian-universal-pre-amplifier', NULL, 'Kompetensi Dasar: Menerapkan instalasi macam-macam tipe mikrofon pada sistem akustik.', '<p>Kompetensi Dasar:</p>\r\n\r\n<ul>\r\n	<li>Menerapkan instalasi macam-macam tipe mikrofon pada sistem akustik.</li>\r\n</ul>\r\n\r\n<p>Indikator Pencapaian:</p>\r\n\r\n<ul>\r\n	<li>Menjelaskan terminologi karakteristik mikrofon sistem akustik suara.</li>\r\n</ul>\r\n\r\n<p>Materi Pembelajaran</p>\r\n\r\n<ul>\r\n	<li>Pre-Amplifier</li>\r\n	<li>Fungsi pre-amplifier</li>\r\n	<li>Jenis&nbsp; penguat depan</li>\r\n	<li>Rangkaian pre-amplifier universal</li>\r\n</ul>', 4, 0, 1, 0, '2021-11-22 00:06:25', '2021-11-22 00:15:08', NULL),
(58, 6, 'Rangkaian Tone Control', 'rangkaian-tone-control', NULL, 'Kompetensi Dasar: Merencanakan rangkaian pengatur nada (tone control) penguat audio.', '<p>Kompetensi Dasar:</p>\r\n\r\n<ul>\r\n	<li>Merencanakan rangkaian pengatur nada (tone control) penguat audio.</li>\r\n</ul>\r\n\r\n<p>Indikator Pencapaian:</p>\r\n\r\n<ul>\r\n	<li>Memahami arsitektur rangkaian pengatur nada (tone control) penguat audio</li>\r\n</ul>\r\n\r\n<p>Materi Pembelajaran</p>\r\n\r\n<ul>\r\n	<li>Definisi Rangkaian Tone Control</li>\r\n	<li>Jenis Tone Control</li>\r\n	<li>Rangkaian Tapis Loss (Pass Filter)</li>\r\n	<li>Pemasangan Tone Control</li>\r\n</ul>', 5, 0, 1, 0, '2021-11-22 00:08:27', '2021-11-22 00:08:27', NULL),
(59, 6, 'Evaluation', 'evaluation', NULL, 'Silahkan isi kuis berikut untuk mengetahui berapa persen pemahaman andari dari belajar di websiite pembelajaran ini', '<p>Silahkan isi kuis berikut untuk mengetahui berapa persen pemahaman andari dari belajar di websiite pembelajaran ini</p>', 6, 0, 1, 0, '2021-11-22 01:13:38', '2021-11-22 01:13:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_student`
--

CREATE TABLE `lesson_student` (
  `lesson_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson_student`
--

INSERT INTO `lesson_student` (`lesson_id`, `user_id`, `created_at`, `updated_at`) VALUES
(51, 3, '2021-11-21 23:26:01', '2021-11-21 23:26:01'),
(52, 3, '2021-11-21 23:54:18', '2021-11-21 23:54:18'),
(56, 3, '2021-11-22 00:01:58', '2021-11-22 00:01:58'),
(57, 3, '2021-11-22 00:09:32', '2021-11-22 00:09:32'),
(58, 3, '2021-11-22 00:09:34', '2021-11-22 00:09:34'),
(59, 3, '2021-11-22 01:14:50', '2021-11-22 01:14:50'),
(51, 4, '2021-11-22 02:01:53', '2021-11-22 02:01:53'),
(59, 4, '2021-11-22 02:01:55', '2021-11-22 02:01:55'),
(58, 4, '2021-11-22 02:02:44', '2021-11-22 02:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_id`, `model_type`, `collection_name`, `name`, `file_name`, `disk`, `size`, `manipulations`, `custom_properties`, `order_column`, `created_at`, `updated_at`) VALUES
(3, 53, 'App\\Lesson', 'downloadable_files', 'PDF Mikrofon (bab 3)', 'PDF Mikrofon (bab 3).pdf', 'media', 3141257, '[]', '[]', 3, '2021-11-21 23:57:04', '2021-11-21 23:57:07'),
(4, NULL, 'App\\Lesson', 'downloadable_files', 'PDF Mikrofon (bab 3)', 'PDF Mikrofon (bab 3).pdf', 'media', 3141257, '[]', '[]', 4, '2021-11-21 23:59:18', '2021-11-21 23:59:18'),
(5, 54, 'App\\Lesson', 'downloadable_files', 'PDF Mikrofon (bab 3)-dikompresi', 'PDF Mikrofon (bab 3)-dikompresi.pdf', 'media', 1156227, '[]', '[]', 5, '2021-11-21 23:59:26', '2021-11-21 23:59:34'),
(9, 51, 'App\\Lesson', 'downloadable_files', '1 Konsep Gelombang Suara dan Sistem Akustik Ruang', '1 Konsep Gelombang Suara dan Sistem Akustik Ruang.pdf', 'media', 4262770, '[]', '[]', 1, '2021-11-22 00:13:30', '2021-11-22 00:14:05'),
(10, 52, 'App\\Lesson', 'downloadable_files', '2 Psikoakustik Anatomi Telinga', '2 Psikoakustik Anatomi Telinga.pdf', 'media', 2235694, '[]', '[]', 1, '2021-11-22 00:14:35', '2021-11-22 00:14:41'),
(11, 56, 'App\\Lesson', 'downloadable_files', '3 Instalasi Mikrofon', '3 Instalasi Mikrofon.pdf', 'media', 1156227, '[]', '[]', 1, '2021-11-22 00:14:50', '2021-11-22 00:14:56'),
(12, 57, 'App\\Lesson', 'downloadable_files', '4 Rangkaian Universal Pre-Amplifier', '4 Rangkaian Universal Pre-Amplifier.pdf', 'media', 5072083, '[]', '[]', 1, '2021-11-22 00:15:05', '2021-11-22 00:15:09'),
(13, 58, 'App\\Lesson', 'downloadable_files', '5 Rangkaian Tone Control', '5 Rangkaian Tone Control.pdf', 'media', 1892880, '[]', '[]', 1, '2021-11-22 00:15:17', '2021-11-22 00:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2017_07_19_082005_create_1500441605_permissions_table', 1),
(3, '2017_07_19_082006_create_1500441606_roles_table', 1),
(4, '2017_07_19_082009_create_1500441609_users_table', 1),
(5, '2017_07_19_082347_create_1500441827_courses_table', 1),
(6, '2017_07_19_082723_create_1500442043_lessons_table', 1),
(7, '2017_07_19_082724_create_media_table', 1),
(8, '2017_07_19_082929_create_1500442169_questions_table', 1),
(9, '2017_07_19_083047_create_1500442247_questions_options_table', 1),
(10, '2017_07_19_083236_create_1500442356_tests_table', 1),
(11, '2017_07_19_120427_create_596eec08307cd_permission_role_table', 1),
(12, '2017_07_19_120430_create_596eec0af366b_role_user_table', 1),
(13, '2017_07_19_120808_create_596eece522a6e_course_user_table', 1),
(14, '2017_07_19_121657_create_596eeef709839_question_test_table', 1),
(15, '2017_08_14_085956_create_course_students_table', 1),
(16, '2017_08_17_051131_create_tests_results_table', 1),
(17, '2017_08_17_051254_create_tests_results_answers_table', 1),
(18, '2017_08_18_054622_create_lesson_student_table', 1),
(19, '2017_08_18_060324_add_rating_to_course_student_table', 1),
(20, '2021_11_03_194208_create_comments_table', 1),
(21, '2021_11_21_035417_create_table_contact', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user_management_access', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(2, 'user_management_create', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(3, 'user_management_edit', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(4, 'user_management_view', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(5, 'user_management_delete', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(6, 'permission_access', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(7, 'permission_create', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(8, 'permission_edit', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(9, 'permission_view', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(10, 'permission_delete', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(11, 'role_access', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(12, 'role_create', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(13, 'role_edit', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(14, 'role_view', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(15, 'role_delete', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(16, 'user_access', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(17, 'user_create', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(18, 'user_edit', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(19, 'user_view', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(20, 'user_delete', '2021-11-21 23:10:05', '2021-11-21 23:10:05'),
(21, 'course_access', '2021-11-21 23:10:06', '2021-11-21 23:10:06'),
(22, 'course_create', '2021-11-21 23:10:06', '2021-11-21 23:10:06'),
(23, 'course_edit', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(24, 'course_view', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(25, 'course_delete', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(26, 'lesson_access', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(27, 'lesson_create', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(28, 'lesson_edit', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(29, 'lesson_view', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(30, 'lesson_delete', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(31, 'question_access', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(32, 'question_create', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(33, 'question_edit', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(34, 'question_view', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(35, 'question_delete', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(36, 'questions_option_access', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(37, 'questions_option_create', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(38, 'questions_option_edit', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(39, 'questions_option_view', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(40, 'questions_option_delete', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(41, 'test_access', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(42, 'test_create', '2021-11-21 23:10:07', '2021-11-21 23:10:07'),
(43, 'test_edit', '2021-11-21 23:10:08', '2021-11-21 23:10:08'),
(44, 'test_view', '2021-11-21 23:10:08', '2021-11-21 23:10:08'),
(45, 'test_delete', '2021-11-21 23:10:08', '2021-11-21 23:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(1, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(1, 3),
(21, 3),
(24, 3),
(26, 3),
(29, 3),
(31, 3),
(34, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(44, 3),
(25, 2),
(30, 2),
(35, 2);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `question_image`, `score`, `created_at`, `updated_at`, `deleted_at`) VALUES
(51, 'Gelombang yang arah getarnya searah (paralel) dengan arah rambatannya adalah…', NULL, 1, '2021-11-22 01:21:32', '2021-11-22 02:00:13', NULL),
(52, 'Jarak antar titik gelombang dan titik ekuivalen pada fasa berikutnya disebut.....', NULL, 1, '2021-11-22 01:25:01', '2021-11-22 02:00:20', NULL),
(53, 'Gambar dibawah merupakan ...', '1637569791-3.jpg', 1, '2021-11-22 01:29:52', '2021-11-22 02:00:28', NULL),
(54, 'Gambar dibawah merupakan …', '1637570415-4.png', 1, '2021-11-22 01:40:16', '2021-11-22 02:00:38', NULL),
(55, 'Gelombang yang memiliki frekwensi paling kecil atau panjang gelombangnya paling  panjang adalah….', NULL, 1, '2021-11-22 01:44:13', '2021-11-22 02:00:47', NULL),
(56, 'Banyaknya penebalan dan penipisan partikel udara dalam satu detik, disebut :', NULL, 1, '2021-11-22 01:46:00', '2021-11-22 02:00:56', NULL),
(57, 'Banyaknya ayunan tekanan tiap satuan waktu disebut frekuensi dan akan diamati sebagai...', NULL, 1, '2021-11-22 01:47:14', '2021-11-22 02:01:05', NULL),
(58, 'Rumus yang digunakan Untuk menghitung frekuensi adalah…', NULL, 1, '2021-11-22 01:49:22', '2021-11-22 02:01:15', NULL),
(59, 'Frekuensi suara yang dapat didengar oleh Manusia…', NULL, 1, '2021-11-22 01:51:18', '2021-11-22 02:01:24', NULL),
(60, 'Satuan yang digunakan untuk mengukur intensitas suara adalah …', NULL, 1, '2021-11-22 01:53:30', '2021-11-22 02:01:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions_options`
--

CREATE TABLE `questions_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `option_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions_options`
--

INSERT INTO `questions_options` (`id`, `question_id`, `option_text`, `correct`, `created_at`, `updated_at`, `deleted_at`) VALUES
(201, 51, 'A. Gelombang rambat', 0, '2021-11-22 01:21:32', '2021-11-22 01:26:18', NULL),
(202, 51, 'B. Gelombang cahaya', 1, '2021-11-22 01:21:32', '2021-11-22 01:26:25', NULL),
(203, 51, 'C. Gelombang longitudinal', 0, '2021-11-22 01:21:32', '2021-11-22 01:26:31', NULL),
(204, 51, 'D. Gelombang setengah melingkar', 0, '2021-11-22 01:21:32', '2021-11-22 01:26:38', NULL),
(205, 51, 'E. Gelombang titik kesetimbangan', 0, '2021-11-22 01:22:18', '2021-11-22 01:26:46', NULL),
(206, 52, 'A. Panjang gelombang', 1, '2021-11-22 01:25:02', '2021-11-22 01:26:53', NULL),
(207, 52, 'B. Lebar gelombang', 0, '2021-11-22 01:25:02', '2021-11-22 01:27:00', NULL),
(208, 52, 'C.	Getaran', 0, '2021-11-22 01:25:02', '2021-11-22 01:25:02', NULL),
(209, 52, 'D.	Jarak kesetimbangan', 0, '2021-11-22 01:25:02', '2021-11-22 01:25:02', NULL),
(210, 52, 'E. Simpangan terbesar', 0, '2021-11-22 01:26:10', '2021-11-22 01:26:10', NULL),
(211, 53, 'A. Gelombang media', 0, '2021-11-22 01:29:52', '2021-11-22 01:29:52', NULL),
(212, 53, 'B. Gelombang rambat', 0, '2021-11-22 01:29:52', '2021-11-22 01:29:52', NULL),
(213, 53, 'C. Gelombang longitudinal', 0, '2021-11-22 01:29:52', '2021-11-22 01:29:52', NULL),
(214, 53, 'D. Gelombang elektromagnetik', 0, '2021-11-22 01:29:52', '2021-11-22 01:29:52', NULL),
(215, 53, 'E. Gelombang transversal', 1, '2021-11-22 01:30:05', '2021-11-22 01:30:05', NULL),
(216, 54, 'A. Gelombang media', 0, '2021-11-22 01:40:16', '2021-11-22 01:40:16', NULL),
(217, 54, 'B. Gelombang transversal', 0, '2021-11-22 01:40:16', '2021-11-22 01:40:16', NULL),
(218, 54, 'C. Gelombang longitudinal', 1, '2021-11-22 01:40:16', '2021-11-22 01:40:16', NULL),
(219, 54, 'D. Gelombang elektromagnetik', 0, '2021-11-22 01:40:17', '2021-11-22 01:40:17', NULL),
(220, 54, 'E. Gelombang rambat', 0, '2021-11-22 01:40:45', '2021-11-22 01:40:45', NULL),
(221, 55, 'A. Gelombang micro', 0, '2021-11-22 01:44:13', '2021-11-22 01:44:13', NULL),
(222, 55, 'B. Gelombang radio', 1, '2021-11-22 01:44:13', '2021-11-22 01:44:13', NULL),
(223, 55, 'C. Gelombang bunyi', 0, '2021-11-22 01:44:13', '2021-11-22 01:44:13', NULL),
(224, 55, 'D. Ultraviolet', 0, '2021-11-22 01:44:13', '2021-11-22 01:44:13', NULL),
(225, 55, 'E. Sinar X', 0, '2021-11-22 01:44:24', '2021-11-22 01:44:24', NULL),
(226, 56, 'A. Frekuensi', 1, '2021-11-22 01:46:00', '2021-11-22 01:46:00', NULL),
(227, 56, 'B. Amplitude', 0, '2021-11-22 01:46:00', '2021-11-22 01:46:00', NULL),
(228, 56, 'C. Desah', 0, '2021-11-22 01:46:00', '2021-11-22 01:46:00', NULL),
(229, 56, 'D. Dengung', 0, '2021-11-22 01:46:01', '2021-11-22 01:46:01', NULL),
(230, 56, 'E. Bising', 0, '2021-11-22 01:46:13', '2021-11-22 01:46:13', NULL),
(231, 57, 'A. Notasi', 0, '2021-11-22 01:47:14', '2021-11-22 01:47:14', NULL),
(232, 57, 'B. Desah', 0, '2021-11-22 01:47:14', '2021-11-22 01:47:14', NULL),
(233, 57, 'C. Nada', 1, '2021-11-22 01:47:14', '2021-11-22 01:47:14', NULL),
(234, 57, 'D. Dengung', 0, '2021-11-22 01:47:14', '2021-11-22 01:47:14', NULL),
(235, 57, 'E. Bising', 0, '2021-11-22 01:47:28', '2021-11-22 01:47:28', NULL),
(236, 58, 'A. f=1/T', 1, '2021-11-22 01:49:22', '2021-11-22 01:49:22', NULL),
(237, 58, 'B. 	f=1 ×T', 0, '2021-11-22 01:49:22', '2021-11-22 01:49:22', NULL),
(238, 58, 'C. 	f=1/a', 0, '2021-11-22 01:49:22', '2021-11-22 01:49:22', NULL),
(239, 58, 'D. 	F=m.a', 0, '2021-11-22 01:49:22', '2021-11-22 01:49:22', NULL),
(240, 58, 'E. 	F=m ×T', 0, '2021-11-22 01:49:34', '2021-11-22 01:49:34', NULL),
(241, 59, 'A. 1Hz-10MHz', 0, '2021-11-22 01:51:18', '2021-11-22 01:51:18', NULL),
(242, 59, 'B. 20 Khz – 10 MHz', 0, '2021-11-22 01:51:18', '2021-11-22 01:52:09', NULL),
(243, 59, 'C. 10 Hz-10 KHz', 0, '2021-11-22 01:51:18', '2021-11-22 01:51:18', NULL),
(244, 59, 'D. 20 Hz – 20Hz', 1, '2021-11-22 01:51:18', '2021-11-22 01:52:46', NULL),
(245, 59, 'E. 20 Khz – 10 MHz', 0, '2021-11-22 01:51:42', '2021-11-22 01:51:42', NULL),
(246, 60, 'A. Newton (N)', 0, '2021-11-22 01:53:30', '2021-11-22 01:53:30', NULL),
(247, 60, 'B. Desibel (dB)', 1, '2021-11-22 01:53:30', '2021-11-22 01:53:30', NULL),
(248, 60, 'C. Mikrobar (Bar)', 0, '2021-11-22 01:53:30', '2021-11-22 01:53:30', NULL),
(249, 60, 'D. Lamdha (λ)', 0, '2021-11-22 01:53:30', '2021-11-22 01:53:30', NULL),
(250, 60, 'E. Hertz (Hz)', 0, '2021-11-22 01:53:44', '2021-11-22 01:53:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_test`
--

CREATE TABLE `question_test` (
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `test_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_test`
--

INSERT INTO `question_test` (`question_id`, `test_id`) VALUES
(51, 51),
(52, 51),
(53, 51),
(54, 51),
(55, 51),
(56, 51),
(57, 51),
(58, 51),
(59, 51),
(60, 51);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2021-11-21 23:10:08', '2021-11-21 23:10:08'),
(2, 'Teacher', '2021-11-21 23:10:08', '2021-11-21 23:10:08'),
(3, 'Student', '2021-11-21 23:10:08', '2021-11-21 23:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `lesson_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `course_id`, `lesson_id`, `title`, `description`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(51, 6, 59, 'Evaluation', NULL, 1, '2021-11-22 01:14:37', '2021-11-22 01:14:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests_results`
--

CREATE TABLE `tests_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `test_result` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests_results`
--

INSERT INTO `tests_results` (`id`, `test_id`, `user_id`, `test_result`, `created_at`, `updated_at`) VALUES
(1, 51, 3, 4, '2021-11-22 01:56:54', '2021-11-22 01:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `tests_results_answers`
--

CREATE TABLE `tests_results_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `tests_result_id` int(10) UNSIGNED DEFAULT NULL,
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `option_id` int(10) UNSIGNED DEFAULT NULL,
  `correct` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests_results_answers`
--

INSERT INTO `tests_results_answers` (`id`, `tests_result_id`, `question_id`, `option_id`, `correct`, `created_at`, `updated_at`) VALUES
(1, 1, 51, 202, 1, '2021-11-22 01:56:54', '2021-11-22 01:56:54'),
(2, 1, 52, 208, 0, '2021-11-22 01:56:54', '2021-11-22 01:56:54'),
(3, 1, 53, 213, 0, '2021-11-22 01:56:54', '2021-11-22 01:56:54'),
(4, 1, 54, 218, 1, '2021-11-22 01:56:54', '2021-11-22 01:56:54'),
(5, 1, 55, 223, 0, '2021-11-22 01:56:54', '2021-11-22 01:56:54'),
(6, 1, 56, 228, 0, '2021-11-22 01:56:54', '2021-11-22 01:56:54'),
(7, 1, 57, 233, 1, '2021-11-22 01:56:54', '2021-11-22 01:56:54'),
(8, 1, 58, 238, 0, '2021-11-22 01:56:54', '2021-11-22 01:56:54'),
(9, 1, 59, 244, 1, '2021-11-22 01:56:54', '2021-11-22 01:56:54'),
(10, 1, 60, 248, 0, '2021-11-22 01:56:54', '2021-11-22 01:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$.MfbI70UOVhn8ts/T1DjWu16zPOIGTVV8T4lfKEk.4MUevMQ.aDme', 'DsaaSWDDLZ0dQL1h8vdbEdcahkKfoOGZ3LwSJBIP2wBRlazt2pSrgQXzK3Ql', '2021-11-21 23:10:08', '2021-11-21 23:17:26'),
(2, 'Nola Febrina', 'teacher@gmail.com', '$2y$10$OO4gZb.QZf6D1kt16PrzTeZMq2O6fwHxFw8wZ75NyAOuBCOcG4UVC', NULL, '2021-11-21 23:15:51', '2021-11-21 23:27:01'),
(3, 'Student A', 'studenta@gmail.com', '$2y$10$j60gXBfcfgXra5fPs60O1Oas3IjKWLYzDqqPYXmh/bEoVNC5DNhra', '8X6DJI0l23cOjrxCYIAdZ0zrMwC7tBOjosROl45ntxagB31VyF6MvnXDDYAD', '2021-11-21 23:16:27', '2021-11-21 23:17:07'),
(4, 'Student B', 'studentb@gmail.com', '$2y$10$RNWIa3.lPycfK/N8fXTknOHQ38PNU3Fs9Wu9ByyMTnsQYEM6oBP0q', NULL, '2021-11-21 23:16:58', '2021-11-21 23:16:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD KEY `course_student_course_id_foreign` (`course_id`),
  ADD KEY `course_student_user_id_foreign` (`user_id`);

--
-- Indexes for table `course_user`
--
ALTER TABLE `course_user`
  ADD KEY `fk_p_54418_54417_user_cou_596eece522b73` (`course_id`),
  ADD KEY `fk_p_54417_54418_course_u_596eece522bee` (`user_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `54419_596eedbb6686e` (`course_id`),
  ADD KEY `lessons_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD KEY `lesson_student_lesson_id_foreign` (`lesson_id`),
  ADD KEY `lesson_student_user_id_foreign` (`user_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_id_model_type_index` (`model_id`,`model_type`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `fk_p_54415_54416_role_per_596eec08308d0` (`permission_id`),
  ADD KEY `fk_p_54416_54415_permissi_596eec0830986` (`role_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `questions_options`
--
ALTER TABLE `questions_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `54421_596eee8745a1e` (`question_id`),
  ADD KEY `questions_options_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `question_test`
--
ALTER TABLE `question_test`
  ADD KEY `fk_p_54420_54422_test_que_596eeef70992f` (`question_id`),
  ADD KEY `fk_p_54422_54420_question_596eeef7099af` (`test_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `fk_p_54416_54417_user_rol_596eec0af3746` (`role_id`),
  ADD KEY `fk_p_54417_54416_role_use_596eec0af37c1` (`user_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `54422_596eeef514d00` (`course_id`),
  ADD KEY `54422_596eeef53411a` (`lesson_id`),
  ADD KEY `tests_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `tests_results`
--
ALTER TABLE `tests_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_results_test_id_foreign` (`test_id`),
  ADD KEY `tests_results_user_id_foreign` (`user_id`);

--
-- Indexes for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_results_answers_tests_result_id_foreign` (`tests_result_id`),
  ADD KEY `tests_results_answers_question_id_foreign` (`question_id`),
  ADD KEY `tests_results_answers_option_id_foreign` (`option_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `questions_options`
--
ALTER TABLE `questions_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tests_results`
--
ALTER TABLE `tests_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_student_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `fk_p_54417_54418_course_u_596eece522bee` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54418_54417_user_cou_596eece522b73` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `54419_596eedbb6686e` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD CONSTRAINT `lesson_student_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_student_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `fk_p_54415_54416_role_per_596eec08308d0` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54416_54415_permissi_596eec0830986` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions_options`
--
ALTER TABLE `questions_options`
  ADD CONSTRAINT `54421_596eee8745a1e` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_test`
--
ALTER TABLE `question_test`
  ADD CONSTRAINT `fk_p_54420_54422_test_que_596eeef70992f` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54422_54420_question_596eeef7099af` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `fk_p_54416_54417_user_rol_596eec0af3746` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54417_54416_role_use_596eec0af37c1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `54422_596eeef514d00` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `54422_596eeef53411a` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests_results`
--
ALTER TABLE `tests_results`
  ADD CONSTRAINT `tests_results_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  ADD CONSTRAINT `tests_results_answers_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `questions_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_results_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_results_answers_tests_result_id_foreign` FOREIGN KEY (`tests_result_id`) REFERENCES `tests_results` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
