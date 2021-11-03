-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2021 at 09:33 PM
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
-- Table structure for table `chatter_categories`
--

CREATE TABLE `chatter_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatter_categories`
--

INSERT INTO `chatter_categories` (`id`, `parent_id`, `order`, `name`, `color`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Introductions', '#3498DB', 'introductions', NULL, NULL),
(2, NULL, 2, 'General', '#2ECC71', 'general', NULL, NULL),
(3, NULL, 3, 'Feedback', '#9B59B6', 'feedback', NULL, NULL),
(4, NULL, 4, 'Random', '#E67E22', 'random', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chatter_discussion`
--

CREATE TABLE `chatter_discussion` (
  `id` int(10) UNSIGNED NOT NULL,
  `chatter_category_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sticky` tinyint(1) NOT NULL DEFAULT 0,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `answered` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#232629'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatter_discussion`
--

INSERT INTO `chatter_discussion` (`id`, `chatter_category_id`, `title`, `user_id`, `sticky`, `views`, `answered`, `created_at`, `updated_at`, `slug`, `color`) VALUES
(3, 1, 'Hello Everyone, This is my Introduction', 1, 0, 0, 0, '2016-08-18 07:27:56', '2016-08-18 07:27:56', 'hello-everyone-this-is-my-introduction', '#239900'),
(6, 2, 'Login Information for Chatter', 1, 0, 0, 0, '2016-08-18 07:39:36', '2016-08-18 07:39:36', 'login-information-for-chatter', '#1a1067'),
(7, 3, 'Leaving Feedback', 1, 0, 0, 0, '2016-08-18 07:42:29', '2016-08-18 07:42:29', 'leaving-feedback', '#8e1869'),
(8, 4, 'Just a random post', 1, 0, 0, 0, '2016-08-18 07:46:38', '2016-08-18 07:46:38', 'just-a-random-post', ''),
(9, 2, 'Welcome to the Chatter Laravel Forum Package', 1, 0, 0, 0, '2016-08-18 07:59:37', '2016-08-18 07:59:37', 'welcome-to-the-chatter-laravel-forum-package', '');

-- --------------------------------------------------------

--
-- Table structure for table `chatter_post`
--

CREATE TABLE `chatter_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `chatter_discussion_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chatter_post`
--

INSERT INTO `chatter_post` (`id`, `chatter_discussion_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '<p>My name is Tony and I\'m a developer at <a href=\"https://devdojo.com\" target=\"_blank\">https://devdojo.com</a> and I also work with an awesome company in PB called The Control Group: <a href=\"http://www.thecontrolgroup.com\" target=\"_blank\">http://www.thecontrolgroup.com</a></p>\n        <p>You can check me out on twitter at <a href=\"http://www.twitter.com/tnylea\" target=\"_blank\">http://www.twitter.com/tnylea</a></p>\n        <p>or you can subscribe to me on YouTube at <a href=\"http://www.youtube.com/devdojo\" target=\"_blank\">http://www.youtube.com/devdojo</a></p>', '2016-08-18 07:27:56', '2016-08-18 07:27:56'),
(5, 6, 1, '<p>Hey!</p>\n        <p>Thanks again for checking out chatter. If you want to login with the default user you can login with the following credentials:</p>\n        <p><strong>email address</strong>: tony@hello.com</p>\n        <p><strong>password</strong>: password</p>\n        <p>You\'ll probably want to delete this user, but if for some reason you want to keep it... Go ahead :)</p>', '2016-08-18 07:39:36', '2016-08-18 07:39:36'),
(6, 7, 1, '<p>If you would like to leave some feedback or have any issues be sure to visit the github page here: <a href=\"https://github.com/thedevdojo/chatter\" target=\"_blank\">https://github.com/thedevdojo/chatter</a>&nbsp;and I\'m sure I can help out.</p>\n        <p>Let\'s make this package the go to Laravel Forum package. Feel free to contribute and share your ideas :)</p>', '2016-08-18 07:42:29', '2016-08-18 07:42:29'),
(7, 8, 1, '<p>This is just a random post to show you some of the formatting that you can do in the WYSIWYG editor. You can make your text <strong>bold</strong>, <em>italic</em>, or <span style=\"text-decoration: underline;\">underlined</span>.</p>\n        <p style=\"text-align: center;\">Additionally, you can center align text.</p>\n        <p style=\"text-align: right;\">You can align the text to the right!</p>\n        <p>Or by default it will be aligned to the left.</p>\n        <ul>\n        <li>We can also</li>\n        <li>add a bulleted</li>\n        <li>list</li>\n        </ul>\n        <ol>\n        <li><span style=\"line-height: 1.6;\">or we can</span></li>\n        <li><span style=\"line-height: 1.6;\">add a numbered list</span></li>\n        </ol>\n        <p style=\"padding-left: 30px;\"><span style=\"line-height: 1.6;\">We can choose to indent our text</span></p>\n        <p><span style=\"line-height: 1.6;\">Post links: <a href=\"https://devdojo.com\" target=\"_blank\">https://devdojo.com</a></span></p>\n        <p><span style=\"line-height: 1.6;\">and add images:</span></p>\n        <p><span style=\"line-height: 1.6;\"><img src=\"https://media.giphy.com/media/o0vwzuFwCGAFO/giphy.gif\" alt=\"\" width=\"300\" height=\"300\" /></span></p>', '2016-08-18 07:46:38', '2016-08-18 07:46:38'),
(8, 8, 1, '<p>Haha :) Cats!</p>\n        <p><img src=\"https://media.giphy.com/media/5Vy3WpDbXXMze/giphy.gif\" alt=\"\" width=\"250\" height=\"141\" /></p>\n        <p><img src=\"https://media.giphy.com/media/XNdoIMwndQfqE/200.gif\" alt=\"\" width=\"200\" height=\"200\" /></p>', '2016-08-18 07:55:42', '2016-08-18 08:45:13'),
(9, 9, 1, '<p>Hey There!</p>\n        <p>My name is Tony and I\'m the creator of this package that you\'ve just installed. Thanks for checking out it out and if you have any questions or want to contribute be sure to checkout the repo here: <a href=\"https://github.com/thedevdojo/chatter\" target=\"_blank\">https://github.com/thedevdojo/chatter</a></p>\n        <p>Happy programming!</p>', '2016-08-18 07:59:37', '2016-08-18 07:59:37'),
(10, 9, 1, '<p>Hell yeah Bro Sauce!</p>\n        <p><img src=\"https://media.giphy.com/media/j5QcmXoFWl4Q0/giphy.gif\" alt=\"\" width=\"366\" height=\"229\" /></p>', '2016-08-18 08:01:25', '2016-08-18 08:01:25');

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

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `parent_id`, `body`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, 'comment by my self', 51, 'App\\Lesson', '2021-11-03 13:26:05', '2021-11-03 13:26:05'),
(2, 2, 1, 'oh yeah!', 51, 'App\\Lesson', '2021-11-03 13:28:17', '2021-11-03 13:28:17');

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
(1, 'Marcelle Dach', 'marcelle-dach', 'Sed sit autem quia et et perspiciatis. Temporibus eveniet quam sunt quaerat eum ipsam explicabo. Consequatur alias et expedita fugiat optio expedita. Ut praesentium repudiandae fugit adipisci.', '31.23', NULL, NULL, 1, '2021-08-20 08:41:31', '2021-08-23 21:48:10', '2021-08-23 21:48:10'),
(2, 'Miss Jacquelyn Considine DVM', 'miss-jacquelyn-considine-dvm', 'Mollitia quia qui unde veniam delectus quos inventore. Corporis iure doloribus ipsa aliquid. Ut quasi eveniet est sunt ea et similique nobis. Nemo dolor omnis illum.', '143.95', NULL, NULL, 1, '2021-08-20 08:41:31', '2021-08-21 05:48:29', '2021-08-21 05:48:29'),
(3, 'Ms. Amanda Waelchi III', 'ms-amanda-waelchi-iii', 'Reiciendis saepe voluptas velit reiciendis minima. Aperiam sint dignissimos quibusdam aut. Sint cum reiciendis sint soluta consequatur qui.', '21.03', NULL, NULL, 1, '2021-08-20 08:41:31', '2021-08-21 05:48:30', '2021-08-21 05:48:30'),
(4, 'Evie Homenick', 'evie-homenick', 'Velit qui asperiores eum optio fuga delectus odio. Vero explicabo totam vero quibusdam nostrum et. Et et ut a occaecati. Nam quo numquam ratione consequatur fugiat provident velit.', '157.01', NULL, NULL, 1, '2021-08-20 08:41:32', '2021-08-21 05:48:30', '2021-08-21 05:48:30'),
(5, 'Mrs. Della Upton I', 'mrs-della-upton-i', 'Hic ut voluptas numquam itaque ducimus. Eos exercitationem ea reiciendis soluta consequuntur provident. Consequatur et sunt quod. Et voluptatibus ut ex quo dicta fugiat voluptas.', '93.78', NULL, NULL, 1, '2021-08-20 08:41:32', '2021-08-21 05:48:30', '2021-08-21 05:48:30'),
(6, 'Metode Penelitian', 'metode-penelitian', 'Metode penelitian adalah langkah-langkah yang diambil oleh peneliti untuk mengumpulkan data atau informasi untuk diolah dan dianalisis secara ilmiah.', '0.00', '1629550349-0d200e32af21293a373df6fac698df77.jpg', '2021-08-20', 1, '2021-08-21 05:52:30', '2021-08-21 05:52:30', NULL),
(7, 'RPL', 'rpl', 'Rekayasa Perangkat Lunak', NULL, '1629551161-154295498_489671358712666_4517821756155822866_n.jpg', '2021-08-21', 1, '2021-08-21 06:06:02', '2021-08-23 05:28:44', NULL),
(8, 'Bahasa Indonesia', 'bahasa-indonesia', 'Bahasa Indonesia adalah bahasa resmi Republik Indonesia dan bahasa persatuan bangsa Indonesia.[8][9] Bahasa Indonesia adalah salah satu dari banyak varietas bahasa Melayu.[10] Bahasa Indonesia diresmikan penggunaannya setelah Proklamasi Kemerdekaan Indonesia, tepatnya sehari sesudahnya, bersamaan dengan mulai berlakunya konstitusi. Di Timor Leste, bahasa Indonesia berstatus sebagai bahasa kerja.', NULL, '1629779143-EJqiqHeVAAAvbiS.jpg', '2021-08-25', 1, '2021-08-23 21:25:43', '2021-08-23 21:25:43', NULL),
(9, 'Matematika', 'mtk', 'Matematika (dari bahasa Yunani: μαθημα - mathēma, \"pengetahuan, pemikiran, pembelajaran\") atau sebelumnya disebut ilmu hisab adalah ilmu yang mempelajari besaran, struktur, ruang, dan perubahan. Para matematikawan merangkai dan menggunakan berbagai pola,[2][3] kemudian menggunakannya untuk merumuskan konjektur baru, dan membangun kebenaran melalui metode deduksi yang ketat diturunkan dari aksioma-aksioma dan definisi-definisi yang bersesuaian.[4]', NULL, '1629782177-DC-XRiVVwAAzs3x.jpg', '2021-08-24', 1, '2021-08-23 22:16:17', '2021-08-23 22:16:17', NULL),
(10, 'Mobile Programming', 'mobile-programming', 'Matematika (dari bahasa Yunani: μαθημα - mathēma, \"pengetahuan, pemikiran, pembelajaran\") atau sebelumnya disebut ilmu hisab adalah ilmu yang mempelajari besaran, struktur, ruang, dan perubahan. Para matematikawan merangkai dan menggunakan berbagai pola,[2][3] kemudian menggunakannya untuk merumuskan konjektur baru, dan membangun kebenaran melalui metode deduksi yang ketat diturunkan dari aksioma-aksioma dan definisi-definisi yang bersesuaian.[4]', NULL, '1629782631-unnamed (5).jpg', '2021-08-24', 1, '2021-08-23 22:23:51', '2021-08-23 22:24:25', NULL);

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
(6, 2, 0, '2021-08-21 13:18:23', '2021-08-21 13:18:23'),
(9, 5, 0, '2021-08-23 22:16:19', '2021-08-23 22:16:19'),
(10, 2, 0, '2021-08-23 22:23:51', '2021-08-23 22:23:51'),
(10, 4, 0, '2021-08-23 22:23:51', '2021-08-23 22:23:51'),
(6, 4, 0, '2021-11-02 09:33:11', '2021-11-02 09:33:11');

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
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 3),
(7, 3),
(8, 3),
(9, 5),
(10, 5);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `title`, `slug`, `lesson_image`, `short_text`, `full_text`, `position`, `free_lesson`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Dolorum ex odio voluptate.', 'dolorum-ex-odio-voluptate', NULL, 'Doloremque ex ullam nulla aliquid consequatur eum nobis architecto. Nobis temporibus nesciunt mollitia consequatur autem non et ratione. Consequatur maiores voluptatum voluptatem dolorem saepe animi et.', 'Nisi sunt omnis perspiciatis tenetur vitae molestias qui. Quos veritatis eius a. Et qui quos recusandae sint consequatur architecto eum laboriosam. Sequi et excepturi aut ad ut qui vel.\nDolorem dolor ad perferendis est voluptas reprehenderit incidunt. Itaque quisquam assumenda distinctio et. Quisquam aut et quod assumenda laudantium excepturi voluptatibus. Ut voluptas est illo est excepturi.\nNeque nobis consectetur alias voluptas tempora. Itaque consequuntur est ipsa provident sit enim. Occaecati necessitatibus sapiente eum eum aut. Nam at quod alias laborum non. Sit praesentium quo aut.\nEnim magni laboriosam fugit ut labore id magnam. Sed id veritatis eos architecto accusantium molestiae consequatur.\nCupiditate consequuntur cum eos. Et dolore architecto tenetur velit magni sunt nulla. Tempore quis et sunt expedita quia velit voluptate. Iste repudiandae eaque quia fugiat rerum cupiditate. Est nulla numquam debitis excepturi praesentium autem.', 9, 0, 1, '2021-08-20 08:41:32', '2021-08-20 08:41:35', NULL),
(2, 1, 'Cumque sunt eius sint dolores non.', 'cumque-sunt-eius-sint-dolores-non', NULL, 'Quia magnam est corrupti doloribus. Earum iusto perspiciatis possimus corrupti mollitia quae. Dolorem nulla voluptatem quo voluptatem pariatur voluptatem molestiae. Eos quo quae omnis veritatis optio maiores rerum. Error et qui aliquid at.', 'Inventore voluptatum unde et cupiditate. Aut placeat aliquam quis ducimus. A sunt sit iusto quo. Quidem commodi in alias quia.\nMinus modi voluptas vitae nemo. Voluptatibus sit eum exercitationem sunt recusandae quaerat sit. Quasi nisi aut doloribus. Et nobis nobis veritatis odit et non.\nIpsa eligendi doloremque sit repudiandae occaecati error nihil totam. Et accusantium molestiae sed incidunt provident reiciendis qui. Culpa accusamus ducimus deleniti sunt fuga.\nOdit ea laboriosam et modi. Totam fugit neque dolorem eum ab. Reiciendis quia odio et nemo aperiam modi.\nPossimus dolorem debitis consequatur quia sit. Illo et animi amet minus. Vel vel quis omnis qui est excepturi deleniti ut. Pariatur quae illo et commodi voluptatem.\nTempore in ab aut voluptates maiores. Illo quos est et praesentium aut. Modi et doloremque in voluptates esse reiciendis.\nOptio est non reiciendis. Doloremque dolorem architecto nemo quas ipsam. Atque repellat eveniet dolores qui repellat earum eaque cupiditate.', 7, 0, 1, '2021-08-20 08:41:32', '2021-08-20 08:41:35', NULL),
(3, 1, 'Id harum officiis quod fugit dignissimos.', 'id-harum-officiis-quod-fugit-dignissimos', NULL, 'Sequi eaque et velit sed et nulla nostrum. Consequatur velit eveniet in nisi. Ipsum ut debitis commodi sit praesentium.', 'Sit illum fuga ut est. Velit est animi quisquam sed explicabo assumenda nesciunt. Sint at exercitationem sed aperiam deleniti tempora voluptatem. Autem cumque rerum eum porro molestias soluta.\nAutem recusandae quia omnis quod qui rem. Temporibus temporibus ea harum quibusdam culpa deserunt sit. Sint non esse laboriosam quos itaque consequatur et.\nAb aperiam dolore odio sed non. Recusandae et quis unde labore voluptas cum. Aliquid molestiae quidem est vel illum vel repellendus tenetur. Similique sit modi nulla ut. Voluptas est sed id sequi quo ut sequi.\nSit placeat illo at eius iure. Ipsa nostrum expedita id repellat. Deleniti inventore sed optio numquam. Incidunt vitae ipsum labore voluptas.\nRecusandae recusandae mollitia quia quia ut. Ducimus velit veritatis aliquam odio minus. Aut qui sint id quo est veniam ducimus cumque.\nSed dolor sunt earum sunt. Non rem dicta libero sit officia rem. Qui atque est dicta occaecati.', 4, 1, 0, '2021-08-20 08:41:32', '2021-08-20 08:41:35', NULL),
(4, 1, 'Aut inventore deleniti voluptatum repellendus.', 'aut-inventore-deleniti-voluptatum-repellendus', NULL, 'Optio possimus tempora ab rerum. Quia qui magnam et modi animi a. Deleniti aspernatur aut possimus voluptas. Mollitia facere repellendus amet harum non quisquam.', 'Dolore enim repellat repellat harum. Saepe suscipit et id. Cumque dolores dolores corporis quidem officiis.\nQuia debitis qui quos ut est. Non nulla tempora nostrum sequi. Adipisci hic laudantium consequuntur rerum. Nobis placeat deleniti quibusdam aut enim quod deserunt doloribus.\nExercitationem vitae voluptas reiciendis quibusdam recusandae animi eos. Dolor voluptas vero id occaecati culpa ut maiores est. Qui exercitationem ea id nam libero.\nIure in facere vitae deleniti quaerat est. Praesentium accusantium voluptates quia quas hic. Eos dolores ut quam iste iusto nesciunt impedit accusamus. Minima rerum quaerat corporis sapiente non quisquam.\nSit ipsa quidem fugiat itaque. Ea doloribus adipisci dolores culpa. Officiis possimus quis vel velit natus ipsam alias.', 5, 0, 0, '2021-08-20 08:41:32', '2021-08-20 08:41:35', NULL),
(5, 1, 'Adipisci architecto autem voluptatem autem.', 'adipisci-architecto-autem-voluptatem-autem', NULL, 'Aperiam unde adipisci placeat iste. Labore iste odit similique sed molestias.', 'Quasi vero et quos consequatur accusamus harum est. Et rerum voluptas quod vel libero sit.\nIste suscipit assumenda dolor eligendi ut. Nemo voluptatem et vitae quasi reiciendis. Labore inventore voluptatem laborum nam debitis ullam at. Ut debitis labore fuga veritatis eum enim natus. Minus atque veniam doloremque consequatur recusandae.\nAssumenda dolores commodi quo quas. Tempora sint iure consectetur ea sapiente.\nReiciendis accusamus officia voluptatum inventore cum. Ea aspernatur facere et soluta aut. Reprehenderit optio aut dolor sit. Expedita quam deleniti eligendi minus nobis quo. Dolorem et fugit nisi autem sunt molestias voluptas.\nVel consequuntur quis praesentium sit. Velit reprehenderit iusto error soluta accusantium quo. Facilis officia sed omnis nulla hic. Natus quia provident ut eius temporibus.', 3, 0, 1, '2021-08-20 08:41:32', '2021-08-20 08:41:35', NULL),
(6, 1, 'Molestias et molestiae error qui.', 'molestias-et-molestiae-error-qui', NULL, 'Tempora ex voluptatem molestiae nesciunt. Provident tempora minus et. Ut repudiandae ipsam et cupiditate ut est. Quidem architecto ut dolorum repellendus.', 'Aut repellat dolor vitae non. Placeat et quo et blanditiis temporibus. Vel dignissimos qui dolores in alias eaque autem. Qui quas nam voluptatum ipsam enim at debitis.\nExpedita accusantium quo earum voluptates explicabo. A vel quia velit neque aut eum ipsa. Facere voluptate vel omnis eum quas quaerat. Vitae totam dolores alias nam enim voluptatem aut.\nNeque a quod ea. Cum repudiandae vero ratione sed. Rem ut et asperiores labore error expedita. Officiis culpa rerum a.\nMolestiae aliquam pariatur ab quos accusamus dolores enim deleniti. Sint dicta mollitia repellendus fugit ad. Ut fugit dolores aut. Quam quo minus sapiente fuga aliquid beatae.\nDolores sapiente ipsum architecto quasi in. Cupiditate nulla explicabo ad ab veritatis velit eos corrupti.\nAccusantium quasi id voluptas itaque incidunt. Odit sapiente ullam velit id tempora laudantium aut. Iste velit cumque ipsum qui illo laborum repellat. Praesentium ut distinctio eius qui eaque a vel.', 6, 1, 0, '2021-08-20 08:41:32', '2021-08-20 08:41:35', NULL),
(7, 1, 'Vel dolorum qui assumenda ab.', 'vel-dolorum-qui-assumenda-ab', NULL, 'Et adipisci voluptatibus vero. Ducimus aut maiores dolor aut consectetur eos quo. Ex ab illum ut dolorem.', 'Quod mollitia dolorum atque est. Voluptatem quae perspiciatis in quidem at distinctio dolore. Sit qui est excepturi dignissimos quo. Vel ab est iure non cum.\nQui eius repudiandae repellendus quis. Adipisci repellendus expedita inventore delectus incidunt. Dolore eum voluptatem qui quis.\nQuam labore quibusdam nulla quia. Velit provident commodi sequi natus neque quia quod. Repellendus placeat enim et. Ad illum dolorum dolorem nihil sint. Esse beatae quasi voluptatem voluptate reprehenderit aspernatur repellat.\nAliquam aut et cum quidem minima assumenda libero. Aspernatur expedita occaecati praesentium id.\nAccusantium ullam assumenda dolores numquam. Tenetur eum voluptatem officiis deleniti. In voluptatum aut quis vitae.\nId et impedit sequi. Exercitationem corporis labore eligendi et. Accusantium nesciunt et adipisci aut culpa neque.', 4, 0, 1, '2021-08-20 08:41:32', '2021-08-20 08:41:35', NULL),
(8, 1, 'Illo adipisci itaque sunt aut.', 'illo-adipisci-itaque-sunt-aut', NULL, 'Est quia alias sint aut ex sed totam. Voluptate ab sit rem nostrum ea. Quos dicta sed vero quia dignissimos eligendi et. Aut voluptas quam sit et.', 'Voluptas omnis omnis eaque est. Doloribus placeat sapiente rerum quam quasi non. Totam iure autem nobis labore et ad enim molestiae.\nIusto ipsa repellendus animi sit et quia. Nulla eius natus laboriosam ex. Deleniti magnam ut necessitatibus sed. Aut aut quo eum ut molestiae dignissimos eius.\nSed corrupti pariatur porro recusandae fuga quibusdam nihil inventore. Similique laudantium quibusdam consequatur vel quo dolore et. Dolor reprehenderit et ut optio qui. Molestiae et ea dolor quo. Dolor sint esse officia laboriosam.\nEt autem esse at. Officia aspernatur cupiditate sed dolores ab non dolores. Explicabo ea magni ex dignissimos natus nisi.\nDelectus magni quam qui odit et vero esse. Sed fuga sed eveniet pariatur et. Minima commodi itaque sapiente velit voluptate voluptatibus deserunt. Ullam reiciendis dolor repellendus assumenda nemo sed sed.\nSoluta voluptatem fuga omnis. Suscipit enim deserunt neque culpa. Et est at dolor quis ipsum.', 1, 0, 1, '2021-08-20 08:41:33', '2021-08-20 08:41:35', NULL),
(9, 1, 'Possimus odit est magnam amet qui soluta.', 'possimus-odit-est-magnam-amet-qui-soluta', NULL, 'Mollitia quis modi facere iusto in vel. Omnis consectetur sint natus consequatur quas vel. Cupiditate minima adipisci nobis saepe et.', 'Illum nisi harum alias veritatis cum. Corporis nesciunt qui officiis saepe et. Laboriosam aspernatur nisi quis qui. Omnis veniam nobis delectus eveniet voluptatem debitis eum.\nVero omnis qui ab sed. Vero modi omnis soluta dolor nihil suscipit. Vel iste cumque magnam iusto qui. Perspiciatis deserunt facere voluptatibus dolor explicabo sed fugiat.\nSunt rerum tempore exercitationem odit. Tempore consequatur cumque aut. Rerum voluptas quisquam ad ullam saepe.\nUt qui quisquam repellat iusto alias ex sed. Porro laboriosam recusandae qui eligendi soluta velit pariatur. Magnam eos necessitatibus enim similique doloribus.\nAtque fuga impedit cumque aut. Eum ratione tenetur velit optio ut voluptas id. Delectus rem et molestias corporis quae natus.\nEveniet consequatur ea repudiandae et debitis enim. Hic voluptates autem ut deserunt aut optio velit. Voluptates nihil enim eius mollitia voluptas.', 9, 0, 1, '2021-08-20 08:41:33', '2021-08-20 08:41:35', NULL),
(10, 1, 'Iure doloremque necessitatibus unde.', 'iure-doloremque-necessitatibus-unde', NULL, 'Dolorem enim perferendis enim neque adipisci. Perspiciatis maxime ducimus velit suscipit impedit. Dolore perspiciatis ducimus eius nihil natus repellat sapiente.', 'Nesciunt accusantium nihil enim impedit sequi ipsa eum. Et illo harum exercitationem eum voluptatem minima laudantium inventore. Pariatur nostrum cum qui et commodi molestiae.\nEarum iure laboriosam laboriosam vel alias. Aliquam alias voluptas assumenda ut. Explicabo aut impedit voluptas nostrum. Facilis omnis aut consequuntur nesciunt. Saepe doloribus eum delectus et consequuntur.\nEos qui in distinctio delectus fugit esse rerum nam. Sapiente consectetur qui reiciendis debitis minus commodi. Eos voluptas recusandae earum ab autem. Delectus doloremque beatae a quia ipsa.\nDignissimos aut nulla modi. Consequatur vero laboriosam quis voluptatem deserunt neque vel. Aut rerum perspiciatis eum ipsum exercitationem eveniet.\nAlias eligendi saepe consequatur id excepturi ut. Ab qui eos illo porro quisquam. Cupiditate debitis aut amet dignissimos.\nSapiente nesciunt occaecati dolores ut. Est aliquid quod deleniti optio ratione. Tempore harum eos ut. Qui sed modi corrupti perferendis et.', 8, 0, 0, '2021-08-20 08:41:33', '2021-08-20 08:41:35', NULL),
(11, 2, 'Deserunt qui omnis fugit rerum rerum commodi.', 'deserunt-qui-omnis-fugit-rerum-rerum-commodi', NULL, 'Consectetur fugiat vel culpa voluptatum velit sit. Et doloremque non quis omnis id. Vero maxime enim quisquam aut rem ipsum omnis. Non laudantium iste recusandae nemo nisi.', 'Exercitationem sit non laudantium temporibus autem sunt. Modi veniam ut sequi laborum. Aut perspiciatis quia id quia totam. Et quos voluptatem voluptatem vero unde tenetur tenetur autem.\nMaxime dolor quam eum ut at quidem voluptatem. Cupiditate molestiae illo molestiae ipsum. Deserunt consequatur provident non non et aut. Deserunt reiciendis qui officiis.\nError quo quia eveniet alias dolor et. Perferendis laudantium aut accusamus qui tenetur ut magnam. Tenetur omnis non quaerat est aut.\nPlaceat qui hic debitis voluptatem. Fuga adipisci non iure labore. Dolores consequatur ut voluptas quasi voluptate exercitationem doloremque. Sapiente adipisci maiores unde atque.\nNeque rem quibusdam sed laboriosam veniam nihil ipsam. Sint sequi ad ut. Vel autem esse voluptas magnam alias est ex.\nEa et provident quibusdam laudantium asperiores. Blanditiis sed cumque nemo aut culpa voluptatibus. Nostrum ad esse perferendis accusamus vel placeat. Et aperiam facilis quos exercitationem.', 6, 1, 1, '2021-08-20 08:41:36', '2021-08-20 08:41:37', NULL),
(12, 2, 'Dicta alias odit quia molestiae labore.', 'dicta-alias-odit-quia-molestiae-labore', NULL, 'Omnis earum qui tenetur illum. Dolorem et sunt ut et quo est rerum. Vel iure tenetur doloribus voluptatum et quibusdam.', 'Dolorem velit repellendus et aut et numquam amet. Possimus maiores est rerum id. Ut soluta veritatis consequatur dolores harum. Explicabo officia libero quia consectetur.\nVoluptatibus facilis accusantium nostrum nostrum perferendis nostrum enim perspiciatis. Labore possimus cum quia at. Nisi laudantium quas perferendis et corporis amet vel et.\nExcepturi facere unde dolores iste. Placeat est animi suscipit perferendis. Vitae ipsam unde amet sint ut aut ut. Porro nobis eum dolores.\nOmnis ad non atque aut omnis impedit explicabo. Eum aut non expedita reiciendis corrupti. Qui non sit consequatur quia molestias.\nQuia sed optio est corrupti voluptas voluptate. Neque mollitia enim rerum sequi mollitia non asperiores.\nEst officia ratione eaque odit asperiores aspernatur facere. Atque omnis fugiat enim fugiat. Omnis ex suscipit sequi eos. Ex ut ut exercitationem et non a.', 2, 1, 1, '2021-08-20 08:41:36', '2021-08-20 08:41:37', NULL),
(13, 2, 'Facilis excepturi illo veritatis odio adipisci.', 'facilis-excepturi-illo-veritatis-odio-adipisci', NULL, 'Velit voluptate aperiam molestias voluptatibus. Natus voluptatum rem et rerum non. Suscipit officiis aut aut ad voluptatem commodi blanditiis ex. Occaecati vero omnis iusto consectetur laborum.', 'Nihil cum officiis corporis illo quia ipsam eos. Quaerat iste distinctio et facere qui porro incidunt maiores. Quia et minus dolorem eius atque voluptatem.\nSit voluptatem voluptatem et architecto sed ipsum. Quam dolorem sequi ullam facilis sed. Soluta et dolor delectus aut unde rerum facilis. Ipsum earum iusto temporibus ad laboriosam similique soluta.\nDelectus qui sunt laudantium. Omnis ipsum reiciendis possimus exercitationem aperiam consequatur voluptas. Sunt id voluptas dolorem ad optio corrupti molestias.\nDolor quas quasi ratione ducimus. Mollitia quo amet amet quidem qui laborum. Ipsam odit expedita et qui ut eum temporibus.\nOdit cumque eaque exercitationem omnis ad. Voluptate nostrum doloremque et eveniet eum nisi. Non animi eum voluptatem vel et quo aut.\nOdit mollitia ut officiis minus ea. Consequatur perferendis illum et. Autem sit et a in laboriosam dignissimos ab distinctio. Minima rerum maiores mollitia quisquam. Et ullam sit ullam inventore enim rem.', 2, 0, 0, '2021-08-20 08:41:36', '2021-08-20 08:41:37', NULL),
(14, 2, 'In ut quo sapiente.', 'in-ut-quo-sapiente', NULL, 'Cumque amet nostrum aut reiciendis. Expedita vitae totam in. Qui veniam qui porro magni perspiciatis dicta.', 'Provident qui et cupiditate voluptas sint quo. Nihil maxime alias mollitia vitae ut.\nVoluptatibus et pariatur illum. Non odio nemo perferendis et quia voluptate et. Rerum excepturi non excepturi nam similique ut. Dolor consequatur est velit aut.\nLaudantium voluptatem sapiente dolores explicabo. Repudiandae officiis aperiam nisi omnis. Qui possimus non voluptates vel possimus nihil sint. Sequi sunt repudiandae sit quis debitis ut.\nVoluptas explicabo dolorem veniam dignissimos doloribus. Officia debitis voluptate non vel possimus culpa sit. Qui quisquam ipsa excepturi voluptates quasi necessitatibus molestias cum.\nIncidunt impedit aliquid temporibus iusto. Dolorum est quas qui. Doloribus temporibus repellat nesciunt molestiae.\nVelit quia distinctio consequuntur sit sunt et. Maiores dolor enim molestias atque excepturi. Sed voluptatem fugiat libero ut odio deleniti esse. Voluptatum adipisci dolore exercitationem corporis.', 6, 0, 0, '2021-08-20 08:41:36', '2021-08-20 08:41:37', NULL),
(15, 2, 'Veritatis eius ullam atque ea suscipit ut.', 'veritatis-eius-ullam-atque-ea-suscipit-ut', NULL, 'Voluptatem quam facilis maiores incidunt est sint perspiciatis. Aliquid assumenda similique placeat minus ut omnis voluptas. Qui ipsam voluptate quia. Ducimus reprehenderit neque voluptas excepturi.', 'Cupiditate adipisci et repellendus totam molestias. Rerum voluptatem quasi amet eaque ab eveniet iure.\nAutem laudantium non eos totam veniam. Distinctio autem facere est distinctio alias explicabo assumenda. Enim similique eum amet sunt. Praesentium sint quam ex cumque. Aliquam hic placeat ut.\nUt ad placeat adipisci voluptatem et aut et. In quibusdam praesentium molestias ipsam quia voluptatum consectetur. Fuga occaecati laboriosam in. Enim eum eligendi beatae et saepe minima vero.\nEt ipsam incidunt incidunt repudiandae. Perferendis doloremque itaque id laboriosam vel odio placeat.\nUt et et accusantium ut qui doloribus. Nesciunt eos aperiam omnis aut eos. Voluptate quas amet quo sed excepturi et. Dicta neque atque ab aut vel quis quasi.\nEst corrupti minima qui fuga rerum delectus amet. Id alias ipsa dolor placeat. Et et doloribus quo architecto. Suscipit omnis alias cupiditate expedita veniam laborum aperiam.', 1, 1, 0, '2021-08-20 08:41:36', '2021-08-20 08:41:38', NULL),
(16, 2, 'Doloremque sunt qui neque eius magnam ipsa.', 'doloremque-sunt-qui-neque-eius-magnam-ipsa', NULL, 'Voluptatibus et est voluptate suscipit. Mollitia itaque consequuntur quos natus quisquam. Consequatur sint ullam et labore id.', 'Quo temporibus et excepturi. Reprehenderit eaque praesentium quis quasi.\nNemo impedit atque dolores quasi dolor et. Animi exercitationem error eius ea ut vel sint. Quis recusandae non nemo voluptatem saepe eum. Nostrum neque aut omnis eum asperiores rerum. Qui velit tenetur sint dicta ea.\nQuibusdam et provident voluptatem nisi. Ut modi molestiae autem deleniti ipsam. Est dolore quaerat facere enim. Dolorem magnam culpa modi tempore praesentium ut et.\nTenetur esse nobis qui minima sequi eum eligendi sed. Deleniti excepturi dolore qui et quo sit fuga. Ea illo possimus omnis autem.\nVeritatis odio soluta voluptas quia voluptatibus rerum. Quia aspernatur quia fugiat consequatur. Quia qui tempore qui dolores. Eum eum est corporis ipsa corporis.\nNostrum molestiae adipisci harum earum dolorem consequatur veritatis. Eligendi ratione dolorem est. Unde autem facilis qui aliquam.', 5, 1, 1, '2021-08-20 08:41:36', '2021-08-20 08:41:38', NULL),
(17, 2, 'Velit officia atque magnam possimus.', 'velit-officia-atque-magnam-possimus', NULL, 'Recusandae nesciunt incidunt voluptatum commodi. Voluptas inventore et a et aliquid quos in quo.', 'In soluta est facilis est id atque. Temporibus voluptatem magnam natus quo atque illo. Veniam et tenetur ut quam.\nEst dolorum quas cumque necessitatibus sit eligendi. Voluptas est et natus at soluta. In nam aliquid ipsum dignissimos. Eum dolores sed quas quos et quaerat.\nLaudantium beatae enim et sit sed. Sit dicta voluptatem ut rerum ipsum occaecati rerum. Quia laboriosam possimus accusamus ratione.\nQui nihil beatae quaerat omnis. Sunt ullam eius illum ut et. Dolor sunt ut dolores tenetur fugiat quos vel cumque.\nSint nam unde debitis eius sit. Deserunt necessitatibus odit unde quod. Sapiente eum iusto quis totam sit dolores necessitatibus consequatur.\nNesciunt non harum rem. Accusantium facere eos quasi mollitia. Facere omnis aperiam qui est cupiditate omnis tenetur facere.\nEt quaerat iusto ea totam. Quisquam sunt autem id quam quia. Soluta eos omnis in earum explicabo autem. Quod debitis maxime ex fugit sequi veniam aut.', 10, 1, 1, '2021-08-20 08:41:36', '2021-08-20 08:41:38', NULL),
(18, 2, 'Quia iusto non reprehenderit illum.', 'quia-iusto-non-reprehenderit-illum', NULL, 'Eum eos molestias praesentium recusandae. Dolor praesentium quis ut. Explicabo animi quasi minus dicta animi numquam.', 'Animi in consequatur qui aut reiciendis. Voluptatibus unde quibusdam iste corporis est nam rerum. Suscipit enim deleniti cumque.\nEa non hic nihil reprehenderit voluptas blanditiis. Debitis soluta consectetur inventore ducimus velit veniam voluptate. Iusto vitae earum ullam a ex.\nAmet vero modi voluptas magni a est ab tempora. Voluptates aut quaerat vel omnis sint rem voluptas. Provident qui magni id odit. Quasi ut dignissimos non odio nostrum dicta.\nQuia qui quis sed odit. Placeat distinctio nobis consectetur illo. Aut est alias magnam ut rerum illum aperiam. Eaque molestias accusamus sint optio exercitationem optio quia.\nQuas animi nisi iure in. Inventore sed accusantium fugit non quae ipsam at. Beatae aliquam ea velit itaque ut quod cumque.\nEst facilis veritatis ut quod. Dolores rerum itaque omnis. Tempore esse error eum cum.', 5, 0, 0, '2021-08-20 08:41:36', '2021-08-20 08:41:38', NULL),
(19, 2, 'Beatae nisi voluptatum dolorem saepe molestias.', 'beatae-nisi-voluptatum-dolorem-saepe-molestias', NULL, 'Et cumque sit voluptatum. Quasi provident dolorum sunt consequatur vitae pariatur ullam. Aut est in porro aperiam pariatur deserunt omnis.', 'Consequuntur beatae quia ea blanditiis rem. Vero magnam ex qui qui exercitationem. Laudantium aspernatur harum rerum nobis consequatur nulla.\nId aut omnis et sed cupiditate facilis. Laboriosam veniam eligendi porro magni ut rem.\nIn animi velit et sunt. Iste sed ex numquam autem deleniti. Suscipit error porro et non nobis. Unde reprehenderit esse quae inventore cumque quas voluptatibus et.\nVitae et fuga tenetur. Aspernatur praesentium nulla magnam. Soluta aspernatur ut aut nihil eos. Nostrum natus rerum dolorum ut.\nAnimi dignissimos earum ratione reiciendis. Cumque eligendi cum alias sint et. Eos ut a quis excepturi reprehenderit vero sit. Est aut temporibus vel pariatur blanditiis voluptas.\nQui ut omnis exercitationem vero et nemo. Voluptate ea recusandae neque fugit hic fuga vel voluptatem. Quos nostrum a ut ut nobis soluta voluptatibus.\nIusto hic quas incidunt voluptas fugiat quo. Vel eveniet quae culpa culpa ipsum et repellendus harum.', 2, 0, 1, '2021-08-20 08:41:36', '2021-08-20 08:41:38', NULL),
(20, 2, 'Qui quis ut laudantium officiis temporibus.', 'qui-quis-ut-laudantium-officiis-temporibus', NULL, 'Velit quis quod ab voluptatem debitis. Officia sed dolorem totam suscipit optio. Occaecati quidem hic eos veniam similique laudantium sint. Voluptatibus odit nisi consectetur accusantium exercitationem corrupti eveniet quisquam. Aut voluptatem maiores deleniti ea autem occaecati qui.', 'Tenetur fugiat dicta voluptatum debitis sequi repellat fuga. Laudantium tenetur sapiente accusantium sint aut qui voluptatem.\nSint pariatur similique autem ipsum sit qui. Nihil qui repudiandae accusantium temporibus. Voluptates facilis facere odit dolores optio. Sed vel iure accusamus exercitationem et aspernatur. Nesciunt excepturi odio sint quasi id.\nExercitationem repellendus nihil autem error voluptatem incidunt. Quis facere id hic voluptatem. Vitae neque assumenda ducimus dolorem quo.\nSit consequatur recusandae accusantium nobis. Esse laudantium repudiandae aut reprehenderit pariatur. Quisquam voluptas et molestias dicta ut eaque et.\nMinus voluptatibus eos alias quidem consectetur perferendis est. Similique a nihil id excepturi ipsam ut sed. Iure ut et illum ipsum aspernatur. Facilis est quis qui consequatur ex exercitationem sit et.\nNihil a recusandae unde. Dolorum sed dolorum temporibus architecto aspernatur provident doloremque nesciunt.', 6, 0, 0, '2021-08-20 08:41:36', '2021-08-20 08:41:38', NULL),
(21, 3, 'Iusto ut vitae rerum explicabo.', 'iusto-ut-vitae-rerum-explicabo', NULL, 'Qui dolor magni perspiciatis dolores provident ducimus quibusdam. Et enim qui necessitatibus hic. Tenetur saepe eius veniam nemo dignissimos. Officiis incidunt praesentium aperiam ab quidem nihil voluptatem est. Modi provident qui hic laudantium.', 'In eos asperiores alias voluptas. Eum et veniam et temporibus laboriosam. Et sed consequatur ipsa non.\nQuisquam exercitationem modi natus aperiam illo praesentium perspiciatis. Minima placeat accusantium aut odit reprehenderit explicabo. Ut vero ratione corporis voluptatem totam.\nRerum ratione rerum qui quia. Culpa culpa odio quo veritatis. Et dolore quo voluptatibus molestias.\nQui tenetur nihil numquam molestiae voluptate porro rerum quas. Ipsa aut error sed harum sit natus tenetur. Corrupti nulla dolorem minus rem esse quis. Ea neque consequuntur sit enim debitis accusantium velit.\nQuisquam qui recusandae dolores itaque mollitia. In consequatur voluptatem qui sint. Quo maiores consectetur dolorem et error.\nEius itaque quas dolores veniam quasi magni suscipit in. Nulla et dolor totam eos provident distinctio earum in. Facilis harum sit quidem soluta reprehenderit sit enim.\nIn nobis aut dolor blanditiis numquam. Assumenda modi quam vero ea. Vel est mollitia ut ex.', 4, 0, 0, '2021-08-20 08:41:38', '2021-08-20 08:41:40', NULL),
(22, 3, 'Autem et temporibus non sunt asperiores a eos.', 'autem-et-temporibus-non-sunt-asperiores-a-eos', NULL, 'Vel quidem et repellendus qui deleniti. Quae autem sunt expedita voluptates. Reiciendis dolorem neque sit unde esse ipsum labore quas. Non harum et laudantium exercitationem consectetur adipisci.', 'Perferendis expedita esse incidunt at repudiandae officia. Accusamus fuga officia voluptate. Repellendus molestias quos quidem qui nisi explicabo sed. Perferendis quae explicabo et.\nDoloribus sunt qui ad deleniti quia sit id autem. Et asperiores aperiam non quia. Magnam ducimus rerum voluptatibus cumque.\nUt aperiam ad necessitatibus illum voluptatem. Aut tempora eos aliquid quia animi. Ab quia rerum ipsa rem illum praesentium quibusdam occaecati.\nDolor labore odio facere veniam consequatur. Aut sed quo beatae non qui. Consequatur neque vel quia quibusdam nihil beatae.\nSit suscipit voluptatem nam facere vel consequatur non. Enim atque eum nulla quam qui qui. Qui natus omnis reprehenderit numquam sit.\nTenetur excepturi sit eum earum. Ea aut aperiam neque eaque.\nSit deleniti id est quibusdam voluptatem. Et aliquam aut necessitatibus molestiae aspernatur sit quibusdam. Ducimus eveniet corporis sint earum dolorum ipsam voluptatum. Optio quia et tempora tempore iste est.', 3, 0, 0, '2021-08-20 08:41:39', '2021-08-20 08:41:40', NULL),
(23, 3, 'Rerum quas excepturi totam odio aut.', 'rerum-quas-excepturi-totam-odio-aut', NULL, 'Quibusdam aliquam fugit perferendis minus. Et ut enim nesciunt velit aliquam suscipit consequatur. Sed iure sit animi ipsam deserunt necessitatibus. Similique nostrum culpa laudantium qui. Aut nemo animi vel necessitatibus est id.', 'Consequuntur ipsa pariatur possimus tenetur. Fuga cupiditate rerum enim veritatis doloribus odit. Rerum inventore quas quibusdam necessitatibus.\nVel qui qui at ut sunt numquam. Accusamus eveniet ad asperiores omnis. Debitis quia ea ipsa dolor recusandae beatae ea architecto. Ut illo tempora aperiam rerum quidem quia ullam.\nSit alias et odio delectus ratione quas commodi. Recusandae aliquid ut ad ab eveniet. Eos et non veniam distinctio repudiandae aliquid iste.\nLaborum distinctio molestias repellat sunt praesentium aut aut. Adipisci sunt ut voluptates ut corrupti quia quod voluptas. A aliquam atque minima fuga. Corporis soluta numquam voluptatem velit eligendi tempora modi. Et sed nemo perferendis nesciunt.\nIpsum atque voluptatem esse voluptatum quia sequi aut. Nemo eligendi modi et. Molestias ea voluptatibus provident perspiciatis deserunt. Quo veniam aspernatur sed fugit qui mollitia et. Velit enim cumque laudantium error aliquid dolor iste.', 10, 1, 1, '2021-08-20 08:41:39', '2021-08-20 08:41:40', NULL),
(24, 3, 'Neque dicta expedita totam eaque ut quasi et.', 'neque-dicta-expedita-totam-eaque-ut-quasi-et', NULL, 'Ut animi dolores velit ipsam temporibus molestiae. Reprehenderit exercitationem mollitia id rerum in et. Ab est tenetur error qui sit. Alias sit velit rem sapiente.', 'Dolorem et perspiciatis ratione. Eos ducimus officia numquam omnis. Facilis enim repellat enim.\nVelit aut corporis accusamus et. Qui amet inventore consequatur iusto et architecto consequatur qui. Quasi in dolorum vel architecto.\nLibero et adipisci laborum quia ad veritatis magni. Maiores esse et qui adipisci. Possimus voluptate cum est officiis quo doloremque. Qui qui corrupti id reiciendis.\nEos et nisi natus labore eum aliquam ut. A quibusdam itaque sint dolores quia. Et culpa eos debitis voluptates blanditiis rem.\nMagni cumque provident error magni laudantium. Nemo nesciunt ut eum sit. Sit totam id dolores quidem. Sint quod totam nostrum aut.\nRecusandae beatae ut veniam eos veniam quam. Perspiciatis quam odit quaerat et architecto ipsa. Quas quasi molestiae quae sequi. Culpa eos molestiae quia quo quibusdam corrupti.', 8, 0, 1, '2021-08-20 08:41:39', '2021-08-20 08:41:40', NULL),
(25, 3, 'Autem ducimus dolores accusantium dolor.', 'autem-ducimus-dolores-accusantium-dolor', NULL, 'Nostrum et ut qui. Et sit perspiciatis voluptatem. Perferendis voluptas dolorem sint explicabo ullam ut. Omnis eos aut amet.', 'Dolorem quod recusandae omnis ad. Dolorem suscipit sit odit saepe et. Aspernatur et consequatur dolore iure. Rerum repellat ipsam dolorum in.\nEst qui ut non qui ut perspiciatis. Vel delectus asperiores quia non possimus officiis rerum. Quidem rerum nulla nulla quam suscipit blanditiis sunt voluptatum. Sed nulla sit possimus vel sint nihil.\nMinima dolorum ut aut enim quia consequatur quae temporibus. Consequatur asperiores sed suscipit. Voluptates id architecto sunt suscipit qui odit repellendus.\nIpsam ea et nostrum similique accusamus. Doloremque doloribus velit numquam voluptatem itaque et eos qui. Asperiores nobis qui facilis atque temporibus. Aperiam et magnam ab asperiores delectus enim nihil.\nDoloremque provident voluptatem voluptatem enim. Eum maiores voluptatem consequuntur non accusantium et. Maiores eligendi consequatur dolore maiores dolorum error. Rem voluptas ipsam facere.', 7, 1, 0, '2021-08-20 08:41:39', '2021-08-20 08:41:40', NULL),
(26, 3, 'Ut error recusandae aliquam eos numquam eius.', 'ut-error-recusandae-aliquam-eos-numquam-eius', NULL, 'Unde voluptas sint harum. Nesciunt voluptatem fugiat tempora ut ut eum quia. Blanditiis dolorem officia eos illo debitis.', 'Voluptatem voluptatem cupiditate pariatur dolorem quia. Natus nemo rerum cupiditate vero. Et excepturi provident maxime necessitatibus velit.\nAmet mollitia dolorem nostrum ut est temporibus dolorem. Non est aut et est nihil itaque aut. Enim maiores et nemo rerum. Sapiente dolorem tenetur consequatur rerum ut id consequuntur.\nQuam ducimus voluptatem omnis commodi autem perferendis. Aspernatur hic ut exercitationem perspiciatis similique rem ad. Sed nesciunt eos nulla in quos. Et et iure quos ea. Rerum et deserunt eligendi voluptatem sit ipsa non.\nDolor quae minus enim corporis rem beatae veniam. At nam est consequatur voluptatum et illo dolor et. Odit autem et ad non quis ratione. Dignissimos quis quasi quis at incidunt sunt id.\nQuis maiores sequi vel aut omnis. Molestias non quia quibusdam atque nemo.\nSed consequatur qui tempore totam. Velit dolorem sit odit maiores. Cumque iure consequatur nisi harum omnis dolorem rem.', 3, 1, 0, '2021-08-20 08:41:39', '2021-08-20 08:41:40', NULL),
(27, 3, 'Aut odio dolorem ut ipsum eos autem est.', 'aut-odio-dolorem-ut-ipsum-eos-autem-est', NULL, 'Quis recusandae delectus voluptatem explicabo quibusdam ea voluptates. Fugiat facilis et quia qui ut.', 'Voluptatem et quisquam laboriosam sint. Voluptatibus veniam laborum iste necessitatibus. Labore laudantium consequatur ex labore. Totam ut enim quia aspernatur molestiae officiis molestiae.\nQui tempora voluptatem tempore aut. Fugiat ducimus beatae non explicabo vel eum molestias. Perferendis quibusdam quod tempore. Rem enim accusamus nobis nam ut.\nQuos ea doloribus eaque nesciunt est. Quo laborum optio cumque ut eligendi non cumque aliquid. Qui at recusandae tempore deleniti quas dolores. Molestiae explicabo suscipit numquam minus natus animi optio.\nExcepturi officia saepe repudiandae ut at est dolores. Assumenda dolorum eum assumenda qui cum. Non praesentium est consequatur rerum ipsa vel. Aliquam perferendis dolor est totam et ut dolorem.\nEt sed eum consequatur. Laborum ipsam non est eum necessitatibus aspernatur vel. Ut dolorem voluptatem maiores optio magnam inventore. Ea rerum asperiores nobis ea incidunt eveniet eos.', 6, 1, 1, '2021-08-20 08:41:39', '2021-08-20 08:41:40', NULL),
(28, 3, 'Totam fugit at et aut neque nam velit autem.', 'totam-fugit-at-et-aut-neque-nam-velit-autem', NULL, 'Qui sint nisi sunt sit cupiditate sequi culpa est. Eum totam est veniam minima qui libero itaque. Beatae possimus aut suscipit ut magni. Qui et perspiciatis nostrum saepe nesciunt alias rem est.', 'Molestiae occaecati et cumque et dolor amet officia veritatis. Quasi dolorem laudantium illum. Minus delectus deleniti illum itaque et doloremque. Impedit ea nesciunt ut repellendus pariatur architecto sapiente iure.\nCumque consequuntur non quo veritatis quo enim. Omnis hic quos fuga quo animi corporis dolore aut. Qui laboriosam numquam ut qui nisi praesentium et.\nIure eveniet officiis est nobis occaecati qui numquam. A et tempora quos perspiciatis ea. Numquam exercitationem soluta enim maxime reprehenderit qui.\nDolores aut incidunt itaque numquam sint blanditiis tenetur eum. Inventore inventore officia dolorum vitae molestiae ab minima vel. Ex asperiores qui eaque soluta id.\nFuga iure fuga expedita culpa ut eius. Enim sed velit est non velit hic. Quidem perferendis animi neque qui laborum. Delectus architecto id sapiente voluptatum.\nPraesentium aut ut occaecati sunt dolor. Sit rem odio eum qui quas suscipit. Est voluptas quam omnis laborum saepe.', 7, 1, 0, '2021-08-20 08:41:39', '2021-08-20 08:41:41', NULL),
(29, 3, 'Assumenda ea aut ea omnis enim.', 'assumenda-ea-aut-ea-omnis-enim', NULL, 'Autem voluptatibus ipsam voluptatem aut magni enim. Sunt autem voluptatem aut modi. Possimus est autem et quia quo nisi. Ea exercitationem est voluptatem voluptates quia ipsam a.', 'Iusto ut fuga at placeat nostrum repudiandae ipsam. Esse est non iusto architecto voluptate vel consequuntur consequatur. Consequatur est esse ut. Quae reprehenderit et qui et libero quasi.\nVoluptatem aut consectetur minus eos aliquid perferendis voluptatem. Et quo cupiditate et voluptatem culpa. Id ipsam voluptatem delectus harum ab corrupti tempora.\nItaque maxime molestias doloribus quam et aut quisquam. Qui labore tempore velit doloribus velit dignissimos. Veniam laudantium quod incidunt culpa similique.\nVel incidunt et veniam et. Aut ea ut excepturi fugiat est laboriosam explicabo. Pariatur magnam est alias sint placeat.\nAspernatur provident illum alias. Repellendus culpa et perferendis ex eos expedita minus animi. Quaerat et ad itaque nihil cupiditate.\nNon similique reprehenderit quae amet et. Magnam qui eos occaecati quos vero. Consequuntur impedit nemo impedit ex iste quasi in. Maxime eaque nemo quae. Delectus minima minima nostrum neque.', 10, 1, 0, '2021-08-20 08:41:39', '2021-08-20 08:41:41', NULL),
(30, 3, 'Rerum ipsam sint et facere aspernatur.', 'rerum-ipsam-sint-et-facere-aspernatur', NULL, 'Perspiciatis aut eius ut sed doloremque. Omnis libero quo et sit reiciendis consequatur. Dolorem ipsa numquam nobis quasi dolor. Magnam est sint nesciunt quis est.', 'Rerum dolorum tempore cupiditate maiores. Autem eaque accusamus quibusdam esse omnis. Aut officiis enim omnis voluptatem sequi.\nSed minus in id sapiente id laborum aperiam. Illum ut quibusdam necessitatibus architecto. Tempore sapiente adipisci numquam quisquam occaecati quidem. Voluptates nobis autem tempore illo qui.\nEum dolorem sit rem dignissimos totam. Enim incidunt atque perferendis voluptas est. Eos explicabo deleniti doloribus.\nDolorem explicabo itaque quasi. Porro nihil accusamus maiores omnis. Similique est in excepturi nostrum. Dolorem ea eaque aut eos aliquam et.\nCum id doloremque voluptates quia aperiam a accusamus. Exercitationem impedit similique eius et suscipit. Velit quos nesciunt enim voluptatem quia iure libero. Atque voluptatem vitae voluptates eos.\nNostrum voluptates cum quo aut impedit provident harum. Fuga eligendi minima ullam officia sit et sit. Adipisci eos id dicta tempore dolor. Voluptate debitis et dignissimos eligendi alias.', 7, 1, 1, '2021-08-20 08:41:39', '2021-08-20 08:41:41', NULL),
(31, 4, 'Sit aut deserunt et voluptas cumque nisi.', 'sit-aut-deserunt-et-voluptas-cumque-nisi', NULL, 'Commodi minus dolor ducimus aut voluptatibus omnis. Quos vel repellat velit minus libero suscipit. Et occaecati quod fugiat inventore aut sint. Qui amet quia hic quae dolorem debitis eos ab.', 'Eligendi maiores sapiente qui. Temporibus qui enim architecto laboriosam sed. Sint aspernatur voluptate quas dolor. Aliquid omnis molestiae nobis voluptatem magni vero aut itaque.\nNeque asperiores nobis consequuntur dignissimos nemo nulla. Dolor est ab expedita voluptas asperiores. Qui quis occaecati officiis. Rerum natus autem veritatis fugiat.\nQuos dolorum sunt consequatur repellat ut. At officiis dolorem iste occaecati maiores quos. Quam ad voluptatibus ad non asperiores repellat. Sequi et ea quam molestiae rem blanditiis delectus.\nEt minima aut ut earum ducimus laudantium. Recusandae voluptates totam fuga tempore similique alias eum. Deleniti blanditiis distinctio voluptatem deleniti alias.\nEt deleniti sit pariatur quidem laborum fugit. Aut neque consequatur veniam doloribus adipisci eos placeat. Recusandae odio corporis et et porro alias voluptas sed. Accusamus corrupti natus harum voluptas iusto doloribus.', 2, 1, 0, '2021-08-20 08:41:41', '2021-08-20 08:41:42', NULL),
(32, 4, 'Ut voluptas veritatis nulla dolores.', 'ut-voluptas-veritatis-nulla-dolores', NULL, 'Est beatae atque inventore repellendus. Est provident enim eius in. Itaque dolores eum rerum corporis quidem sed expedita quia. Laboriosam soluta non explicabo autem fuga et. Qui quis molestias voluptatum voluptatum et omnis.', 'Natus optio voluptas occaecati est pariatur minima. Id modi iusto sit fuga ipsam omnis sit. Corporis qui culpa praesentium explicabo molestiae rerum voluptas eos.\nIure eaque quia ut animi id natus. Voluptas est aut similique aspernatur eum minima. Neque enim harum eius nostrum ut. Similique aut dolorem id eligendi cumque.\nEst dolorem suscipit explicabo dolorem sequi. Non aut asperiores quibusdam non velit autem. Nulla animi et quae voluptas. Ipsam omnis consequatur facilis nostrum nemo.\nTotam laborum sed id enim aliquam tempora deserunt. Odit autem enim nobis corrupti et. Nobis voluptas facilis totam ut inventore delectus. Libero iste minima enim a accusantium necessitatibus in nisi.\nAmet omnis assumenda unde at in unde. Minima doloribus qui vitae molestias a. Sequi cum minus eos totam qui rem. Sed at voluptatem sit.\nEum unde esse deserunt labore delectus. Expedita facilis eius modi illum impedit. Porro unde iure autem.', 6, 1, 1, '2021-08-20 08:41:41', '2021-08-20 08:41:42', NULL),
(33, 4, 'Harum aliquam ut maxime non vitae in.', 'harum-aliquam-ut-maxime-non-vitae-in', NULL, 'Qui aut voluptatem qui distinctio. Aut laborum ut alias omnis fugiat. Quos est sed est tempore dolores. Qui consequatur repellendus ab animi sunt id.', 'Consequatur eaque tempora reprehenderit et rem. Quaerat amet non sint soluta. Harum consectetur nisi eaque fuga.\nMollitia odio eligendi ex qui omnis. Praesentium voluptatem enim rerum ut. Adipisci est vero fugiat quam dolor. Earum aliquam ab veniam quod eum consequatur.\nConsequatur facere maxime ullam sint et animi. Eum dolorem qui earum similique laborum rerum eum accusantium.\nAccusamus quidem libero aut consequatur aut et quo. Suscipit dolores distinctio autem voluptatem et id quas. Iure dignissimos dolor voluptatem tempora qui. Aspernatur provident qui rem ex modi incidunt.\nUt id nam earum recusandae eum. Veritatis tempore est qui laborum. Ex deleniti ut cupiditate deserunt eius voluptatem. Est aspernatur accusamus consequuntur velit fugit.\nEx eius molestias molestiae ab fuga ea. Qui odit adipisci natus quia alias doloribus. Tempora sit ab minus aliquid at et.\nQuia placeat repudiandae laborum corporis. Eum veritatis sit cum ipsum ad adipisci.', 3, 0, 1, '2021-08-20 08:41:41', '2021-08-20 08:41:42', NULL),
(34, 4, 'Velit mollitia et explicabo sed et reprehenderit.', 'velit-mollitia-et-explicabo-sed-et-reprehenderit', NULL, 'Nesciunt tenetur quae officia optio ea. Qui corporis facilis ea eaque molestiae unde modi. Veritatis veritatis doloremque illum ipsa. Tempora ut in nam non et quam.', 'Tempora esse voluptatem maxime. Hic repudiandae enim harum. Placeat sed voluptas molestiae quis maxime numquam exercitationem et. Sit vel quo dolores deleniti qui.\nOdio natus quo incidunt veritatis. Dignissimos veniam quis explicabo corrupti maiores. Sed saepe tempore architecto nobis sit.\nEt nihil asperiores molestiae et. Odio harum veritatis est. Eum et qui perspiciatis. Illum mollitia labore nostrum consequuntur saepe.\nQui corporis maxime non error molestiae. Vitae omnis veritatis laudantium dolores laborum unde. Doloribus est officiis quo animi. Soluta autem ut minima omnis et culpa.\nArchitecto occaecati tempore fuga. Velit sed omnis aut aut laborum placeat. Iure hic at in ea. Aut quas placeat labore quam totam vel culpa.\nPorro expedita nemo aliquam. Vel dolorum ut voluptatem aspernatur modi. Sed molestias minima molestiae quos. Et perferendis cum inventore libero voluptatem dolorum occaecati.', 7, 0, 0, '2021-08-20 08:41:41', '2021-08-20 08:41:43', NULL),
(35, 4, 'Dolores placeat enim ea id dolores eveniet.', 'dolores-placeat-enim-ea-id-dolores-eveniet', NULL, 'Labore ut rerum expedita. Voluptate ratione temporibus minima commodi. Ut vel sit voluptatem.', '<p>Repellat eius perspiciatis aspernatur in et. Neque eum atque nostrum eos cupiditate eum et. Aliquam dolor tenetur a. Exercitationem debitis eos voluptatem labore laborum amet. Eos et sed ad incidunt aliquid fuga. Ipsam nesciunt omnis harum repellat aut nulla non delectus. Dolores omnis cum enim id nisi. Similique nisi magnam velit enim ea. Voluptatem dolores ab non ipsam consequuntur. Rerum placeat earum id aliquam incidunt unde quod. Cupiditate eaque architecto magni at assumenda qui. Deserunt qui in error ut porro cum. Distinctio magni consectetur sequi aut ut molestias. Provident quasi qui a aut neque. Nostrum voluptatem inventore tempora aspernatur tempora veniam. Natus voluptatem dolores et aut alias similique. Modi accusantium aut laborum rem aperiam ut necessitatibus. Ut molestias rem temporibus eos amet cupiditate dignissimos. Laborum corrupti officia dignissimos corrupti enim. Magni laudantium recusandae quia. Rerum odio sed repellat et et occaecati qui.</p>', 8, 1, 0, '2021-08-20 08:41:41', '2021-08-20 08:55:28', NULL),
(36, 4, 'Harum corrupti expedita corporis aut ipsa quidem.', 'harum-corrupti-expedita-corporis-aut-ipsa-quidem', NULL, 'Voluptas cum corporis harum voluptatum. Molestiae laboriosam quo omnis. Velit et quaerat iste magnam. Voluptatem ratione et tenetur eaque blanditiis aliquam similique.', 'Animi dicta ad distinctio praesentium inventore. Officia qui quaerat temporibus libero rerum repellendus est et. Tenetur incidunt omnis repellendus incidunt porro corrupti labore. Voluptate voluptatum omnis occaecati maiores quia sed libero.\nOdit rerum qui atque corporis. Ipsum voluptates distinctio ratione et.\nNam at ut occaecati ut in voluptates quis. Et eum occaecati perferendis nihil fugit repellendus. Distinctio veritatis architecto dolorem aut nam ea molestias.\nPossimus doloremque eum iure eius laudantium. Rerum cum dolorum aspernatur est enim. Voluptates maxime neque sapiente ea quas voluptatem quisquam. Aut sequi vitae quod.\nEt et et quaerat sit quia animi ut. Quis aut suscipit doloribus quia. Eum sed officiis perspiciatis labore.\nEt reiciendis maiores laboriosam optio necessitatibus. Aut vero odio aliquam et.\nQuia consectetur error optio. Cupiditate quia tempore dolor repellat aut.', 10, 1, 1, '2021-08-20 08:41:41', '2021-08-20 08:41:43', NULL),
(37, 4, 'Enim asperiores quae voluptatum tempore.', 'enim-asperiores-quae-voluptatum-tempore', NULL, 'Blanditiis dolorem molestias aut laborum esse reprehenderit et. Tenetur officia sint officiis. Quaerat omnis explicabo nemo repudiandae vel neque.', 'Vitae est qui voluptatem voluptatum fugiat ab facere. Laboriosam impedit temporibus et laboriosam non ex impedit. Molestias eligendi dolor asperiores. Qui quia ut inventore asperiores.\nRepudiandae voluptatem est magnam cumque. Amet qui et sint quae. Dolores quo non sapiente aut.\nEos cumque fuga repellendus. Consectetur amet qui voluptas facilis. Quis expedita quis reiciendis. Tempore libero ipsa est.\nModi doloremque rerum iusto. Qui saepe officia deserunt distinctio eveniet. Asperiores a numquam exercitationem soluta qui est excepturi. Quibusdam aut tenetur consequatur exercitationem dolore ipsum cumque labore.\nUt impedit iusto eum accusantium sint non. Exercitationem modi sed quos sed inventore.\nId dolorem iure iure tempora quidem. Enim in eaque placeat totam iure.\nEt tempore odio est ut. Repellendus ut voluptas et exercitationem accusantium accusantium ullam. Blanditiis reiciendis dolores ratione laborum aliquam et architecto. Quo et accusantium sunt voluptatibus qui aut mollitia.', 6, 0, 1, '2021-08-20 08:41:41', '2021-08-20 08:41:43', NULL),
(38, 4, 'Dolorem eveniet ut aspernatur.', 'dolorem-eveniet-ut-aspernatur', NULL, 'Iusto quaerat labore aut. Voluptas aliquam doloremque voluptate eius repellat. Libero impedit beatae veritatis non.', '<p>Iste maiores sapiente et illo. Eveniet rerum assumenda autem aliquam aut. Esse eveniet est at atque ut. Dolorem non nobis explicabo ut. Aut error delectus amet nam maiores minima. Perferendis harum autem ullam corporis dignissimos. Sed ullam atque quos eveniet debitis perspiciatis. Doloribus aut eum occaecati similique hic et. Quis sit voluptas ut qui deserunt sint. Perferendis itaque amet vitae quis aut. Porro accusantium enim excepturi dolor. Possimus qui ad sit omnis amet quos. Aut consequatur beatae autem qui. Maxime eligendi nihil tempora. Aliquam est adipisci cumque omnis. Delectus velit sed sunt animi impedit. A perspiciatis minus hic in cupiditate animi. Culpa incidunt possimus libero ducimus. Inventore impedit enim nam dolor asperiores. Optio repellendus expedita et sed et quia. In maiores quia nam id incidunt aut.</p>', 6, 1, 0, '2021-08-20 08:41:41', '2021-08-20 08:55:34', NULL),
(39, 4, 'Provident fugit dolor molestiae velit.', 'provident-fugit-dolor-molestiae-velit', NULL, 'Consequuntur nisi deleniti impedit atque accusamus voluptas. Facere doloremque praesentium nihil autem voluptas quam. Ut veritatis laudantium officia nesciunt at dolores et. Omnis et et placeat ipsam voluptas autem et.', 'Et commodi repudiandae quia aut. Id est tempore quos asperiores quos ab occaecati. Laborum quos veritatis ex beatae id sit necessitatibus.\nEt tempore incidunt explicabo amet officia est suscipit. Excepturi delectus nemo illo quos iusto dicta. Quasi tempore et dicta a minima quas facere iste. Ea in corporis velit qui perferendis ut.\nAutem aut incidunt non exercitationem eos nulla. Laboriosam ab assumenda neque assumenda. Aut tempore illum voluptatibus ut ut necessitatibus id.\nQuas voluptas cumque eum eos ullam pariatur rerum et. Aut porro alias dolores non vitae inventore.\nPerferendis rerum officia non sint ut non aut. Delectus sunt inventore natus et beatae. Incidunt dolor nobis cum. Consequatur tempore veritatis natus esse.\nQuod voluptas sed officia quibusdam. Ratione odit sunt provident. Necessitatibus optio sint eum corporis. Dolores sint ab iusto.\nFacere quibusdam non maxime est. Tempore aliquam nisi et dolor. Voluptatem perferendis quos qui.', 10, 1, 0, '2021-08-20 08:41:41', '2021-08-20 08:41:43', NULL);
INSERT INTO `lessons` (`id`, `course_id`, `title`, `slug`, `lesson_image`, `short_text`, `full_text`, `position`, `free_lesson`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(40, 4, 'Et aperiam et qui.', 'et-aperiam-et-qui', NULL, 'Sit velit eos ea aliquid qui quos nihil. Quo beatae accusantium sit autem vero consequatur.', 'Aut sed optio quis. Velit sed qui consequatur temporibus autem. Placeat nobis ea animi iste corrupti sit. Accusantium ipsum et quo veritatis porro reprehenderit.\nOdit esse et aliquid illum quia adipisci eligendi ipsa. Cum eaque ipsa qui tempora velit. Architecto eligendi dicta porro nulla. Velit rerum a debitis qui saepe provident ipsum.\nEveniet provident dolorum aut officiis. Sit fuga cumque est aut. Beatae atque perferendis in voluptatem.\nQuis et reiciendis iste veniam magnam sapiente ipsa. Et in voluptatum numquam blanditiis quidem labore. Dolore impedit et sint ea repudiandae sint aut.\nAliquam et sequi aperiam earum et. Necessitatibus distinctio illum recusandae.\nProvident et autem qui dolorem. Iure dicta omnis omnis vitae enim explicabo. Est neque veniam esse delectus error. Maxime praesentium ipsa quasi culpa nihil.\nIusto dolor accusantium esse doloremque ea. Id consequuntur labore voluptas quidem amet perferendis. Ad iste hic quo praesentium perferendis amet quisquam.', 3, 0, 0, '2021-08-20 08:41:41', '2021-08-20 08:41:43', NULL),
(41, 5, 'Eos ab quasi dolores eum sunt voluptate soluta.', 'eos-ab-quasi-dolores-eum-sunt-voluptate-soluta', NULL, 'Aspernatur ducimus adipisci sed quisquam officia provident repellendus mollitia. Aperiam vel nihil sequi sunt a. Magnam libero quaerat sed repellendus libero voluptas.', 'Qui molestias quidem repudiandae eveniet repellendus sed. Quia nihil optio quae aut.\nTemporibus aut ipsam sint est est incidunt. Dolor exercitationem sit facere perspiciatis fugiat perferendis. Quia dolorum est assumenda sapiente.\nSint temporibus velit nemo ducimus ab. Ut qui officiis harum explicabo optio incidunt ipsam. Quidem saepe assumenda earum. Voluptatibus et et natus est dolorem. Ab vel qui dolore tempora in.\nOdio sit nobis mollitia commodi voluptas inventore. Autem est fugit ut rerum est quos sed vel. Culpa eos neque vitae optio.\nAut itaque nihil quibusdam iste cupiditate voluptatem ut. Commodi qui tempore dolorem aut. Ex rerum quisquam harum aliquam voluptatibus labore.\nDucimus qui a qui. Non corporis quasi et debitis illum aut. Ut sunt doloribus eum consequatur quos possimus. Similique consequatur laudantium qui omnis ea et.\nEst quam officia maxime aut ut ipsa. Dolorem dolorem maxime autem quisquam placeat.', 8, 1, 0, '2021-08-20 08:41:43', '2021-08-20 08:41:45', NULL),
(42, 5, 'Atque qui sit quae illum.', 'atque-qui-sit-quae-illum', NULL, 'Aspernatur officia voluptatum debitis consectetur. Praesentium dolorum fugiat dolor. Impedit quos numquam consequatur omnis. Iste ut iusto et sit voluptatem.', 'Qui eos nesciunt unde officia voluptas est dolores. Expedita esse delectus et tempore voluptates eligendi. Corporis magni qui nostrum facilis alias.\nCumque ea animi est voluptas cum ea. Et amet beatae quas dicta dignissimos aut. Minima animi et ducimus et et qui sunt.\nEst error sed porro quibusdam est. Quos id ipsam asperiores exercitationem voluptas eos pariatur. Et corporis non sint. Voluptatem nostrum harum voluptatibus voluptatum.\nLibero nobis incidunt consequatur facere. Accusamus ducimus maiores tempora voluptatem iure. Temporibus quas minima vel eaque sed aut mollitia beatae.\nExplicabo autem deleniti dolorem adipisci itaque dolores blanditiis. Voluptatum omnis perspiciatis qui in nam. Beatae repellat optio repudiandae debitis et exercitationem iusto dolores.\nAut qui recusandae consequuntur amet voluptas. Esse ut itaque est voluptates. Sit numquam maxime ratione voluptatum.', 10, 1, 0, '2021-08-20 08:41:43', '2021-08-20 08:41:45', NULL),
(43, 5, 'Delectus beatae eum odio quis omnis dignissimos.', 'delectus-beatae-eum-odio-quis-omnis-dignissimos', NULL, 'Et ex est aliquid at. Autem culpa quia dolores. Explicabo suscipit libero aut expedita.', 'Qui incidunt libero molestiae repellat. Tempora quod sit nobis aut doloribus deleniti eligendi.\nQuis accusantium autem provident voluptate. Saepe quisquam minima soluta quasi qui ullam quasi. Unde et architecto rerum debitis cumque. Praesentium officiis sunt eaque sit.\nExercitationem voluptatum tempora earum ea nihil ullam. Necessitatibus provident consequatur sint neque quibusdam.\nLaborum mollitia aut ducimus sit pariatur totam. Ea quia repudiandae possimus. Eaque harum reiciendis voluptate beatae vel ut non. Earum ut ut dolor laudantium et distinctio. Velit esse eum eos vitae corrupti dolor voluptate.\nMagni rerum unde blanditiis et rem alias nobis. Rerum ut sed tenetur explicabo. Impedit sit et animi non esse. Esse et ex ut aliquam maiores quisquam.\nItaque sequi dignissimos laborum et esse minus eos. Repellat esse vel iusto et autem. Pariatur incidunt possimus molestiae nesciunt ducimus vitae possimus cum. Tempore a doloribus et itaque sint quisquam.', 10, 1, 1, '2021-08-20 08:41:43', '2021-08-20 08:41:45', NULL),
(44, 5, 'Pariatur itaque a voluptatum et quasi.', 'pariatur-itaque-a-voluptatum-et-quasi', NULL, 'Quia porro quidem recusandae optio nam veritatis nesciunt autem. Enim in soluta animi dolorem voluptatem velit est. Nostrum rerum totam sit. Et aut ullam inventore dolorem ab impedit.', 'Sed quia praesentium sint sed nostrum id. Sit eaque qui maiores eveniet. Omnis dolor repellat aperiam voluptas dolorem officiis ut saepe. Et aut enim ut ut deserunt. Sit quo odio vero voluptatem.\nEst commodi dignissimos aperiam. Autem debitis ut placeat molestiae ut id quisquam qui. Atque ratione velit sit ea illum praesentium. Quasi omnis rerum sint quia similique et.\nNemo odit iure et sequi deleniti quis. Atque aliquam quasi odio nobis excepturi voluptate. Reprehenderit nesciunt qui tenetur totam pariatur a.\nOmnis distinctio velit sint animi. Omnis molestiae et sapiente aliquam laborum sapiente adipisci cupiditate. Ut sed non magni voluptas veritatis tempora dignissimos. Molestiae aliquid est quo quia. Aliquid omnis voluptatem unde labore nihil quia.\nRepellendus suscipit quis aut cumque accusamus ut ut. A non architecto dicta sint. Dolore et sit mollitia aut dolores quis.', 8, 0, 1, '2021-08-20 08:41:43', '2021-08-20 08:41:45', NULL),
(45, 5, 'Nulla et et incidunt maxime.', 'nulla-et-et-incidunt-maxime', NULL, 'Ducimus dolorem doloribus rem pariatur dolorum. Vero dolore dolor facere deserunt dolorem deserunt veniam architecto. Excepturi quia ratione quas ipsa et sunt. At omnis culpa aut veniam quia commodi quidem explicabo.', 'Delectus sapiente exercitationem necessitatibus nostrum sunt. Officia accusamus ut quia. Unde expedita necessitatibus eos nisi enim.\nConsequatur dolor at asperiores. Impedit labore quia qui quod dicta. Consequatur voluptatibus delectus quidem quae in repellendus ut. Ducimus blanditiis fuga asperiores quidem non eaque ea a.\nNihil molestiae sit odit provident sit voluptas velit. In eveniet hic vel vero qui consequuntur a nostrum. Sit ut in a dolores. Ipsam tempore consequuntur dolores eos.\nError et et est impedit unde vel debitis. Dolorem aliquid enim eius. Et veniam nihil sed doloremque non. Accusantium minus facilis quo animi illum.\nPariatur quod ut dicta veritatis earum. Quo sit nostrum numquam autem aut. Repellat fugiat molestiae sit consectetur beatae aut consequatur ipsa.\nDolorem et voluptatem ratione. Molestiae sit optio ea inventore dolorem in. Ullam adipisci eum nihil. Quis rem est non ut dolore.', 7, 1, 1, '2021-08-20 08:41:43', '2021-08-20 08:41:45', NULL),
(46, 5, 'Veniam vel hic eveniet.', 'veniam-vel-hic-eveniet', NULL, 'A ut voluptate et. Nam aut qui est autem. Aperiam voluptate iure blanditiis nesciunt. Odio et non quia fuga.', 'Adipisci sint nihil et porro et earum dolore sed. Molestiae itaque et amet et assumenda. Illo amet voluptatem perferendis sed nam. Qui eos aliquid optio consequatur et ratione adipisci.\nEt accusamus tenetur pariatur qui cupiditate. Rerum et nulla iure architecto. Maxime consequatur odit sed est eos ex veritatis.\nQui inventore cumque ea voluptas. Quidem culpa exercitationem maiores illo tenetur. Pariatur in autem vitae. Architecto odit expedita placeat molestiae ut.\nEnim sit tempore labore. Libero corporis libero aliquam nisi provident nesciunt soluta. Ut et laboriosam ab nobis.\nBlanditiis consequuntur corrupti possimus nihil. Delectus qui ipsam eum. Fuga in placeat ipsam rerum. Blanditiis dolores laborum veritatis.\nQuas dignissimos deserunt itaque sed consequuntur. Corporis sint reiciendis laborum est. Sit cum dolor qui. Neque voluptas repudiandae vel voluptate et illum inventore illum.', 8, 1, 1, '2021-08-20 08:41:43', '2021-08-20 08:41:45', NULL),
(47, 5, 'Totam facere ut tenetur non quo.', 'totam-facere-ut-tenetur-non-quo', NULL, 'Earum ipsam ab sequi voluptas dolorum. Autem harum nihil quibusdam veritatis magni porro molestiae. Asperiores sit et quidem quod autem libero. Illum libero facere doloremque impedit et quisquam deleniti voluptatibus.', 'Unde eius explicabo neque sint omnis ut rerum. Vitae voluptas nisi pariatur modi. Ab magnam molestiae ab rerum dicta.\nVelit nulla et asperiores fugit accusamus est at. Eveniet ratione rem repellendus itaque exercitationem suscipit dolores. Omnis voluptatem accusantium officiis ratione error quo qui.\nFuga amet pariatur fugit quae. Vel ducimus doloremque iusto. Incidunt autem quia quisquam dolores voluptates. Eius assumenda est quo laudantium ab autem expedita.\nQuis iusto facere et fugit tempore iste odio. Qui rerum sed quae voluptas. Enim et magni alias modi. Eligendi voluptate ut perspiciatis mollitia nihil voluptas. Iure id doloribus est architecto officia voluptatum ipsum.\nQuisquam modi voluptatibus consequatur deleniti quam. Accusamus laboriosam officia non tenetur ipsa qui. Enim alias consequuntur repudiandae omnis consectetur quo et. Praesentium distinctio dolor accusamus incidunt odio. Iure corrupti vero dicta deserunt.', 7, 0, 0, '2021-08-20 08:41:44', '2021-08-20 08:41:45', NULL),
(48, 5, 'Consequatur molestiae in placeat sed dolorem.', 'consequatur-molestiae-in-placeat-sed-dolorem', NULL, 'Sed distinctio cupiditate aliquam sed non quidem voluptas. Nulla autem a enim autem reprehenderit at voluptas. Et officia ut commodi dolore sit. Facilis dicta animi iure enim nam incidunt et perspiciatis. Quo magnam adipisci et tempore odit.', 'Illum minus repellat aliquam debitis dignissimos voluptatum. Ut beatae et amet. Aut molestiae aut earum repudiandae.\nEveniet distinctio voluptatibus eos aut ullam enim. Dolore velit natus vel tempore explicabo exercitationem qui. Quia quia ipsam quia sed dolores quod voluptate. Voluptatem dolorem maxime velit voluptas inventore.\nEst iste tempora aut voluptatem officia ut eos. Minus occaecati sit ea nesciunt incidunt perspiciatis. Animi aut omnis fuga maiores impedit ab laborum. Nemo exercitationem laudantium explicabo exercitationem porro voluptas.\nTempore tenetur recusandae qui veritatis et qui. Provident suscipit aut optio sit temporibus quos sed. Voluptas dolores ad sunt natus deserunt repellendus vel voluptatibus.\nExercitationem earum aut saepe et. Rem harum ut ea odio consectetur. Enim accusantium eos nihil qui alias sed.', 10, 1, 1, '2021-08-20 08:41:44', '2021-08-20 08:41:46', NULL),
(49, 5, 'Aut ut aut quod quae voluptas officia id nostrum.', 'aut-ut-aut-quod-quae-voluptas-officia-id-nostrum', NULL, 'Sunt reiciendis autem unde quod aut reiciendis. Eos reiciendis commodi consequatur reprehenderit enim sed. Repellendus commodi non explicabo dolorem quasi. Velit neque ipsa velit facere omnis voluptatem et modi.', 'Atque ex sequi animi amet voluptatem incidunt. Dolorem magnam doloremque suscipit officia fugit velit cum. Non et voluptate aut esse. Sed voluptas blanditiis ut ad esse. Blanditiis autem facilis tenetur voluptatum tenetur.\nConsequatur cumque consequatur occaecati mollitia. Voluptatem voluptas sit illo cumque omnis.\nIusto incidunt voluptatum eum omnis consequatur. Nostrum voluptas ratione quis excepturi. Reprehenderit facere quam repudiandae enim incidunt fugiat. Cupiditate veritatis error accusamus molestiae sed odit.\nNemo similique sequi perspiciatis. Aut placeat ad velit sed aut. Et officiis eveniet dolorem ducimus cum et. Nobis qui eos voluptas quas harum nobis qui vel.\nConsequuntur est id sed eius. Earum perspiciatis consequatur possimus odit commodi. Non consectetur dolorum exercitationem numquam commodi amet illo qui. Ut vel fuga blanditiis laborum qui qui.', 9, 0, 0, '2021-08-20 08:41:44', '2021-08-20 08:41:46', NULL),
(50, 5, 'Et voluptatem non vel sit consequatur.', 'et-voluptatem-non-vel-sit-consequatur', NULL, 'Vero omnis nemo modi et debitis id. Suscipit id quis nihil sit deleniti perspiciatis. Qui iste laudantium vel eaque recusandae aut. Est veniam aliquid temporibus fugiat.', 'Deserunt harum deleniti odio ipsum quo culpa rem. Quis aliquam est doloribus mollitia earum molestiae saepe facere. Sit cupiditate ullam ut omnis sit et natus aliquid. Voluptas dicta in iusto qui laudantium explicabo.\nAutem sed veniam possimus quia. Qui consequatur dolores qui quaerat alias sed non. Provident quo voluptatum cupiditate culpa autem non.\nQui deserunt architecto sunt. Aut totam deleniti illo expedita distinctio fugit veritatis. Nisi voluptatum et illum quae esse dignissimos. Facere corporis perspiciatis voluptas.\nIncidunt et quidem voluptatibus rerum qui ut. Non similique deserunt quisquam exercitationem eos. Non quisquam necessitatibus sapiente qui aut.\nLaudantium repellendus officia aut maiores deserunt eos saepe. Qui nisi at temporibus voluptatum est. Asperiores omnis sit consequatur. Fugit pariatur quis dolorum omnis quia ea omnis.', 5, 0, 0, '2021-08-20 08:41:44', '2021-08-20 08:41:46', NULL),
(51, 6, 'Jenis-jenis Metode Penelitian', 'jenis-jenis-penelitian', '1629550554-aee807da09ef446a6a6c551a11b6407a.jpg', 'Terdapat macam-macam metode penelitian karya ilmiah yang dapat digunakan peneliti sesuai dengan masalah yang diteliti, di antaranya:\r\nMetode Penelitian Survei. ...\r\nMetode Penelitian Eksperimen. ...', '<p><iframe frameborder=\"0\" height=\"500px\" scrolling=\"no\" src=\"https://docs.google.com/presentation/d/1vKMFxUtFw2MHh4-CHcRHnogdBo3NdPVf/edit?usp=sharing&amp;ouid=117685766790046336668&amp;rtpof=true&amp;sd=true\" width=\"100%\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Karya ilmiah adalah merupakan karya tulis yang dibuat untuk memecahkan suatu permasalahan dengan memaparkan hasil penelitian. Oleh sebab itu, penulisannya tidak bisa sembarangan, melainkan ada <a href=\"https://kumparan.com/topic/metode-penelitian\">metode penelitian</a> yang perlu dilakukan.</p>\r\n\r\n<p>Metode penelitian adalah cara ilmiah yang digunakan untuk mendapatkan data-data yang nantinya dapat dianalisis untuk keperluan tertentu serta menentukan solusi dari permasalahan yang diteliti.</p>\r\n\r\n<p>Mengutip buku <em>Metodologi Penelitian, Pedoman Penulisan Karya Tulis Ilmiah </em>oleh Vigih Hery Kristanto (2018), data-data yang diperoleh berdasarkan metode penelitian ini merupakan data yang valid, reliabel dan objektif.</p>\r\n\r\n<p>Terdapat macam-macam metode penelitian karya ilmiah yang dapat digunakan <a href=\"https://kumparan.com/search/peneliti\">peneliti </a>sesuai dengan masalah yang diteliti, di antaranya:</p>\r\n\r\n<h2>1. Metode Penelitian Survei</h2>\r\n\r\n<p>Ini adalah metode penelitian kuantitatif yang dapat digunakan untuk mendapatkan data pada masa lampau maupun saat ini. Data-data yang diperoleh mengenai keyakinan, pendapat, karakteristik, perilaku, hubungan variabel, serta untuk menguji hipotesis.</p>\r\n\r\n<p>Pengumpulan data dalam metode penelitian ini biasanya menggunakan metode pengamatan, yang dilakukan dengan wawancara maupun membagikan kuesioner. Hasil yang diperoleh dari metode ini biasanya digunakan untuk generalisasi.</p>\r\n\r\n<p><img alt=\"Macam-macam Metode Penelitian Karya Ilmiah dan Penjelasannya (1)\" src=\"https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1621835332/qbjbwkpqmbhtubee5wtz.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><img alt=\"search\" src=\"https://blue.kumparan.com/uikit-assets/assets/icons/search-c4f6b18b1ae61a21f36e262683d44750.svg\" />Perbesar</p>\r\n\r\n<p>Ilustrasi menulis karya ilmiah dengan metode penelitian. Foto: iStock</p>\r\n\r\n<h2>2. Metode Penelitian Eksperimen</h2>\r\n\r\n<p>Termasuk jenis metode penelitian kuantitatif yang digunakan untuk melihat pengaruh variabel bebas terhadap variabel terikat yang dapat dikendalikan sehingga tidak ada variabel lain yang memengaruhi variabel terikat.</p>\r\n\r\n<p>Agar dapat dikendalikan, penelitian eksperimen umumnya menggunakan sampel kelompok kontrol dan biasanya dilakukan di laboratorium.</p>\r\n\r\n<h2>3. Metode Penelitian Kualitatif.</h2>\r\n\r\n<p>Penelitian kualitatif digunakan untuk meneliti kondisi objek secara alamiah, di mana peneliti merupakan instrumen kunci. Karena itu, hasil analisis dan kesimpulan bergantung pada ketajaman analisis dari peneliti itu sendiri.</p>\r\n\r\n<p>Teknik pengumpulan datanya dilakukan secara trianggulasi (gabungan) dan analisis data dilakukan dengan induktif atau kualitatif sehingga tidak digunakan untuk proses generalisasi seperti yang dilakukan pada metode kuantitatif. Akibatnya, hasil penelitian kualitatif ini lebih menekankan pada makna.</p>\r\n\r\n<p><img alt=\"Macam-macam Metode Penelitian Karya Ilmiah dan Penjelasannya (2)\" src=\"https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1621835404/xfnst5ej9kfrvneuhhdu.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><img alt=\"search\" src=\"https://blue.kumparan.com/uikit-assets/assets/icons/search-c4f6b18b1ae61a21f36e262683d44750.svg\" />Perbesar</p>\r\n\r\n<p>Ilustrasi menulis karya ilmiah. Foto: Unsplash</p>\r\n\r\n<h2>4. Metode Penelitian Evaluasi</h2>\r\n\r\n<p>Penelitian evaluasi dilakukan untuk mengetahui seberapa jauh pelaksanaan suatu perencanaan atau seberapa jauh tujuan telah tercapai. Dengan demikian, hasil dari penelitian evaluasi ini dapat digunakan sebagai bahan pertimbangan untuk menongkatkan kualitas perumusan, implementasi, maupun hasil dari suatu proyek, kebijakan, dan program.</p>\r\n\r\n<h2>5. Metode Penelitian Deskriptif</h2>\r\n\r\n<p>Mengutip buku <em>Penelitian Pendidikan: Metode, Pendekatan, dan Jenis </em>oleh Dr. H. Salim, M.Pd. dan Dr. Haidir, S.Ag., M,Pd. (2019), penelitian deskriptif memusatkan perhatian kepada masalah-masalah aktual apa adanya pada saat penelitian tengah berlangsung.</p>\r\n\r\n<p>Melalui penelitian ini, peneliti berusaha mendeskripsikan peristiwa dan kejadian tanpa memberikan perlakuan khusus terhadap peristiwa tersebut. Adapun variabel yang diteliti dapat tunggal maupun lebih dari satu variabel.</p>\r\n\r\n<h2>6. Studi Kasus</h2>\r\n\r\n<p>Pada dasarnya, studi kasus mempelajari secara intensif seorang individua tau kelompok yang mengalami kasus tertentu. Misalnya, mempelajari secara khusus kepala sekolah yang tidak disiplin dalam bekerja.</p>\r\n\r\n<p>Dalam melakukannya, peneliti mempelajarinya secara mendalam dengan mengungkap variabel-variabel yang dapat menyebabkan terjadinya kasus tersebut dari berbagai aspek. Sederhananya, studi kasus dimaksudkan untuk megetahui mengapa individu melakukan apa yang dia lakukan.</p>\r\n\r\n<p>Studi kasus bukan dilakukan untuk menguji hipotesis, tetapi sebaliknya, studi kasus dapat menghasilkan hipotesis yang dapat diuji melalui penelitian lebih lanjut.</p>\r\n\r\n<p>(ADS)</p>', 1, 1, 1, '2021-08-21 05:55:54', '2021-08-23 10:13:14', NULL),
(52, 6, 'Etika Ilmiah', 'etika-ilmiah', '1629550742-225193779_615562159847990_695605575815673597_n.jpg', 'ETIKA DALAM KARYA ILMIAH. Ilmu merupakan Proses berpikir tentang sesuatu objek yang khas melalui pendekatan tertentu sehingga menghasilkan suatu kesimpulan ...', '<h2>BAB I PENDAHULUAN</h2>\r\n\r\n<h3>Latar Belakang</h3>\r\n\r\n<p>Di era globalisasi dan modernisasi seperti ini, masyarakat sedang gencar-gencarnya mengembangkan ilmu pengetahuan dengan penelitian ilmiah. Namun seiring perkembangan teknologi, masyarakat tidak bisa menyaring baik buruknya dampak teknologi tersebut. Tanggung jawab ilmu pengetahuan dan teknologi berkaitan dengan etika. Dalam penelitian apapun baik kualitatif maupun kuantitatif etika merupakan hal yang harus dijunjung tinggi. Convention Scientific Research mengemukakan perlunya memperhatikan masalah etika dalam penelitian yang melibatkan subjek manusia. Hal ini menyangkut masalah tata aturan dan nilai bagi peneliti maupun yang diteliti agar tidak terjadi benturan antarnilai yang dianut oleh kedua belah pihak atau untuk menghindari eksploitasi dan manipulasi yang berdampak merugikan bagi salah satu pihak.</p>\r\n\r\n<p>Salah satu hal yang paling penting ketika melakukan&nbsp; penelitian adalah dalam hal pengumpulan data atau pun sampel, karena dalam hal ini seorang peneliti memerlukan interaksi dengan banyak pihak yang dibutuhkan dalam&nbsp; penelitiannya. Jadi yang sangat diperlukan dalam menghadapi masyarakat adalah suatu tata krama dalam bersosialisasi atau yang lebih dikenal dengan etika penelitian</p>\r\n\r\n<h3>Rumusan Masalah</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Apa yang dimaksud dengan etika ilmiah dan penelitian ?</li>\r\n	<li>Apa prinsip-prinsip dalam etika penelitian ?</li>\r\n	<li>Apa peranan atau fungsi dari etika ilmiah dan penelitian ?</li>\r\n	<li>&nbsp;Apa saja poin-poin penting dari etika ilmiah?</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Tujuan</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Untuk mengetahui maksud dari etika ilmiah dan penelitian.</li>\r\n	<li>Untuk memahami dan mengimplementasikan prinsip-prinsip etika ilmiah dan penelitian.</li>\r\n	<li>Untuk memahami peranan atau fungsi etika ilmiah dan penelitian.</li>\r\n	<li>Untuk mengetahui etika ilmiah dan penelitian.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>BAB II PEMBAHASAN</h2>\r\n\r\n<h3>Pengertian Etika Ilmiah Dan Penelitian</h3>\r\n\r\n<p>Etika secara etimologi bersa dari kata Yunani, ethos yang berarti watak kesusilaan / adat . Menurut K.Bertens : etika adalah nilai &ndash; nilai dan norma &ndash; norma moral, yang menjadi pegangan bagi seseorang atau kelompok dalam mengatur tingakah lakunya. KBBI , 1988 membedakan etika menjadi 2 bagian : ilmu tentang apa yang baik dan buruk, kumpulan azaz atau nilai dan nilai mengenai benar dan salah.&nbsp;</p>\r\n\r\n<p>Ada 2 macam etika :</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Etika deskriptif : etika yang menelaah secara kritis dan rasional tentang sikap dan perilaku manusia serta apa yang dikejar oleh setiap orang dalam hidupnya sebagai sesuatu yang bernilai. Artinya, etika deskriptif berbicara mengenai fakta secara apa adanya.</li>\r\n	<li>Etika normatif : etika yang menetapkan berbagai sikap dan perilaku yang ideal dan seharusnya dijalankan oleh manusia dan tindakan apa yang bernilai dalam hidupnya.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Penelitian ilmiah merupakan usaha untuk memperoleh fakta &ndash; fakta atau mengembangkan prinsip-prinsip (menemukan/mengembangkan/menguji/kebenaran) dengan cara mengumpulkan, mencatat dan menganalisa data (informasi dari keterangan) dikerjakan dengan sabar, hati &ndash; hati, sistematis dan berdasarkan ilmu pengetahuan dengan metode ilmiah.</p>\r\n\r\n<p>Dengan demikian dapat disumpulkan bahwa etika ilmiah dan penelitian adalah suatu kegiatan yang bertujuan untuk memperoleh fakta &ndash; fakta dengan menganalisis data secara sistematis dan sesuai dengan nilai &ndash; nilai dan moral &ndash; moral yang berkembang pada masyarakat dan menjadi pegangan bagi seseorang / kelompok dalam mengatur tingkah lakunya dalam melakukan penelitian ilmiah.</p>\r\n\r\n<h3>Prinsip Etika Ilmiah</h3>\r\n\r\n<p>Dalam menerapkan etika penelitian, perlu diperhatikan beberapa prinsip-prinsip yang harus diimplementasikan. Menurut Belomont, dikenal 3 prinsip utama etika penelitian yang diterapkan oleh para peneliti, yaitu:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Manfaat. Dalam menerapkan prinsip azas manfaat tersebut antara lain adalah untuk mempertimbangkan rasio antara manfaat dan resiko yang akan dibebankan pada peneliti itu sendiri. Dalam meneliti, manfaat yang diperoleh peneliti adalah hal yang paling penting. Karena, selain merupakan tujuan awal diadakannya sebuah penelitian, manfaat tersebut juga haruslah berguna bagi orang lain, bukan hanya untuk kepuasan peneliti itu sendiri. Manfaat tersebut juga harus dapat mempengaruhi masyarakat. Selain manfaat, resiko juga menjadi hal yang harus ditanggung oleh peneliti. Peneliti harus mampu berpikir secara kritis dengan resiko yang akan diterima agar tidak menjadi beban yang berat sehingga menghalangi kebebasan sang peneliti untuk menyelesaikan penelitian yang dijalankan. Selain itu juga sekaligus untuk bebas dari bahaya dan eksploitasi dari pihak lain. Bahaya dan hal seperti eksploitasi dapat juga menjadi bagian dari resiko yang diterima peneliti, namun peneliti juga memiliki hak untuk bebas dengan tidak menerima gangguan dari luar.</li>\r\n	<li>Menghargai sesama. Hak yang dimaksud adalah hak untuk menetapkan diri dan hak untuk mendapatkan penjelasan yang lengkap. Hak untuk menetapkan diri yaitu peneliti memiliki hak untuk memutuskan dengan sukarela apakah ia ingin berpartisipasi dalam suatu penelitian, tanpa beresiko untuk dihukum ataupun dipaksa. Hal ini juga berkaitan dengan eksploitasi kepada kebebasan yang dimiliki seorang peneliti. Pada hak untuk mendapatkan dan memberikan penjelasan yang lengkap, peneliti harus mengetahui berbagai macam kejelasan berkaitan dengan hal yang akan diteliti, tanggung jawab, resiko yang akan didapat, dan hak subjek untuk menolak ikut berperan. Selain dua hal di atas, peneliti juga harus memperlakukan setiap individu dengan sama dan memposisikan dirinya sebagai individu yang tidak menganggap subjek yang ditelitinya hanya untuk dimanfaatkan semata.</li>\r\n	<li>Hak Keadilan. Selain hak untuk mendapatkan keadilan dan kebebasan yang diperoleh oleh seorang peneliti, peneliti juga harus mampu memperlakukan orang lain dengan baik dan membuat penelitian tersebut memiliki manfaat yang merata kepada setiap orang dengan tidak merugikan pihak lain ataupun masyarakat yang terlibat maupun yang tidak terlibat.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Selain prinsip yang dikemukakan oleh Belmont, terdapat prinsip-prinsip lainnya yang tidak boleh dikesampingkan. Hal-hal tersebut adalah sebagai berikut:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Plagiarisme dan manipulasi didalam penelitian. Tidak mengutip sebagian ataupun keseluruhan dari isi referensi yang menjadi panutan, sekaligus memanipulasi rancangan penelitian hingga titik akhir dari penyelesaian penelitian yang dijalankan menjadi prinsip yang harus selalu ditekankan untuk setiap peneliti. Karena hal ini tidak mencerminkan dari penghargaan terhadap hak cipta yang dimiliki orang lain.</li>\r\n	<li>Privasi yang dimiliki oleh subjek Dalam melakukan proses penelitian, dibutuhkan bantuan subjek untuk mencari kebenaran dari objek yang akan diteliti. Khususnya untuk orang-orang atau lapisan masyarakat tertentu. Terkadang, beberapa subjek lebih memilih untuk tidak diberi tahu identitas aslinya karena hak privasi yang dimiliki. Sebagai peneliti, harus mematuhi hal tersebut sebagai bentuk menghormati hak milik orang lain.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>BACA JUGA</strong></p>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.ganipramudyo.web.id/2021/07/penyimpanan-arsip-keluarga-lewat-cloud.html\">Penyimpanan Arsip Keluarga Lewat Cloud: Peluang dan Tantangannya</a></li>\r\n	<li><a href=\"https://www.ganipramudyo.web.id/2017/11/pemilihan-bacaan-anak-dan-remaja.html\">Pemilihan Bacaan Anak dan Remaja</a></li>\r\n</ul>\r\n\r\n<h3>Peranan atau Fungsi Etika Ilmiah</h3>\r\n\r\n<p>Etika memiliki peranan atau fungsi diantaranya yaitu:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Dengan etika seseorang atau kelompok dapat menegemukakan penilaian tentang perilaku manusia.</li>\r\n	<li>Menjadi alat kontrol atau menjadi rambu-rambu bagi seseorang atau kelompok dalam melakukan suatu tindakan atau aktivitasnya sebagai mahasiswa.</li>\r\n	<li>Etika dapat memberikan prospek untuk mengatasi kesulitan moral yang kita hadapi sekarang.</li>\r\n	<li>Etika dapat menjadi prinsip yang mendasar bagi mahasiswa dalam menjalankan aktivitas kemahasiswaanya.</li>\r\n	<li>Etika menjadi penuntun agar dapat bersikap sopan, santun, dan dengan etika kita bisa dicap sebagai orang baik di dalam masyarakat.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Berangkat dari landasan berpikir di atas, maka dapat disimpulkan bahwa pada prinsipnya orang melakukan kegiatan penelitian tiada lain disamping untuk memenuhi rasa ingin tahu terhadap sebuah gejala atau peristiwa juga untuk memecahkan masalah secara ilmiah dan dapat diterima dengan logika kemanusiaan. Dari hasil penelitian itu pula maka manusia dapat mengembangkan pengetahuan yang bermakna bagi kehidupan ilmiah maupun kehidupan sosial. Untuk itulah, dalam kerangka menjaga kemurnian hasil penelitian yang dilakukan serta untuk menjaga timbulnya berbagai persoalan dari hasil penelitian yang dilakukan maka persoalan etika menjadi sebuah keniscayaan yang harus diperhatikan dalam penelitian.</p>\r\n\r\n<h3>Poin-poin Penting dalam Etika Ilmiah</h3>\r\n\r\n<p>Dalam sebuah penelitian, baik secara kualitatif maupun kuantitatif, etika merupakan hal yang harus dijunjung tinggi. Etika berperan sebagai batasan seorang peneliti agar tidak keluar dari batasan yang ada. Convention scientific research mengemukakan perlunya memperhatikan masalah etika dalam penelitian yang melibatkan subjek manusia. Hal ini menyangkut masalah tata aturan dan nilai bagi peneliti maupun yang diteliti agar tidak terjadi benturan antarnilai yang dianut oleh kedua belah pihak atau untuk menghindari eksploitasi dan manipulasi yang berdampak merugikan bagi salah satu pihak.&nbsp;</p>\r\n\r\n<p>Dengan demikian, etika sosial dan etika penelitian harus benar-benar diperhatikan sebelum terjun ke lapangan, ketika penelitian berlangsung, dan setelah penelitin selesai dilakukan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Etika mencakup norma untuk berperilaku, memisahkan apa yang seharusnya dilakukan dan apa yang seharusnya tidak boleh dilakukan. Rangkuman etika penelitian meliputi butir-butir berikut:</li>\r\n	<li>Kejujuran; Jujur dalam pengumpulan bahan pustaka, pengumpulan data, pelaksanaan metode dan prosedur penelitian, publikasi hasil. Jujur pada kekurangan atau kegagalan metode yang dilakukan. Hargai rekan peneliti, jangan mengklaim&nbsp; pekerjaan yang bukan pekerjaan.</li>\r\n	<li>Obyektivitas; Upayakan minimalisasi kesalahan/bias dalam rancangan percobaan, analisis dan interpretasi data, penilaian ahli/rekan peneliti, keputusan pribadi,&nbsp; pengaruh pemberi dana/sponsor penelitian.</li>\r\n	<li>Integritas; Tepati selalu janji dan perjanjian; lakukan penelitian dengan tulis, upayakan selalu menjaga konsistensi pikiran dan perbuatan.</li>\r\n	<li>Ketelitian; Berlaku teliti dan hindari kesalahan karena ketidakpedulian; secara teratur catat pekerjaan dikerjakan, misalnya kapan dan dimana pengumpulan data dilakukan. Catat juga alamat korespondensi responden,&nbsp; jurnal atau agen publikasi lainnya.</li>\r\n	<li>Keterbukaan; Secara terbuka, saling berbagi data, hasil, ide, alat dan sumber daya&nbsp; penelitian. Terbuka terhadap kritik dan ide-ide baru.</li>\r\n	<li>Penghargaan terhadap Hak Atas Kekayaan Intelektual (HAKI); Memperhatikan&nbsp; paten,copyrights, dan bentuk hak-hal intelektual lainnya. Jangan menggunakan data, metode, atau hasil yang belum dipublikasi tanpa ijin penelitinya. Menuliskan semua narasumber yang memberikan kontribusi pada riset.</li>\r\n	<li>Penghargaan terhadap kerahasiaan (Responden); bila penelitian menyangkut data&nbsp; pribadi, kesehatan, catatan kriminal atau data lain yang oleh responden dianggap sebagai rahasia, maka peneliti harus menjaga kerahasiaan data tersebut.</li>\r\n	<li>Publikasi yang terpercaya; Hindari mempublikasikan penelitian yang sama berulang-ulang ke berbagai media (jurnal, seminar).</li>\r\n	<li>Pembinaan yang konstruktif; Membantu membimbing, memberi arahan dan masukan&nbsp; bagi mahasiswa/peneliti pemula. Perkenankan mereka mengembangkan ide mereka menjadi penelitian yang berkualitas.</li>\r\n	<li>Penghargaan terhadap kolega/rekan kerja; Hargai dan perlakukan rekan penelitian dengan semestinya. Bila penelitian dilakukan oleh suatu tim akan dipublikasikan, maka peneliti dengan kontribusi terbesar ditetapkan sebagai penulis&nbsp; pertama ( first author ), sedangkan yang lain menjadi penulis kedua (co-author(s)). Urutan menunjukkan besarnya kontribusi anggota tim dalam penelitian.</li>\r\n	<li>Tanggung jawab sosial; Upayakan penelitian berguna demi kemaslahatan masyarakat, meningkatkan taraf hidup, mudahkan kehidupan dan meringankan&nbsp; beban hidup masyarakat. Peneliti juga bertanggung jawab melakukan pendampingan&nbsp; bagi masyarakat yang ingin mengaplikasikan hasil penelitian.</li>\r\n	<li>Tidak melakukan Diskriminasi; Hindari melakukan pembedaan perlakuan pada rekan kerja atau mahasiswa karena alasan jenis kelamin, ras, suku, dan faktor-faktor lain yang sama sekali tidak ada hubungannya dengan kompetensi dan integritas ilmiah.</li>\r\n	<li>Kompetensi; Tingkatkan kemampuan dan keahlian meneliti melalui pendidikan dan&nbsp; pembelajaran seumur hidup; secara bertahap tingkatkan kompetensi sampai taraf pakar.</li>\r\n	<li>Legalitas; Pahami dan patuhi peraturan institusional dan kebijakan pemeintah yang terkait dengan penelitian.</li>\r\n	<li>Rancang pengujian dengan hewan percobaan dengan baik; Bila penelitian memerlukan hewan percobaan, maka percobaan harus dirancang sebaik mungkin, tidak dengan gegabah melakukan sembarang perlakuan pada hewan percobaan.</li>\r\n	<li>Mengutamakan keselamatan manusia; Bila harus menggunakan manusia untuk menguji penelitian, maka penelitian harus dirancang dengan teliti, efek negatif harus diminimalkan, manfaat dimaksimalkan; hormati harkat kemanusiaan, privasi dan hak obyek penelitian tersebut; siapkan pencegahan dan pengobatan bila sampel menderita efek negatif penelitian (jika untuk penelitian medis).</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>BAB III PENUTUP</h2>\r\n\r\n<h3>Kesimpulan</h3>\r\n\r\n<p>Pada prinsipnya sebab-sebab orang melakukan kegiatan penelitian selain untuk memenuhi rasa ingin tahu terhadap sebuah gejala atau peristiwa juga untuk memecahkan masalah secara ilmiah dan dapat diterima dengan logika kemanusiaan.</p>\r\n\r\n<p>Etika penelitian adalah suatu ukuran dari tingkah laku dan perbuatan yang harus dilakukan/diikuti oleh seorang peneliti dalam memperoleh data-data penelitiannya yang disesuaikan dengan adat istiadat serta kebiasaan masyarakat ditempat ia meneliti. Dalam penelitian kualitatif, salah satu ciri utamanya adalah orang sebagai alat/instrument untuk mengumpulkan data. Ini dapat dilakukan dalam pengamatan&nbsp; berperan serta, wawancara mendalam, pengumpulan dokumen, foto, dan sebagainya. Persoalan etika akan timbul apabila peneliti tidak menghormati, tidak mematuhi, dan tidak mengindahkan nilai-nilai masyarakat dan pribadi tersebut. Sementara peneliti tetap berpegang teguh pada latar belakang, norma, adat, kebiasaan, dan kebudayaannya sendiri dalam menghadapi sebuah situasi dan konteks latar penelitiannya tersebut. Penting untuk menjaga hubungan antara peneliti dan pihak yang diteliti yang merupakan kunci penting keberhasilan penelitian, dan diperlukan kepekaan, keterampilan, dan juga seni untuk dapat memasuki lingkungan budaya yang akan diteliti. Kemampuan untuk berempati dan bergaul dengan orang lain jelas merupakan modal&nbsp; penting.</p>\r\n\r\n<p>Etika penelitian berkaitan dengan norma-norma: norma sopan-santun, norma hukum, dan norma moral. Kesemuanya ini patut diperhatikan dan diindahkan supaya&nbsp; penelitian dapat tercapai dengan yang diharapkan. Etika penelitian mencakup: Kejujuran, obyektivitas, integritas, ketelitian, keterbukaan, penghargaan terhadap Hak Atas Kekayaan Intelektual (HAKI), penghargaan terhadap kerahasiaan (Responden), publikasi yang terpercaya, pembinaan yang konstruktif, penghargaan terhadap kolega/rekan kerja, tanggung jawab sosial, tidak melakukan Diskriminasi, kompetensi, legalitas, rancang pengujian dengan hewan&nbsp; percobaan dengan baik, dan mengutamakan keselamatan manusia.</p>\r\n\r\n<h3>Saran</h3>\r\n\r\n<p>Dari makalah yang telah disusun oleh penulis, penulis berharap karya ini bisa menjadi sumber referensi dari para pembaca. Selain itu penulis juga sangat berharap akan ada lagi karya serupa yang lebih sempurna dan mampu melengkapi kekurangan-kekurangan dari makalah ini.</p>', 2, 1, 1, '2021-08-21 05:59:02', '2021-08-21 06:28:44', NULL),
(53, 7, 'Object Oriented Programming', 'etika-ilmiah', '1629551228-118076381_994689977649269_4634941628498615305_n.jpg', 'Dari makalah yang telah disusun oleh penulis, penulis berharap karya ini bisa menjadi sumber referensi dari para pembaca. Selain itu penulis juga sangat berharap akan ada lagi karya serupa yang lebih sempurna dan mampu melengkapi kekurangan-kekurangan dari makalah ini.', '<p><iframe frameborder=\"0\" scrolling=\"no\" src=\"https://docs.google.com/presentation/d/1vKMFxUtFw2MHh4-CHcRHnogdBo3NdPVf/edit?usp=sharing&amp;ouid=117685766790046336668&amp;rtpof=true&amp;sd=true\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dengan demikian, etika sosial dan etika penelitian harus benar-benar diperhatikan sebelum terjun ke lapangan, ketika penelitian berlangsung, dan setelah penelitin selesai dilakukan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Etika mencakup norma untuk berperilaku, memisahkan apa yang seharusnya dilakukan dan apa yang seharusnya tidak boleh dilakukan. Rangkuman etika penelitian meliputi butir-butir berikut:</li>\r\n	<li>Kejujuran; Jujur dalam pengumpulan bahan pustaka, pengumpulan data, pelaksanaan metode dan prosedur penelitian, publikasi hasil. Jujur pada kekurangan atau kegagalan metode yang dilakukan. Hargai rekan peneliti, jangan mengklaim&nbsp; pekerjaan yang bukan pekerjaan.</li>\r\n	<li>Obyektivitas; Upayakan minimalisasi kesalahan/bias dalam rancangan percobaan, analisis dan interpretasi data, penilaian ahli/rekan peneliti, keputusan pribadi,&nbsp; pengaruh pemberi dana/sponsor penelitian.</li>\r\n	<li>Integritas; Tepati selalu janji dan perjanjian; lakukan penelitian dengan tulis, upayakan selalu menjaga konsistensi pikiran dan perbuatan.</li>\r\n	<li>Ketelitian; Berlaku teliti dan hindari kesalahan karena ketidakpedulian; secara teratur catat pekerjaan dikerjakan, misalnya kapan dan dimana pengumpulan data dilakukan. Catat juga alamat korespondensi responden,&nbsp; jurnal atau agen publikasi lainnya.</li>\r\n	<li>Keterbukaan; Secara terbuka, saling berbagi data, hasil, ide, alat dan sumber daya&nbsp; penelitian. Terbuka terhadap kritik dan ide-ide baru.</li>\r\n	<li>Penghargaan terhadap Hak Atas Kekayaan Intelektual (HAKI); Memperhatikan&nbsp; paten,copyrights, dan bentuk hak-hal intelektual lainnya. Jangan menggunakan data, metode, atau hasil yang belum dipublikasi tanpa ijin penelitinya. Menuliskan semua narasumber yang memberikan kontribusi pada riset.</li>\r\n	<li>Penghargaan terhadap kerahasiaan (Responden); bila penelitian menyangkut data&nbsp; pribadi, kesehatan, catatan kriminal atau data lain yang oleh responden dianggap sebagai rahasia, maka peneliti harus menjaga kerahasiaan data tersebut.</li>\r\n	<li>Publikasi yang terpercaya; Hindari mempublikasikan penelitian yang sama berulang-ulang ke berbagai media (jurnal, seminar).</li>\r\n	<li>Pembinaan yang konstruktif; Membantu membimbing, memberi arahan dan masukan&nbsp; bagi mahasiswa/peneliti pemula. Perkenankan mereka mengembangkan ide mereka menjadi penelitian yang berkualitas.</li>\r\n	<li>Penghargaan terhadap kolega/rekan kerja; Hargai dan perlakukan rekan penelitian dengan semestinya. Bila penelitian dilakukan oleh suatu tim akan dipublikasikan, maka peneliti dengan kontribusi terbesar ditetapkan sebagai penulis&nbsp; pertama ( first author ), sedangkan yang lain menjadi penulis kedua (co-author(s)). Urutan menunjukkan besarnya kontribusi anggota tim dalam penelitian.</li>\r\n	<li>Tanggung jawab sosial; Upayakan penelitian berguna demi kemaslahatan masyarakat, meningkatkan taraf hidup, mudahkan kehidupan dan meringankan&nbsp; beban hidup masyarakat. Peneliti juga bertanggung jawab melakukan pendampingan&nbsp; bagi masyarakat yang ingin mengaplikasikan hasil penelitian.</li>\r\n	<li>Tidak melakukan Diskriminasi; Hindari melakukan pembedaan perlakuan pada rekan kerja atau mahasiswa karena alasan jenis kelamin, ras, suku, dan faktor-faktor lain yang sama sekali tidak ada hubungannya dengan kompetensi dan integritas ilmiah.</li>\r\n	<li>Kompetensi; Tingkatkan kemampuan dan keahlian meneliti melalui pendidikan dan&nbsp; pembelajaran seumur hidup; secara bertahap tingkatkan kompetensi sampai taraf pakar.</li>\r\n	<li>Legalitas; Pahami dan patuhi peraturan institusional dan kebijakan pemeintah yang terkait dengan penelitian.</li>\r\n	<li>Rancang pengujian dengan hewan percobaan dengan baik; Bila penelitian memerlukan hewan percobaan, maka percobaan harus dirancang sebaik mungkin, tidak dengan gegabah melakukan sembarang perlakuan pada hewan percobaan.</li>\r\n	<li>Mengutamakan keselamatan manusia; Bila harus menggunakan manusia untuk menguji penelitian, maka penelitian harus dirancang dengan teliti, efek negatif harus diminimalkan, manfaat dimaksimalkan; hormati harkat kemanusiaan, privasi dan hak obyek penelitian tersebut; siapkan pencegahan dan pengobatan bila sampel menderita efek negatif penelitian (jika untuk penelitian medis).</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>BAB III PENUTUP</h2>\r\n\r\n<h3>Kesimpulan</h3>\r\n\r\n<p>Pada prinsipnya sebab-sebab orang melakukan kegiatan penelitian selain untuk memenuhi rasa ingin tahu terhadap sebuah gejala atau peristiwa juga untuk memecahkan masalah secara ilmiah dan dapat diterima dengan logika kemanusiaan.</p>\r\n\r\n<p>Etika penelitian adalah suatu ukuran dari tingkah laku dan perbuatan yang harus dilakukan/diikuti oleh seorang peneliti dalam memperoleh data-data penelitiannya yang disesuaikan dengan adat istiadat serta kebiasaan masyarakat ditempat ia meneliti. Dalam penelitian kualitatif, salah satu ciri utamanya adalah orang sebagai alat/instrument untuk mengumpulkan data. Ini dapat dilakukan dalam pengamatan&nbsp; berperan serta, wawancara mendalam, pengumpulan dokumen, foto, dan sebagainya. Persoalan etika akan timbul apabila peneliti tidak menghormati, tidak mematuhi, dan tidak mengindahkan nilai-nilai masyarakat dan pribadi tersebut. Sementara peneliti tetap berpegang teguh pada latar belakang, norma, adat, kebiasaan, dan kebudayaannya sendiri dalam menghadapi sebuah situasi dan konteks latar penelitiannya tersebut. Penting untuk menjaga hubungan antara peneliti dan pihak yang diteliti yang merupakan kunci penting keberhasilan penelitian, dan diperlukan kepekaan, keterampilan, dan juga seni untuk dapat memasuki lingkungan budaya yang akan diteliti. Kemampuan untuk berempati dan bergaul dengan orang lain jelas merupakan modal&nbsp; penting.</p>\r\n\r\n<p>Etika penelitian berkaitan dengan norma-norma: norma sopan-santun, norma hukum, dan norma moral. Kesemuanya ini patut diperhatikan dan diindahkan supaya&nbsp; penelitian dapat tercapai dengan yang diharapkan. Etika penelitian mencakup: Kejujuran, obyektivitas, integritas, ketelitian, keterbukaan, penghargaan terhadap Hak Atas Kekayaan Intelektual (HAKI), penghargaan terhadap kerahasiaan (Responden), publikasi yang terpercaya, pembinaan yang konstruktif, penghargaan terhadap kolega/rekan kerja, tanggung jawab sosial, tidak melakukan Diskriminasi, kompetensi, legalitas, rancang pengujian dengan hewan&nbsp; percobaan dengan baik, dan mengutamakan keselamatan manusia.</p>\r\n\r\n<h3>Saran</h3>\r\n\r\n<p>Dari makalah yang telah disusun oleh penulis, penulis berharap karya ini bisa menjadi sumber referensi dari para pembaca. Selain itu penulis juga sangat berharap akan ada lagi karya serupa yang lebih sempurna dan mampu melengkapi kekurangan-kekurangan dari makalah ini.</p>\r\n\r\n<h2>DAFTAR PUSTAKA</h2>', 1, 1, 1, '2021-08-21 06:07:08', '2021-08-23 10:09:35', NULL),
(55, 6, 'Plagiarism', 'plagiarism', '1629739035-6584d6c58bc537bb54d311ee4224054a896019f6_hq.jpg', 'Pengertian Plagiarisme: Ruang Lingkup, Tipe, Cara Pencegahan dan Sanksinya – Di dunia tulis menulis yang berhubungan dengan karya kita tidak asing dengan yang namanya plagiarisme. Menurut wikipedia, plagiarisme adalah suatu kegiatan penjimplakan atau pengambilan karangan, pendapat, dan sebagainya dari orang lain dan menjadikannya seolah karangan dan pendapat sendiri.', '<h2><iframe frameborder=\"0\" height=\"500px\" scrolling=\"no\" src=\"https://www.youtube.com/embed/vCXLotchyY0\" width=\"100%\"></iframe></h2>\r\n\r\n<h2>Pengertian Plagiarisme</h2>\r\n\r\n<p><strong>Plagiarisme adalah penjiplakan</strong>&nbsp;yang disengaja dan sesudah 2 &times; 24 jam berita surat kabar tersiar, maka seseorang dapat mengambil alih dengan syarat harus menyebutkan sumbernya. Plagiarisme juga tidak mengacu ke pada hasil karya tulisan saja melainkan juga hasil karya musik, desain, dll.</p>\r\n\r\n<h3>Ruang Lingkup Plagiarisme</h3>\r\n\r\n<p>Plagiarisme adalah tindakan yang tidak baik dilakukan. Supaya Anda lebih mengenal plagiarisme adalah tindakan tidak baik, maka kita cari tahu ruang lingkup plagiarisme.</p>\r\n\r\n<ol>\r\n	<li>Mengutip kata-kata atau kalimat orang lain tanpa menggunakan tanda kutip dan tanpa menyebutkan identitas sumbernya.</li>\r\n	<li>Menggunakan gagasan, pandangan atau teori orang lain tanpa menyebutkan identitas sumbernya.</li>\r\n	<li>Menggunakan fakta (data, informasi) milik orang lain tanpa menyebutkan identitas sumbernya.</li>\r\n	<li>Mengakui tulisan orang lain sebagai tulisan sendiri.</li>\r\n	<li>Melakukan parafrase (mengubah kalimat orang lain ke dalam susunan kalimat sendiri tanpa mengubah idenya) tanpa menyebutkan identitas sumbernya.</li>\r\n	<li>Menyerahkan suatu karya ilmiah yang dihasilkan dan /atau telah dipublikasikan oleh pihak lain seolah-olah sebagai karya sendiri.</li>\r\n</ol>\r\n\r\n<h2>Tipe-tipe Plagiarisme</h2>\r\n\r\n<p>Dikutip dari lib.ugm.ac.id menurut Soelistya (2011) ada beberapa&nbsp;<a href=\"https://penerbitdeepublish.com/teknik-menulis-penerbit-buku-b05/\" rel=\"noreferrer noopener\" target=\"_blank\">jenis plagiarisme</a>&nbsp;adalah:</p>\r\n\r\n<ol>\r\n	<li><strong>Plagiarisme Kata (Word for word Plagiarism)</strong><br />\r\n	Penulis menggunakan kata-kata penulis lain (persis) tanpa menyebutkan sumbernya.</li>\r\n	<li><strong>Plagiarisme Sumber (Plagiarism of Source)</strong><br />\r\n	Penulis menggunakan gagasan orang lain tanpa memberikan pengakuan yang cukup (tanpa menyebutkan sumbernya secara jelas).</li>\r\n	<li><strong>Plagiarisme Kepengarangan (Plagiarism of Authorship)</strong><br />\r\n	Penulis mengakui sebagai pengarang karya tulis karya orang lain.</li>\r\n	<li><strong>Self Plagiarism</strong><br />\r\n	Termasuk dalam tipe ini adalah penulis mempublikasikan satu artikel pada lebih dari satu redaksi publikasi. Dan mendaur ulang karya tulis/ karya ilmiah.<br />\r\n	<br />\r\n	Yang penting dalam self plagiarism adalah bahwa ketika mengambil karya sendiri, maka ciptaan karya baru yang dihasilkan harus memiliki perubahan yang berarti. Artinya Karya lama merupakan bagian kecil dari karya baru yang dihasilkan. Sehingga pembaca akan memperoleh hal baru, yang benar-benar penulis tuangkan pada karya tulis yang menggunakan karya lama.</li>\r\n</ol>\r\n\r\n<p>Lantas pertanyaannya, kenapa tindakan plagiat kerap ditemui? Padahal sudah jelas&nbsp;<strong>plagiarisme adalah termasuk tindak kejahatan intelektual yakni mencuri karya orang lain</strong>.</p>\r\n\r\n<p>Biasanya tindakan plagiat ini terjadi karena beberapa alasan tertentu, entah karena malas, terbatasnya waktu pengerjaan, hingga rendahnya minat baca.</p>\r\n\r\n<p><img alt=\"cara menghindari plagiarisme\" src=\"https://penerbitdeepublish.com/wp-content/uploads/2019/10/cara-menghindari-plagiarisme.jpg\" style=\"height:341px; width:480px\" /></p>\r\n\r\n<p>Bagi mahasiswa atau semua orang mungkin plagiarisme adalah suatu hal yang biasa. Hal ini dikarenakan terbatasnya waktu untuk menyelesaikan sebuah karya ilmiah dan menjadi beban tanggungjawabnya sehingga mahasiswa mau tidak mau segera copy paste karya oranglain saja supaya cepat selesai.</p>\r\n\r\n<p>Bisa dibilang ini awal dari sifat malas, hal tersebut didukung dengan rendahnya minat baca dan minat melakukan analisis sumber referensi yang dimiliki. Alhasil maunya ya langsung jadi.</p>\r\n\r\n<p>Ditambah kurangnya pemahaman tentang kapan dan bagaimana harus melakukan kutipan yang membuat kegiatan plagiat semakin sering ditemui.</p>\r\n\r\n<p>Plagiarisme adalah disebabkan pula karena kurangnya perhatian dari guru ataupun dosen terhadap persoalan plagiarisme.</p>', 3, 0, 1, '2021-08-23 10:17:15', '2021-08-23 20:57:30', NULL);
INSERT INTO `lessons` (`id`, `course_id`, `title`, `slug`, `lesson_image`, `short_text`, `full_text`, `position`, `free_lesson`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(56, 9, 'Regresi Linier', 'regresi-linier', '1629782317-NEED-ooo-eee-2021-7-30-cover.webp', 'Matematika (dari bahasa Yunani: μαθημα - mathēma, \"pengetahuan, pemikiran, pembelajaran\") atau sebelumnya disebut ilmu hisab adalah ilmu yang mempelajari besaran, struktur, ruang, dan perubahan. Para matematikawan merangkai dan menggunakan berbagai pola,[2][3] kemudian menggunakannya untuk merumuskan konjektur baru, dan membangun kebenaran melalui metode deduksi yang ketat diturunkan dari aksioma-aksioma dan definisi-definisi yang bersesuaian.[4]', '<p><iframe frameborder=\"0\" scrolling=\"no\" src=\"&lt;iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/eQv10AP5BG0&quot; title=&quot;YouTube video player&quot; frameborder=&quot;0&quot; allow=&quot;accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture&quot; allowfullscreen&gt;&lt;/iframe&gt;\"></iframe></p>\r\n\r\n<p><strong>Matematika</strong>&nbsp;(dari&nbsp;<a href=\"https://id.wikipedia.org/wiki/Bahasa_Yunani\" title=\"Bahasa Yunani\">bahasa Yunani</a>:&nbsp;<em>&mu;&alpha;&theta;&eta;&mu;&alpha;</em>&nbsp;-&nbsp;<em>mathēma, &quot;pengetahuan, pemikiran,</em>&nbsp;pembelajaran&quot;) atau sebelumnya disebut&nbsp;<strong>ilmu hisab</strong>&nbsp;adalah ilmu yang mempelajari&nbsp;<a href=\"https://id.wikipedia.org/wiki/Besaran\" title=\"Besaran\">besaran</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Struktur\" title=\"Struktur\">struktur</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Ruang\" title=\"Ruang\">ruang</a>, dan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kalkulus\" title=\"Kalkulus\">perubahan</a>. Para&nbsp;<a href=\"https://id.wikipedia.org/wiki/Matematikawan\" title=\"Matematikawan\">matematikawan</a>&nbsp;merangkai dan menggunakan berbagai&nbsp;<a href=\"https://id.wikipedia.org/wiki/Pola\" title=\"Pola\">pola</a>,<sup><a href=\"https://id.wikipedia.org/wiki/Matematika#cite_note-2\">[2]</a></sup><sup><a href=\"https://id.wikipedia.org/wiki/Matematika#cite_note-3\">[3]</a></sup>&nbsp;kemudian menggunakannya untuk merumuskan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Konjektur\" title=\"Konjektur\">konjektur</a>&nbsp;baru, dan membangun kebenaran melalui&nbsp;<a href=\"https://id.wikipedia.org/wiki/Metode_deduksi\" title=\"Metode deduksi\">metode deduksi</a>&nbsp;yang&nbsp;<a href=\"https://id.wikipedia.org/wiki/Ketat\" title=\"Ketat\">ketat</a>&nbsp;diturunkan dari&nbsp;<a href=\"https://id.wikipedia.org/wiki/Aksioma\" title=\"Aksioma\">aksioma-aksioma</a>&nbsp;dan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Definisi\" title=\"Definisi\">definisi-definisi</a>&nbsp;yang bersesuaian.<sup><a href=\"https://id.wikipedia.org/wiki/Matematika#cite_note-4\">[4]</a></sup></p>\r\n\r\n<p><strong>Matematika</strong>&nbsp;(dari&nbsp;<a href=\"https://id.wikipedia.org/wiki/Bahasa_Yunani\" title=\"Bahasa Yunani\">bahasa Yunani</a>:&nbsp;<em>&mu;&alpha;&theta;&eta;&mu;&alpha;</em>&nbsp;-&nbsp;<em>mathēma, &quot;pengetahuan, pemikiran,</em>&nbsp;pembelajaran&quot;) atau sebelumnya disebut&nbsp;<strong>ilmu hisab</strong>&nbsp;adalah ilmu yang mempelajari&nbsp;<a href=\"https://id.wikipedia.org/wiki/Besaran\" title=\"Besaran\">besaran</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Struktur\" title=\"Struktur\">struktur</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Ruang\" title=\"Ruang\">ruang</a>, dan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kalkulus\" title=\"Kalkulus\">perubahan</a>. Para&nbsp;<a href=\"https://id.wikipedia.org/wiki/Matematikawan\" title=\"Matematikawan\">matematikawan</a>&nbsp;merangkai dan menggunakan berbagai&nbsp;<a href=\"https://id.wikipedia.org/wiki/Pola\" title=\"Pola\">pola</a>,<sup><a href=\"https://id.wikipedia.org/wiki/Matematika#cite_note-2\">[2]</a></sup><sup><a href=\"https://id.wikipedia.org/wiki/Matematika#cite_note-3\">[3]</a></sup>&nbsp;kemudian menggunakannya untuk merumuskan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Konjektur\" title=\"Konjektur\">konjektur</a>&nbsp;baru, dan membangun kebenaran melalui&nbsp;<a href=\"https://id.wikipedia.org/wiki/Metode_deduksi\" title=\"Metode deduksi\">metode deduksi</a>&nbsp;yang&nbsp;<a href=\"https://id.wikipedia.org/wiki/Ketat\" title=\"Ketat\">ketat</a>&nbsp;diturunkan dari&nbsp;<a href=\"https://id.wikipedia.org/wiki/Aksioma\" title=\"Aksioma\">aksioma-aksioma</a>&nbsp;dan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Definisi\" title=\"Definisi\">definisi-definisi</a>&nbsp;yang bersesuaian.<sup><a href=\"https://id.wikipedia.org/wiki/Matematika#cite_note-4\">[4]</a></sup></p>\r\n\r\n<p><strong>Matematika</strong>&nbsp;(dari&nbsp;<a href=\"https://id.wikipedia.org/wiki/Bahasa_Yunani\" title=\"Bahasa Yunani\">bahasa Yunani</a>:&nbsp;<em>&mu;&alpha;&theta;&eta;&mu;&alpha;</em>&nbsp;-&nbsp;<em>mathēma, &quot;pengetahuan, pemikiran,</em>&nbsp;pembelajaran&quot;) atau sebelumnya disebut&nbsp;<strong>ilmu hisab</strong>&nbsp;adalah ilmu yang mempelajari&nbsp;<a href=\"https://id.wikipedia.org/wiki/Besaran\" title=\"Besaran\">besaran</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Struktur\" title=\"Struktur\">struktur</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Ruang\" title=\"Ruang\">ruang</a>, dan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Kalkulus\" title=\"Kalkulus\">perubahan</a>. Para&nbsp;<a href=\"https://id.wikipedia.org/wiki/Matematikawan\" title=\"Matematikawan\">matematikawan</a>&nbsp;merangkai dan menggunakan berbagai&nbsp;<a href=\"https://id.wikipedia.org/wiki/Pola\" title=\"Pola\">pola</a>,<sup><a href=\"https://id.wikipedia.org/wiki/Matematika#cite_note-2\">[2]</a></sup><sup><a href=\"https://id.wikipedia.org/wiki/Matematika#cite_note-3\">[3]</a></sup>&nbsp;kemudian menggunakannya untuk merumuskan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Konjektur\" title=\"Konjektur\">konjektur</a>&nbsp;baru, dan membangun kebenaran melalui&nbsp;<a href=\"https://id.wikipedia.org/wiki/Metode_deduksi\" title=\"Metode deduksi\">metode deduksi</a>&nbsp;yang&nbsp;<a href=\"https://id.wikipedia.org/wiki/Ketat\" title=\"Ketat\">ketat</a>&nbsp;diturunkan dari&nbsp;<a href=\"https://id.wikipedia.org/wiki/Aksioma\" title=\"Aksioma\">aksioma-aksioma</a>&nbsp;dan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Definisi\" title=\"Definisi\">definisi-definisi</a>&nbsp;yang bersesuaian.<sup><a href=\"https://id.wikipedia.org/wiki/Matematika#cite_note-4\">[4]</a></sup></p>', 1, 0, 1, '2021-08-23 22:18:37', '2021-08-23 22:18:37', NULL),
(57, 10, 'Android', 'android', '', 'Matematika (dari bahasa Yunani: μαθημα - mathēma, \"pengetahuan, pemikiran, pembelajaran\") atau sebelumnya disebut ilmu hisab adalah ilmu yang mempelajari besaran, struktur, ruang, dan perubahan. Para matematikawan merangkai dan menggunakan berbagai pola,[2][3] kemudian menggunakannya untuk merumuskan konjektur baru, dan membangun kebenaran melalui metode deduksi yang ketat diturunkan dari aksioma-aksioma dan definisi-definisi yang bersesuaian.[4]', '<p><iframe frameborder=\"0\" height=\"500\" scrolling=\"no\" src=\"https://www.youtube.com/embed/eQv10AP5BG0\" width=\"100%\"></iframe></p>', 1, 0, 1, '2021-08-23 22:25:35', '2021-08-23 22:25:35', NULL);

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
(8, 2, '2021-08-21 06:20:56', '2021-08-21 06:20:56'),
(51, 2, '2021-08-21 13:24:05', '2021-08-21 13:24:05'),
(7, 2, '2021-08-21 06:25:19', '2021-08-21 06:25:19'),
(2, 2, '2021-08-21 06:25:22', '2021-08-21 06:25:22'),
(9, 2, '2021-08-21 06:25:23', '2021-08-21 06:25:23'),
(1, 2, '2021-08-21 06:25:25', '2021-08-21 06:25:25'),
(52, 2, '2021-08-21 06:29:19', '2021-08-21 06:29:19'),
(8, 4, '2021-08-23 04:40:00', '2021-08-23 04:40:00'),
(5, 4, '2021-08-23 04:40:04', '2021-08-23 04:40:04'),
(7, 4, '2021-08-23 04:40:07', '2021-08-23 04:40:07'),
(2, 4, '2021-08-23 04:59:48', '2021-08-23 04:59:48'),
(5, 2, '2021-08-23 05:24:51', '2021-08-23 05:24:51'),
(55, 2, '2021-08-23 10:17:25', '2021-08-23 10:17:25'),
(56, 5, '2021-08-23 22:21:02', '2021-08-23 22:21:02'),
(57, 2, '2021-08-23 22:25:55', '2021-08-23 22:25:55'),
(57, 4, '2021-11-02 09:24:58', '2021-11-02 09:24:58'),
(51, 4, '2021-11-02 09:34:11', '2021-11-02 09:34:11');

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
(1, 51, 'App\\Lesson', 'downloadable_files', 'Nurul Amala Azza_4817040347_Thesis', 'Nurul Amala Azza_4817040347_Thesis.pptx', 'media', 1331996, '[]', '[]', 1, '2021-08-21 05:55:46', '2021-08-21 05:55:54'),
(3, 52, 'App\\Lesson', 'downloadable_files', 'Panduan Instalasi Team Viewer', 'Panduan Instalasi Team Viewer.pdf', 'media', 444623, '[]', '[]', 1, '2021-08-22 19:50:26', '2021-08-22 19:50:31'),
(5, 55, 'App\\Lesson', 'downloadable_files', 'a4 tambahin dikit', 'a4 tambahin dikit.pdf', 'media', 416441, '[]', '[]', 1, '2021-08-23 20:57:29', '2021-08-23 20:57:30');

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
(20, '2016_07_29_171118_create_chatter_categories_table', 2),
(21, '2016_07_29_171118_create_chatter_discussion_table', 2),
(22, '2016_07_29_171118_create_chatter_post_table', 2),
(23, '2016_07_29_171128_create_foreign_keys', 2),
(24, '2016_08_02_183143_add_slug_field_for_discussions', 2),
(25, '2016_08_03_121747_add_color_row_to_chatter_discussions', 2),
(26, '2021_11_03_183644_create_posts_comments_table', 3),
(27, '2021_11_03_194208_create_comments_table', 4);

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
(1, 'user_management_access', '2021-08-20 08:41:20', '2021-08-20 08:41:20'),
(2, 'user_management_create', '2021-08-20 08:41:20', '2021-08-20 08:41:20'),
(3, 'user_management_edit', '2021-08-20 08:41:20', '2021-08-20 08:41:20'),
(4, 'user_management_view', '2021-08-20 08:41:21', '2021-08-20 08:41:21'),
(5, 'user_management_delete', '2021-08-20 08:41:21', '2021-08-20 08:41:21'),
(6, 'permission_access', '2021-08-20 08:41:21', '2021-08-20 08:41:21'),
(7, 'permission_create', '2021-08-20 08:41:21', '2021-08-20 08:41:21'),
(8, 'permission_edit', '2021-08-20 08:41:21', '2021-08-20 08:41:21'),
(9, 'permission_view', '2021-08-20 08:41:21', '2021-08-20 08:41:21'),
(10, 'permission_delete', '2021-08-20 08:41:21', '2021-08-20 08:41:21'),
(11, 'role_access', '2021-08-20 08:41:21', '2021-08-20 08:41:21'),
(12, 'role_create', '2021-08-20 08:41:21', '2021-08-20 08:41:21'),
(13, 'role_edit', '2021-08-20 08:41:21', '2021-08-20 08:41:21'),
(14, 'role_view', '2021-08-20 08:41:21', '2021-08-20 08:41:21'),
(15, 'role_delete', '2021-08-20 08:41:21', '2021-08-20 08:41:21'),
(16, 'user_access', '2021-08-20 08:41:21', '2021-08-20 08:41:21'),
(17, 'user_create', '2021-08-20 08:41:21', '2021-08-20 08:41:21'),
(18, 'user_edit', '2021-08-20 08:41:21', '2021-08-20 08:41:21'),
(19, 'user_view', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(20, 'user_delete', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(21, 'course_access', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(22, 'course_create', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(23, 'course_edit', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(24, 'course_view', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(25, 'course_delete', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(26, 'lesson_access', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(27, 'lesson_create', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(28, 'lesson_edit', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(29, 'lesson_view', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(30, 'lesson_delete', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(31, 'question_access', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(32, 'question_create', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(33, 'question_edit', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(34, 'question_view', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(35, 'question_delete', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(36, 'questions_option_access', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(37, 'questions_option_create', '2021-08-20 08:41:22', '2021-08-20 08:41:22'),
(38, 'questions_option_edit', '2021-08-20 08:41:23', '2021-08-20 08:41:23'),
(39, 'questions_option_view', '2021-08-20 08:41:23', '2021-08-20 08:41:23'),
(40, 'questions_option_delete', '2021-08-20 08:41:23', '2021-08-20 08:41:23'),
(41, 'test_access', '2021-08-20 08:41:23', '2021-08-20 08:41:23'),
(42, 'test_create', '2021-08-20 08:41:23', '2021-08-20 08:41:23'),
(43, 'test_edit', '2021-08-20 08:41:23', '2021-08-20 08:41:23'),
(44, 'test_view', '2021-08-20 08:41:23', '2021-08-20 08:41:23'),
(45, 'test_delete', '2021-08-20 08:41:23', '2021-08-20 08:41:23');

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
(44, 3);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `question_image`, `score`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Distinctio doloremque et aut.?', NULL, 1, '2021-08-20 08:41:46', '2021-08-21 05:48:55', '2021-08-21 05:48:55'),
(2, 'Quia ipsam quasi consequatur.?', NULL, 1, '2021-08-20 08:41:46', '2021-08-21 05:48:55', '2021-08-21 05:48:55'),
(3, 'Est quia repudiandae cum nulla.?', NULL, 1, '2021-08-20 08:41:46', '2021-08-21 05:48:55', '2021-08-21 05:48:55'),
(4, 'Nihil iusto enim consequatur dolorum.?', NULL, 1, '2021-08-20 08:41:46', '2021-08-21 05:48:55', '2021-08-21 05:48:55'),
(5, 'Voluptatem enim tenetur sunt nihil quis id.?', NULL, 1, '2021-08-20 08:41:46', '2021-08-21 05:48:55', '2021-08-21 05:48:55'),
(6, 'Quas quam debitis dignissimos est libero.?', NULL, 1, '2021-08-20 08:41:46', '2021-08-21 05:48:55', '2021-08-21 05:48:55'),
(7, 'Eos expedita eos architecto.?', NULL, 1, '2021-08-20 08:41:46', '2021-08-21 05:48:55', '2021-08-21 05:48:55'),
(8, 'Similique est illum libero numquam.?', NULL, 1, '2021-08-20 08:41:46', '2021-08-21 05:48:55', '2021-08-21 05:48:55'),
(9, 'Corrupti officiis modi sapiente dolor minus.?', NULL, 1, '2021-08-20 08:41:46', '2021-08-21 05:48:55', '2021-08-21 05:48:55'),
(10, 'Unde officiis est inventore. Est vero et sunt ut.?', NULL, 1, '2021-08-20 08:41:47', '2021-08-21 05:48:55', '2021-08-21 05:48:55'),
(11, 'Assumenda sunt veritatis mollitia.?', NULL, 1, '2021-08-20 08:41:47', '2021-08-21 05:48:55', '2021-08-21 05:48:55'),
(12, 'Quia consequatur qui ut dignissimos.?', NULL, 1, '2021-08-20 08:41:47', '2021-08-21 05:48:55', '2021-08-21 05:48:55'),
(13, 'Nobis distinctio numquam sunt maiores.?', NULL, 1, '2021-08-20 08:41:47', '2021-08-21 05:48:55', '2021-08-21 05:48:55'),
(14, 'Similique nostrum ut minima autem quaerat.?', NULL, 1, '2021-08-20 08:41:47', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(15, 'Officiis eos sunt voluptatum accusamus doloribus.?', NULL, 1, '2021-08-20 08:41:47', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(16, 'Dicta qui est accusantium tenetur natus mollitia.?', NULL, 1, '2021-08-20 08:41:47', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(17, 'Sit nihil dicta et consequatur expedita.?', NULL, 1, '2021-08-20 08:41:47', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(18, 'Ut cum nihil ut distinctio.?', NULL, 1, '2021-08-20 08:41:47', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(19, 'Tempora necessitatibus id optio officiis.?', NULL, 1, '2021-08-20 08:41:47', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(20, 'Consequatur ullam doloremque quo autem.?', NULL, 1, '2021-08-20 08:41:48', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(21, 'Ea non odio dolorem.?', NULL, 1, '2021-08-20 08:41:48', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(22, 'Quo cumque in saepe consequuntur.?', NULL, 1, '2021-08-20 08:41:48', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(23, 'Reiciendis quia qui rem.?', NULL, 1, '2021-08-20 08:41:48', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(24, 'Blanditiis corrupti sit quidem accusantium ut.?', NULL, 1, '2021-08-20 08:41:48', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(25, 'In magni est officia et aut fuga.?', NULL, 1, '2021-08-20 08:41:48', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(26, 'Tenetur ut incidunt officiis quis quis.?', NULL, 1, '2021-08-20 08:41:48', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(27, 'Reprehenderit quis dolore vero saepe in.?', NULL, 1, '2021-08-20 08:41:48', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(28, 'Soluta et fuga nisi cumque.?', NULL, 1, '2021-08-20 08:41:48', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(29, 'Amet quo soluta quasi eos et sunt.?', NULL, 1, '2021-08-20 08:41:48', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(30, 'Expedita dolorum temporibus odio quis omnis.?', NULL, 1, '2021-08-20 08:41:48', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(31, 'Enim ut et numquam et sint unde.?', NULL, 1, '2021-08-20 08:41:48', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(32, 'Fuga totam eligendi sed neque iusto ullam autem.?', NULL, 1, '2021-08-20 08:41:48', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(33, 'Itaque eum asperiores enim ut aut quis molestiae.?', NULL, 1, '2021-08-20 08:41:48', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(34, 'Dolor a hic laborum accusamus quisquam quas est.?', NULL, 1, '2021-08-20 08:41:48', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(35, 'Facere nobis enim incidunt hic placeat ut.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(36, 'Ut ut ipsa et architecto.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(37, 'Aperiam asperiores aliquid occaecati.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:56', '2021-08-21 05:48:56'),
(38, 'Rerum accusamus quia dolore ea ut ut.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:57', '2021-08-21 05:48:57'),
(39, 'Nobis eum aut consequatur consequatur non.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:57', '2021-08-21 05:48:57'),
(40, 'Libero molestiae tempore corrupti sit.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:57', '2021-08-21 05:48:57'),
(41, 'Aut quaerat error adipisci aut quidem.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:57', '2021-08-21 05:48:57'),
(42, 'Ut cupiditate optio adipisci nostrum.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:57', '2021-08-21 05:48:57'),
(43, 'Error sit inventore fugit hic sit.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:57', '2021-08-21 05:48:57'),
(44, 'Quisquam cum sed quis veritatis.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:57', '2021-08-21 05:48:57'),
(45, 'Et dolores est aliquam.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:57', '2021-08-21 05:48:57'),
(46, 'Odio voluptates tempora cum minima.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:57', '2021-08-21 05:48:57'),
(47, 'Illum molestiae error est eos.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:57', '2021-08-21 05:48:57'),
(48, 'Assumenda et provident recusandae.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:57', '2021-08-21 05:48:57'),
(49, 'Qui quia voluptatem dolor assumenda expedita.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:57', '2021-08-21 05:48:57'),
(50, 'Voluptatum illum sed nihil non.?', NULL, 1, '2021-08-20 08:41:49', '2021-08-21 05:48:57', '2021-08-21 05:48:57'),
(51, 'apa itu cinta?', '1629474745-unnamed (5).jpg', 5, '2021-08-20 08:52:25', '2021-08-21 05:48:57', '2021-08-21 05:48:57'),
(52, 'apa itu bahagia?', '', 5, '2021-08-20 08:53:44', '2021-08-21 05:48:57', '2021-08-21 05:48:57'),
(53, 'Yang bener a', NULL, 5, '2021-08-21 06:01:23', '2021-08-21 06:01:23', NULL),
(54, 'yang bener c', NULL, 5, '2021-08-21 06:01:53', '2021-08-21 06:01:53', NULL),
(55, 'detak nafasmu?', NULL, 5, '2021-11-02 09:21:25', '2021-11-02 09:21:25', NULL);

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
(1, 1, 'Ut facilis omnis veritatis dolore.?', 1, '2021-08-20 08:41:49', '2021-08-21 05:49:08', '2021-08-21 05:49:08'),
(2, 1, 'Nulla unde ea iste ipsum omnis velit iusto.?', 0, '2021-08-20 08:41:49', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(3, 1, 'Iste consequuntur vel dolor enim.?', 1, '2021-08-20 08:41:49', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(4, 1, 'Nisi nihil at aspernatur eos ullam vel magnam.?', 1, '2021-08-20 08:41:49', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(5, 2, 'Voluptates laboriosam totam sit ex voluptas.?', 0, '2021-08-20 08:41:50', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(6, 2, 'Temporibus nihil deleniti reiciendis et quo.?', 1, '2021-08-20 08:41:50', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(7, 2, 'Odio aut voluptatibus eum ex deserunt.?', 0, '2021-08-20 08:41:50', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(8, 2, 'Iusto consectetur modi perspiciatis consequuntur.?', 0, '2021-08-20 08:41:50', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(9, 3, 'Ullam perspiciatis et dolorem expedita quasi.?', 0, '2021-08-20 08:41:50', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(10, 3, 'Enim expedita assumenda sunt quis beatae.?', 0, '2021-08-20 08:41:50', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(11, 3, 'Rerum qui corrupti ab similique unde.?', 1, '2021-08-20 08:41:50', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(12, 3, 'Voluptas nam odit vel voluptate.?', 0, '2021-08-20 08:41:50', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(13, 4, 'Et aspernatur nulla ut alias.?', 1, '2021-08-20 08:41:51', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(14, 4, 'Alias sint qui eveniet autem vel.?', 1, '2021-08-20 08:41:51', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(15, 4, 'Eligendi dolor magni natus id et sit ut.?', 0, '2021-08-20 08:41:51', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(16, 4, 'Architecto est ut architecto ea et.?', 1, '2021-08-20 08:41:51', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(17, 5, 'Sed qui id rem nesciunt sed.?', 1, '2021-08-20 08:41:51', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(18, 5, 'Consectetur vel vitae ea aperiam.?', 1, '2021-08-20 08:41:51', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(19, 5, 'Illo et qui sit sint.?', 0, '2021-08-20 08:41:51', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(20, 5, 'Suscipit a qui cupiditate magnam.?', 1, '2021-08-20 08:41:51', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(21, 6, 'Earum laboriosam cupiditate repellat incidunt et.?', 0, '2021-08-20 08:41:52', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(22, 6, 'Ducimus fuga itaque sint minima.?', 1, '2021-08-20 08:41:52', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(23, 6, 'Ut voluptas tempore minus ratione.?', 1, '2021-08-20 08:41:52', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(24, 6, 'Omnis voluptatem temporibus iusto.?', 1, '2021-08-20 08:41:52', '2021-08-21 05:49:09', '2021-08-21 05:49:09'),
(25, 7, 'Asperiores ipsam quas reiciendis recusandae.?', 1, '2021-08-20 08:41:52', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(26, 7, 'Nam illum veritatis dicta et sint sunt.?', 1, '2021-08-20 08:41:52', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(27, 7, 'Laborum ullam voluptatem voluptas nihil.?', 0, '2021-08-20 08:41:52', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(28, 7, 'Itaque tenetur aut fugiat nesciunt et vel non.?', 0, '2021-08-20 08:41:52', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(29, 8, 'Dicta aperiam vitae consequatur unde voluptas.?', 0, '2021-08-20 08:41:53', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(30, 8, 'Unde et illum velit autem in amet.?', 0, '2021-08-20 08:41:53', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(31, 8, 'Fugit qui porro qui quod ut repudiandae sit.?', 1, '2021-08-20 08:41:53', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(32, 8, 'Illo repudiandae minus distinctio est veniam.?', 0, '2021-08-20 08:41:53', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(33, 9, 'Sed veritatis nostrum laboriosam fuga vero sed.?', 0, '2021-08-20 08:41:53', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(34, 9, 'Atque est facere voluptatum nihil fuga et.?', 0, '2021-08-20 08:41:53', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(35, 9, 'Assumenda nihil id alias voluptatem ipsa.?', 0, '2021-08-20 08:41:53', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(36, 9, 'Voluptas dolores aut et earum minima autem ut.?', 0, '2021-08-20 08:41:54', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(37, 10, 'Quo libero quam at sed repudiandae dolor est.?', 1, '2021-08-20 08:41:54', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(38, 10, 'Exercitationem autem dolores modi occaecati.?', 0, '2021-08-20 08:41:54', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(39, 10, 'Et sit facere iusto totam.?', 0, '2021-08-20 08:41:54', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(40, 10, 'Quisquam quaerat optio et.?', 0, '2021-08-20 08:41:54', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(41, 11, 'Officiis ut aut labore magnam.?', 0, '2021-08-20 08:41:54', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(42, 11, 'Corporis enim aut omnis et explicabo.?', 1, '2021-08-20 08:41:55', '2021-08-21 05:49:10', '2021-08-21 05:49:10'),
(43, 11, 'Aut velit necessitatibus aut voluptatem sint.?', 0, '2021-08-20 08:41:55', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(44, 11, 'Cupiditate porro qui commodi beatae.?', 0, '2021-08-20 08:41:55', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(45, 12, 'Et quis iure omnis eius aliquid.?', 1, '2021-08-20 08:41:55', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(46, 12, 'A doloremque iste quo unde dolorem quos.?', 1, '2021-08-20 08:41:55', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(47, 12, 'Unde natus molestiae quia.?', 0, '2021-08-20 08:41:55', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(48, 12, 'Et quam at nam excepturi.?', 1, '2021-08-20 08:41:55', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(49, 13, 'Nobis quaerat quam sunt veritatis.?', 0, '2021-08-20 08:41:56', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(50, 13, 'Nam consequatur quis voluptates est.?', 0, '2021-08-20 08:41:56', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(51, 13, 'Eum molestias vitae ducimus illum.?', 0, '2021-08-20 08:41:56', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(52, 13, 'Rem at nemo quia enim rem rem.?', 1, '2021-08-20 08:41:56', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(53, 14, 'Iure quia voluptatum dolorum quo omnis et ab.?', 0, '2021-08-20 08:41:56', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(54, 14, 'In eum repellat aut.?', 0, '2021-08-20 08:41:56', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(55, 14, 'Et laudantium accusantium aut natus.?', 0, '2021-08-20 08:41:56', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(56, 14, 'Autem aut aut magni autem.?', 0, '2021-08-20 08:41:56', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(57, 15, 'Voluptatem in quis dolores quia repellendus et.?', 0, '2021-08-20 08:41:57', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(58, 15, 'Ut beatae non non vero.?', 1, '2021-08-20 08:41:57', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(59, 15, 'Non quasi debitis consequatur ut alias.?', 0, '2021-08-20 08:41:57', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(60, 15, 'Sed eum consequatur qui laudantium voluptas.?', 0, '2021-08-20 08:41:57', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(61, 16, 'Voluptate qui iusto et atque dolor dicta esse.?', 1, '2021-08-20 08:41:57', '2021-08-21 05:49:11', '2021-08-21 05:49:11'),
(62, 16, 'Excepturi consequuntur ipsa ex.?', 0, '2021-08-20 08:41:57', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(63, 16, 'Laboriosam consequatur vero nam praesentium.?', 0, '2021-08-20 08:41:57', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(64, 16, 'Eaque commodi maiores nemo ratione blanditiis.?', 1, '2021-08-20 08:41:58', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(65, 17, 'Mollitia maiores suscipit voluptatem et nostrum.?', 1, '2021-08-20 08:41:58', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(66, 17, 'Minus dolores alias ratione rerum.?', 0, '2021-08-20 08:41:58', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(67, 17, 'Excepturi qui et nihil eum et et.?', 0, '2021-08-20 08:41:58', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(68, 17, 'Eos in voluptatem sit eligendi vel eos aut.?', 0, '2021-08-20 08:41:58', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(69, 18, 'Et quia doloribus qui atque.?', 1, '2021-08-20 08:41:59', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(70, 18, 'Hic vel accusamus et veritatis a sapiente optio.?', 0, '2021-08-20 08:41:59', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(71, 18, 'Rerum recusandae qui consequuntur deserunt.?', 0, '2021-08-20 08:41:59', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(72, 18, 'At est earum quod excepturi magni quia.?', 0, '2021-08-20 08:41:59', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(73, 19, 'Et hic dolores et laborum.?', 0, '2021-08-20 08:41:59', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(74, 19, 'Libero qui est quasi qui nihil minima aliquam.?', 1, '2021-08-20 08:41:59', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(75, 19, 'Reiciendis sunt qui sint.?', 0, '2021-08-20 08:41:59', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(76, 19, 'Dicta commodi aut sit cum.?', 1, '2021-08-20 08:41:59', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(77, 20, 'Dolores et voluptatibus molestiae.?', 1, '2021-08-20 08:42:00', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(78, 20, 'Tempore dolorem vitae ullam ut.?', 0, '2021-08-20 08:42:00', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(79, 20, 'Optio repudiandae minima explicabo ut recusandae.?', 0, '2021-08-20 08:42:00', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(80, 20, 'Aut cupiditate sapiente alias placeat.?', 0, '2021-08-20 08:42:00', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(81, 21, 'Aut qui porro delectus quia. Aut in nostrum qui.?', 1, '2021-08-20 08:42:00', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(82, 21, 'Voluptas possimus qui ex aut labore.?', 1, '2021-08-20 08:42:00', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(83, 21, 'Quod est dolores sit et occaecati.?', 0, '2021-08-20 08:42:00', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(84, 21, 'Fugit placeat optio quasi et aut dolorem.?', 0, '2021-08-20 08:42:01', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(85, 22, 'Sed maxime sed eligendi quo molestias error.?', 1, '2021-08-20 08:42:01', '2021-08-21 05:49:12', '2021-08-21 05:49:12'),
(86, 22, 'Impedit minima nisi id delectus et.?', 0, '2021-08-20 08:42:01', '2021-08-21 05:49:13', '2021-08-21 05:49:13'),
(87, 22, 'Molestiae animi dolores eveniet iste consequatur.?', 0, '2021-08-20 08:42:01', '2021-08-21 05:49:13', '2021-08-21 05:49:13'),
(88, 22, 'Est quis nulla aut est alias ad excepturi est.?', 1, '2021-08-20 08:42:01', '2021-08-21 05:49:14', '2021-08-21 05:49:14'),
(89, 23, 'Qui dignissimos expedita totam praesentium.?', 1, '2021-08-20 08:42:01', '2021-08-21 05:49:14', '2021-08-21 05:49:14'),
(90, 23, 'Atque qui ratione atque iste reiciendis.?', 0, '2021-08-20 08:42:01', '2021-08-21 05:49:14', '2021-08-21 05:49:14'),
(91, 23, 'Aspernatur voluptatem nemo omnis laboriosam rem.?', 1, '2021-08-20 08:42:01', '2021-08-21 05:49:14', '2021-08-21 05:49:14'),
(92, 23, 'Qui et voluptatem voluptatem corporis qui.?', 0, '2021-08-20 08:42:01', '2021-08-21 05:49:14', '2021-08-21 05:49:14'),
(93, 24, 'Culpa dolorum ullam assumenda ullam rerum rerum.?', 0, '2021-08-20 08:42:02', '2021-08-21 05:49:14', '2021-08-21 05:49:14'),
(94, 24, 'Recusandae facere iusto aut et illo in non.?', 1, '2021-08-20 08:42:02', '2021-08-21 05:49:15', '2021-08-21 05:49:15'),
(95, 24, 'Modi nihil et sequi iste qui corrupti.?', 1, '2021-08-20 08:42:02', '2021-08-21 05:49:15', '2021-08-21 05:49:15'),
(96, 24, 'Velit sunt nihil odit accusamus cumque.?', 1, '2021-08-20 08:42:02', '2021-08-21 05:49:16', '2021-08-21 05:49:16'),
(97, 25, 'Harum at facere quia porro dolores ut.?', 1, '2021-08-20 08:42:02', '2021-08-21 05:49:17', '2021-08-21 05:49:17'),
(98, 25, 'Debitis perferendis dolorum quae ad.?', 0, '2021-08-20 08:42:02', '2021-08-21 05:49:18', '2021-08-21 05:49:18'),
(99, 25, 'Sit minima libero ex et placeat.?', 0, '2021-08-20 08:42:02', '2021-08-21 05:49:18', '2021-08-21 05:49:18'),
(100, 25, 'Doloremque quae dicta laborum.?', 1, '2021-08-20 08:42:02', '2021-08-21 05:49:18', '2021-08-21 05:49:18'),
(101, 26, 'Quod provident porro quia.?', 0, '2021-08-20 08:42:02', '2021-08-21 05:49:33', '2021-08-21 05:49:33'),
(102, 26, 'Quia vitae sunt adipisci pariatur.?', 1, '2021-08-20 08:42:02', '2021-08-21 05:49:33', '2021-08-21 05:49:33'),
(103, 26, 'Aliquid id et dolores rerum.?', 0, '2021-08-20 08:42:03', '2021-08-21 05:49:33', '2021-08-21 05:49:33'),
(104, 26, 'Commodi assumenda nihil quo aut.?', 1, '2021-08-20 08:42:03', '2021-08-21 05:49:33', '2021-08-21 05:49:33'),
(105, 27, 'Temporibus labore vitae maiores ad.?', 0, '2021-08-20 08:42:03', '2021-08-21 05:49:33', '2021-08-21 05:49:33'),
(106, 27, 'Reprehenderit unde ducimus impedit quis.?', 0, '2021-08-20 08:42:03', '2021-08-21 05:49:33', '2021-08-21 05:49:33'),
(107, 27, 'Qui sint labore qui non voluptatem rerum.?', 1, '2021-08-20 08:42:03', '2021-08-21 05:49:33', '2021-08-21 05:49:33'),
(108, 27, 'Molestiae ratione ut incidunt reiciendis non.?', 0, '2021-08-20 08:42:03', '2021-08-21 05:49:33', '2021-08-21 05:49:33'),
(109, 28, 'Eum aut aliquid libero.?', 0, '2021-08-20 08:42:03', '2021-08-21 05:49:33', '2021-08-21 05:49:33'),
(110, 28, 'Cum officiis consequatur aperiam ullam et iure.?', 1, '2021-08-20 08:42:03', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(111, 28, 'Cum aut earum quis numquam ex corporis ipsa et.?', 0, '2021-08-20 08:42:03', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(112, 28, 'Vel sunt accusantium odio vel quae.?', 1, '2021-08-20 08:42:03', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(113, 29, 'Odit esse facere in similique ducimus.?', 1, '2021-08-20 08:42:04', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(114, 29, 'Et sit sint et qui aspernatur doloribus iure.?', 1, '2021-08-20 08:42:04', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(115, 29, 'Possimus asperiores voluptatum laudantium et.?', 0, '2021-08-20 08:42:04', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(116, 29, 'Qui corrupti ex totam nihil in officia sed.?', 0, '2021-08-20 08:42:04', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(117, 30, 'Vel ea vero alias nam pariatur quae.?', 1, '2021-08-20 08:42:04', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(118, 30, 'Illo autem rerum ut quia ex.?', 0, '2021-08-20 08:42:04', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(119, 30, 'Deserunt quod explicabo officia rerum vero.?', 0, '2021-08-20 08:42:04', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(120, 30, 'Sit voluptates ut incidunt vero.?', 0, '2021-08-20 08:42:04', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(121, 31, 'Numquam id illo enim sunt in ipsam.?', 0, '2021-08-20 08:42:05', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(122, 31, 'Quia quae sint veniam voluptatem.?', 1, '2021-08-20 08:42:05', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(123, 31, 'Nostrum delectus rerum enim fugit totam quia.?', 0, '2021-08-20 08:42:05', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(124, 31, 'Debitis quibusdam aut corporis vel corrupti.?', 1, '2021-08-20 08:42:05', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(125, 32, 'Ducimus explicabo voluptatibus earum.?', 1, '2021-08-20 08:42:05', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(126, 32, 'Dolor sapiente omnis sint quos.?', 0, '2021-08-20 08:42:05', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(127, 32, 'Rerum iure assumenda aut nisi facilis enim.?', 0, '2021-08-20 08:42:05', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(128, 32, 'Illo ab fugit aut ut.?', 1, '2021-08-20 08:42:05', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(129, 33, 'Ea animi eaque qui quo sint quis rerum qui.?', 0, '2021-08-20 08:42:06', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(130, 33, 'Ut vel fugit quos sequi numquam omnis sint.?', 0, '2021-08-20 08:42:06', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(131, 33, 'Ea facilis ipsa sunt voluptates qui dolorum.?', 0, '2021-08-20 08:42:06', '2021-08-21 05:49:34', '2021-08-21 05:49:34'),
(132, 33, 'Natus voluptatem error voluptas facere ipsam.?', 0, '2021-08-20 08:42:06', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(133, 34, 'Ex dolor odit quis perspiciatis.?', 1, '2021-08-20 08:42:06', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(134, 34, 'Eum natus et voluptatem eligendi veritatis.?', 0, '2021-08-20 08:42:06', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(135, 34, 'Pariatur esse quidem maiores itaque expedita.?', 0, '2021-08-20 08:42:06', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(136, 34, 'Qui optio est aut est. Sequi alias hic occaecati.?', 1, '2021-08-20 08:42:07', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(137, 35, 'Perspiciatis accusamus repellendus consequatur.?', 1, '2021-08-20 08:42:07', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(138, 35, 'Sed voluptates modi aut accusantium nam dolor.?', 0, '2021-08-20 08:42:07', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(139, 35, 'Tempora odit quis asperiores sunt ea ut.?', 1, '2021-08-20 08:42:07', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(140, 35, 'Asperiores reiciendis quia tempora ea.?', 1, '2021-08-20 08:42:07', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(141, 36, 'Cum eum officiis ipsum voluptas explicabo facere.?', 1, '2021-08-20 08:42:07', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(142, 36, 'Architecto in beatae ut odit.?', 0, '2021-08-20 08:42:07', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(143, 36, 'Et esse placeat beatae perferendis natus officia.?', 0, '2021-08-20 08:42:07', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(144, 36, 'Reprehenderit repudiandae magnam culpa ut.?', 0, '2021-08-20 08:42:07', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(145, 37, 'Aut hic et odio et culpa.?', 1, '2021-08-20 08:42:08', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(146, 37, 'Qui architecto temporibus error pariatur unde id.?', 0, '2021-08-20 08:42:08', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(147, 37, 'Quo et temporibus sequi dolore.?', 1, '2021-08-20 08:42:08', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(148, 37, 'Sed magni soluta molestiae quia.?', 0, '2021-08-20 08:42:08', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(149, 38, 'Non magnam non doloribus ut.?', 1, '2021-08-20 08:42:08', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(150, 38, 'Impedit nam aut fugit vitae id.?', 1, '2021-08-20 08:42:08', '2021-08-21 05:49:35', '2021-08-21 05:49:35'),
(151, 38, 'Sequi pariatur odit sed nihil.?', 1, '2021-08-20 08:42:08', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(152, 38, 'Est aut culpa eos nulla dolorum.?', 0, '2021-08-20 08:42:09', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(153, 39, 'Earum quidem at dolores officiis nisi aut.?', 0, '2021-08-20 08:42:09', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(154, 39, 'Maiores maxime suscipit quis quis.?', 1, '2021-08-20 08:42:09', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(155, 39, 'Qui eligendi ipsa ea eum.?', 1, '2021-08-20 08:42:09', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(156, 39, 'Ut neque impedit repellendus dolores magnam.?', 0, '2021-08-20 08:42:09', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(157, 40, 'Totam mollitia nesciunt reiciendis sit.?', 0, '2021-08-20 08:42:09', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(158, 40, 'Fugit magnam deleniti ullam tempore.?', 0, '2021-08-20 08:42:09', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(159, 40, 'Deleniti magnam nemo rerum qui velit aut.?', 0, '2021-08-20 08:42:10', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(160, 40, 'Commodi eligendi quaerat minus atque velit.?', 0, '2021-08-20 08:42:10', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(161, 41, 'Aliquam placeat nostrum autem.?', 0, '2021-08-20 08:42:10', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(162, 41, 'Libero et maxime rerum mollitia quis eos.?', 0, '2021-08-20 08:42:10', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(163, 41, 'Sed earum est et enim.?', 1, '2021-08-20 08:42:10', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(164, 41, 'Ipsam consequuntur sint possimus aut.?', 0, '2021-08-20 08:42:10', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(165, 42, 'Ad sit porro non. Ut accusantium tempora eos.?', 0, '2021-08-20 08:42:10', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(166, 42, 'Architecto vel eum voluptatibus asperiores.?', 0, '2021-08-20 08:42:10', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(167, 42, 'Labore dolorem quo consequatur quia.?', 1, '2021-08-20 08:42:10', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(168, 42, 'Quasi autem repellat repellat occaecati.?', 0, '2021-08-20 08:42:10', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(169, 43, 'Dolor amet quas earum omnis harum voluptas eaque.?', 1, '2021-08-20 08:42:11', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(170, 43, 'Pariatur totam sunt fugiat sit.?', 0, '2021-08-20 08:42:11', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(171, 43, 'Molestiae voluptas fuga vero maiores eveniet.?', 0, '2021-08-20 08:42:11', '2021-08-21 05:49:36', '2021-08-21 05:49:36'),
(172, 43, 'Possimus eius iste qui praesentium eveniet.?', 0, '2021-08-20 08:42:11', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(173, 44, 'Corrupti cum repudiandae voluptas eaque error.?', 1, '2021-08-20 08:42:11', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(174, 44, 'Quia impedit voluptatem dignissimos error vero a.?', 1, '2021-08-20 08:42:11', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(175, 44, 'Cumque quas omnis voluptatem aut aut ut.?', 1, '2021-08-20 08:42:11', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(176, 44, 'Odit velit nemo ex et.?', 1, '2021-08-20 08:42:11', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(177, 45, 'Assumenda rerum ut ut eum suscipit libero.?', 0, '2021-08-20 08:42:11', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(178, 45, 'Nesciunt est quis neque porro.?', 1, '2021-08-20 08:42:12', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(179, 45, 'Saepe et quos ea adipisci nemo.?', 0, '2021-08-20 08:42:12', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(180, 45, 'Aspernatur ut facilis ratione quas at corporis.?', 1, '2021-08-20 08:42:12', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(181, 46, 'Et et beatae minima doloremque.?', 0, '2021-08-20 08:42:12', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(182, 46, 'Fuga rerum enim facere. Iste in sit qui odit.?', 0, '2021-08-20 08:42:12', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(183, 46, 'Itaque ex illo occaecati.?', 1, '2021-08-20 08:42:12', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(184, 46, 'Ut rerum minus fugit amet nihil laudantium sed.?', 0, '2021-08-20 08:42:12', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(185, 47, 'Velit aut quas repellat deserunt aut quaerat.?', 0, '2021-08-20 08:42:13', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(186, 47, 'Eum quibusdam quo voluptatem magnam.?', 0, '2021-08-20 08:42:13', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(187, 47, 'Dolore animi excepturi iure non porro saepe.?', 0, '2021-08-20 08:42:13', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(188, 47, 'Ut aut itaque delectus iusto voluptatum.?', 0, '2021-08-20 08:42:13', '2021-08-21 05:49:37', '2021-08-21 05:49:37'),
(189, 48, 'Et nihil nisi rerum sequi nemo enim.?', 1, '2021-08-20 08:42:13', '2021-08-21 05:49:38', '2021-08-21 05:49:38'),
(190, 48, 'Commodi quisquam quia nobis alias saepe.?', 0, '2021-08-20 08:42:13', '2021-08-21 05:49:38', '2021-08-21 05:49:38'),
(191, 48, 'Laboriosam molestiae nobis omnis et aut aut.?', 0, '2021-08-20 08:42:13', '2021-08-21 05:49:38', '2021-08-21 05:49:38'),
(192, 48, 'Veniam earum nesciunt voluptatem adipisci neque.?', 0, '2021-08-20 08:42:13', '2021-08-21 05:49:38', '2021-08-21 05:49:38'),
(193, 49, 'Amet tenetur voluptatum similique quia nesciunt.?', 1, '2021-08-20 08:42:14', '2021-08-21 05:49:38', '2021-08-21 05:49:38'),
(194, 49, 'Reprehenderit et laboriosam expedita ut.?', 1, '2021-08-20 08:42:14', '2021-08-21 05:49:38', '2021-08-21 05:49:38'),
(195, 49, 'Exercitationem esse explicabo architecto et et.?', 1, '2021-08-20 08:42:14', '2021-08-21 05:49:38', '2021-08-21 05:49:38'),
(196, 49, 'Ex ea expedita accusantium optio.?', 0, '2021-08-20 08:42:14', '2021-08-21 05:49:38', '2021-08-21 05:49:38'),
(197, 50, 'Aut quam est ut officia. Minima et enim ea at et.?', 1, '2021-08-20 08:42:15', '2021-08-21 05:49:38', '2021-08-21 05:49:38'),
(198, 50, 'Ipsam itaque eos mollitia.?', 1, '2021-08-20 08:42:15', '2021-08-21 05:49:39', '2021-08-21 05:49:39'),
(199, 50, 'Doloribus fuga temporibus facilis non.?', 1, '2021-08-20 08:42:15', '2021-08-21 05:49:39', '2021-08-21 05:49:39'),
(200, 50, 'Reprehenderit magnam tempore est et ipsa fuga.?', 0, '2021-08-20 08:42:15', '2021-08-21 05:49:39', '2021-08-21 05:49:39'),
(201, 51, 'buta', 0, '2021-08-20 08:52:25', '2021-08-21 05:49:47', '2021-08-21 05:49:47'),
(202, 51, 'indah dong', 0, '2021-08-20 08:52:25', '2021-08-21 05:49:47', '2021-08-21 05:49:47'),
(203, 51, 'setan', 0, '2021-08-20 08:52:25', '2021-08-21 05:49:47', '2021-08-21 05:49:47'),
(204, 51, 'bukan apa-apa', 1, '2021-08-20 08:52:25', '2021-08-21 05:49:47', '2021-08-21 05:49:47'),
(205, 52, 'pacaran', 0, '2021-08-20 08:53:45', '2021-08-21 05:49:47', '2021-08-21 05:49:47'),
(206, 52, 'dapet nilai bagus', 0, '2021-08-20 08:53:45', '2021-08-21 05:49:47', '2021-08-21 05:49:47'),
(207, 52, 'bukan apa-apa', 1, '2021-08-20 08:53:45', '2021-08-21 05:49:47', '2021-08-21 05:49:47'),
(208, 52, 'musik', 0, '2021-08-20 08:53:45', '2021-08-21 05:49:48', '2021-08-21 05:49:48'),
(209, 53, 'a', 1, '2021-08-21 06:01:23', '2021-08-21 06:01:23', NULL),
(210, 53, 'b', 0, '2021-08-21 06:01:23', '2021-08-21 06:01:23', NULL),
(211, 53, 'c', 0, '2021-08-21 06:01:23', '2021-08-21 06:01:23', NULL),
(212, 53, 'd', 0, '2021-08-21 06:01:23', '2021-08-21 06:01:23', NULL),
(213, 54, 'a', 0, '2021-08-21 06:01:53', '2021-08-21 06:01:53', NULL),
(214, 54, 'b', 0, '2021-08-21 06:01:53', '2021-08-21 06:01:53', NULL),
(215, 54, 'c', 1, '2021-08-21 06:01:53', '2021-08-21 06:01:53', NULL),
(216, 54, 'd', 0, '2021-08-21 06:01:53', '2021-08-21 06:01:53', NULL),
(217, 55, 'syahdu bener', 1, '2021-11-02 09:21:25', '2021-11-02 09:21:25', NULL),
(218, 55, 'buah cintaku', 0, '2021-11-02 09:21:25', '2021-11-02 09:21:25', NULL),
(219, 55, 'sekuntum rindu', 0, '2021-11-02 09:21:25', '2021-11-02 09:21:25', NULL),
(220, 55, 'cintaku', 0, '2021-11-02 09:21:25', '2021-11-02 09:21:25', NULL);

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
(1, 6),
(2, 35),
(3, 24),
(4, 33),
(5, 13),
(6, 15),
(7, 41),
(8, 18),
(9, 5),
(10, 44),
(11, 38),
(12, 13),
(13, 14),
(14, 20),
(15, 39),
(16, 23),
(17, 35),
(18, 16),
(19, 45),
(20, 14),
(21, 28),
(22, 27),
(23, 15),
(24, 36),
(25, 23),
(26, 19),
(27, 14),
(28, 12),
(29, 18),
(30, 35),
(31, 17),
(32, 14),
(33, 26),
(34, 31),
(35, 27),
(36, 6),
(37, 1),
(38, 12),
(39, 26),
(40, 2),
(41, 23),
(42, 7),
(43, 49),
(44, 16),
(45, 12),
(46, 22),
(47, 20),
(48, 30),
(49, 31),
(50, 17),
(51, 51),
(52, 51),
(53, 52),
(54, 52),
(55, 53);

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
(1, 'Administrator (can create other users)', '2021-08-20 08:41:24', '2021-08-20 08:41:24'),
(2, 'Teacher', '2021-08-20 08:41:24', '2021-08-20 08:41:24'),
(3, 'Student', '2021-08-20 08:41:24', '2021-08-20 08:41:24');

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
(3, 2),
(2, 3),
(3, 4),
(2, 5);

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
(1, NULL, 1, 'Sit autem non ipsam unde.', NULL, 1, '2021-08-20 08:41:33', '2021-08-21 05:50:11', '2021-08-21 05:50:11'),
(2, NULL, 2, 'Dolores non sed occaecati aut alias.', NULL, 1, '2021-08-20 08:41:33', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(3, NULL, 3, 'In ad velit repellat. Nulla et porro incidunt et.', NULL, 1, '2021-08-20 08:41:34', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(4, NULL, 4, 'Consequatur exercitationem dolores nulla.', NULL, 1, '2021-08-20 08:41:34', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(5, NULL, 5, 'Inventore enim sed eum maiores quia dolor.', NULL, 1, '2021-08-20 08:41:34', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(6, NULL, 6, 'Sunt sed qui sunt modi.', NULL, 1, '2021-08-20 08:41:34', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(7, NULL, 7, 'Et enim quia ut occaecati.', NULL, 1, '2021-08-20 08:41:34', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(8, NULL, 8, 'Perferendis ea rerum porro.', NULL, 1, '2021-08-20 08:41:35', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(9, NULL, 9, 'Autem rerum quod soluta quo architecto.', NULL, 1, '2021-08-20 08:41:35', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(10, NULL, 10, 'Exercitationem qui perspiciatis ut et officia.', NULL, 1, '2021-08-20 08:41:35', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(11, NULL, 11, 'Ratione nisi cupiditate fuga eum.', NULL, 1, '2021-08-20 08:41:36', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(12, NULL, 12, 'Est magni consequuntur eius facere.', NULL, 1, '2021-08-20 08:41:36', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(13, NULL, 13, 'Consequatur ut fugit repellendus placeat.', NULL, 1, '2021-08-20 08:41:36', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(14, NULL, 14, 'Qui omnis voluptate voluptatem et in.', NULL, 1, '2021-08-20 08:41:37', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(15, NULL, 15, 'Illo non distinctio temporibus fugit.', NULL, 1, '2021-08-20 08:41:37', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(16, NULL, 16, 'Voluptatem ea soluta molestiae quo et alias.', NULL, 1, '2021-08-20 08:41:37', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(17, NULL, 17, 'Dolor nostrum necessitatibus ut odio nihil et.', NULL, 1, '2021-08-20 08:41:37', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(18, NULL, 18, 'Totam est tempora sit eius nostrum.', NULL, 1, '2021-08-20 08:41:37', '2021-08-21 05:50:12', '2021-08-21 05:50:12'),
(19, NULL, 19, 'Atque iure modi quibusdam sed.', NULL, 1, '2021-08-20 08:41:37', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(20, NULL, 20, 'Doloribus eum ducimus vel tenetur explicabo.', NULL, 1, '2021-08-20 08:41:37', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(21, NULL, 21, 'Eum voluptatem rem sequi placeat accusantium aut.', NULL, 1, '2021-08-20 08:41:39', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(22, NULL, 22, 'Culpa aut harum id labore aperiam mollitia.', NULL, 1, '2021-08-20 08:41:39', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(23, NULL, 23, 'Consectetur sit illum vel qui aut est optio.', NULL, 1, '2021-08-20 08:41:39', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(24, NULL, 24, 'A dicta natus tenetur magni.', NULL, 1, '2021-08-20 08:41:39', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(25, NULL, 25, 'Aut quisquam sunt ut aut quam.', NULL, 1, '2021-08-20 08:41:39', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(26, NULL, 26, 'Quis at iure quis.', NULL, 1, '2021-08-20 08:41:39', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(27, NULL, 27, 'Ut provident aut non quo debitis sed.', NULL, 1, '2021-08-20 08:41:40', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(28, NULL, 28, 'Velit eaque quasi sint.', NULL, 1, '2021-08-20 08:41:40', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(29, NULL, 29, 'Ea animi esse est aliquam et.', NULL, 1, '2021-08-20 08:41:40', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(30, NULL, 30, 'Quis iste qui modi earum.', NULL, 1, '2021-08-20 08:41:40', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(31, NULL, 31, 'Sunt quidem aut quia tempore.', NULL, 1, '2021-08-20 08:41:41', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(32, 4, 32, 'Alias voluptatem ex recusandae omnis. TEST', 'AAA', 1, '2021-08-20 08:41:41', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(33, NULL, 33, 'Quia et et qui iure iure sed.', NULL, 1, '2021-08-20 08:41:42', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(34, NULL, 34, 'Eveniet quo officia atque quos dolor.', NULL, 1, '2021-08-20 08:41:42', '2021-08-21 05:50:13', '2021-08-21 05:50:13'),
(35, NULL, 35, 'Qui commodi sit maxime nostrum ut.', NULL, 1, '2021-08-20 08:41:42', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(36, NULL, 36, 'Doloribus libero beatae harum porro eos.', NULL, 1, '2021-08-20 08:41:42', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(37, NULL, 37, 'Sit ut rem eaque.', NULL, 1, '2021-08-20 08:41:42', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(38, NULL, 38, 'Quis occaecati quis nesciunt quia vel iste.', NULL, 1, '2021-08-20 08:41:42', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(39, NULL, 39, 'Et nostrum vitae illum ipsa culpa sunt.', NULL, 1, '2021-08-20 08:41:42', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(40, NULL, 40, 'Eum sit ab maiores culpa maxime commodi qui quis.', NULL, 1, '2021-08-20 08:41:42', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(41, NULL, 41, 'Earum sit quam aut adipisci non et possimus.', NULL, 1, '2021-08-20 08:41:44', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(42, NULL, 42, 'Nihil dolorem enim ut et adipisci placeat sit.', NULL, 1, '2021-08-20 08:41:44', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(43, NULL, 43, 'Odio numquam ullam sit necessitatibus.', NULL, 1, '2021-08-20 08:41:44', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(44, NULL, 44, 'Reprehenderit rerum magnam nobis amet rem aut ex.', NULL, 1, '2021-08-20 08:41:44', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(45, NULL, 45, 'Sunt voluptates corporis ut sint.', NULL, 1, '2021-08-20 08:41:44', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(46, NULL, 46, 'Rerum aut quae impedit nihil.', NULL, 1, '2021-08-20 08:41:45', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(47, NULL, 47, 'Doloribus qui libero molestias incidunt.', NULL, 1, '2021-08-20 08:41:45', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(48, NULL, 48, 'Minus voluptates et eum error.', NULL, 1, '2021-08-20 08:41:45', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(49, NULL, 49, 'Quas impedit delectus saepe ut fugiat.', NULL, 1, '2021-08-20 08:41:45', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(50, NULL, 50, 'A accusamus fuga et quia.', NULL, 1, '2021-08-20 08:41:45', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(51, 4, 1, 'Mala', 'kmksmkmekdmekmdekd ednednededm', 1, '2021-08-20 08:46:04', '2021-08-21 05:50:14', '2021-08-21 05:50:14'),
(52, 6, 51, 'Kuis 1', 'Kuis pertama', 1, '2021-08-21 06:00:15', '2021-08-21 06:00:15', NULL),
(53, 9, 56, 'Test Regresi Linier', 'kjdneijdnede iwdnewndiednewidni6789o', 1, '2021-11-02 09:20:05', '2021-11-02 09:20:05', NULL);

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
(1, 36, NULL, 0, '2021-08-20 08:56:20', '2021-08-20 08:56:20'),
(2, 35, NULL, 1, '2021-08-20 08:56:41', '2021-08-20 08:56:41'),
(4, 52, 2, 5, '2021-10-29 04:40:59', '2021-10-29 04:40:59'),
(5, 52, 4, 10, '2021-11-02 09:34:33', '2021-11-02 09:34:33');

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
(1, 1, 24, 93, 0, '2021-08-20 08:56:20', '2021-08-20 08:56:20'),
(2, 2, 2, 6, 1, '2021-08-20 08:56:42', '2021-08-20 08:56:42'),
(3, 2, 17, 66, 0, '2021-08-20 08:56:42', '2021-08-20 08:56:42'),
(4, 2, 30, 119, 0, '2021-08-20 08:56:42', '2021-08-20 08:56:42'),
(7, 4, 53, 210, 0, '2021-10-29 04:40:59', '2021-10-29 04:40:59'),
(8, 4, 54, 215, 1, '2021-10-29 04:40:59', '2021-10-29 04:40:59'),
(9, 5, 53, 209, 1, '2021-11-02 09:34:33', '2021-11-02 09:34:33'),
(10, 5, 54, 215, 1, '2021-11-02 09:34:33', '2021-11-02 09:34:33');

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
(1, 'Admin', 'admin@admin.com', '$2y$10$l4MghrLnKXTRUDlR07XQeesKHRIaAe7WzDf90g751BEf70AwnJ5m.', 'pp11QOLxSlY6i3kxDBdg0xjtp1GjtRACGzRj47XijcMlUMgYyI2IPjdRFREQ', '2021-08-20 08:41:24', '2021-08-20 08:41:24'),
(2, 'susan', 'susan@gmail.com', '$2y$10$LGTk7TEOfM3j97LrDjAWY.W/8evMGVpRK78HJJvAZ7fxG.2Vd.IGy', 'kdHnX1w8EW0tBZdhaMpArL7ZK43C53DRhw01z5rYTJJ6rJ5raGK31TFB4jTK', '2021-08-21 05:36:35', '2021-11-03 13:27:26'),
(3, 'anggi', 'anggi@gmail.com', '$2y$10$xQ7qeEzcCUcJfvyoaGhTYuLcXz8UxdBRiYARmlYyjy3OqdL7B3V4a', 'AtElil4nWpD3gthAFbDtzoQUplz0JY8P1ay8vUO5ctHxbA5QJN01EHK1VURD', '2021-08-21 05:36:59', '2021-11-02 09:23:34'),
(4, 'gdragon', 'gdragon@gmail.com', '$2y$10$j.bFYsFgAIkOZEqEcCvVbe68qqEGx9MiBcIgglurCVkA/Y/vKDASm', 'sb8VA1TXgJc2nA0CqZY9LFlyTuYAKpFLCLyzu4WrIRP2r9c4nQywoCnna0Yb', '2021-08-23 04:21:14', '2021-11-02 09:23:57'),
(5, 'eriya', 'eriya@gmail.com', '$2y$10$g0ZFsp/2uWNNa.jUYA0XTecZDp9onkw9Gnjo.3U2aFnI1V6ZnokEm', 'DRTPjwf77I0o3yLUhiBUYE4bxCjw4n2AKLXHJ2aY0MB1tJvoZIMQyzHSnDkw', '2021-08-23 21:29:50', '2021-08-23 21:38:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatter_categories`
--
ALTER TABLE `chatter_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatter_discussion`
--
ALTER TABLE `chatter_discussion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chatter_discussion_slug_unique` (`slug`),
  ADD KEY `chatter_discussion_chatter_category_id_foreign` (`chatter_category_id`),
  ADD KEY `chatter_discussion_user_id_foreign` (`user_id`);

--
-- Indexes for table `chatter_post`
--
ALTER TABLE `chatter_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chatter_post_chatter_discussion_id_foreign` (`chatter_discussion_id`),
  ADD KEY `chatter_post_user_id_foreign` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- AUTO_INCREMENT for table `chatter_categories`
--
ALTER TABLE `chatter_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chatter_discussion`
--
ALTER TABLE `chatter_discussion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chatter_post`
--
ALTER TABLE `chatter_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `questions_options`
--
ALTER TABLE `questions_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tests_results`
--
ALTER TABLE `tests_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chatter_discussion`
--
ALTER TABLE `chatter_discussion`
  ADD CONSTRAINT `chatter_discussion_chatter_category_id_foreign` FOREIGN KEY (`chatter_category_id`) REFERENCES `chatter_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chatter_discussion_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chatter_post`
--
ALTER TABLE `chatter_post`
  ADD CONSTRAINT `chatter_post_chatter_discussion_id_foreign` FOREIGN KEY (`chatter_discussion_id`) REFERENCES `chatter_discussion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chatter_post_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
