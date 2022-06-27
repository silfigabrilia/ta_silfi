-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 03:56 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_pakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `kode_gejala` varchar(20) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kode_gejala`, `nama_gejala`) VALUES
(3, 'G01', 'Mengalami penurunan berat badan'),
(4, 'G02', 'Mudah lelah'),
(5, 'G03', 'Menurunnya nafsu makan'),
(6, 'G04', 'Konsentrasi menurun'),
(7, 'G05', 'Gusi dan mulut sering luka atau nyeri'),
(8, 'G06', 'Kulit dan rambut kering'),
(9, 'G07', 'Jaringan lemak dan otot di dalam tubuh berkurang'),
(10, 'G08', 'Pipi dan mata cekung'),
(11, 'G09', 'Pembengkakan di bagian tubuh tertentu, seperti di perut, wajah atau kaki'),
(12, 'G10', 'Mudah terkena infeksi'),
(13, 'G11', 'Proses penyembuhan luka menjadi lambat'),
(14, 'G12', 'Mudah kedinginan'),
(15, 'G13', 'Perubahan mood atau suasana hati'),
(16, 'G14', 'Mudah terjatuh karena otot melemah'),
(18, 'G15', 'Berat badan normal'),
(19, 'G16', 'Kulit lembab'),
(20, 'G17', 'Mata jernih'),
(21, 'G18', 'Rambut berkilau'),
(22, 'G19', 'Tidur Nyenyak'),
(23, 'G20', 'Bertambahnya berat badan '),
(24, 'G21', 'Bertambahnya nafsu makan'),
(25, 'G22', 'Sesak napas'),
(26, 'G23', 'Gampang berkeringat '),
(27, 'G24', 'Mengorok'),
(29, 'G25', 'Nyeri puggung dan sendi'),
(30, 'G26', 'Kurang percaya diri');

-- --------------------------------------------------------

--
-- Table structure for table `gizi`
--

CREATE TABLE `gizi` (
  `id_gizi` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gizi`
--

INSERT INTO `gizi` (`id_gizi`, `nama`, `keterangan`) VALUES
(3, 'Definisi Gizi', 'Definisi Gizi menurut etimologi yaitu kata gizi berasal dari bahasa arab â€œGhizdaâ€ yang artinya makanan. Gizi atau makanan diartikan sebagai sumber yang dibutuhkan oleh makhluk hidup untuk menjaga fungsi sitem pertubuhan dan pemeliharaan kesehatan. Gizi juga dapat di artikan sebagai substansi/senyawa organik yang dibutuhkan makhluk hidup untuk tetap bertahan hidup serta mengfungsikan sistem tubuh. Didalam gizi terdapat beberapa jenis diantaranya yaitu, zat gizi pembangun, zat gizi sumber energi, dan zat gizi pengatur.  Contoh zat gizi pembangun yaitu protein, contoh zat gizi sumber energy yaitu karbohidrat, sedangkan contoh zat gizi pengatur yaitu vitamin dan mineral.');

-- --------------------------------------------------------

--
-- Table structure for table `gizi_cukup`
--

CREATE TABLE `gizi_cukup` (
  `id_gizi_cukup` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gizi_kurang`
--

CREATE TABLE `gizi_kurang` (
  `id_gizi_kurang` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gizi_lebih`
--

CREATE TABLE `gizi_lebih` (
  `id_gizi_lebih` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `imunitas`
--

CREATE TABLE `imunitas` (
  `id_imunitas` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imunitas`
--

INSERT INTO `imunitas` (`id_imunitas`, `nama`, `keterangan`) VALUES
(1, 'Imunitas Tubuh', 'Sistem Imunitas merupakan sistem pertahanan atau kekebalan tubuh yang memiliki peran dalam mengenali dan menghancurkan benda-benda asing atau sel abnormal yang merugikan tubuh kita. Sistem imunitas ini berbentuk sel-sel tertentu yang berfungsi sebagai pasukan pertahanan tubuh kita dalam memerangi patogen yang sudah disebutkan di atas tadi, yang berpotensi menyebabkan gangguan pada tubuh kita. Saat Patogen masuk ke tubuh kita, antigen atau molekul yang terletak pada dinding sel bakteri atau lapisan organisme, merangsang sistem imunitas kita untuk menghasilkan antibody untuk melawan dan melindungi tubuh kita. Agar tubuh senantiasa sehat dan terlindungi dari penyakit, menjaga kesehatan sistem imun amat krusial dilakukan. Ada banyak cara meningkatkan daya tahan tubuh yang perlu diterapkan. Mulai dari olahraga teratur, tidur yang cukup, hingga mencukupkan kebutuhan vitamin untuk daya tahan tubuh. Vitamin untuk daya tahan tubuh pun bisa kita penuhi dari makanan sehat maupun multivitamin.');

-- --------------------------------------------------------

--
-- Table structure for table `karbohidrat`
--

CREATE TABLE `karbohidrat` (
  `id_karbohidrat` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karbohidrat`
--

INSERT INTO `karbohidrat` (`id_karbohidrat`, `nama`, `keterangan`) VALUES
(1, 'Karbohidrat', 'Karbohidrat memiliki molekul-molekul yang terdiri atas monosakarida, dan disakarida, dan polisakarida. Pasalnya, polisakarida lebih kompleks sehingga butuh waktu lama untuk diserap kedalam aliran darah dan tidak memicu lonjakan gula darag yang besar. Karena itu, semakin kompleks karbohidrat yang anda konsumsi, nutrisi yang anda dapatkan akan semakin baik. Contoh karbohidrat kompleks adalah gandum utuh, nasi merah, dan biji-bijian. Sedangkan jenis karbohidrat sederhana meliputi nasi putih, roti putih dan pasta.');

-- --------------------------------------------------------

--
-- Table structure for table `lemak`
--

CREATE TABLE `lemak` (
  `id_lemak` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lemak`
--

INSERT INTO `lemak` (`id_lemak`, `nama`, `keterangan`) VALUES
(1, 'Lemak', 'Lemak merupakan zat gizi makro, yang mencakup asam lemak dan trigliserida. Lemak adalah zat gizi yang padat energi (9 kkal per gram) sehingga lemak penting untuk menjaga keseimbangan energi dan berat badan. Lemak menyediakan medium untuk penyerapan vitamin-vitamin larut lemak (vitamin A, D, E, K). Di dalam makanan, lemak berfungsi sebagai pelezat makanan sehingga orang cenderung lebih menyukai makanan berlemak. Tubuh manusia tidak dapat membuat asam lemak omega-6 dan omega-3 sehingga asam lemak ini adalah zat yang esensial.');

-- --------------------------------------------------------

--
-- Table structure for table `mineral`
--

CREATE TABLE `mineral` (
  `id_mineral` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mineral`
--

INSERT INTO `mineral` (`id_mineral`, `nama`, `keterangan`) VALUES
(1, 'Mineral', 'Disamping oksigen, karbon, hidrogen, dan nitrogen, tubuh juga memerlukan mineral dari makanan. Terdapat berbagai mineral yang penting untuk proses biokimia manusia. Misalnya, kalium, klorida, natrium, kalsium, fosfor, magnesium, zinc, zat besi, mangan, tembaga, iodin, selenium, dan molibdenum. Dalam pola makan seimbang, kebutuhan mineral akan tercukupi dengan baik. Mineral juga terkadang ditambahkan ke produk tertentu agar dapat memenuhi kebutuhan Anda. Proses penambahan ini disebut fortifikasi.');

-- --------------------------------------------------------

--
-- Table structure for table `olahraga`
--

CREATE TABLE `olahraga` (
  `id_olahraga` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `olahraga`
--

INSERT INTO `olahraga` (`id_olahraga`, `nama`, `keterangan`) VALUES
(2, 'Olahraga', 'Aktivitas fisik merupakan segala sesuatu pekerjaan dalam kehidupan sehari hari dalam intensitas rendah maupun tinggi. Dalam melakukan aktivitas sehari-hari, setiap orang pasti akan mengalami kelelahan. Maka dari itu untuk melakukan aktivitas sehari-hari dengan badan yang bugar dan tidak mengalami kelelahan maka perlu banyak ditingkatkan kebugaran jasmani. Apabila kebugaran jasmani kita tidak dijaga, maka banyak penyakit yang akan kita hadapi beberapa tahun kedepan atau dimasa tua yang akan datang. Dengan menjaga aktivitas fisik dengan berolahraga secara rutin, menjaga asupan gizi dan beristirahat dengan baik maka akan meningkatkan kesehatan dan mencegah timbulnya penyakit, termasuk penyakit jantung, diabetes, obesitas, cidera, dll. Selain menjaga kesehatan tubuh, menjaga kebugaran jasmani juga dapat mengurangi depresi, stres, dan meningkatkan percaya diri pada saat melakukan aktivitas sehari-hari.'),
(3, 'contoh olahraga sederhana ', 'Olahraga sederhana untuk meningkatkan kebugaran jasmani : 1.	Senam  Senam merupakan olahraga yang sering dijumpai dikalangan masyarakat. Dikarenakan senam merupakan olahraga yang paling mudah karena biasanya dilakukan secara berkelompok dengan menggunakan irama musik. Namun tidak semua masyarakat menyadari dengan melakukan olahraga senam dapat meningkatkan kesehatan dan kebugaran tubuh. Dalam olahraga senam dibagi menjadi dua yaitu Aerobik dan anaerobik. Senam aerobik adalah gerakan yang dilakukan perorangan maupun kelompok secara berirama, dengan menggunakan otot besar, dengan menggunakan energi aerobik, dan mengikuti musik sehingga menciptakan sebuah ritmis bergerak, kontinuitas, dan durasi yang diperlukan untuk meningkatkan maupun menjaga kebugaran tubuh. Jadi senam aerobik memiliki banyak manfaat yang baik untuk tubuh dan juga biasanya digunakan untuk program penurunan berat badan. Dengan melakukan senam secara rutin dan continue kebugaran manusia akan terjaga. Program senam agar mendapatkan hasil yang baik dan meningkatkan kebugaran jasmani yaitu dilakukan minimal 3 kali seminggu dan minimal 8 kali seminggu.  2.	Jogging  Jogging merupakan salah satu olahraga yang mudah dilakukan yaitu dengan cara berlari, biasanya sering kita temui ditaman maupun gedung olahraga.  Jogging dilakukan dengan berlari dengan kecepatan 11 km/jam yang bertujuan meningkatkan kebugaran tubuh. Perlu masyarakat sadari bahwa dengan melakukan jogging dengan teratur maka dapat meningkatkan kebugaran jasmani pada tubuh. Selain meningkatkan kebugaran jasmani, olahraga jogging juga bermanfaat menurunkan kadar lemak pada tubuh. Untuk menurunkan kadar lemak, disarankan masyarakat untuk melakukan jogging 30 menit setiap hari. Manfaat lain rutin melakukan jogging adalah meningkatkan VO2Max yaitu jumlah maksimal oksigen pada tubuh. Jogging dapat meningkatkan VO2Max, maka dapat meningkatkan kebugaran untuk melakukan aktivitas sehari-hari.  Maka dari itu jogging di pagi maupun sore hari dapat mening kesehatan dan kebugaran pada tubuh dengan intensitas rendah, sedang maupun tinggi. Minimal waktu jogging yang disarankan adalah 30 menit setiap hari.');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` enum('Admin','Dokter','User') NOT NULL,
  `jk` varchar(10) NOT NULL,
  `tb` varchar(100) NOT NULL,
  `bb` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `username`, `password`, `level`, `jk`, `tb`, `bb`) VALUES
(1, 'Administrator', 'admin', 'admin', 'Admin', '', '', ''),
(3, 'User', 'user', '123456', 'User', '', '', ''),
(10, 'Pakar', 'pakar', '12345', 'Dokter', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `kode_penyakit` varchar(20) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `kode_penyakit`, `nama_penyakit`, `deskripsi`, `solusi`) VALUES
(1, 'T01', 'Gizi Kurang', 'kurangnya asupan gizi yang baik', 'Solusi kekurangan kebutuhan gizi yang dianjurkan :\r\n1. Makan makanan yang lengkap mengandung kalori serta bergizi, bukan hanya tinggi kalori saja. \r\n2. Makan sedikit tapi sering\r\n3. Makan snack diantara waktu makan besar\r\n4. Minum air putih (8 gelas sehari)\r\n5. Tidak disarankan melakukan diet'),
(2, 'T02', 'Gizi Cukup', 'Gizi sudah tercukupi dengan baik', 'Solusi dari gizi yang sudah tercukupi dengan baik, dianjurkan :\r\n1. Tetap mengkonsumsi makanan yang beragam seperti, makan sayur dan buah setiap hari. Jumlah sayur dan buah yang dimakan hendaklah menyusun setengah dari keseluruhan makananmu. mengkonsumsi sumber protein. variasikan makanan pokok, ada baiknya mengganti nasi putih dengan makanan kaya karbohidrat lainnya sebagai makanan  pokok. contohnya : nasi merah, kentang, roti, dan jagung.\r\nmembatasi makanan tinggi gula, garam, maupun lemak. Membiasakan sarapan hendaklah sekitar sepertiga dari total makanan harian. Minum air putih yang cukup.\r\n2. Membiasakan perilaku hidup bersih \r\n3. Melakukan aktivitas fisik (olahraga teratur)\r\n4. Mempertahankan dan memantau berat badan normal.'),
(3, 'T03', 'Gizi Lebih', 'asupan gizi yang dikonsumsi berlebihan', 'Solusi kelebihan gizi yang dianjurkan :\r\n1. Mengatur pola makanan yang dikonsumsi\r\n2. Mengatur aktivitas fisik dengan berolahraga ringan secara rutin dan bertahap. Olahraga yang dianjurkan seperti kardio dan angkat beban (keduanya harus seimbang), contohnya push up, sit up, plank jogging, maupun senam. \r\n3. Membatasi konsumsi makanan manis dan berlemak.\r\n4. Mengkonsumsi semua buah dan sayuran terutama yang mengandung banyak serat.\r\n5. Membiasakan minum air putih (8 gelas sehari)');

-- --------------------------------------------------------

--
-- Table structure for table `protein`
--

CREATE TABLE `protein` (
  `id_protein` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `protein`
--

INSERT INTO `protein` (`id_protein`, `nama`, `keterangan`) VALUES
(1, 'Protein ', 'Dikutip dari Medlin Plus, protein disusun oleh 20 jenis asam amino. Sebagian asam amino disebut esensial karena tidak bisa diproduksi oleh tubuh, sehingga harus didapatkan melalui makanan.  Sementara sebagian lainnya termasuk nonesensial sebab bisa diproduksi sendiri oleh tubuh'),
(4, 'Fungsi protein :', 'a.	Sebagai sumber energy b.	Sebagai zat pembangun protein berfungsi dalam pertumbuhan dan pemeliharaan jaringan tubuh serta menggantikan sel-sel yang mati dan aus terpakai');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `id_penyakit` int(11) DEFAULT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id_rule` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id_rule`, `id_penyakit`, `id_gejala`) VALUES
(46, 1, 3),
(47, 1, 4),
(48, 1, 5),
(49, 1, 6),
(50, 1, 7),
(51, 1, 8),
(52, 1, 9),
(53, 1, 10),
(54, 1, 11),
(55, 1, 12),
(56, 1, 13),
(57, 1, 14),
(58, 1, 15),
(59, 1, 16),
(65, 3, 4),
(66, 3, 23),
(67, 3, 24),
(68, 3, 25),
(69, 3, 26),
(70, 3, 27),
(71, 3, 29),
(72, 3, 30),
(73, 2, 18),
(74, 2, 19),
(75, 2, 20),
(76, 2, 21),
(77, 2, 22);

-- --------------------------------------------------------

--
-- Table structure for table `tingkat_gizi`
--

CREATE TABLE `tingkat_gizi` (
  `id_tingkat_gizi` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vitamin`
--

CREATE TABLE `vitamin` (
  `id_vitamin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vitamin`
--

INSERT INTO `vitamin` (`id_vitamin`, `nama`, `keterangan`) VALUES
(1, 'Vitamin ', 'Vitamin adalah nutrisi mikro yang berperan vital untuk menopang kehidupan. Vitamin berperan dalam ratusan aktivitas di dalam tubuh, mulai dari menguatkan tulang, memulihkan luka, serta meningkatkan fungsi imun tubuh. Atas perannya yang mendasar bagi tubuh, vitamin tergolong sebagai nutrisi esensial yang harus dicukupkan dari luar tubuh. Selain itu, karena terlibat dalam kesehatan sistem imun, kekurangan beberapa jenis vitamin pun berisiko menyebabkan seseorang mudah sakit dan terinfeksi patogen penyebab penyakit. Mencukupkan kebutuhan vitamin, terutama vitamin daya tahan tubuh, amat krusial agar tubuh senantiasa sehat. Vitamin untuk daya tahan tubuh pada dasarnya terkandung dalam makanan sehat. Namun, beberapa orang akan sulit memenuhi kebutuhan vitamin sehingga konsumsi multivitamin mungkin akan diperlukan. Konsumsi multivitamin dapat mengiringi diet Anda jika dirasa sulit mencukupkan kebutuhannya dari makanan sehat. Saat ini, Anda sangat mudah menemukan multivitamin daya tahan tubuh yang mengandung vitamin C, E, dan A sekaligus. sehingga cenderung praktis untuk dikonsumsi. Pastikan Anda juga memilih produk dari perusahaan farmasi dengan reputasi yang baik. Hindari membeli produk multivitamin yang abal-abal agar tak menjadi bumerang bagi tubuh. Anda juga dianjurkan untuk berkonsultasi dengan dokter sebelum mencoba suplemen apa pun, termasuk vitamin daya tahan tubuh yang mengandung vitamin C, E, dan A sekaligus.');

-- --------------------------------------------------------

--
-- Table structure for table `vitamin_a`
--

CREATE TABLE `vitamin_a` (
  `id_vitamin_a` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vitamin_a`
--

INSERT INTO `vitamin_a` (`id_vitamin_a`, `nama`, `keterangan`) VALUES
(1, 'Vitamin A', 'Walau lebih dikenal sebagai vitamin untuk mata, vitamin A juga berperan vital dalam regulasi sistem imun. Sebuah riset dalam jurnal Clinical Medicine tahun 2018 menyebutkan, vitamin A memiliki reputasi sebagai vitamin anti-peradangan karena terlibat dalam peningkatan kinerja fungsi imun. Secara spesifik, vitamin antioksidan ini berperan dalam pembentukan hingga pematangan jaringan epitelium. Dinding epitelium dapat dikatakan sebagai lini depan perlawanan tubuh terhadap serangan agen penyakit. Vitamin A dalam makanan sehat terbagi atas dua jenis, yakni vitamin A aktif dan provitamin A. '),
(3, 'kandungan vitamin a', 'Berikut ini kandungan vitamin A untuk setiap 100 gram beberapa makanan hewani: Minyak hati ikan cod: 30.000 mikrogram. Jika dikonsumsi satu sendok makan, minyak hati ikan cod memberikan vitamin A sekitar 1.350 mikrogram. Hati sapi: 9.363 mikrogram Keju kambing: 394 mikrogram Salmon: 149 mikrogram Telur rebus: 149 mikrogram Susu kambing: 57 mikrogram Susu sapi: 56 mikrogram Makarel: 40 mikrogram Sarden masak: 32 mikrogram Dada ayam tanpa kulit: 5 mikrogram');

-- --------------------------------------------------------

--
-- Table structure for table `vitamin_c`
--

CREATE TABLE `vitamin_c` (
  `id_vitamin_c` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vitamin_c`
--

INSERT INTO `vitamin_c` (`id_vitamin_c`, `nama`, `keterangan`) VALUES
(1, 'Vitamin C', 'Apabila ingin meningkatkan daya tahan tubuh, Anda mungkin langsung meningkatkan asupan vitamin C dari makanan dan multivitamin. Vitamin populer ini memang memiliki fungsi dan manfaat yang krusial, termasuk berkaitan erat dengan kesehatan sistem imun. Sebuah riset yang dimuat dalam jurnal Nutrients memaparkan, vitamin C berkontribusi terhadap daya tahan tubuh dengan meningkatkan berbagai fungsi sel imun, baik sistem imun bawaan maupun sistem imun adaptif. Vitamin C pun berperan dalam perlindungan tubuh dari agen penyakit. Tak sampai di situ saja. Vitamin C juga memiliki efek antioksidan yang powerful untuk melindungi tubuh dari ketidakseimbangan radikal bebas. Sebagai pengendali radikal bebas, vitamin C dapat melindungi sel tubuh dari stres oksidatif pemicu penyakit. Rekomendasi Kemenkes terkait kebutuhan harian vitamin C orang dewasa yakni 90 mg untuk laki-laki dan 75 mg untuk perempuan. Namun, untuk mencapai kesehatan yang optimal, asupan harian vitamin C berpotensi untuk lebih tinggi dari rekomendasi di atas. Menurut para peneliti dari University of Michigan, asupan vitamin C sebanyak 500 mg sehari lebih disarankan untuk tubuh yang lebih sehat. Sementara itu, batas maksimal konsumsi vitamin ini yakni 2.000 mg. Konsumsi lebih dari 2000 mg dapat memicu masalah lain bagi tubuh, termasuk diare parah dan batu ginjal.'),
(2, 'kandungan vitamin c', 'Berikut ini beberapa makanan sumber vitamin C yang bisa Anda konsumsi, plus kandungan vitamin C untuk setiap 100 gramnya:" Jambu biji: 228,3 mg Paprika kuning: 183,5 mg Paprika merah: 127 mg Kiwi: 92, 7 mg Brokoli: 89,2 mg Pepaya: 60,9 mg Stroberi: 58,8 mg Jeruk: 53,2 mg Nanas: 47,8 mg Melon cantaloupe: 36,7 mg Kubis: 36,6 mg Mangga: 36,4 mg Tomat: 13,7 mg');

-- --------------------------------------------------------

--
-- Table structure for table `vitamin_e`
--

CREATE TABLE `vitamin_e` (
  `id_vitamin_e` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vitamin_e`
--

INSERT INTO `vitamin_e` (`id_vitamin_e`, `nama`, `keterangan`) VALUES
(2, 'Vitamin E', 'Vitamin E dikenal sebagai vitamin yang baik untuk kulit. Namun, Anda juga harus tahu bahwa vitamin E turut berperan dalam kesehatan sistem imun. Salah satu alasan vitamin E baik untuk sistem imun adalah efek antioksidannya. Sebagai zat antioksidan, kehadiran vitamin E juga membantu mengendalikan ketidakseimbangan radikal bebas. Dengan radikal bebas yang terkendali, risiko penyakit pun dapat diturunkan. Vitamin E juga disebutkan membantu kinerja dan pendewasaan bagian imun yang disebut sel dendritik. Sel dendritik berperan dalam respons untuk mengenali patogen penyebab penyakit.'),
(3, 'kandungan vitamin e', 'Ada banyak makanan yang menjadi sumber vitamin E. Berikut ini sumber vitamin E untuk setiap 100 gram masing-masing makanan serta kadar vitamin E yang terkandung di dalamnya: Biji bunga matahari: 35 mg Kacang almond: 25,63 mg Kacang tanah: 4,93 mg Alpukat: 2,07 mg Paprika merah: 1,58 mg Kiwi: 1,46 mg Cranberry: 1,32 mg Mangga: 0,9 mg Rasberi: 0,87 mg Brokoli: 0,78 mg Salmon: 0,4 mg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `gizi`
--
ALTER TABLE `gizi`
  ADD PRIMARY KEY (`id_gizi`);

--
-- Indexes for table `gizi_cukup`
--
ALTER TABLE `gizi_cukup`
  ADD PRIMARY KEY (`id_gizi_cukup`);

--
-- Indexes for table `gizi_kurang`
--
ALTER TABLE `gizi_kurang`
  ADD PRIMARY KEY (`id_gizi_kurang`);

--
-- Indexes for table `gizi_lebih`
--
ALTER TABLE `gizi_lebih`
  ADD PRIMARY KEY (`id_gizi_lebih`);

--
-- Indexes for table `imunitas`
--
ALTER TABLE `imunitas`
  ADD PRIMARY KEY (`id_imunitas`);

--
-- Indexes for table `karbohidrat`
--
ALTER TABLE `karbohidrat`
  ADD PRIMARY KEY (`id_karbohidrat`);

--
-- Indexes for table `lemak`
--
ALTER TABLE `lemak`
  ADD PRIMARY KEY (`id_lemak`);

--
-- Indexes for table `mineral`
--
ALTER TABLE `mineral`
  ADD PRIMARY KEY (`id_mineral`);

--
-- Indexes for table `olahraga`
--
ALTER TABLE `olahraga`
  ADD PRIMARY KEY (`id_olahraga`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indexes for table `protein`
--
ALTER TABLE `protein`
  ADD PRIMARY KEY (`id_protein`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_penyakit` (`id_penyakit`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id_rule`),
  ADD KEY `id_penyakit` (`id_penyakit`),
  ADD KEY `id_gejala` (`id_gejala`);

--
-- Indexes for table `tingkat_gizi`
--
ALTER TABLE `tingkat_gizi`
  ADD PRIMARY KEY (`id_tingkat_gizi`);

--
-- Indexes for table `vitamin`
--
ALTER TABLE `vitamin`
  ADD PRIMARY KEY (`id_vitamin`);

--
-- Indexes for table `vitamin_a`
--
ALTER TABLE `vitamin_a`
  ADD PRIMARY KEY (`id_vitamin_a`);

--
-- Indexes for table `vitamin_c`
--
ALTER TABLE `vitamin_c`
  ADD PRIMARY KEY (`id_vitamin_c`);

--
-- Indexes for table `vitamin_e`
--
ALTER TABLE `vitamin_e`
  ADD PRIMARY KEY (`id_vitamin_e`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `gizi`
--
ALTER TABLE `gizi`
  MODIFY `id_gizi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gizi_cukup`
--
ALTER TABLE `gizi_cukup`
  MODIFY `id_gizi_cukup` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gizi_kurang`
--
ALTER TABLE `gizi_kurang`
  MODIFY `id_gizi_kurang` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gizi_lebih`
--
ALTER TABLE `gizi_lebih`
  MODIFY `id_gizi_lebih` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `imunitas`
--
ALTER TABLE `imunitas`
  MODIFY `id_imunitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `karbohidrat`
--
ALTER TABLE `karbohidrat`
  MODIFY `id_karbohidrat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lemak`
--
ALTER TABLE `lemak`
  MODIFY `id_lemak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mineral`
--
ALTER TABLE `mineral`
  MODIFY `id_mineral` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `olahraga`
--
ALTER TABLE `olahraga`
  MODIFY `id_olahraga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `protein`
--
ALTER TABLE `protein`
  MODIFY `id_protein` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `tingkat_gizi`
--
ALTER TABLE `tingkat_gizi`
  MODIFY `id_tingkat_gizi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vitamin`
--
ALTER TABLE `vitamin`
  MODIFY `id_vitamin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vitamin_a`
--
ALTER TABLE `vitamin_a`
  MODIFY `id_vitamin_a` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `vitamin_c`
--
ALTER TABLE `vitamin_c`
  MODIFY `id_vitamin_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `vitamin_e`
--
ALTER TABLE `vitamin_e`
  MODIFY `id_vitamin_e` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `riwayat_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `riwayat_ibfk_2` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `rule`
--
ALTER TABLE `rule`
  ADD CONSTRAINT `rule_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `rule_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id_gejala`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
