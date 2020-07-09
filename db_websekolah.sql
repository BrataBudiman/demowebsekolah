-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_websekolah
CREATE DATABASE IF NOT EXISTS `db_websekolah` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_websekolah`;

-- Dumping structure for table db_websekolah.tbl_agenda
CREATE TABLE IF NOT EXISTS `tbl_agenda` (
  `agenda_id` int(11) NOT NULL AUTO_INCREMENT,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `agenda_deskripsi` text,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`agenda_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_agenda: ~3 rows (approximately)
DELETE FROM `tbl_agenda`;
/*!40000 ALTER TABLE `tbl_agenda` DISABLE KEYS */;
INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
	(1, 'Penyembelihan Hewan Kurban Idul Adha 2017', '2017-01-22 13:18:01', 'Idul Adha yang biasa disebut lebaran haji atapun lebaran kurban sangat identik dengan penyembelihan hewan kurban. M-Sekolah tahun ini juga melakukan penyembelihan hewan kurban. Yang rencananya akan dihadiri oleh guru-guru, siswa dan pengurus OSIS.', '2017-01-22', '2017-01-22', 'M-Sekolah', '08.00 - 11.00 WIB', 'Dihadiri oleh guru-guru, siswa dan pengurus OSIS', 'M Fikri Setiadi'),
	(2, 'Peluncuran Website Resmi M-Sekolah', '2017-01-22 13:26:33', 'Peluncuran website resmi  M-Sekolah, sebagai media informasi dan akademik online untuk pelayanan pendidikan yang lebih baik kepada siswa, orangtua, dan masyarakat pada umumnya semakin meningkat.', '2017-01-04', '2017-01-04', 'M-Sekolah', '07.30 - 12.00 WIB', '-', 'M Fikri Setiadi'),
	(3, 'Penerimaan Raport Semester Ganjil Tahun Ajaran 2017-2018', '2017-01-22 13:29:49', 'Berakhirnya semester ganjil tahun pelajaran 2016-2017, ditandai dengan pembagian laporan hasil belajar.', '2017-02-17', '2017-02-17', 'M-Sekolah', '07.30 - 12.00 WIB', 'Untuk kelas XI dan XII, pembagian raport dimulai pukul 07.30 WIB. Sedangkan untuk kelas X pada pukul 09.00 WIB. Raport diambil oleh orang tua/wali murid masing-masing.', 'M Fikri Setiadi'),
	(4, 'Kenaikan kelas', '2020-07-09 09:45:28', 'Prosesi kenaikan kelas', '2020-07-15', '2020-07-17', 'Aula Baru', '08.00', 'Kenaikan kelas', 'M Fikri Setiadi');
/*!40000 ALTER TABLE `tbl_agenda` ENABLE KEYS */;

-- Dumping structure for table db_websekolah.tbl_album
CREATE TABLE IF NOT EXISTS `tbl_album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT '0',
  `album_cover` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `album_pengguna_id` (`album_pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_album: ~3 rows (approximately)
DELETE FROM `tbl_album`;
/*!40000 ALTER TABLE `tbl_album` DISABLE KEYS */;
INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
	(1, 'Kedatangan Tamu Asing', '2016-09-08 20:00:55', 1, 'M Fikri Setiadi', 5, '202aa754590dfc1070c624bad294abbc.jpg'),
	(3, 'Pemilu Osis 2016-2017', '2017-01-21 08:58:16', 1, 'M Fikri Setiadi', 3, 'dc088a9fb62333012ff7a601828219d7.jpg'),
	(4, 'Kegiatan Belajar Siswa', '2017-01-24 08:31:13', 1, 'M Fikri Setiadi', 7, '203bc0411a07ed0430d39bcc38ec2c56.jpg');
/*!40000 ALTER TABLE `tbl_album` ENABLE KEYS */;

-- Dumping structure for table db_websekolah.tbl_files
CREATE TABLE IF NOT EXISTS `tbl_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text,
  `file_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT '0',
  `file_data` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_files: ~11 rows (approximately)
DELETE FROM `tbl_files`;
/*!40000 ALTER TABLE `tbl_files` DISABLE KEYS */;
INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
	(2, 'Dasar-dasar CSS', 'Modul dasar-dasar CSS 3. Modul ini membantu anda untuk memahami struktur dasar CSS', '2017-01-23 11:30:01', 'Drs. Joko', 0, 'ab9a183ff240deadbedaff78e639af2f.pdf'),
	(3, '14 Teknik Komunikasi Yang Paling Efektif', 'Ebook 14 teknik komunikasi paling efektif membantu anda untuk berkomunikasi dengan baik dan benar', '2017-01-23 22:26:06', 'Drs. Joko', 0, 'ab2cb34682bd94f30f2347523112ffb9.pdf'),
	(4, 'Bagaimana Membentuk Pola Pikir yang Baru', 'Ebook ini membantu anda membentuk pola pikir baru.', '2017-01-23 22:27:07', 'Drs. Joko', 0, '30f588eb5c55324f8d18213f11651855.pdf'),
	(5, '7 Tips Penting mengatasi Kritik', '7 Tips Penting mengatasi Kritik', '2017-01-23 22:27:44', 'Drs. Joko', 0, '329a62b25ad475a148e1546aa3db41de.docx'),
	(6, '8 Racun dalam kehidupan kita', '8 Racun dalam kehidupan kita', '2017-01-23 22:28:17', 'Drs. Joko', 0, '8e38ad4948ba13758683dea443fbe6be.docx'),
	(7, 'Jurnal Teknolgi Informasi', 'Jurnal Teknolgi Informasi', '2017-01-25 10:18:53', 'Gunawan, S.Pd', 0, '87ae0f009714ddfdd79e2977b2a64632.pdf'),
	(8, 'Jurnal Teknolgi Informasi 2', 'Jurnal Teknolgi Informasi', '2017-01-25 10:19:22', 'Gunawan, S.Pd', 0, 'c4e966ba2c6e142155082854dc5b3602.pdf'),
	(9, 'Naskah Publikasi IT', 'Naskah Teknolgi Informasi', '2017-01-25 10:21:04', 'Gunawan, S.Pd', 0, '71380b3cf16a17a02382098c028ece9c.pdf'),
	(10, 'Modul Teknologi Informasi', 'Modul Teknologi Informasi', '2017-01-25 10:22:08', 'Gunawan, S.Pd', 0, '029143a3980232ab2900d94df36dbb0c.pdf'),
	(11, 'Modul Teknologi Informasi Part II', 'Modul Teknologi Informasi', '2017-01-25 10:22:54', 'Gunawan, S.Pd', 0, 'ea8f3f732576083156e509657614f551.pdf'),
	(12, 'Modul Teknologi Informasi Part III', 'Modul Teknologi Informasi', '2017-01-25 10:23:21', 'Gunawan, S.Pd', 0, 'c5e5e7d16e4cd6c3d22c11f64b0db2af.pdf');
/*!40000 ALTER TABLE `tbl_files` ENABLE KEYS */;

-- Dumping structure for table db_websekolah.tbl_galeri
CREATE TABLE IF NOT EXISTS `tbl_galeri` (
  `galeri_id` int(11) NOT NULL AUTO_INCREMENT,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`galeri_id`),
  KEY `galeri_album_id` (`galeri_album_id`),
  KEY `galeri_pengguna_id` (`galeri_pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_galeri: ~15 rows (approximately)
DELETE FROM `tbl_galeri`;
/*!40000 ALTER TABLE `tbl_galeri` DISABLE KEYS */;
INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
	(4, 'Diskusi Pemilihan Ketua Osis', '2017-01-21 21:04:53', '9b10fa300633f62f105e9b52789fc8f3.jpg', 3, 1, 'M Fikri Setiadi'),
	(5, 'Panitia Pemilu Osis', '2017-01-22 11:13:20', '0ec0c2f9aae6501d7ed7930995d48b57.jpg', 3, 1, 'M Fikri Setiadi'),
	(6, 'Proses Pemilu Osis', '2017-01-22 11:13:43', 'bfbe6cc1c8096f5f36c68e93da53c248.jpg', 3, 1, 'M Fikri Setiadi'),
	(7, 'Belajar dengan native speaker', '2017-01-24 08:26:22', '831e5ad43ccc3c851d50c128ff095541.jpg', 1, 1, 'M Fikri Setiadi'),
	(8, 'Diskusi dengan native speaker', '2017-01-24 08:27:05', '84afbf1d3ad45932f1d7ac47b8a00949.jpg', 1, 1, 'M Fikri Setiadi'),
	(9, 'Foto bareng native speaker', '2017-01-24 08:27:28', 'a99ab060d5d5bf8c96f24fe385f7dd8b.jpg', 1, 1, 'M Fikri Setiadi'),
	(10, 'Foto bareng native speaker', '2017-01-24 08:28:40', 'd70cedba6391b7b3c74b914efd82953f.jpg', 1, 1, 'M Fikri Setiadi'),
	(11, 'Foto bareng native speaker', '2017-01-24 08:28:54', '10de99f425b9961ce1e87c5e5575f8f4.jpg', 1, 1, 'M Fikri Setiadi'),
	(12, 'Belajar sambil bermain', '2017-01-24 08:31:42', '9df82241493b94d1e06b461129cf57b2.jpg', 4, 1, 'M Fikri Setiadi'),
	(13, 'Belajar sambil bermain', '2017-01-24 08:31:55', '5374415f11683ad6dd31572a7bbf8a7b.jpg', 4, 1, 'M Fikri Setiadi'),
	(14, 'Belajar komputer programming', '2017-01-24 08:32:24', '82b91bd35706b21c3ab04e205e358eb6.jpg', 4, 1, 'M Fikri Setiadi'),
	(15, 'Belajar komputer programming', '2017-01-24 08:32:34', '93048f2a103987bce8c8ec8d6912de06.jpg', 4, 1, 'M Fikri Setiadi'),
	(16, 'Belajar komputer programming', '2017-01-24 08:32:44', '41f46be181f2f8452c2041b5e79a05a5.jpg', 4, 1, 'M Fikri Setiadi'),
	(17, 'Belajar sambil bermain', '2017-01-24 08:33:08', '2858b0555c252690e293d29b922ba8e6.jpg', 4, 1, 'M Fikri Setiadi'),
	(18, 'Makan bersama', '2017-01-24 08:33:24', '90d67328e33a31d3f5eecd7dcb25b55d.jpg', 4, 1, 'M Fikri Setiadi');
/*!40000 ALTER TABLE `tbl_galeri` ENABLE KEYS */;

-- Dumping structure for table db_websekolah.tbl_guru
CREATE TABLE IF NOT EXISTS `tbl_guru` (
  `guru_id` int(11) NOT NULL AUTO_INCREMENT,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`guru_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_guru: ~8 rows (approximately)
DELETE FROM `tbl_guru`;
/*!40000 ALTER TABLE `tbl_guru` DISABLE KEYS */;
INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
	(1, '123456789', 'Brata', 'L', 'Wonogiri', '14 Desember 1990', 'Teknik Komputer', '14acb5c947e9da36be7b4376463f7adb.jpg', '2017-01-26 14:49:43'),
	(2, '927482658274981', 'Thomas Muller', 'L', 'Germany', '25 September 1989', 'Olahgara', NULL, '2017-01-26 20:38:54'),
	(3, '-', 'Joko Subroto', 'L', 'Jakarta', '25 September 1989', 'PPKN, Matematika', NULL, '2017-01-26 20:41:20'),
	(4, '-', 'Kusta Otomo', 'L', 'Jakarta', '25 September 1989', 'Seni Budaya', NULL, '2017-01-26 20:42:08'),
	(5, '-', 'Yuliani Ningsih', 'P', 'Padang', '27 September 1993', 'Bahasa Indonesia', NULL, '2017-01-26 20:42:48'),
	(6, '927482658274993', 'Ari Hidayat', 'L', 'Padang', '25 September 1993', 'Bahasa Inggris', NULL, '2017-01-26 20:43:46'),
	(7, '927482658274998', 'Irma Cantika', 'P', 'Padang', '25 September 1993', 'Bahasa Inggris, IPA', '4200d2514abf45755943526b74474c16.jpg', '2017-01-26 20:45:11'),
	(8, '-', 'Ririn Febriesta', 'P', 'Padang', '27 September 1994', 'Pend. Agama Islam', NULL, '2017-01-27 11:28:23');
/*!40000 ALTER TABLE `tbl_guru` ENABLE KEYS */;

-- Dumping structure for table db_websekolah.tbl_inbox
CREATE TABLE IF NOT EXISTS `tbl_inbox` (
  `inbox_id` int(11) NOT NULL AUTO_INCREMENT,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat',
  PRIMARY KEY (`inbox_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_inbox: ~5 rows (approximately)
DELETE FROM `tbl_inbox`;
/*!40000 ALTER TABLE `tbl_inbox` DISABLE KEYS */;
INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
	(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 10:44:12', 0),
	(3, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ini adalah pesan ', '2017-06-21 10:45:57', 0),
	(5, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 10:53:19', 0),
	(7, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Hi, there!', '2017-07-01 14:28:08', 0),
	(8, 'M Fikri', 'fikrifiver97@gmail.com', '084375684364', 'Hi There, Would you please help me about register?', '2018-08-06 20:51:07', 0);
/*!40000 ALTER TABLE `tbl_inbox` ENABLE KEYS */;

-- Dumping structure for table db_websekolah.tbl_kategori
CREATE TABLE IF NOT EXISTS `tbl_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_kategori: ~6 rows (approximately)
DELETE FROM `tbl_kategori`;
/*!40000 ALTER TABLE `tbl_kategori` DISABLE KEYS */;
INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
	(1, 'Pendidikan', '2016-09-06 12:49:04'),
	(2, 'Politik', '2016-09-06 12:50:01'),
	(3, 'Sains', '2016-09-06 12:59:39'),
	(5, 'Penelitian', '2016-09-06 13:19:26'),
	(6, 'Prestasi', '2016-09-07 09:51:09'),
	(13, 'Olah Raga', '2017-01-13 20:20:31');
/*!40000 ALTER TABLE `tbl_kategori` ENABLE KEYS */;

-- Dumping structure for table db_websekolah.tbl_kelas
CREATE TABLE IF NOT EXISTS `tbl_kelas` (
  `kelas_id` int(11) NOT NULL AUTO_INCREMENT,
  `kelas_nama` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`kelas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_kelas: ~21 rows (approximately)
DELETE FROM `tbl_kelas`;
/*!40000 ALTER TABLE `tbl_kelas` DISABLE KEYS */;
INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
	(1, 'Kelas X.1'),
	(2, 'Kelas X.2'),
	(3, 'Kelas X.3'),
	(4, 'Kelas X.4'),
	(5, 'Kelas X.5'),
	(6, 'Kelas X.6'),
	(7, 'Kelas X.7'),
	(8, 'Kelas XI IPA.1'),
	(9, 'Kelas XI IPA.2'),
	(10, 'Kelas XI IPA.3'),
	(11, 'Kelas XI IPA.4'),
	(12, 'Kelas XI IPA.5'),
	(13, 'Kelas XI IPA.6'),
	(14, 'Kelas XI IPA.7'),
	(15, 'Kelas XI IPS.1'),
	(16, 'Kelas XI IPS.2'),
	(17, 'Kelas XI IPS.3'),
	(18, 'Kelas XI IPS.4'),
	(19, 'Kelas XI IPS.5'),
	(20, 'Kelas XI IPS.6'),
	(21, 'Kelas XI IPS.7');
/*!40000 ALTER TABLE `tbl_kelas` ENABLE KEYS */;

-- Dumping structure for table db_websekolah.tbl_komentar
CREATE TABLE IF NOT EXISTS `tbl_komentar` (
  `komentar_id` int(11) NOT NULL AUTO_INCREMENT,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT '0',
  PRIMARY KEY (`komentar_id`),
  KEY `komentar_tulisan_id` (`komentar_tulisan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_komentar: ~3 rows (approximately)
DELETE FROM `tbl_komentar`;
/*!40000 ALTER TABLE `tbl_komentar` DISABLE KEYS */;
INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
	(1, 'M Fikri', 'fikrifiver97@gmail.com', ' Nice Post.', '2018-08-07 22:09:07', '1', 24, 0),
	(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', ' Awesome Post', '2018-08-07 22:14:26', '1', 24, 0),
	(3, 'Joko', 'joko@gmail.com', 'Thank you.', '2018-08-08 10:54:56', '1', 24, 1);
/*!40000 ALTER TABLE `tbl_komentar` ENABLE KEYS */;

-- Dumping structure for table db_websekolah.tbl_log_aktivitas
CREATE TABLE IF NOT EXISTS `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_nama` text,
  `log_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob,
  `log_jenis_icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_pengguna_id` (`log_pengguna_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_log_aktivitas: ~0 rows (approximately)
DELETE FROM `tbl_log_aktivitas`;
/*!40000 ALTER TABLE `tbl_log_aktivitas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_log_aktivitas` ENABLE KEYS */;

-- Dumping structure for table db_websekolah.tbl_pengguna
CREATE TABLE IF NOT EXISTS `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT '1',
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengguna_photo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`pengguna_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_pengguna: ~0 rows (approximately)
DELETE FROM `tbl_pengguna`;
/*!40000 ALTER TABLE `tbl_pengguna` DISABLE KEYS */;
INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
	(1, 'Brata', 'Just do it', 'L', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'I am a mountainner. to me mountainerring is a life', 'mrbratabudiman@gmail.com', '085946082055', 'facebook.com/', 'twitter.com/', '', '', 1, '1', '2016-09-03 13:07:55', '618da4bc379744aa8b2b4e5953172d88.jpg');
/*!40000 ALTER TABLE `tbl_pengguna` ENABLE KEYS */;

-- Dumping structure for table db_websekolah.tbl_pengumuman
CREATE TABLE IF NOT EXISTS `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text,
  `pengumuman_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengumuman_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`pengumuman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_pengumuman: ~4 rows (approximately)
DELETE FROM `tbl_pengumuman`;
/*!40000 ALTER TABLE `tbl_pengumuman` DISABLE KEYS */;
INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
	(1, 'Pengumuman Libur Semester Ganjil Tahun Ajaran 2016-2017', 'Libur semester ganjil tahun ajaran 2016-2017 dimulai dari tanggal 3 Maret 2017 sampai dengan tanggal 7 Maret 207.', '2017-01-21 08:17:30', 'M Fikri Setiadi'),
	(2, 'Pengumuman Pembagian Raport Semester Ganjil Tahun Ajaran 2016-2017', 'Menjelang berakhirnya proses belajar-mengajar di semester ganjil tahun ajaran 2016-2017, maka akan diadakan pembagian hasil belajar/raport pada tanggal 4 Maret 2017 pukul 07.30 WIB.\r\nYang bertempat di M-Sekolah. Raport diambil oleh orang tua/wali kelas murid masing-masing', '2017-01-21 08:16:20', 'M Fikri Setiadi'),
	(3, 'Pengumuman Peresmian dan Launching Website Perdana M-Sekolah', 'Peresmian dan launching website resmi M-Sekolah akan diadakan pada hari 23 Desember 2016 pukul 10.00, bertepatan dengan pembagian raport semester ganjil tahun ajaran 2016-2017', '2017-01-22 14:16:16', 'M Fikri Setiadi'),
	(4, 'Pengumuman Proses Belajar Mengajar di Semester Genap Tahun Ajaran 2016-2017', 'Setelah libur semester ganjil tahun ajaran 2016-2017, proses belajar mengajar di semester genap tahun ajaran 2016-2017 mulai aktif kembali tanggal 2 Maret 2017.', '2017-01-22 14:15:28', 'M Fikri Setiadi');
/*!40000 ALTER TABLE `tbl_pengumuman` ENABLE KEYS */;

-- Dumping structure for table db_websekolah.tbl_pengunjung
CREATE TABLE IF NOT EXISTS `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pengunjung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=936 DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_pengunjung: ~5 rows (approximately)
DELETE FROM `tbl_pengunjung`;
/*!40000 ALTER TABLE `tbl_pengunjung` DISABLE KEYS */;
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
	(930, '2018-08-09 15:04:59', '::1', 'Chrome'),
	(931, '2020-07-06 22:34:54', '::1', 'Chrome'),
	(932, '2020-07-07 11:03:53', '127.0.0.1', 'Chrome'),
	(933, '2020-07-07 11:03:58', '::1', 'Chrome'),
	(934, '2020-07-08 15:03:26', '127.0.0.1', 'Chrome'),
	(935, '2020-07-09 09:19:12', '127.0.0.1', 'Chrome');
/*!40000 ALTER TABLE `tbl_pengunjung` ENABLE KEYS */;

-- Dumping structure for table db_websekolah.tbl_siswa
CREATE TABLE IF NOT EXISTS `tbl_siswa` (
  `siswa_id` int(11) NOT NULL AUTO_INCREMENT,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`siswa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_siswa: ~11 rows (approximately)
DELETE FROM `tbl_siswa`;
/*!40000 ALTER TABLE `tbl_siswa` DISABLE KEYS */;
INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
	(1, '9287482', 'Alvaro Sanchez', 'L', 8, '083d547659a2d4bb15c0322d15955da5.png'),
	(2, '9287483', 'Ririn Cantika', 'P', 8, '74eec6ad37550cc12fe8fa83d46878af.jpg'),
	(4, '123083', 'Ari Hidayat', 'L', 1, 'e371e67618ad53c99de380782c373023.png'),
	(5, '123084', 'Irma Chaiyo', 'P', 1, '1e148b42c71562841ba3018fc97b748a.png'),
	(6, '123085', 'Nadila Ginting', 'P', 1, '8125da21f903803b6992214967239ab3.png'),
	(7, '123086', 'Anna Marina', 'P', 1, '33eaf3e3faf28a0fe31670c022f641f1.png'),
	(8, '123086', 'Dhea Lubis', 'P', 1, '03e651410e969c3c26e8e0d35380470d.png'),
	(9, '123087', 'Nadia Ginting', 'P', 1, 'd7823f8d98d376c085aa284a54d63264.png'),
	(10, '123088', 'Mita Febrina', 'P', 1, 'eca0280a4a57c911ee68b8318d1e517f.png'),
	(11, '123089', 'Elizabeth ', 'P', 1, 'ec1232a08d650bc8c3197c9db95a7fc8.png'),
	(12, '123090', 'Della Guswono', 'P', 1, '6c82fce13bb3eff1fd2e897b2c3cfeeb.png');
/*!40000 ALTER TABLE `tbl_siswa` ENABLE KEYS */;

-- Dumping structure for table db_websekolah.tbl_testimoni
CREATE TABLE IF NOT EXISTS `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL AUTO_INCREMENT,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`testimoni_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_testimoni: ~0 rows (approximately)
DELETE FROM `tbl_testimoni`;
/*!40000 ALTER TABLE `tbl_testimoni` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_testimoni` ENABLE KEYS */;

-- Dumping structure for table db_websekolah.tbl_tulisan
CREATE TABLE IF NOT EXISTS `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL AUTO_INCREMENT,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text,
  `tulisan_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT '0',
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT '0',
  `tulisan_slug` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tulisan_id`),
  KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_websekolah.tbl_tulisan: ~5 rows (approximately)
DELETE FROM `tbl_tulisan`;
/*!40000 ALTER TABLE `tbl_tulisan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tulisan` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
