-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 27, 2019 at 05:04 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.1.29-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joki_kuyliah`
--

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `jurusan` varchar(191) NOT NULL,
  `tipe` varchar(191) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `jurusan`, `tipe`, `created_at`, `updated_at`) VALUES
(1, 'Manajemen', 'ISTJ', NULL, NULL),
(2, 'Akuntansi', 'ISTJ', NULL, NULL),
(3, 'Kedokteran', 'ISTJ', NULL, NULL),
(4, 'Desain Komunikasi Visual', 'ISFJ', NULL, NULL),
(5, 'Ilmu Keperawatan', 'ISFJ', NULL, NULL),
(6, 'Teknologi Informasi', 'ISTP', NULL, NULL),
(7, 'Sistem Informasi', 'ISTP', NULL, NULL),
(8, 'Teknik Sipil', 'ISTP', NULL, NULL),
(9, 'Desain Komunikasi Visual', 'ISFP', NULL, NULL),
(10, 'Psikologi', 'ISFP', NULL, NULL),
(11, 'Pendidikan', 'ISFP', NULL, NULL),
(12, 'Psikologi', 'INFJ', NULL, NULL),
(13, 'Pendidikan', 'INFJ', NULL, NULL),
(14, 'Jurnalistik', 'INFJ', NULL, NULL),
(15, 'Sistem Informasi', 'INTJ', NULL, NULL),
(16, 'Hukum', 'INTJ', NULL, NULL),
(17, 'Ilmu Pengetahuan Bisnis', 'INTJ', NULL, NULL),
(18, 'Jurnalistik', 'INFP', NULL, NULL),
(19, 'Sastra', 'INFP', NULL, NULL),
(20, 'Psikologi', 'INFP', NULL, NULL),
(21, 'Teknologi Informasi', 'INTP', NULL, NULL),
(22, 'Hukum', 'INTP', NULL, NULL),
(23, 'Sastra', 'INTP', NULL, NULL),
(24, 'Bisnis Marketing', 'ESTP', NULL, NULL),
(25, 'Teknik Mesin', 'ESTP', NULL, NULL),
(26, 'Psikologi', 'ESFP', NULL, NULL),
(27, 'Desain Komunikasi Visual', 'ESFP', NULL, NULL),
(28, 'Pendidikan', 'ESFP', NULL, NULL),
(29, 'Teknologi Informasi', 'ENTP', NULL, NULL),
(30, 'Hukum', 'ENTP', NULL, NULL),
(31, 'Psikologi', 'ENTP', NULL, NULL),
(32, 'Pendidikan', 'ENFP', NULL, NULL),
(33, 'Psikologi', 'ENFP', NULL, NULL),
(34, 'Businest Analyst', 'ESTJ', NULL, NULL),
(35, 'Hukum', 'ESTJ', NULL, NULL),
(36, 'Pendidikan', 'ESTJ', NULL, NULL),
(37, 'Bisnis Marketing', 'ESFJ', NULL, NULL),
(38, 'Perawat', 'ESFJ', NULL, NULL),
(39, 'Pendidikan', 'ESFJ', NULL, NULL),
(40, 'Pendidikan', 'ENFJ', NULL, NULL),
(41, 'Sastra', 'ENFJ', NULL, NULL),
(42, 'Psikologi', 'ENFJ', NULL, NULL),
(43, 'Hukum', 'ENTJ', NULL, NULL),
(44, 'Bisnis Marketing', 'ENTJ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kampus`
--

CREATE TABLE `kampus` (
  `id` int(11) NOT NULL,
  `jurusan_id` int(11) NOT NULL,
  `kampus` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kampus`
--

INSERT INTO `kampus` (`id`, `jurusan_id`, `kampus`) VALUES
(1, 1, 'IPB'),
(2, 1, 'ITB'),
(3, 1, 'UNAIR'),
(4, 2, 'UGM'),
(5, 2, 'UI'),
(6, 2, 'UNDIP'),
(7, 3, 'Universitas Airlangga'),
(8, 3, 'Universitas Indonesia'),
(9, 3, 'Universitas Gajah Mada'),
(10, 4, 'UI'),
(11, 4, 'UNPAD'),
(12, 4, 'UGM'),
(13, 5, 'UNPAD'),
(14, 5, 'Universitas Sumatera Utara'),
(15, 5, 'UNDIP'),
(16, 6, 'ITB'),
(17, 6, 'ITS'),
(18, 6, 'UI'),
(19, 7, 'ITS'),
(20, 7, 'UIN Syarif Hidayatullah'),
(21, 7, 'UI'),
(22, 8, 'ITB'),
(23, 8, 'ITS'),
(24, 9, 'UI'),
(25, 9, 'UNPAD'),
(26, 9, 'UGM'),
(27, 10, 'UI'),
(28, 10, 'UNJ'),
(29, 10, 'Universitas  Islam Negeri Syarif Hidayatullah Jakarta'),
(30, 11, 'UNDIP'),
(31, 11, 'UI'),
(32, 11, 'ITB'),
(33, 12, 'UI'),
(34, 12, 'UNJ'),
(35, 13, 'UNDIP'),
(36, 13, 'UI'),
(37, 13, 'ITB'),
(38, 14, 'UNPAD'),
(39, 14, 'UI'),
(40, 15, 'ITS'),
(41, 15, 'UIN Syarif Hidayatullah'),
(42, 15, 'UI'),
(43, 16, 'UI'),
(44, 16, 'UGM'),
(45, 16, 'UNPAD'),
(46, 17, 'UNDIP'),
(47, 17, 'UGM'),
(48, 17, 'UI'),
(49, 18, 'UI'),
(50, 18, 'UNJ'),
(51, 19, 'ITB'),
(52, 19, 'ITS'),
(53, 19, 'UI'),
(54, 20, 'UI'),
(55, 20, 'UGM'),
(56, 20, 'UNPAD'),
(57, 21, 'UNDIP'),
(58, 21, 'UGM'),
(59, 21, 'UI'),
(60, 22, 'UNAIR'),
(61, 22, 'UGM'),
(62, 22, 'Universitas Sebelas Maret'),
(63, 23, 'ITB'),
(64, 23, 'ITS'),
(65, 23, 'Universitas Indonesia'),
(66, 24, 'UI'),
(67, 24, 'UNJ'),
(68, 25, 'UI'),
(69, 25, 'UNPAD'),
(70, 25, 'UGM'),
(71, 26, 'UNDIP'),
(72, 26, 'UI'),
(73, 26, 'ITB'),
(74, 27, 'ITB'),
(75, 27, 'ITS'),
(76, 27, 'UI'),
(77, 28, 'UI'),
(78, 28, 'UGM'),
(79, 28, 'UNPAD'),
(80, 29, 'UI'),
(81, 29, 'UNJ'),
(82, 30, 'UNDIP'),
(83, 30, 'UI'),
(84, 30, 'ITB'),
(85, 31, 'UI'),
(86, 31, 'UNJ'),
(87, 32, 'UI'),
(88, 32, 'UGM'),
(89, 32, 'ITB'),
(90, 33, 'UI'),
(91, 33, 'UGM'),
(92, 33, 'UNPAD'),
(93, 34, 'UNDIP'),
(94, 34, 'UI'),
(95, 34, 'ITB'),
(96, 35, 'UI'),
(97, 35, 'UGM'),
(98, 35, 'ITB'),
(99, 36, 'UNPAD'),
(100, 36, 'Universitas Sumatera Utara'),
(101, 36, 'UNDIP'),
(102, 37, 'UNDIP'),
(103, 37, 'UI'),
(104, 37, 'ITB'),
(105, 38, 'UNDIP'),
(106, 38, 'UI'),
(107, 38, 'ITB'),
(108, 39, 'UNDIP'),
(109, 39, 'UGM'),
(110, 39, 'UI'),
(111, 40, 'UI'),
(112, 40, 'UNJ'),
(113, 41, 'UI'),
(114, 41, 'UGM'),
(115, 41, 'UNPAD'),
(116, 42, 'UI'),
(117, 42, 'UGM'),
(118, 42, 'ITB');

-- --------------------------------------------------------

--
-- Table structure for table `profesi`
--

CREATE TABLE `profesi` (
  `id` int(11) NOT NULL,
  `category` varchar(191) NOT NULL,
  `profesi` varchar(191) NOT NULL,
  `tipe kepribadian` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soal_exi`
--

CREATE TABLE `soal_exi` (
  `no` int(11) NOT NULL,
  `soal` text NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal_exi`
--

INSERT INTO `soal_exi` (`no`, `soal`, `a`, `b`) VALUES
(1, 'Di sebuah pesta, saya…', 'Berinteraksi dengan orang banyak, termasuk orang asing', 'Berinteraksi dengan sedikit orang, yang telah dikenal'),
(2, 'Di sebuah pesta, saya pulang…', 'Terlambat, dengan bertambah semangat', 'Lebih awal, dengan energi yang terkuras'),
(3, 'Di komunitas atau kelompok sosial, saya cenderung…', 'Terus mengikuti apa yang terjadi dengan anggota lainnya', 'Ketinggalan berita'),
(4, 'Saat menelpon, saya…', 'Jarang bertanya-tanya apa yang akan dikatakan', 'Melatih terlebih dahulu apa yang akan dikatakan'),
(5, 'Di perusahaan, saya…', 'Mengawali pembicaraan', 'Menunggu untuk didekati'),
(6, 'Interaksi baru dengan orang lain akan…', 'Membuat bersemangat', 'Membebani diri'),
(7, 'Saya lebih memilih', 'Banyak teman dengan hubungan singkat', 'Sedikit teman dengan hubungan panjang'),
(8, 'Saya itu…', 'Berbicara dengan mudah dan panjang pada orang asing', 'Berbicara sedikit pada orang asing'),
(9, 'Saat telepon berbunyi, saya akan…', 'Cepat mengangkatnya pertama kali', 'Berharap orang lain akan menjawab'),
(10, 'Saya lebih cenderung…', 'Mudah didekati', 'Sedikit pendiam');

-- --------------------------------------------------------

--
-- Table structure for table `soal_jxp`
--

CREATE TABLE `soal_jxp` (
  `no` int(11) NOT NULL,
  `soal` text NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal_jxp`
--

INSERT INTO `soal_jxp` (`no`, `soal`, `a`, `b`) VALUES
(1, 'Saya lebih memilih bekerja…', 'Sesuai dengan deadlines', 'Kapan saja'),
(2, 'Saya lebih cenderung memilih…', 'Berhati-hati', 'Menurut kata hati'),
(3, 'Saya lebih ...', 'Tepat waktu', 'Tidak tergesa-gesa'),
(4, 'Saya lebih terganggu memiliki pekerjaan yang…', 'Tidak selesai', 'Selesai'),
(5, 'Saya ingin sesuatu…', 'Tetap dan diputuskan', 'Tidak tetap dan tidak diputuskan'),
(6, 'Saya cenderung…', 'Serius dan meyakinkan', 'Easy-going'),
(7, 'Seharusnya selalu membiarkan semua terjadi…', 'Dengan seleksi yang hati-hati', 'Secara random'),
(8, 'Saya merasa lebih baik jika…', 'Telah dibayar', 'Mendapatkan pilihan untuk membeli'),
(9, 'Saya lebih bangga pada…', 'Kemampuan mengorganisasi dan melakukan metode', 'Kemampuan beradaptasi dan membuat sesuatu'),
(10, 'Saya lebih menaruh nilai pada…', 'Tak terbatas ', 'Terbuka'),
(11, 'Saya lebih nyaman bekerja dengan…', 'Kontrak', 'Tidak tetap'),
(12, 'Saya cenderung pada…', 'Kerapian', 'Apa saja yang muncul'),
(13, 'Saya lebih memilih…', 'Pernyataan final dan tidak dapat berubah', 'Pernyataan pendahuluan dan sementara'),
(14, 'Saya lebih nyaman…', 'Setelah sebuah keputusan', 'Sebelum sebuah keputusan'),
(15, 'Saya adalah orang yang…', 'Meyakinkan bahwa semuanya telah teratur', 'Membiarkan semuanya terjadi apa adanya'),
(16, 'Pada sebuah hubungan seharusnya bisa…', 'Dinegosiasikan kembali', 'Random dan sambil lalu'),
(17, 'Situasi yang membuat saya lebih tertarik adalah yang lebih…', 'Terstruktur dan terjadwal', 'Tidak terstruktur dan tidak terjadwal'),
(18, 'Saya adalah orang yang lebih…', 'Rutin daripada tidak keruan', 'Tidak keruan daripada rutin'),
(19, 'Saya lebih memilih…', 'Acara yang direncanakan', 'Acara yang tidak terencana'),
(20, 'Saya cenderung lebih…', 'Berhati-hati daripada spontan', 'Spontan daripada berhati-hati');

-- --------------------------------------------------------

--
-- Table structure for table `soal_sxn`
--

CREATE TABLE `soal_sxn` (
  `no` int(11) NOT NULL,
  `soal` text NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal_sxn`
--

INSERT INTO `soal_sxn` (`no`, `soal`, `a`, `b`) VALUES
(1, 'Saya lebih….', 'Realistis daripada spekulatif', 'Spekulatif daripada realistis'),
(2, 'Yang lebih buruk bagi saya adalah…', 'Berkhayal dan tidak memperhatikan apa yang terjadi', 'Melakukan sesuatu yang membosankan'),
(3, 'Saya lebih tertarik pada…', 'Orang yang bijaksana', 'Orang yang imajinatif'),
(4, 'Saya lebih tertarik pada…', 'Apa yang sesungguhnya', 'Apa yang mungkin'),
(5, 'Saat melakukan hal sehari-hari, saya lebih suka…', 'Melakukan dengan cara biasanya/umum', 'Melakukan dengan cara sendiri'),
(6, 'Penulis seharusnya…', 'Mengatakan apa yang mereka maksud dan mengartikan apa yang mereka katakan', 'Mengekspresikan sesuatu lebih menggunakan analogi'),
(7, 'Fakta :', 'Berbicara untuk mereka sendiri', 'Mengilustrasikan prinsip'),
(8, 'Seorang pengkhayal adalah…', 'Sesuatu yang mengganggu', 'Cukup menarik'),
(9, 'Akal sehat bagi saya…', 'Jarang dipertanyakan', 'Sering dipertanyakan'),
(10, 'Anak-anak sering tidak…', 'Membuat diri mereka cukup berguna', 'Cukup melatih fantasi mereka'),
(11, 'Saya lebih sering…', 'Praktis', 'Aneh'),
(12, 'Saya lebih suka…', 'Melihat bagaimana orang lain berguna', 'Melihat bagaimana orang lain melihat'),
(13, 'Saya lebih pada…', 'Fakta', 'Prinsip'),
(14, 'Saya lebih tertarik dengan…', 'Produksi dan distribusi', 'Desain dan riset'),
(15, 'Saya lebih percaya pada…', 'Pengalaman', 'Firasat'),
(16, 'Saya merasa…', 'Lebih mempraktekkan daripada banyak akal', 'Lebih banyak akal daripada mempraktekkan'),
(17, 'Saya itu lebih…', 'Memiliki perasaan kuat terhadap kenyataan', 'Memiliki imajinasi yang hidup'),
(18, 'Saya lebih tergerak pada…', 'Fundamental', 'Tambahan'),
(19, 'Saat menulis, saya memilih…', 'Lebih harfiah/sebenarnya', 'Lebih bersifat kiasan/perlambangan'),
(20, 'Sulit bagi saya untuk…', 'Mengidentifikasikan orang lain', 'Menggunakan orang lain');

-- --------------------------------------------------------

--
-- Table structure for table `soal_txf`
--

CREATE TABLE `soal_txf` (
  `no` int(11) NOT NULL,
  `soal` text NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal_txf`
--

INSERT INTO `soal_txf` (`no`, `soal`, `a`, `b`) VALUES
(1, 'Saya lebih terkesan dengan…', 'Prinsip', 'Emosi'),
(2, 'Saya lebih tergerak dengan…', 'Diyakinkan', 'Disentuh'),
(3, 'Saat menghakimi orang lain, saya lebih berdasarkan…', 'Hukum daripada keadaan', 'Keadaan daripada hukum'),
(4, 'Dalam hal memandang orang lain, saya akan cenderung...', 'Obyektif', 'Personal'),
(5, 'Saya lebih tertarik dengan...', 'Konsistensi pikiran', 'Hubungan manusia yang harmonis'),
(6, 'Saya lebih nyaman membuat…', 'Penghakiman berdasarkan logika', 'Penghakiman berdasarkan nilai-nilai/prinsip'),
(7, 'Saya adalah seorang yang lebih…', 'Tenang', 'Hangat'),
(8, 'Lebih buruk jika…', 'Tidak Adil', 'Tanpa Kasihan'),
(9, 'Saat membuat keputusan, saya lebih nyaman dengan...', 'Standar yang ada', 'Perasaaan'),
(10, ' Saya lebih…', 'Tegas daripada lembut', 'Lembut daripada tegas'),
(11, 'Saya lebih puas saat…', 'Mendiskusikan sebuah isu', 'Mencapai sebuah kesepakatan untuk sebuah isu'),
(12, 'Yang lebih mengatur saya adalah…', 'Pikiran saya', 'Hati saya'),
(13, 'Ini merupakan sebuah pujian bagi saya:', '“Orang yang sangat logis.”', '“Orang yang sangat sentimental.”'),
(14, 'Saya lebih menilai diri saya sebagai pribadi yang…', 'Kokoh', 'Mengabdi'),
(15, 'Orang yang lebih pantas mendapat pujian yaitu yang…', 'Memiliki alasan jelas', 'Memiliki perasaan kuat'),
(16, 'Saya cenderung…', 'Berpikir adil ', 'simpatik'),
(17, 'Yang terlihat salah lebih besar adalah…', 'Menjadi terlalu penuh gairah', 'Menjadi terlalu obyektif'),
(18, 'Saya melihat diri saya sebenarnya...', 'Keras kepala', 'Berhati lembut'),
(19, 'Saya berharap bahwa saya akan lebih…', 'Jelas dalam alasan', 'Kuat dalam berperasaan'),
(20, ' Kesalahan yang lebih besar adalah…', 'Menjadi tidak pandang bulu', 'Menjadi kritis');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(4) NOT NULL,
  `Detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`, `Detail`) VALUES
(1, 'ISTJ', '• Bertanggungjawab, Serius, tenang, stabil & damai.\r\n• Senang pada fakta, logis, obyektif, praktis & realistis.\r\n• Task oriented, tekun, teratur, menepati janji, dapat diandalkan & bertanggung jawab.\r\n• Pendengar yang baik, setia, hanya mau berbagi dengan orang dekat.\r\n• Memegang aturan, standar & prosedur dengan teguh.'),
(2, 'ISFJ', '• Setia, Penuh pertimbangan, hati-hati, teliti dan akurat.\r\n• Serius, tenang, stabil namun sensitif.\r\n• Ramah, perhatian pada perasaan & kebutuhan orang lain, setia, kooperatif, pendengar\r\nyang baik.\r\n• Punya kemampuan mengorganisasi, detail, teliti, sangat bertanggungjawab & bisa\r\ndiandalkan.'),
(3, 'ISTP', '• Pragmatis, Tenang, pendiam, cenderung kaku, dingin, hati-hati, penuh pertimbangan.\r\n• Logis, rasional, kritis, obyektif, mampu mengesampingkan perasaan.\r\n• Mampu menghadapi perubahan mendadak dengan cepat dan tenang.\r\n• Percaya diri, tegas dan mampu menghadapi perbedaan maupun kritik.\r\n• Mampu menganalisa, mengorganisir, & mendelegasikan.\r\n• Problem solver yang baik terutama untuk masalah teknis & keadaan mendadak.'),
(4, 'ISFP', '• Artistik, Berpikiran simpel & praktis, fleksibel, sensitif, ramah, tidak menonjolkan diri, rendah hati\r\npada kemampuannya.\r\n• Menghindari konflik, tidak memaksakan pendapat atau nilai-nilainya pada orang lain.\r\n• Biasanya tidak mau memimpin tetapi menjadi pengikut dan pelaksana yang setia.\r\n• Seringkali santai menyelesaikan sesuatu, karena sangat menikmati apa yang terjadi saat\r\nini.\r\n• Menunjukkan perhatian lebih banyak melalui tindakan dibandingkan kata-kata.'),
(5, 'INFJ', '• Reflektif, Perhatian, empati, sensitif & berkomitmen terhadap sebuah hubungan.\r\n• Sukses karena ketekunan, originalitas dan keinginan kuat untuk melakukan apa saja yang\r\ndiperlukan termasuk memberikan yg terbaik dalam pekerjaan.\r\n• Idealis, perfeksionis, memegang teguh prinsip.\r\n• Visioner, penuh ide, kreatif, suka merenung dan inspiring.\r\n• Biasanya diikuti dan dihormati karena kejelasan visi serta dedikasi pada hal-hal baik.'),
(6, 'INTJ', '• Independen, Visioner, punya perencanaan praktis, & biasanya memiliki ide-ide original serta dorongan\r\nkuat untuk mencapainya.\r\n• Mandiri dan percaya diri.\r\n• Punya kemampuan analisa yang bagus serta menyederhanakan sesuatu yang rumit dan\r\nabstrak menjadi sesuatu yang praktis, mudah difahami & dipraktekkan.\r\n• Skeptis, kritis, logis, menentukan (determinatif) dan kadang keras kepala.\r\n• Punya keinginan untuk berkembang serta selalu ingin lebih maju dari orang lain.\r\n• Kritik & konflik tidak menjadi masalah berarti.'),
(7, 'INFP', '• Idealis, Sangat perhatian dan peka dengan perasaan orang lain.\r\n• Penuh dengan antusiasme dan kesetiaan, tapi biasanya hanya untuk orang dekat.\r\n• Peduli pada banyak hal. Cenderung mengambil terlalu banyak dan menyelesaikan\r\nsebagian.\r\n• Cenderung idealis dan perfeksionis.\r\n• Berpikir win-win solution, mempercayai dan mengoptimalkan orang lain.'),
(8, 'INTP', '• Konseptual, Sangat menghargai intelektualitas dan pengetahuan. Menikmati hal-hal teoritis dan ilmiah.\r\nSenang memecahkan masalah dengan logika dan analisa.\r\n• Diam dan menahan diri. Lebih suka bekerja sendiri.\r\n• Cenderung kritis, skeptis, mudah curiga dan pesimis.\r\n• Tidak suka memimpin dan bisa menjadi pengikut yang tidak banyak menuntut.\r\n• Cenderung memiliki minat yang jelas. Membutuhkan karir dimana minatnya bisa\r\nberkembang dan bermanfaat. Jika menemukan sesuatu yang menarik minatnya, ia akan\r\nsangat serius dan antusias menekuninya.'),
(9, 'ESTP', '• Spontan, Aktif, Enerjik, Cekatan, Cepat, Sigap, Antusias, Fun dan penuh variasi.\r\n• Komunikator, asertif, to the point, ceplas-ceplos, berkarisma, punya interpersonal skill yang\r\nbaik.\r\n• Baik dalam pemecahan masalah langsung di tempat. Mampu menghadapi masalah, konflik\r\ndan kritik. Tidak khawatir, menikmati apapun yang terjadi.\r\n• Cenderung untuk menyukai sesuatu yang mekanistis, kegiatan bersama dan olahraga.\r\n• Mudah beradaptasi, toleran, pada umumnya konservatif tentang nilai-nilai. Tidak suka\r\npenjelasan terlalu panjang. Paling baik dalam hal-hal nyata yang dapat dilakukan.'),
(10, 'ESFP', '• Murah Hati, Outgoing, easygoing, mudah berteman, bersahabat, sangat sosial, ramah, hangat, &\r\nmenyenangkan.\r\n• Optimis, ceria, antusias, fun, menghibur, suka menjadi perhatian.\r\n• Punya interpersonal skill yang baik, murah hati, mudah simpatik dan mengenali perasaan\r\norang lain. Menghindari konflik dan menjaga keharmonisan suatu hubungan.\r\n• Mengetahui apa yang terjadi di sekelilingnya dan ikut serta dalam kegiatan tersebut.\r\n• Sangat baik dalam keadaan yang membutuhkan common sense, tindakan cepat dan\r\nketrampilan praktis.'),
(11, 'ENFP', '• Optimis, Ramah, hangat, enerjik, optimis, antusias, semangat tinggi, fun.\r\n• Imaginatif, penuh ide, kreatif, inovatif.\r\n• Mampu beradaptasi dengan beragam situasi dan perubahan.\r\n• Pandai berkomunikasi, senang bersosialisasi & membawa suasana positif.\r\n• Mudah membaca perasaan dan kebutuhan orang lain.'),
(12, 'ENTP', '• Gesit, kreatif, inovatif, cerdik, logis, baik dalam banyak hal.\r\n• Banyak bicara dan punya kemampuan debat yang baik. Bisa berargumentasi untuk\r\nsenang-senang saja tanpa merasa bersalah.\r\n• Fleksibel. Punya banyak cara untuk memecahkan masalah dan tantangan.\r\n• Kurang konsisten. Cenderung untuk melakukan hal baru yang menarik hati setelah\r\nmelakukan sesuatu yang lain.\r\n• Punya keinginan kuat untuk mengembangkan diri.'),
(13, 'ESTJ', '• Praktis, realistis, berpegang pada fakta, dengan dorongan alamiah untuk bisnis dan\r\nmekanistis.\r\n• Sangat sistematis, procedural dan terencana.\r\n• Disiplin, on time dan pekerja keras.\r\n• Konservatif dan cenderung kaku.\r\n• Tidak tertarik pada subject yang tidak berguna baginya, tapi dapat menyesuaikan diri jika\r\ndiperlukan.\r\n• Senang mengorganisir sesuatu. Bisa menjadi administrator yang baik jika mereka ingat\r\nuntuk memperhatikan perasaan dan perspektif orang lain.'),
(14, 'ESFJ', '• Hangat, banyak bicara, populer, dilahirkan untuk bekerjasama, suportif dan anggota\r\nkelompok yang aktif.\r\n• Membutuhkan keseimbangan dan baik dalam menciptakan harmoni.\r\n• Selalu melakukan sesuatu yang manis bagi orang lain. Kerja dengan baik dalam situasi\r\nyang mendukung dan memujinya.\r\n• Santai, easy going, sederhana, tidak berfikir panjang.\r\n• Teliti dan rajin merawat apa yang ia miliki.'),
(15, 'ENFJ', '• Kreatif, imajinatif, peka, sensitive, loyal.\r\n• Pada umumnya peduli pada apa kata orang atau apa yang orang lain inginkan dan\r\ncenderung melakukan sesuatu dengan memperhatikan perasaan orang lain.\r\n• Pandai bergaul, meyakinkan, ramah, fun, populer, simpatik. Responsif pada kritik dan\r\npujian.\r\n• Menyukai variasi dan tantangan baru.\r\n• Butuh apresiasi dan penerimaan.'),
(16, 'ENTJ', '• Tegas, asertif, to the point, jujur terus terang, obyektif, kritis, & punya standard tinggi.\r\n• Dominan, kuat kemauannya, perfeksionis dan kompetitif.\r\n• Tangguh, disiplin, dan sangat menghargai komitmen.\r\n• Cenderung menutupi perasaan dan menyembunyikan kelemahan.\r\n• Berkarisma, komunikasi baik, mampu menggerakkan orang.\r\n• Berbakat pemimpin.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kampus`
--
ALTER TABLE `kampus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profesi`
--
ALTER TABLE `profesi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal_exi`
--
ALTER TABLE `soal_exi`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `soal_jxp`
--
ALTER TABLE `soal_jxp`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `soal_sxn`
--
ALTER TABLE `soal_sxn`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `soal_txf`
--
ALTER TABLE `soal_txf`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `kampus`
--
ALTER TABLE `kampus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `profesi`
--
ALTER TABLE `profesi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soal_exi`
--
ALTER TABLE `soal_exi`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `soal_jxp`
--
ALTER TABLE `soal_jxp`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `soal_sxn`
--
ALTER TABLE `soal_sxn`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `soal_txf`
--
ALTER TABLE `soal_txf`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
